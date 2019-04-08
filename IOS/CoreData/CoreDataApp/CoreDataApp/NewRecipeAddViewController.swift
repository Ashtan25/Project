//
//  NewRecipeAddViewController.swift
//  CoreDataApp
//
//  Created by Ashish Singh on 08/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class NewRecipeAddViewController: UIViewController,DBOfRecipe {
    @IBOutlet weak var calorieTextField: UITextField!
    @IBOutlet weak var switchFavourite: UISwitch!
    
    @IBOutlet weak var timeTextField: UITextField!
    @IBOutlet weak var originTextField: UITextField!
    @IBOutlet weak var ingredientTextField: UITextField!
    @IBOutlet weak var madeByTextField: UITextField!
    @IBOutlet weak var recipeTextField: UITextField!
    
    
    var favouriteValue = true
    let appDelegate = UIApplication.shared.delegate as? AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func cancelFunction(_ sender: Any) {
       self.navigationController?.popToRootViewController(animated: true)
    }
    
    
    

    @IBAction func addRecipeFunction(_ sender: Any) {
        addData(recipeName: recipeTextField.text!, origin: originTextField.text!, favourite: favouriteValue, time: timeTextField.text!, madeBy: madeByTextField.text!, ingredient: ingredientTextField.text!,calorie: calorieTextField.text!)
        self.navigationController?.popToRootViewController(animated: true)
     //   self.dismiss(animated: true, completion: nil)
    
    }
    

    @IBAction func onChangeSwitch(_ sender: Any) {
        if(switchFavourite.isOn)
        {
            favouriteValue = true
        }
        else
        {
            favouriteValue = false
        }
    }
    

    
}
