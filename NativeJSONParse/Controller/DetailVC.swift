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
        let content = currentItem?.newsContent?.rendered ?? ""
        
        //Added some HTML code at the top to make sure it loads correctly
        let finalContentString = "<html><head><link rel='stylesheet' id='wpappbox-css' href='https://www.winandmac.com/wp-content/plugins/wp-appbox/css/styles.min.css?ver=3.4.6' type='text/css' media='screen'/><style type=\"text/css\">iframe {width:100%;height:auto}img {width:100%;height:auto}</style><meta name=\"viewport\" content=\"width=320px,user-scalable=no\" /><script type='text/javascript' src='https://platform.twitter.com/widgets.js'></script></head><body>\(content)</body></html>"
        
        contentWebView?.loadHTMLString(finalContentString, baseURL: URL(string: ""))
    }
}
