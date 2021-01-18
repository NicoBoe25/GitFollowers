//
//  ViewController.swift
//  GitFollowers
//
//  Created by boehrer nicolas on 11/01/2021.
//

import UIKit

class SearchVC: UIViewController {

    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var callToActionButton: UIButton!
    
    var isUsernameEntered: Bool{
        return !usernameTextField.text!.isEmpty
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureTextField()
        configureButton()
        createDismissKeyboardGesture()

    }

    
    @IBAction func pushFollowerListVC(_ sender: Any) {
        guard isUsernameEntered else {
            let alert = GFAlert(title: "Empty username", message: "Please enter a username")
            alert.showAlert(on: self)
            return
        }
        //tout est ok, je vais afficher la liste
        
    }
    
    func configureTextField() {
        usernameTextField.delegate = self
        usernameTextField.layer.cornerRadius=20
        usernameTextField.layer.borderWidth=2.0
        usernameTextField.layer.borderColor=UIColor.systemTeal.cgColor
        usernameTextField.textColor=UIColor.systemRed
        usernameTextField.tintColor=UIColor.systemTeal
        usernameTextField.font=UIFont.preferredFont(forTextStyle: .title2)
        
    }
    func configureButton(){
        callToActionButton.layer.cornerRadius = 20
        callToActionButton.setTitleColor(.white, for: .normal)
        callToActionButton.backgroundColor = .systemGreen
        
    }
    
    func createDismissKeyboardGesture(){
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        view.addGestureRecognizer(tap)
        
    }
}

extension SearchVC: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        pushFollowerListVC()
        return true
    }
}
