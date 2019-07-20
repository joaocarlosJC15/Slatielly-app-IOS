import UIKit

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
}
