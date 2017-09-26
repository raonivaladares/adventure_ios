import UIKit

class SingInViewController: UIViewController {
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
	
	private let imageCover: UIImageView = {
		let imageView = UIImageView()
		imageView.backgroundColor = .black
		imageView.translatesAutoresizingMaskIntoConstraints = false
		
		return imageView
	}()
	
	private let emailTextField: UITextField = {
		let textField = UITextField()
		textField.font = UIFont.systemFont(ofSize: 15)
		textField.placeholder = "Enter your email"
		textField.borderStyle = .roundedRect
		textField.autocorrectionType = .no
		textField.keyboardType = .default
		textField.returnKeyType = .done
		textField.clearButtonMode = .whileEditing
		textField.contentVerticalAlignment = .center
		textField.translatesAutoresizingMaskIntoConstraints = false
		
		return textField
	}()
	
	private let passwordTextField: UITextField = {
		let textField = UITextField()
		textField.font = UIFont.systemFont(ofSize: 15)
		textField.placeholder = "Enter your email"
		textField.borderStyle = .roundedRect
		textField.autocorrectionType = .no
		textField.keyboardType = .default
		textField.returnKeyType = .done
		textField.clearButtonMode = .whileEditing
		textField.contentVerticalAlignment = .center
		textField.translatesAutoresizingMaskIntoConstraints = false
		
		return textField
	}()
	
	private let buttonRegister: UIButton = {
		let button = UIButton()
		button.setTitle("Register", for: .normal)
		button.backgroundColor = .white
		button.translatesAutoresizingMaskIntoConstraints = false
		button.backgroundColor = .blue
		
		return button
	}()
	
	private let buttonSignIn: UIButton = {
		let button = UIButton()
		button.setTitle("Sign in", for: .normal)
		button.backgroundColor = .white
		button.translatesAutoresizingMaskIntoConstraints = false
		button.backgroundColor = .red
		
		return button
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.backgroundColor = UIColor(red: 217/256, green: 219/256, blue: 205/256, alpha: 1)
		buildUI()
	}
	
	private func buildUI() {
		view.addSubview(scrollView)
		scrollView.addSubview(contentView)
		
		contentView.addSubview(imageCover)
		
		let containerStackView = UIStackView()
		containerStackView.axis = .vertical
		containerStackView.spacing = 12
		containerStackView.translatesAutoresizingMaskIntoConstraints = false
		
		containerStackView.addArrangedSubview(emailTextField)
		containerStackView.addArrangedSubview(passwordTextField)
		
		let buttonsStackView = UIStackView()
		buttonsStackView.axis = .horizontal
		buttonsStackView.distribution = .fillEqually
		buttonsStackView.spacing = 16
		buttonsStackView.translatesAutoresizingMaskIntoConstraints = false
		
		buttonsStackView.addArrangedSubview(buttonSignIn)
		buttonsStackView.addArrangedSubview(buttonRegister)
		
		containerStackView.addArrangedSubview(buttonsStackView)
		
		contentView.addSubview(containerStackView)
		
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
			
			imageCover.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 32),
			imageCover.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
			imageCover.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
			imageCover.heightAnchor.constraint(equalToConstant: 200),
			
			containerStackView.topAnchor.constraint(equalTo: imageCover.bottomAnchor, constant: 32),
			containerStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 32),
			containerStackView.bottomAnchor.constraint(lessThanOrEqualTo: contentView.bottomAnchor, constant: -16),
			containerStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -32),
			])
	}
}
