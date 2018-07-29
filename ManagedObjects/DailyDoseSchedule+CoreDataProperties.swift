//
//  DailyDoseSchedule+CoreDataProperties.swift
//  pills
//
//  Created by David Fierstein on 7/29/18.
//  Copyright © 2018 David Fierstein. All rights reserved.
//
//

import Foundation
import CoreData


extension DailyDoseSchedule {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<DailyDoseSchedule> {
        return NSFetchRequest<DailyDoseSchedule>(entityName: "DailyDoseSchedule")
    }

    @NSManaged public var day: Int16
    @NSManaged public var pillboxes: NSSet?

}

// MARK: Generated accessors for pillboxes
extension DailyDoseSchedule {

    @objc(addPillboxesObject:)
    @NSManaged public func addToPillboxes(_ value: Pillbox)

    @objc(removePillboxesObject:)
    @NSManaged public func removeFromPillboxes(_ value: Pillbox)

    @objc(addPillboxes:)
    @NSManaged public func addToPillboxes(_ values: NSSet)

    @objc(removePillboxes:)
    @NSManaged public func removeFromPillboxes(_ values: NSSet)

}
