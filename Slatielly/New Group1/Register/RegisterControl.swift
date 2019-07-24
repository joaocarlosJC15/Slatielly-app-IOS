import UIKit
import FirebaseAuth
import FirebaseFirestore

class RegisterControl
{
    var registerView: RegisterView!
    
    init(registerView: RegisterView)
    {
        self.registerView = registerView
    }
    
    func createUser(email: String, password: String, name: String, phone: String, cep: String, city: String, neighborhood: String, street: String, number: String, complement: String )
    {
        var address: Address = Address(cep: Int(cep)!, city: city, neighborhood: neighborhood, street: street, number: Int(number)!, complement: complement)
        
        var user: User = User(id: "", name: name, email: email, phone: phone, role: "user", address: address)
        
        Auth.auth().createUser(withEmail: email, password: password)
        { (authResult, error) in
            
            if let error = error
            {
                print(error)
            }
            else
            {
                let db = Firestore.firestore()
                
                var id: String?
                
                if let currentUser = Auth.auth().currentUser
                {
                    id = currentUser.uid
                    
                    user.id = id
                }
                
                db.collection("users").document(user.id).setData(user.documentData)
                { error in
                    
                    if let error = error
                    {
                        print("Error adding document: \(error)")
                    }
                    else
                    {
                        self.registerView.goToIndex()
                    }
                }
            }
        }
    }
}
