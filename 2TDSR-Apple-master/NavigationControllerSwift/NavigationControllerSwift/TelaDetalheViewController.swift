//
//  TelaDetalheViewController.swift
//  NavigationControllerSwift
//
//  Created by dev on 5/28/17.
//  Copyright © 2017 dev. All rights reserved.
//

import UIKit

class TelaDetalheViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func irParaTela3(_ sender: Any) {
        performSegue(withIdentifier: "TelaDetalheParaTela3Segue", sender: sender)
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TelaDetalheParaTela3Segue" {
            let t = segue.destination as! Tela3ViewController
            t.textoDoLabel3 = "Produzido por Thiago Schetini"
        }
    }
    

}
