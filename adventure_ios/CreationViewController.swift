import UIKit

class CreationViewController: UIViewController {
  
  @IBOutlet private weak var nameTextField: UITextField!
  
  // MARK: Action handles
  @IBAction func doneAction() {
    guard let name = nameTextField.text, !name.isEmpty else {
      print("Name fail")
      AlertHelper.message(viewController: self, title: "Invalid name", message: "Your hero must have a name")
      return
    }
    
    let adventure = Adventurer(name: name)
    print("TODO: Save: \(adventure)")
  }
}
