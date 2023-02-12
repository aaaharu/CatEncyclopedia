//
//  DetailViewController.swift
//  CatEncyclopedia
//
//  Created by 김은지 on 2023/02/11.
//

import UIKit

final class DetailViewController: UIViewController {
    
    // MVC패턴을 위한 따로만든 뷰
    private let detailView = DetailView()
    
    // 전화면에서 Movie데이터를 전달 받기 위한 변수
    var catData: Cat?
    
    
    override func loadView() {
        view = detailView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        detailView.mainImageView.image = catData?.catImage
        detailView.catNamelabel.text = catData?.catKind
        detailView.descriptionLabel.text = catData?.catDescription
    }
    
}
