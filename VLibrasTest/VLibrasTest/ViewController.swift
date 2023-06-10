//
//  ViewController.swift
//  VLibrasTest
//
//  Created by Amanda Detofol on 10/06/23.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    let webView = WKWebView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.text = "Bom dia!"
        label.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(label)
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: self.view.topAnchor),
            label.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
        
        ])
        
        
        webView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(webView)
        
        NSLayoutConstraint.activate([
            webView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            webView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            webView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            webView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        
        ])
        
        let htmlString =
        """
        <body> <!-- Inicio do corpo da página --> ... <div vw class="enabled"><div vw-access-button class="active"></div><div vw-plugin-wrapper><div class="vw-plugin-top-wrapper"></div></div></div><script src="https://vlibras.gov.br/app/vlibras-plugin.js"></script><script>new window.VLibras.Widget('https://vlibras.gov.br/app');</script></body> <!-- Fim do corpo da página -->
        
        """
        webView.loadHTMLString(htmlString, baseURL: nil)
    }

}

