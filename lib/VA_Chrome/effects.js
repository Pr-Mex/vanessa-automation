window.VanessaVisualEffect = {
    show: (text, timeout = 3000, options = undefined) => {
        timeout = VanessaVisualEffect.fixNumericOptions(timeout, options);
        if (options && options.effect) {
            let effect = VanessaVisualEffect[options.effect];
            if (effect) return effect(text, timeout, options);
        }
        fillScreen(text, timeout, options);
    },

    fixNumericOptions: (timeout, options) => {
        if (options) for (let p in options) if (!isNaN(options[p])) options[p] = parseInt(options[p]);
        if (!isNaN(timeout)) timeout = parseInt(timeout);
        return timeout;
    },

    createParent: () => {
        let parent = document.createElement("div");
        parent.id = "vanessa-visual";
        parent.style.position = "absolute";
        parent.style.height = "100%";
        parent.style.width = "100%";
        parent.style.overflow = "hidden";
        parent.style.display = "table";
        parent.style.zIndex = 99998;
        document.body.appendChild(parent);
        return parent;
    },

    fillScreen: (text, options = undefined) => {
        let px = value => (typeof value == 'number' ? value + 'px' : value);
        if (options == undefined) options = { top: '3em', right: '3em' };
        let node = document.createElement('div');
        node.style.display = "table";
        node.style.fontSize = '200%';
        node.style.position = 'fixed';
        node.style.zIndex = 999999;
        node.style.left = 0;
        node.style.top = 0;
        node.style.width = '100%';
        node.style.height = '100%';
        node.style.color = 'white';
        node.style.textAlign = "center";
        node.style.backgroundColor = 'blue';
        let span = document.createElement('div');
        span.innerHTML = text;
        span.style.display = "table-cell";
        span.style.verticalAlign = "middle";
        node.appendChild(span);
        let props = ['color', 'fontSize', 'backgroundColor'];
        for (let p of props) if (options[p]) node.style[p] = px(options[p]);
        window.top.document.body.appendChild(node);
        return node;
    },
    
    1: (text, timeout, options) => {
        let props = { color: "white", backgroundColor: '#013cff', fontSize: '200%' };
        Object.assign(props, options);
        let parent = VanessaVisualEffect.createParent();
        let textNode = undefined;
        let w = window.innerWidth;
        let h = window.innerHeight;
        let r = Math.round(Math.max(w, h) * 0.75);
        let r2 = {}; r2[r] = 0;

        new mojs.Shape({
            parent: parent,
            shape: 'circle',
            fill: props.backgroundColor,
            radius: { 0: r },
            easing: 'sin.out',
            duration: 2000,
            isYoyo: true,
            onComplete: () => textNode = VanessaVisualEffect.fillScreen(text, props),
        }).then({
            delay: timeout,
            onComplete: () => textNode.remove(),
        }).then({
            radius: r2,
            duration: 2000,
            easing: 'sin.out',
            onComplete: () => parent.remove(),
        }).play();

        new mojs.Shape({
            parent: parent,
            shape: 'circle',
            fill: 'none',
            radius: { 10: w / 15 },
            duration: 700,
            easing: 'sin.out',
            delay: 300,
            stroke: props.color,
            strokeWidth: { 50: 4 },
            isShowEnd: false,
        }).play();

        new mojs.Burst({
            parent: parent,
            degree: 360,
            radius: w / 5,
            count: 10,
            children: {
                shape: 'line',
                radius: w / 12,
                scale: 1,
                stroke: props.color,
                strokeDasharray: '100%',
                strokeDashoffset: { '-100%': '100%' },
                duration: 800,
                easing: 'circ.in',
                delay: 200,
            },
        }).play();
    },

    2: (text, timeout, options) => {
        let props = { color: "white", backgroundColor: '#013cff', fontSize: '200%' };
        Object.assign(props, options);
        let parent = VanessaVisualEffect.createParent();
        let w = window.innerWidth;
        let h = window.innerHeight;
        let r = w / 14;
        let textNode = undefined;
        let showText = () => textNode = VanessaVisualEffect.fillScreen(text, 0, props);
        let hideText = () => textNode.remove();
        let onFinish = () => parent.remove();
        let timeline = new mojs.Timeline();
        for (let x = r; x < w + r; x += r * 2) {
            let left = {};
            timeline.add(new mojs.Shape({
                parent: parent,
                shape: 'rect',
                fill: props.backgroundColor,
                left: x,
                top: 0,
                radiusX: { 0: r + 2 },
                radiusY: h,
                duration: 2000,
                easing: 'sin.out',
                onComplete: showText,
            }).then({
                delay: timeout,
                onComplete: hideText,
            }).then({
                duration: 2000,
                easing: 'sin.out',
                radiusX: { '100%': 0 },
                onComplete: onFinish,
            }));
            showText = undefined;
            hideText = undefined;
            onFinish = undefined;
        };
        timeline.play();
    },

    3: (text, timeout, options) => {
        let props = { color: "white", backgroundColor: '#013cff', fontSize: '200%' };
        Object.assign(props, options);
        let parent = VanessaVisualEffect.createParent();
        let w = window.innerWidth;
        let h = window.innerHeight;
        let r = Math.ceil(Math.min(w, h) / 8);
        let textNode = undefined;
        let showText = () => textNode = VanessaVisualEffect.fillScreen(text, 0, props);
        let hideText = () => textNode.remove();
        let onFinish = () => parent.remove();
        let timeline = new mojs.Timeline();
        for (let x = r; x < w + r; x += r * 2) {
            for (let y = r; y < h + r; y += r * 2) {
                timeline.add(new mojs.Shape({
                    parent: parent,
                    shape: 'rect',
                    fill: props.backgroundColor,
                    left: x,
                    top: y,
                    radius: { 0: r + 2 },
                    duration: 2000,
                    easing: 'sin.out',
                    onComplete: showText,
                }).then({
                    delay: timeout,
                    onComplete: hideText,
                }).then({
                    duration: 2000,
                    easing: 'sin.out',
                    radiusX: { '100%': 0 },
                    radiusY: { '100%': 0 },
                    onComplete: onFinish,
                }));
                showText = undefined;
                hideText = undefined;
                onFinish = undefined;
            }
        };
        timeline.play();
    },

    4: (text, timeout, options) => {
        let props = { color: "white", backgroundColor: '#013cff', fontSize: '200%' };
        Object.assign(props, options);
        let parent = VanessaVisualEffect.createParent();
        let w = window.innerWidth;
        let h = window.innerHeight;
        let r = Math.ceil(Math.min(w, h) / 8);
        let textNode = undefined;
        let showText = () => textNode = VanessaVisualEffect.fillScreen(text, 0, props);
        let hideText = () => textNode.remove();
        let onFinish = () => parent.remove();
        let timeline = new mojs.Timeline();
        for (let x = r; x < w + r; x += r * 2) {
            for (let y = r; y < h + r; y += r * 2) {
                timeline.add(new mojs.Shape({
                    parent: parent,
                    shape: 'rect',
                    fill: props.backgroundColor,
                    left: x,
                    top: y,
                    angle: { 0: 90 },
                    radius: { 0: r + 2 },
                    duration: 2000,
                    easing: 'sin.out',
                    onComplete: showText,
                }).then({
                    delay: timeout,
                    onComplete: hideText,
                }).then({
                    angle: { 0: 90 },
                    duration: 2000,
                    easing: 'sin.out',
                    radiusX: { '100%': 0 },
                    radiusY: { '100%': 0 },
                    onComplete: onFinish,
                }));
                showText = undefined;
                hideText = undefined;
                onFinish = undefined;
            }
        };
        timeline.play();
    },

    5: (text, timeout, options) => {
        let props = { color: "white", backgroundColor: '#013cff', fontSize: '200%' };
        Object.assign(props, options);
        let parent = VanessaVisualEffect.createParent();
        let w = window.innerWidth;
        let h = window.innerHeight;
        let count = 10;
        let rx = w / count;
        let ry = h / count;
        let textNode = undefined;
        let showText = () => textNode = VanessaVisualEffect.fillScreen(text, 0, props);
        let hideText = () => textNode.remove();
        let onFinish = () => parent.remove();
        let timeline = new mojs.Timeline();
        for (let i = 0; i < count; i++) {
            let radiusXX = {}; radiusXX[w] = 0;
            timeline.add(new mojs.Shape({
                parent: parent,
                shape: 'rect',
                fill: props.backgroundColor,
                left: 0,
                top: h - i * ry,
                radiusX: { 0: w },
                radiusY: ry + 2,
                delay: 200 * i,
                duration: 1800 - 200 * i,
                easing: 'sin.out',
                onComplete: showText,
            }).then({
                delay: timeout,
                onComplete: hideText,
            }).then({
                duration: 2000,
                easing: 'sin.in',
                radiusX: radiusXX,
                onComplete: onFinish,
            }));
            showText = undefined;
            hideText = undefined;
            onFinish = undefined;
        };
        timeline.play();
    },
}
