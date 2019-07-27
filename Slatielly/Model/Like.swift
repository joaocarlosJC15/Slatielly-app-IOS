import UIKit

class Like
{
    var user: User!
    var dateLike: Date!
    
    init(user: User, dateLike: Date)
    {
        self.user = user
        self.dateLike = dateLike
    }
}

extension Like
{
    
    public convenience init(dictionary: [String:Any])
    {
        let userAux = dictionary["user"] as! [String:Any]
        let dateLike = dictionary["dateLike"] as! Date
        
        let user = User(dictionary: userAux)
        
        self.init(user: user, dateLike: dateLike)
    }
    
    public var documentData: [String : Any]
    {
        return [
            "user": user.documentData,
            "dateLike": dateLike
        ]
    }
}
