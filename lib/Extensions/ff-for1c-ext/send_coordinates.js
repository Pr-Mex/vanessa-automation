(async function() {
    ///////////////////////////////////////////////////////////////////////////
    /// START UP
    ///////////////////////////////////////////////////////////////////////////

    let settings =  {
		serviceUrl: "http://localhost/shb2/hs/service/activeElement",
        serviceUrlDraw: "http://localhost/shb2/hs/service/drawPage",
        authCredentials: {
          authtype: "Basic",
          username: "admin",
          password: "admin"
        },
        debug: false,
        timeout: 300
    };

    let headers = new Headers();
    headers.append('Authorization', basicAuthHeader(settings.authCredentials));
    headers.append('Content-Type', 'application/json');

    let id = 0;

    let previousCoordinates = {};

    function basicAuthHeader(cred) {
        return 'Basic ' + btoa(cred.username + ":" + cred.password);
    }

    async function sendCoordinates(){
        let activeElement = document.activeElement;
        let selectedField = '';

        if(activeElement.classList.contains('gridBody')){
            selectedField = activeElement.querySelector('.select.focus');
        }else if(activeElement.classList.contains('frameCommand')){
            selectedField = activeElement.querySelector('.focus');
        }else if(activeElement.classList.contains('cloud' && 'panelsShadow')){
            selectedField = activeElement.querySelector('.select');
        }else if(activeElement.classList.contains('cloud' && 'cloudBorder')){
            selectedField = activeElement.querySelector('.select');
        }

        activeElement = selectedField ? selectedField : activeElement;

        let currentCoordinates = activeElement.getBoundingClientRect() !== null ? activeElement.getBoundingClientRect() : {};
        if(JSON.stringify(currentCoordinates) === JSON.stringify(previousCoordinates)) {
            setTimeout(() => {
                sendCoordinates()
            }, settings.timeout);
            return;
        }

        function removeAnimation(){
            activeElement.style.animation = '';
            activeElement.removeEventListener("animationend", removeAnimation);
        }

        if(settings.debug){
            activeElement.style.animation = 'blink-bg 0.3s linear 0s 3';
            activeElement.addEventListener("animationend", removeAnimation)
        }
        
        previousCoordinates = currentCoordinates;
    
       let response = await fetch(settings.serviceUrl, {
            method: 'POST',
            headers: headers,
            body: JSON.stringify({id: window.document.activeElement.id, currentCoordinates: currentCoordinates})
        });

        let data = await response.json();
        if (data.highlight){
            activeElement.style.animation = 'blink-bg 0.3s linear 0s 3';
            activeElement.addEventListener("animationend", removeAnimation)
        }

        setTimeout(() => {
            sendCoordinates();
        }, settings.timeout);
    }

    async function getData(){
        try{
            let response = await fetch(settings.serviceUrlDraw, {
                method: 'GET',
                headers: headers
            });
    
            let responseText = await response.json();
            let drawMap = responseText.Draw;
            let deleteArray = responseText.Delete;
            Object.keys(drawMap).length !== 0 ? console.log(responseText) : '';
    
            if(Object.keys(drawMap).length !== 0){
                Object.keys(drawMap).forEach(id => {
                    console.log(id)
                    let node = document.createElement('span');
                    node.innerHTML = `${drawMap[id].body}`;
                    node.id = id;
                    node.style.position = "fixed";
                    node.style.zIndex = "999999";
                    node.style.top = drawMap[id].y + 'px';
                    node.style.left = drawMap[id].x + 'px';
                    window.top.document.body.appendChild(node);  
                })
            }
    
            if(deleteArray.length !== 0){
                deleteArray.forEach(id => {
                    window.top.document.querySelector(`#${id}`) !== null ? window.top.document.querySelector(`#${id}`).remove() : '';
                })
            }
            
            setTimeout(() => {
                getData();
            }, 1000);
        }catch(error){
            console.log(error)
        }
    }

    setTimeout(sendCoordinates,settings.timeout);
    window === window.top ? setTimeout(getData, 1000) : '';

    function consolelog(e){
        // console.log(e.target, e.type, e.explicitOriginalTarget, e)
    }

    // setTimeout(() => {
    //     document.body.addEventListener('focusin', consolelog);
    //     document.querySelectorAll('*').forEach(node => {
    //         node.addEventListener('click', consolelog);
    //     })
    // }, 8000)

})();