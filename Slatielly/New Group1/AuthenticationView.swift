//
//  AuthenticationView.swift
//  Slatielly
//
//  Created by Joao Carlos on 18/07/19.
//  Copyright © 2019 Joao Carlos. All rights reserved.
//

import UIKit

class AuthenticationView: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
    
        self.navigationController?.isNavigationBarHidden = true
        self.navigationController?.navigationBar.tintColor = UIColor(red: 0.78, green: 0.08, blue: 0.52, alpha: 1.0)
    }
    
    override func viewWillDisappear(_ animated: Bool)
    {
        self.navigationController?.isNavigationBarHidden = false
    }
}
