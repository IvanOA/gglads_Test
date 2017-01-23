//
//  ViewController.swift
//  gg_Test
//
//  Created by Иван on 23.01.17.
//  Copyright © 2017 Иван. All rights reserved.
//

import UIKit


class ViewController: UITableViewController {
    var products: [String] = ["Section1", "Section2", "Section3"]
    var productName: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.products.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = products[indexPath.row]
        return cell
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "Details"{
            if let indexPath = self.tableView.indexPathForSelectedRow {
                
                let destVC: DetailViewController = segue.destinationViewController as! DetailViewController
                destVC.product = products[indexPath.row]
            }
        }
    }
}

