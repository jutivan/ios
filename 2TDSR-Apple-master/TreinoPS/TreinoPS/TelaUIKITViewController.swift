//
//  TelaUIKITViewController.swift
//  TreinoPS
//
//  Created by dev on 5/30/17.
//  Copyright © 2017 dev. All rights reserved.
//

import UIKit

class TelaUIKITViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        lblKm.text = "7500"
        lblAno.text = "2017"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // segmented control de 3 posicoes
    @IBOutlet weak var meuSegmento: UISegmentedControl!
    @IBAction func indexChanged(_ sender: Any) {
        switch (meuSegmento.selectedSegmentIndex) {
        case 0:
            lblMensagens.text = "Carro escolhido!"
            print("Voce escolheu carro")
            break
        case 1:
            lblMensagens.text = "Moto escolhida!"
            print("Voce escolheu moto")
            break
        case 2:
            lblMensagens.text = "SUV escolhido!"
            print("Voce escolheu SUV")
            break
        default:
            break
        }
    }
    
    @IBOutlet weak var txtProprietario: UITextField!
    
    // pegando o valor do stepper (com IBOutlet) e passando para label 
    @IBOutlet weak var lblAno: UILabel!
    @IBOutlet weak var meuStepper: UIStepper!
    @IBAction func stepperValueChanged(_ sender: Any) {
        lblAno.text = "\(Int(meuStepper.value))"
    }
    
    // pegando o valor do slider (sem IBOutlet) e passando para label
    @IBOutlet weak var lblKm: UILabel!
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        lblKm.text = "\(Int(sender.value))"
    }
    
    // switch
    @IBOutlet weak var meuSwitch: UISwitch!
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        if(sender.isOn){
            lblMensagens.text = "Rastreamento ativado!"
        } else if (!sender.isOn) {
            lblMensagens.text = "Rastreamento desativado..."
        }
        print(Int(NSNumber(value:sender.isOn)))
    }
    
    
    @IBOutlet weak var lblRota: UILabel!

    @IBAction func trocarRota(_ sender: Any) {
        let alerta = UIAlertController(
            title: "Forma para receber a rota",
            message: "Faca sua escolha",
            preferredStyle: UIAlertControllerStyle.actionSheet
        )
        
        alerta.addAction(
            UIAlertAction(
                title: "SMS",
                style: UIAlertActionStyle.default,
                // trocando o texto do label Rota
                handler: {action in self.lblRota.text = action.title}
            )
        )
        
        alerta.addAction(
            UIAlertAction(
                title: "Email",
                style: UIAlertActionStyle.default,
                // trocando o texto do label Rota
                handler: {action in self.lblRota.text = action.title}
            )
        )
        
        alerta.addAction(
            UIAlertAction(
                title: "Cancelar",
                style: UIAlertActionStyle.cancel,
                // trocando o texto do label Rota
                handler: nil
            )
        )
        
        present(alerta, animated:true, completion:nil)
    }
    
    @IBOutlet weak var lblMensagens: UILabel!

    @IBAction func salvar(_ sender: Any) {
        var msg:String
        var tipo:String
        
        if meuSegmento.selectedSegmentIndex >= 0 {
            tipo = meuSegmento.titleForSegment(at: meuSegmento.selectedSegmentIndex)!
            msg = "Veiculo \(tipo) do ano \(lblAno.text!) salvo com sucesso!"
        } else {
            tipo = ""
            msg = "Antes de salvar escolha o tipo de veiculo"
        }
        
        let alerta = UIAlertController(
            title: "Atencao",
            message: msg,
            preferredStyle: UIAlertControllerStyle.alert
        )
        
        alerta.addAction(
            UIAlertAction(
                title: "OK",
                style: UIAlertActionStyle.default,
                handler: nil
            )
        )
        
        present(alerta, animated:true, completion:nil)
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
