//
//  Login.swift
//  iFat
//
//  Created by CatMeox on 2/3/2566 BE.
//

import Foundation

struct Login: Encodable {
  let username: String
  let password: String

}

struct Response: Decodable {
  let data: DataObject
}

struct DataObject: Decodable {
  let token: String
}
