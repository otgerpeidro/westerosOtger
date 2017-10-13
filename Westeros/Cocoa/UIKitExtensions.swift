//
//  UIKitExtensions.swift
//  Westeros
//
//  Created by Otger Peidro on 13/10/2017.
//  Copyright © 2017 OtgerPeidro. All rights reserved.
//

import UIKit

extension UIViewController{
    
    func wrappedInNavigation() -> UINavigationController{
        let nav = UINavigationController(rootViewController: self)
        return nav
    }
}
