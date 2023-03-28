//
//  HealthDataView.swift
//  iFat
//
//  Created by CatMeox on 25/1/2566 BE.
//

import SwiftUI

struct HealthDataView: View {
  let screenWidth: Double
  
  @Binding var isShowingTextFieldView: Bool
  @Binding var weight: String
  @State private var isTextFieldShown = false
  @Binding var date: Date
  
  var body: some View {
    VStack(alignment: .leading, spacing: 4) {
      SmallHeadingText(text: "Health Data")
      
      Button {
        withAnimation {
          isShowingTextFieldView.toggle()
        }
        
        self.isTextFieldShown = true
      } label: {
        RoundedRectangle(cornerRadius: 16)
          .stroke(Color.orangeSemiLight, lineWidth: 2)
          .frame(width: screenWidth - 48, height: 61)
          .shadow(color: Color.appBlack.opacity(0.1),
                  radius: 6, x: 0, y: 4)
          .overlay(
            HStack {
              Image(systemName: "figure.mixed.cardio")
                .renderingMode(.template)
                .resizable()
                .frame(width: 18, height: 22)
                .padding(.horizontal, 12)
                .padding(.vertical, 10)
                .foregroundColor(.appWhite)
                .background(Color.lightOrange)
                .cornerRadius(8)
                .padding(.leading, 16)
              
              VStack(alignment: .leading) {
                SecondaryBodyText(text: "Weight")
                  .foregroundColor(.appBlack)
                
                if weight.isEmpty {
                  PrimaryBodyText(text: "Add your weight")
                    .foregroundColor(.darkOrange)
                } else {
                  PrimaryBodyText(text: weight)
                    .foregroundColor(.darkOrange)
                }
              }
              
              Spacer()
              
              Image(systemName: "square.and.pencil")
                .foregroundColor(.darkOrange)
                .padding(.trailing, 16)
            }
          )
      }
    }
    .padding(.top, 24)
    .padding(.bottom, 24)
    .padding(.horizontal, 24)
    .onAppear {
      fetchWeightData()
    }
    
//    Spacer()
  }
  
  func fetchWeightData() {
    guard let url = URL(string: "https://51c8-184-22-5-197.ap.ngrok.io/summary") else {
      print("Invalid URL")
      return
    }
    
    var request = URLRequest(url: url)
    //    let token = UserDefaults.standard.string(forKey: "token")
    let token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3QyQGljaGFuZ2UuY29tIiwiaWF0IjoxNjc5MjI4MDY5fQ.IznhqTehVFcgQ_JleLVjOIf86w-P8hrlZMB2mSL06tY"
    request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
    
    URLSession.shared.dataTask(with: request) { data, response, error in
      guard let data = data else {
        print("No data in response: \(error?.localizedDescription ?? "Unknown error")")
        return
      }
      if let response = try? JSONDecoder().decode(AllData.self, from: data) {
        DispatchQueue.main.async {
          
          self.weight = String(format: "%.2f kg", response.data.healthData.weight)
        }
      } else {
        print("Invalid response")
      }
    }.resume()
  }
}

struct HealthDataView_Previews: PreviewProvider {
  static var previews: some View {
    HealthDataView(screenWidth: UIScreen.main.bounds.size.width, isShowingTextFieldView: .constant(false), weight: .constant("0"), date: .constant(Date()))
  }
}
