//
//  TelaXViewController.swift
//  NavigationControllerSwift
//
//  Created by dev on 5/28/17.
//  Copyright © 2017 dev. All rights reserved.
//

import UIKit

class TelaXViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func abrirTelaVerde(_ sender: Any) {
        performSegue(withIdentifier: "TelaVerdeParaTelaXSegue", sender: sender)
    }
    

    @IBAction func abrirTelaVermelha(_ sender: Any) {
        performSegue(withIdentifier: "TelaXParaTelaVermelhaSegue", sender: sender)
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TelaXParaTelaVermelhaSegue" {
            let t = segue.destination as! TelaVermelhaViewController
            t.textoDoLabel = "Conteudo passado da tela X para a tela vermelha"
        } else if segue.identifier == "TelaVerdeParaTelaXSegue" {
            let t = segue.destination as! TelaVerdeViewController
            t.textoDoLabelY = "Este texto veio da tela X"
        }
        
    }

}
