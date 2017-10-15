//
//  HouseViewController.swift
//  Westeros
//
//  Created by Otger Peidro on 13/10/17.
//  Copyright © 2017 OtgerPeidro. All rights reserved.
//

import UIKit

class HouseViewController: UIViewController {

    @IBOutlet weak var houseNameView: UILabel!
    
    @IBOutlet weak var wordsTextView: UILabel!

    @IBOutlet weak var sigilImageView: UIImageView!
    
    
    let model : House
    
    init(model: House){
        self.model = model
        super.init(nibName: nil, bundle: nil)
        title = model.name
        
    }
    
    // Chapuza de los de Cupertina (relacionada con los nil)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI(){
        // Creamos un botón a la barra del navigationController
        let wiki = UIBarButtonItem(title: "Wiki",
                                   style: .plain,
                                   target: self,
                                   action: #selector(displayWiki))

        // Añadimos el botón
        navigationItem.rightBarButtonItem = wiki
        
    }
    
    @objc func displayWiki(){
        
        // Creamos un WikiVC
        let wikiVC = WikiViewController(model: model)
        
        // Lo cargamos en el navigator
        navigationController?.pushViewController(wikiVC, animated: true)
    }

    func syncViewWithModel(){
        // model -> view
        houseNameView.text = "House \(model.name)"
        sigilImageView.image = model.sigil.image
        wordsTextView.text = model.words
        
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupUI()
        
        syncViewWithModel()
    }
    
    
}
