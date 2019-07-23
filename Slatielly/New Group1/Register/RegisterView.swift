import UIKit

class RegisterView: UIViewController
{

    @IBOutlet weak var textField_Name: UITextField!
    
    
    @IBOutlet weak var textField_Email: UITextField!
    
    
    @IBOutlet weak var textField_Phone: UITextField!
    
    
    @IBOutlet weak var textField_Password: UITextField!
    
    @IBOutlet weak var textField_CEP: UITextField!
    
    
    @IBOutlet weak var textField_City: UITextField!
    
    
    @IBOutlet weak var textField_Neighborhood: UITextField!
    
    @IBOutlet weak var textField_Street: UITextField!
    
    
    @IBOutlet weak var textField_Number: UITextField!
    
    
    @IBOutlet weak var textField_Complement: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        view.endEditing(true)
    }
    
    @IBAction func button_Submit(_ sender: Any)
    {
    }
    
}
