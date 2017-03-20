import UIKit

class ViewController: UIViewController {
  
  @IBOutlet private weak var loadGameButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let hasCharacters = Adventurer.getCurrent()
    if hasCharacters == nil {
        loadGameButton.isHidden = true
    }
  }
}

