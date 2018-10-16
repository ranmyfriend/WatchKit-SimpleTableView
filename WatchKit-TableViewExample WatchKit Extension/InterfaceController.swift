//
//  InterfaceController.swift
//  WatchKit-TableViewExample WatchKit Extension
//
//  Created by Ranjith Kumar on 10/17/18.
//  Copyright © 2018 DrawRect. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var tableview: WKInterfaceTable!
    private let tableDataSource = ["One","Two","Three","Four","Five","Six","Seven"]

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        loadTableview()
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    private func loadTableview() {

        tableview.setNumberOfRows(tableDataSource.count, withRowType: "RowController")

        for (index,data) in tableDataSource.enumerated() {
            if let rowController = tableview.rowController(at: index) as? RowController {
                rowController.rowLabel.setText(data)
            }
        }
    }

    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        pushController(withName: "DetailInterfaceController", context: tableDataSource[rowIndex])
    }

}
