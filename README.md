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

3. **Create a Git Tag for the SDK Version**
   - After updating and committing your changes, create a tag matching the SDK version:
     ```sh
     git tag <NEW_VERSION>
     git push origin <NEW_VERSION>
     ```
   - This helps others reference the exact SDK version in your repository.