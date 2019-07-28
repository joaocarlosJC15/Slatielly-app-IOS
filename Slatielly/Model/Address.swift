import UIKit
import FirebaseFirestore

class Address
{
    var cep: Int!
    var city: String!
    var neighborhood: String!
    var street: String!
    var number: Int!
    var complement: String!
    
    public init()
    {
        
    }
    
    public init(cep: Int, city: String, neighborhood: String, street: String, number: Int, complement: String)
    {
        self.cep = cep
        self.city = city
        self.neighborhood = neighborhood
        self.street = street
        self.number = number
        self.complement = complement
    }
}

extension Address
{
    public convenience init(dictionary: [String:Any])
    {
        let cep = dictionary["cep"] as? Int
        let city = dictionary["city"] as? String
        let neighborhood = dictionary["neighborhood"] as? String
        let street = dictionary["street"] as? String
        let number = dictionary["number"] as? Int
        let complement = dictionary["complement"] as? String
        
        self.init(cep: cep ?? 0, city: city ?? "", neighborhood: neighborhood ?? "", street: street ?? "", number: number ?? 0, complement: complement ?? "")
    }
    
    public var documentData: [String : Any]
    {
        return [
            "cep": cep,
            "city": city,
            "neighborhood": neighborhood,
            "street": street,
            "number": number,
            "complement": complement
        ]
    }
}
