# RickAndMorty
## [Build FULL iOS App in Swift (Rick & Morty | 2023) – Part 1](https://www.youtube.com/watch?v=EZpZDuOAFKE)

### Set up MVVM Folders

<img width="297" alt="スクリーンショット_2023_03_27_12_07" src="https://user-images.githubusercontent.com/47273077/227831156-340f5d23-0ec8-45c3-92de-49e30ef85a10.png">

### Initialize Tabbar and Set up Tabbar Controller along with Model classes

<img width="300" alt="スクリーンショット 2023-03-27 13 18 10" src="https://user-images.githubusercontent.com/47273077/227839804-433e3e41-6617-4c33-83ae-f983e2c61775.png">

RMTabbarController.swift
```swift
import UIKit

class RMTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }

}

```

SceneDelegate.swift
```swift
class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let vc = RMTabbarController()
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = vc
        window.makeKeyAndVisible()
        self.window = window
    }
```

### setUpTabs
<img width="300" alt="スクリーンショット 2023-03-27 13 32 26" src="https://user-images.githubusercontent.com/47273077/227841471-a3fbdc52-8987-49d2-8ee6-ea49084e845f.png">

```swift
final class RMTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setUpTabs()
    }
    
    private func setUpTabs() {
        let charactersVC = RMCharacterViewController()
        let locationsVC = RMLocationViewController()
        let episodesVC = RMEpisodeViewController()
        let settingsVC = RMSettingViewController()
        
        charactersVC.title = "Characters"
        locationsVC.title = "Locations"
        episodesVC.title = "Episodes"
        settingsVC.title = "Settings"
        
        let nav1 = UINavigationController(rootViewController: charactersVC)
        let nav2 = UINavigationController(rootViewController: locationsVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        setViewControllers(
            [nav1, nav2, nav3, nav4],
            animated: true
        )
    }
```
