# A Github Actions pipeline for building TdLib

## About this repo

[TdLib](https://github.com/tdlib/td) is a Cross-platform library for building Telegram clients.

The simplest way to build `TDLib` is to use [TDLib build instructions generator](https://tdlib.github.io/td/build.html).

The build artefacts consist of OS-dependent libraries and a language API.

Out of all OSs and programming languages TdLib can be built for, this repo allows to build TdLib Windows and Linux binaries and a Java API.

## How to bild TdLib using this repo

1. Go to the [GitHub Actions](https://github.com/denisab85/telegram-restapi/actions) tab
2. Click on the "Run workflow" dropdown on the right and enter the parameters.
3. Click on the "Run workflow" button.

The binaries will be made available in the build artefacts on the Actions tab, while Java API will be published on [Maven Central](https://mvnrepository.com/artifact/ca.denisab85/tdlib).
