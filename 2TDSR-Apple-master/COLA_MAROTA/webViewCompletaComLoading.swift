//
//  TelaWebViewController.swift
//  TreinoPS
//
//  Created by dev on 5/29/17.
//  Copyright © 2017 dev. All rights reserved.
//

import UIKit

class TelaWebViewController: UIViewController, UIWebViewDelegate {
    
    let URL_PAGINA = "https://www.vive.com/us"

    override func viewDidLoad() {
        super.viewDidLoad()

        labelTextoTelaAzul.text = textoTelaAzul
        
        // iniciar animacao e web view delegate
        meuActivity.startAnimating()
        meuActivity.hidesWhenStopped = true
        meuWebview.delegate = self
        
        // criar request e abrir pagina no web view
        let URL_OK = URL(string: URL_PAGINA)
        let request = URLRequest(url: URL_OK!)
        meuWebview.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var textoTelaAzul:String = ""
    @IBOutlet weak var labelTextoTelaAzul: UILabel!

    @IBOutlet weak var meuWebview: UIWebView!
    
    @IBOutlet weak var meuActivity: UIActivityIndicatorView!
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        var msg:String
        msg = "Erro: \(error.localizedDescription)"
        
        let alerta = UIAlertController(
            title: "Aviso",
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
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        meuActivity.stopAnimating()
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
