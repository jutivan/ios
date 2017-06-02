//
//  Tela3ViewController.swift
//  NavigationControllerSwift
//
//  Created by dev on 5/28/17.
//  Copyright © 2017 dev. All rights reserved.
//

import UIKit

class Tela3ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        meuLabel3.text = textoDoLabel3
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var textoDoLabel3:String = ""
    
    @IBOutlet weak var meuLabel3: UILabel!

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
