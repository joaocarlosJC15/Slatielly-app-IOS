import UIKit

class Answer
{
    var id: String!
    var date: Date!
    var description: String!
    var user: User!
    var image: Image!
    var numberLikes: Int = 0
    var likes: [Like] = []
}
