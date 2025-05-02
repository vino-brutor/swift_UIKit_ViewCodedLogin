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
    
//    //MARK: Label full name
//    lazy var labelFullname: UILabel = {
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.text = "Full Name"
//        label.textAlignment = .left
//        label.textColor = .white
//        label.font = UIFont(name: "SFPro", size: 16)
//        
//        return label
//    }()
//    
//    
//    //MARK: textfield full name
//    lazy var textFieldFullName: UITextField = {
//        let textField = UITextField()
//        textField.translatesAutoresizingMaskIntoConstraints = false
//        textField.backgroundColor = UIColor(red: 56/255.0, green: 56/255.0, blue: 58/255.0, alpha: 1.0)
//        textField.textColor = UIColor(red: 235/255.0,green: 235/255.0,blue: 245/255.0,alpha: 77/255.0)
//        textField.layer.cornerRadius = 8
//        textField.heightAnchor.constraint(equalToConstant: 46).isActive = true
//        textField.attributedPlaceholder = NSAttributedString(string: "Your Name Here", attributes: [
//            .foregroundColor: UIColor(red: 235/255, green: 235/255, blue: 245/255, alpha: 0.3)])
//        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: textField.frame.height))
//        textField.leftView = paddingView
//        textField.leftViewMode = .always
//        return textField
//    }()
//
//    //MARK: stack view Fullname
//    lazy var stackViewFullName: UIStackView = {
//        let stackView = UIStackView(arrangedSubviews: [labelFullname, textFieldFullName])
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        stackView.axis = .vertical
//        stackView.spacing = 8
//        return stackView
//    }()
    
    //MARK: Component Full name
    lazy var componentTextFieldFullName: TextfieldComponent = {
        let view = TextfieldComponent()
        view.textLabel = "Full Name"
        view.placeHolderTextField = "Your name here"
        view.tagTextField = 1
        
        return view
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

//    //MARK: Label email
//    lazy var labelEmail: UILabel = {
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.text = "Email"
//        label.textAlignment = .left
//        label.textColor = .white
//        label.font = UIFont(name: "SFPro", size: 16)
//        
//        return label
//    }()
//    
//    
//    //MARK: textfield email
//    lazy var textFieldEmail: UITextField = {
//        let textField = UITextField()
//        textField.translatesAutoresizingMaskIntoConstraints = false
//        textField.backgroundColor = UIColor(red: 56/255.0, green: 56/255.0, blue: 58/255.0, alpha: 1.0)
//        textField.textColor = UIColor(red: 235/255.0,green: 235/255.0,blue: 245/255.0,alpha: 77/255.0)
//        textField.layer.cornerRadius = 8
//        textField.heightAnchor.constraint(equalToConstant: 46).isActive = true
//        textField.attributedPlaceholder = NSAttributedString(string: "abc@abc.com", attributes: [
//            .foregroundColor: UIColor(red: 235/255, green: 235/255, blue: 245/255, alpha: 0.3)])
//        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: textField.frame.height))
//        textField.leftView = paddingView
//        textField.leftViewMode = .always
//        return textField
//    }()
//
//    //MARK: stack view email
//    lazy var stackViewEmail: UIStackView = {
//        let stackView = UIStackView(arrangedSubviews: [labelEmail, textFieldEmail])
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        stackView.axis = .vertical
//        stackView.spacing = 8
//        return stackView
//    }()
    
    //MARK: component email
        lazy var componentTextFieldEmail: TextfieldComponent = {
        let view = TextfieldComponent()
        view.textLabel = "Email"
        view.placeHolderTextField = "abc@abc.com"
        view.tagTextField = 2
        
        return view
    }()
    
//    //MARK: Label password
//    lazy var labelPassword: UILabel = {
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.text = "Password"
//        label.textAlignment = .left
//        label.textColor = .white
//        label.font = UIFont(name: "SFPro", size: 16)
//        
//        return label
//    }()
//    
//    
//    //MARK: textfield password
//    lazy var textFieldPassword: UITextField = {
//        let textField = UITextField()
//        textField.translatesAutoresizingMaskIntoConstraints = false
//        textField.backgroundColor = UIColor(red: 56/255.0, green: 56/255.0, blue: 58/255.0, alpha: 1.0)
//        textField.textColor = UIColor(red: 235/255.0,green: 235/255.0,blue: 245/255.0,alpha: 77/255.0)
//        textField.layer.cornerRadius = 8
//        textField.heightAnchor.constraint(equalToConstant: 46).isActive = true
//        textField.attributedPlaceholder = NSAttributedString(string: "Must be 8 characters", attributes: [
//            .foregroundColor: UIColor(red: 235/255, green: 235/255, blue: 245/255, alpha: 0.3)])
//        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: textField.frame.height))
//        textField.leftView = paddingView
//        textField.leftViewMode = .always
//        return textField
//    }()
//
//    //MARK: stack view password
//    lazy var stackViewPassword: UIStackView = {
//        let stackView = UIStackView(arrangedSubviews: [labelPassword, textFieldPassword])
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        stackView.axis = .vertical
//        stackView.spacing = 8
//        return stackView
//    }()
    
    //MARK: component password
    lazy var componentTextFieldPassword: TextfieldComponent = {
        let view = TextfieldComponent()
        view.textLabel = "Password"
        view.placeHolderTextField = "********"
        view.tagTextField = 3
        
        return view
    }()
    
    //MARK: switch policy
    lazy var switchPolicy: UISwitch = {
       
        let switchUI = UISwitch()
        switchUI.translatesAutoresizingMaskIntoConstraints = false
        switchUI.isOn = false
        
        return switchUI
    }()
    
    //MARK: label Policy
    lazy var labelPolicy: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "I accept the therm and privacy policy"
        label.textAlignment = .left
        label.font = UIFont(name: "SFPro", size: 16)
        return label
    }()
    
    //MARK: stack view policy therms
    lazy var stackViewPolicyTherm: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [switchPolicy, labelPolicy])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 16
        return stackView
    }()
    
    //MARK: label 8 characters
    
    
    //MARK: stack view inputs
    lazy var stackViewInputs: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [componentTextFieldFullName, stackViewDateOfBirth, componentTextFieldEmail, componentTextFieldPassword, stackViewPolicyTherm])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        return stackView
    }()
    
    //MARK: button create account
    lazy var buttonCreateNewAccount: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleButtonCreateNewAccount), for: .touchUpInside)
        button.setTitle("Create Account", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 12
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        return button
    }()



    
    //MARK: label password must be 8 char
    lazy var labelPasswordMustbeEightChar: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        label.textAlignment = .center
        label.font = UIFont(name: "SFProRounded-Bold", size: 34)
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 28.0/255.0, green: 28.0/255.0, blue: 30.0/255.0, alpha: 1.0)
        
        let tapDismissKeyboard: UIGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tapDismissKeyboard)
        
        addToView()
        setConstraints()
    }
    
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
    
    func addToView(){
        view.addSubview(labelCreateAccount) // label create account
        view.addSubview(stackViewInputs) //stack view inputs
        view.addSubview(buttonCreateNewAccount) //button create account
        
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            
            //MARK: label create account constraints
            labelCreateAccount.topAnchor.constraint(equalTo: view.topAnchor, constant:118),
            labelCreateAccount.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            labelCreateAccount.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            //MARK: stack view inputa
            stackViewInputs.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            stackViewInputs.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            stackViewInputs.topAnchor.constraint(equalTo: labelCreateAccount.bottomAnchor, constant: 32),
            
            //MARK: button create account
            buttonCreateNewAccount.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -66),
            buttonCreateNewAccount.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            buttonCreateNewAccount.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
        ])
    }
    
    @objc func handleButtonCreateNewAccount(){
        
        if(switchPolicy.isOn){
            guard let fullname = componentTextFieldFullName.text, !fullname.isEmpty else {
                
                showErrorAlert(alertMessage: "Please enter your full name")
                return
            }
            
            guard let email = componentTextFieldEmail.text, !email.isEmpty else {
                
                showErrorAlert(alertMessage: "Please enter your email")
                return
            }
            
            guard let password = componentTextFieldPassword.text, !password.isEmpty else {
                showErrorAlert(alertMessage: "Please enter your password")
                return
            }
            
            guard let dateOfBirth = datePickerBirhDay.date as Date? else {
                showErrorAlert(alertMessage: "Please enter your Birth day")
                return
            }
            
            addAccountCreated(fullName: fullname, email: email, password: password, dateOfBirth: dateOfBirth)
            
        
            if let accountsList = getAccounts() {
                for account in accountsList.Accounts {
                    print("Fullname: \(account.fullname), Email: \(account.email), Date of Birth: \(account.dateOfBirth),  Password: \(account.password)\n")
                }
            } else {
                print("No accounts Found")
            }
            
        } else {
            showErrorAlert(alertMessage: "Please accept the policy therms")
        }
    }
    
    func showErrorAlert(alertMessage: String){
        let errorAlert = UIAlertController(title: "Error", message: alertMessage, preferredStyle: .alert)
        
        errorAlert.addAction(UIAlertAction(title: "OK", style: .default))
        
        present(errorAlert, animated: true , completion: nil)
    }
    
}
//extensao da classe para usar o delegate de texfield
extension viewControllerCreateAccount: UITextFieldDelegate {
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if(textField.tag == 3){
            
        }
    }
}
