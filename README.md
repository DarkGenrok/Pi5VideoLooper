# Simple Pi Video Looper

## Contents
- [Introduction](#introduction)
- [Setup](#setup)
    - [Download](#download)
    - [Dependencies](#dependencies)
    - [Installation](#installation)
- [Usage](#usage)

## Introduction
This is an extremely simple Pi video looper that utilizes VLC for compaibility with newer Pi hardware. It uses the default pi user. 

Accepted video formats are:
- .mp4
- .avi
- .mov
- .mkv
- .flv
- .wmv
- .webm

## Setup
### Download
Clone this repo to <code>/home/pi</code> directory:

```
cd /home/pi
git clone https://github.com/DarkGenrok/SimplePiVideoLooper.git
```

### Dependencies
You will need to ensure your Pi boots to terminal at startup instead of the GUI. 

You will need to ensure that vlc is installed on your Pi.

``` bash
vlc --version
```

You can install it by running the following command:

``` bash
sudo apt-get install vlc
```

### Installation
To install the video looper, run the [install.sh](/install.sh) script:

``` bash
cd /home/pi/SimplePiVideoLooper
sudo bash ./install.sh
```

After installing the video looper, the Pi will reboot.

## Usage
Using the video looper:

1. Copy the compatible video files to the root of a USB.
2. Connect the USB to the Pi and reboot.

When booted, the Pi will copy all video files on the USB drive (see [introduction](#introduction) for accepted file types) to a playlist on the Pi.  You will get a 10 second countdown before the video playback begins looping.
