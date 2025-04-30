//
//  viewControllerCreateAccount.swift
//  LoginScreenCodeView
//
//  Created by Vítor Bruno on 30/04/25.
//

import UIKit

class viewControllerCreateAccount: UIViewController {
    
    //MARK: Label create account
    lazy var labelCreateAccount: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Create Account"
        label.textAlignment = .center
        label.textColor = .white
        label.font = UIFont(name: "SFProRounded-Bold", size: 34)
        return label
    }()
    
    //MARK: Label full name
    lazy var labelFullname: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Full Name"
        label.textAlignment = .left
        label.textColor = .white
        label.font = UIFont(name: "SFPro", size: 16)
        
        return label
    }()
    
    
    //MARK: textfield full name
    lazy var textFieldFullName: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = UIColor(red: 56/255.0, green: 56/255.0, blue: 58/255.0, alpha: 1.0)
        textField.textColor = UIColor(red: 235/255.0,green: 235/255.0,blue: 245/255.0,alpha: 77/255.0)
        textField.layer.cornerRadius = 8
        textField.heightAnchor.constraint(equalToConstant: 46).isActive = true
        textField.attributedPlaceholder = NSAttributedString(string: "Your Name Here", attributes: [
            .foregroundColor: UIColor(red: 235/255, green: 235/255, blue: 245/255, alpha: 0.3)])
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
        return textField
    }()

    //MARK: stack view Fullname
    lazy var stackViewFullName: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [labelFullname, textFieldFullName])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 8
        return stackView
    }()
    
    //MARK: label Date of Birth
    lazy var labelDateOfBirth: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Date of Birth"
        label.textAlignment = .left
        label.textColor = .white
        label.font = UIFont(name: "SFPro", size: 16)
        return label
    }()
    
    //MARK: date picker Birthday
    lazy var datePickerBirhDay:UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        datePicker.datePickerMode = .date
        datePicker.setValue(UIColor.white, forKey: "textColor")
        
        return datePicker
    }()
    
    //MARK: stack view date picker
    lazy var stackViewDateOfBirth: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [labelDateOfBirth, datePickerBirhDay])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 142
        return stackView
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

    //MARK: stack view email
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
        textField.attributedPlaceholder = NSAttributedString(string: "Must be 8 characters", attributes: [
            .foregroundColor: UIColor(red: 235/255, green: 235/255, blue: 245/255, alpha: 0.3)])
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
        return textField
    }()

    //MARK: stack view password
    lazy var stackViewPassword: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [labelPassword, textFieldPassword])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 8
        return stackView
    }()
    
    //MARK: stack view inputss
    lazy var stackViewInputs: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [stackViewFullName, stackViewDateOfBirth, stackViewEmail, stackViewPassword])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 28.0/255.0, green: 28.0/255.0, blue: 30.0/255.0, alpha: 1.0)
        
        addToView()
        setConstraints()
    }
    
    func addToView(){
        view.addSubview(labelCreateAccount)
//        view.addSubview(stackViewFullName)
//        view.addSubview(stackViewDateOfBirth)
//        view.addSubview(stackViewEmail)
//        view.addSubview(stackViewPassword)
        view.addSubview(stackViewInputs)
        
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            
            //MARK: label create account constraints
            labelCreateAccount.topAnchor.constraint(equalTo: view.topAnchor, constant:118),
            labelCreateAccount.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            labelCreateAccount.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
//            
//            //MARK: stack View full name constraints
//            stackViewFullName.topAnchor.constraint(equalTo: labelCreateAccount.bottomAnchor, constant: 32),
//            stackViewFullName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
//            stackViewFullName.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
//            
//            //MARK: stack view date of birth
//            stackViewDateOfBirth.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
//            stackViewDateOfBirth.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
//            stackViewDateOfBirth.topAnchor.constraint(equalTo: stackViewFullName.bottomAnchor, constant: 20),
//            
//            //MARK: stack view email
//            stackViewEmail.topAnchor.constraint(equalTo: stackViewDateOfBirth.bottomAnchor, constant: 20),
//            stackViewEmail.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
//            stackViewEmail.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
//            
//            //MARK: stack view password
//            stackViewPassword.topAnchor.constraint(equalTo: stackViewEmail.bottomAnchor, constant: 20),
//            stackViewPassword.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
//            stackViewPassword.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
            
            stackViewInputs.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            stackViewInputs.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            stackViewInputs.topAnchor.constraint(equalTo: labelCreateAccount.bottomAnchor, constant: 32)
            
        ])
    }
}
