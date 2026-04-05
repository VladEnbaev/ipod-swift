import SwiftUI
import ComposableArchitecture

struct MainScreen: View {
  
  let store: StoreOf<PodFeature>
  
  var body: some View {
    GeometryReader { proxy in
      let width = proxy.size.width
      let height = proxy.size.height
      
      let baseWidth: CGFloat = 393.0
      let baseHeight: CGFloat = 730.0
      
      let scale = min(width / baseWidth, height / baseHeight)
      
      let displayWidth = 300 * scale
      let displayHeight = 230 * scale
      let wheelDiameter = 350 * scale
      let padding = 30 * scale
      let cornerRadius = 35 * scale
      let strokeWidth = 10 * scale
      
      VStack(alignment: .center, spacing: .zero) {
        WithPerceptionTracking {
          DisplayView(store: store)
            .frame(width: displayWidth, height: displayHeight)
            .padding(.bottom, padding)
            .padding(.top, padding)
        }
        
        ScrollWheelView(
          diameter: wheelDiameter,
          onButtonPress: { ScrollWheelEventsPublisher.shared.send(.buttonPressed($0)) },
          onScroll: { ScrollWheelEventsPublisher.shared.send(.scrolled($0)) }
        )
        .padding(.bottom, padding)
      }
      .frame(maxWidth: .infinity)
      .background(Color.Pod.caseColor, ignoresSafeAreaEdges: [])
      .overlay {
        RoundedRectangle(cornerRadius: cornerRadius)
          .stroke(
            LinearGradient(
              stops: [
                .init(color: Color(hex: "D9DADD"), location: 0),
                .init(color: Color(hex: "737475"), location: 0.5),
                .init(color: Color(hex: "AAAFB5"), location: 1)
              ],
              startPoint: .top,
              endPoint: .bottom
            ),
            lineWidth: strokeWidth
          )
      }
      .cornerRadius(cornerRadius)
      .padding(.vertical, padding)
      .frame(width: width, height: height, alignment: .center)
    }
    .background(.black)
    .onAppear {
      store.send(.initializeMenu)
    }
    .onReceive(ScrollWheelEventsPublisher.shared.events) { event in
      // iPod-like behavior: MENU closes the player screen.
      switch event {
      case let .buttonPressed(button):
        switch button {
        case .next:
          store.send(.player(.nextTrack))
        case .previous:
          store.send(.player(.previousTrack))
        case .play:
          store.send(.player(.togglePlayPause))
        default: break
        }
      default:
        break
      }
    }
  }
}

#Preview {
  MainScreen(store: .init(initialState: PodFeature.State()) {
    PodFeature()
  })
}
