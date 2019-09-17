import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//        initRootViewController()
//        initNavigationRootViewController()
//        initRootSplitViewController()
//        initRootSplitViewControllerProgramatically()
        initRootSplitViewControllerProgramaticallyAll()
        return true
    }
    
    func initRootViewController() {
        window = UIWindow()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let rootViewController = storyboard.instantiateViewController(withIdentifier: "RootViewControllerIdentifier")
        let navigationController = UINavigationController(rootViewController: rootViewController)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
    
    func initNavigationRootViewController() {
        window = UIWindow()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let rootViewController = storyboard.instantiateViewController(withIdentifier: "NavigationRootViewControllerIdentifier")
        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()
    }
    
    func initRootSplitViewController() {
        window = UIWindow()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let rootViewController = storyboard.instantiateViewController(withIdentifier: "RootSplitViewController")
        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()
    }
    
    func initRootSplitViewControllerProgramatically() {
        window = UIWindow()
        let splitVC = UISplitViewController()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let rootViewController = storyboard.instantiateViewController(withIdentifier: "NavigationRootViewControllerIdentifier")
        splitVC.viewControllers = [rootViewController]
        window?.rootViewController = splitVC
        window?.makeKeyAndVisible()
    }
    
    func initRootSplitViewControllerProgramaticallyAll() {
        window = UIWindow()
        let splitVC = UISplitViewController()
        let master = UINavigationController(rootViewController: RootViewController())
        let detail = UINavigationController(rootViewController: RootViewController())
        splitVC.viewControllers = [master, detail]
        window?.rootViewController = splitVC
        window?.makeKeyAndVisible()
    }
}
