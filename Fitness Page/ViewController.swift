//
//  ViewController.swift
//  Fitness Page
//
//  Created by Aastha Khare on 7/24/18.
//  Copyright © 2018 Aastha Khare. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource
{

    @IBOutlet weak var gif: UIImageView!
    
    var routinesArray = [UIImage(named: "Cardio Routine"), UIImage(named: "Morning Routine")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // An animated UIImage
        let Gif = UIImage.gif(name: "dribble_2")
        
        // A UIImageView with async loading
        
        gif.loadGif(name: "dribble_2")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return routinesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RoutinesCollectionViewCell", for: indexPath) as! RoutinesCollectionViewCell
        
        cell.routinesImage.image = routinesArray[indexPath.row]
        
        return cell
    }


}

