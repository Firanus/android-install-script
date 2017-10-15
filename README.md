# Android Install Script

A script to help automate the installation of the android development environment on a mac. 

### Installing

Points to note:

1. As of the time of upload, there are some customizations that need to be made to the Java version,
as `brew cask install java` installs Java 9, which the android-sdk does not currently support. Commands
to install Java 8 are included and commented out.
2. Install instructions for jenv are also included in the install script for managing multiple Java versions
3. There are a few further changes that need to be made once the installation is finished, namely, the following
needs to be added to your ~./bash_profile (or ~/.zshrc) file.

```
export ANT_HOME="/usr/local/opt/ant"
export MAVEN_HOME="/usr/local/opt/maven"
export GRADLE_HOME="/usr/local/opt/gradle"

export ANDROID_HOME="/usr/local/share/android-sdk"
export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"
export ANDROID_NDK_HOME="/usr/local/share/android-ndk"

export PATH="$ANT_HOME/bin:$PATH"
export PATH="$MAVEN_HOME/bin:$PATH"
export PATH="$GRADLE_HOME/bin:$PATH"

export PATH="$ANDROID_HOME/tools:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"
```

### Setting up an Android emulator

If you go about setting up an android emulator later on, there's one additional step you need to take when
following Google's steps (detailed here: https://developer.android.com/studio/run/managing-avds.html).

Namely, make sure before you install the AVD, you go into Android Studio's SDK manager (Tools -> Android -> SDK Manager)
and change the Android SDK location to point to the location detailed above, i.e. /usr/local/share/android-sdk

## Acknowledgments

* This was almost entirely based on the install script created by igorlamos, which you can 
find here: https://github.com/igorlamos/udemy-fastlane/blob/master/tools/install.sh
* Thanks to jenv to gcuisinier (https://github.com/gcuisinier/jenv)