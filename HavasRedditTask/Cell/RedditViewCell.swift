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
        image.image = UIImage(named: "icons8-up-50")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    var voteContText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        // label.backgroundColor = .red
        label.font = UIFont.preferredFont(forTextStyle: .headline)
        label.textAlignment = .center
        return label

    }()

    var downImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "icons8-down-50")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    var titleContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        // view.backgroundColor = .green
        return view
    }()

    var titleText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = UIFont.preferredFont(forTextStyle: .headline)

        return label

    }()

    lazy var mainImage: CustomImageView = {
        let image = CustomImageView()
        image.contentMode = .scaleAspectFit
        image.layer.masksToBounds = false
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "icons8-no-image-64")
        return image
    }()

    // hor
    lazy var commnetImage: CustomImageView = {
        let image = CustomImageView()
        image.contentMode = .scaleAspectFit
        image.layer.masksToBounds = false
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "icons8-comments-26")
        return image
    }()

    var commentText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "7 Comments"
        return label

    }()

    lazy var shareImage: CustomImageView = {
        let image = CustomImageView()
        image.contentMode = .scaleAspectFit
        image.layer.masksToBounds = false
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "icons8-share-24")
        return image
    }()

    var shareText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Share"
        return label

    }()

    lazy var saveImage: CustomImageView = {
        let image = CustomImageView()
        image.contentMode = .scaleAspectFit
        image.layer.masksToBounds = false
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "icons8-save-24")
        return image
    }()

    var saveText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Save"
        return label

    }()

    // MARK: - HANDLERS

    fileprivate func setupAutoContrainst() {
        var safeArea: UILayoutGuide!
        var constraints = [NSLayoutConstraint]()

        let containerView: [UIView] = [upImageView, voteContText, downImageView]
        let fullStackView = UIStackView(arrangedSubviews: containerView)
        fullStackView.axis = .vertical
        fullStackView.alignment = .fill
        fullStackView.distribution = .fill
        fullStackView.spacing = 5
        fullStackView.translatesAutoresizingMaskIntoConstraints = false
        // addSubview(fullStackView)
        titleContainer.addSubview(fullStackView)

        // horizontalcontainerView
        let horizontalcontainerView: [UIView] = [commnetImage, commentText, shareImage, shareText, saveImage, saveText]
        let horizontalView = UIStackView(arrangedSubviews: horizontalcontainerView)
        horizontalView.axis = .horizontal
        horizontalView.alignment = .fill
        horizontalView.distribution = .fill
        horizontalView.spacing = 5
        horizontalView.translatesAutoresizingMaskIntoConstraints = false
        horizontalView.backgroundColor = .systemPink
        addSubview(horizontalView)

        safeArea = safeAreaLayoutGuide

        constraints += [NSLayoutConstraint(item: fullStackView, attribute: .leading, relatedBy: .equal, toItem: safeArea, attribute: .leading, multiplier: 1.0, constant: 0.0)]

        // titleContainer
        constraints += [NSLayoutConstraint(item: titleContainer, attribute: .top, relatedBy: .equal, toItem: safeArea, attribute: .top, multiplier: 1.0, constant: 0.0)]

        constraints += [NSLayoutConstraint(item: titleContainer, attribute: .leading, relatedBy: .equal, toItem: safeArea, attribute: .leading, multiplier: 1.0, constant: 10.0)]
        constraints += [NSLayoutConstraint(item: titleContainer, attribute: .trailing, relatedBy: .equal, toItem: safeArea, attribute: .trailing, multiplier: 1.0, constant: -10.0)]
        constraints += [NSLayoutConstraint(item: titleContainer, attribute: .height, relatedBy: .equal, toItem: safeArea, attribute: .height, multiplier: 1 / 2, constant: 0.0)]
        // upImageView
        constraints += [NSLayoutConstraint(item: upImageView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 20.0)]
        // downImageView
        constraints += [NSLayoutConstraint(item: downImageView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 20.0)]

        // titleText
        constraints += [NSLayoutConstraint(item: titleText, attribute: .top, relatedBy: .equal, toItem: safeArea, attribute: .top, multiplier: 1.0, constant: 25.0)]
        constraints += [NSLayoutConstraint(item: titleText, attribute: .leading, relatedBy: .equal, toItem: fullStackView, attribute: .trailing, multiplier: 1.0, constant: 5.0)]
        constraints += [NSLayoutConstraint(item: titleText, attribute: .trailing, relatedBy: .equal, toItem: safeArea, attribute: .trailing, multiplier: 1.0, constant: -10.0)]
        constraints += [NSLayoutConstraint(item: titleText, attribute: .bottom, relatedBy: .equal, toItem: titleText, attribute: .bottom, multiplier: 1.0, constant: 0.0)]

        //

        constraints += [NSLayoutConstraint(item: mainImage, attribute: .top, relatedBy: .equal, toItem: titleText, attribute: .bottom, multiplier: 1.0, constant: 5.0)]
        constraints += [NSLayoutConstraint(item: mainImage, attribute: .leading, relatedBy: .equal, toItem: fullStackView, attribute: .trailing, multiplier: 1.0, constant: 0.0)]
        constraints += [NSLayoutConstraint(item: mainImage, attribute: .trailing, relatedBy: .equal, toItem: titleContainer, attribute: .trailing, multiplier: 1.0, constant: -10.0)]
        constraints += [NSLayoutConstraint(item: mainImage, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 250.0)]

        /// horizontalView
        constraints += [NSLayoutConstraint(item: horizontalView, attribute: .top, relatedBy: .equal, toItem: mainImage, attribute: .bottom, multiplier: 1.0, constant: 5.0)]
        constraints += [NSLayoutConstraint(item: horizontalView, attribute: .bottom, relatedBy: .equal, toItem: safeArea, attribute: .bottom, multiplier: 1.0, constant: -5.0)]

        // commnetImage
        constraints += [NSLayoutConstraint(item: commnetImage, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 15.0)]
        constraints += [NSLayoutConstraint(item: commnetImage, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 15.0)]
        // horizontalView
        constraints += [NSLayoutConstraint(item: horizontalView, attribute: .leading, relatedBy: .equal, toItem: safeArea, attribute: .leading, multiplier: 1.0, constant: 10.0)]

        addConstraints(constraints)
    }

    func setupViews() {
        addSubview(titleContainer)
        titleContainer.addSubview(upImageView)
        titleContainer.addSubview(voteContText)
        titleContainer.addSubview(downImageView)
        titleContainer.addSubview(titleText)
        titleContainer.addSubview(mainImage)
        // addSubview(commnetImage)
        // addSubview(commentText)
        setupAutoContrainst()
    }

    // MARK: - INIT

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        // backgroundColor = .cyan
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
            //  titleText.text = data
            if image != "self", image != "default" {
                mainImage.loadImageUsingUrlString(urlString: image)
            }
        }
    }
}
