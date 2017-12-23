//
//  DataSources.swift
//  Westeros
//
//  Created by Otger Peidro on 18/10/2017.
//  Copyright © 2017 OtgerPeidro. All rights reserved.
//

import UIKit

final class DataSources{
    
    static func houseDataSource(model: [House]) -> ArrayDataSource<House>{
        
        return ArrayDataSource(model: model, cellMaker: { (house: House, tableView) -> UITableViewCell in
            
            let CellID = "House"
            var cell = tableView.dequeueReusableCell(withIdentifier: CellID)
            
            if cell == nil{
                cell = UITableViewCell(style: .subtitle, reuseIdentifier: CellID)
            }
            cell?.imageView?.image = house.sigil.image
            cell?.textLabel?.text = house.name
            cell?.detailTextLabel?.text = "\(house.count) members"
            return cell!
        })
    }
    
    static func personDataSource(model: [Person]) -> ArrayDataSource<Person>{
        
        return ArrayDataSource(model: model, cellMaker: { (person: Person, tableView) -> UITableViewCell in
            
            let CellID = "Person"
            var cell = tableView.dequeueReusableCell(withIdentifier: CellID)
            
            if cell == nil{
                cell = UITableViewCell(style: .default, reuseIdentifier: CellID)
            }

            cell?.textLabel?.text = person.fullName
            return cell!
        })
    }
    
    static func seasonDataSource(model: [Season]) -> ArrayDataSource<Season>{
        return ArrayDataSource(model: model, cellMaker: { (season: Season, tableView: UITableView) -> UITableViewCell in
            let cellID = "Season"
            var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
            if cell == nil{
                cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellID)
            }
            cell?.imageView?.image = season.image
            cell?.textLabel?.text = season.name
            cell?.detailTextLabel?.text = "\(season.count) episodes"
            return cell!
        })
    }
    
    static func episodeDataSource(model: [Episode]) -> ArrayDataSource<Episode>{
        
        return ArrayDataSource(model: model, cellMaker: { (episode: Episode, tableView) -> UITableViewCell in
            
            let CellID = "Episode"
            var cell = tableView.dequeueReusableCell(withIdentifier: CellID)
            
            if cell == nil{
                cell = UITableViewCell(style: .default, reuseIdentifier: CellID)
            }
            
            cell?.textLabel?.text = episode.title
            return cell!
        })
    }
    
}
