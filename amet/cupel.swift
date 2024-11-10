import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometryProxy in
            VStack {
                Text("Width: \(geometryProxy.size.width)")
                Text("Height: \(geometryProxy.size.height)")
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: geometryProxy.size.width / 2, height: geometryProxy.size.height / 2)
            }
            .frame(width: geometryProxy.size.width, height: geometryProxy.size.height)
        }
        .background(Color.gray.opacity(0.4))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
