//
//  SeasonViewController.swift
//  Westeros
//
//  Created by Otger Peidro on 03/12/2017.
//  Copyright © 2017 OtgerPeidro. All rights reserved.
//

import UIKit

class SeasonViewController: UIViewController {

    @IBOutlet weak var seasonNameView: UILabel!
    
    @IBOutlet weak var seasonImageView: UIImageView!
    @IBOutlet weak var premieredDateView: UILabel!
    

    let model : Season
    
    init(model: Season){
        self.model = model
        super.init(nibName: nil, bundle: nil)
        title = model.name
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI(){
        // Creamos un botón a la barra del navigationController
       /* let wiki = UIBarButtonItem(title: "Wiki",
                                   style: .plain,
                                   target: self,
                                   action: #selector(displayWiki))*/
        
        let episodes = UIBarButtonItem(title: "Episodes",
                                      style: .plain,
                                      target: self,
                                      action: #selector(displayEpisodes))
        
        // Añadimos el botón
        //navigationItem.rightBarButtonItems = [episodes, wiki]
        navigationItem.rightBarButtonItems = [episodes]
    }
    
    @objc func displayEpisodes(){
        
        //Creamos el membersVC
        let episodesVC = EpisodesViewController(model: model.sortedEpisodes())
        
        // Lo pusheamos
        navigationController?.pushViewController(episodesVC, animated: true)
    }
    
    
   /* @objc func displayWiki(){
        
        // Creamos un WikiVC
        let wikiVC = WikiViewController(model: model)
        
        // Lo cargamos en el navigator
        navigationController?.pushViewController(wikiVC, animated: true)
    }*/
    
    
    func syncViewWithModel(){
        // model -> view
    
        seasonNameView.text = "Season \(model.name)"
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        premieredDateView.text  = "Premiered Date \(formatter.string(from: model.premieredDate))"
        seasonImageView.image = model.image
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupUI()
        
        syncViewWithModel()
    }
    
}
