//
//  Prescription+CoreDataProperties.swift
//  pills
//
//  Created by David Fierstein on 7/30/18.
//  Copyright © 2018 David Fierstein. All rights reserved.
//
//

import Foundation
import CoreData


extension Prescription {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Prescription> {
        return NSFetchRequest<Prescription>(entityName: "Prescription")
    }

    @NSManaged public var dosage: Float
    @NSManaged public var medication: Medication?

}
