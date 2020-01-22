//
//  ViewController.swift
//  PictureViewer
//
//  Created by slava bily on 20/1/20.
//  Copyright © 2020 slava bily. All rights reserved.
//

import UIKit

class ViewController: UITableViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?
    
    let dataSource = ProjectDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Picture Viewer"
        
        tableView.dataSource = dataSource
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Picture")
        
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let picture = dataSource.pictures[indexPath.row]
//
//     }


}

