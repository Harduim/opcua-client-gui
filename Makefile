all:
	pyuic5 src/opcua_client/mainwindow_ui.ui -o src/opcua_client/mainwindow_ui.py
	pyuic5 src/opcua_client/connection_ui.ui -o src/opcua_client/connection_ui.py
	pyrcc5 src/opcua_widgets/resources.qrc -o src/opcua_widgets/resources.py
run:
	PYTHONPATH=$(shell pwd)
	python3 app.py
edit:
	qtcreator src/opcua_client/mainwindow_ui.ui
