//
//  FoodService.swift
//  BestFood
//
//  Created by Łukasz Andrzejewski on 16/02/2021.
//

import Combine

protocol FoodService {
    
    func getFood(token: String) -> AnyPublisher<[FoodModel], RequestError>
    
}
