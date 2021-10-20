//
//  DetailsViewController.swift
//  Tasks-2.0
//
//  Created by Adalbert Hermann on 19/10/2021.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet var taskfield: UITextField!
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var category: UISegmentedControl!

    @IBOutlet var save: UIButton!
    @IBOutlet var cancel: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapSave() {
        NotificationCenter.default.post(name: Notification.Name("text"), object: taskfield.text)
        dismiss(animated: true, completion: nil)
    }

    @IBAction func didTapCancel() {
        dismiss(animated: true, completion: nil)
    }
}
