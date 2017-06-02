//
//  TelaAlunoViewController.swift
//  ProvaPSPronta
//
//  Created by dev on 6/2/17.
//  Copyright © 2017 dev. All rights reserved.
//

import UIKit

class TelaAlunoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        lblNota.text = "0"
        lblNomeNota.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet weak var txtNome: UITextField!
    
    @IBOutlet weak var lblNota: UILabel!
    @IBOutlet weak var stepperNota: UIStepper!
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        lblNota.text = "\(Int(stepperNota.value))"
    }
 
    @IBOutlet weak var lblNomeNota: UILabel!
    @IBAction func btnMostrarNomeNota(_ sender: Any) {
        lblNomeNota.text = "Minha nota eh " + lblNota.text! + " eu sou o " + txtNome.text!;
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
