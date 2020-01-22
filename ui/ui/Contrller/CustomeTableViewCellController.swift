//
//  CustomeTableViewCell.swift
//  ui
//
//  Created by Imran Hossain on 19/1/20.
//  Copyright © 2020 Imran Hossain. All rights reserved.
//

import UIKit

protocol ButtonPressOnCellDelegate: AnyObject {
    func FavorughtButtonPressOnCell(index: Int)
    func ShareButtonPressOnCell(index: Int)
}

class CustomeTableViewCellController: UITableViewCell {
    
   
    @IBOutlet weak var quoteIcon: UIImageView!
    @IBOutlet weak var quoteBackground: UIView!
    
    @IBOutlet weak var quoteText: UILabel!
    @IBOutlet weak var quoteAuthor: UILabel!
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var favouriteButton: UIButton!
    
    weak var delegate : ButtonPressOnCellDelegate?
    var index: IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        quoteBackground.layer.cornerRadius = 10
        
        // Initialization code
    }
    @IBAction func onFavourightButtonPress(_ sender: UIButton) {
        delegate?.FavorughtButtonPressOnCell(index: index!.row)
    }
    
    @IBAction func onShareButtonPress(_ sender: UIButton) {
        delegate?.ShareButtonPressOnCell(index: index!.row)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
