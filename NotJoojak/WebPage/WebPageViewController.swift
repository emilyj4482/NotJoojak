//
//  WebPageViewController.swift
//  NotJoojak
//
//  Created by EMILY on 22/10/2024.
//

import UIKit
import WebKit

class WebPageViewController: UIViewController {
    
    let url: String = "https://github.com/emilyj4482"

    @IBOutlet var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadWebView(to: url)
    }
    
    private func loadWebView(to url: String) {
        guard let url = URL(string: url) else { return }
        webView.load(URLRequest(url: url))
    }
    
    @IBAction func closeButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
