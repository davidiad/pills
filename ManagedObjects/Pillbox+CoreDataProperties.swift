//
//  Pillbox+CoreDataProperties.swift
//  pills
//
//  Created by David Fierstein on 7/31/18.
//  Copyright © 2018 David Fierstein. All rights reserved.
//
//

import Foundation
import CoreData


extension Pillbox {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Pillbox> {
        return NSFetchRequest<Pillbox>(entityName: "Pillbox")
    }

    @NSManaged public var time: NSDate?
    @NSManaged public var title: String?
    @NSManaged public var days: DailySchedule?
    @NSManaged public var doses: NSSet?

}

// MARK: Generated accessors for doses
extension Pillbox {

    @objc(addDosesObject:)
    @NSManaged public func addToDoses(_ value: Dose)

    @objc(removeDosesObject:)
    @NSManaged public func removeFromDoses(_ value: Dose)

    @objc(addDoses:)
    @NSManaged public func addToDoses(_ values: NSSet)

    @objc(removeDoses:)
    @NSManaged public func removeFromDoses(_ values: NSSet)

}
