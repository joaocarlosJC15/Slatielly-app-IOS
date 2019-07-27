import UIKit
import FirebaseFirestore

class Image
{
    var addressStorage: String!
    var downloadLink: String!
    
    init()
    {
        
    }
    
    init(addressStorage: String, downloadLink: String)
    {
        self.addressStorage = addressStorage
        self.downloadLink = downloadLink
    }
    
}

extension Image
{
    public convenience init(dictionary: [String:Any])
    {
        let addressStorage = dictionary["addressStorage"] as! String
        let downloadLink = dictionary["downloadLink"] as! String
        
        self.init(addressStorage: addressStorage, downloadLink: downloadLink)
    }
}
