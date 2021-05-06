//
//  ViewController.swift
//  TableViewInCode1
//
//  Created by Юлия Караневская on 5/5/21.
//

import UIKit

class ViewController: UIViewController {
    
    let tableView = UITableView()
    var data = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        setData()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func setData() {
        for x in 0...100 {
            data.append("Some data \(x)")
        }
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(123)
    }
    
}

