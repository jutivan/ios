//
//  TelaInicioViewController.swift
//  TreinoPS
//
//  Created by dev on 5/29/17.
//  Copyright © 2017 dev. All rights reserved.
//

import UIKit

class TelaInicioViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func resetarNavegacao(segue:UIStoryboardSegue){
        
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "telaInicioParaTelaAzulSegue" {
            let t = segue.destination as! TelaAzulViewController
            t.textoDoLabel = "Este texto veio da tela inicio"
        } else if segue.identifier == "telaInicioParaTelaVerdeSegue" {
            let t = segue.destination as! TelaVerdeViewController
            t.textoDoLabel = "Este texto veio da tela inicio"
        } else if segue.identifier == "telaInicioParaTelaVermelhaSegue" {
            let t = segue.destination as! TelaVermelhaViewController
            t.textoDoLabelTelaPrincipal = "Este texto veio da tela de inicio"
        }
    }
    

}
