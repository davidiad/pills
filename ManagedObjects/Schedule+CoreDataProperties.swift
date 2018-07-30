//
//  Schedule+CoreDataProperties.swift
//  pills
//
//  Created by David Fierstein on 7/30/18.
//  Copyright © 2018 David Fierstein. All rights reserved.
//
//

import Foundation
import CoreData


extension Schedule {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Schedule> {
        return NSFetchRequest<Schedule>(entityName: "Schedule")
    }

    @NSManaged public var name: String?
    @NSManaged public var days: NSOrderedSet?

}

// MARK: Generated accessors for days
extension Schedule {

    @objc(insertObject:inDaysAtIndex:)
    @NSManaged public func insertIntoDays(_ value: DailySchedule, at idx: Int)

    @objc(removeObjectFromDaysAtIndex:)
    @NSManaged public func removeFromDays(at idx: Int)

    @objc(insertDays:atIndexes:)
    @NSManaged public func insertIntoDays(_ values: [DailySchedule], at indexes: NSIndexSet)

    @objc(removeDaysAtIndexes:)
    @NSManaged public func removeFromDays(at indexes: NSIndexSet)

    @objc(replaceObjectInDaysAtIndex:withObject:)
    @NSManaged public func replaceDays(at idx: Int, with value: DailySchedule)

    @objc(replaceDaysAtIndexes:withDays:)
    @NSManaged public func replaceDays(at indexes: NSIndexSet, with values: [DailySchedule])

    @objc(addDaysObject:)
    @NSManaged public func addToDays(_ value: DailySchedule)

    @objc(removeDaysObject:)
    @NSManaged public func removeFromDays(_ value: DailySchedule)

    @objc(addDays:)
    @NSManaged public func addToDays(_ values: NSOrderedSet)

    @objc(removeDays:)
    @NSManaged public func removeFromDays(_ values: NSOrderedSet)

}
