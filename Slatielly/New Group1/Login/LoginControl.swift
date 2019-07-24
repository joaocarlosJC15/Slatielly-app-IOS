
import UIKit
import FirebaseAuth

class LoginControl
{
    var loginView: LoginView!

    init(loginView: LoginView)
    {
        self.loginView = loginView
    }
    
    func checkLogin(email: String, password: String)
    {
        Auth.auth().signIn(withEmail: email, password: password)
        { (user, error) in
            
            if error != nil
            {
                print(error)
            }
            else
            {
                self.loginView.goToIndex()
            }
        }
    }
}
