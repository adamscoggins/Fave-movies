//
//  MovieCell.swift
//  Fave-Movies
//
//  Created by Mac Owner on 7/26/16.
//  Copyright © 2016 Mac Owner. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieUrl: UILabel!
    @IBOutlet weak var movieDesc: UITextView!
    @IBOutlet weak var movieImg: UIImageView!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(movie: Movies) {
        movieTitle.text = movie.title
        movieUrl.text = movie.url
        movieDesc.text = movie.desc
        movieImg.image = movie.getMovieImage()
        
    }

}
