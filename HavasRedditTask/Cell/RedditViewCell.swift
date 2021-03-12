//
//  RedditViewCell.swift
//  HavasRedditTask
//
//  Created by Habib Durodola on 2021-03-10.
//

import UIKit

class RedditViewCell: UITableViewCell {
    // MARK: - UIVIEWS

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
        return view
    }()

    lazy var mainImage = CustomImageView.newImage()
    lazy var commnetImage = CustomImageView.newImage()
    lazy var shareImage = CustomImageView.newImage()
    lazy var saveImage = CustomImageView.newImage()

    // MARK: - HANDLERS

    func setupViews() {
        titleText.font = UIFont.preferredFont(forTextStyle: .headline)
        voteContText.font = UIFont.preferredFont(forTextStyle: .headline)
        voteContText.textAlignment = .center
        saveText.text = "Save"
        shareText.text = "Share"
        commnetImage.image = UIImage(named: "icons8-comments-26")
        shareImage.image = UIImage(named: "icons8-share-24")
        saveImage.image = UIImage(named: "icons8-save-24")

        addSubview(titleContainer)
        titleContainer.addSubview(upImageView)
        titleContainer.addSubview(voteContText)
        titleContainer.addSubview(downImageView)
        titleContainer.addSubview(titleText)
        titleContainer.addSubview(mainImage)
        setupAutoContrainst()
    }

    // MARK: - INIT

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    var child: ChildData? {
        didSet {
            guard let products = child else {
                return
            }
            guard let data = products.title,
                  let image = products.thumbnail
            else {
                return
            }
            mainImage.loadImageUsingUrlString(urlString: image)
        }
    }
}
