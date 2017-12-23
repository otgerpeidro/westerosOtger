//
//  EpisodesViewController.swift
//  Westeros
//
//  Created by Otger Peidro on 10/12/2017.
//  Copyright © 2017 OtgerPeidro. All rights reserved.
//

import UIKit

class EpisodesViewController: UITableViewController {
        
    let model : [Episode]
    
    init (model: [Episode]){
        self.model = model
        super.init(nibName: nil, bundle: nil)
        
        title = "Episodes"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return model.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "SeasonCell"
        // Descubir cual es la temporada que tenemos que mostrar
        let episode = model[indexPath.row]
        // Crear una celda
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        
        if cell == nil {
            // La creo a pelo
            cell = UITableViewCell(style: .default, reuseIdentifier: cellID)
        }
        // Sincronizar Season -> Cell
        cell?.textLabel?.text = episode.title
        
        return cell!
    }
}
