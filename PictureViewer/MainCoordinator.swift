//
//  MainCoordinator.swift
//  PictureViewer
//
//  Created by slava bily on 20/1/20.
//  Copyright © 2020 slava bily. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController
    var children = [Coordinator]()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        
        vc.coordinator = self
        
        navigationController.pushViewController(vc, animated: false)
    }
    
    func show(picture: String) {
        let detailVC = DetailViewController.instantiate()
        
        navigationController.pushViewController(detailVC, animated: true)
    }
    
    
}
