#     This program is free software: you can redistribute it and/or modify
#     it under the terms of the GNU General Public License as published by
#     the Free Software Foundation, either version 3 of the License, or
#     (at your option) any later version.
# 
#     This program is distributed in the hope that it will be useful,
#     but WITHOUT ANY WARRANTY; without even the implied warranty of
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#     GNU General Public License for more details.
# 
#     You should have received a copy of the GNU General Public License
#     along with this program.  If not, see <http://www.gnu.org/licenses/>.
intro=$(( ( RANDOM % 7 ) + 1 ))
body=$(( ( RANDOM % 24 ) + 1 ))
outro=$(( ( RANDOM % 9 ) + 1 ))
case $intro in
1) output="Spoken with the fanatical fervour that i have come to expect from the linux community... " ;;
2) output="Yet more delusion from the windows haters... ";;
3) output="More noise from the windows haters... ";;
4) output="You are delusional, ";;
5) output="You just hate windows, ";;
6) output="Your all windows haters, ";;
7) output=" ";;
esac
case $body in
1) output=$output"The data clearly shows that linux is on the decline... ";;
2) output=$output"All I hear is: \"no tux no bux\", \"+1\", \"i hate windows\", 3 months later and theres no port. ";;
3) output=$output"face it, linux is on the decline. ";;
4) output=$output"Windows plays \"all\" the games already, not 25%... ";;
5) output=$output"i have all consoles and a windows computer, i see a game i buy it i play it, now thats freedom. ";;
6) output=$output"Your all windows hating hipsters. ";;
7) output=$output"You just have to meet the system requirements, and thats windows. ";;
8) output=$output"Just install windows and stop making begging threads for inclusion ";;
9) output=$output"Stop begging for inclusion. ";;
10) output=$output"Stop spamming the forum with spam threads. ";;
11) output=$output"In order to play the game you need windows, ";;
12) output=$output"Your all delusional windows haters... ";;
13) output=$output"you all say: \"linux is the future\" \"windoze is dead\" you said that 25 years ago and 25 years later linux is still at 1% ";;
14) output=$output"linux is your choice, a choice which prevents you from playing this game. ";;
15) output=$output"its up to you to use the corect system, its not up to the developer to support inferiour gaming OSes when windows plays all games perfectly already ";;
16) output=$output"if you accept the limitations of your choice... there is no need to make a begging thread for inclusion ";;
17) output=$output"Your begging for inclusion is annoying, irrelevant and impotent, and they clutter the forum with noise. ";;
18) output=$output"Your all delusional windows hating hipsters who think linux is the future... ";;
19) output=$output"So much hate from the linux community as usual, ";;
20) output=$output"Linux is a self imposed limitation, windows is real freedom because it plays all the games... ";;
21) output=$output"it makes no difference to me whether a game is ported... ";;
22) output=$output"You all hate windows... ";;
23) output=$output"Stop hating on windows. ";;
24) output=$output"All you do is spam the forum with beging threads for inclusion... ";;
esac
case $outro in
1) output=$output"so stop begging for inclusion.";;
2) output=$output"Just get Windows.";;
3) output=$output"Windows is the gaming os anyway.";;
4) output=$output"The data shows that Linux is dying.";;
5) output=$output"Stop hating on windows.";;
6) output=$output"lol, you keep getting dumebr.";;
7) output=$output"Unless your one of those who belives in: Almost pregnant,";;
8) output=$output"Anything else is just noise from the Windows haters.";;
esac
echo $output
echo $output >> ~/meracomatic.txt
zenity --info --title="Merac-O-Matic v1.0 by Declan Hoare" --text="$output"