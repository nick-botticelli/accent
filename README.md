# Accent (rootless fork)
A fork of Accent to support rootless jailbreaks (i.e., Dopamine).

I do not have much experience with Theos, as such, I could only get this to compile
on my macOS environment by using the latest Theos (as of this commit) and running the
following command:

`cd $THEOS/sdks/iPhoneOS14.5.sdk/System && grep -rl "(null)" . | xargs sed -i "" -e "s/(null)/ios/g"`

* Note: You must setup Theos [as described here](https://theos.dev/docs/installation-macos).
* Note: Exlcuded app support is currently missing due to removed `AppList` dependency.
