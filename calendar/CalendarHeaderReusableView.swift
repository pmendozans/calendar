//
//  CalendarHeaderReusableView.swift
//  calendar
//
//  Created by Pablo Ruiz on 2/20/18.
//  Copyright © 2018 nearsoft. All rights reserved.
//

import UIKit

class CalendarHeaderReusableView: UICollectionReusableView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupLabel()
    }
    
    var titleLabel: UILabel = {
        var label = UILabel()
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private func setupLabel() {
        addSubview(titleLabel)
        titleLabel.textAlignment = .center
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
}
