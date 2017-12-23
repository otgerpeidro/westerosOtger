//
//  ArrayTableViewDelegate.swift
//  Westeros
//
//  Created by Otger Peidro on 18/10/2017.
//  Copyright © 2017 OtgerPeidro. All rights reserved.
//

import UIKit

final class ArrayTableViewDelegate<Element>: NSObject, UITableViewDelegate{
    typealias Elements = [Element]
    typealias ViewControllerMaker      = (Element) -> ()
    
    private let _model : Elements
    private let _viewControllerMaker : ViewControllerMaker
    
    init(model: Elements, viewControllerMaker: @escaping ViewControllerMaker){
        self._model = model
        self._viewControllerMaker = viewControllerMaker
        super.init()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Que pasa aqui dentro?
        let elt   = _model[indexPath.row]
        _viewControllerMaker(elt)
        
        
    }
}
