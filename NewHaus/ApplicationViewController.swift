//
//  ApplicationViewController.swift
//  NewHaus
//
//  Created by Mike Martin on 11/5/16.
//  Copyright © 2016 Mike Martin. All rights reserved.
//

import UIKit

class ApplicationViewController: UIViewController {
    
    // MARK: Outlets
    
    @IBOutlet weak var appButton: UIButton!
    @IBOutlet weak var papersButton: UIButton!
    @IBOutlet weak var payButton: UIButton!
    @IBOutlet weak var communityName: UILabel!
    
    // MARK: Outlets
    override func viewDidLoad() {
        super.viewDidLoad()
        self.communityName.text = globalCommunity!.name
    }
    
    
}
