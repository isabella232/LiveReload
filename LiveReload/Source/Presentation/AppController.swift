import Cocoa

public class AppController {

    public let app: App

    public init(app: App) {
        self.app = app
    }


    // MARK: - Main Window

    private var isMainWindowControllerLoaded = false

    private lazy var mainWindowController: MainWindowController = { [unowned self] in
        self.isMainWindowControllerLoaded = true
        return MainWindowController()
    }()

    public var isMainWindowVisible: Bool {
        return isMainWindowControllerLoaded && mainWindowController.windowLoaded && mainWindowController.window!.visible
    }

    public func showMainWindow() {
        mainWindowController.showWindow(nil)
    }

}