FFIOSConvert
============

#### About
FFMpeg based script for video conversion to iOS devices format

---

#### Requirements
1. [Ruby]((https://www.ruby-lang.org)
2. [FFMpeg](http://ffmpeg.org/)

* OS X
Install [Brew](http://brew.sh/)
```
brew update
brew install ffmpeg
```

* Linux
In [Debian](www.debian.org)-based ([Ubuntu](http://www.ubuntu.com/), [Mint](http://www.linuxmint.com/))
```
sudo apt-get install ffmpeg
```
Other distributives should use their packet manager or build [FFMpeg](http://ffmpeg.org) from [source code](http://ffmpeg.org/download.html)

---


#### Installation
```
gem install ffiosconvert
```

---

#### Using
1. Open directory with video files
```
cd ~/Movies
```

2. Run converter
```
ffiosconvert [<WIDTHxHEIGHT>]
```

* default value is 640x360
* example: ffiosconvert 320x180

---
