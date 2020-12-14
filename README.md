<p align=center>
<img alt="Burpi" src="https://i.ibb.co/ySK3pHr/external-content-duckduckgo-com-removebg-preview.png"><br>
<img alt="GitHub repo size" src="https://img.shields.io/github/repo-size/rebl0x3r/burpsuite-pro-installation">
<img alt="Tool version" src="https://img.shields.io/badge/version-1.7-brightgreen">
<img alt="GitHub issues" src="https://img.shields.io/github/issues/rebl0x3r/burpsuite-pro-installation">
<img alt="GitHub Repo stars" src="https://img.shields.io/github/stars/rebl0x3r/burpsuite-pro-installation?style=social">
<img alt="Burpsuite" src="kali-burpsuite.ico" width=25 height=20>
<img alt="Bash" src="https://badges.frapsoft.com/bash/v1/bash.png">
<img alt="Open Source" src="https://badges.frapsoft.com/os/v1/open-source.png?v=103">
<a href="https://www.youtube.com/watch?v=Zc_zcqK9Cl0&feature=youtu.be"><img alt="YouTube Video Views" src="https://img.shields.io/youtube/views/Zc_zcqK9Cl0?style=social"></a><br>
<img alt="Version" src="https://img.shields.io/badge/BurpSuite%20Version-2020.11.3-important">
<img alt="Status" src="https://img.shields.io/badge/Cracking%20Status-Cracked-success">
<a href="https://t.me/burp_chat/"><img src="https://raw.githubusercontent.com/Patrolavia/telegram-badge/master/chat.svg" alt="Support chat"></a>
<a href="https://t.me//viperzcrew"><img src="https://raw.githubusercontent.com/Patrolavia/telegram-badge/master/follow.svg" alt="ViperZCrew Channel"></a>
</p>

<h1 align=center>Burpsuite Pro Installation</h1>

<hr>

<h2>Table Of Contents</h2>

* [General Information](#general-info)
* [Installation](#installation)
* [Download & Stuff](#download--stuff)
* [Disclaimer](#disclaimer)
* [Credits](#credits)
* [Social Media](#social-media)
* [Bug Report](#bug-report)

<hr>

<h2>General Information</h2>
  
  This is an script to automate the process of burpsuite pro installation.
  
  Our entire Burp-Suite team did their best to make this tutorial as user-friendly as possible.
  
  If there are any questions, at the end of "Credits" you will find our names for possible questions. 
  
  Have a nice day and happy bug hunting 💯
  
<hr>

<h2>Installation</h2>

  BurpSuite Pro requires <a href="https://jdk.java.net/">OpenJDK</a> v14+ to run.
  
  <h3>Linux</h3>
  
  We've added Z-Shell and BASH support.
  Either use bash or zsh, you can get your shell by:
  
  ```
  $ echo $SHELL
  /usr/bin/zsh
  
  $ bash
  
  $ echo $SHELL
  /usr/bin/bash
  
  $ zsh
  
  $ echo $SHELL
  /usr/bin/zsh
  
  $ exit # for quitting if you want back to the old shell session

  $ curl -LO https://raw.githubusercontent.com/rebl0x3r/burpsuite-pro-installation/main/installer.sh

  $ chmod +x installer.sh
  
  $ ./installer 
  ```
  
  Curl works for windows & linux and should be pre-installed.
    
  Make sure you are into the Burp Suite folder, otherwise you will get an error:
  ```
  $ ./installer.sh
  
    ____                  _____       _ __     
   / __ )__  ___________ / ___/__  __(_) /____ 
  / __  / / / / ___/ __ \\__ \/ / / / / __/ _ \
 / /_/ / /_/ / /  / /_/ /__/ / /_/ / / /_/  __/
/_____/\__,_/_/  / .___/____/\__,_/_/\__/\___/ 
                /_/                            
    ____           __        ____         
   /  _/___  _____/ /_____ _/ / /__  _____
   / // __ \/ ___/ __/ __ `/ / / _ \/ ___/
 _/ // / / (__  ) /_/ /_/ / / /  __/ /    
/___/_/ /_/____/\__/\__,_/_/_/\___/_/     
                                          
                                    @mrblackx




[*] Well you are running the script as common user, please wait.
[*] xterm found, continue

WARNING: apt does not have a stable CLI interface. Use with caution in scripts.

[✗] Not found BurpSuiteLoader_v2020.11.3.jar
  ```
  
<h3>Windows</h3>

  For window, we need openjdk aswell you can donwload it from here:<br>
  
  
  * [Java JDK (13.0.2)](https://www.filehorse.com/download-java-development-kit-64/46499/download/)
  
  
  <img alt="1. Step" src="https://img.shields.io/badge/Step-1-blueviolet"/>  **Download JavaJDK and install jdk-13.0.2_windows-x64_bin.exe** <br />
  
  
  <img alt="2. Step" src="https://img.shields.io/badge/Step-2-blueviolet"/>  **Search** <code>environment</code> **in the Windows search bar. You will see a match for** <code>Edit the system environment variables</code>**. Open it and then click** <code>Environment Variables</code> **button in the bottom.<br />**
  
  
  <img alt="3. Step" src="https://img.shields.io/badge/Step-3-blueviolet"/>  **Under the System variables tab, click** <code>New</code> **and add the following variables:**
  
<h4>Variable 1</h4>
  
  | Variable | Name |
   | ------ | ------ |
   | Name | CLASSPATH | 
   | Value | C:\Program Files\Java\jdk-13.0.2\lib\*.jar
  
  Click <code>OK</code>. Then click <code>New</code> again and add another variable:

<h4>Variable 2</h4>

  | Variable | Name |
   | ------ | ------ |
   | Name | JAVA_HOME | 
   | Value | C:\Program Files\Java\jdk-13.0.2 |

  Finally, double click the <code>Path</code> variable and click <code>New</code>. Add the following path:
  <code>C:\Program Files\Java\jdk-13.0.2\bin</code>
  
  Click OK and close Variables Window.<br />
  
  
  <img alt="4. Step" src="https://img.shields.io/badge/Step-4-blueviolet"/>  **Now extract the downloaded** <code>BurpSuite_Pro_2020.11.3.zip</code> **file.** <br />
  
   Use the password: <code>311138</code> if prompted. You will see three <code>.jar</code> files and one <code>.txt</code> file inside.
   
   In the same folder:
   
   Press and hold <code>Shift</code> key and <code>right click</code> on the screen.
   
   Click open <code>Command Prompt</code> or <code>Windows Powershell</code> window here.
    
   Paste and run the following command:
  
   <code>java -javaagent:BurpSuiteLoader_v2020.11.3.jar -noverify -jar burpsuite_pro_v2020.11.3.jar</code>

   Follow the instructions to install Burp Suite.
   When you reach the License activation page, open a new <code>Command Prompt</code> window again in the same folder and run the following command:
   
   <code>java -jar burploader-old.jar</code>

   Copy the text in License box and paste it in your installation window and hit Next.
   
   Select Manual Activation, copy the Activation Request key and paste it in the above shown window to get the Activation Response key.
   
   Paste the Response key in the installation window and you are done.<br />


  <img alt="5. Step" src="https://img.shields.io/badge/Step-5-blueviolet"/>  **How to open the installed Burp Suite Pro?**
  
  There are 2 methods to make burpsuite pro executeable easily. Before you start anything, just go into the burpsuite folder(windows)
  
  <img alt="method-2" src="https://img.shields.io/badge/Method-1-success"> Easy Method : <code>curl</code>
  
   Press and hold <code>Shift</code> key and <code>right click</code> on the screen.
   
   Click open <code>Command Prompt</code> or <code>Windows Powershell</code> window here.
    
   Paste and run the following command:
   <code> curl -LO "https://raw.githubusercontent.com/Dejavu666/burpsuite-pro-installation-win10/main/burpsuite.bat" </code>
  
   You should have a new file called <code>burpsuite.bat</code>, execute it and burpsuite will start immediately.
  
  Thanks to @dejavu666
  
  <img alt="method-2" src="https://img.shields.io/badge/Method-2-success"> Difficult Method : Making Own <code>burpsuite.bat</code> 
  
  Search <code>Notepad</code> in the Windows search bar, open it and paste the following command:
  
  <code>java -javaagent:BurpSuiteLoader_v2020.11.3.jar -noverify -jar burpsuite_pro_v2020.11.3.jar</code>

   Go to <code>File > Save As...</code> and open the folder you extracted earlier.
   
   Save the file there as: <code>BurpLoader.bat</code>.
   
   Remember to select <code>All Files</code> in the <code>Save as type</code> option.

  <hr><br>
  Now whenever you want to open Burp Suite, just double click on your BurpLoader.bat file.

  Source : [https://techaware.netlify.app/posts/burp-suite-pro/](https://techaware.netlify.app/posts/burp-suite-pro/)
  
  I updated the commands & download just download the file from down below.

<hr>

<h2>Download & Stuff</h2>
  
  To download the BurpSuite Professional Version, we have added 2 Download Links:
  | Name/Platform | Link |
  | ------ | ------ |
  | Google Drive | [https://drive.google.com/file/d/1ziIQckepiyG43gVxjfCKKeQD8AmYaQ-c/view?usp=sharing](https://drive.google.com/file/d/1ziIQckepiyG43gVxjfCKKeQD8AmYaQ-c/view?usp=sharing) |
  | Telegram | [https://t.me/burp_chat/14634](https://t.me/burp_chat/14634) |
  | Password | 311138 |
  | Video Tutorial | [https://www.youtube.com/watch?v=Zc_zcqK9Cl0](https://www.youtube.com/watch?v=Zc_zcqK9Cl0) |
  | For Problems | [https://t.me/burp_chat/](https://t.me/burp_chat/) |
  | BurpSuite Course | [https://drive.google.com/drive/folders/1dgu4hq23Lk5Hxeku2AMQV8E57bJKbtIG](https://drive.google.com/drive/folders/1dgu4hq23Lk5Hxeku2AMQV8E57bJKbtIG) |
  | BurpSuite Web Security | [https://portswigger.net/web-security](https://portswigger.net/web-security) |
  | BurpSuite 30 Tips | [http://b1twis3.ca/burpsuite-30-pro-tips/](http://b1twis3.ca/burpsuite-30-pro-tips/) |
  | BurpSuite Extension #1 | [https://github.com/PortSwigger/sri-check](https://github.com/PortSwigger/sri-check) |
  | BurpSuite Extension #2 | [https://github.com/PortSwigger/similar-request-excluder](https://github.com/PortSwigger/similar-request-excluder) |
  | BurpSuite Extension Developing Tutorial | [https://github.com/doyensec/burpdeveltraining](https://github.com/doyensec/burpdeveltraining) |
  | BurpSuite Cracking Re-Captcha | [https://portswigger.net/research/cracking-recaptcha-turbo-intruder-style](https://portswigger.net/research/cracking-recaptcha-turbo-intruder-style) |
  | BurpSuite 403 Bypass | [https://github.com/sting8k/BurpSuite_403Bypasser](https://github.com/sting8k/BurpSuite_403Bypasser) |
  | BurpSuite Extensions | [https://github.com/wagiro/BurpBounty](https://github.com/wagiro/BurpBounty) |
  
<hr>

<h2>Disclaimer</h2>

  Use this tool for educational purposes only .🕵️‍♂️
  If you do any illegal attacks, i am not responsible for your tasks.
  Use this tool correctly, and do not re-upload it on your github repository without permissions.
  
<hr>
  
<h2>Credits</h2>
  
  Channels On Telegram With Nice Stuff
  
  | Channel | Link |
  | ------ | ------ |
  | LeakerHounds | [https://t.me/LeakerHounds](https://t.me/LeakerHounds) | 
  | ViperZCrew | [https://t.me/ViperZCrew](https://t.me/ViperZCrew) |
  | DeepWaterLeaks | [https://t.me/deepwaterleaks2](https://t.me/deepwaterleaks2) |
  | BurpSuite Chat | [https://t.me/burp_chat/](https://t.me/burp_chat/)

<hr>
            
<h2>Social Media</h2>
 <img align="left" alt="telegram.org" width="22px" src="https://images.vexels.com/media/users/3/137414/isolated/preview/3f7486417ddd88060a1818d44b6f3728-telegram-icon-logo-by-vexels.png" /> Telegram:<br />
 
* [@mrblackx](https://t.me/mrblackx)
* [@On1c0n3](https://t.me/On1c0n3)
* [@cicada007](https://t.me/cicada007)
* [@null_pointer_dereference](https://t.me/null_pointer_dereference) 

<img align="left" alt="github.com" width="22px" src="https://image.flaticon.com/icons/svg/25/25231.svg" /> Github:<br />
 
* Rebl0x3r - [https://github.com/rebl0x3r](https://github.com/rebl0x3r)
* 0n1cOn3 - [https://github.com/0n1cOn3](https://github.com/0n1cOn3)
* Dejavu666 - [https://github.com/dejavu666](https://github.com/dejavu666)
* Spidyhackx - [https://github.com/spidyhackx](https://github.com/spidyhackx)

<hr>

<h2>Bug Report</h2>

  If you found any bug or issue, please go [here](https://github.com/rebl0x3r/burpsuite-pro-installation/issues)
  
  You can also request an update.
  
<hr>



[Site Up](#table-of-contents)
