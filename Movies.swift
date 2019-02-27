//
//  Movies.swift
//  Fave-Movies
//
//  Created by Adam Scoggins on 7/26/16.
//  Copyright © 2016 Adam Scoggins. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Movies: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    
    func setMovieImage(img: UIImage) {
        let data = UIImagePNGRepresentation(img)
        self.image = data
    }
    
    func getMovieImage() -> UIImage {
        let img = UIImage(data: self.image!)!
        return img
    }

}
