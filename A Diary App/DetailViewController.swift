//
//  DetailViewController.swift
//  A Diary App
//
//  Created by Arwin Oblea on 12/11/19.
//  Copyright © 2019 Arwin Oblea. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

  @IBOutlet weak var detailDescriptionLabel: UILabel!


  func configureView() {
    // Update the user interface for the detail item.
    if let detail = detailItem {
        if let label = detailDescriptionLabel {
            label.text = detail.description
        }
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    configureView()
  }

  var detailItem: NSDate? {
    didSet {
        // Update the view.
        configureView()
    }
  }


}

