//
//  GetDailySummary.swift
//  iFat
//
//  Created by CatMeox on 22/3/2566 BE.
//

import Foundation

struct AllData : Codable {
  let data: HealthData
}

struct HealthData : Codable {
  let healthData: Weight
}

struct Weight: Codable {
  let weight: Double
}
