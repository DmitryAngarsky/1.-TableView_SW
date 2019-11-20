//
//  PlaceModel.swift
//  1. TableView_SW
//
//  Created by Дмитрий Тараканов on 20.11.2019.
//  Copyright © 2019 Dmitry Angarsky. All rights reserved.
//

import Foundation

struct Place {
    var name: String
    var location: String
    var type: String
    var image: String
    
    static let restorauntNames = ["Балкан Гриль", "Бочка", "Вкусные истории", "Дастархан", "Индокитай",
                              "Классик", "Шок", "Bonsai", "Burger Heroes", "Kitchen",
                              "Love&Life", "Morris Pub", "Sherlock Holmes", "Speak Easy", "X.O"]
    static func getPlaces() -> [Place] {
        var places: [Place] = []
        for place in restorauntNames {
            places.append(Place(name: place, location: "Самара", type: "Ресторан", image: place))
        }
        return places
    }
}
