//
//  DataManagers.swift
//  CatEncyclopedia
//
//  Created by 김은지 on 2023/02/10.
//

import UIKit

class CatDataManager {
    private var catDataArray: [Cat] = []
    
    func makeCatData() {
        catDataArray = [
            Cat(catImage: UIImage(named: "벵갈.jpg"), catKind: "벵갈", catDescription: "점박이 무늬를 가진 고양이. 표범을 닮은 외모. 활동량이 매우 많다."),
            Cat(catImage: UIImage(named: "샴.jpg"), catKind: "샴", catDescription: "크림색 털에 코 주변으로 짙은 색의 털을 가진 고양이. 눈이 사파이어 색이다. 온순하고 느긋한 성격이 특징이다."),
            Cat(catImage: UIImage(named: "아메리칸숏헤어.jpg"), catKind: "아메리칸숏헤어", catDescription: "동그란 머리 모양에 입은 짧다. 턱 힘이 세고 활동량이 많다. 애교가 많은 편이다."),
            Cat(catImage:   UIImage(named: "스핑크스.jpg"), catKind: "스핑크스", catDescription: "털이 거의 없거나 짧게 자라는 고양이. 귀 모양이 길죽하고 뾰족하다. 털이 거의 없어 체온조절을 잘 해주어야하고 피부병을 조심해야 한다."),
            Cat(catImage: UIImage(named: "러시안블루.jpg"), catKind: "러시안블루", catDescription: "고양이 중에서도 근육질인 편이다. 눈 색깔이 변한다. 청회색 눈을 가지고 태어나 자라면서 노란색으로 바뀌고 한번 더 변하면 초록색 눈이 된다. 낯을 가리는 성격이다."),
            Cat(catImage: UIImage(named: "페르시안.jpg"), catKind: "페르시안", catDescription: "동그란 얼굴과 짧은 다리를 가졌다. 성격이 순한 편이다. 결막염에 취약하다."),
            Cat(catImage: UIImage(named: "메인쿤.jpg"), catKind: "메인쿤", catDescription: "고양이 중에서 가장 크다. 조상이 눈 덮인 곳에서 살았기 때문에 더위를 많이 탄다. 조용한 성격이다."),
            Cat(catImage: UIImage(named: "노르웨이숲.jpg"), catKind: "노르웨이숲", catDescription: "체격이 좋고 뼈대가 굵다. 식욕이 많고 활동량이 많다. 유전병이 있을 수 있어 DNA 검사를 통해 확인이 가능하다.")
        ]
        
    }
    
    func getCatData() -> [Cat] {
        return catDataArray
    }
    
}
