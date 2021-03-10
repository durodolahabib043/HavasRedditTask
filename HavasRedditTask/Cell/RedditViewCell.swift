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
        label.backgroundColor = .red
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
        view.backgroundColor = .green
        return view
    }()

    var titleText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.backgroundColor = .red
        label.text = "Title jnwfjnnkgntrejngkjntjk"
        return label

    }()

    lazy var mainImage: CustomImageView = {
        let image = CustomImageView()
        image.contentMode = .scaleAspectFit
        image.layer.masksToBounds = false
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
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

        safeArea = safeAreaLayoutGuide

        // fullStackView
        constraints += [NSLayoutConstraint(item: titleContainer, attribute: .top, relatedBy: .equal, toItem: safeArea, attribute: .top, multiplier: 1.0, constant: 0.0)]

        constraints += [NSLayoutConstraint(item: titleContainer, attribute: .leading, relatedBy: .equal, toItem: safeArea, attribute: .leading, multiplier: 1.0, constant: 0.0)]
        constraints += [NSLayoutConstraint(item: titleContainer, attribute: .trailing, relatedBy: .equal, toItem: safeArea, attribute: .trailing, multiplier: 1.0, constant: 0.0)]
        constraints += [NSLayoutConstraint(item: titleContainer, attribute: .height, relatedBy: .equal, toItem: safeArea, attribute: .height, multiplier: 1 / 2, constant: 0.0)]
        // upImageView
        constraints += [NSLayoutConstraint(item: upImageView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 20.0)]
        // downImageView
        constraints += [NSLayoutConstraint(item: downImageView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 20.0)]

        // titleText
        constraints += [NSLayoutConstraint(item: titleText, attribute: .top, relatedBy: .equal, toItem: safeArea, attribute: .top, multiplier: 1.0, constant: 25.0)]
        constraints += [NSLayoutConstraint(item: titleText, attribute: .leading, relatedBy: .equal, toItem: fullStackView, attribute: .trailing, multiplier: 1.0, constant: 0.0)]

        addConstraints(constraints)
    }

    func setupViews() {
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
        backgroundColor = .cyan
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
