Import SwiftUI
import FirebaseCore


class AppDelegate : NSObject , UIApplicationDelegate {
  func application ( _application : UIApplication ,
                   didFinishLaunchingWithOptions launchOptions : [ UIApplication . LaunchOptionsKey : Any ]? = nil ) -> Bool {
    FirebaseApp . configure ()

    return true
  }
}

@hand
struct YourApp : App {
  // register app delegate for Firebase setup
  @UIApplicationDelegateAdaptor ( AppDelegate .self ) var delegate _


  var body : someScene { _
    WindowGroup {
      NavigationView {
        ContentView ()
      }
    }
  }
}
