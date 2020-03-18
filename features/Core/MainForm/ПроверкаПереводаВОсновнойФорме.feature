# language: ru
# encoding: utf-8
#parent uf:
@UF11_Прочее
#parent ua:
@UA44_Прочая_активность_по_проверке

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnUFSovm82Builds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@tree

Функционал: Проверка перевода в основной форме.
 



Сценарий: Проверка перевода в основной форме. En.
	Если 'Объект.ВерсияПоставки = "standart"' тогда
		И Я запоминаю значение выражения '$КаталогИнструментов$\VanessaAutomation\Forms\УправляемаяФорма\Ext\Form.xml' в переменную "ИмяФайла"
	Иначе	
		И Я запоминаю значение выражения '$КаталогИнструментов$\VanessaAutomationsingle\Forms\УправляемаяФорма\Ext\Form.xml' в переменную "ИмяФайла"
	

	И файл "$ИмяФайла$" содержит строки
		| '1. In the main window of Yandex.Cloud click'|
		|'Upload buttons features'|
		|'Load features files from directory'|
		|'Load one feature file'|
		|'Buttons newly loaded features'|
		|'Reload scenario'|
		|'Run scenario'|
		|'Reload and run'|
		|'Columns'|
		|'Show/hide columns'|
		|'All columns'|
		|'Addres in feature'|
		|'Snippet'|
		|'DataProcessor'|
		|'Procedure name'|
		|'Line number'|
		|'Group settings'|
		|'Functionality'|
		|'The functionality of the bookmark'|
		|'Run scenarios'|
		|'Test tree'|
		|'Main'|
		|'Continue from this step'|
		|'Continue from this step and run other scenarios'|
		|'Run only selected scenario'|
		|'Reload and run this scenario'|
		|'Run scenarios of that feature'|
		|'Run one step'|
		|'Open a feature file in the editor'|
		|'Open feature file in editor'|
		|'Open feature path'|
		|'Collapse'|
		|'Switch to features'|
		|'Switch to scenarios'|
		|'Switch to first level steps'|
		|'Work with errors'|
		|'Breakpoint'|
		|'Breakpoint'|
		|'Remove all breakpoints'|
		|'Description'|
		|'Path'|
		|'Status'|
		|'Snippet'|
		|'Steps definition'|
		|'Step definition procedure'|
		|'Line number'|
		|'Snippet generation'|
		|'Group generation'|
		|'Create and update step definitons'|
		|'Save settings'|
		|'Generate managed form'|
		|'The checkbox defines, which form will be generated on epf creating. Turn this checkbox on when working with the managed application.'|
		|'Create regions with generated step code'|
		|'The checkbox defines if created epf will have regions'|
		|'Add comments for reused procedure'|
		|'Obsolete. No need to use this checkbox.'|
		|'Put text module. instead regenerate and update step defintion'|
		|'If the checkbox is on, generated code will be displayed instead of re-creating the epf (if it existed).'|
		|'Group1'|
		|'Platform version. 8.3.10 or greater.'|
		|'Platform version for epf generation.'|
		|'As batch start of Designer is used to create the epf, then'|
		|'Libraries'|
		|'Library re-code'|
		|'Library catalogs'|
		|'Add'|
		|'Save settings'|
		|'Library catalogs'|
		|'Record UI behavior'|
		|'Collaborations with UI'|
		|'Enable test client session'|
		|'Record user behavior'|
		|'Stop record of user behavior'|
		|'Form'|
		|'Form state'|
		|'Remember form state from test client'|
		|'Purge form state for test client'|
		|'Form explorer123'|
		|'Get the state of the whole form'|
		|'Script generator'|
		|'Automated scripting'|
		|'The result of generation'|
		|'Feature template'|
		|'Prepare scenario for run'|
		|'Known steps'|
		|'Action group ID'|
		|'Generated script context menu action with ID'|
		|'Generated script context menu action with ID'|
		|'Edit table'|
		|'Feature template code'|
		|'Generated code'|
		|'Feature template'|
		|'XML file from UI record'|
		|'Feature template'|
		|'Settings'|
		|'Spreadsheet settings'|
		|'First row'|
		|'First column'|
		|'Row count'|
		|'Column count'|
		|'Test clients'|
		|'TestClients data'|
		|'Begin record'|
		|'Add'|
		|'Test client group 1'|
		|'Begin record'|
		|'Customer data testing group 4'|
		|'Thin'|
		|'Thick'|
		|'Web'|
		|'Customer data testing group 2'|
		|'Additional command line options connection 1C'|
		|'Customer data testing group 3'|
		|'Service and Settings'|
		|'Service pages'|
		|'Main'|
		|'Tags'|
		|'Not run tags'|
		|'Input tags in the field. If the tag is detected in the feature, the whole feature will not be uploaded. If the tags will be found in scenario, only this scenario will be excluded from loading.'|
		|'Run only tags'|
		|'Input tags in the field. If the tag is NOT detected in the feature, the whole feature will not be uploaded. If the tags will be found in scenario, only this scenario(s) will be included to loading'|
		|'Language generator Gherkin'|
		|'Russian'|
		|'English'|
		|'Ukrainian'|
		|'Romanian'|
		|'Deutsch'|
		|'Latvian'|
		|'Italian'|
		|'Polish'|
		|'Vietnamese'|
		|'The field defines scenatio generating language. If any but not Russain is selected, Known steps will contain additional columns with the step along with its description in selected language.'|
		|'The check boxes for the settings'|
		|'Setting checkboxes Left'|
		|'Enable debug for steps defitions'|
		|'Save contexts before step invoke'|
		|'Setting checkboxes Right'|
		|'Output verbose log and debug log'|
		|'Messages output management. If the checkbox is on, user message will contain additional information about the scenario progress, such as:'|
		|'Check Vanessa-Automation on 1C test client session'|
		|'Service setting. It is used in the mode when Vanessa Automation tests another session of Vanessa Automation.'|
		|'Output log to 1C registration journal'|
		|'If the checkbox is on, scenario and steps beginning events will be written to the event log.'|
		|'Add meta information when clicking'|
		|'If the checkbox is on, data for translation into another language will be added when clicking the scenario step by step.'|
		|'If the checkbox is on, scenario steps will define form elements &lt;b&gt;by internal name&lt;/&gt; when generating scenario text.'|
		|'If the checkbox is on, feature file is considered as if it has @tree tag, even if it is absent. In other words, any uploaded feature file is considered as hierarchical.'|
		|'Update tree'|
		|'Console command on screenshots create'|
		|'Specify the command line used to create the screenshots.'|
		|'Tools catalog'|
		|'The catalog of Vanessa Automation data processor. This field must be filled on the standard installation.'|
		|'path for extended Vanessa Satck Commons'|
		|'Project path'|
		|'The catalog with the tested project files, which are necessary for test execution.'|
		|'Load features on form open'|
		|'Load'|
		|'Load and run'|
		|'Make question'|
		|'Do not load'|
		|'Allows you to control the behavior of Vanessa Automation when opening: do you need to upload a feature file with which the work was carried out in the previous session or not.'|
		|'Yes'|
		|'No'|
		|'Allows Vanessa Automation behavior management on shoutdown: is it necessary to show the dialog of main form closure confirmation.'|
		|'This field contains text editor, used for feature file editing and line positioning on execution of "Open .feature файл in the editor" command.'|
		|'Custom setting provider'|
		|'CONSUL'|
		|'FILE'|
		|'Add description'|
		|'Address of custom settings'|
		|'file path or url for settings. By default, project directory (name of default file user_settings.json) or localhost'|
		|'Clears known steps cash. After command execution close Vanessa Automation and reopen it.'|
		|'Test clients'|
		|'If the option is on, TestClient will launch in full-screen mode.'|
		|'Specifies timeout of Vanessa Automation awaiting for TestClient launch. After timeout the exception will be risen.'|
		|'Specifies ports range to search for free port to run TestClient.'|
		|'TestClient debug'|
		|'Group debug client test'|
		|'Run test client in debug mode'|
		|'If the check box is on, TestClient will be launched with parameters /debug and /debuggerURL'|
		|'Debugger congfig'|
		|'Group debugger settings'|
		|'http://localhost:1560'|
		|'Address of debugger to be passed to TestClient.'|
		|'-http -attach'|
		|'Launch parameters to be passed to TestClient.'|
		|'Running scenarios'|
		|'Invoke steps as async procedure'|
		|'If the flag is set, it slows down the execution of the steps, but it allows you to update the state of the tree at each step.'|
		|'If the checkbox is on, each step will be executed asynchronously with the specified delay.'|
		|'Step invoke sleep interval'|
		|'Specifies delay between steps in asynchronous mode.'|
		|'If the checkbox is on, scenario statistic will be collected: number of steps passed, number of scenarios failes etc.'|
		|'If the checkbox is on, current row of the tree will be active on step execution. It is allowed to turn the checkbox off on CI server to fasten up.'|
		|'Stop on error'|
		|'If the checkbox is on, scenario will be executed until the first error occurs.'|
		|'If flag is set, when an error occurs in tree steps will be shown column with the row number in the tree, if this column was hidden.'|
		|'If the checkbox is on, pending steps will set assembly status to failed on the execution on CI server.'|
		|'Specifies maximum timeout for async step.'|
		|'Maximum timeout for window search in the step'|
		|'Sets maximum tries number for multiple steps.'|
		|'Adds delay for multiple actions, which may cause unstable scenario execution, e.g.: move to line, field value check etc.'|
		|'The value of the additional delay to be applied in the step'|
		|'Reports'|
		|'Conditions of discharge'|
		|'Add upload conditions to the script name'|
		|'This option is used when one report (e.g. Allure) is generated for several similar assemblies (e.g., the same tests). In this case "Current assembly name" field value will be added to the scenario name to avoid non-unique names.'|
		|'Current build name'|
		|'Unique assembly name used along with the parameter "Add uploading conditions to scenario name".'|
		|'Screenshots'|
		|'Create screnshoots on exception'|
		|'Switches on snapshot creating on error.'|
		|'Screenshots of the settings'|
		|'Take every window screenshot'|
		|'Switches on snapshot creation for each 1C window.'|
		|'Temp directory for screenshoots'|
		|'Snapshots directory.'|
		|'Logs'|
		|'Switches on scenario execution log.'|
		|'Log text settings'|
		|'Writes step beginning event to the log.'|
		|'Vanessa Automation log file name.'|
		|'Error log text'|
		|'Create json file with the detailed information for each error.'|
		|'If the option is on, the status of the elements of the active form will be collected in mxl format.'|
		|'If the option is on, the status of the elements of all forms opened in TestClient will be collected in mxl format.'|
		|'The directory for errors data and form elements status information.'|
		|'Create report in internal format'|
		|'Switches on scenarios execution report in the internal format.'|
		|'Reports'|
		|'The reports page'|
		|'Allure'|
		|'Create data for Allure QA Report'|
		|'Create scenario execution report in Allure format.'|
		|'Allure settings'|
		|'Temp dir for Allure test suite files'|
		|'Temporary directory fot Allure results'|
		|'Allure reports directory.'|
		|'Temp dir for Allure test suite files for many runs'|
		|'The directory in which report data is generated in Allure format, and subdirectories will be created for each assembly. This parameter takes precedence and the value of the "Allure Report Catalog" parameter will be ignored.'|
		|'Sets first level of grouping in Allure report on the Behaviors tab. See Help info for details.'|
		|'Sets second level of grouping in Allure report on the Behaviors tab. See Help info for details.'|
		|'Sets third level of grouping in Allure report on the Behaviors tab. See Help info for details.'|
		|'Directory hierarchy'|
		|'Directory relative to which you need to build hierarchy'|
		|'The directory for features hierarchy calculation. See Help info for details.'|
		|'Sets grouping value for Allure report on the Suites tab. See Help info for details.'|
		|'Allure labels data'|
		|'Table indicates Allure label\'s.'|
		|'Cucumber'|
		|'Create report in Cucumber format'|
		|'Cucumber settings'|
		|'Temp dir for JUnit xml files'|
		|'Temporary directory for Cucumber files'|
		|'Report directory.'|
		|'JUnit'|
		|'Create report in jUnit format'|
		|'J unit settings'|
		|'Temp dir for JUnit xml files'|
		|'Temporary directory for JUnit files'|
		|'Report directory.'|
		|'ASDS'|
		|'Applied Solution Design System (СППР)'|
		|'Group SPPR Settings'|
		|'Group SPPR Settings'|
		|'Report directory.'|
		|'Auto instructions'|
		|'SikuliX server'|
		|'Tip'|
		|'Use SikuliX Server'|
		|'SikuliX is Java application for mouse pointer moving and clicking management, and keyboard buttons press emulation.'|
		|'If the checkbox is on, then the search of form element or control will be performed on steps execution. Mouse pointer will be moved to the detected element.'|
		|'Sikuli x server detail'|
		|'Group sikuli x server detail'|
		|'Install service programs'|
		|'The path to the scripts folder sikuli x'|
		|'The path to the scripts folder sikuli X'|
		|'SikuliX scripts directory'|
		|'The directory in which pictures will be programmatically created to search for them on the screen.'|
		|'Group color profiles'|
		|'HTML и Markdown'|
		|'HTML'|
		|'Create HTML documentaion'|
		|'If the checkbox is on, HTML screencast will be created during scenario execution.'|
		|'HTML documentation files dir'|
		|'Markdown'|
		|'Make Markdown instruction'|
		|'If the checkbox is on, MarkDown screencast will be created during scenario execution.'|
		|'Markdown documentation files dir'|
		|'Video instructions'|
		|'Create live video documentation'|
		|'Video manuals creation.'|
		|'Video settings'|
		|'Video documentation files dir'|
		|'Directory where will be placed result of assembly videos or animated screencast.'|
		|'Project directory'|
		|'Test project files directory.'|
		|'Type video instructions'|
		|'Create video guide.'|
		|'Create animated HTML screencast.'|
		|'Video setup instructions'|
		|'Video settings'|
		|'Videos'|
		|'Video buttons'|
		|'Checks basic commands on video composing and sound.'|
		|'Uploads the settings from Vanessa Automation installation json file. After uploading, it might be required to adjust the settings.'|
		|'Screen parameters'|
		|'Number of frames'|
		|'Sets shots per second number for the recording.'|
		|'Width'|
		|'Sets screen width for the recording. Maximum value is screen width for the current resolution. If the specified value is less than screen width, screen area beginning from upper left corner will be recorded.'|
		|'Height'|
		|'Sets screen height for the recording. Maximum value is screen height for the current resolution. If the specified value is less than screen height, screen area beginning from upper left corner will be recorded.'|
		|'Comand to start record'|
		|'Command to start VLC for screen recording. You can specify bitrate and other parameters.'|
		|'Template path'|
		|'Directory where files will be saved at the time of compile video instructions.'|
		|'The directory for temporary files created on video recording and composing. The directory is cleared before each recording!'|
		|'ffmpeg command'|
		|'Convert command'|
		|'Path to executed file convert.exe in ImageMagick directory.'|
		|'If the checkbox is on, then during the execution of step'|
		|'Video snippets directory.'|
		|'Audio settings'|
		|'Audio settings'|
		|'Music'|
		|'Music path'|
		|'mp3 files directory.'|
		|'Value range is from 0 to 1.'|
		|'Make voice'|
		|'Make voice'|
		|'Make TTS'|
		|'Switches on the voicing of the video.'|
		|'Internal voicing'|
		|'Microsoft TTS'|
		|'Yandex speechkit'|
		|'Amazon Polly'|
		|'Specifies narrator\'s voice.'|
		|'Page settings dubbing'|
		|'Microsoft TTS'|
		|'TTS comand'|
		|'Console command for converting text to voice.'|
		|'TTS Voice'|
		|'Specifies narrator\'s voice. You can specify a part of the voice name, e.g., "Elena".'|
		|'Narrator\'s speach speed.'|
		|'Yandex TTS'|
		|'Rusko (ru-EN)'|
		|'English (en-US)'|
		|'Turkish (tr-TR)'|
		|'Specifies narrator\'s language. See details &lt;link https://cloud.yandex.ru/docs/speechkit/tts/request&gt;here&lt;/&gt;.'|
		|'Alice (alyss)'|
		|'Jane (jane)'|
		|'Oxana (oksana)'|
		|'Omazh (omazh)'|
		|'Zahar (zahar)'|
		|'Ermil (ermil)'|
		|'Specifies narrator\'s voice. See details &lt;link https://cloud.yandex.ru/docs/speechkit/tts/request&gt;here&lt;/&gt;.'|
		|'Joyful (good)'|
		|'Annoyed (evil)'|
		|'Neutral (neutral)'|
		|'Specifies narrator\'s emotion. See details &lt;link https://cloud.yandex.ru/docs/speechkit/tts/request&gt;here&lt;/&gt;.'|
		|'The last part of the path in the address bar in the Internet browser. &lt;colorstyle -14&gt;https://console.cloud.yandex.ru/folders/ИдентификаторКаталога&lt;/&gt;'|
		|'OAuth-token is used in Yandex.Cloud authentication'|
		|'Group amazon TTS'|
		|'Group amazon TTS'|
		|'See voice and language mapping &lt;link https://docs.aws.amazon.com/en_us/polly/latest/dg/voicelist.html&gt;here&lt;/&gt;.'|
		|'See voice and language mapping &lt;link https://docs.aws.amazon.com/en_us/polly/latest/dg/voicelist.html&gt;here&lt;/&gt;.'|
		|'"Driver" field available values see &lt;link https://docs.aws.amazon.com/en_us/polly/latest/dg/voicelist.html&gt;here&lt;/&gt;.'|
		|'Amazon cloud access key.'|
		|'The file where Amazon cloud private key is stored.'|
		|'Voice test'|
		|'Group test voice'|
		|'Hi, I\'m Vanessa!'|
		|'Text to sound up.'|
		|'Generates mp3 file with the specified text and runs it in the default player.'|
		|'Audio cache'|
		|'Switchs on voice file cashing.'|
		|'Voice cache files directory.'|
		|'Substitution dictionaries'|
		|'Dictionaries replacement'|
		|'More'|
		|'The video page for more'|
		|'Mouse pict'|
		|'The path to the image used for mouse cursor appearance.'|
		|'Watermark'|
		|'Png image used as a watermark.'|
		|'Maximum speeding percentage available for video snippet (for a single step).'|
		|'Video settings additional left'|
		|'Switches on adding video subtitles.'|
		|'Switches on the mode, when each first level group of scenario steps will be converter to one step in automanual.'|
		|'Switches on mouse clicks highlighting. Project utility UIToolsFor1C is used.'|
		|'Switches on text input emulation. Project utility UIToolsFor1C is used.'|
		|'Hides service console windows used for video assembly.'|
		|'Switches of video snippets scaling by time.'|
		|'Video settings extra right'|
		|'Switches off creating of video initial slide with feature file header.'|
		|'Switches off creating of video initial slide with scenario header.'|
		|'Switches off creating of video final slide with video total information.'|
		|'Move mouse to active control'|
		|'Show active form controls'|
		|'Group slides settings'|
		|'Group slides settings'|
		|'Customize the title slide features'|
		|'Group intro file settings'|
		|'Final slide settings'|
		|'Group settings file outro'|
		|'PID'|
		|'Calculate PID'|
		|'Calculates PID of the current 1С session where Vanessa Automation is started.'|
		|'PID'|
		|'Extended'|
		|'Page service'|
		|'Service main'|
		|'Instruments directory (service)'|
		|'Features directory (service)'|
		|'ID runner'|
		|'Execute'|
		|'Arbitrary code'|
		|'Table step definition'|
		|'The known definition table step'|
		|'Variable view'|
		|'Scoreboard variables'|
		|'Information'|
		|'Current features files directory'|
		|'Statistics'|
		|'Statistics'|
		|'Service flags'|
		|'Name'|
		|'Full path'|
		|'Snippet'|
		|'Snippet address'|
		|'Line is a real procedure'|
		|'Named parameters'|
		|'Attribute values'|
		|'It is a strange snippet'|
		|'Type pictures'|
		|'IDRow'|
		|'Status'|
		|'Feature has its EPF'|
		|'Step with the parameters in table'|
		|'Line parameters of step table'|
		|'Table parameters'|
		|'Run scenario from that step whith context save'|
		|'Scripts array for protection from looping'|
		|'Line number in feature'|
		|'Line number in feature'|
		|'Type'|
		|'Addit type'|
		|'The error text'|
		|'Arbitrary values'|
		|'The known definition table step'|
		|'File'|
		|'Id'|
		|'Line is a real procedure'|
		|'Settings'|
		|'The string to search for'|
		|'Test view'|
		|'The transaction'|
		|'Step description'|
		|'The step type'|
		|'File version'|
		|'The string was processed'|
		|'TestClients data'|
		|'Name'|
		|'Base path'|
		|'Port'|
		|'Parameters'|
		|'Client type'|
		|'Computer name'|
		|'Synonym'|
		|'This client'|
		|'Scenarios loaded'|
		|'Scenarios done'|
		|'Props arbitrary code'|
		|'PID'|
		|'File flag scripting'|
		|'Reading layout the initial page'|
		|'Reading layout nach number'|
		|'Reading layout page number'|
		|'The read layout number number'|
		|'Status'|
		|'Ask for confirmation before form closing'|
		|'Scoreboard variables'|
		|'Name'|
		|'Value'|
		|'Type'|
		|'Data source'|
		|'Service line'|
		|'Allure labels data'|
		|'Regular expression'|
		|'Tag name'|
		|'Value'|
		|'Text for test voice'|
		|'Search profiles'|
		|'Font'|
		|'Background color'|
		|'Font color'|
		|'Size'|
		|'Name'|
		|'There is a support function to decompose string to array of substrings'|
		|'Run scenarios'|
		|'Run scenarios'|
		|'Reload scenario'|
		|'Reload scenario'|
		|'Download features from directory'|
		|'Download features from directory'|
		|'Download one feature'|
		|'Download one feature'|
		|'To create templates of treatments'|
		|'To create templates of treatments'|
		|'Run selected scenario'|
		|'Execute selected script'|
		|'Reload and run'|
		|'Reload and run'|
		|'Open feature file'|
		|'Open feature file'|
		|'Start user actions recording'|
		|'Start user actions recording'|
		|'End recording user actions'|
		|'End recording user actions'|
		|'Enable test client session'|
		|'Enable test client session'|
		|'Remember status forms test client'|
		|'Remember status forms test client'|
		|'Forget status forms test client'|
		|'Forget status forms test client'|
		|'To change the shape of the gherkin'|
		|'To change the shape of the gherkin'|
		|'To change the shape of the JSON'|
		|'To change the shape of the JSON'|
		|'To collapse the tree to the feature'|
		|'To collapse the tree to the feature'|
		|'To collapse the tree to scenarios'|
		|'To collapse the tree to the feature'|
		|'Check video record'|
		|'Check video record'|
		|'Save settings'|
		|'Save settings'|
		|'Load default settings'|
		|'Load default settings'|
		|'Save'|
		|'Keep customers testing'|
		|'Connect'|
		|'Connect the selected test client'|
		|'Start recording'|
		|'Start recording the user actions of the selected test client'|
		|'Disconnect'|
		|'Disconnect the selected test client'|
		|'Convert XML'|
		|'Convert XML'|
		|'Prepare scenario for run'|
		|'Prepare scenario for run'|
		|'Start feature'|
		|'Download recent feature1'|
		|'Download recent feature1'|
		|'Download recent feature2'|
		|'Download recent feature1'|
		|'Download recent feature3'|
		|'Download recent feature1'|
		|'Download recent feature4'|
		|'Download recent feature1'|
		|'Download recent feature5'|
		|'Download recent feature1'|
		|'Download recent feature6'|
		|'Download recent feature1'|
		|'Download recent feature7'|
		|'Download recent feature1'|
		|'Download recent feature8'|
		|'Download recent feature1'|
		|'Download recent feature9'|
		|'Download recent feature1'|
		|'Known steps'|
		|'Known steps'|
		|'Run this script from current step'|
		|'Run this script from current step'|
		|'Run this script from current step and continue'|
		|'Run this script from current step'|
		|'Breakpoint'|
		|'Breakpoint'|
		|'Remove all breakpoints'|
		|'Breakpoint'|
		|'Run scenarios'|
		|'Run scripts'|
		|'Clear cache'|
		|'Clear cache'|
		|'Open features catalog'|
		|'Open features catalog'|
		|'To reboot and execute the script'|
		|'To reboot and execute the script'|
		|'To pause the recording of user actions'|
		|'To pause the recording of user actions'|
		|'To continue recording user actions'|
		|'To continue recording user actions'|
		|'Show hide the file path'|
		|'Show hide the file path'|
		|'Show hide snippet'|
		|'Show hide snippet'|
		|'Show hide the address of the snippet'|
		|'Show hide the address of the snippet'|
		|'Show hide line is a real procedure'|
		|'Show hide line is a real procedure'|
		|'Show/Hide all columns'|
		|'Show hide all columns'|
		|'Edit gherkin table'|
		|'Edit gherkin table'|
		|'Show hide the string ID'|
		|'Show hide Instroke'|
		|'Execute arbitrary code'|
		|'Execute arbitrary code'|
		|'Get PID'|
		|'Get PID'|
		|'Add line to libraries list'|
		|'Add line to libraries list'|
		|'Form explorer'|
		|'Form explorer123'|
		|'Get a table document from the table'|
		|'Get a table document from the table'|
		|'Clear'|
		|'Clean generated script'|
		|'Get the state of the current form element'|
		|'To change the shape of the gherkin'|
		|'Translate'|
		|'Translate text into another language'|
		|'Expand all line tree service'|
		|'Expand all line tree service'|
		|'Reset SikuliX server connection'|
		|'Reset connection SikuliX server'|
		|'To collapse the tree up to the steps'|
		|'To collapse the tree up to the steps'|
		|'Show/Hide variable'|
		|'Show hide scoreboard variables'|
		|'Refresh variables'|
		|'Refresh variables'|
		|'Stop'|
		|'Go to next error'|
		|'Go to the line with the error step'|
		|'Save settings to file'|
		|'Load settings from file'|
		|'Close'|
		|'Close variables tab'|
		|'Scripts generator'|
		|'by default'|
		|'Default value'|
		|'Speak text'|
		|'Voice test'|
		|'Install service programs'|
		|'Utilities allow you to highlight the mouse pointer, draw arrows to form elements. Required  for most SikuliX steps.'|
		|'Open step description'|
		|'Open step description'|
		|'Create main scheme'|
		|'Create main scheme'|
		|'Highlight code like embedded language'|
		|'Highlight code like embedded language: \|\' code \'\|'|
		|'Comment lines of the script'|
		|'Comment lines of the script'|
		|'Load features'|	