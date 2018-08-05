//
//  FetchedResultsController.swift
//  pills
//
//  Created by David Fierstein on 8/4/18.
//  Copyright © 2018 David Fierstein. All rights reserved.
//

import UIKit
import CoreData

class FetchedResultsController: NSFetchedResultsController<NSFetchRequestResult>, NSFetchedResultsControllerDelegate {

    
    // MARK:- FetchedResultsController delegate protocol
    
    func controllerWillChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
//        wordTable.beginUpdates()
//        proxyTable.beginUpdates()
    }
    
    
    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
//        wordTable.endUpdates()
//        proxyTable.endUpdates()

        // animate the bg color to back to transparent

    }
    
    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anObject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?) {
        switch (type) {
        case .insert:
            if let indexPath = newIndexPath {
//                wordTable.insertRows(at: [indexPath], with: .bottom)
//                proxyTable.insertRows(at: [indexPath], with: .none)
            }
            break;
        case .delete:
            if let indexPath = indexPath {
//                wordTable.deleteRows(at: [indexPath], with: .top)
//                proxyTable.deleteRows(at: [indexPath], with: .left)
            }
            break;
        case .update:
//            if let indexPath = indexPath, let cell = wordTable.cellForRow(at: indexPath) as? WordListCell {
//                configureCell(cell, atIndexPath: indexPath)
//            }
            break;
        case .move:
            if let indexPath = indexPath {
//                wordTable.deleteRows(at: [indexPath], with: .left)
//                proxyTable.deleteRows(at: [indexPath], with: .left)
            }
            
            
            if let newIndexPath = newIndexPath {
//                wordTable.insertRows(at: [newIndexPath], with: .left)
//                proxyTable.insertRows(at: [newIndexPath], with: .left)
            }
            break;
        }
    }
}
