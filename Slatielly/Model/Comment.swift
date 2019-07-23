import UIKit
import Foundation


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
}