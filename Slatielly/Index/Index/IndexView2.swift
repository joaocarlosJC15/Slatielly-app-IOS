import UIKit
import FirebaseAuth
import FirebaseFirestore

class IndexView: UIViewController
{
    var indexControl: IndexControl!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.indexControl = IndexControl(indexView: self)
        
        let db = Firestore.firestore()
        
        db.collection("dresses").document("UmOgpl8Vm7uAaDVgH9NA").getDocument
        { (document, error) in
                if let document = document, document.exists
                {
                    let dress = Dress(document: document)
                    //let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
                    //print("Document data: \(dataDescription)")
                    print("ALOOOOOOOOOOOOO: \(dress.comments[0].user.email)")
                }
                else
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
