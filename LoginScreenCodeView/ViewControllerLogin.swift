//
//  ViewController.swift
//  LoginScreenCodeView
//
//  Created by Vítor Bruno on 29/04/25.
//

import UIKit

class ViewControllerLogin: UIViewController {
    
    //MARK: label welcome
    lazy var labelWelcome: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Welcome!"
        label.textAlignment = .center
        label.font = UIFont(name: "SFProRounded-Bold", size: 34)
        label.textColor = .white
        return label
    }()
    
    //MARK: apple inteligence UIIMAGEVIEW
    lazy var imageAppleInteligence: UIImageView = {
        
        let image = UIImageView(image: UIImage(named: "apple.intelligence.png"))
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    //MARK: stackView welcome label e apple inteligence image
    lazy var stackViewWelcomeAppleInteligence: UIStackView = {
        
        let stackView = UIStackView(arrangedSubviews: [imageAppleInteligence, labelWelcome])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 24
        return stackView
    }()
    
    //MARK: View welcome
    lazy var viewWelcome: UIView = {
        
        let viewWelcome = UIView()
        viewWelcome.translatesAutoresizingMaskIntoConstraints = false
        
        viewWelcome.heightAnchor.constraint(equalToConstant: 281).isActive = true
        
        return viewWelcome
    }()
    
    //MARK: View inputs
    lazy var viewInputs: UIView = {
        
        let viewInput = UIView()
        viewInput.translatesAutoresizingMaskIntoConstraints = false
        
        viewInput.backgroundColor = UIColor(red: 28.0/255.0, green: 28.0/255.0, blue: 30.0/255.0, alpha: 1.0)
        viewInput.layer.cornerRadius = 24
        
        return viewInput
    }()
    
    //MARK: Label Login
    lazy var labelLogin: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Login"
        label.textAlignment = .center
        label.textColor = .white
        label.font = UIFont(name: "SFProRounded-Bold", size: 28)
        
        return label
    }()
    
    //MARK: Label email
    lazy var labelEmail: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Email"
        label.textAlignment = .left
        label.textColor = .white
        label.font = UIFont(name: "SFPro", size: 16)
        
        return label
    }()
    
    
    //MARK: textfield email
    lazy var textFieldEmail: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = UIColor(red: 56/255.0, green: 56/255.0, blue: 58/255.0, alpha: 1.0)
        textField.textColor = UIColor(red: 235/255.0,green: 235/255.0,blue: 245/255.0,alpha: 77/255.0)
        textField.layer.cornerRadius = 8
        textField.heightAnchor.constraint(equalToConstant: 46).isActive = true
        textField.attributedPlaceholder = NSAttributedString(string: "abc@abc.com", attributes: [
            .foregroundColor: UIColor(red: 235/255, green: 235/255, blue: 245/255, alpha: 0.3)])
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
        return textField
    }()

    //MARK: stackView textfield Email e Label Email
    lazy var stackViewEmail: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [labelEmail, textFieldEmail])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 8
        return stackView
    }()

    //MARK: Label password
    lazy var labelPassword: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Password"
        label.textAlignment = .left
        label.textColor = .white
        label.font = UIFont(name: "SFPro", size: 16)
        
        
        return label
    }()
    
    //MARK: textfield password
    lazy var textFieldPassword: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = UIColor(red: 56/255.0, green: 56/255.0, blue: 58/255.0, alpha: 1.0)
        textField.textColor = UIColor(red: 235/255.0,green: 235/255.0,blue: 245/255.0,alpha: 77/255.0)
        textField.layer.cornerRadius = 8
        textField.heightAnchor.constraint(equalToConstant: 46).isActive = true
        textField.attributedPlaceholder = NSAttributedString(string: "********", attributes: [
            .foregroundColor: UIColor(red: 235/255, green: 235/255, blue: 245/255, alpha: 0.3)])
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
        return textField
    }()
    
    //MARK: stackView textfield password e Label password
    lazy var stackViewPassword: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [labelPassword, textFieldPassword])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 8
        return stackView
    }()
    
    //MARK: button forgot password
    lazy var buttonForgotPassword: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.setTitle("Forgot Password?", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        
        return button
    }()
    
    //MARK: button login
    lazy var buttonLogin: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 12
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        return button
    }()
    
    lazy var buttonCraeteAccount: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.setTitle("Create Account", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.backgroundColor = UIColor(red: 44/255.0, green: 44/255.0, blue: 46/255.0, alpha: 1.0)
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.layer.cornerRadius = 12
        
        return button
    }()
    
    lazy var stackViewButtonsToLogin: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [buttonLogin, buttonCraeteAccount])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 16
        return stackView
    }()
    
    override func viewDidLoad() {
        
        //reconhce o toque pra desligar o teclado
        let tapDissmisKeyboard: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))//pega o taregt e o action, q vai ser uma func objc
        view.addGestureRecognizer(tapDissmisKeyboard)
        
        super.viewDidLoad()
        
        addSubViews()
        
        addConstraints()
        
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        viewWelcome.gradientColor(
            colorOne: UIColor(red: 0/255, green: 66/255, blue: 132/255, alpha: 1.0),
            colorTwo: UIColor(red: 79/255, green: 188/255, blue: 255/255, alpha: 1.0)
        )
    }
    
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
    
    func addConstraints(){
        
        NSLayoutConstraint.activate([
            //MARK: View Welcome
            viewWelcome.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0), //constraint esquerda view welcome
            viewWelcome.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0), //constraint direita view welcome
            viewWelcome.topAnchor.constraint(equalTo: view.topAnchor, constant: 0), //constraint pra cima view welcome,
            
            //MARK: Stack View Welcome e apple inteligence
            stackViewWelcomeAppleInteligence.centerXAnchor.constraint(equalTo: viewWelcome.centerXAnchor),
            stackViewWelcomeAppleInteligence.topAnchor.constraint(equalTo: viewWelcome.topAnchor, constant: 98),
            stackViewWelcomeAppleInteligence.leadingAnchor.constraint(equalTo: viewWelcome.leadingAnchor, constant: 16),
            stackViewWelcomeAppleInteligence.trailingAnchor.constraint(equalTo: viewWelcome.trailingAnchor, constant: -16),
            
            //MARK: View Inputs
            viewInputs.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            viewInputs.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            viewInputs.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            viewInputs.topAnchor.constraint(equalTo: view.topAnchor, constant: 243),
            viewInputs.centerXAnchor.constraint(equalToSystemSpacingAfter: view.centerXAnchor, multiplier: 1),
            
            //MARK: label Login
            labelLogin.topAnchor.constraint(equalTo: viewInputs.topAnchor, constant: 20),
            labelLogin.leadingAnchor.constraint(equalTo: viewInputs.leadingAnchor, constant: 16),
            labelLogin.trailingAnchor.constraint(equalTo: viewInputs.trailingAnchor, constant: -16),
            labelLogin.centerXAnchor.constraint(equalTo: viewInputs.centerXAnchor),
            
            //MARK: stack view email
            stackViewEmail.topAnchor.constraint(equalTo: labelLogin.bottomAnchor, constant: 32),
            stackViewEmail.centerXAnchor.constraint(equalTo: viewInputs.centerXAnchor),
            stackViewEmail.trailingAnchor.constraint(equalTo: viewInputs.trailingAnchor, constant: -16),
            stackViewEmail.leadingAnchor.constraint(equalTo: viewInputs.leadingAnchor, constant: 16),
            
            //MARK: stack view password
            stackViewPassword.topAnchor.constraint(equalTo: stackViewEmail.bottomAnchor, constant: 20),
            stackViewPassword.centerXAnchor.constraint(equalTo: viewInputs.centerXAnchor),
            stackViewPassword.trailingAnchor.constraint(equalTo: viewInputs.trailingAnchor, constant: -16),
            stackViewPassword.leadingAnchor.constraint(equalTo: viewInputs.leadingAnchor, constant: 16),
            
            //MARK: forgot Pasdword button
            buttonForgotPassword.trailingAnchor.constraint(equalTo: viewInputs.trailingAnchor, constant: -16),
            buttonForgotPassword.leadingAnchor.constraint(equalTo: viewInputs.leadingAnchor, constant: 218),
            buttonForgotPassword.topAnchor.constraint(equalTo: stackViewPassword.bottomAnchor, constant: 16),
            
            //MARK: Button login
            buttonLogin.leadingAnchor.constraint(equalTo: viewInputs.leadingAnchor, constant: 16),
            buttonLogin.trailingAnchor.constraint(equalTo: viewInputs.trailingAnchor, constant: -16),
            
            //MARK: Button create Account
            buttonCraeteAccount.leadingAnchor.constraint(equalTo: viewInputs.leadingAnchor, constant: 16),
            buttonCraeteAccount.trailingAnchor.constraint(equalTo: viewInputs.trailingAnchor, constant: -16),
            
            //MARK: stack view buttons to login
            stackViewButtonsToLogin.topAnchor.constraint(equalTo: buttonForgotPassword.bottomAnchor, constant: 137),
            stackViewButtonsToLogin.leadingAnchor.constraint(equalTo: viewInputs.leadingAnchor, constant: 16),
            stackViewButtonsToLogin.leadingAnchor.constraint(equalTo: viewInputs.trailingAnchor, constant: -16),
            stackViewButtonsToLogin.bottomAnchor.constraint(equalTo: viewInputs.bottomAnchor, constant: -40)
        ])
    }
    
    func addSubViews(){
        
        view.backgroundColor = .white
        view.addSubview(viewWelcome)
        view.addSubview(viewInputs)
        
        viewWelcome.addSubview(stackViewWelcomeAppleInteligence)
        
        viewInputs.addSubview(buttonForgotPassword)
        viewInputs.addSubview(labelLogin)
        viewInputs.addSubview(stackViewEmail)
        viewInputs.addSubview(stackViewPassword)
        viewInputs.addSubview(stackViewButtonsToLogin)
   
    }

}

