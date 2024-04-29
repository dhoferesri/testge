//
//  ContentView.swift
//  testge
//
//  Created by Dominik Hofer on 26.04.24.
//

import SwiftUI
import ArcGIS

struct ContentView: View {
    var body: some View {
        EmptyView().task {
            let geometryEditor: GeometryEditor = {
                let geometryEditor = GeometryEditor()
                geometryEditor.start(withType: Polyline.self)
                geometryEditor.insertVertex(at: Point(latitude: 48.195343, longitude: 16.369302))
                return geometryEditor
            }()
        }
    }
}

#Preview {
    ContentView()
}
