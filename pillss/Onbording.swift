//
//  Onbording.swift
//  pillss
//
//  Created by lujain mohammed on 19/06/1444 AH.
//

import SwiftUI

struct Onbording: View {
    @State var ispre = false
    var body: some View {
        ZStack{ (Color(#colorLiteral(red: 0.8509803922, green: 0.9215686275, blue: 0.9411764706, alpha: 1)))
            .ignoresSafeArea()
            VStack{
                Image("y")
                    .resizable()
                    .frame(width: 300 , height: 360)
                    .opacity(0.8)
            
                Text("Anotheer eyes that helps blinds and low vision people you can take a picture of any paper doucument, such as receipt,notes or any other doucument and we will read it")
                    .font(.title2)
                    .multilineTextAlignment(.leading)
                    .frame(width: 290, height:180)
                   .padding(.top,30);
                Button(action:
                       
                        {
                    ispre = true
                    
                }, label: {
    
                    Text("Get Started")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 150, height: 50)
                        .background(Color("oo"))
                        .cornerRadius(15)

                }).fullScreenCover(isPresented: $ispre, content:TextEditorScreen.init )

               
                }
                       
                
            }
        }
        
    }

    
    
    
    struct Onbording_Previews: PreviewProvider {
        static var previews: some View {
            Onbording()
        }
    }

