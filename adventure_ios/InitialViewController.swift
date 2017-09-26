import UIKit

class InitialViewController: UIViewController {
	private let scrollView: UIScrollView = {
		let scrollView = UIScrollView()
		scrollView.translatesAutoresizingMaskIntoConstraints = false
		
		return scrollView
	}()
	
	private let contentView: UIView = {
		let view = UIView()
		view.translatesAutoresizingMaskIntoConstraints = false
		
		return view
	}()
	
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
	
	private let buttonNewGame: UIButton = {
		let button = UIButton()
		button.setTitle("New Game", for: .normal)
		button.setTitleColor(.black, for: .normal)
		button.backgroundColor = UIColor(red: 41/256, green: 128/256, blue: 185/256, alpha: 1)
		button.addTarget(self, action: #selector(buttonTappedNewGame(_:)), for: .touchUpInside)
		button.translatesAutoresizingMaskIntoConstraints = false
		
		return button
	}()
	
	private let buttonLoadGame: UIButton = {
		let button = UIButton()
		button.setTitle("Load Game", for: .normal)
		button.setTitleColor(.black, for: .normal)
		button.backgroundColor = UIColor(red: 41/256, green: 128/256, blue: 185/256, alpha: 1)
		button.addTarget(self, action: #selector(buttonTappedLoadGame(_:)), for: .touchUpInside)
		button.translatesAutoresizingMaskIntoConstraints = false
		
		return button
	}()
	
	// MARK: View life-cycle
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.backgroundColor = UIColor(red: 217/256, green: 219/256, blue: 205/256, alpha: 1)
		
		buildUI()
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
	}
	
	// MARK: Private methods
	private func buildUI() {
		view.addSubview(scrollView)
		scrollView.addSubview(contentView)
		
		contentView.addSubview(labelTitle)
		
		contentView.addSubview(imageCover)
		contentView.addSubview(buttonNewGame)
		contentView.addSubview(buttonLoadGame)
		
		let contentViewHeightAnchor = contentView.heightAnchor.constraint(equalTo: view.heightAnchor)
		contentViewHeightAnchor.priority = UILayoutPriority(rawValue: 250)
		
		NSLayoutConstraint.activate([
			scrollView.topAnchor.constraint(equalTo: view.topAnchor),
			scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
			scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			
			contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
			contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
			contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
			contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
			contentView.widthAnchor.constraint(equalTo: view.widthAnchor),
			contentViewHeightAnchor,
			
			labelTitle.topAnchor.constraint(equalTo:  contentView.topAnchor, constant: 50),
			labelTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
			labelTitle.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
			labelTitle.heightAnchor.constraint(equalToConstant: 30),
			
			imageCover.topAnchor.constraint(equalTo: labelTitle.bottomAnchor, constant: 32),
			imageCover.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
			imageCover.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
			imageCover.heightAnchor.constraint(equalToConstant: 200),

			buttonNewGame.topAnchor.constraint(equalTo: imageCover.bottomAnchor, constant: 60),
			buttonNewGame.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
			buttonNewGame.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.4),
			buttonNewGame.heightAnchor.constraint(equalToConstant: 44),
			
			buttonLoadGame.topAnchor.constraint(equalTo: buttonNewGame.bottomAnchor, constant: 60),
			buttonLoadGame.bottomAnchor.constraint(lessThanOrEqualTo: contentView.bottomAnchor, constant: -16),
			buttonLoadGame.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
			buttonLoadGame.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.4),
			buttonLoadGame.heightAnchor.constraint(equalToConstant: 44),
		])
	}
	
	// MARK: Action handlers
	@objc private func buttonTappedNewGame(_ sender : UIButton) {
		let viewController = LoadGameViewController()
		navigationController?.pushViewController(viewController, animated: true)
	}
	
	@objc private func buttonTappedLoadGame(_ sender : UIButton) {
		let viewController = LoadGameViewController()
		navigationController?.pushViewController(viewController, animated: true)
	}
}
