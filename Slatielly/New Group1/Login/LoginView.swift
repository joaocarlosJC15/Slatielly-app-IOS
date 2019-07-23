//
//  LoginView.swift
//  Slatielly
//
//  Created by Joao Carlos on 19/07/19.
//  Copyright © 2019 Joao Carlos. All rights reserved.
//

import UIKit

class LoginView: UIViewController
{

    @IBOutlet weak var textField_Email: UITextField!
    
    @IBOutlet weak var textField_Password: UITextField!
    
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
        if ( (textField_Email.text ?? "").isEmpty && (textField_Password.text ?? "").isEmpty )
        {
            
        }
        else
        {
            
        }
    }
}
