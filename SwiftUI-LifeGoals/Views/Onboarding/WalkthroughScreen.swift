//
//  WalkthroughScreen.swift
//  SwiftUI-LifeGoals
//
//  Created by tobi adegoroye on 14/05/2022.
//

import SwiftUI

struct WalkthroughScreen: View {
    
    @AppStorage("currentPage") var currentPage = 1
    var body: some View {
        ZStack {
            //Changing between views
            
            if currentPage == 1 {
                ScreenView(image: "image1", title: "Create Goal", detail: "On this page you can create your life goal and save them.", bgcolor: Color("grey"))
                    .transition(.scale)

            } else if currentPage == 2 {
                ScreenView(image: "image2", title: "Create Category", detail: "On this page you can create your category  and save them.", bgcolor: Color("grey"))
                    .transition(.scale)


            } else if currentPage == 3 {
                ScreenView(image: "image3", title: "Settings", detail: "On this page you can see your settings.", bgcolor: Color("grey"))
                    .transition(.scale)


            }
            
            
        }
        
        .overlay(
            Button(action: {
                //changing views
                withAnimation(.easeInOut) {
                    //checking...
                    if currentPage <= totalPages {
                        currentPage += 1
                    } else {
                        currentPage = 1
                    }
             }
            }, label: {
                Image(systemName: "chevron.right")
                    .font(.system(size: 20,weight: .semibold))
                    .foregroundColor(.black)
                    .frame(width: 60, height: 60)
                    .background(Color.white)
                    .clipShape(Circle())
                    .overlay(
                        ZStack{
                            Circle()
                                .stroke(Color.black.opacity(0.04),lineWidth: 4)
                                
                            
                            Circle()
                                .trim(from: 0, to: 0.3)
                                .stroke(Color.black,lineWidth: 4)
                                .rotationEffect(.init(degrees: -20))
                            
                        }
                            .padding(-15)
                    )
            })
            .padding(.bottom,20)
            ,alignment: .bottom
        )
    }
}


struct ScreenView: View {
    var image: String
    var title: String
    var detail: String
    var bgcolor: Color
    
    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                
                //Back button
                if currentPage == 1 {
                    Text("Hello Member!")
                        .font(.title)
                        .fontWeight(.semibold)
                        //Letter spacing...
                        .kerning(1.4)
                }
                else {
                    Button(action: {
                        withAnimation(.easeInOut){
                            currentPage -= 1
                        }
                    },label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                            .padding(.vertical,10)
                            .padding(.horizontal)
                            .background(Color.black.opacity(0.4))
                            .cornerRadius(10)
                    })
                }
                Spacer()
                
                Button(action: {
                    withAnimation(.easeInOut) {
                        currentPage = 4
                    }
                    
                },label: {
                    Text("Skip")
                        .fontWeight(.semibold)
                        .kerning(1.2)
                })
            }
            .foregroundColor(.black)
            .padding()
            
            Spacer(minLength: 0)
            
            
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            
            Text(detail)
                .fontWeight(.semibold)
                .kerning(1.3)
                .multilineTextAlignment(.center)
            
            //Minimum Spacing When Phone is reducing...
            
            Spacer(minLength: 120)
        }
        .background(bgcolor.cornerRadius(10).ignoresSafeArea())
    }
}

//total pages
var totalPages = 3
