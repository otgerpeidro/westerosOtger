//
//  MembersViewController.swift
//  Westeros
//
//  Created by Otger Peidro on 16/10/2017.
//  Copyright © 2017 OtgerPeidro. All rights reserved.
//

import UIKit

class MembersViewController: UITableViewController {
        
    let model : [Person]
    
    init(model: [Person]){
        self.model = model
        super.init(nibName: nil, bundle: nil)
        
        title = "Members"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellID = "MemberCell"
        // Descubrir cuala es la casa que tenemos que mostrar
        let person = model[indexPath.row]
        
        // Crear una celda
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        
        if cell == nil{
            // La creo a pelo
            cell = UITableViewCell(style: .default, reuseIdentifier: cellID)
        }
        
        // Sincronizar House -> Cell
        cell?.textLabel?.text = person.fullName
        
        return cell!
    }
    
}
