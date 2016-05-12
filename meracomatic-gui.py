#!/usr/bin/env python
# This file is part of Merac-O-Matic.
#
# Merac-O-Matic is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# Merac-O-Matic is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with Merac-O-Matic.  If not, see <http://www.gnu.org/licenses/>.

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
