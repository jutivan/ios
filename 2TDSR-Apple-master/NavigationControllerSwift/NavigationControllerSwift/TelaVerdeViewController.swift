//
//  TelaVerdeViewController.swift
//  NavigationControllerSwift
//
//  Created by dev on 5/28/17.
//  Copyright © 2017 dev. All rights reserved.
//

import UIKit

class TelaVerdeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        meuLabelY.text = textoDoLabelY
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var textoDoLabelY:String = ""
    @IBOutlet weak var meuLabelY: UILabel!

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
