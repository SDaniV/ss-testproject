## Prerequisites:

Use RVM in order to install Ruby (Recommended v.2.5.7) See https://rvm.io/rvm/install

## Install gems

1. Open command line window and run the following command:
`gem install bundler`

2. Navigate to the project root directory.

3. Install all of the required gems from Gemfile
`bundle install`

## Launch application

Open Genymotion, find device to run the tests against and start it. Wait for the emulator to be ready.
Run from command line `adb devices`. You should be able to see your device connected.

Start a simple server using Appium Desktop Application.
1. Open Appium
2. Go to Advanced section
3. Leave server address and server port by default. Mark Checkbox "Allow Session Override"
4. Start Server.


## How to execute tests:

Navigate to your project root directory and run:
`bundle exec cucumber features`

If you want to execute specific test you can specify a line where scenario starts
`bundle exec cucumber features\test.feature:10`

Also, you can run tests by tag:
`bundle exec cucumber --tags @valid`

## Note

Guide is for Windows Users. Some steps on other OSes may be slightly different.
