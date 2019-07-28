import UIKit
import SDWebImage

class IndexTableViewCell: UITableViewCell
{
    
    @IBOutlet weak var imageDress: UIImageView!
    
    @IBOutlet weak var descriptionDress: UILabel!
    
    @IBOutlet weak var priceDress: UILabel!
    
    @IBOutlet weak var typeDress: UILabel!
    
    @IBOutlet weak var sizeDress: UILabel!
    
    @IBOutlet weak var materialDress: UILabel!
    
    func loadCell(dress: Dress)
    {
        let url: String! = dress.images[0].downloadLink
        
        imageDress!.sd_setImage(with: URL(string: url))
        {
            (image, error, cache, url) in
        }
        
        descriptionDress.text = dress.description
        priceDress.text = String(dress.price)
        typeDress.text = dress.type
        sizeDress.text = dress.size
        materialDress.text = dress.material
    }
}
