# iPod Classic for iOS

Bring the nostalgic magic of the iconic 2001 iPod Classic right to your modern iPhone. A faithful, pixel-perfect recreation of the beloved interface, complete with a beautifully functional click wheel and authentic haptic feedback.

![iOS](https://img.shields.io/badge/iOS-15+-blue.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)
![PRs Welcome](https://img.shields.io/badge/PRs-Welcome-brightgreen.svg)

<img width="400" alt="iPod App Screenshot" src="https://github.com/user-attachments/assets/2beb3cfe-afb0-4e9f-8adc-ce7ab77bc1ac" />

## Why You'll Love It

Experience the joy of dedicated music listening again. This isn't just a theme — it's a fully functional media player that integrates seamlessly with your iPhone's Apple Music library.

*   **Authentic Click Wheel**: Navigate your library using intuitive circular gestures, just like the original device. Accompanying haptic feedback makes it feel real.
*   **The Classic Interface**: A pixel-perfect recreation of the original monochrome menus, typography, and hierarchical navigation (`Music` → `Artists` → `Albums` → `Songs`).
*   **Full Media Integration**: Seamlessly plays tracks directly from your iPhone’s media library using Apple's official playback frameworks.
*   **Modern Magic**: Works flawlessly in the background, syncs with the iOS Control Center, and respects modern device form factors while maintaining the classic aspect ratio.

## Roadmap

Here are the key milestones that have been completed and what's coming next:

### Completed
*   [x] Basic UI structure and hierarchical navigation
*   [x] Working Click Wheel implementation with haptic feedback
*   [x] Apple Music library integration
*   [x] Core media playback controls (Play, Pause, Volume, Seek, Skip)
*   [x] Background audio and Control Center support

### Planned
*   [ ] **Spotify Integration**: Connect your Spotify account to play your playlists and saved tracks seamlessly.
*   [ ] In-app settings for haptic intensity and wheel sensitivity.
*   [ ] Themes (Inverted colors, alternative models).
*   [ ] Classic mini-games like Brick.

## Installation (via AltStore)

Since this app mimics an Apple product, it cannot be hosted on the official App Store. However, you can easily sideload it onto your physical device using **AltStore**.

### Prerequisites
1. Download and install [AltStore](https://altstore.io/) on your Mac/Windows PC and iPhone.
2. Download the latest `.ipa` release file from the [Releases](../../releases) page of this repository.

### Steps
1. Open **AltStore** on your iPhone.
2. Navigate to the **My Apps** tab.
3. Tap the **+** icon in the top left corner.
4. Select the downloaded `iPod.ipa` file.
5. Wait for the installation to finish. The iPod app will now appear on your home screen!

*(Note: You will need to refresh the app every 7 days via AltStore if you are using a free Apple Developer account).*

## For Developers

Curious about how it works under the hood? The app is built using a state-of-the-art iOS stack, serving as a robust example of modern app architecture:

*   **UI Framework**: SwiftUI
*   **Architecture**: The Composable Architecture (TCA)
*   **Audio & Media**: AVFoundation, MediaPlayer Framework
*   **Concurrency**: Swift async/await

### Building from Source
1. Clone the repository: `git clone https://github.com/v-enbaev/iPod.git`
2. Open the project in **Xcode 15+**.
3. Select your Personal Development Team in the "Signing & Capabilities" tab.
4. Build and run on your simulator or physical device (iOS 15.0+ required).

## Contributing

We welcome contributions from the community! From bug fixes to entirely new features, your help makes the iPod Classic experience even better.

### How to Contribute
1. **Fork** the repository.
2. **Create a branch** for your feature or bugfix (`git checkout -b feature/amazing-feature`).
3. **Commit** your changes (`git commit -m 'Add amazing feature'`).
4. **Push** to the branch (`git push origin feature/amazing-feature`).
5. **Open a Pull Request** against the `main` branch.

Whether you want to add themes, iconic games like Brick, or improve the UI—jump right in!

## License & Credits

This project is available under the MIT license.

*   **Disclaimer**: This project is for educational and nostalgic purposes only. All iconic designs, trademarks, and UI concepts belong to Apple Inc.
*   Built with [The Composable Architecture](https://github.com/pointfreeco/swift-composable-architecture) by Point-Free.
*   Special thanks to the Open Source Swift community for excellent tools and resources.
