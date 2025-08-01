# Updating `Package.swift` for Wunderkind iOS SDK

When a new version of the Wunderkind iOS SDK is released, follow these steps to update your `Package.swift` file:

## Steps

1. **Get the New SDK URL and Checksum**
   - Obtain the new SDK `.zip` file URL from the Wunderkind release notes or documentation.
   - Download the `.zip` file to your local machine.
   - Run the following command in your terminal to get the checksum:
     ```sh
     swift package compute-checksum <PATH_TO_ZIP_FILE>
     ```
   - Copy the resulting checksum.

2. **Update the `url` and `checksum` Fields**
   - Open your `Package.swift` file.
   - Locate the `.binaryTarget` section under `targets`.
   - Replace the existing `url` value with the new SDK URL.
   - Replace the existing `checksum` value with the new checksum.

   Example:
   ```swift
   .binaryTarget(
       name: "Wunderkind",
       url: "https://storage.googleapis.com/wunderkind-ios-sdk/<NEW_VERSION>.zip",
       checksum: "<NEW_CHECKSUM>"
   )
   ```

3. **Create a Git Tag for the SDK Version**
   - After updating and committing your changes, create a tag matching the SDK version:
     ```sh
     git tag <NEW_VERSION>
     git push origin <NEW_VERSION>
     ```
   - This helps others reference the exact SDK version in your repository.

---

## How to Use Wunderkind SDK with Swift Package Manager

1. **Add the Package to Your Project**
   - In Xcode, go to **File > Add Packages...**
   - Enter the URL of this repository. 
      `https://github.com/sak-wknd-sdk/public-wunderkind-mobile-sdk.git`
   - Select the desired version or branch.

2. **Import Wunderkind in Your Code**
   ```swift
   import Wunderkind
   ```

3. **Start Using the SDK**
   - Follow the Wunderkind documentation for initialization and usage in your app.

**Note:**  
Make sure your deployment target is iOS 11 or higher, as specified