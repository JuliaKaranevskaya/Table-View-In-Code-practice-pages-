//
//  SecondViewController.swift
//  TableViewInCode2
//
//  Created by Юлия Караневская on 5/5/21.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    let tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        title = "Grouped"
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Hello world \(indexPath.row)"
        
        if indexPath.row == 0 {
            cell.imageView?.image = UIImage(systemName: "bandage")
            cell.imageView?.tintColor = .systemPink
            cell.accessoryType = .checkmark
        }
        
        if indexPath.row == 1 {
            cell.imageView?.image = UIImage(systemName: "heart")
            cell.imageView?.tintColor = .systemRed
            cell.accessoryType = .detailButton
        }
        
        if indexPath.row == 2 {
            cell.imageView?.image = UIImage(systemName: "house")
            cell.imageView?.tintColor = .systemBlue
            cell.accessoryType = .disclosureIndicator
        }
        

        return cell
    }


}


