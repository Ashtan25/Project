//
//  ViewController.swift
//  CoreDataApp
//
//  Created by Ashish Singh on 08/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController{

    @IBOutlet weak var addButton: UIBarButtonItem!
    
    @IBOutlet weak var recipeTabelView: UITableView!
    @IBOutlet weak var recipeNavBar: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
                urls[urls.count - 1] as NSURL
                print(urls)
        recipeTabelView.register(UITableViewCell.self,
                                    forCellReuseIdentifier: "Cell")
    }
    override func viewWillAppear(_ animated: Bool)
    {
        recipeTabelView.reloadData()
    }
    
    
    
    fileprivate lazy var fetchedResultController: NSFetchedResultsController<Recipe> =
    {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        let context = appDelegate?.persistentContainer.viewContext
        let fetchRequest:NSFetchRequest = Recipe.fetchRequest()
        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "recipeName", ascending: false)]
        let fetchResultController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: context!, sectionNameKeyPath: nil, cacheName: nil)
        fetchResultController.delegate = self as? NSFetchedResultsControllerDelegate
        try! fetchResultController.performFetch()
        return fetchResultController
    }()
    
    
    @IBAction func addRecipeFunction(_ sender: Any) {
        
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyBoard.instantiateViewController(withIdentifier: "NewRecipeAddViewController") as! NewRecipeAddViewController
        self.navigationController?.pushViewController(controller, animated: true)
     //   self.present(controller, animated: true, completion: nil)
    }
    


}
extension ViewController : UITableViewDelegate , UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (fetchedResultController.fetchedObjects?.count)!
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let recipe1 = fetchedResultController.object(at: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = recipe1.recipeName
        return cell
    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let rec1 = fetchedResultController.object(at: indexPath)
//        UserDefaults.standard.set(rec1.name, forKey: "abc")
//        
//        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
//        let controller = storyBoard.instantiateViewController(withIdentifier: "UpdateRecipe") as! UpdateRecipe
//        self.present(controller, animated: true, completion: nil)
//        
//        
//    }
}
