//
//  ContentView.swift
//  pillss
//
//  Created by lujain mohammed on 15/06/1444 AH.
//

import SwiftUI
import CTScanText

struct ContentView: View {
@State private var SacnneDdate = ""

    var body: some View {
        VStack {
            ScanTextField("", text: $SacnneDdate)}

        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
