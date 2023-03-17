//
//  MealView.swift
//  iFat
//
//  Created by CatMeox on 25/1/2566 BE.
//

import SwiftUI

struct MealView: View {
  let screenWidth: Double
  let screenHeight: Double
  
  @State private var imageBreakfast: UIImage? = UIImage()
  @State private var shouldPresentImagePickerBreakfast = false
  @State private var shouldPresentActionScheetBreakfast = false
  @State private var shouldPresentCameraBreakfast = false
  @State var imageStoredBreakfast = [UIImage]()
  
  @State private var imageLunch: UIImage? = UIImage()
  @State private var shouldPresentImagePickerLunch = false
  @State private var shouldPresentActionScheetLunch = false
  @State private var shouldPresentCameraLunch = false
  @State var imageStoredLunch = [UIImage]()
  
  @State private var imageDinner: UIImage? = UIImage()
  @State private var shouldPresentImagePickerDinner = false
  @State private var shouldPresentActionScheetDinner = false
  @State private var shouldPresentCameraDinner = false
  @State var imageStoredDinner = [UIImage]()

  
  
  var body: some View {
    VStack {
      VStack(alignment: .leading, spacing: 4) {
        SmallHeadingText(text: "Breakfast")
          .padding(.leading, 24)
          .padding(.bottom, 4)
        
        ScrollView(.horizontal, showsIndicators: false) {
          HStack(spacing: 16) {
            ZStack {
              RoundedRectangle(cornerRadius: 25)
                .fill(Color.lightOrange.opacity(0.8))
                .frame(width: screenWidth * (150/393),
                       height: screenWidth * (150/393))
                .shadow(color: Color.appBlack.opacity(0.1),
                        radius: 6, x: 0, y: 4)
              Image(systemName: "camera")
                .font(.title)
                .foregroundColor(.appWhite)
                .onTapGesture { self.shouldPresentActionScheetBreakfast = true }
                .sheet(isPresented: $shouldPresentImagePickerBreakfast) {
                  SUImagePickerView(sourceType: self.shouldPresentCameraBreakfast ? .camera : .photoLibrary, image: self.$imageBreakfast, isPresented: self.$shouldPresentImagePickerBreakfast)
                }
                .actionSheet(isPresented: $shouldPresentActionScheetBreakfast) { () -> ActionSheet in
                  ActionSheet(title: Text("Take a new photo or select a photo from library"),
                              buttons:
                                [ActionSheet.Button.default(Text("Camera"), action: {
                                  self.shouldPresentImagePickerBreakfast = true
                                  self.shouldPresentCameraBreakfast = true
                                }),
                                 ActionSheet.Button.default(Text("Photo Library"), action: {
                                  self.shouldPresentImagePickerBreakfast = true
                                  self.shouldPresentCameraBreakfast = false
                                }),
                                 ActionSheet.Button.cancel()])
                }
            }
            
            ForEach(imageStoredBreakfast, id: \.self) { imageBreakfast in
              Image(uiImage: imageBreakfast)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: screenWidth * (150/393),
                       height: screenWidth * (150/393))
                .background(Color.lightOrange.opacity(0.8))
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .shadow(color: Color.appBlack.opacity(0.1),
                        radius: 6, x: 0, y: 4)
            }
          }
          .padding(.leading, 24)
          .padding(.trailing, 24)
        }
      }
      .padding(.top, 24)
      
      
      VStack(alignment: .leading, spacing: 4) {
        SmallHeadingText(text: "Lunch")
          .padding(.leading, 24)
          .padding(.bottom, 4)
        ScrollView(.horizontal, showsIndicators: false) {
          HStack(spacing: 16) {
            ZStack {
              RoundedRectangle(cornerRadius: 25)
                .fill(Color.lightOrange.opacity(0.8))
                .frame(width: screenWidth * (150/393),
                       height: screenWidth * (150/393))
                .shadow(color: Color.appBlack.opacity(0.1),
                        radius: 6, x: 0, y: 4)
              Image(systemName: "camera")
                .font(.title)
                .foregroundColor(.appWhite)
                .onTapGesture { self.shouldPresentActionScheetLunch = true }
                .sheet(isPresented: $shouldPresentImagePickerLunch) {
                  SUImagePickerView(sourceType: self.shouldPresentCameraLunch ? .camera : .photoLibrary, image: self.$imageLunch, isPresented: self.$shouldPresentImagePickerLunch)
                }
                .actionSheet(isPresented: $shouldPresentActionScheetLunch) { () -> ActionSheet in
                  ActionSheet(title: Text("Take a new photo or select a photo from library"),
                              buttons:
                                [ActionSheet.Button.default(Text("Camera"), action: {
                                  self.shouldPresentImagePickerLunch = true
                                  self.shouldPresentCameraLunch = true
                                }),
                                 ActionSheet.Button.default(Text("Photo Library"), action: {
                                  self.shouldPresentImagePickerLunch = true
                                  self.shouldPresentCameraLunch = false
                                }),
                                 ActionSheet.Button.cancel()])
                }
            }
            
            ForEach(imageStoredLunch, id: \.self) { imageLunch in
              Image(uiImage: imageLunch)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: screenWidth * (150/393),
                       height: screenWidth * (150/393))
                .background(Color.lightOrange.opacity(0.8))
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .shadow(color: Color.appBlack.opacity(0.1),
                        radius: 6, x: 0, y: 4)
            }
          }
          .padding(.leading, 24)
          .padding(.trailing, 24)
        }
      }
      .padding(.top, 24)
      
      VStack(alignment: .leading, spacing: 4) {
        SmallHeadingText(text: "Dinner")
          .padding(.leading, 24)
          .padding(.bottom, 4)
        ScrollView(.horizontal, showsIndicators: false) {
          HStack(spacing: 16) {
            ZStack {
              RoundedRectangle(cornerRadius: 25)
                .fill(Color.lightOrange.opacity(0.8))
                .frame(width: screenWidth * (150/393),
                       height: screenWidth * (150/393))
                .shadow(color: Color.appBlack.opacity(0.1),
                        radius: 6, x: 0, y: 4)
              Image(systemName: "camera")
                .font(.title)
                .foregroundColor(.appWhite)
                .onTapGesture { self.shouldPresentActionScheetDinner = true }
                .sheet(isPresented: $shouldPresentImagePickerDinner) {
                  SUImagePickerView(sourceType: self.shouldPresentCameraDinner ? .camera : .photoLibrary, image: self.$imageDinner, isPresented: self.$shouldPresentImagePickerDinner)
                }
                .actionSheet(isPresented: $shouldPresentActionScheetDinner) { () -> ActionSheet in
                  ActionSheet(title: Text("Take a new photo or select a photo from library"),
                              buttons:
                                [ActionSheet.Button.default(Text("Camera"), action: {
                                  self.shouldPresentImagePickerDinner = true
                                  self.shouldPresentCameraDinner = true
                                }),
                                 ActionSheet.Button.default(Text("Photo Library"), action: {
                                  self.shouldPresentImagePickerDinner = true
                                  self.shouldPresentCameraDinner = false
                                }),
                                 ActionSheet.Button.cancel()])
                }
            }
            
            ForEach(imageStoredDinner, id: \.self) { imageDinner in
              Image(uiImage: imageDinner)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: screenWidth * (150/393),
                       height: screenWidth * (150/393))
                .background(Color.lightOrange.opacity(0.8))
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .shadow(color: Color.appBlack.opacity(0.1),
                        radius: 6, x: 0, y: 4)
            }
          }
          .padding(.leading, 24)
          .padding(.trailing, 24)
        }
      }
      .padding(.top, 24)
      
    }
    .onChange(of: imageBreakfast, perform: { _ in
      if let image = imageBreakfast {
        imageStoredBreakfast.append(image)
        uploadImage(image: image)
      }
    })
    
    .onChange(of: imageLunch, perform: { _ in
      if let image = imageLunch {
        imageStoredLunch.append(image)
        uploadImage(image: image)
      }
    })
    
    .onChange(of: imageDinner, perform: { _ in
      if let image = imageDinner {
        imageStoredDinner.append(image)
        uploadImage(image: image)
      }
    })
  }
}

struct MealView_Previews: PreviewProvider {
  static var previews: some View {
    MealView(screenWidth: UIScreen.main.bounds.size.width, screenHeight: UIScreen.main.bounds.size.height)
  }
}
