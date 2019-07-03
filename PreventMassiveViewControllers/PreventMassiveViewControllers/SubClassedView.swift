//
//  SubClassedView.swift
//  viewcontrollertimelapse
//
//  Created by Allen Whearry on 3/8/19.
//  Copyright © 2019 Codeine Technologies LLC. All rights reserved.
//

import UIKit

class SubClassedView: UIView {
    let myPictureView: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.image = UIImage(named: "atlcarnival")
        iv.layer.cornerRadius = 25
        iv.clipsToBounds = true
        return iv
    }()
    
    let myNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.text = "Hi! I'm Allen"
        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        label.textColor = .darkGray
        return label
    }()
    
    let randParagraphLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.text = "This is a random paragraph"
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .gray
        return label
    }()
    
    let separatorView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    let myRandomParagraph: UITextView = {
        let tv = UITextView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.text = """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tincidunt odio non erat accumsan, eget luctus nisl congue. Morbi gravida eleifend lectus, quis ultrices ante condimentum non. Nullam at urna sit amet tellus pretium suscipit ac sit amet justo.
        
        Quisque scelerisque, diam et imperdiet condimentum, diam quam dignissim arcu, a euismod diam lectus vitae lectus. Suspendisse tincidunt lacus nec mauris euismod, id suscipit dui blandit. Duis euismod vitae ligula sit amet sodales.
        """
        tv.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        tv.textColor = .darkGray
        tv.isEditable = false
        return tv
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    fileprivate func setupView() {
        self.backgroundColor = .white
        self.addSubview(myPictureView)
        self.addSubview(myNameLabel)
        self.addSubview(randParagraphLabel)
        self.addSubview(separatorView)
        self.addSubview(myRandomParagraph)
        displayConstraints()
    }
    
    fileprivate func displayConstraints() {
        NSLayoutConstraint.activate([
            myPictureView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            myPictureView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            myPictureView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            myPictureView.heightAnchor.constraint(equalToConstant: 160),
            
            myNameLabel.topAnchor.constraint(equalTo: myPictureView.bottomAnchor, constant: 20),
            myNameLabel.leadingAnchor.constraint(equalTo: myPictureView.leadingAnchor),
            myNameLabel.trailingAnchor.constraint(equalTo: myPictureView.trailingAnchor),
            
            randParagraphLabel.topAnchor.constraint(equalTo: myNameLabel.bottomAnchor, constant: 20),
            randParagraphLabel.leadingAnchor.constraint(equalTo: myPictureView.leadingAnchor),
            randParagraphLabel.trailingAnchor.constraint(equalTo: myPictureView.trailingAnchor),
            
            separatorView.topAnchor.constraint(equalTo: randParagraphLabel.bottomAnchor, constant: 8),
            separatorView.leadingAnchor.constraint(equalTo: myPictureView.leadingAnchor),
            separatorView.trailingAnchor.constraint(equalTo: myPictureView.trailingAnchor),
            separatorView.heightAnchor.constraint(equalToConstant: 3),
            
            myRandomParagraph.topAnchor.constraint(equalTo: separatorView.bottomAnchor, constant: 8),
            myRandomParagraph.leadingAnchor.constraint(equalTo: myPictureView.leadingAnchor),
            myRandomParagraph.trailingAnchor.constraint(equalTo: myPictureView.trailingAnchor),
            myRandomParagraph.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            ])
    }


}
