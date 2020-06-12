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
		|'Upload'|
		|'Download features buttons'|
		|'Upload files from directory'|
		|'Upload one feature file'|
		|'Buttons recently downloaded features'|
		|'Reload scenario'|
		|'Run scenarios'|
		|'Reload and run'|
		|'Columns'|
		|'Show/hide columns'|
		|'All columns'|
		|'Address in file'|
		|'Snippet'|
		|'Data processor'|
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
		|'EPF generator'|
		|'Group generation'|
		|'Create and update data processor templates'|
		|'Save settings'|
		|'Generate managed form'|
		|'The checkbox defines which form will be generated upon creating epf. Select this checkbox to operate with managed applications.'|
		|'Create regions when generating code'|
		|'The checkbox defines that regions will be created in the code of epf being created'|
		|'Obsolete. Create commented code for reusable procedures'|
		|'Obsolete. Do not select this check box.'|
		|'Show text of a module to be received instead of EPF regeneration'|
		|'If the check box is selected, the generated code will be displayed instead of re-creating the epf (if it existed).'|
		|'Group1'|
		|'Platform version for EPF generation (8.3.10 or higher)'|
		|'For epf generation, platform 8.3.10 or later must be installed on your personal computer. Development is possible on ANY platform version specified in Help.'|
		|'As batch start of Designer is used to create the epf:'|
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
		|'Behavior verification code'|
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
		|'Test clients data group 4'|
		|'Thin'|
		|'Thick'|
		|'Web'|
		|'Test clients data group 2'|
		|'Additional parameters of 1C connection command line'|
		|'Test client data group 3'|
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
		|'The field defines a language to be used to generate a scenario text when clicking. If a language other than Russain is selected, known steps will contain additional columns with the selected step along with its details in the selected language.'|
		|'Settings check boxes'|
		|'Left setting check boxes'|
		|'Attach step implementation data processors for debugging'|
		|'Save contexts before going through steps'|
		|'Right-hand side of settings check boxes'|
		|'Enable debug messages'|
		|'Manages message output. If the check box is selected, the user message window will contain additional information about the scenario progress, such as:'|
		|'Check Vanessa Automation in test client mode'|
		|'Internal setting. It is used in the mode when Vanessa Automation tests another Vanessa Automation instance.'|
		|'Write execution events in the event log'|
		|'If the check box is selected, scenario and step execution start events will be written to the event log.'|
		|'Add meta information upon clicking'|
		|'If the check box is selected, information required for scenario translation into another language will be added upon scenario text generation after clicking.'|
		|'If the check box is selected, scenario steps will search for form items &lt;b&gt;by internal name&lt;/&gt; upon scenario text generation after clicking.'|
		|'If the check box is selected, the feature file is considered to have @tree tag even if it is absent. In other words, any uploaded feature file is considered to use a step hierarchy.'|
		|'Designed to manage windows in Windows and Linux.'|
		|'1c win ctrl group'|
		|'1c win ctrl group'|
		|'Update tree'|
		|'Tools directory'|
		|'The directory with Vanessa Automation data processor. This field must be filled in when using the standard distribution package.'|
		|'Extended Vanessa Satck Commons tools'|
		|'Project directory'|
		|'The directory with the tested project files that are necessary to run tests.'|
		|'Load features upon opening VA'|
		|'Load'|
		|'Load and run'|
		|'Ask a question'|
		|'Do not load'|
		|'Allows you to control the behavior of Vanessa Automation on opening: whether to upload a feature file you worked on in the previous session.'|
		|'Yes'|
		|'No'|
		|'Allows you to control the behavior of Vanessa Automation on closing: whether to show the dialog box of main form closure confirmation.'|
		|'This field contains a text editor to open a feature file and position on the current line when clicking "Open .feature file in editor".'|
		|'Custom settings provider'|
		|'CONSUL'|
		|'FILE'|
		|'Add description'|
		|'Address of custom settings'|
		|'File path or url for settings. By default, project directory (the default file name is user_settings.json) or localhost'|
		|'Clears cache of known steps. After command execution, close Vanessa Automation and reopen it.'|
		|'Test client settings'|
		|'If the option is enabled, test client will be launched in full-screen mode.'|
		|'Specifies the maximum time Vanessa Automation will wait for test client launch. After the timeout is reached, an exception will be thrown.'|
		|'Sets the port range to search for a free port to run test client.'|
		|'TestClient debug'|
		|'Group test client debugging'|
		|'Run test client in debug mode'|
		|'If the check box is selected, TestClient will be launched with /debug and /debuggerURL startup keys.'|
		|'Debugger settings'|
		|'Group debugger settings'|
		|'http://localhost:1560'|
		|'Address of debugger to be passed to TestClient.'|
		|'-http -attach'|
		|'Debug keys to be passed to test client on start.'|
		|'Browser launch settings'|
		|'Browser launch settings'|
		|'Browser launch string installation command group'|
		|'Browser launch string installation command group'|
		|'This field indicates the command to launch the browser. If the field is empty, then the default browser will be used to start the web client.'|
		|'Running scenarios'|
		|'Update tree state upon step completion'|
		|'If the check box is selected, it slows down step execution but allows you to update the tree state upon each step completion.'|
		|'If the check box is selected, each scenario step will be executed asynchronously with the specified interval.'|
		|'Step fulfillment interval'|
		|'Specifies the execution interval between scenario steps in asynchronous mode.'|
		|'If the check box is selected, scenario statistics will be collected: the number of scenario steps passed, the number of scenarios failed, and other.'|
		|'If the check box is selected, the current tree row will be activated upon step tree update. It is allowed to clear the check box on CI server for speed-up.'|
		|'Stop in case of error'|
		|'If the check box is selected, scenarios will be executed until the first error occurs.'|
		|'If the check box is selected, when an error occurs, the step tree will contain a column with the row number in the tree if this column was hidden.'|
		|'If the check box is selected, pending steps will have the build status set to failed upon step execution on CI server.'|
		|'Specifies the maximum timeout for an asynchronous step.'|
		|'The maximum time for window search in the step'|
		|'Sets the number of attempts to run actions for multiple steps.'|
		|'Adds a pause for multiple actions that can potentially cause unstable scenario execution, for example, move to line, field value check, and other.'|
		|'The value of the additional pause to be always applied in the step'|
		|'Screenshots'|
		|'Screenshots page'|
		|'Create screnshoot in case of error'|
		|'Enables taking screenshots in case of an error.'|
		|'Take every window screenshot'|
		|'Enables taking screenshots for each 1C window when an error occurs.'|
		|'Designed to manage windows in Windows and Linux.'|
		|'VanessaExt add-in screenshots'|
		|'To take screenshots, use the VanessaExt add-in instead of the screenshot creation command.'|
		|'Method for taking screenshots by an external module.'|
		|'Full Screen'|
		|'Current test client window'|
		|'All test client windows'|
		|'&lt;b&gt;Full Screen&lt;/&gt; - Gets a screenshot of the entire screen, including the Windows taskbar.'|
		|'Screenshot creation command'|
		|'Specify the command line used to create the screenshots.'|
		|'Temporary directory for screenshoots'|
		|'Screenshots directory.'|
		|'Scenario report'|
		|'Upload conditions'|
		|'Add upload conditions to the scenario name'|
		|'This option is used when one report (for example, Allure) is generated for several similar builds (for example, the same tests). In this case, the "Current build name" field value will be added to the scenario name to avoid non-unique scenario names.'|
		|'Test video record'|
		|'Enables video recording during the test. You must enable the use of an external VanessaExt add-in.'|
		|'The number of frames for recording video.'|
		|'The command to start the "ffmpeg" application. It is recommended to write the path to ffmpeg in path.'|
		|'Directory for video files.'|
		|'Current build name'|
		|'The unique build name used along with the "Add upload conditions to the scenario name" parameter.'|
		|'Logging'|
		|'Enables the scenario execution log.'|
		|'Log setting text'|
		|'Writes a step execution start event to the log.'|
		|'Vanessa Automation log file name.'|
		|'Error log text'|
		|'Create json file with the detailed information for each error.'|
		|'If the option is enabled, data on the state of active form items will be collected in mxl format if an error occurs.'|
		|'If the option is enabled, data on the state of items of all forms opened in test client will be collected in mxl format if an error occurs.'|
		|'If the option is enabled, then when an error occurs, data will be collected on the network connections of the PC on which the tests were run.'|
		|'If the option is enabled, then when an error occurs, data on running OS processes will be collected.'|
		|'The directory for files with error data and form item state.'|
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
		|'The directory where report data is generated in Allure format, and subdirectories will be created for each build. This parameter takes precedence and the value of the "Allure report directory" parameter will be ignored.'|
		|'Sets the first grouping level in the Allure report on the Behaviors tab. For more information, see Help.'|
		|'Sets the second grouping level in the Allure report on the Behaviors tab. For more information, see Help.'|
		|'Sets the third grouping level in the Allure report on the Behaviors tab. For more information, see Help.'|
		|'Hierarchy directory'|
		|'The directory relative to which you need to build a hierarchy'|
		|'The directory for features hierarchy calculation. For more information, see Help.'|
		|'Sets the grouping value for the Allure report on the Suites tab. For more information, see Help.'|
		|'Customize the title slide features'|
		|'Allure report applications'|
		|'Applies the event log to the scenario. Data is taken from the moment the scenario starts.'|
		|'If the option is enabled, states of items of the active form will be collected in xlsx format in case of an error.'|
		|'If the option is enabled, states of items of all forms opened in TestClient will be collected in xlsx format.'|
		|'If the option is enabled, then when an error occurs, data will be collected on the network connections of the PC on which the tests were run.'|
		|'If the option is enabled, then when an error occurs, data on running OS processes will be collected.'|
		|'If the option is enabled, data with Context and Global Context variable values will be collected when an error occurs.'|
		|'Allure markdowns data'|
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
		|'Group ASDS Settings'|
		|'Group ASDS Settings'|
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
		|'SikuliX is a Java application for mouse pointer moving and clicking management, and emulation of pressing keys.'|
		|'If the check box is selected, an attempt to find a form item or control on the screen and move the mouse pointer to the found item will be made during step execution.'|
		|'Sikuli x server details'|
		|'Group sikuli x server details'|
		|'Install service programs'|
		|'SikuliX scripts directory path'|
		|'SikuliX scripts directory path'|
		|'SikuliX scripts directory'|
		|'The directory where pictures will be programmatically created to search for them on the screen.'|
		|'Group color profiles'|
		|'HTML and Markdown'|
		|'HTML'|
		|'Create HTML documentaion'|
		|'If the check box is selected, HTML screencast will be created during scenario execution.'|
		|'HTML documentation directory'|
		|'Markdown'|
		|'Make Markdown instruction'|
		|'If the check box is selected, MarkDown screencast will be created during scenario execution.'|
		|'Markdown documentation directory'|
		|'Video tutorial'|
		|'Create video tutorial'|
		|'Allows you to create video tutorials.'|
		|'Video settings'|
		|'Video tutorials directory'|
		|'The directory into which the result of video or animated screencast assembly will be placed.'|
		|'Project directory'|
		|'Test project files directory.'|
		|'Video tutorial type'|
		|'Create a video tutorial.'|
		|'Create animated HTML screencast.'|
		|'Video tutorial settings'|
		|'Video settings'|
		|'Video page'|
		|'Video buttons'|
		|'Checks basic commands on video creation and voice over.'|
		|'Loads settings from a json file included in Vanessa Automation distribution package. After loading, you might need to adjust the settings.'|
		|'Screen parameters'|
		|'Number of frames per second'|
		|'Sets the number of frames per second during video recording.'|
		|'Screen parameters frame'|
		|'Screen parameters frame'|
		|'Screen parameters indent'|
		|'Screen parameters indent'|
		|'Screen width'|
		|'Sets the screen width for video recording. The maximum value is the screen width for the current resolution. If the specified value is less than the screen width, the screen area starting at the upper-left corner will be recorded.'|
		|'Left indent'|
		|'Sets left indent'|
		|'Screen parameters sizes'|
		|'Screen parameters sizes'|
		|'height'|
		|'Sets the screen height for video recording. The maximum value is the screen height for the current screen resolution. If the specified value is less than the screen height, the screen area starting at the upper-left corner will be recorded.'|
		|'top'|
		|'Sets top indent'|
		|'VLC media player'|
		|'FFmpeg'|
		|'If VLC is selected, VLC will be used for video recording. Otherwise, VanessaExt add-in that will call ffmpeg will be used.'|
		|'Comand to start video recording'|
		|'The command to start VLC for screen recording. You can edit bitrate and other settings in this command.'|
		|'Temporary files directory'|
		|'The directory where files will be stored during video tutorials generation.'|
		|'The directory for temporary files created during video recording and assembly. The directory is cleared before each video assembly.'|
		|'ffmpeg command'|
		|'Convert command'|
		|'Path to the executable convert.exe file in the directory with ImageMagick.'|
		|'If the check box is selected, then during execution of the step'|
		|'Video snippets directory.'|
		|'Audio settings'|
		|'Audio page'|
		|'Music'|
		|'Music directory'|
		|'The mp3 files directory.'|
		|'The value range is from 0 to 1.'|
		|'Make voice'|
		|'Voicing'|
		|'Voice TTS'|
		|'Switches on the narrator\'s voice.'|
		|'Internal voicing'|
		|'Microsoft TTS'|
		|'Yandex SpeechKit'|
		|'Amazon Polly'|
		|'Specifies the narrator\'s voice.'|
		|'Voice settings pages'|
		|'Microsoft TTS'|
		|'TTS command'|
		|'The console command to be used for text-to-speech.'|
		|'TTS voice'|
		|'Specifies the narrator\'s voice. You can specify a part of the voice name, for example, "Elena".'|
		|'Narrator\'s speech speed.'|
		|'Yandex TTS'|
		|'Russian (ru-RU)'|
		|'English (en-US)'|
		|'Turkish (tr-TR)'|
		|'Specifies the narrator\'s language. For more information, see &lt;link https://cloud.yandex.ru/docs/speechkit/tts/request&gt;here&lt;/&gt;.'|
		|'Alice'|
		|'Jane'|
		|'Oksana'|
		|'Omazh'|
		|'Zahar (zahar)'|
		|'Ermil (ermil)'|
		|'Alena'|
		|'Filipp'|
		|'Specifies the narrator\'s voice. For more information, see &lt;link https://cloud.yandex.ru/docs/speechkit/tts/request&gt;here&lt;/&gt;.'|
		|'Joyful'|
		|'Annoyed'|
		|'Neutral (neutral)'|
		|'Specifies the narrator\'s emotion. For more information, see &lt;link https://cloud.yandex.ru/docs/speechkit/tts/request&gt;here&lt;/&gt;.'|
		|'OAuth-token is used in Yandex.Cloud authentication.'|
		|'Group amazon TTS'|
		|'Group amazon TTS'|
		|'See voice and language mapping &lt;link https://docs.aws.amazon.com/en_us/polly/latest/dg/voicelist.html&gt;here&lt;/&gt;.'|
		|'See correspondence of voice and language &lt;link https://docs.aws.amazon.com/en_us/polly/latest/dg/voicelist.html&gt;here&lt;/&gt;.'|
		|'See possible "Driver" field values in &lt;link https://docs.aws.amazon.com/en_us/polly/latest/dg/voicelist.html&gt;here&lt;/&gt;.'|
		|'Amazon cloud access key.'|
		|'The file where Amazon cloud secret key is stored.'|
		|'Voice test'|
		|'Group voice test'|
		|'Hi, I\'m Vanessa!'|
		|'What to say'|
		|'Generates mp3 file with the specified text and runs it in the default player.'|
		|'Audio cache'|
		|'Enables voice file caching.'|
		|'Voice file cache directory.'|
		|'Replacements dictionaries'|
		|'Substitution dictionaries'|
		|'More'|
		|'Video page additional'|
		|'Mouse pointer'|
		|'The path to the picture used for mouse pointer rendering.'|
		|'Watermark'|
		|'The png picture to be used as a watermark.'|
		|'The maximum speed-up percentage available for a video snippet (for a single video step).'|
		|'Video settings additional left'|
		|'Enables adding video subtitles.'|
		|'Switches on the mode when each first level group of scenario steps will be converted to one step in the auto instruction.'|
		|'Switches on mouse clicks highlighting. The UIToolsFor1C project utility is used.'|
		|'Enables text input emulation. The UIToolsFor1C project utility is used.'|
		|'Hides internal console windows used for video assembly.'|
		|'Disables video snippets scaling by time.'|
		|'Video settings extra right'|
		|'Switches off creating of video initial slide with feature file header.'|
		|'Disables creating the video slide with scenario name.'|
		|'Disables creating the final video slide with summary video information.'|
		|'Obsolete. Move the mouse pointer to an active form item'|
		|'Obsolete. Highlight active form items'|
		|'Group slides settings'|
		|'Group slides settings'|
		|'Settings of slide with the features title'|
		|'Group intro file settings'|
		|'Final slide settings'|
		|'Group outro file settings'|
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
		|'Scenario array protection from looping'|
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
		|'Test clients data'|
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
		|'Allure markdowns data'|
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
		|'There is support function decompose string to array of substrings'|
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
		|'Start recording user actions'|
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
		|'Start recording user actions in the selected test client'|
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
		|'Reset connection'|
		|'Reset SikuliX server connection'|
		|'Сollapse tree to steps'|
		|'Сollapse tree to steps'|
		|'Show/Hide variables board'|
		|'Show hide variables board'|
		|'Refresh variables board'|
		|'Refresh variables board'|
		|'Stop'|
		|'Go to line with error'|
		|'Go to line with step error'|
		|'Save settings to file'|
		|'Upload settings from file'|
		|'Close'|
		|'Close variables board'|
		|'Scenario generator'|
		|'by default'|
		|'Default value'|
		|'What to say'|
		|'Voice test'|
		|'Install service utilities'|
		|'The utilities allow you to highlight the mouse pointer and draw arrows to form items. They are required for most SikuliX steps.'|
		|'Open step definition'|
		|'Open step definition'|
		|'Create main scheme'|
		|'Fill in standard search profiles'|
		|'Select as 1C:Enterprise script code'|
		|'Select as 1C:Enterprise script code: \|\' code \'\|'|
		|'Scenario line comment'|
		|'Scenario line comment'|
		|'Set TestClient window size'|
		|'Set test client window size'|
		|'Check scenarios for duplication'|
		|'Check scenarios for duplication'|
		|'Chrome'|
		|'Google Chrome startup command'|
		|'Chrome+debug'|
		|'Google Chrome startup command with debugging'|