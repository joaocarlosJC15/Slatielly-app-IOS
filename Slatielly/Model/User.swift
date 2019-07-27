import UIKit
import FirebaseFirestore

class User
{
    var id: String!
    var name: String!
    var email: String!
    var phone: String!
    var role: String!
    var address: Address!
    
    public init()
    {
        
    }
    public init(id: String, name: String, email: String, phone: String, role: String, address: Address)
    {
        self.id = id
        self.name = name
        self.email = email
        self.phone = phone
        self.role = role
        self.address = address
    }
}

extension User
{
    //For firestore
    
    public convenience init(dictionary: [String:Any])
    {
        let id = dictionary["id"] as! String
        let name = dictionary["name"] as! String
        let email = dictionary["email"] as! String
        let phone = dictionary["phone"] as! String
        let role = dictionary["role"] as! String
        
        var address: Address = Address()
        if let addressAux = dictionary["address"] as? [String:Any]
        {
            address = Address(dictionary: addressAux)
        }
        
        self.init(id: id, name: name, email: email, phone: phone, role: role, address: address)
    }
    
    public convenience init(document: DocumentSnapshot)
    {
        if let data = document.data()
        {
            self.init(dictionary: data)
        }
        else
        {
            self.init()
        }
    }
    
    public var documentData: [String : Any]
    {
        return [
            "id": id,
            "name": name,
            "email": email,
            "phone": phone,
            "role": role,
            "address": address.documentData
        ]
    }
}
