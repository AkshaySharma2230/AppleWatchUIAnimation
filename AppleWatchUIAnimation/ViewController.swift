//
//  ViewController.swift
//  AppleWatchUIAnimation
//
//  Created by apple on 01/11/21.
//

import UIKit


let cellCount = ROWS * COLS

class ViewController: UIViewController {
    
    //MARK:- Outlets
    @IBOutlet weak var homeScreenCollectionView: UICollectionView!{
        didSet {
            homeScreenCollectionView.dataSource = self
        }
    }
    
    
    //MARK:- ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //homeScreenCollectionView.isScrollEnabled = true
        self.homeScreenCollectionView.collectionViewLayout = CollectionViewLayout()
        homeScreenCollectionView.register(UINib(nibName: "HomeScreenUICollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HomeScreenUICollectionViewCell")
    }
    
}


//MARK:- UIcollectionView Delegate & DataSource Method
extension ViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeScreenUICollectionViewCell", for: indexPath)
            as! HomeScreenUICollectionViewCell
        return cell
    }
}
