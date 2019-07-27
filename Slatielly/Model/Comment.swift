import UIKit
import FirebaseFirestore

class Comment
{
    var id: String!
    var date: Date!
    var description: String!
    var user: User!
    var image: Image!
    var answers: [Answer] = []
    var numberLikes: Int = 0
    var likes: [Like] = []
    
    init()
    {
        
    }
    
    init(id: String, date: Date, description: String, user: User, image: Image, answers: [Answer], numberLikes: Int, likes: [Like] )
    {
        self.id = id
        self.date = date
        self.description = description
        self.user = user
        self.image = image
        self.answers = answers
        self.numberLikes = numberLikes
        self.likes = likes
    }
}

extension Comment
{
    public convenience init(dictionary: [String:Any])
    {
        let id = dictionary["id"] as! String
        let date = dictionary["date"] as! Date
        let description = dictionary["description"] as! String
        let userAux = dictionary["user"] as! [String:Any]
        let imageAux = dictionary["image"] as! [String:Any]
        let answersAux = dictionary["answers"] as! Array<[String:Any]>
        let numberLikes = dictionary["numberLikes"] as! Int
        let likesAux = dictionary["likes"] as! Array<[String:Any]>
        
        let user = User(dictionary: userAux)
        let image = Image(dictionary: imageAux)
        
        var likes: [Like] = []
        
        for likeAux in likesAux
        {
            let like = Like(dictionary: likeAux)
            
            likes.append(like)
        }
        
        var answers: [Answer] = []
        
        for answerAux in answersAux
        {
            let answer = Answer(dictionary: answerAux)
            
            answers.append(answer)
        }
        
        self.init(id: id, date: date, description: description, user: user, image: image, answers: answers, numberLikes: numberLikes, likes: likes)
    }
}
