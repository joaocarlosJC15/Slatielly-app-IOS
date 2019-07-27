import UIKit
import FirebaseFirestore

class Dress
{
    var id: String!
    var color: String!
    var description: String!
    var material: String!
    var prepareDays: Int!
    var price: Double!
    var size: String!
    var status: String!
    var type: String!
    var washingDays: Int!
    var timestamp: Date!
    var images: [Image] = []
    var comments: [Comment] = []
    
    init()
    {
    }
    
    init(id: String, color: String, description: String, material: String, prepareDays: Int, price: Double, size: String, status: String, type: String, washingDays: Int, timestamp: Date, images: [Image], comments: [Comment])
    {
        self.id = id
        self.color = color
        self.description = description
        self.material = material
        self.prepareDays = prepareDays
        self.price = price
        self.size = size
        self.status = status
        self.type = type
        self.washingDays = washingDays
        self.timestamp = timestamp
        self.images = images
        self.comments = comments
    }
}

extension Dress
{
    private convenience init(dictionary: [String:Any])
    {
        let id = dictionary["id"] as! String
        let color = dictionary["color"] as! String
        let description = dictionary["description"] as! String
        let material = dictionary["material"] as! String
        let prepareDays = dictionary["prepareDays"] as! Int
        let price = dictionary["price"] as! Double
        let size = dictionary["size"] as! String
        let status = dictionary["status"] as! String
        let type = dictionary["type"] as! String
        let washingDays = dictionary["washingDays"] as! Int
        let timestamp = dictionary["timestamp"] as! Date
        let imagesAux = dictionary["images"] as! Array<[String:Any]>
        let commentsAux = dictionary["comments"] as! Array<[String:Any]>
        
        var images: [Image] = []
        
        for imageAux in imagesAux
        {
            let image = Image(dictionary: imageAux)
            images.append(image)
        }
        
        var comments: [Comment] = []
        
        for commentAux in commentsAux
        {
            let comment = Comment(dictionary: commentAux)
            comments.append(comment)
        }
        
        self.init(id: id, color: color, description: description, material: material, prepareDays: prepareDays, price: price, size: size, status: status, type: type, washingDays: washingDays, timestamp: timestamp, images: images, comments: comments)
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
}
