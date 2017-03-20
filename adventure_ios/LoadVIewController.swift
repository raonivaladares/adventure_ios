import UIKit

class LoadViewController: UIViewController {
  
  @IBOutlet weak var adventureNameLabel: UILabel!
  // MARK: Lify circle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let hasCharacters = Adventurer.getCurrent()
    if hasCharacters != nil {
      adventureNameLabel.text = hasCharacters?.name
    }
  }
  
  @IBAction func loadAction(_ sender: UIButton) {
    let storyboard = UIStoryboard(name: "Game", bundle: nil)
    let controller = storyboard.instantiateViewController(withIdentifier: "LoopGameViewController")
    self.present(controller, animated: true, completion: nil)
  }
  
}
