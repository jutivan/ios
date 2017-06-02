//
//  TelaAzulViewController.swift
//  TreinoPS
//
//  Created by dev on 5/28/17.
//  Copyright © 2017 dev. All rights reserved.
//

import UIKit

class TelaAzulViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        meuLabel.text = textoDoLabel
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var textoDoLabel = ""
    @IBOutlet weak var meuLabel: UILabel!
    
    
    @IBOutlet weak var txtTelaWeb: UITextField!

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "telaAzulParaTelaWebSegue" {
            let t = segue.destination as! TelaWebViewController
            t.textoTelaAzul = txtTelaWeb.text!
        }
    }
    

}
