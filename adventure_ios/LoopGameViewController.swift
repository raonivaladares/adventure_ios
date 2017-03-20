import UIKit

class LoopGameViewController: UIViewController {
  
  @IBOutlet weak var timerLabel: UILabel!
  
  var timer = Timer()
//  let adventureTime = 
  
  @IBAction func startAdventureViewAction(_ sender: UIButton) {
    timer = Timer.scheduledTimer(timeInterval: 1.0,
      target: self,
      selector: #selector(tick),
      userInfo: nil,
      repeats: true)
  }
  
  func tick() {
    timerLabel.text = DateFormatter.localizedString(from: NSDate() as Date,
                                                                    dateStyle: .medium,
                                                                    timeStyle: .medium)
  }
}
