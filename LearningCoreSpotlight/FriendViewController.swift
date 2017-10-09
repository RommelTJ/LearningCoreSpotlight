//
//  FriendViewController.swift
//  LearningCoreSpotlight
//
//  Created by Rommel Rico on 10/9/17.
//  Copyright © 2017 Rommel Rico. All rights reserved.
//

import UIKit

class FriendViewController: UIViewController {
    
    var person: Person!

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = person.name
        imageView.image = person.image
    }

}
