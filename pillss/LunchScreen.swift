//
//  LunchScreen.swift
//  pillss
//
//  Created by lujain mohammed on 19/06/1444 AH.
//


import SwiftUI
enum AnimationState{
    case normal
    case compress
    case expend
}
struct LaunchScreenView: View {
    
    @State private var isActive = false
    @State private var animationState: AnimationState  = .normal
    func calculate() -> Double{
        switch animationState {
        case .normal:
            return 0.2
        case .compress:
            return 0.08
        case .expend:
            return 0.6
        }
    }
    
    var body: some View {
        if isActive{
            Onbording()
        }else {
            ZStack{
                
                VStack{
                    Image("7")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(calculate())
                }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color("c"))
                
            }
            
            .onAppear(){
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    withAnimation(.spring()) {
                        animationState = .compress
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            withAnimation(.spring()) {
                                animationState = .expend
                                withAnimation(.interpolatingSpring(mass: 1.0, stiffness: 100.0, damping: 10.0, initialVelocity: 0)){
                                    
                                }
                            }
                        }
                    }
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
                    self.isActive = true
                }
            }
        }
    }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenView()
    }
}
