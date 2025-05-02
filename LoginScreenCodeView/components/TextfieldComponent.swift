//
//  TextfieldComponent.swift
//  LoginScreenCodeView
//
//  Created by Vítor Bruno on 02/05/25.
//

import UIKit

class TextfieldComponent: UIView {
    //MARK: Label
    lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Text"
        label.textAlignment = .left
        label.textColor = .white
        label.font = UIFont(name: "SFPro", size: 16)
        
        return label
    }()
    
    
    //MARK: textfield
    lazy var textField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.tag = 1
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

    //MARK: stack view
    lazy var stackViewLabelTextField: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [label, textField])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 8
        return stackView
    }()
    
    //variaveis dos componentes
    var textLabel: String? {
        didSet{
            label.text = textLabel
        }
    }
    
    var tagTextField: Int? {
        didSet{
            textField.tag = tagTextField ?? 1
        }
    }
    

    var placeHolderTextField: String? {
        didSet{
            if let placeHolderTextField {
                textField.attributedPlaceholder = NSAttributedString(string: placeHolderTextField, attributes: [
                    .foregroundColor: UIColor(red: 235/255, green: 235/255, blue: 245/255, alpha: 0.3)])
            }
        }
    }
    
    //varivale delegate, pra deixar usar o delegate no view controller
    var delegate: UITextFieldDelegate? {
        didSet{
            textField.delegate = delegate
        }
    }
    
    var text: String? {
        get{
            textField.text
        }set{
            textField.text = newValue
        }
    }
    
    //função de init, chama adiciona os componentes e as constrints
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        setupConstraints()
    }
    
    //init di storyboard - n vamos usar agr
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        addSubview(stackViewLabelTextField)
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            stackViewLabelTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            stackViewLabelTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            stackViewLabelTextField.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            stackViewLabelTextField.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
        ])
        
    }
}

