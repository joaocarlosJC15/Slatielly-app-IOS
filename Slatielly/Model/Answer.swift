import UIKit
import FirebaseFirestore

class Answer
{
    var id: String!
    var date: Date!
    var description: String!
    var user: User!
    var image: Image!
    var numberLikes: Int = 0
    var likes: [Like] = []
    
    init(id: String, date: Date, description: String, user: User, image: Image, numberLikes: Int, likes: [Like])
    {
        self.id = id
        self.date = date
        self.description = description
        self.user = user
        self.image = image
        self.numberLikes = numberLikes
        self.likes = likes
    }
}

extension Answer
{
    public convenience init(dictionary: [String:Any])
    {
        let id = dictionary["id"] as! String
        let description = dictionary["description"] as! String
        let userAux = dictionary["user"] as! [String:Any]
        let imageAux = dictionary["image"] as? [String:Any]
        let numberLikes = dictionary["numberLikes"] as! Int
        let likesAux = dictionary["likes"] as! Array<[String:Any]>
        
        let dateAux = dictionary["date"] as! Timestamp
        let date =  dateAux.dateValue()
        
        let user = User(dictionary: userAux)
        
        var imageAux2: [String:Any] = [:]
        let image = Image(dictionary: imageAux ?? imageAux2)
        
        var likes: [Like] = []
        
        for likeAux in likesAux
        {
            let like = Like(dictionary: likeAux)
            
            likes.append(like)
        }

        self.init(id: id, date: date, description: description, user: user, image: image, numberLikes: numberLikes, likes: likes)
    }
}
