//
//  AboutViewController.swift
//  BullsEye
//
//  Created by warittha on 3/9/2562 BE.
//  Copyright © 2562 fillgoods. All rights reserved.
//

import WebKit
import UIKit


class AboutViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = Bundle.main.url(forResource: "BullsEye",
                                     withExtension: "html") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }

}
