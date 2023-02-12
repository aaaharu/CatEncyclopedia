//
//  MyTableViewCell.swift
//  CatEncyclopedia
//
//  Created by 김은지 on 2023/02/10.
//

import UIKit

final class MyTableViewCell: UITableViewCell {
    
    let mainImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let catNameLable: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17)
        label.numberOfLines = 0
        return label
    }()
    
    let stackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .vertical
        sv.distribution = .fill
        sv.alignment = .fill
        sv.spacing = 10
        return sv
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        setupStackView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupStackView() {
        
        self.addSubview(mainImageView)
        
        self.addSubview(stackView)
        
        // 뷰컨트롤러의 기본뷰 위에 스택뷰 올리기
        
        // 스택뷰 위에 뷰들 올리기
        stackView.addArrangedSubview(catNameLable)
        stackView.addArrangedSubview(descriptionLabel)
    }
    
    override func updateConstraints() {
        setConstraints()
        super.updateConstraints()
    }
    

    func setConstraints() {
        setMainImageViewConstraints()
        setCatNameLabelConstraints()
        setStackViewConstraints()
        
    }
    
    
    func setMainImageViewConstraints() {
        mainImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            
            mainImageView.heightAnchor.constraint(equalToConstant: 100),
            mainImageView.widthAnchor.constraint(equalToConstant: 100),
            
            // self.leadingAnchor로 잡는 것보다 self.contentView.leadingAnchor로 잡는게 더 정확함 ⭐️
            // (cell은 기본뷰로 contentView를 가지고 있기 때문)
            mainImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10),
            mainImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
    
    func setCatNameLabelConstraints() {
        catNameLable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            catNameLable.heightAnchor.constraint(equalToConstant: 22)
        ])
    }
    
    func setStackViewConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            // self.trailingAnchor로 잡는 것보다 self.contentView.trailingAnchor로 잡는게 더 정확함 ⭐️
            // (cell은 기본뷰로 contentView를 가지고 있기 때문)
            stackView.leadingAnchor.constraint(equalTo: self.mainImageView.trailingAnchor, constant: 15),
            stackView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: self.mainImageView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.mainImageView.bottomAnchor)
            
        ])
    }
    
    
    
    
    
}

