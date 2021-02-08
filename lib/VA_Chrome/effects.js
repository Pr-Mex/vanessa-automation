window.VanessaVisualEffect = {
    show: (text, timeout = 3000, options = undefined) => {
        timeout = VanessaVisualEffect.fixNumericOptions(timeout, options);
        let props = { color: "white", count: 10, backgroundColor: '#013cff', fontSize: '200%', duration: 3000 };
        Object.assign(props, options);
        VanessaVisualEffect.options = props;
        if (options && options.effect) {
            let effect = VanessaVisualEffect[options.effect];
            if (effect) return effect(text, timeout, props);
        }
        let node = VanessaVisualEffect.fillScreen(text, props);
        if (timeout) setTimeout(() => node.remove(), timeout);
    },

    fixNumericOptions: (timeout, options) => {
        if (options) for (let p in options) if (!isNaN(options[p])) options[p] = parseInt(options[p]);
        if (!isNaN(timeout)) timeout = parseInt(timeout);
        return timeout;
    },

    completed: () => document.getElementById("vanessa-visual") == null,

    createParent: () => {
        let parent = document.getElementById("vanessa-visual");
        if (parent) return parent;
        parent = document.createElement("div");
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

    removeParent: () => {
        let parent = document.getElementById("vanessa-visual");
        if (parent) parent.remove();
    },

    fillScreen: (text, options = undefined) => {
        let node = document.createElement('div');
        node.style.display = "table";
        node.style.position = 'fixed';
        node.style.zIndex = 999999;
        node.style.left = 0;
        node.style.top = 0;
        node.style.width = '100%';
        node.style.height = '100%';
        node.style.textAlign = "center";
        let span = document.createElement('div');
        span.innerHTML = text;
        span.style.display = "table-cell";
        span.style.verticalAlign = "middle";
        node.appendChild(span);
        Object.assign(node.style, VanessaVisualEffect.options);
        window.top.document.body.appendChild(node);
        return node;
    },

    1: (text, timeout, options) => {
        let parent = VanessaVisualEffect.createParent();
        let textNode = undefined;
        let w = window.innerWidth;
        let h = window.innerHeight;
        let r = Math.round(Math.max(w, h) * 0.75);
        let r2 = {}; r2[r] = 0;

        new mojs.Shape({
            parent: parent,
            shape: 'circle',
            fill: options.backgroundColor,
            radius: { 0: r },
            easing: 'sin.out',
            duration: options.duration,
            isYoyo: true,
            onComplete: () => textNode = VanessaVisualEffect.fillScreen(text, options),
        }).then({
            delay: timeout,
            onComplete: () => textNode.remove(),
        }).then({
            radius: r2,
            duration: options.duration,
            easing: 'sin.out',
            onComplete: () => VanessaVisualEffect.removeParent(),
        }).play();

        new mojs.Shape({
            parent: parent,
            shape: 'circle',
            fill: 'none',
            radius: { 10: w / 15 },
            duration: options.duration / 3 * 2,
            easing: 'sin.out',
            delay: options.duration / 3,
            stroke: options.color,
            strokeWidth: { 50: 4 },
            isShowEnd: false,
        }).play();

        new mojs.Burst({
            parent: parent,
            degree: 360,
            radius: w / 5,
            count: options.count,
            children: {
                shape: 'line',
                radius: w / 12,
                scale: 1,
                stroke: options.color,
                strokeWidth: 2,
                strokeDasharray: '100%',
                strokeDashoffset: { '-100%': '100%' },
                duration: options.duration / 5 * 4,
                easing: 'circ.in',
                delay: options.duration / 5,
            },
        }).play();
    },

    2: (text, timeout, options) => {
        let parent = VanessaVisualEffect.createParent();
        let w = window.innerWidth;
        let h = window.innerHeight;
        let r = w / options.count / 2;
        let textNode = undefined;
        let showText = () => textNode = VanessaVisualEffect.fillScreen(text, options);
        let hideText = () => textNode.remove();
        let timeline = new mojs.Timeline();
        for (let x = r; x < w + r; x += r * 2) {
            let left = {};
            timeline.add(new mojs.Shape({
                parent: parent,
                shape: 'rect',
                fill: options.backgroundColor,
                left: x,
                top: 0,
                radiusX: { 0: r + 2 },
                radiusY: h,
                duration: options.duration,
                easing: 'sin.out',
                onComplete: showText,
            }).then({
                delay: timeout,
                onComplete: hideText,
            }).then({
                duration: options.duration,
                easing: 'sin.out',
                radiusX: { '100%': 0 },
                onComplete: () => VanessaVisualEffect.removeParent(),
            }));
            showText = undefined;
            hideText = undefined;
        };
        timeline.play();
    },

    3: (text, timeout, options) => {
        let parent = VanessaVisualEffect.createParent();
        let w = window.innerWidth;
        let h = window.innerHeight;
        let r = Math.ceil(Math.min(w, h) / options.count);
        let textNode = undefined;
        let showText = () => textNode = VanessaVisualEffect.fillScreen(text, options);
        let hideText = () => textNode.remove();
        let timeline = new mojs.Timeline();
        for (let x = r; x < w + r; x += r * 2) {
            for (let y = r; y < h + r; y += r * 2) {
                timeline.add(new mojs.Shape({
                    parent: parent,
                    shape: 'rect',
                    fill: options.backgroundColor,
                    left: x,
                    top: y,
                    radius: { 0: r + 2 },
                    duration: options.duration,
                    easing: 'sin.out',
                    onComplete: showText,
                }).then({
                    delay: timeout,
                    onComplete: hideText,
                }).then({
                    duration: options.duration,
                    easing: 'sin.out',
                    radiusX: { '100%': 0 },
                    radiusY: { '100%': 0 },
                    onComplete: () => VanessaVisualEffect.removeParent(),
                }));
                showText = undefined;
                hideText = undefined;
            }
        };
        timeline.play();
    },

    4: (text, timeout, options) => {
        let parent = VanessaVisualEffect.createParent();
        let w = window.innerWidth;
        let h = window.innerHeight;
        let r = Math.ceil(Math.min(w, h) / options.count);
        let textNode = undefined;
        let showText = () => textNode = VanessaVisualEffect.fillScreen(text, options);
        let hideText = () => textNode.remove();
        let timeline = new mojs.Timeline();
        for (let x = r; x < w + r; x += r * 2) {
            for (let y = r; y < h + r; y += r * 2) {
                timeline.add(new mojs.Shape({
                    parent: parent,
                    shape: 'rect',
                    fill: options.backgroundColor,
                    left: x,
                    top: y,
                    angle: { 0: 90 },
                    radius: { 0: r + 2 },
                    duration: options.duration,
                    easing: 'sin.out',
                    onComplete: showText,
                }).then({
                    delay: timeout,
                    onComplete: hideText,
                }).then({
                    angle: { 0: 90 },
                    duration: options.duration,
                    easing: 'sin.out',
                    radiusX: { '100%': 0 },
                    radiusY: { '100%': 0 },
                    onComplete: () => VanessaVisualEffect.removeParent(),
                }));
                showText = undefined;
                hideText = undefined;
            }
        };
        timeline.play();
    },

    5: (text, timeout, options) => {
        let parent = VanessaVisualEffect.createParent();
        let w = window.innerWidth;
        let h = window.innerHeight;
        let count = options.count;
        let ry = h / count / 2;
        let textNode = undefined;
        let showText = () => textNode = VanessaVisualEffect.fillScreen(text, options);
        let hideText = () => textNode.remove();
        let timeline = new mojs.Timeline();
        for (let i = 0; i < count; i++) {
            let radiusXX = {}; radiusXX[w] = 0;
            let delay = options.duration / count / 2;
            timeline.add(new mojs.Shape({
                parent: parent,
                shape: 'rect',
                fill: options.backgroundColor,
                left: 0,
                top: h - i * ry * 2 - ry,
                radiusX: { 0: w },
                radiusY: ry + 2,
                delay: delay * i,
                duration: options.duration - delay * i,
                easing: 'sin.out',
                onComplete: showText,
            }).then({
                delay: timeout,
                onComplete: hideText,
            }).then({
                duration: options.duration + delay * i,
                easing: 'sin.out',
                radiusX: radiusXX,
                onComplete: () => VanessaVisualEffect.removeParent(),
            }));
            showText = undefined;
            hideText = undefined;
        };
        timeline.play();
    },
}
