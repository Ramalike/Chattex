//
//  File.swift
//  Chattex
//
//  Created by Рамиль Мухаррямов on 07.02.2022.
//

import UIKit

class SignUpViewController: UIViewController {
    
    let welcomLabel = UILabel(text: "Good to see you!", font: .avenir26())
    let emailLabel = UILabel(text: "Email")
    let passwordLabel = UILabel(text: "Password")
    let confirmPassword = UILabel(text: "Confirm password")
    let allreadyOnBoard = UILabel(text: "Already on board?")
    
    let emailTextField = OneLineTextField(font: .avenir20())
    let passwordTextField = OneLineTextField(font: .avenir20())
    let confirmPasswordTextField = OneLineTextField(font: .avenir20())
    
    let signIpButton = UIButton(title: "Sign Up", titleColor: .white, backgroundColor: .buttonDark(), cornerRadius: 4)
    let loginButton = UIButton()
    
    
    override func viewDidLoad() {
        super .viewDidLoad()
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.buttonred(), for: .normal)
        setUpConstraints()
        view.backgroundColor = .mainWhite()
    }
    private func setUpConstraints() {
        let emailStackView = UIStackView(arrangedSubviews: [emailLabel, emailTextField], axis: .vertical, spacing: 0)
        let passwordStackView = UIStackView(arrangedSubviews: [passwordLabel, passwordTextField], axis: .vertical, spacing: 0)
        let confirmStackView = UIStackView(arrangedSubviews: [confirmPassword, confirmPasswordTextField], axis: .vertical, spacing: 0)
        signIpButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        let stackView = UIStackView(arrangedSubviews: [emailStackView, passwordStackView,confirmStackView,signIpButton], axis: .vertical, spacing: 40)
    
        let bottomStackView = UIStackView(arrangedSubviews: [allreadyOnBoard, loginButton], axis: .horizontal, spacing: 5)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        welcomLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(welcomLabel)
        view.addSubview(stackView)
        view.addSubview(bottomStackView)
        
        NSLayoutConstraint.activate([
            welcomLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            welcomLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.topAnchor.constraint(equalTo: welcomLabel.topAnchor, constant: 160),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            bottomStackView.bottomAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 60),
            bottomStackView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor)
        ])
        
    }

}



// MARK: SwiftUI

import SwiftUI


struct SignUpVCProvider: PreviewProvider {
   
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
       
        let signUpVC = SignUpViewController()
       
        func makeUIViewController(context: UIViewControllerRepresentableContext<SignUpVCProvider.ContainerView>) ->  SignUpViewController {
            return signUpVC
        }
        
    func updateUIViewController(_ uiViewController: SignUpVCProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<SignUpVCProvider.ContainerView>) {
        
        }
    }
    
}
