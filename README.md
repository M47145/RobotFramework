# Robot Framework Training
# TÄMÄ ON OMA TEKSTIN LISÄYS!!
Setup for running Tricentis Testautomation Obstacle Course with Robot Framework.<br>
[Tricentis site](https://obstaclecourse.tricentis.com/)<br>


## Preparation

### Requirements

* Python 3.7 ->
* Some sort of browser, Chrome or Firefox recommended

### Pre setup

* Clone this repository, or download if you so desire
   * ```git clone https://github.com/3zk1m0/RF-Training```
* Open the repository
   * ```cd RF-Training```

### *optional* Virtual Enviroment

1. Install virtualenv - ```pip install virtualenv```
2. Create enviroment - ```virtualenv rf-env```
3. Activate enviroment
    * *Powershell* requires permission to run scripts
      * ```set-executionpolicy RemoteSigned``` Needs adminstrator privilidges
      * ```.\rf-env\Scripts\activate.ps1```
    * *Commandline* 
      * ```rf-env\Scripts\activate.bat```
    * *Bash*
      * ```source rf-env/bin/activate```
4. Now you are running Python in virtual enviroment
   
### Project setup

1. Install dependencies - ```pip install -r requirements.txt```
2. Install webdriver - ```webdrivermanager chrome```
3. Test that example file runs without failure - ```robot obstacle_tests.robot```

<br>

## Now you are ready for the lesson.
