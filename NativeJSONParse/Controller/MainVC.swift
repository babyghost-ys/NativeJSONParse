//
//  ViewController.swift
//  NativeJSONParse
//
//  Created by Peter Leung on 10/9/2018.
//  Copyright © 2018 Peter Leung. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var newsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initTableView()
    }

    //MARK: Register the table view and start to assign the delegates
    func initTableView(){
        newsTableView?.register(CustomTableViewCell.nib, forCellReuseIdentifier: CustomTableViewCell.identifier)
        newsTableView?.delegate = self
        newsTableView?.dataSource = self
    }
}

extension MainVC: UITableViewDelegate {
    
}

//MARK: Main Table View's data source
extension MainVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell {
            return cell
        }
        return UITableViewCell()
    }
    
    
}
