all:
	pyuic5 src/opcua_client/mainwindow_ui.ui -o src/opcua_client/mainwindow_ui.py
	pyuic5 src/opcua_client/connection_ui.ui -o src/opcua_client/connection_ui.py
	pyrcc5 src/opcua_widgets/resources.qrc -o src/opcua_widgets/resources.py

run:
	PYTHONPATH=$(shell pwd)
	python3 app.py

edit:
	qtcreator src/opcua_client/mainwindow_ui.ui

format:
	ruff format src/; ruff check --fix src/

simulator:
	docker run --rm \
    -it \
    --name opcplc \
    -p 50000:50000 \
    -p 8080:8080 \
    mcr.microsoft.com/iotedge/opc-plc:2.12.4 --unsecuretransport --autoaccept --trustowncert --appcertstoretype=Directory
