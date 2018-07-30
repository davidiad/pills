//
//  DailySchedule+CoreDataProperties.swift
//  pills
//
//  Created by David Fierstein on 7/30/18.
//  Copyright © 2018 David Fierstein. All rights reserved.
//
//

import Foundation
import CoreData


extension DailySchedule {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<DailySchedule> {
        return NSFetchRequest<DailySchedule>(entityName: "DailySchedule")
    }

    @NSManaged public var day: Int16
    @NSManaged public var date: NSDate?
    @NSManaged public var pillboxes: NSSet?
    @NSManaged public var schedule: Schedule?

}

// MARK: Generated accessors for pillboxes
extension DailySchedule {

    @objc(addPillboxesObject:)
    @NSManaged public func addToPillboxes(_ value: Pillbox)

    @objc(removePillboxesObject:)
    @NSManaged public func removeFromPillboxes(_ value: Pillbox)

    @objc(addPillboxes:)
    @NSManaged public func addToPillboxes(_ values: NSSet)

    @objc(removePillboxes:)
    @NSManaged public func removeFromPillboxes(_ values: NSSet)

}
