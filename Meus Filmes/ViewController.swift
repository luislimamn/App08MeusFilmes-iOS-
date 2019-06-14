//
//  ViewController.swift
//  Meus filmes teste
//
//  Created by Luis Lima on 11/06/2019
//  Copyright © 2019 Andr3ziim All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var filmes: [Filme] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme: Filme
        
        filme = Filme(titulo:"007 - Spectre", descricao: "descricao 01", imagem: #imageLiteral(resourceName: "filme1"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Star Wars", descricao: "descricao 02", imagem: #imageLiteral(resourceName: "filme2"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Impacto Mortal", descricao: "descricao 03", imagem: #imageLiteral(resourceName: "filme3"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Deadpool", descricao: "descricao 04", imagem: #imageLiteral(resourceName: "filme4"))
        filmes.append( filme )
        
        filme = Filme(titulo:"O Regresso", descricao: "descricao 05", imagem: #imageLiteral(resourceName: "filme5"))
        filmes.append( filme )
        
        filme = Filme(titulo:"A Herdeira", descricao: "descricao 06", imagem: #imageLiteral(resourceName: "filme6"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Caçadores de emoção", descricao: "descricao 07", imagem: #imageLiteral(resourceName: "filme7"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Regresso do mal", descricao: "descricao 08", imagem: #imageLiteral(resourceName: "filme8"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Tarzan", descricao: "descricao 09", imagem: #imageLiteral(resourceName: "filme9"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Hardcore", descricao: "descricao 10", imagem: #imageLiteral(resourceName: "filme10"))
        filmes.append( filme )
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let filme: Filme = filmes[ indexPath.row ]
        
        let celulaReuso = "celula"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath) as! FilmeCelula
        
        celula.filmeImageView.image = filme.imagem
        celula.tituloLabel.text = filme.titulo
        celula.descricaoLabel.text = filme.descricao
        
        /*//= 20 pouco arredondado
        celula.filmeImageView.layer.cornerRadius = 42
        celula.filmeImageView.clipsToBounds = true*/
        
        /*celula.textLabel?.text = filme.titulo
        celula.imageView?.image = filme.imagem*/
        
        return celula
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detalhesFilme"{
            if let indexPath = tableView.indexPathForSelectedRow{
                
                let filmeSelecionado = self.filmes[indexPath.row]
                let viewControllerDestino = segue.destination as! DetalhesFilmesViewController
                viewControllerDestino.filme = filmeSelecionado
            }
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

