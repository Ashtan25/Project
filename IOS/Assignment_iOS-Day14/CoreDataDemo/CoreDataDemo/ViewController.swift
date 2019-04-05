//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Ashish Singh on 01/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    fileprivate lazy var fetchedResultController: NSFetchedResultsController<Recipe> = {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        let context = appDelegate?.persistentContainer.viewContext
        let fetchRequest:NSFetchRequest = Recipe.fetchRequest()
        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "name", ascending: false)]
        let fetchResultController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: context!, sectionNameKeyPath: nil, cacheName: nil)
        fetchResultController.delegate = self as? NSFetchedResultsControllerDelegate
        try! fetchResultController.performFetch()
        return fetchResultController
        
    }()

   

    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(insertData) )
//       navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addData))
//        let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addData))
//        navigationItem.rightBarButtonItems = [add]

        self.table.reloadData()
        
        let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        urls[urls.count-1] as NSURL
        print(urls)


//           fetchData()
         //  print(NSPredicate(format: "name == kadhai Chicken"))
        
            
        
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let result = fetchedResultController.fetchedObjects else {return 0}
        return result.count
        
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            let appdelegate = UIApplication.shared.delegate as! AppDelegate?
            let recipe = fetchedResultController.object(at: indexPath)
            if let managedObjectContext = appdelegate?.persistentContainer.viewContext{
                managedObjectContext.delete(recipe)
                appdelegate?.saveContext()
                
                
            }
            
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        let recipe = fetchedResultController.object(at: indexPath)
        cell?.textLabel?.text = recipe.name
        return cell!
        
    }
    
    @objc func insertData(recipeName: String){
        let alert = UIAlertController(title: "Recipe", message: "Enter The Recipe ", preferredStyle: .alert)
        
        _ = UIAlertAction(title: "Save", style: .default)
        guard let textField = alert.textFields?.first,
           let nameToSave = textField.text else {
                return
        }
        
        
                let appdelegate = UIApplication.shared.delegate as! AppDelegate?
         if let managedObjectContext = appdelegate?.persistentContainer.viewContext{
                    let entity = NSEntityDescription.insertNewObject(forEntityName: "Recipe", into: managedObjectContext) as? Recipe
            
            
            
//                    var ingredientSet = Set<Ingredient>()
//                    let ingredient = NSEntityDescription.insertNewObject(forEntityName: "Ingredient", into: managedObjectContext) as? Ingredient
        
        
//
//                    ingredient?.name = "Turmeric"
//                    ingredient?.countryOfOrigin = "India"
//                    ingredientSet.insert(ingredient!)
//
//
//                    let ingredient2 = NSEntityDescription.insertNewObject(forEntityName: "Ingredient", into: managedObjectContext) as? Ingredient
//                    ingredient2?.name = "Rice"
//                    ingredient2?.countryOfOrigin = "India"
//
//
                    entity?.name = nameToSave
                    entity?.imageUrl = "Nothing"
                     let entity2 = NSEntityDescription.insertNewObject(forEntityName: "Recipe", into: managedObjectContext) as? Recipe
            

        
        
                    appdelegate?.saveContext()
        
        
    }
        
        
    

    func fetchData(){
        let appdelegate = UIApplication.shared.delegate as! AppDelegate?
        if let managedObjectContext = appdelegate?.persistentContainer.viewContext{
            let fetchRequest = NSFetchRequest<Recipe>(entityName: "Recipe")
            fetchRequest.predicate = NSPredicate.init(format: "name == 'kadhai Chicken'")
            let fetchedResult = try? managedObjectContext.fetch(fetchRequest)
            print(fetchedResult!)
        
        }
        
    }

}

    
    extension ViewController: NSFetchedResultsControllerDelegate{
    
    func controllerWillChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>){
        table.beginUpdates()
        
    }
    

    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>){
        table.endUpdates()

    }
    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anObject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?){
        if type == .delete{
            table.deleteRows(at: [indexPath!], with: UITableView.RowAnimation.automatic)
        }
        if type == .insert{
            table.insertRows(at: [indexPath!], with: UITableView.RowAnimation.fade)

    }
    
        func addData(_ sender: Any)
    {
        
        let alert = UIAlertController(title: "Recipe", message: "Enter The Recipe ", preferredStyle: .alert)
        
        _ = UIAlertAction(title: "Save", style: .default)
            guard let textField = alert.textFields?.first,
                let nameToSave = textField.text else {
                    return
            }
            
//            self.saveRecipe(name : nameToSave)
//            self.tableView.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel",
                                         style: .cancel)
        alert.addTextField()
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        present(alert, animated: true)
        
    }

}

