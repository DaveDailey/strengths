//
//  ViewController.swift
//  StrenghtsHighlighter
//
//  Created by DAVID DAILEY on 3/12/17.
//  Copyright © 2017 davedailey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    var topFive = [Theme]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        let theme1 = Theme(name:"Restorative", description: "test")
        let theme2 = Theme(name: "Learner", description: "test")
        topFive+=[theme2, theme1]
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ThemeTableViewCell", for: indexPath) as? ThemeTableViewCell {
            let theme = topFive[indexPath.row]
            cell.updateUI(theme: theme)
            return UITableViewCell()
        } else {
            return UITableViewCell()
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topFive.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "TapCell", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TapCell" {
            let guest = segue.destination as! //creat new
            guest.postToView = sender as! Post
        }

}

