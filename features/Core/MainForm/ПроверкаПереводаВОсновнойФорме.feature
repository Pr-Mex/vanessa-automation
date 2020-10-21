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

@IgnoreOnCIMainBuild

Функционал: Проверка перевода в основной форме.
 



Сценарий: Проверка перевода в основной форме. En.
	Если 'Объект.ВерсияПоставки = "standart"' тогда
		И Я запоминаю значение выражения '$КаталогИнструментов$\VanessaAutomation\Forms\УправляемаяФорма\Ext\Form.xml' в переменную "ИмяФайла"
	Иначе	
		И Я запоминаю значение выражения '$КаталогИнструментов$\VanessaAutomationsingle\Forms\УправляемаяФорма\Ext\Form.xml' в переменную "ИмяФайла"
	

	И файл "$ИмяФайла$" содержит строки
	|'Load'|
	|'Upload buttons features'|
	|'Load files from directory'|
	|'Load one feature file'|
	|'Buttons newly loaded features'|
	|'Reload scenario'|
	|'Run scenarios'|
	|'Reload and run'|
	|'Columns'|
	|'Show/hide columns'|
	|'All columns'|
	|'Address in file'|
	|'Snippet'|
	|'DataProcessor'|
	|'Procedure name'|
	|'#'|
	|'Group settings'|
	|'Functionality'|
	|'Tab functionality'|
	|'Run scenarios'|
	|'Tests tree'|
	|'Main'|
	|'Run from this step'|
	|'Run from this step and continue'|
	|'Run from beginning'|
	|'Reload and run this scenario'|
	|'Run scenarios of this feature'|
	|'Run one step'|
	|'Open feature file in editor'|
	|'Open .feature file in editor'|
	|'Open .feature files directory'|
	|'Collapse'|
	|'Collapse to features'|
	|'Collapse to scenarios'|
	|'Collapse to first level steps'|
	|'Errors processing'|
	|'Breakpoints'|
	|'Breakpoint'|
	|'Remove all breakpoints'|
	|'Description'|
	|'Address in file'|
	|'Status'|
	|'Snippet'|
	|'Data processor'|
	|'Procedure name'|
	|'#'|
	|'Connect TestClient'|
	|'Record user behavior'|
	|'Stop recording user behavior'|
	|'Breakpoints'|
	|'Main'|
	|'Run from this step'|
	|'Run from beginning'|
	|'Run one step'|
	|'Open feature file in editor'|
	|'Open .feature file in editor'|
	|'Open .feature files directory'|
	|'Breakpoints'|
	|'Breakpoint'|
	|'Remove all breakpoints'|
	|'Breakpoints'|
	|'Edit table'|
	|'Breakpoints'|
	|'Get the whole form state'|
	|'EPF generator'|
	|'Group generation'|
	|'Create and update processing templates'|
	|'Save settings'|
	|'Generate managed form'|
	|'The checkbox defines which form will be generated upon creating epf. Select this checkbox to operate with managed applications.'|
	|'Create regions when generating code'|
	|'The checkbox defines that regions will be created in the code of epf being created'|
	|'Add comments for reused procedure'|
	|'Obsolete. No need to use this checkbox.'|
	|'Put text module. instead regenerate and update step defintion'|
	|'If the checkbox is on, generated code will be displayed instead of re-creating the epf (if it existed).'|
	|'Platform version for EPF generation (8.3.10 or higher)'|
	|'Platform version for epf generation.'|
	|'As batch start of Designer is used to create the epf, then'|
	|'Libraries'|
	|'Re-code library'|
	|'Library directories'|
	|'Add'|
	|'Save settings'|
	|'Library catalogs'|
	|'Record UI behavior'|
	|'Collaborations with UI'|
	|'Connect TestClient'|
	|'Record user behavior'|
	|'Stop recording user behavior'|
	|'Form'|
	|'Form state'|
	|'Remember TestClient form state'|
	|'Forget TestClient form state'|
	|'Form explorer'|
	|'Get the whole form state'|
	|'Smoke tests'|
	|'Automated scenario creation'|
	|'Generation result'|
	|'Behavior scenario'|
	|'Prepare scenario for run'|
	|'Known steps'|
	|'Group actions with code'|
	|'Generated scenario context menu actions with code'|
	|'Generated scenario context menu actions with code'|
	|'Edit table'|
	|'Behavior scenario code'|
	|'Generated code'|
	|'Behavior scenario'|
	|'Source XML file'|
	|'Behavior scenario'|
	|'Settings'|
	|'Layout settings'|
	|'First row'|
	|'First column'|
	|'Number of rows'|
	|'Number of columns'|
	|'Test clients'|
	|'TestClients data'|
	|'Begin record'|
	|'Add'|
	|'Test client group 1'|
	|'Start recording behavior'|
	|'Customer data testing group 4'|
	|'Thin'|
	|'Thick'|
	|'Web'|
	|'Customer data testing group 2'|
	|'Additional command line options connection 1C'|
	|'Customer data testing group 3'|
	|'Service'|
	|'Service pages'|
	|'Main'|
	|'Tags'|
	|'List of tags to exclude'|
	|'Enter tags in the field. If the tag is detected in the feature, the whole feature will not be uploaded. If the tag is found in the scenario, only this scenario will not be uploaded.'|
	|'Tags to run'|
	|'Enter tags in the field. If the tag is NOT detected in the feature, the whole feature will not be uploaded. You can also upload only the feature scenarios, which contain the tags from the list.'|
	|'Gherkin generator language'|
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
	|'Settings check boxes'|
	|'Left setting check boxes'|
	|'Enable debug for steps defitions'|
	|'Save contexts before going through steps'|
	|'Setting checkboxes Right'|
	|'Output verbose log and debug log'|
	|'Messages output management. If the checkbox is on, user message will contain additional information about the scenario progress, such as:'|
	|'Check Vanessa Automation in test client mode'|
	|'Service setting. It is used in the mode when Vanessa Automation tests another session of Vanessa Automation.'|
	|'Output log to 1C registration journal'|
	|'If the checkbox is on, scenario and steps beginning events will be written to the event log.'|
	|'Add meta information when clicking'|
	|'If the checkbox is on, data for translation into another language will be added when clicking the scenario step by step.'|
	//|'If the checkbox is on, scenario steps will define form elements &lt;b&gt;by internal name&lt;/&gt; when generating scenario text.'|
	|'If the checkbox is on, feature file is considered as if it has @tree tag, even if it is absent. In other words, any uploaded feature file is considered as hierarchical.'|
	//|'Designed to manage windows in Windows and Linux.'|
	|'1c win ctrl group'|
	|'1c win ctrl group'|
	|'Tools directory'|
	|'The catalog of Vanessa Automation data processor. This field must be filled on the standard installation.'|
	|'Project directory'|
	|'The catalog with the tested project files, which are necessary for test execution.'|
	|'Load features upon opening VA'|
	|'Load'|
	|'Load and run'|
	|'Ask a question'|
	|'Do not load'|
	|'Allows you to control the behavior of Vanessa Automation when opening: do you need to upload a feature file with which the work was carried out in the previous session or not.'|
	|'Yes'|
	|'No'|
	|'Allows Vanessa Automation behavior management on shoutdown: is it necessary to show the dialog of main form closure confirmation.'|
	|'This field contains a text editor to open a feature file and position on the current line when clicking "Open .feature file in editor".'|
	|'Custom setting provider'|
	|'CONSUL'|
	|'FILE'|
	|'Add description'|
	|'Address of custom settings'|
	|'file path or url for settings. By default, project directory (name of default file user_settings.json) or localhost'|
	|'Clears known steps cash. After command execution close Vanessa Automation and reopen it.'|
	|'Test client settings'|
	|'If the option is on, TestClient will launch in full-screen mode.'|
	|'Specifies timeout of Vanessa Automation awaiting for TestClient launch. After timeout the exception will be risen.'|
	|'Specifies ports range to search for free port to run TestClient.'|
	|'TestClient debug'|
	|'Group test client debugging'|
	|'Run test client in debug mode'|
	|'If the check box is selected, TestClient will be launched with /debug and /debuggerURL startup keys.'|
	|'Debugger settings'|
	|'Group debugger settings'|
	|'http://localhost:1560'|
	|'Address of debugger to be passed to TestClient.'|
	|'-http -attach'|
	|'Launch parameters to be passed to TestClient.'|
	|'Browser launch settings'|
	|'Browser launch settings'|
	|'Browser launch string installation command group'|
	|'Browser launch string installation command group'|
	|'This field indicates the command to launch the browser. If the field is empty, then the default browser will be used to start the web client.'|
	|'Running scenarios'|
	|'Invoke steps as async procedure'|
	|'If the flag is set, it slows down the execution of the steps, but it allows you to update the state of the tree at each step.'|
	|'If the checkbox is on, each step will be executed asynchronously with the specified delay.'|
	|'Step fulfillment interval'|
	|'Specifies delay between steps in asynchronous mode.'|
	|'If the checkbox is on, scenario statistic will be collected: number of steps passed, number of scenarios failes etc.'|
	|'If the checkbox is on, current row of the tree will be active on step execution. It is allowed to turn the checkbox off on CI server to fasten up.'|
	|'Stop in case of error'|
	|'If the checkbox is on, scenario will be executed until the first error occurs.'|
	|'If flag is set, when an error occurs in tree steps will be shown column with the row number in the tree, if this column was hidden.'|
	|'If the checkbox is on, pending steps will set assembly status to failed on the execution on CI server.'|
	//|'Specifies maximum timeout for async step.'|
	//|'Maximum timeout for window search in the step'|
	|'Sets maximum tries number for multiple steps.'|
	|'Adds delay for multiple actions, which may cause unstable scenario execution, e.g.: move to line, field value check etc.'|
	//|'The value of the additional delay to be applied in the step'|
	|'Screenshots'|
	|'Screenshots page'|
	|'Create screnshoot in case of error'|
	|'Enables taking screenshots in case of an error.'|
	|'Take a screenshot of each 1C session (process)'|
	|'Enables taking screenshots for each 1C window when an error occurs.'|
	//|'Designed to manage windows in Windows and Linux.'|
	|'VanessaExt add-in screenshots'|
	|'To take screenshots, use the VanessaExt add-in instead of the screenshot creation command.'|
	|'Method for taking screenshots by an external module.'|
	|'Full Screen'|
	|'Current test client window'|
	|'All test client windows'|
	//|'&lt;b&gt;Full Screen&lt;/&gt; - Gets a screenshot of the entire screen, including the Windows taskbar.'|
	|'Screenshot creation command'|
	//|'Specify the command line used to create the screenshots.'|
	|'Temporary directory for screenshoots'|
	|'Screenshots directory.'|
	|'Scenario report'|
	|'Conditions of discharge'|
	|'Add upload conditions to the script name'|
	|'This option is used when one report (e.g. Allure) is generated for several similar assemblies (e.g., the same tests). In this case "Current assembly name" field value will be added to the scenario name to avoid non-unique names.'|
	|'Current build name'|
	|'Unique assembly name used along with the parameter "Add uploading conditions to scenario name".'|
	|'Test video record'|
	|'Enables video recording during the test. You must enable the use of an external VanessaExt add-in.'|
	|'The number of frames for recording video.'|
	|'The command to start the "ffmpeg" application. It is recommended to write the path to ffmpeg in path.'|
	|'Directory for video files.'|
	|'Logs'|
	|'Switches on scenario execution log.'|
	|'Log setting text'|
	|'Writes step beginning event to the log.'|
	|'Vanessa Automation log file name.'|
	|'Error log text'|
	|'Create json file with the detailed information for each error.'|
	|'If the option is on, the status of the elements of the active form will be collected in mxl format.'|
	|'If the option is on, the status of the elements of all forms opened in TestClient will be collected in mxl format.'|
	|'If the option is enabled, then when an error occurs, data will be collected on the network connections of the PC on which the tests were run.'|
	|'If the option is enabled, then when an error occurs, data on running OS processes will be collected.'|
	|'The directory for errors data and form elements status information.'|
	|'Create report in internal format'|
	|'Enables a scenario execution report in the internal format.'|
	|'Reports'|
	|'Reports page'|
	|'Allure'|
	|'Create data for Allure report'|
	|'Create a scenario execution report in Allure format.'|
	|'Allure settings'|
	|'Allure report directory'|
	|'Temporary directory for Allure results'|
	|'Allure reports directory.'|
	|'Allure report directory (several builds)'|
	|'The directory in which report data is generated in Allure format, and subdirectories will be created for each assembly. This parameter takes precedence and the value of the "Allure Report Catalog" parameter will be ignored.'|
	|'Sets first level of grouping in Allure report on the Behaviors tab. See Help info for details.'|
	|'Sets second level of grouping in Allure report on the Behaviors tab. See Help info for details.'|
	|'Sets third level of grouping in Allure report on the Behaviors tab. See Help info for details.'|
	|'Hierarchy directory'|
	|'Directory relative to which you need to build hierarchy'|
	|'The directory for features hierarchy calculation. See Help info for details.'|
	|'Sets grouping value for Allure report on the Suites tab. See Help info for details.'|
	|'Customize the title slide features'|
	|'Allure report applications'|
	|'If an error occurs, a log will be attached to the script. Data is taken from the moment the scenario starts.'|
	|'If the option is enabled, states of items of the active form will be collected in xlsx format in case of an error.'|
	|'If the option is enabled, states of items of all forms opened in TestClient will be collected in xlsx format.'|
	|'If the option is enabled, then when an error occurs, data will be collected on the network connections of the PC on which the tests were run.'|
	|'If the option is enabled, then when an error occurs, data on running OS processes will be collected.'|
	|'If the option is enabled, data with Context and Global Context variable values will be collected when an error occurs.'|
	|'Allure labels data'|
	|'The table contains Allure markdowns.'|
	|'Cucumber'|
	|'Create report in Cucumber format'|
	|'Cucumber settings'|
	|'Cucumber report directory'|
	|'Temporary directory for Cucumber files'|
	|'Report directory.'|
	|'JUnit'|
	|'Create report in jUnit format'|
	|'J unit settings'|
	|'JUnit report directory'|
	|'Temporary directory for JUnit files'|
	|'Report generation directory.'|
	|'ASDS'|
	|'Applied Solution Design System'|
	|'Group SPPR Settings'|
	|'Group SPPR Settings'|
	|'Report directory.'|
	|'Auto instructions'|
	|'VanessaExt add-in'|
	|'VanessaExt auto instruction group'|
	|'Allows to execute external commands in the browser using WebSocket.'|
	|'Enables mouse movement emulation using VanessaExt add-in'|
	|'Enables emulation of keyboard input using VanessaExt add-in'|
	|'Allows to continue running the scenario if the form item is not found in the browser.'|
	|'SikuliX server'|
	|'Tooltip'|
	|'Use SikuliX Server'|
	//|'SikuliX is a Java application for mouse pointer moving and clicking management, and emulation of pressing keys.'|
	|'If the checkbox is on, then the search of form element or control will be performed on steps execution. Mouse pointer will be moved to the detected element.'|
	|'Sikuli x server details'|
	|'Group sikuli x server details'|
	|'Install service programs'|
	|'SikuliX scripts directory path'|
	|'SikuliX scripts directory path'|
	|'SikuliX scripts directory'|
	|'The directory in which pictures will be programmatically created to search for them on the screen.'|
	|'Group color profiles'|
	|'HTML and Markdown'|
	|'HTML'|
	|'Create HTML documentaion'|
	|'If the checkbox is on, HTML screencast will be created during scenario execution.'|
	|'HTML documentation directory'|
	|'Markdown'|
	|'Make Markdown instruction'|
	|'If the checkbox is on, MarkDown screencast will be created during scenario execution.'|
	|'Markdown documentation directory'|
	|'Video tutorial'|
	|'Create video tutorial'|
	//|'Allows you to create video tutorials.'|
	|'Video settings'|
	|'Video tutorials directory'|
	|'Directory where will be placed result of assembly videos or animated screencast.'|
	|'Project directory'|
	|'Test project files directory.'|
	|'Video tutorial type'|
	|'Create a video tutorial.'|
	|'Create animated HTML screencast.'|
	|'Video tutorial settings'|
	|'Video settings'|
	|'Video page'|
	|'Video buttons'|
	|'Checks basic commands on video composing and sound.'|
	|'Uploads the settings from Vanessa Automation installation json file. After uploading, it might be required to adjust the settings.'|
	|'Screen parameters'|
	|'Number of frames'|
	|'Sets shots per second number for the recording.'|
	|'Screen parameters frame'|
	|'Screen parameters frame'|
	|'Screen parameters indent'|
	|'Screen parameters indent'|
	|'Screen width'|
	|'Sets screen width for the recording. Maximum value is screen width for the current resolution. If the specified value is less than screen width, screen area beginning from upper left corner will be recorded.'|
	|'Left indent'|
	|'Sets left indent'|
	|'Screen parameters sizes'|
	|'Screen parameters sizes'|
	|'height'|
	|'Sets screen height for the recording. Maximum value is screen height for the current resolution. If the specified value is less than screen height, screen area beginning from upper left corner will be recorded.'|
	|'top'|
	|'Sets top indent'|
	|'VLC media player'|
	|'FFmpeg'|
	|'If VLC is selected, VLC will be used for video recording. Otherwise, VanessaExt add-in that will call ffmpeg will be used.'|
	|'Comand to start video recording'|
	|'Command to start VLC for screen recording. You can specify bitrate and other parameters.'|
	|'Temporary files directory'|
	|'Directory where files will be saved at the time of compile video instructions.'|
	|'The directory for temporary files created on video recording and composing. The directory is cleared before each recording!'|
	|'ffmpeg command'|
	|'Convert command'|
	//|'Path to executed file convert.exe in ImageMagick directory.'|
	//|'If the checkbox is on, then during the execution of step'|
	|'Video snippets directory.'|
	|'Audio settings'|
	|'Audio page'|
	|'Music'|
	|'Music directory'|
	|'mp3 files directory.'|
	|'Value range is from 0 to 1.'|
	|'Make voice'|
	|'Make voice'|
	|'Make TTS'|
	|'Switches on the voicing of the video.'|
	|'Internal voicing'|
	|'Microsoft TTS'|
	|'Yandex SpeechKit'|
	|'Amazon Polly'|
	|'Specifies the narrator\'s voice.'|
	|'Voice settings pages'|
	|'Microsoft TTS'|
	|'TTS command'|
	//|'Console command for converting text to voice.'|
	|'TTS voice'|
	//|'Specifies the narrator\'s voice. You can specify a part of the voice name, for example, "Elena".'|
	|'Narrator\'s speech speed.'|
	|'Yandex TTS'|
	|'Russian (ru-RU)'|
	|'English (en-US)'|
	|'Turkish (tr-TR)'|
	//|'Specifies narrator\'s language. See details &lt;link https://cloud.yandex.ru/docs/speechkit/tts/request&gt;here&lt;/&gt;.'|
	|'Alice'|
	|'Jane (jane)'|
	|'Oksana'|
	|'Omazh'|
	|'Zahar (zahar)'|
	|'Ermil (ermil)'|
	|'Alena'|
	|'Filipp'|
	//|'Specifies narrator\'s voice. See details &lt;link https://cloud.yandex.ru/docs/speechkit/tts/request&gt;here&lt;/&gt;.'|
	|'Joyful'|
	|'Annoyed'|
	|'Neutral (neutral)'|
	//|'Specifies narrator\'s emotion. See details &lt;link https://cloud.yandex.ru/docs/speechkit/tts/request&gt;here&lt;/&gt;.'|
	//|'OAuth-token is used in Yandex.Cloud authentication.'|
	|'Group amazon TTS'|
	|'Group amazon TTS'|
	//|'See voice and language mapping &lt;link https://docs.aws.amazon.com/en_us/polly/latest/dg/voicelist.html&gt;here&lt;/&gt;.'|
	//|'See correspondence of voice and language &lt;link https://docs.aws.amazon.com/en_us/polly/latest/dg/voicelist.html&gt;here&lt;/&gt;.'|
	//|'See possible "Driver" field values in &lt;link https://docs.aws.amazon.com/en_us/polly/latest/dg/voicelist.html&gt;here&lt;/&gt;.'|
	|'Amazon cloud access key.'|
	|'The file where Amazon cloud private key is stored.'|
	|'Voice test'|
	|'Group voice test'|
	|'Hi, I\'m Vanessa!'|
	|'What to say'|
	|'Generates mp3 file with the specified text and runs it in the default player.'|
	|'Audio cache'|
	|'Switchs on voice file cashing.'|
	|'Voice cache files directory.'|
	|'Replacements dictionaries'|
	|'Substitution dictionaries'|
	|'More'|
	|'Mouse pointer'|
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
	|'This session PID'|
	|'Extended'|
	|'Page service'|
	|'Service main'|
	|'Tools directory (internal)'|
	|'Features directory (service)'|
	|'Runner ID'|
	|'Execute code'|
	|'Arbitrary code'|
	|'Table step definition'|
	|'Table of known step definitions'|
	|'View variables'|
	|'Variables board'|
	|'Information'|
	|'Current functionality files directory'|
	|'Statistics'|
	|'Statistics'|
	|'Service flags'|
	|'Name'|
	|'Full path'|
	|'Snippet'|
	|'Snippet address'|
	|'Real procedure string'|
	|'Named parameters'|
	|'Parameter values'|
	|'This is a foreign snippet'|
	|'Picture type'|
	|'RowID'|
	|'Status'|
	|'Feature has its EPF'|
	|'Step with parameters in the table'|
	|'Step parameters line as a table'|
	|'Table parameters'|
	|'Run scenario from this step and save contexts'|
	|'Scripts array for protection from looping'|
	|'Line number in feature'|
	|'Line number in feature'|
	|'Type'|
	|'Addl type'|
	|'Error text'|
	|'Arbitrary values'|
	|'Table of known step definitions'|
	|'File name'|
	|'ID'|
	|'Real procedure string'|
	|'Settings'|
	|'Search string'|
	|'Test view'|
	|'Transaction'|
	|'Step description'|
	|'Step type'|
	|'File version'|
	|'The string was processed'|
	|'Synchronous calls are restricted'|
	|'TestClients data'|
	|'Name'|
	|'Infobase path'|
	|'Port'|
	|'Addl. parameters'|
	|'Client type'|
	|'Computer name'|
	|'Synonym'|
	|'This client'|
	|'Window descriptor'|
	|'PID'|
	|'Scenarios are uploaded'|
	|'Scenarios are completed'|
	|'Atribute arbitrary code'|
	|'This session PID'|
	|'File scenario execution flag'|
	|'Read layout start page'|
	|'Read layout start number'|
	|'Read layout page number'|
	|'Read layout number number'|
	|'Status line'|
	|'Ask for confirmation before form closing'|
	|'Variables board'|
	|'Name'|
	|'Value'|
	|'Type'|
	|'Data source'|
	|'Internal line'|
	|'Allure labels data'|
	|'Regular expression'|
	|'Tag name'|
	|'Value'|
	|'Voice test text'|
	|'Search profiles'|
	|'Font'|
	|'Background color'|
	|'Font color'|
	|'Size'|
	|'Name'|
	|'There is a support function to decompose string to array of substrings'|
	|'Location of add-in for screenshots'|
	|'JavaScript library location'|
	|'Compatibility mode allows you to use new string functions'|
	|'Data built-in scenarios text server'|
	|'Embedded libraries form'|
	|'Run'|
	|'Run'|
	|'Reload scenario'|
	|'Reload'|
	|'Download features from directory'|
	|'Download features from directory'|
	|'Download one feature'|
	|'Download one feature'|
	|'Create data processor templates'|
	|'Create data processor templates'|
	|'Run selected scenario from beginning'|
	|'Run selected scenario'|
	|'Reload and run'|
	|'Reload and run'|
	|'Open feature file'|
	|'Open feature file'|
	|'Start user actions recording'|
	|'Start user actions recording'|
	|'End recording user actions'|
	|'End recording user actions'|
	|'Connect TestClient'|
	|'Connect TestClient'|
	|'Remember test client form state'|
	|'Remember test client form state'|
	|'Forget test client form state'|
	|'Forget test client form state'|
	|'Get gherkin form changes'|
	|'Get gherkin form changes'|
	|'Get JSON form changes'|
	|'Get JSON form changes'|
	|'Collapse tree to features'|
	|'Collapse tree to features'|
	|'Collapse tree to scenarios'|
	|'Collapse tree to features'|
	|'Check video recording'|
	|'Check video recording'|
	|'Save settings'|
	|'Save settings'|
	|'Load default settings'|
	|'Load default settings'|
	|'Save'|
	|'Save test clients'|
	|'Connect'|
	|'Connect the selected test client'|
	|'Start recording'|
	|'Start recording the user actions of the selected test client'|
	|'Disconnect'|
	|'Disconnect the selected test client'|
	|'Convert source XML'|
	|'Convert source XML'|
	|'Prepare scenario for running'|
	|'Prepare scenario for running'|
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
	|'Add known step'|
	|'Add known step'|
	|'Run this scenario from current step'|
	|'Run this scenario from current step'|
	|'Run this scenario from current step and continue'|
	|'Run this scenario from current step'|
	|'Breakpoint'|
	|'Breakpoint'|
	|'Remove all breakpoints'|
	|'Breakpoint'|
	|'Run one step'|
	|'Run scenarios'|
	|'Clear cache of known step definition'|
	|'Clear cache of known step definition'|
	|'Open features directory'|
	|'Open features directory'|
	|'Reload and run the scenario'|
	|'Reload and run the scenario'|
	|'Pause recording user actions'|
	|'Pause recording user actions'|
	|'Continue recording user actions'|
	|'Continue recording user actions'|
	|'Show hide file path'|
	|'Show hide file path'|
	|'Show hide snippet'|
	|'Show hide snippet'|
	|'Show hide snippet address'|
	|'Show hide snippet address'|
	|'Show hide real procedure string'|
	|'Show hide real procedure string'|
	|'Show/Hide all columns'|
	|'Show hide all columns'|
	|'Edit table text'|
	|'Edit table text'|
	|'Show hide string ID'|
	|'Show hide StringID'|
	|'Execute arbitrary code'|
	|'Execute arbitrary code'|
	|'Calculate PID of this session'|
	|'Calculate PID of this session'|
	|'Add line to libraries list'|
	|'Add line to libraries list'|
	|'Form explorer'|
	|'Form explorer'|
	|'Get layout from table'|
	|'Get layout from table'|
	|'Clear'|
	|'Clear generated scenario'|
	|'Get current form item state'|
	|'Get gherkin form changes'|
	|'Translate'|
	|'Translate text into another language'|
	|'Expand all line tree service'|
	|'Expand all line tree service'|
	|'Reset SikuliX server connection'|
	|'Reset connection SikuliX server'|
	|'Сollapse tree to steps'|
	|'Сollapse tree to steps'|
	|'Show/Hide variables board'|
	|'Show hide variables board'|
	|'Refresh variables board'|
	|'Refresh variables board'|
	|'Stop'|
	|'Save settings to file'|
	|'Load settings from file'|
	|'Close'|
	|'Close variables board'|
	|'Scenario generator'|
	|'by default'|
	|'Default value'|
	|'What to say'|
	|'Voice test'|
	|'Install service programs'|
	|'Utilities allow you to highlight the mouse pointer, draw arrows to form elements. Required  for some SikuliX steps.'|
	|'Open step definition'|
	|'Open step definition'|
	|'Create main scheme'|
	|'Fill in standard search profiles'|
	|'Highlight code like embedded language'|
	|'Comment lines of the script'|
	|'Comment lines of the script'|
	|'Set test client window size'|
	|'Set test client window size'|
	|'Check scenarios for duplication'|
	|'Check scenarios for duplication'|
	|'Chrome'|
	|'Google Chrome startup command'|
	|'Chrome+debug'|
	|'Google Chrome startup command with debugging'|