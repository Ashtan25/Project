import UIKit
import CoreData

class ToAddNewRecipe: UIViewController , SavingDataToDB
{
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var madeByTextField: UITextField!
    @IBOutlet weak var originTextField: UITextField!
    @IBOutlet weak var timeTextField: UITextField!
    @IBOutlet weak var ingredientsTextField: UITextField!
    @IBOutlet weak var saveBuotton: UIButton!
    @IBOutlet weak var favouriteSwitch: UISwitch!
    @IBOutlet weak var cancelButton: UIButton!
    
    
    var favourite: Bool?
    let appDelegate = UIApplication.shared.delegate as? AppDelegate
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        favouriteSwitch.isOn = true
        favourite = true
    }

    
    @IBAction func saveButton()
    {
        addData(name: nameTextField.text!, origin: originTextField.text!, favorite: favourite!, timeToPrep: timeTextField.text!, madeBy: madeByTextField.text!, ingrediant: ingredientsTextField.text!)
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func favouriteSwitchAction()
    {
        if(favouriteSwitch.isOn)
        {
            favourite = true
        }
        else
        {
            favourite = false
        }
        
    }
    @IBAction func cancelButtonAction()
    {
        self.dismiss(animated: true, completion: nil)
    }
    
}

