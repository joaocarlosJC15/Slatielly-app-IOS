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
    
    var registerControl: RegisterControl!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        registerControl = RegisterControl(registerView: self)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        view.endEditing(true)
    }
    
    @IBAction func button_Submit(_ sender: Any)
    {
        if ( (textField_Email.text ?? "").isEmpty || (textField_Password.text ?? "").isEmpty || (textField_Name.text ?? "").isEmpty || (textField_Phone.text ?? "").isEmpty || (textField_CEP.text ?? "").isEmpty || (textField_City.text ?? "").isEmpty || (textField_Neighborhood.text ?? "").isEmpty || (textField_Street.text ?? "").isEmpty || (textField_Number.text ?? "").isEmpty || (textField_Complement.text ?? "").isEmpty )
        {
            print("FALTA INFORMAÇÕES!")
        }
        else
        {
            registerControl.createUser(email: textField_Email.text! , password: textField_Password.text!, name: textField_Name.text!, phone: textField_Phone.text!, cep: textField_CEP.text!, city: textField_City.text!, neighborhood: textField_Neighborhood.text!, street: textField_Street.text!, number: textField_Number.text!, complement: textField_Complement.text!)
        }
    }
    
    public func goToIndex()
    {
        performSegue(withIdentifier: "segue_GoToIndexFromRegister", sender: self)
    }
}
