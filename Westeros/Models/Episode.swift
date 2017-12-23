//
//  Episode.swift
//  Westeros
//
//  Created by Otger Peidro on 30/11/2017.
//  Copyright © 2017 OtgerPeidro. All rights reserved.
//

import Foundation


final class Episode{
    
    let title   : String
    let airDate : Date
    weak var season  : Season?
    
    init(title: String, airDate: Date, season: Season) {
        
        self.title = title
        self.airDate = airDate
        self.season = season
        
    }
}

extension Episode{
    var proxy : String{
        return "\(title) \(airDate) \(season!.name)"
    }
    var proxyForComparison : Date{
        get{
            return airDate
        }
    }
}

// MARK: - Hashable
extension Episode : Hashable{
    var hashValue: Int {
        get{
            return proxy.hashValue
        }
    }
}

// MARK: - Equatable
extension Episode : Equatable{
    static func ==(lhs: Episode, rhs: Episode) -> Bool {
        return lhs.proxy == rhs.proxy
    }
}

// MARK: - Comparable
extension Episode : Comparable{
    static func <(lhs: Episode, rhs: Episode) -> Bool {
        return lhs.proxyForComparison < rhs.proxyForComparison
    }
    
    
}
