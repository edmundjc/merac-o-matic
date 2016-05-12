#!/usr/bin/env python

from gi.repository import Gtk
import subprocess

class Handler:
    def onDeleteWindow(self, *args):
        Gtk.main_quit(*args)
    def runNonsense(self, *args):
      global textarea, readbox
      readboxchecked = readbox.get_property('active')
      if readboxchecked:
	readboxchoice = "yes"
      else:
	readboxchoice = "no"
      output = subprocess.check_output(["./meracomatic.sh"])
      buffer = textarea.get_property('buffer')
      i = buffer.get_end_iter()
      buffer.insert(i, output)
      

   
builder = Gtk.Builder()
builder.add_from_file("meracomatic.glade")
builder.connect_signals(Handler())

window = builder.get_object("window1")
window.show_all()
textarea = builder.get_object("textview1")   

readbox = builder.get_object("read_box")


Gtk.main()