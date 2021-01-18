//
//  GFAlert.swift
//  GitFollowers
//
//  Created by boehrer nicolas on 11/01/2021.
//

import UIKit

class GFAlert {
    let title: String
    let message: String
    
    init(title: String, message: String) {
        self.title = title
        self.message=message
    }
    
    func showAlert(on vc: UIViewController){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        action.setValue(UIColor.systemGreen, forKey: "TitleTextColor")
        alert.addAction(action)
        
        vc.present(alert, animated: true, completion: nil)
        
    }
}
