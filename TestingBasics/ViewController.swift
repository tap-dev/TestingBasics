//
//  ViewController.swift
//  TestingBasics
//
//  Created by Greg Price on 25/03/2021.
//

import UIKit

class ViewController: UITableViewController {

    private var viewModel: ViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assert(viewModel != nil)
    }
    
    func configure(_ viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numberOfRows
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = viewModel.item(at: indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = item
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = viewModel.alert(for: indexPath.row)
        showAlert(title: alert.title, message: alert.message)
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}

