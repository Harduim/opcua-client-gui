# Simple OPC-UA GUI client

Forked from:

- <https://github.com/FreeOpcUa/opcua-widgets>
- <https://github.com/FreeOpcUa/opcua-client-gui>

Written using freeopcua python api and pyqt. Most needed functionalities are implemented including
subscribing for data changes and events, write variable values listing attributes and references,
and call methods. PR are welcome for any whished improvements

It has also a contextual menu with a few useful function like putting the mode id in clipboard or the
entire browse path which can be used directly in you program:
client.nodes.root.get_child(['0:Objects', '2:MyNode'])

![Screenshot](/screenshot.png?raw=true "Screenshot")

What works:

- connecting and disconnecting
- browsing with icons per node types
- showing attributes and references
- subscribing to variable
- available on pip: sudo pip install opcua-client
- remember connections and show connection history
- subscribing to events
- write variable node values
- gui for certificates
- gui for encryption
- call methods
- plot method values
- remember last browsed path and restore state

TODO (listed after priority):

- detect lost connection and automatically reconnect
- gui for logging with certificate or user/password (can currently be done by writing them in uri)
- Maybe read history
- Something else?

## How to Install  

*Note: PyQT 5 is required.

### Linux

1. Make sure python and python-pip is installed  
2. `pip3 install opcua-client`  
3. Run with: `opcua-client`  
