//
//  LoginViewController.swift
//  Chattex
//
//  Created by Рамиль Мухаррямов on 07.02.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    let welcomLabel = UILabel(text: "Welcome back!", font: .avenir26())
    let loginWithLabel = UILabel(text: "Login with")
    let orLabel = UILabel(text: "or")
    let emailLabel = UILabel(text: "Email")
    let passwordLabel = UILabel(text: "password")
    
    
    
    
    override func viewDidLoad() {
        super .viewDidLoad()
        view.backgroundColor = .mainWhite()
    }
    
}





import SwiftUI

    struct LoginControllerProvider: PreviewProvider {
   
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
       
        let viewController = LoginViewController()
       
        func makeUIViewController(context: UIViewControllerRepresentableContext<LoginControllerProvider.ContainerView>) ->  LoginViewController {
            return viewController
        }
        
    func updateUIViewController(_ uiViewController: LoginControllerProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<LoginControllerProvider.ContainerView>) {
        
        }
    }
}

