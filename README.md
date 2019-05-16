# FBLoginGodot
This project contain compiled binary that include facebook module for ios only. 

**NOTE:-** I used xcode 10.1 with developer account, Godot Engine 3.1 Stable and Godot Source Code Stable 3.1. Facebook login will if you selecte **Log In with Phone Number or Email Address** option. If you select **Log In with the Facebook App** in login page then your application received login cancelled error.(Its a bug, Work is in progress) 


**Module Link : ** [Here](https://github.com/atologist-pratik/FBLoginDemo)


You can download bindary from below Link.

[iphone.zip](https://drive.google.com/file/d/1uDnNgVjqdMfHbPJjMuZFejQVbg-SVK8f/view?usp=sharing)
 
 **MacOS** : Copy iphone.zip in `/Library/Application\ Support/Godot/templates/3.1.stable`
 
 
 Above bindary is for debug only. I haven't compile facebook module for release version.


`For Code check above ** Login.gd ** file`




**After You Export Your Project:**

1. Follow [this](https://github.com/atologist-pratik/CustomBuildForGodot#export-project) step From step 3 to step 10.
2. Copy Bolts.framework, FBSDKCoreKit.framework, FBSDKLoginKit.framework and FBSDKShareKit.framework in you project folder.[Image](https://imgur.com/jT7EFHr)
3. In Xcode, Select `Target>Build Phases>Link Binart with Libraries` add above framework. (Select + button, Add Other)
4. In Build `Settings > Other Linker Flags` set `-ObjC`
5. Add Below settings in your info.plist file, you will get this from FB developer account.

```
<key>LSApplicationQueriesSchemes</key>
<array>
  <string>fbapi</string>
  <string>fb-messenger-share-api</string>
  <string>fbauth2</string>
  <string>fbshareextension</string>
</array>
<key>CFBundleURLTypes</key>
<array>
  <dict>
  <key>CFBundleURLSchemes</key>
  <array>
    <string>fb223***AppID****565</string>
  </array>
  </dict>
</array>
<key>FacebookAppID</key>
<string>223***AppID****565</string>
<key>FacebookDisplayName</key>
<string>GodotLogin</string>

```
**NSAppTransportSecurity**
```
<key>NSAppTransportSecurity</key>
	<dict>
		<key>NSAllowsArbitraryLoads</key>
		<true/>
	</dict>
```



