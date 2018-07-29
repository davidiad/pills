//
//  Medication+CoreDataProperties.swift
//  pills
//
//  Created by David Fierstein on 7/29/18.
//  Copyright © 2018 David Fierstein. All rights reserved.
//
//

import Foundation
import CoreData


extension Medication {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Medication> {
        return NSFetchRequest<Medication>(entityName: "Medication")
    }

    @NSManaged public var brandName: String?
    @NSManaged public var genericName: String?
    @NSManaged public var shortName: String?
    @NSManaged public var dose: NSSet?
    @NSManaged public var prescription: Prescription?

}

// MARK: Generated accessors for dose
extension Medication {

    @objc(addDoseObject:)
    @NSManaged public func addToDose(_ value: Dose)

    @objc(removeDoseObject:)
    @NSManaged public func removeFromDose(_ value: Dose)

    @objc(addDose:)
    @NSManaged public func addToDose(_ values: NSSet)

    @objc(removeDose:)
    @NSManaged public func removeFromDose(_ values: NSSet)

}
