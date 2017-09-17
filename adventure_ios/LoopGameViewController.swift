import UIKit

class LoopGameViewController: UIViewController {
  
  @IBOutlet weak var timerLabel: UILabel!
	
	var minutes = 2
	var seconds = 60
	
	var timer = Timer()
	
  @IBAction func startAdventureViewAction(_ sender: UIButton) {
    timer = Timer.scheduledTimer(timeInterval: 1.0,
      target: self,
      selector: #selector(tick),
      userInfo: nil,
      repeats: true)
  }
  
  func tick() {
		timer.invalidate()
		
		timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
		
  }
	
	func timerAction() {
		if seconds > 0 {
			seconds -= 1
		} else {
			seconds = 59
			minutes -= 1
			if minutes == 0 {
				timer.invalidate()
				seconds = 0
			}
		}
		timerLabel.text = "\(minutes) : \(seconds)"
	}
}
