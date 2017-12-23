//
//  ArrayTableViewController.swift
//  Westeros
//
//  Created by Otger Peidro on 18/10/2017.
//  Copyright © 2017 OtgerPeidro. All rights reserved.
//

import UIKit

class ArrayTableViewController<Element>: UITableViewController {

    let dataSource : ArrayDataSource<Element>
    let delegate   : ArrayTableViewDelegate<Element>
    
    
    init(dataSource: ArrayDataSource<Element>, delegate: ArrayTableViewDelegate<Element>,  title: String, style: UITableViewStyle) {
        
        self.dataSource = dataSource
        self.delegate = delegate
        super.init(style: style)
        self.title = title
        
        tableView.dataSource = self.dataSource
        tableView.delegate = self.delegate
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
