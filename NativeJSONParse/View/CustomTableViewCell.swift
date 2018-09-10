//
//  CustomTableViewCell.swift
//  NativeJSONParse
//
//  Created by Peter Leung on 10/9/2018.
//  Copyright © 2018 Peter Leung. All rights reserved.
//

import UIKit
import Kingfisher

class CustomTableViewCell: UITableViewCell {
    
    //Identifer and the nib name from the xib file
    class var identifier: String { return String(describing: self) }
    class var nib: UINib { return UINib(nibName: identifier, bundle: nil) }
    
    //Outlets for the custom table view cell
    @IBOutlet weak var newsImageView: UIImageView?
    @IBOutlet weak var newsTitleLabel: UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    //MARK: Function to configure the cell
    func configureWithItem(_ item: NewsItem) {
        newsTitleLabel?.text = item.newsTitle?.rendered
        newsImageView?.kf.setImage(with: URL(string: item.imageUrl ?? ""))
    }
}
