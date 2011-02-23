from PyQt4 import QtCore, QtGui
import customizeVCDAT
import graphicsMethodsWidgets

class QEditorGraphicsMethodsWidget(QtGui.QWidget):
    def __init__(self,ptype,parent=None):
        QtGui.QWidget.__init__(self,parent)
        self.parent=parent
        self.root=parent.root
        layout = QtGui.QVBoxLayout()

        gmnm = str(parent.gms.gmList.currentItem().text())
        if ptype == "Boxfill":
            self.widget = graphicsMethodsWidgets.QBoxfillEditor(parent=self,gm = gmnm)
        elif ptype == "Isofill":
            self.widget = graphicsMethodsWidgets.QIsofillEditor(parent=self,gm = gmnm)
        elif ptype == "Isoline":
            self.widget = graphicsMethodsWidgets.QIsolineEditor(parent=self,gm = gmnm)
        elif ptype == "Meshfill":
            self.widget = graphicsMethodsWidgets.QMeshfillEditor(parent=self,gm = gmnm)
        if gmnm == "default":
            self.widget.widget().setEnabled(False)
            parent.editorTab.widget(1).widget().setEnabled(False)

        layout.addWidget(self.widget)

        self.error = QtGui.QErrorMessage(parent=self)
        layout.addWidget(self.error)

        self.setLayout(layout)
        self.ptype = ptype
        

    def applyChanges(self):
        if self.widget.gm.name == "default":
            return
        try:
            self.widget.applyChanges()
            diff = self.widget.changesString()
            self.root.record(diff)
        except Exception,err:
            st = "Error Applying Changes On %s graphic method: %s\n%s" % (self.ptype,self.widget.gm.name,err)
            self.error.showMessage(st)


    def previewChanges(self):
        self.widget.applyChanges()

    def discardChanges(self):
        self.widget.restoreOriginalValues()
        