//
//  DetalhesFilmeViewController.swift
//  Meus Filmes
//
//  Created by Luis Lima on 14/06/2019.
//  Copyright © 2019 Andr3ziim. All rights reserved.
//

import Foundation
import UIKit

class DetalhesFilmesViewController: UIViewController {
    
    
    @IBOutlet weak var filmeImagem: UIImageView!
    @IBOutlet weak var filmeTitulo: UILabel!
    @IBOutlet weak var filmeDescricao: UILabel!
    
    var filme: Filme!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmeImagem.image = filme.imagem
        filmeTitulo.text = filme.titulo
        filmeDescricao.text = filme.descricao
        
    }
}
