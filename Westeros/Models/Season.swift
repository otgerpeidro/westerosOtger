//
//  Season.swift
//  Westeros
//
//  Created by Otger Peidro on 28/11/2017.
//  Copyright © 2017 OtgerPeidro. All rights reserved.
//

import UIKit


typealias numEpisodes = Int
typealias premieredDate = Date
typealias Episodes = Set<Episode>

final class Season{
    
    let name : String
    let numEpisodes : numEpisodes
    let premieredDate : premieredDate
    let image : UIImage
    let wikiURL : URL
    private var _episodes : Episodes
    
    init (name: String, numEpisodes : numEpisodes, premieredDate: premieredDate, image: UIImage, url: URL){
        
        (self.name, self.numEpisodes, self.premieredDate, self.image, self.wikiURL) = (name, numEpisodes, premieredDate, image, url)
        _episodes = Episodes()
        
    }
}

extension Season{
    var count : Int{
        return _episodes.count
    }
    func add(episode: Episode){
        guard episode.season?.name == self.name else {
            return
        }
        _episodes.insert(episode)
    }
    
    // Variadic version
    func add(episodes: Episode...){
        for episode in episodes{
            add(episode: episode)
        }
    }
    
    func add(episodesArray: [Episode]){
        for episode in episodesArray{
            add(episode: episode)
        }
    }
    
    // Sorted [Episode]
    func sortedEpisodes() -> [Episode]{
        return _episodes.sorted()
    }
    
}

extension Season{
    var proxyForEquality : String{
        get{
            return "\(name.uppercased())"
        }
    }
    var proxyForComparison : Date{
        get{
            return premieredDate
        }
    }
}

// MARK: - Equatable
extension Season : Equatable{
    static func ==(lhs: Season, rhs: Season) -> Bool {
        return lhs.proxyForEquality == rhs.proxyForEquality
    }
}

// MARK: - Hashable

extension Season : Hashable{
    var hashValue: Int {
        return proxyForEquality.hashValue
    }
}

// MARK: - Comparable
extension Season : Comparable{
    static func <(lhs: Season, rhs: Season) -> Bool {
        return lhs.proxyForComparison < rhs.proxyForComparison
    }    
}

// MART: - CustomStringConvertible
extension Season : CustomStringConvertible {
    var description: String {
        return "\(name)"
    }
}
