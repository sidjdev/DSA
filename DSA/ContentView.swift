//
//  ContentView.swift
//  DSA
//
//  Created by Sidharth J Dev on 16/08/23.
//

import SwiftUI

struct ContentView: View {
    let runner: AlgoRunner? = nil
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            let runner = AlgoRunner()
            runner.runAlgorithm(.tournamentWinners)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
