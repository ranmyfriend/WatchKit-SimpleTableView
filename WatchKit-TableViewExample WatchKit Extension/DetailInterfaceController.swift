//
//  DetailInterfaceController.swift
//  WatchKit-TableViewExample WatchKit Extension
//
//  Created by Ranjith Kumar on 10/17/18.
//  Copyright © 2018 DrawRect. All rights reserved.
//

import Foundation
import WatchKit

class DetailInterfaceController: WKInterfaceController {

    @IBOutlet var detailLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        if let data = context as? String {
            detailLabel.setText(data)
        }
    }
    override func willActivate() {
        super.willActivate()
    }

    override func willDisappear() {
        super.willDisappear()
    }
}
