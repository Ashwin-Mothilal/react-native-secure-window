package com.reactnativesecurewindow

import android.view.WindowManager
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.bridge.ReactContextBaseJavaModule
import com.facebook.react.bridge.ReactMethod
import com.facebook.react.bridge.UiThreadUtil

class SecureWindowModule(reactContext: ReactApplicationContext) : ReactContextBaseJavaModule(reactContext) {

  override fun getName(): String {
    return "SecureWindow"
  }

  @ReactMethod
  fun changeSecureWindow(canEnableSecureWindow: Boolean) {
    if (canEnableSecureWindow) {
      UiThreadUtil.runOnUiThread {
        reactApplicationContext.currentActivity?.window?.setFlags(WindowManager.LayoutParams.FLAG_SECURE, WindowManager.LayoutParams.FLAG_SECURE)
      }
    } else {
      UiThreadUtil.runOnUiThread {
        reactApplicationContext.currentActivity?.window?.clearFlags(WindowManager.LayoutParams.FLAG_SECURE)
      }
    }
  }
}
