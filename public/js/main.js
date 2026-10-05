document.createElement('header');
document.createElement('section');
document.createElement('footer');
document.createElement('nav');
document.createElement('article');
document.createElement('figure');

$(document).ready(function() {

	hs.numberOfImagesToPreload = 0;

    /* podcasty a videa - jiné zobrazení při jedné a více než dvou položkách */
    $('.articleMedia').each(function() {
        var size = $('>li', this).size();
        if ( 1 === size ) {
            $(this).addClass('oneItem');
        } else if ( 2 < size ) {
            $(this).addClass('moreItems');
        }
    });

    /* menu - smooth scroll only to anchors present on this page */
    var reducedMotion = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;
    $(document).on('click', 'nav ul li a, .scroll', function(e) {
        var samePage = this.pathname === location.pathname
            || (this.pathname === '/index.html' && location.pathname === '/');
        var target = $(this.hash);
        if (!samePage || !target.length) {
            return;
        }
        e.preventDefault();
        history.pushState(null, '', this.hash);
        if (reducedMotion) {
            target[0].scrollIntoView();
        } else {
            $('body,html').animate({
                scrollTop: target.offset().top
            }, 500);
        }
        // move keyboard / screen reader focus along with the scroll
        target.attr('tabindex', -1)[0].focus({preventScroll: true});
    });

    /* mapa - the 1 MB SDK loads only when the map is about to scroll into view */
    lazyLoadMap(document.getElementById('mapCanvas'));

    /* přepínání tabů (only on the home page, archive pages navigate by plain links) */
    if ($('#bottomContent').length) {
        $("#bottomContentCnt").organicTabs();
    }

    /* galerie */
    $(document).on('click', '.highslide', function() {
        return hs.expand(this, { slideshowGroup: 'gallery'});
    });

    hs.onSetClickEvent = function ( sender, e ) {
        // set the onclick for the element, output the group name to the caption for debugging
        e.element.onclick = function () {
            return hs.expand(this, { slideshowGroup: $(this).parents('.galleryGroup').attr('id'),
                captionText: this.parentNode.className });
        };
        // return false to prevent the onclick being set once again
        return false;
    };

    /* sponzoři */
	stirSponsors($("#sponsors"));

});

function lazyLoadMap(container) {
    if (!container) {
        return;
    }
    var load = function() {
        var sdk = 'https://cdn.maptiler.com/maptiler-sdk-js/v2.0.3/maptiler-sdk';
        $('<link rel="stylesheet">').attr('href', sdk + '.css').appendTo('head');
        $.ajax({url: sdk + '.umd.js', dataType: 'script', cache: true}).done(function() {
            // Hotel Antoň, Slavatovská 92, Telč
            var hotel = [15.4482822, 49.1867292];
            maptilersdk.config.apiKey = 'WYRmW70yZYslUvfCANa4';

            var map = new maptilersdk.Map({
                container: container,
                style: maptilersdk.MapStyle.STREETS,
                center: hotel,
                zoom: 15
            });

            new maptilersdk.Marker({color: '#FF0000'})
                .setLngLat(hotel)
                .setPopup(new maptilersdk.Popup().setHTML('<h3>Hotel Antoň</h3><p>Slavatovská 92<br>588 56 Telč</p><p><strong>GPS:</strong><br>49.1867292N, 15.4482822E</p><a href=\"https://www.hotel-anton.cz/\" target=\"_blank\" class=\"mapAnchor\">https://www.hotel-anton.cz/</a>'))
                .addTo(map);
        });
    };
    if (!('IntersectionObserver' in window)) {
        load();
        return;
    }
    var observer = new IntersectionObserver(function(entries) {
        if (entries[0].isIntersecting) {
            observer.disconnect();
            load();
        }
    }, {rootMargin: '600px'});
    observer.observe(container);
}

function stirSponsors(ul) {
    var items = ul.find("li").toArray();
    var randomizedItems = shuffle(items);
    ul.empty();
    for(item in randomizedItems) {
        ul.append(randomizedItems[item]);
    }
    ul.find("li div").each(function() {
        var jThis = $(this);
        if (1 < jThis.find("p").length) {
            var original = jThis.html();
            var text = jThis.find("p:first").html();
            var lastDot = text.lastIndexOf('.');
            text = "<p>" + text.substr(0, lastDot) + " &hellip; <a href='#' class='expand' role='button'>číst dál</a></p>";
            jThis.html(text);
            jThis.data("value", "shortened");
            var expand = function () {
                if("shortened" == jThis.data("value")) {
                    jThis.html(original);
                    jThis.data("value", "original");
                }
            };
            var shorten = function () {
                if("original" == jThis.data("value")) {
                    jThis.html(text);
                    jThis.data("value", "shortened");
                }
            };
            jThis.hover(expand, shorten);
            jThis.on("click", "a.expand", function(e) {
                e.preventDefault();
                expand();
                jThis.attr("tabindex", -1).focus();
            });
        }
    });
}

function shuffle(array) {
    var currentIndex = array.length, temporaryValue, randomIndex ;

    // While there remain elements to shuffle...
    while (0 !== currentIndex) {

        // Pick a remaining element...
        randomIndex = Math.floor(Math.random() * currentIndex);
        currentIndex -= 1;

        // And swap it with the current element.
        temporaryValue = array[currentIndex];
        array[currentIndex] = array[randomIndex];
        array[randomIndex] = temporaryValue;
    }

    return array;
}

