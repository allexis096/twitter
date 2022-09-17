//
//  ProfileHeader.swift
//  twitter
//
//  Created by allexis figueiredo on 17/09/22.
//

import UIKit

class ProfileTableViewHeader: UIView {

    private let profileHeaderImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "header")
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private let editProfileButton: UIButton = {
        var config = UIButton.Configuration.plain()
        config.title = "Edit profile"
        config.attributedTitle?.font = .systemFont(ofSize: 15, weight: .bold)
        config.attributedTitle?.foregroundColor = UIColor.label
        
        
        let button = UIButton(configuration: config)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 15
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.secondaryLabel.cgColor
        
        return button
    }()
    
    private let profileAvatarImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 40
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "avatar")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private let displayNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Allexis"
        label.font = .systemFont(ofSize: 22, weight: .bold)
        
        return label
    }()
    
    private let usernameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "@allexinshow"
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.textColor = .secondaryLabel
        
        return label
    }()
    
    private let userBioLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 3
        label.textColor = .label
        label.text = "é o fogudo ntj"
        
        return label
    }()
    
    private let bornDateImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "rosette", withConfiguration: UIImage.SymbolConfiguration(pointSize: 14))
        imageView.tintColor = .secondaryLabel
        
        return imageView
    }()
    
    private let bornDateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Born 6 December 1996"
        label.textColor = .secondaryLabel
        label.font = .systemFont(ofSize: 14, weight: .regular)
        
        return label
    }()
    
    private let joinDateImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "calendar", withConfiguration: UIImage.SymbolConfiguration(pointSize: 14))
        imageView.tintColor = .secondaryLabel
        
        return imageView
    }()
    
    private let joinedDateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Joined April 2019"
        label.textColor = .secondaryLabel
        label.font = .systemFont(ofSize: 14, weight: .regular)
        
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(profileHeaderImageView)
        addSubview(editProfileButton)
        addSubview(profileAvatarImageView)
        addSubview(displayNameLabel)
        addSubview(usernameLabel)
        addSubview(userBioLabel)
        addSubview(bornDateImageView)
        addSubview(bornDateLabel)
        addSubview(joinDateImageView)
        addSubview(joinedDateLabel)
        
        configureConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func configureConstraints() {
        let profileHeaderImageViewConstraints = [
            profileHeaderImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            profileHeaderImageView.topAnchor.constraint(equalTo: topAnchor),
            profileHeaderImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            profileHeaderImageView.heightAnchor.constraint(equalToConstant: 180)
        ]
        
        let editProfileButtonConstraints = [
            editProfileButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            editProfileButton.topAnchor.constraint(equalTo: profileHeaderImageView.bottomAnchor, constant: 10)
        ]
        
        let profileAvatarImageViewConstraints = [
            profileAvatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            profileAvatarImageView.centerYAnchor.constraint(equalTo: profileHeaderImageView.bottomAnchor, constant: 10),
            profileAvatarImageView.widthAnchor.constraint(equalToConstant: 80),
            profileAvatarImageView.heightAnchor.constraint(equalToConstant: 80)
        ]
        
        let displayNameLabelConstraints = [
            displayNameLabel.leadingAnchor.constraint(equalTo: profileAvatarImageView.leadingAnchor),
            displayNameLabel.topAnchor.constraint(equalTo: profileAvatarImageView.bottomAnchor, constant: 10),
        ]
        
        let usernameLabelConstraints = [
            usernameLabel.leadingAnchor.constraint(equalTo: displayNameLabel.leadingAnchor),
            usernameLabel.topAnchor.constraint(equalTo: displayNameLabel.bottomAnchor, constant: 5)
        ]
        
        let userBioLabelConstraints = [
            userBioLabel.leadingAnchor.constraint(equalTo: displayNameLabel.leadingAnchor),
            userBioLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            userBioLabel.topAnchor.constraint(equalTo: usernameLabel.bottomAnchor, constant: 15)
        ]
        
        let bornDateImageViewConstraints = [
            bornDateImageView.leadingAnchor.constraint(equalTo: displayNameLabel.leadingAnchor),
            bornDateImageView.topAnchor.constraint(equalTo: userBioLabel.bottomAnchor, constant: 10)
        ]
        
        let bornDateLabelConstraints = [
            bornDateLabel.leadingAnchor.constraint(equalTo: bornDateImageView.trailingAnchor, constant: 5),
            bornDateLabel.topAnchor.constraint(equalTo: userBioLabel.bottomAnchor, constant: 10)
        ]
        
        let joinDateImageViewConstraints = [
            joinDateImageView.leadingAnchor.constraint(equalTo: bornDateLabel.trailingAnchor, constant: 20),
            joinDateImageView.topAnchor.constraint(equalTo: userBioLabel.bottomAnchor, constant: 10)
        ]
        
        let joinedDateLabelConstraints = [
            joinedDateLabel.leadingAnchor.constraint(equalTo: joinDateImageView.trailingAnchor, constant: 5),
            joinedDateLabel.topAnchor.constraint(equalTo: userBioLabel.bottomAnchor, constant: 10)
        ]
        
        NSLayoutConstraint.activate(profileHeaderImageViewConstraints)
        NSLayoutConstraint.activate(editProfileButtonConstraints)
        NSLayoutConstraint.activate(profileAvatarImageViewConstraints)
        NSLayoutConstraint.activate(displayNameLabelConstraints)
        NSLayoutConstraint.activate(usernameLabelConstraints)
        NSLayoutConstraint.activate(userBioLabelConstraints)
        NSLayoutConstraint.activate(bornDateImageViewConstraints)
        NSLayoutConstraint.activate(bornDateLabelConstraints)
        NSLayoutConstraint.activate(joinDateImageViewConstraints)
        NSLayoutConstraint.activate(joinedDateLabelConstraints)
    }
}
