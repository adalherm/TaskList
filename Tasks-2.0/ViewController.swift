//
//  ViewController.swift
//  Tasks-2.0
//
//  Created by Adalbert Hermann on 19/10/2021.
//

import UIKit

var task = Task(text: "")

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(didGetNotification(_:)), name: Notification.Name("text"), object: nil)


        if table.numberOfRows(inSection: 0) == 0 {
            print("Alert")
        }
    }

    @objc func didGetNotification(_ notification: Notification) {
        let text = notification.object as! String?
        //label.text = text
    }

    @IBAction func addNewTask() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "details") as! DetailsViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell")!
        cell.textLabel?.text = task.text
        return cell
    }
}

