//
//  ContentView.swift
//  pillss
//
//  Created by lujain mohammed on 15/06/1444 AH.
//

import SwiftUI
import CTScanText

struct TextEditorScreen: View {
    @State private var SacnneDdate = ""
    
    var body: some View {
        NavigationView{
            ZStack {
                
                Image("kk")
                    .resizable()
                    .imageScale(.large)
                    .opacity(0.4)
                    .frame(width:450, height:800)
                    .ignoresSafeArea()
                Text(SacnneDdate)
                    .lineLimit(50)
                
                if SacnneDdate.isEmpty{
                    VStack{
                        ScanTextField("Scan", text: $SacnneDdate)
                            .padding(.leading, 200)
                            .background(Rectangle()
                                .cornerRadius(15)
                                .frame(width: 150, height: 50 )
                      
                                .foregroundColor(Color("oo")))
                          }
                    
                        if !SacnneDdate.isEmpty{
                            Button {
                                SacnneDdate = ""
                            } label: {
                                Text("Scan again")
                                
                            }
                        }

                    }
                        
//                    .accessibility(label: Text("scan"))

                    
//                    .background(Color(#colorLiteral(red: 0.6815994978, green: 0.908850491, blue: 0.8342422843, alpha: 1) ))
//                    .ignoresSafeArea()
                }                    .accessibility(label: Text("scan"))
                .navigationTitle("Scan Anything")

            }
            .ignoresSafeArea()
        }
    }
    struct TextEditorScreen_Previews: PreviewProvider {
        static var previews: some View {
            TextEditorScreen()
        }
    }
    


