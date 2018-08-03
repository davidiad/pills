//
//  PillsModel.swift
//  pills
//
//  Created by David Fierstein on 7/31/18.
//  Copyright © 2018 David Fierstein. All rights reserved.
//

// inherit from NSObject so that NSFetchedResultsControllerDelegate protocol is fulfilled

import CoreData

class PillsModel: NSObject, NSFetchedResultsControllerDelegate {
    
    static let sharedInstance = PillsModel() // defines as singleton
    
    let dataManager = CoreDataStackManager.sharedInstance
    
    lazy var context = {
        dataManager.managedObjectContext
    }()
    
    var fetchedScheduleController: NSFetchedResultsController<NSFetchRequestResult>?

    var schedule: Schedule? // The managed object that is at the root of the object graph
    
    //This prevents others from using the default '()' initializer for this class.
    fileprivate override init() {
        super.init()
        schedule = fetchSchedule() // fetch or create a Schedule
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "DailySchedule")
        fetchRequest.predicate = NSPredicate(format: "current == %@", true as CVarArg)
        /* Sort Syntax example -- sort pillboxes by time of day
        // Add Sort Descriptors
        let sortDescriptor = NSSortDescriptor(key: "word", ascending: true)
        fetchRequest.sortDescriptors = [sortDescriptor]
        */
        fetchedScheduleController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: self.context, sectionNameKeyPath: nil, cacheName: nil)
        
        fetchedScheduleController?.delegate = self
    }
    
    // Fetch the existing Schedule from the store, or create one if there is none
    func fetchSchedule() -> Schedule {
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Schedule")
        do {
            let scheduleArray = try context.fetch(fetchRequest) as! [Schedule]
            if scheduleArray.count > 0 {
                return scheduleArray[0]
            } else { // there are no Schedules, so create one
                
                let newSchedule = NSEntityDescription.insertNewObject(forEntityName: "Schedule", into: context) as! Schedule
                let dailySchedule = NSEntityDescription.insertNewObject(forEntityName: "DailySchedule", into: context) as! DailySchedule
                dailySchedule.day = Int16(Day.monday.rawValue)
                dailySchedule.schedule = newSchedule
                let newPillbox = NSEntityDescription.insertNewObject(forEntityName: "Pillbox", into: context) as! Pillbox
                newPillbox.days = dailySchedule
                newPillbox.title = "Morning"
                dataManager.saveContext()
                
                return newSchedule
            }
            // in the case there is a fetch error, also create a new game object
        } catch let error as NSError {
            print("Error in fetchSchedule(): \(error)")
            //TODO: can the catch itself generate an error?
            // need to return a Schedule -- note: not saving context
            let newSchedule = NSEntityDescription.insertNewObject(forEntityName: "Schedule", into: context) as! Schedule
            
            return newSchedule
        }
    }
}
