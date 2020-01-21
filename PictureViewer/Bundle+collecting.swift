//
//  Bundle+collecting.swift
//  PictureViewer
//
//  Created by slava bily on 20/1/20.
//  Copyright © 2020 slava bily. All rights reserved.
//

import Foundation

extension Bundle {
    func collectPictures(withPrefix: String) -> [String] {
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        
        guard let items = try? fm.contentsOfDirectory(atPath: path) else {
            fatalError("Failed to locate items in directory.")
        }
        
        return items
    }
}
