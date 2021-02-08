
function pauseConnectionToTestManager() {
	if(!window.testRequestTimer) {
		// Ищем контейнер глобальных подключенных обработчиков ожидания,
		// и запоминаем его в глобальную переменну, чтобы не искать каждый раз.
		let testRequestTimer;
		let testRequestFunctionPropertyName;
	
		for(let propName in window) {
			let prop = window[propName];
			if(!prop || typeof prop !== "object")
				continue;
			
			// Внешний контейнер должен иметь свойство disposed
			if(prop['disposed'] === undefined)
				continue;
			
			let hasWindow = false;
			for(let innerPropName in prop) {
				let innerProp = prop[innerPropName];
				if(!innerProp || typeof innerProp !== "object")
					continue;
				
				// Контейнер содержим минимум 2 платформенных обработчика ожидания: ping и testRequest (для /TESTCLIENT)
				if(innerProp['ping'] && innerProp['testRequest']) {
					testRequestTimer = innerProp.testRequest;
					break;
				}
			}
			
			if(testRequestTimer)
				break;
		}
		
		for(let propName in testRequestTimer) {
			if(typeof testRequestTimer[propName] === "function") {
				testRequestFunctionPropertyName = propName;
				break;
			}
		}
		
		window.testRequestTimer = testRequestTimer;
		window.testRequestFunctionPropertyName = testRequestFunctionPropertyName;
	}
	
	if(!window.originalTestRequestFunction)
		window.originalTestRequestFunction = window.testRequestTimer[window.testRequestFunctionPropertyName];
	
	window.testRequestTimer[window.testRequestFunctionPropertyName] = function() {};
}

function resumeConnectionToTestManager() {
	window.testRequestTimer[window.testRequestFunctionPropertyName] = window.originalTestRequestFunction;
}
