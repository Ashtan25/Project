//
//  RecipesFav.swift
//  RecipeApp
//
//  Created by Ashish Singh on 08/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit
import CoreData
class RecipesFav: UIViewController {
    
    @IBOutlet weak var recipeFavTableView: UITableView!
    
    fileprivate lazy var fetchedResultController1: NSFetchedResultsController<Recipe> = {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        let context = appDelegate?.persistentContainer.viewContext
        let fetchRequest:NSFetchRequest = Recipe.fetchRequest()
        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "name", ascending: false)]
        fetchRequest.predicate = NSPredicate(format: "favorite == true")
        let fetchResultController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: context!, sectionNameKeyPath: nil, cacheName: nil)
        fetchResultController.delegate = self as? NSFetchedResultsControllerDelegate
        try! fetchResultController.performFetch()
        return fetchResultController
    }()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
      recipeFavTableView.register(UITableViewCell.self, forCellReuseIdentifier: "RecipeCell")
        recipeFavTableView.delegate = self
        recipeFavTableView.dataSource = self
        fetchedResultController1.delegate = self
        
        
    }
    
}
extension RecipesFav : UITableViewDataSource , UITableViewDelegate, NSFetchedResultsControllerDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (fetchedResultController1.fetchedObjects?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let recipe1 = fetchedResultController1.object(at: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath)
        cell.textLabel?.text = recipe1.name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.allowsSelectionDuringEditing = true
        

        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let controller = storyBoard.instantiateViewController(withIdentifier: "UpdateRecipeDetails")
        self.present(controller, animated: true, completion: nil)
        
    }
    
    
    
    func controllerWillChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>)
    {
        recipeFavTableView.beginUpdates()
    }
    
    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>)
    {
        recipeFavTableView.endUpdates()
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let appDelegate = UIApplication.shared.delegate as? AppDelegate
            let context = appDelegate?.persistentContainer.viewContext
            let recipe = fetchedResultController1.object(at: indexPath)
            context!.delete(recipe)
            do {
                try context!.save()
                print("saved!")
                //tableView.reloadData()
            } catch {
                
            }
        }
    }

    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anObject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?)
    {
        if(type == .delete)
        {
            recipeFavTableView.deleteRows(at: [indexPath!] , with: .fade)
            
        }
        else if(type == .insert)
        {
            let currentIndexPath = self.fetchedResultController1.indexPath(forObject: anObject as! Recipe)
            if(currentIndexPath != nil)
            {
                self.recipeFavTableView.insertRows(at: [currentIndexPath!], with: .fade)
            }
        }
        else if(type == .update)
        {
            recipeFavTableView.deleteRows(at: [indexPath!] , with: .fade)
            let currentIndexPath = self.fetchedResultController1.indexPath(forObject: anObject as! Recipe)
            if(currentIndexPath != nil)
            {
                self.recipeFavTableView.insertRows(at: [currentIndexPath!], with: .fade)
            }
        }
    }
    
    
}
