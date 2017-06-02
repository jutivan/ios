//
//  TelaVermelhaViewController.swift
//  TreinoPS
//
//  Created by dev on 5/28/17.
//  Copyright © 2017 dev. All rights reserved.
//

import UIKit

class TelaVermelhaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        labelTelaVerde.text = textoDoLabelTelaVerde
        labelTelaPrincipal.text = textoDoLabelTelaPrincipal
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var textoDoLabelTelaVerde = ""
    @IBOutlet weak var labelTelaVerde: UILabel!
    
    var textoDoLabelTelaPrincipal = ""
    @IBOutlet weak var labelTelaPrincipal: UILabel!

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
