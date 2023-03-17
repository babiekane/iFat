//
//  HealthKit.swift
//  iFat
//
//  Created by CatMeox on 14/3/2566 BE.
//

import HealthKit

// Create a HealthKit store instance
let healthStore = HKHealthStore()

// Define the weight type
let weightType = HKQuantityType.quantityType(forIdentifier: .bodyMass)!

// Define the date interval for the query
let startDate = Date.distantPast
let endDate = Date()

// Define the query
let query = HKSampleQuery(sampleType: weightType, predicate: nil, limit: HKObjectQueryNoLimit, sortDescriptors: nil) { (query, samples, error) in
    guard let samples = samples as? [HKQuantitySample], error == nil else {
        print("An error occurred: \(error?.localizedDescription ?? "Unknown error")")
        return
    }
    
    // Retrieve the most recent weight sample
    let mostRecentWeight = samples.last
    
    // Retrieve the weight value in kilograms
    let weight = mostRecentWeight?.quantity.doubleValue(for: HKUnit.gramUnit(with: .kilo))
    
    print("Weight: \(weight) kg")
}

// Execute the query
//healthStore.execute(query)
