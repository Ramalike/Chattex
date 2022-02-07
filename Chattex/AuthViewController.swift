//
//  AuthViewController.swift
//  Chattex
//
//  Created by Рамиль Мухаррямов on 06.02.2022.
//

import UIKit

class AuthViewController: UIViewController {

    //MARK: UIProperties
    let logoImageView = UIImageView(image: #imageLiteral(resourceName: "Logo"), contentMode: .scaleAspectFit)
   
    let googleLabel = UILabel(text: "Get started with")
    let emailLabel = UILabel(text: "Or sign up with")
    let alreadyOnboardLabel = UILabel(text: "Already onboard?")
 
    let emailButton = UIButton(title: "Email", titleColor: .white, backgroundColor: .buttonDark(), isShadow: true)
   
    let loginButton = UIButton(title: "Login", titleColor: .buttonred(), backgroundColor: .white, isShadow: true)
   
    let googleButton = UIButton(title: "Google", titleColor: .black, backgroundColor: .white, isShadow: true)
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints()
        view.backgroundColor = .mainWhite()
    }

    //MARK: Setup constrains
   
    private func setupConstraints() {
        view.addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
       
        let googleView = ButtomFormView(label: googleLabel, button: googleButton)
        let emailView = ButtomFormView(label: emailLabel, button: emailButton)
        let loginView = ButtomFormView(label: alreadyOnboardLabel, button: loginButton)
        
        let stackView = UIStackView(arrangedSubviews: [googleView, emailView, loginView], axis: .vertical, spacing: 40)
       
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        
        
        
        logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 160).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        NSLayoutConstraint.activate([
        stackView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 160),
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
    }
    
    
}



// MARK: SwiftUI

import SwiftUI


struct ViewControllerProvider: PreviewProvider {
   
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
       
        let viewController = AuthViewController()
       
        func makeUIViewController(context: UIViewControllerRepresentableContext<ViewControllerProvider.ContainerView>) ->  AuthViewController {
            return viewController
        }
        
    func updateUIViewController(_ uiViewController: ViewControllerProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ViewControllerProvider.ContainerView>) {
        
        }
    }
    
}
