! function() {
    function a(a, b) {
        return a.className.match(new RegExp("(\\s|^)" + b + "(\\s|$)"))
    }

    function b(b, c) {
        a(b, c) || (b.className += " " + c)
    }

    function c(b, c) {
        if (a(b, c)) {
            var d = new RegExp("(\\s|^)" + c + "(\\s|$)");
            b.className = b.className.replace(d, " ")
        }
    }

    function d(a) {
        for (var b = a.offsetTop, c = a.offsetLeft, d = a.offsetWidth, e = a.offsetHeight; a.offsetParent;) a = a.offsetParent, b += a.offsetTop, c += a.offsetLeft;
        return b < window.pageYOffset + window.innerHeight && c < window.pageXOffset + window.innerWidth && b + e > window.pageYOffset && c + d > window.pageXOffset
    }

    function e(e, f) {
        f = f || document.querySelectorAll('iframe[src*="vine.co"]');
        for (var g = 0; g < f.length; g++) a(f[g], "loaded") && (d(f[g]) ? a(f[g], "in-view") || (b(f[g], "in-view"), f[g].contentWindow.postMessage("scrolledInToView", "*")) : (e || a(f[g], "in-view")) && (c(f[g], "in-view"), f[g].contentWindow.postMessage("scrolledOutOfView", "*")))
    }
    if (!window.VINE_EMBEDS) {
        window.VINE_EMBEDS = !0;
        var f = window.addEventListener ? "addEventListener" : "attachEvent",
            g = window[f];
        if (!navigator.userAgent.match(/(iPod|iPhone|iPad)/)) {
            var h = 0;
            window.setInterval(function() {
                e(h++ < 20)
            }, 100)
        }
        var i = "attachEvent" === f ? "onmessage" : "message";
        g(i, function(a) {
            if (/(vine\.co|localhost|(127|0)\.0\.0\.\d)/.test(a.origin)) {
                var d, f, g = a.data.split("::");
                if (d = Array.prototype.slice.call(document.querySelectorAll("iframe"), 0).filter(function(b) {
                    return b.contentWindow === a.source
                })[0])
                    if ("height" === g[0]) d.style.removeProperty ? d.style.removeProperty("height") : d.style.removeAttribute("height"), d.height = parseInt(g[2], 10);
                    else if ("unmute" === g[0]) {
                        b(d, "unmuted");
                        var h = document.querySelectorAll("iframe.loaded");
                        for (f = 0; f < h.length; f++) h[f] !== d && (c(h[f], "unmuted"), h[f].contentWindow.postMessage("mute", "*"))
                    } else "loaded" === g[0] && (d.setAttribute("frameborder", 0), b(d, "loaded"), c(d, "in-view"), e(!1, [d]), d.contentWindow.postMessage("hasEmbedScript", "*"))
            }
        })
    }
}();