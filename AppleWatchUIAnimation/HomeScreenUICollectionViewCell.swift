//
//  HomeScreenUICollectionViewCell.swift
//  AppleWatchUIAnimation
//
//  Created by apple on 01/11/21.
//

import UIKit


class HomeScreenUICollectionViewCell: UICollectionViewCell {

    //MARK:- Outlets
    @IBOutlet weak var  cView: UIView!
    
    
    //MARK:- AwakeFromNib
    override func awakeFromNib() {
        super.awakeFromNib()
//        self.contentView.layer.cornerRadius = frame.width / 2.0
//        self.contentView.layer.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.9, alpha: 0.8).cgColor
        // Initialization code
    }

    //MARK:- Overrider function
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView.layer.cornerRadius = frame.width / 2.0
        self.contentView.layer.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.9, alpha: 0.8).cgColor
    }

    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }
    
}

