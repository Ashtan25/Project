//
//  Protocols.swift
//  CoreDataApp
//
//  Created by Ashish Singh on 08/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.


import Foundation
import UIKit
import CoreData

class ProtocolsFile {
    let favoriteValue = true
    fileprivate lazy var fetchedResultController1: NSFetchedResultsController<Recipe> = {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        let context = appDelegate?.persistentContainer.viewContext
        let fetchRequest:NSFetchRequest = Recipe.fetchRequest()
        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "recipeName", ascending: false)]
        
        fetchRequest.predicate = NSPredicate(format: "favourite == true")
        let fetchResultController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: context!, sectionNameKeyPath: nil, cacheName: nil)
        fetchResultController.delegate = self as? NSFetchedResultsControllerDelegate
        try! fetchResultController.performFetch()
        return fetchResultController
    }()
}

protocol DBOfRecipe
{
    func addData(recipeName : String , origin : String , favourite : Bool , time : String , madeBy : String , ingredient : String, calorie: String)
}

extension DBOfRecipe
{
    func addData(recipeName : String , origin : String , favourite : Bool , time : String , madeBy : String , ingredient : String, calorie: String)
    {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else
        {
            return
        }
        let context = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Recipe", in: context)
        let recipeObject = NSManagedObject(entity: entity!, insertInto: context)
        recipeObject.setValue(recipeName, forKey: "recipeName")
        recipeObject.setValue(origin, forKey: "origin")
        recipeObject.setValue(favourite, forKey: "favourite")
        recipeObject.setValue(time, forKey: "time")
        recipeObject.setValue(madeBy, forKey: "madeBy")
        recipeObject.setValue(ingredient, forKey: "ingredient")
        recipeObject.setValue(ingredient, forKey: "calorie")
        do
        {
            try context.save()
        }catch let error as NSError
        {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
    
}
