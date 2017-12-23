//
//  Repository.swift
//  Westeros
//
//  Created by Otger Peidro on 13/10/2017.
//  Copyright © 2017 OtgerPeidro. All rights reserved.
//

import Foundation


final class Repository{
 
    static let local = LocalFactory()
    
}

protocol HouseFactory {
    
    typealias Filter = (House)->Bool
    
    var houses : [House] {get}
    func house(named: String)->House?
    func houses(filteredBy: Filter) -> [House]
}

protocol SeasonFactory {
    
    typealias Filters = (Season)->Bool
    
    var seasons : [Season] {get}
    func season(named: String)->Season?
    func seasons(filteredBy: Filters)-> [Season]
}


final class LocalFactory : HouseFactory, SeasonFactory{
    
    func seasons(filteredBy: Filters) -> [Season] {
        let filtered = Repository.local.seasons.filter(filteredBy)
        return filtered
    }
    
    var seasons: [Season]{
        get{
            // Aquí es donde te creas tus temporadas
            let season1URL = URL(string: "https://awoiaf.westeros.org/index.php/Game_of_Thrones_-_Season_1")!
            let season2URL = URL(string: "https://awoiaf.westeros.org/index.php/Game_of_Thrones_-_Season_2")!
            let season3URL = URL(string: "https://awoiaf.westeros.org/index.php/Game_of_Thrones_-_Season_3")!
            let season4URL = URL(string: "https://awoiaf.westeros.org/index.php/Game_of_Thrones_-_Season_4")!
            let season5URL = URL(string: "https://awoiaf.westeros.org/index.php/Game_of_Thrones_-_Season_5")!
            let season6URL = URL(string: "https://awoiaf.westeros.org/index.php/Game_of_Thrones_-_Season_6")!
            let season7URL = URL(string: "https://awoiaf.westeros.org/index.php/Game_of_Thrones_-_Season_7")!
            
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy/MM/dd"
            let someDateTime1 = formatter.date(from: "2011/04/11")
            let season1 = Season(name: "A Song of Ice and Fire", numEpisodes: 10, premieredDate: someDateTime1!, image: #imageLiteral(resourceName: "Game_of_Thrones_Season_1.jpg"), url: season1URL)
            let someDateTime2 = formatter.date(from: "2012/04/01")
            let season2 = Season(name: "A Clash of Kings", numEpisodes: 10, premieredDate: someDateTime2!, image: #imageLiteral(resourceName: "Game_of_Thrones_Season_2.jpg"), url: season2URL)
            let someDateTime3 = formatter.date(from: "2013/03/31")
            let season3 = Season(name: "A Storm of Swords", numEpisodes: 10, premieredDate: someDateTime3!, image: #imageLiteral(resourceName: "Game_of_Thrones_Season_3.jpg"), url: season3URL)
            let someDateTime4 = formatter.date(from: "2014/04/06")
            let season4 = Season(name: "A Feast for Crows", numEpisodes: 10, premieredDate: someDateTime4!, image: #imageLiteral(resourceName: "Game_of_Thrones_Season_4.jpg"), url: season4URL)
            let someDateTime5 = formatter.date(from: "2015/04/12")
            let season5 = Season(name: "A Dance with Dragons", numEpisodes: 10, premieredDate: someDateTime5!, image: #imageLiteral(resourceName: "Game_of_Thrones_Season_5.png"), url: season5URL)
            let someDateTime6 = formatter.date(from: "2016/04/24")
            let season6 = Season(name: "Game of Thrones (Season 6)", numEpisodes: 10, premieredDate: someDateTime6!, image: #imageLiteral(resourceName: "Game_of_Thrones_Season_6.jpeg"), url: season6URL)
            let someDateTime7 = formatter.date(from: "2017/07/16")
            let season7 = Season(name: "Winter is Here", numEpisodes: 7, premieredDate: someDateTime7!, image: #imageLiteral(resourceName: "Game_of_Thrones_Season_7.png"), url: season7URL)
            
            let airDateEpisode1Season1 = formatter.date(from: "2011/04/17")
            let episode1Season1 = Episode(title: "Winter Is Coming", airDate: airDateEpisode1Season1!, season: season1)
            let airDateEpisode2Season1 = formatter.date(from: "2011/04/24")
            let episode2Season1 = Episode(title: "The Kingsroad", airDate: airDateEpisode2Season1!, season: season1)
            let airDateEpisode3Season1 = formatter.date(from: "2011/05/01")
            let episode3Season1 = Episode(title: "Lord Snow", airDate: airDateEpisode3Season1!, season: season1)
            let airDateEpisode4Season1 = formatter.date(from: "2011/05/08")
            let episode4Season1 = Episode(title: "Cripples, Bastards, and Broken Things", airDate: airDateEpisode4Season1!, season: season1)
            let airDateEpisode5Season1 = formatter.date(from: "2011/05/15")
            let episode5Season1 = Episode(title: "The Wolf and the Lion", airDate: airDateEpisode5Season1!, season: season1)
            let airDateEpisode6Season1 = formatter.date(from: "2011/05/22")
            let episode6Season1 = Episode(title: "A Golden Crown", airDate: airDateEpisode6Season1!, season: season1)
            let airDateEpisode7Season1 = formatter.date(from: "2011/05/29")
            let episode7Season1 = Episode(title: "You Win or You Die", airDate: airDateEpisode7Season1!, season: season1)
            let airDateEpisode8Season1 = formatter.date(from: "2011/06/05")
            let episode8Season1 = Episode(title: "The Pointy End", airDate: airDateEpisode8Season1!, season: season1)
            let airDateEpisode9Season1 = formatter.date(from: "2011/06/12")
            let episode9Season1 = Episode(title: "Baelor", airDate: airDateEpisode9Season1!, season: season1)
            let airDateEpisode10Season1 = formatter.date(from: "2011/06/19")
            let episode10Season1 = Episode(title: "Fire and Blood", airDate: airDateEpisode10Season1!, season: season1)
            
            let airDateEpisode1Season2 = formatter.date(from: "2012/04/01")
            let episode1Season2 = Episode(title: "The North Remembers", airDate: airDateEpisode1Season2!, season: season2)
            let airDateEpisode2Season2 = formatter.date(from: "2012/04/08")
            let episode2Season2 = Episode(title: "The Night Lands", airDate: airDateEpisode2Season2!, season: season2)
            let airDateEpisode3Season2 = formatter.date(from: "2012/04/15")
            let episode3Season2 = Episode(title: "What Is Dead May Never Die", airDate: airDateEpisode3Season2!, season: season2)
            let airDateEpisode4Season2 = formatter.date(from: "2012/04/22")
            let episode4Season2 = Episode(title: "Garden of Bones", airDate: airDateEpisode4Season2!, season: season2)
            let airDateEpisode5Season2 = formatter.date(from: "2012/04/29")
            let episode5Season2 = Episode(title: "The Ghost of Harrenhal", airDate: airDateEpisode5Season2!, season: season2)
            let airDateEpisode6Season2 = formatter.date(from: "2012/05/06")
            let episode6Season2 = Episode(title: "The Old Gods and the New", airDate: airDateEpisode6Season2!, season: season2)
            let airDateEpisode7Season2 = formatter.date(from: "2012/05/13")
            let episode7Season2 = Episode(title: "A Man Without Honor", airDate: airDateEpisode7Season2!, season: season2)
            let airDateEpisode8Season2 = formatter.date(from: "2012/05/20")
            let episode8Season2 = Episode(title: "The Prince of Winterfell", airDate: airDateEpisode8Season2!, season: season2)
            let airDateEpisode9Season2 = formatter.date(from: "2012/05/27")
            let episode9Season2 = Episode(title: "Blackwater", airDate: airDateEpisode9Season2!, season: season2)
            let airDateEpisode10Season2 = formatter.date(from: "2012/06/03")
            let episode10Season2 = Episode(title: "Valar Morghulis", airDate: airDateEpisode10Season2!, season: season2)
            
            let airDateEpisode1Season3 = formatter.date(from: "2013/03/31")
            let episode1Season3 = Episode(title: "Valar Dohaeris", airDate: airDateEpisode1Season3!, season: season3)
            let airDateEpisode2Season3 = formatter.date(from: "2013/04/07")
            let episode2Season3 = Episode(title: "Dark Wings, Dark Words", airDate: airDateEpisode2Season3!, season: season3)
            let airDateEpisode3Season3 = formatter.date(from: "2013/04/14")
            let episode3Season3 = Episode(title: "Walk of Punishment", airDate: airDateEpisode3Season3!, season: season3)
            let airDateEpisode4Season3 = formatter.date(from: "2013/04/21")
            let episode4Season3 = Episode(title: "And Now His Watch Is Ended", airDate: airDateEpisode4Season3!, season: season3)
            let airDateEpisode5Season3 = formatter.date(from: "2013/04/28")
            let episode5Season3 = Episode(title: "Kissed by Fire", airDate: airDateEpisode5Season3!, season: season3)
            let airDateEpisode6Season3 = formatter.date(from: "2013/05/05")
            let episode6Season3 = Episode(title: "The Climb", airDate: airDateEpisode6Season3!, season: season3)
            let airDateEpisode7Season3 = formatter.date(from: "2013/05/12")
            let episode7Season3 = Episode(title: "The Bear and the Maiden Fair", airDate: airDateEpisode7Season3!, season: season3)
            let airDateEpisode8Season3 = formatter.date(from: "2013/05/19")
            let episode8Season3 = Episode(title: "Second Sons", airDate: airDateEpisode8Season3!, season: season3)
            let airDateEpisode9Season3 = formatter.date(from: "2013/06/02")
            let episode9Season3 = Episode(title: "The Rains of Castamere", airDate: airDateEpisode9Season3!, season: season3)
            let airDateEpisode10Season3 = formatter.date(from: "2013/06/09")
            let episode10Season3 = Episode(title: "Mhysa", airDate: airDateEpisode10Season3!, season: season3)
            
            let airDateEpisode1Season4 = formatter.date(from: "2014/04/06")
            let episode1Season4 = Episode(title: "Two Swords", airDate: airDateEpisode1Season4!, season: season4)
            let airDateEpisode2Season4 = formatter.date(from: "2014/04/13")
            let episode2Season4 = Episode(title: "The Lion and the Rose", airDate: airDateEpisode2Season4!, season: season4)
            let airDateEpisode3Season4 = formatter.date(from: "2014/04/20")
            let episode3Season4 = Episode(title: "Breaker of Chains", airDate: airDateEpisode3Season4!, season: season4)
            let airDateEpisode4Season4 = formatter.date(from: "2014/04/27")
            let episode4Season4 = Episode(title: "Oathkeeper", airDate: airDateEpisode4Season4!, season: season4)
            let airDateEpisode5Season4 = formatter.date(from: "2014/05/04")
            let episode5Season4 = Episode(title: "First of His Name", airDate: airDateEpisode5Season4!, season: season4)
            let airDateEpisode6Season4 = formatter.date(from: "2014/05/11")
            let episode6Season4 = Episode(title: "The Laws of Gods and Men", airDate: airDateEpisode6Season4!, season: season4)
            let airDateEpisode7Season4 = formatter.date(from: "2014/05/18")
            let episode7Season4 = Episode(title: "Mockingbird", airDate: airDateEpisode7Season4!, season: season4)
            let airDateEpisode8Season4 = formatter.date(from: "2014/06/01")
            let episode8Season4 = Episode(title: "The Mountain and the Viper", airDate: airDateEpisode8Season4!, season: season4)
            let airDateEpisode9Season4 = formatter.date(from: "2014/06/08")
            let episode9Season4 = Episode(title: "The Watchers on the Wall", airDate: airDateEpisode9Season4!, season: season4)
            let airDateEpisode10Season4 = formatter.date(from: "2014/06/15")
            let episode10Season4 = Episode(title: "The Children", airDate: airDateEpisode10Season4!, season: season4)
            
            let airDateEpisode1Season5 = formatter.date(from: "2015/04/12")
            let episode1Season5 = Episode(title: "The Wars to Come", airDate: airDateEpisode1Season5!, season: season5)
            let airDateEpisode2Season5 = formatter.date(from: "2015/04/19")
            let episode2Season5 = Episode(title: "he House of Black and White", airDate: airDateEpisode2Season5!, season: season5)
            let airDateEpisode3Season5 = formatter.date(from: "2015/04/26")
            let episode3Season5 = Episode(title: "High Sparrow", airDate: airDateEpisode3Season5!, season: season5)
            let airDateEpisode4Season5 = formatter.date(from: "2015/05/03")
            let episode4Season5 = Episode(title: "Sons of the Harpy", airDate: airDateEpisode4Season5!, season: season5)
            let airDateEpisode5Season5 = formatter.date(from: "2015/05/10")
            let episode5Season5 = Episode(title: "Kill the Boy", airDate: airDateEpisode5Season5!, season: season5)
            let airDateEpisode6Season5 = formatter.date(from: "2015/05/17")
            let episode6Season5 = Episode(title: "Unbowed, Unbent, Unbroken", airDate: airDateEpisode6Season5!, season: season5)
            let airDateEpisode7Season5 = formatter.date(from: "2015/05/24")
            let episode7Season5 = Episode(title: "The Gift", airDate: airDateEpisode7Season5!, season: season5)
            let airDateEpisode8Season5 = formatter.date(from: "2015/05/31")
            let episode8Season5 = Episode(title: "Hardhome", airDate: airDateEpisode8Season5!, season: season5)
            let airDateEpisode9Season5 = formatter.date(from: "2015/06/07")
            let episode9Season5 = Episode(title: "The Dance of Dragons", airDate: airDateEpisode9Season5!, season: season5)
            let airDateEpisode10Season5 = formatter.date(from: "2015/06/14")
            let episode10Season5 = Episode(title: "Mother's Mercy", airDate: airDateEpisode10Season5!, season: season5)
            
            let airDateEpisode1Season6 = formatter.date(from: "2016/04/24")
            let episode1Season6 = Episode(title: "The Red Woman", airDate: airDateEpisode1Season6!, season: season6)
            let airDateEpisode2Season6 = formatter.date(from: "2016/05/01")
            let episode2Season6 = Episode(title: "Home", airDate: airDateEpisode2Season6!, season: season6)
            let airDateEpisode3Season6 = formatter.date(from: "2016/05/08")
            let episode3Season6 = Episode(title: "Oathbreaker", airDate: airDateEpisode3Season6!, season: season6)
            let airDateEpisode4Season6 = formatter.date(from: "2016/05/15")
            let episode4Season6 = Episode(title: "Book of the Stranger", airDate: airDateEpisode4Season6!, season: season6)
            let airDateEpisode5Season6 = formatter.date(from: "2016/05/22")
            let episode5Season6 = Episode(title: "The Door", airDate: airDateEpisode5Season6!, season: season6)
            let airDateEpisode6Season6 = formatter.date(from: "2016/05/29")
            let episode6Season6 = Episode(title: "Blood of My Blood", airDate: airDateEpisode6Season6!, season: season6)
            let airDateEpisode7Season6 = formatter.date(from: "2016/06/05")
            let episode7Season6 = Episode(title: "The Broken Man", airDate: airDateEpisode7Season6!, season: season6)
            let airDateEpisode8Season6 = formatter.date(from: "2016/06/12")
            let episode8Season6 = Episode(title: "No One", airDate: airDateEpisode8Season6!, season: season6)
            let airDateEpisode9Season6 = formatter.date(from: "2016/06/19")
            let episode9Season6 = Episode(title: "Battle of the Bastards", airDate: airDateEpisode9Season6!, season: season6)
            let airDateEpisode10Season6 = formatter.date(from: "2016/06/26")
            let episode10Season6 = Episode(title: "The Winds of Winter", airDate: airDateEpisode10Season6!, season: season6)
            
            let airDateEpisode1Season7 = formatter.date(from: "2017/07/16")
            let episode1Season7 = Episode(title: "Dragonstone", airDate: airDateEpisode1Season7!, season: season7)
            let airDateEpisode2Season7 = formatter.date(from: "2017/07/23")
            let episode2Season7 = Episode(title: "Stormborn", airDate: airDateEpisode2Season7!, season: season7)
            let airDateEpisode3Season7 = formatter.date(from: "2017/07/30")
            let episode3Season7 = Episode(title: "The Queen's Justice", airDate: airDateEpisode3Season7!, season: season7)
            let airDateEpisode4Season7 = formatter.date(from: "2017/08/06")
            let episode4Season7 = Episode(title: "The Spoils of War", airDate: airDateEpisode4Season7!, season: season7)
            let airDateEpisode5Season7 = formatter.date(from: "2017/08/13")
            let episode5Season7 = Episode(title: "Eastwatch", airDate: airDateEpisode5Season7!, season: season7)
            let airDateEpisode6Season7 = formatter.date(from: "2017/08/20")
            let episode6Season7 = Episode(title: "Beyond the Wall", airDate: airDateEpisode6Season7!, season: season7)
            let airDateEpisode7Season7 = formatter.date(from: "2017/08/27")
            let episode7Season7 = Episode(title: "The Dragon and the Wolf", airDate: airDateEpisode7Season7!, season: season7)
            
            // Añadir los episodios a las temporadas
            season1.add(episode: episode1Season1)
            season1.add(episode: episode2Season1)
            season1.add(episode: episode3Season1)
            season1.add(episode: episode4Season1)
            season1.add(episode: episode5Season1)
            season1.add(episode: episode6Season1)
            season1.add(episode: episode7Season1)
            season1.add(episode: episode8Season1)
            season1.add(episode: episode9Season1)
            season1.add(episode: episode10Season1)
            
            season2.add(episode: episode1Season2)
            season2.add(episode: episode2Season2)
            season2.add(episode: episode3Season2)
            season2.add(episode: episode4Season2)
            season2.add(episode: episode5Season2)
            season2.add(episode: episode6Season2)
            season2.add(episode: episode7Season2)
            season2.add(episode: episode8Season2)
            season2.add(episode: episode9Season2)
            season2.add(episode: episode10Season2)
            
            season3.add(episode: episode1Season3)
            season3.add(episode: episode2Season3)
            season3.add(episode: episode3Season3)
            season3.add(episode: episode4Season3)
            season3.add(episode: episode5Season3)
            season3.add(episode: episode6Season3)
            season3.add(episode: episode7Season3)
            season3.add(episode: episode8Season3)
            season3.add(episode: episode9Season3)
            season3.add(episode: episode10Season3)
            
            season4.add(episode: episode1Season4)
            season4.add(episode: episode2Season4)
            season4.add(episode: episode3Season4)
            season4.add(episode: episode4Season4)
            season4.add(episode: episode5Season4)
            season4.add(episode: episode6Season4)
            season4.add(episode: episode7Season4)
            season4.add(episode: episode8Season4)
            season4.add(episode: episode9Season4)
            season4.add(episode: episode10Season4)
            
            season5.add(episode: episode1Season5)
            season5.add(episode: episode2Season5)
            season5.add(episode: episode3Season5)
            season5.add(episode: episode4Season5)
            season5.add(episode: episode5Season5)
            season5.add(episode: episode6Season5)
            season5.add(episode: episode7Season5)
            season5.add(episode: episode8Season5)
            season5.add(episode: episode9Season5)
            season5.add(episode: episode10Season5)
            
            season6.add(episode: episode1Season6)
            season6.add(episode: episode2Season6)
            season6.add(episode: episode3Season6)
            season6.add(episode: episode4Season6)
            season6.add(episode: episode5Season6)
            season6.add(episode: episode6Season6)
            season6.add(episode: episode7Season6)
            season6.add(episode: episode8Season6)
            season6.add(episode: episode9Season6)
            season6.add(episode: episode10Season6)
            
            season7.add(episode: episode1Season7)
            season7.add(episode: episode2Season7)
            season7.add(episode: episode3Season7)
            season7.add(episode: episode4Season7)
            season7.add(episode: episode5Season7)
            season7.add(episode: episode6Season7)
            season7.add(episode: episode7Season7)

            
            
            
            return [season1, season2, season3, season4, season5, season6, season7].sorted()
        }
    }
    

    
 
    func houses(filteredBy: Filter) -> [House] {
        let filtered = Repository.local.houses.filter(filteredBy)
        return filtered
    }
    
    var houses: [House]{
        get{
            // Aquí es donde te creas tus casas
            let starkSigil = Sigil(image: #imageLiteral(resourceName: "codeIsComing.png"), description: "Direwolf")
            let lannisterSigil = Sigil(image: #imageLiteral(resourceName: "lannister.jpg"), description: "Rampant Lion")
            let targaryenSigil = Sigil(image: #imageLiteral(resourceName: "targaryenSmall.jpg"), description: "Three headed dragon")
            
            let starkURL = URL(string: "https://awoiaf.westeros.org/index.php/House_Stark")!
            let lannisterURL = URL(string: "https://awoiaf.westeros.org/index.php/House_Lannister")!
            let targaryenURL = URL(string: "https://awoiaf.westeros.org/index.php/House_Targaryen")!
            
            let stark = House(name: "Stark",
                              sigil: starkSigil,
                              words: "Winter is coming!",
                              url:starkURL)
            let lannister = House(name: "Lannister",
                                  sigil: lannisterSigil,
                                  words: "Hear me roar!",
                                  url:lannisterURL)
            let targaryen = House(name: "Targaryen",
                                  sigil: targaryenSigil,
                                  words: "Fire & Blood",
                                  url:targaryenURL)
            
            let robb = Person(name: "Robb", alias: "The young wolf", house: stark)
            let arya = Person(name: "Arya", house: stark)
            let tyrion = Person(name: "Tyrion", alias: "The Imp", house: lannister)
            let jaime = Person(name: "Jaime", alias: "Kingslayer", house: lannister)
            let cersei = Person(name: "Cersei", house: lannister)
            let dani = Person(name: "Daenerys", alias: "Mother of dragons", house: targaryen)
            
            // Añadir los personajes a las casas
            stark.add(persons: robb, arya)
            lannister.add(persons: tyrion, jaime, cersei)
            targaryen.add(person: dani)
            
            return [stark, lannister, targaryen].sorted()
            
        }
    }
    
    func house(named: String) -> House? {
        
        let house = houses.filter{$0.name.uppercased() == named.uppercased()}.first
        return house
    }
    
    func season(named: String) -> Season? {
        let season = seasons.filter{$0.name.uppercased() == named.uppercased()}.first
        return season
    }
}

