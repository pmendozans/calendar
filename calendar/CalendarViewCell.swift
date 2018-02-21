//
//  CalendarViewCell.swift
//  calendar
//
//  Created by Pablo Ruiz on 2/20/18.
//  Copyright © 2018 nearsoft. All rights reserved.
//

import UIKit

class CalendarViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    var dayLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setValue(dayNumber: Int) {
        dayLabel.text = "\(dayNumber)"
    }
    
    private func setupLabel() {
        addSubview(dayLabel)
        dayLabel.textAlignment = .center
        dayLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        dayLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        dayLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        dayLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        dayLabel.backgroundColor = UIColor.lightGray
        dayLabel.clipsToBounds = true
        dayLabel.layer.cornerRadius = 20
    }
}
