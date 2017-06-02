//
//  ViewController.swift
//  SwiftWebView
//
//  Created by dev on 5/28/17.
//  Copyright © 2017 dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {
    
    let URL_PAGINA = "https://www.vive.com/us/"

    @IBOutlet weak var meuWebView: UIWebView!
    @IBOutlet weak var meuActivity: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // declarar o protocolo UIWebViewDelegate para a ViewController
        meuWebView.delegate = self
        
        meuActivity.startAnimating()
        meuActivity.hidesWhenStopped = true
        
        // criando uma URL
        let URL_OK = URL(string: URL_PAGINA)
        
        // criando a request
        let request = URLRequest(url: URL_OK!)
        
        // executando a request
        meuWebView.loadRequest(request)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        var msg:String
        msg = "Erro \(error.localizedDescription)"
        
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
        
        present(alerta, animated: true, completion: nil)
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        meuActivity.stopAnimating()
    }

}

