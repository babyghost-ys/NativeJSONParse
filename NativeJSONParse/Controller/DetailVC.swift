//
//  DetailViewController.swift
//  NativeJSONParse
//
//  Created by Peter Leung on 10/9/2018.
//  Copyright © 2018 Peter Leung. All rights reserved.
//

import UIKit
import WebKit

class DetailVC: UIViewController {
    
    var currentItem: NewsItem? = nil
    
    @IBOutlet weak var contentWebView: WKWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadContent()
    }
    
    func loadContent() {
        let contentString = currentItem?.newsContent?.rendered ?? ""
        contentWebView?.loadHTMLString(contentString, baseURL: URL(string: ""))
    }
}
