//
//  ViewController.swift
//  calendar
//
//  Created by Pablo Ruiz on 2/20/18.
//  Copyright © 2018 nearsoft. All rights reserved.
///Users/pmendoza/Documents/calendar/calendar/ViewController.swift

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var flowLayout: UICollectionViewFlowLayout!
    private var initialDate: Date!
    private var endDate: Date!
    private let cellIdentifier = "CalendarViewCell"
    private let headerIdentifier = "CalendarHeaderReusableView"
    //private var calendar

    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
    }
    
    func setupCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(CalendarViewCell.self, forCellWithReuseIdentifier: cellIdentifier)
        collectionView.register(CalendarHeaderReusableView.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerIdentifier)
    }
    
    func initDates() {
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "yyyy-MM-dd"
        initialDate = Date()
        endDate = dateFormater.date(from: "2018-07-28")
    }
}

extension ViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 31
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! CalendarViewCell
        cell.setValue(dayNumber: indexPath.row)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerIdentifier, for: indexPath) as! CalendarHeaderReusableView
        headerView.titleLabel.text = "DUMMY MONTH"
        return headerView
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: 40, height: 40)
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 40, height: 40)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets
    {
        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
}

