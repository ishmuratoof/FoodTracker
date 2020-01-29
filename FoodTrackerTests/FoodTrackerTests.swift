//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Камиль on 20.01.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {

    //MARK: Meal class tests
    
    //Confirm that meal initializer returns a valid oblect
    
    func testMealInitializationSucceeds() {
        
        //Zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        //Highest positive rating
        let highestPositiveRating = Meal.init(name: "Hihest", photo: nil, rating: 5)
        XCTAssertNotNil(highestPositiveRating)
        
    }
        
    func testMealInitializationFails() {
            
        let negativeRating = Meal.init(name: "Negative", photo: nil, rating: -2)
        XCTAssertNil(negativeRating)
        
        let largeRatingMeal = Meal.init(name: "Large rating", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
        
        let emptyString = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyString)
        
    }
        

}
