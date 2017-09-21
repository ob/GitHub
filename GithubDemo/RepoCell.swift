//
//  RepoCellTableViewCell.swift
//  GithubDemo
//
//  Created by Oscar Bonilla on 9/20/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class RepoCell: UITableViewCell {

    @IBOutlet weak var repoName: UILabel!
    @IBOutlet weak var starsLabel: UILabel!
    @IBOutlet weak var forksLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var repoImage: UIImageView!

    var repo: GithubRepo! {
        didSet {
            repoName.text = repo.name
            starsLabel.text = String(format: "%d", repo.stars ?? 0)
            forksLabel.text = String(format: "%d", repo.forks ?? 0)
            ownerLabel.text = repo.ownerHandle
            descriptionLabel.text = repo.repoDescription
            if let urlString = repo.ownerAvatarURL,
                let url = URL(string:urlString) {
                repoImage.setImageWith(url)
            }
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
