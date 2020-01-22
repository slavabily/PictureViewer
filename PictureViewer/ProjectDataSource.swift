//
//  ProjectDataSource.swift
//  PictureViewer
//
//  Created by slava bily on 21/1/20.
//  Copyright © 2020 slava bily. All rights reserved.
//

import UIKit

class ProjectDataSource: NSObject, UITableViewDataSource {
    
    let items = Bundle.main.collectPictures(withPrefix: "nssl")
    
    var pictures: [String] {
        
        var p = [String]()
        for item in items {
            if item.hasPrefix("nssl") {
                p.append(item)
            }
        }
        return p
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return pictures.count
    }
      
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        return cell
    }
}
