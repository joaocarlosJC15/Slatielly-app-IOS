import UIKit
import FirebaseFirestore

class IndexControl
{
    var indexTableView: IndexTableView!
    
    init(indexTableView: IndexTableView)
    {
        self.indexTableView = indexTableView
    }
    
    public func getDresses()
    {
        let db = Firestore.firestore()
        
        var dresses: [Dress] = []
        
        db.collection("dresses").getDocuments()
        { (querySnapshot, err) in
            if let err = err
            {
                print("Error getting documents: \(err)")
            }
            else
            {
                for document in querySnapshot!.documents
                {
                    let dress = Dress(document: document)
                
                    dresses.append(dress)
                }
                
                self.indexTableView.loadDress(dresses: dresses)
            }
        }
    }
}
