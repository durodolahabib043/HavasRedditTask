//
//  DetailedViewController.swift
//  HavasRedditTask
//
//  Created by Habib Durodola on 2021-03-11.
//

import UIKit

class DetailedViewController: UIViewController {
    var data: RedditObjectiveCModel?
    var safeArea: UILayoutGuide!

    var upImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "icons8-up-100")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    lazy var voteContText = UILabel.newLabel()
    lazy var titleText = UILabel.newLabel()
    lazy var commentText = UILabel.newLabel()
    lazy var shareText = UILabel.newLabel()
    lazy var saveText = UILabel.newLabel()
    lazy var mainImage = CustomImageView.newImage()

    lazy var commnetImage = CustomImageView.newImage()
    lazy var shareImage = CustomImageView.newImage()
    lazy var saveImage = CustomImageView.newImage()

    var downImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "icons8-down-100")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    var titleContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        // view.backgroundColor = .green
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
        setupAutoContrainst()
        displayContent()
    }

    func setupViews() {
        view.addSubview(upImageView)
        view.addSubview(voteContText)
        view.addSubview(downImageView)
        view.addSubview(titleContainer)
        view.addSubview(titleText)
        view.addSubview(mainImage)
        voteContText.textAlignment =
            .center

        saveText.text = "Save"
        shareText.text = "Share"
        commentText.text = "Commnets"
        commnetImage.image = UIImage(named: "icons8-comments-26")
        shareImage.image = UIImage(named: "icons8-share-24")
        saveImage.image = UIImage(named: "icons8-save-24")

        titleText.font = UIFont.preferredFont(forTextStyle: .headline)
        voteContText.font = UIFont.preferredFont(forTextStyle: .headline)
    }

    func displayContent() {
        guard let votes = data?.upsVotes, let title = data?.title, let image = data?.imageUrl, let comments = data?.commnets else {
            return
        }
        voteContText.text = votes
        titleText.text = title
        mainImage.loadImageUsingUrlString(urlString: image)
        commentText.text = comments
    }
}
