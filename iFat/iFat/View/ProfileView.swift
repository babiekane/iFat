//
//  ProfileView.swift
//  iFat
//
//  Created by CatMeox on 17/2/2566 BE.
//

import SwiftUI

struct ProfileView: View {
  @State private var image: UIImage? = UIImage()
  @State private var shouldPresentImagePicker = false
  @State private var shouldPresentActionScheet = false
  @State private var shouldPresentCamera = false
  
  @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
  
  var body: some View {
    VStack {
      NavigationBar(title: "Profile", backAction: {
        presentationMode.wrappedValue.dismiss()
      })
      
      ZStack {
        Image(uiImage: self.image ?? UIImage())
          .resizable()
          .background(Color.appBlack.opacity(0.2))
          .aspectRatio(contentMode: .fill)
          .frame(width: 150, height: 150)
          .clipShape(Circle())
          .shadow(color: Color.appBlack.opacity(0.1),
                  radius: 6, x: 0, y: 4)
        
        HStack {
          
          Image(systemName: "camera.fill")
            .foregroundColor(.appWhite)
            .padding(10)
            .background(Color.orangeSemiLight)
            .clipShape(Circle())
            .overlay(
              Circle()
                .stroke(Color.appWhite, lineWidth: 3)
            )
            .onTapGesture { self.shouldPresentActionScheet = true }
            .sheet(isPresented: $shouldPresentImagePicker) {
              SUImagePickerView(sourceType: self.shouldPresentCamera ? .camera : .photoLibrary, image: self.$image, isPresented: self.$shouldPresentImagePicker)
            }
            .actionSheet(isPresented: $shouldPresentActionScheet) { () -> ActionSheet in
              ActionSheet(title: Text("Take a new photo or select a photo from library"),
                          buttons:
                            [ActionSheet.Button.default(Text("Camera"), action: {
                              self.shouldPresentImagePicker = true
                              self.shouldPresentCamera = true
                            }),
                             ActionSheet.Button.default(Text("Photo Library"), action: {
                              self.shouldPresentImagePicker = true
                              self.shouldPresentCamera = false
                            }),
                             ActionSheet.Button.cancel()])
            }
            .padding(.top, 100)
            .padding(.leading, 100)
        }
      }
      .padding(.bottom, 50)
      
      VStack {
        HStack(spacing: 0) {
          PrimaryBodyText(text: "Name")
            .foregroundColor(.appBlack)
          
          Spacer()
          
          Button {
            
          } label: {
            TertiaryBodyText(text: "Yossa")
              .foregroundColor(.appBlack.opacity(0.3))
            Image(systemName: "chevron.right")
              .foregroundColor(.lightOrange)
          }
        }
        .padding(.leading, 24)
        .padding(.trailing, 24)
        .padding(.bottom, 12)
        
        Rectangle()
          .frame(width: 298, height: 0.25)
          .background(Color.appBlack)
          .opacity(0.05)
        
        HStack(spacing: 0) {
          PrimaryBodyText(text: "Sex")
            .foregroundColor(.appBlack)
          
          Spacer()
          
          Button {
            
          } label: {
            TertiaryBodyText(text: "Male")
              .foregroundColor(.appBlack.opacity(0.3))
            Image(systemName: "chevron.right")
              .foregroundColor(.lightOrange)
          }
        }
        .padding(.leading, 24)
        .padding(.trailing, 24)
        .padding(.top, 12)
        
        Rectangle()
          .frame(width: 298, height: 0.25)
          .background(Color.appBlack)
          .opacity(0.05)
        
        HStack(spacing: 0) {
          PrimaryBodyText(text: "Date of birth")
            .foregroundColor(.appBlack)
          
          Spacer()
          
          Button {
            
          } label: {
            TertiaryBodyText(text: "15 June 1995")
              .foregroundColor(.appBlack.opacity(0.3))
            Image(systemName: "chevron.right")
              .foregroundColor(.lightOrange)
          }
        }
        .padding(.leading, 24)
        .padding(.trailing, 24)
        .padding(.top, 12)
        
        Rectangle()
          .frame(width: 298, height: 0.25)
          .background(Color.appBlack)
          .opacity(0.05)
        
        HStack(spacing: 0) {
          PrimaryBodyText(text: "Height")
            .foregroundColor(.appBlack)
          
          Spacer()
          
          Button {
            
          } label: {
            TertiaryBodyText(text: "178 cm")
              .foregroundColor(.appBlack.opacity(0.3))
            Image(systemName: "chevron.right")
              .foregroundColor(.lightOrange)
          }
        }
        .padding(.leading, 24)
        .padding(.trailing, 24)
        .padding(.top, 12)
        
        Rectangle()
          .frame(width: 298, height: 0.25)
          .background(Color.appBlack)
          .opacity(0.05)
        
        HStack(spacing: 0) {
          PrimaryBodyText(text: "Weight")
            .foregroundColor(.appBlack)
          
          Spacer()
          
          Button {
            
          } label: {
            TertiaryBodyText(text: "79.80 kg")
              .foregroundColor(.appBlack.opacity(0.3))
            Image(systemName: "chevron.right")
              .foregroundColor(.lightOrange)
          }
        }
        .padding(.leading, 24)
        .padding(.trailing, 24)
        .padding(.top, 12)
        
      }
      .frame(width: 345, height: 239)
      .padding(.top, 24)
      .padding(.bottom, 24)
      .background(Color.appWhite)
      .clipShape(RoundedRectangle(cornerRadius: 10))
      .shadow(color: Color.appBlack.opacity(0.1),
              radius: 6, x: 0, y: 4)
      
      Spacer()
    }
    .frame(maxWidth: .infinity)
    .background(Color.appWhite)

  }
}
  


struct ProfileView_Previews: PreviewProvider {
  static var previews: some View {
    ProfileView()
  }
}

struct NavigationBar: View {
  
  let title: String
  let backAction: () -> Void
  
  var body: some View {
    ZStack(alignment: .center) {
      HStack {
        Spacer()
        
        MediumHeadingText(text: title)
          .foregroundColor(.darkOrange)
        
        Spacer()
      }
      
      HStack {
        Button(action: {
          backAction()
        }, label: {
          Image(systemName: "chevron.left")
            .bold()
            .foregroundColor(.orangeSemiDark)
            .padding(.leading, 24)
        })
        
        Spacer()
      }
    }
    .padding(.top, 16)
  }
}
