//
//  AnnouncementTableViewCell.swift
//  weLearn
//
//  Created by Cris on 3/1/17.
//  Copyright © 2017 Victor Zhong. All rights reserved.
//

import UIKit
import  SnapKit

class AnnouncementTableViewCell: UITableViewCell {

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupToHierachy()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    func setupToHierachy() {
        self.contentView.addSubview(label)
    }
    
    func setupConstraints() {
        label.snp.makeConstraints { (lbl) in
            lbl.leading.trailing.equalToSuperview()
            lbl.centerY.equalToSuperview()
        }
    }
    
    lazy var label: UILabel = {
        let lbl = UILabel()
        return lbl
    }()

}