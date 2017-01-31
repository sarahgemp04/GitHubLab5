//
//  repoCellTableViewCell.swift
//  GithubDemo
//
//  Created by Sarah Gemperle on 1/30/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit
import MBProgressHUD

class repoCellTableViewCell: UITableViewCell {

    
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var forksImgView: UIImageView!
    @IBOutlet weak var numForksLabel: UILabel!
    @IBOutlet weak var starsLabel: UILabel!
    @IBOutlet weak var starImgView: UIImageView!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var avatarImgView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var repo: GithubRepo! {
        
        didSet {
            self.titleLabel.text = repo.name!
            let imgURL = URL.init(string: repo.ownerAvatarURL!)
            self.avatarImgView.setImageWith(imgURL!)
            self.forksImgView.image = #imageLiteral(resourceName: "fork")
            self.numForksLabel.text = "\(repo.forks!)"
            self.starsLabel.text = "\(repo.stars!)"
            self.starImgView.image = #imageLiteral(resourceName: "star")
            self.authorLabel.text = repo.ownerHandle!
            self.descriptionLabel.text = repo.repoDescription
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
