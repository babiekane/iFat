//
//  AppearanceView.swift
//  iFat
//
//  Created by CatMeox on 25/1/2566 BE.
//

import SwiftUI

struct AppearanceView: View {
  
  let screenWidth: Double
  let screenHeight: Double
  
  @State private var imageBody: UIImage? = UIImage()
  @State private var shouldPresentImagePickerBody = false
  @State private var shouldPresentActionScheetBody = false
  @State private var shouldPresentCameraBody = false
  @State var imageStoredBody = [UIImage]()
  
  var body: some View {
    VStack(alignment: .leading, spacing: 4) {
      SmallHeadingText(text: "Appearance")
        .padding(.leading, 24)
      
      ScrollView(.horizontal, showsIndicators: false) {
        HStack(spacing: 16) {
          ZStack {
            RoundedRectangle(cornerRadius: 25)
              .fill(Color.lightOrange.opacity(0.8))
              .frame(width: screenWidth * (240/393) ,
                     height: (screenWidth * (240/393)) * (4/3))
              .shadow(color: Color.appBlack.opacity(0.1),
                      radius: 6, x: 0, y: 4)
            Image(systemName: "camera")
              .font(.title)
              .foregroundColor(.appWhite)
              .onTapGesture { self.shouldPresentActionScheetBody = true }
              .sheet(isPresented: $shouldPresentImagePickerBody) {
                SUImagePickerView(sourceType: self.shouldPresentCameraBody ? .camera : .photoLibrary, image: self.$imageBody, isPresented: self.$shouldPresentImagePickerBody)
              }
              .actionSheet(isPresented: $shouldPresentActionScheetBody) { () -> ActionSheet in
                ActionSheet(title: Text("Take a new photo or select a photo from library"),
                            buttons:
                              [ActionSheet.Button.default(Text("Camera"), action: {
                  self.shouldPresentImagePickerBody = true
                  self.shouldPresentCameraBody = true
                }),
                               ActionSheet.Button.default(Text("Photo Library"), action: {
                  self.shouldPresentImagePickerBody = true
                  self.shouldPresentCameraBody = false
                }),
                               ActionSheet.Button.cancel()])
              }
          }
          .padding(.leading, 24)
          
          ForEach(imageStoredBody, id: \.self) { imageBody in
            Image(uiImage: imageBody)
              .resizable()
              .aspectRatio(contentMode: .fill)
              .frame(width: screenWidth * (240/393) ,
                     height: (screenWidth * (240/393)) * (4/3))
              .clipShape(RoundedRectangle(cornerRadius: 25))
              .shadow(color: Color.appBlack.opacity(0.1),
                      radius: 6, x: 0, y: 4)
          }
        }
      }
      
      .onChange(of: imageBody, perform: { _ in
        if let image = imageBody {
          imageStoredBody.append(image)
          uploadImage(image: image)
        }
      })
    }
  }
}

struct AppearanceView_Previews: PreviewProvider {
    static var previews: some View {
      AppearanceView(screenWidth: UIScreen.main.bounds.size.width, screenHeight: UIScreen.main.bounds.size.height)
    }
}
