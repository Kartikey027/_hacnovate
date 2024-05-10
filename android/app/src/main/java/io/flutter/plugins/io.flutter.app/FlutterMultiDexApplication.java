package io.flutter.app;

import android.content.Context;
import androidx.multidex.MultiDex;

public class FlutterMultiDexApplication extends FlutterApplication {
  @Override
  protected void attachBaseContext(Context base) {
    super.attachBaseContext(base);
    MultiDex.install(this);
  }
}
