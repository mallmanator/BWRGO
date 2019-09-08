<h2>What is BWRGO?</h2>
<br>
First, let's get the acronym out of the way:<br>
🔵 <b>B</b> - Blue <br>
⚪ <b>W</b> - White <br>
🔴 <b>R</b> - Red <br> 
🟢 <b>G</b> - Green <br>
🟠 <b>O</b> - Orange <br>
These are the standard chip colors used in Thursday night poker.<br><br>

BWRGO is an experimental digital currency used exclusively to fund and forever enshrine the legacy of Thursday night poker. Thursday night poker is famous for such titles as "Atlanta" and Cocktail Cove (a.k.a. tha cock) and yes even the controversial fame "Big A". More information can be found on these revolutionary games at https://mike.skott.us/2018/atlanta-cocktail-cove/

BWRGO uses peer-to-peer technology to operate with no central authority: managing transactions and issuing money are carried out collectively by the network. bwrgo Core is the name of open source software which enables the use of this currency.


For more information, as well as an immediately useable, binary version of
the BWRGO Core software, see https://github.com/swampcoin/bwrgo/releases

License
-------
BWRGO Core is released under the terms of the MIT license. See [COPYING](COPYING) for more
information or see https://opensource.org/licenses/MIT.

Development Process
-------------------
The `master` branch is regularly built and tested, but is not guaranteed to be
completely stable. [Tags](https://github.com/bwrgo-project/bwrgo/tags) are created
regularly to indicate new official, stable release versions of bwrgo Core.


BWRGO Currency Features
=============

* PoW X16R algorithm.
* Masternode System.
* Governance System.
* Super Block System.
* Mega Block System.
* DarkSend & InstantSend.
* Anonymous & Instant Transaction.


## Coin Specifications

| Specification | Value |
|:-----------|:-----------|
| Name | `BWRGO` |
| Currency | `BWRGO` |
| Total Supply | `25,000,000` |
| Block Size | `4MB` |
| Block Time | `1 Minute` |
| PoW Normal Reward | `5 BWRGO` |
| PoW Mega Reward | `200 BWRGO` |
| Masternode Collateral | `20,000 BWRGO` |
| Masternode Reward | `50% Of Block Reward` |
| Masternode Start | `Friday, July 12, 2019 3:00:00 AM` |
| Port | `9419` |
| RPC Port | `19419` |
| Masternode Fixed Port | `9419` |


## Block Rewards 

| Days | PoW Reward | Miner Reward | MN Reward |
|:-----------|:-----------|:-----------|:-----------|
| 1 | `5 BWRGO` | `5 BWRGO` | `None` |
| 2 | `20 BWRGO` | `20 BWRGO` | `None` |
| 3 - 7 | `100 BWRGO` | `100 BWRGO` | `None` |
| 8 - 15 | `100 BWRGO` | `50 BWRGO` | `50 BWRGO` |
| 16 | `75 BWRGO` | `37.5 BWRGO` | `37.5 BWRGO` |
| 17 | `50 BWRGO` | `25 BWRGO` | `25 BWRGO` |
| 18 | `25 BWRGO` | `12.5 BWRGO` | `12.5 BWRGO` |
| 19 | `10 BWRGO` | `5 BWRGO` | `5 BWRGO` |
| 20 ~ | `5 BWRGO` | `2.5 BWRGO` | `2.5 BWRGO` |



| Monthly Mega Block | PoW Reward | Miner Reward | MN Reward |
|:-----------|:-----------|:-----------|:-----------|
| Year 1 | `200 BWRGO` | `100 BWRGO` | `100 BWRGO` |
| Year 2 | `100 BWRGO` | `60 BWRGO` | `40 BWRGO` |
| Year 3 ~ | `None` | `None` | `None` |



Build BWRGO Wallet
----------

### Building for 64-bit Windows

The first step is to install the mingw-w64 cross-compilation tool chain. Due to different Ubuntu packages for each distribution and problems with the Xenial packages the steps for each are different.

Common steps to install mingw32 cross compiler tool chain:

    sudo apt install g++-mingw-w64-x86-64
    
Ubuntu Xenial 16.04 and Windows Subsystem for Linux

    sudo apt install software-properties-common
    sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu zesty universe"
    sudo apt update
    sudo apt upgrade
    sudo update-alternatives --config x86_64-w64-mingw32-g++ # Set the default mingw32 g++ compiler option to posix.
    
Once the tool chain is installed the build steps are common:

Note that for WSL the tragocoin Core source path MUST be somewhere in the default mount file system, for example /usr/src/tragocoin, AND not under /mnt/d/. If this is not the case the dependency autoconf scripts will fail. This means you cannot use a directory that located directly on the host Windows file system to perform the build.

The next three steps are an example of how to acquire the source in an appropriate way.

    cd /usr/src
    sudo git clone https://github.com/swampcoin/bwrgo.git
    sudo chmod -R a+rw BWRGO
    
Once the source code is ready the build steps are below.

    PATH=$(echo "$PATH" | sed -e 's/:\/mnt.*//g') # strip out problematic Windows %PATH% imported var
    cd depends
    make HOST=x86_64-w64-mingw32 -j4
    cd ..
    ./autogen.sh # not required when building from tarball
    CONFIG_SITE=$PWD/depends/x86_64-w64-mingw32/share/config.site 
    ./configure --prefix=`pwd`/depends/x86_64-w64-mingw32
    make

### Build on Ubuntu

    sudo apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils git cmake libboost-all-dev
    sudo apt-get install software-properties-common
    sudo add-apt-repository ppa:bitcoin/bitcoin
    sudo apt-get update
    sudo apt-get install libdb4.8-dev libdb4.8++-dev

    # If you want to build the Qt GUI:
    sudo apt-get install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler

    git clone https://github.com/swampcoin/bwrgo.git --recursive
    
    cd CHIPS

    # Note autogen will prompt to install some more dependencies if needed
    ./autogen.sh
    ./configure
    make -j4

### Build on OSX

The commands in this guide should be executed in a Terminal application.
The built-in one is located in `/Applications/Utilities/Terminal.app`.

#### Preparation

Install the OS X command line tools:

`xcode-select --install`

When the popup appears, click `Install`.

Then install [Homebrew](https://brew.sh).

#### Dependencies

    brew install cmake automake berkeley-db4 libtool boost --c++11 --without-single --without-static miniupnpc openssl pkg-config protobuf qt5 libevent imagemagick --with-librsvg

NOTE: Building with Qt4 is still supported, however, could result in a broken UI. Building with Qt5 is recommended.

#### Build BWRGO Core

1. Clone the tragocoin source code and cd into `tragocoin`

        git clone --recursive https://github.com/swampcoin/bwrgo.git
        cd BWRGO

2.  Build Tragocoin Core:

    Configure and build the headless BWRGO binaries as well as the GUI (if Qt is found).

    You can disable the GUI build by passing `--without-gui` to configure.

        ./autogen.sh
        ./configure
        make


### Run

Then you can either run the command-line daemon using `src/bwrgod` and `src/bwrgo-cli`, or you can run the Qt GUI using `src/qt/bwrgo-qt`

For in-depth description of Sparknet and how to use CHIPS for interacting with contracts, please see [sparknet-guide](doc/sparknet-guide.md).


### Mining

Method 1

Headlesss - ./chips-cli generate 1
    Change 1 to the number of blocks you want to attempt to mine. 

QT - Go to Help --> Debug COnsole and enter generate 1
    Change 1 to the number of blocks you want to attempt to mine.
    
Method 2

Create an CHIPS Wallet. Setup your chips.conf file. download miner software (cpuminer)

Example commandline for cpuminer is:

./cpuminer -a x16r -o http://127.0.0.1:37001/ -u rpcUserXX -p rpcPasswprdXX --coinbase-add=TmmDpEvmgrxxxxxxxxxxxxxxxxxxxxxxx --no-getwork --debug

Coinbase address is the wallet address you would like the reward to goto. Debug is always helpful.


### Building a masternode

Setting up a masternode requires a basic understanding of Linux and blockchain technology, as well as an ability to follow instructions closely. It also requires regular maintenance and careful security. Full guide instructions setup : https://github.com/swampcoin/bwrgo/doc/masternode_setup_guide.txt


Development Process
-------------------

The `master` branch is regularly built and tested, but is not guaranteed to be
completely stable. [Tags](https://github.com/mallmanator/CHIPS/tags) are created
regularly to indicate new official, stable release versions of Tragocoin.

The contribution workflow is described in [CONTRIBUTING.md](CONTRIBUTING.md).


Testing
-------

Testing and code review is the bottleneck for development; we get more pull
requests than we can review and test on short notice. Please be patient and help out by testing
other people's pull requests, and remember this is a security-critical project where any mistake might cost people
lots of money.

### Automated Testing

Developers are strongly encouraged to write [unit tests](src/test/README.md) for new code, and to
submit new unit tests for old code. Unit tests can be compiled and run
(assuming they weren't disabled in configure) with: `make check`. Further details on running
and extending unit tests can be found in [/src/test/README.md](/src/test/README.md).

There are also [regression and integration tests](/qa) of the RPC interface, written
in Python, that are run automatically on the build server.
These tests can be run (if the [test dependencies](/qa) are installed) with: `qa/pull-tester/rpc-tests.py`

### Manual Quality Assurance (QA) Testing

Changes should be tested by somebody other than the developer who wrote the
code. This is especially important for large or high-risk changes. It is useful
to add a test plan to the pull request description if testing the changes is
not straightforward.

## License

MIT License

Copyright (c) 2019 Tragocoin

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

=======
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
