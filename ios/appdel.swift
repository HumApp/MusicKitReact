//
//  appdel.swift
//  applemusic
//
//  Created by Olivia Oddo on 8/12/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {
  // MARK: Properties
  
  var window: UIWindow?
  
  /// The instance of `AppleMusicManager` which handles making web service calls to Apple Music Web Services.
  var appleMusicManager = AppleMusicManager()
  
  /// The instance of `AuthorizationManager` which is responsible for managing authorization for the application.
  lazy var authorizationManager: AuthorizationManager = {
    return AuthorizationManager(appleMusicManager: self.appleMusicManager)
  }()

  /// The instance of `MediaLibraryManager` which manages the `MPPMediaPlaylist` this application creates.
  lazy var mediaLibraryManager: MediaLibraryManager = {
    return MediaLibraryManager(authorizationManager: self.authorizationManager)
  }()


  
  
}

