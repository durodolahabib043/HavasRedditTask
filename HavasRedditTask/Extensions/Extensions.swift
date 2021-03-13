//
//  Extensions.swift
//  HavasRedditTask
//
//  Created by Habib Durodola on 2021-03-11.
//

import UIKit

extension UIColor {
    static func setUIColor(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: 1.0)
    }
}

extension UILabel {
    static func newLabel() -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }
}

extension CustomImageView {
    static func newImage() -> CustomImageView {
        let image = CustomImageView()
        image.contentMode = .scaleAspectFit
        image.layer.masksToBounds = false
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }
}

extension RedditViewCell {
    func setupAutoContrainst() {
        var safeArea: UILayoutGuide!
        var constraints = [NSLayoutConstraint]()

        let containerView: [UIView] = [upImageView, voteContText, downImageView]
        let fullStackView = UIStackView(arrangedSubviews: containerView)
        fullStackView.axis = .vertical
        fullStackView.alignment = .fill
        fullStackView.distribution = .fill
        fullStackView.spacing = 5
        fullStackView.translatesAutoresizingMaskIntoConstraints = false

        titleContainer.addSubview(fullStackView)

        // horizontalcontainerView
        let horizontalcontainerView: [UIView] = [commnetImage, commentText, shareImage, shareText, saveImage, saveText]
        let horizontalView = UIStackView(arrangedSubviews: horizontalcontainerView)
        horizontalView.axis = .horizontal
        horizontalView.alignment = .fill
        horizontalView.distribution = .fill
        horizontalView.spacing = 5
        horizontalView.translatesAutoresizingMaskIntoConstraints = false

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

        // mainImage

        constraints += [NSLayoutConstraint(item: mainImage, attribute: .top, relatedBy: .equal, toItem: titleText, attribute: .bottom, multiplier: 1.0, constant: 5.0)]
        constraints += [NSLayoutConstraint(item: mainImage, attribute: .leading, relatedBy: .equal, toItem: fullStackView, attribute: .trailing, multiplier: 1.0, constant: 0.0)]
        constraints += [NSLayoutConstraint(item: mainImage, attribute: .trailing, relatedBy: .equal, toItem: titleContainer, attribute: .trailing, multiplier: 1.0, constant: -10.0)]
        constraints += [NSLayoutConstraint(item: mainImage, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 250.0)]

        /// horizontalView
        constraints += [NSLayoutConstraint(item: horizontalView, attribute: .top, relatedBy: .equal, toItem: mainImage, attribute: .bottom, multiplier: 1.0, constant: 5.0)]
        constraints += [NSLayoutConstraint(item: horizontalView, attribute: .bottom, relatedBy: .equal, toItem: safeArea, attribute: .bottom, multiplier: 1.0, constant: -5.0)]
        constraints += [NSLayoutConstraint(item: horizontalView, attribute: .trailing, relatedBy: .equal, toItem: safeArea, attribute: .trailing, multiplier: 1.0, constant: -5.0)]

        // commnetImage
        constraints += [NSLayoutConstraint(item: commnetImage, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 15.0)]
        constraints += [NSLayoutConstraint(item: commnetImage, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 15.0)]
        // horizontalView
        constraints += [NSLayoutConstraint(item: horizontalView, attribute: .leading, relatedBy: .equal, toItem: safeArea, attribute: .leading, multiplier: 1.0, constant: 10.0)]

        // shareImage
        constraints += [NSLayoutConstraint(item: shareImage, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 15.0)]
        constraints += [NSLayoutConstraint(item: shareImage, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 15.0)]

        // shareImage
        constraints += [NSLayoutConstraint(item: saveImage, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 15.0)]
        constraints += [NSLayoutConstraint(item: saveImage, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 15.0)]

        addConstraints(constraints)
    }
}

extension DetailedViewController {
    func setupAutoContrainst() {
        var safeArea: UILayoutGuide!
        var constraints = [NSLayoutConstraint]()

        let containerView: [UIView] = [upImageView, voteContText, downImageView]
        let fullStackView = UIStackView(arrangedSubviews: containerView)
        fullStackView.axis = .vertical
        fullStackView.alignment = .fill
        fullStackView.distribution = .fill
        fullStackView.spacing = 5
        fullStackView.translatesAutoresizingMaskIntoConstraints = false

        titleContainer.addSubview(fullStackView)

        let horizontalcontainerView: [UIView] = [commnetImage, commentText, shareImage, shareText, saveImage, saveText]
        let horizontalView = UIStackView(arrangedSubviews: horizontalcontainerView)
        horizontalView.axis = .horizontal
        horizontalView.alignment = .fill
        horizontalView.distribution = .fill
        horizontalView.spacing = 5
        horizontalView.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(horizontalView)

        safeArea = view.safeAreaLayoutGuide

        // fullStackView
        constraints += [NSLayoutConstraint(item: fullStackView, attribute: .top, relatedBy: .equal, toItem: safeArea, attribute: .top, multiplier: 1.0, constant: 15.0)]
        constraints += [NSLayoutConstraint(item: fullStackView, attribute: .leading, relatedBy: .equal, toItem: safeArea, attribute: .leading, multiplier: 1.0, constant: 0.0)]

        // titleContainer
        constraints += [NSLayoutConstraint(item: titleContainer, attribute: .top, relatedBy: .equal, toItem: safeArea, attribute: .top, multiplier: 1.0, constant: 0.0)]

        constraints += [NSLayoutConstraint(item: titleContainer, attribute: .leading, relatedBy: .equal, toItem: safeArea, attribute: .leading, multiplier: 1.0, constant: 10.0)]
        constraints += [NSLayoutConstraint(item: titleContainer, attribute: .trailing, relatedBy: .equal, toItem: safeArea, attribute: .trailing, multiplier: 1.0, constant: -10.0)]
        constraints += [NSLayoutConstraint(item: titleContainer, attribute: .height, relatedBy: .equal, toItem: safeArea, attribute: .height, multiplier: 1 / 7, constant: 0.0)]
        // upImageView
        constraints += [NSLayoutConstraint(item: upImageView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 20.0)]
        // downImageView
        constraints += [NSLayoutConstraint(item: downImageView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 20.0)]

        // titleText
        constraints += [NSLayoutConstraint(item: titleText, attribute: .top, relatedBy: .equal, toItem: titleContainer, attribute: .top, multiplier: 1.0, constant: 35.0)]
        constraints += [NSLayoutConstraint(item: titleText, attribute: .leading, relatedBy: .equal, toItem: fullStackView, attribute: .trailing, multiplier: 1.0, constant: 2.0)]
        constraints += [NSLayoutConstraint(item: titleText, attribute: .trailing, relatedBy: .equal, toItem: safeArea, attribute: .trailing, multiplier: 1.0, constant: -10.0)]
        constraints += [NSLayoutConstraint(item: titleText, attribute: .bottom, relatedBy: .equal, toItem: mainImage, attribute: .top, multiplier: 1.0, constant: 0.0)]

        // mainImage
        constraints += [NSLayoutConstraint(item: mainImage, attribute: .top, relatedBy: .equal, toItem: titleText, attribute: .bottom, multiplier: 1.0, constant: 5.0)]
        constraints += [NSLayoutConstraint(item: mainImage, attribute: .leading, relatedBy: .equal, toItem: fullStackView, attribute: .trailing, multiplier: 1.0, constant: 0.0)]
        constraints += [NSLayoutConstraint(item: mainImage, attribute: .trailing, relatedBy: .equal, toItem: titleContainer, attribute: .trailing, multiplier: 1.0, constant: -10.0)]
        constraints += [NSLayoutConstraint(item: mainImage, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 250.0)]

        /// horizontalView
        constraints += [NSLayoutConstraint(item: horizontalView, attribute: .top, relatedBy: .equal, toItem: mainImage, attribute: .bottom, multiplier: 1.0, constant: 5.0)]
        constraints += [NSLayoutConstraint(item: horizontalView, attribute: .trailing, relatedBy: .equal, toItem: safeArea, attribute: .trailing, multiplier: 1.0, constant: -5.0)]

        // commnetImage
        constraints += [NSLayoutConstraint(item: commnetImage, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 15.0)]
        constraints += [NSLayoutConstraint(item: commnetImage, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 15.0)]
        // horizontalView
        constraints += [NSLayoutConstraint(item: horizontalView, attribute: .leading, relatedBy: .equal, toItem: safeArea, attribute: .leading, multiplier: 1.0, constant: 10.0)]

        // shareImage
        constraints += [NSLayoutConstraint(item: shareImage, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 15.0)]
        constraints += [NSLayoutConstraint(item: shareImage, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 15.0)]

        // shareImage
        constraints += [NSLayoutConstraint(item: saveImage, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 15.0)]
        constraints += [NSLayoutConstraint(item: saveImage, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 15.0)]

        view.addConstraints(constraints)
    }
}
