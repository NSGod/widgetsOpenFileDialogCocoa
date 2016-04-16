widgetsOpenFileDialogCocoa
===========================

This is a sample Qt widget app (intended for OS X) that shows how to call into Cocoa's `NSOpenPanel` class to allow the user to browse inside bundles (or packages) to select their contents.

A sample directory named `fakeBundle.component` is included with the project. This will be treated as a bundle/package in OS X. Inside this directory are 2 files: `fake.mov` and `fake.mts`. This sample shows how you can browse inside the `fakeBundle.component` and choose the files in the `NSOpenPanel`.
