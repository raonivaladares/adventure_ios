import UIKit

class InitialViewController: UIViewController {
	private let labelTitle: UILabel = {
		let label = UILabel()
		label.text = "Adventure"
		label.font = UIFont.systemFont(ofSize: 30)
		label.textAlignment = .center
		label.translatesAutoresizingMaskIntoConstraints = false
		
		return label
	}()
	
	private let imageCover: UIImageView = {
		let imageView = UIImageView()
		imageView.backgroundColor = .black
		imageView.translatesAutoresizingMaskIntoConstraints = false
		
		return imageView
	}()
	
	override func viewDidLoad() {
		view.backgroundColor = UIColor.init(red: 217/256, green: 219/256, blue: 205/256, alpha: 1)
		
		buildUI()
	}
	
	private func buildUI() {
		view.addSubview(labelTitle)
		view.addSubview(imageCover)
		
		NSLayoutConstraint.activate([
			labelTitle.heightAnchor.constraint(equalToConstant: 30),
			labelTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			labelTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			labelTitle.topAnchor.constraint(equalTo:  view.topAnchor, constant: 50),
			
			imageCover.topAnchor.constraint(equalTo: labelTitle.bottomAnchor, constant: 32),
			
			imageCover.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
			imageCover.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
			imageCover.heightAnchor.constraint(equalToConstant: 200),
			
			
		])
	}
}
