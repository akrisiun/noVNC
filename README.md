## noVNC FORK


## noVNC: HTML VNC Client Library and Application

[![Build Status](https://travis-ci.org/novnc/noVNC.svg?branch=master)](https://travis-ci.org/novnc/noVNC)

### Description

noVNC is both a HTML VNC client JavaScript library and an application built on
top of that library. noVNC runs well in any modern browser including mobile
browsers (iOS and Android).
We have a [wiki](https://github.com/novnc/noVNC/wiki/) with lots of
helpful information.
noVNC has a sister project [websockify](https://github.com/novnc/websockify) that provides a simple such
proxy.

### News/help/contact

The project website is found at [novnc.com](http://novnc.com).
Notable commits, announcements and news are posted to
[@noVNC](http://www.twitter.com/noVNC).

If you are a noVNC developer/integrator/user (or want to be) please join the
[noVNC discussion group](https://groups.google.com/forum/?fromgroups#!forum/novnc).

Please check our [contribution guide](https://github.com/novnc/noVNC/wiki/Contributing) though.

### Features

* Supports all modern browsers including mobile (iOS, Android)
* Supported VNC encodings: raw, copyrect, rre, hextile, tight, tightPNG
* Supports scaling, clipping and resizing the desktop
* Local cursor rendering
* Clipboard copy/paste
* Translations
* Licensed mainly under the [MPL 2.0](http://www.mozilla.org/MPL/2.0/), see
  [the license document](LICENSE.txt) for details

### Screenshots

Running in Firefox before and after connecting:

<img src="http://novnc.com/img/noVNC-1-login.png" width=400>&nbsp;
<img src="http://novnc.com/img/noVNC-3-connected.png" width=400>

See more screenshots
[here](http://novnc.com/screenshots.html).

### Browser Requirements

noVNC uses many modern web technologies so a formal requirement list is
not available. However these are the minimum versions we are currently
aware of:

* Chrome 49, Firefox 44, Safari 10, Opera 36, IE 11, Edge 12

### Server Requirements

noVNC follows the standard VNC protocol, but unlike other VNC clients it does
require WebSockets support. Many servers include support (e.g.
[x11vnc/libvncserver](http://libvncserver.sourceforge.net/),
[QEMU](http://www.qemu.org/), and
[MobileVNC](http://www.smartlab.at/mobilevnc/)), but for the others you need to
use a WebSockets to TCP socket proxy. 
noVNC has a sister project
[websockify](https://github.com/novnc/websockify) that provides a simple such
proxy.


### Quick Start

* Use the launch script to automatically download and start websockify, which
  includes a mini-webserver and the WebSockets proxy. The `--vnc` option is
  used to specify the location of a running VNC server:

    `./utils/launch.sh --vnc localhost:5901`

* Point your browser to the cut-and-paste URL that is output by the launch
  script. Hit the Connect button, enter a password if the VNC server has one
  configured, and enjoy!


### Integration and Deployment

Please see our other documents for how to integrate noVNC in your own software,
or deploying the noVNC application in production environments:

* [Embedding](docs/EMBEDDING.md) - For the noVNC application
* [Library](docs/LIBRARY.md) - For the noVNC JavaScript library


### Authors/Contributors

See [AUTHORS](AUTHORS) for a (full-ish) list of authors.  If you're not on
that list and you think you should be, feel free to send a PR to fix that.

* Core team:
    * [Joel Martin](https://github.com/kanaka)
    * [Samuel Mannehed](https://github.com/samhed) (Cendio)
    * [Peter Åstrand](https://github.com/astrand) (Cendio)
    * [Solly Ross](https://github.com/DirectXMan12) (Red Hat / OpenStack)
    * [Pierre Ossman](https://github.com/CendioOssman) (Cendio)

* Notable contributions:
    * UI and Icons : Pierre Ossman, Chris Gordon
    * Original Logo : Michael Sersen
    * tight encoding : Michael Tinglof (Mercuri.ca)

* Included libraries:
    * base64 : Martijn Pieters (Digital Creations 2), Samuel Sieb (sieb.net)
    * DES : Dave Zimmerman (Widget Workshop), Jef Poskanzer (ACME Labs)
    * Pako : Vitaly Puzrin (https://github.com/nodeca/pako)

Do you want to be on this list? Check out our
[contribution guide](https://github.com/novnc/noVNC/wiki/Contributing) and
start hacking!
