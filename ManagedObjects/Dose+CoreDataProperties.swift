//
//  Dose+CoreDataProperties.swift
//  pills
//
//  Created by David Fierstein on 7/30/18.
//  Copyright © 2018 David Fierstein. All rights reserved.
//
//

import Foundation
import CoreData


extension Dose {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Dose> {
        return NSFetchRequest<Dose>(entityName: "Dose")
    }

    @NSManaged public var color: Int16
    @NSManaged public var dosage: Float
    @NSManaged public var form: Int16
    @NSManaged public var shape: Int16
    @NSManaged public var size: Float
    @NSManaged public var taken: Bool
    @NSManaged public var medication: Medication?
    @NSManaged public var pillbox: Pillbox?

}
