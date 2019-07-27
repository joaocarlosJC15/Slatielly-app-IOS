import UIKit
import FirebaseAuth
import FirebaseFirestore

class IndexView: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let db = Firestore.firestore()
        
        db.collection("dresses").document("Cb6pVxD39xGbKHElNS6l").getDocument
            { (document, error) in
                if let document = document, document.exists
                {
                    let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
                    print("Document data: \(dataDescription)")
                } else
                {
                    print("Document does not exist")
                }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
