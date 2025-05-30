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

    /* menu */
    $(document).on('click', 'nav ul li a, .scroll', function(e) {
        //e.preventDefault();
        var el = $(this).attr('href');
        var elOffset = $(el).offset().top;
        $('body,html').animate({
            scrollTop: elOffset
        }, 500);
    });

    /* mapka */
	/*$('#mapCanvas').gmap({'center':'49.1867294, 15.4482842'}).bind('init', function(ev, map) {
        $('#mapCanvas').gmap('addMarker', {'position': '49.1867294, 15.4482842', 'bounds': true}).click(function() {
            $('#mapCanvas').gmap('openInfoWindow', {'content': '<div style="text-wrap: none"><strong>Hotel Antoň Telč</strong><br/>GPS: 49.1867294N, 15.4482842E <br/><a href="https://www.hotel-anton.cz/" target="_blank" class=u"mapAnchor">https://www.hotel-anton.cz/</a></div>'}, this);
        });
        $('#mapCanvas').gmap('option', 'zoom', 14);
    });*/
    var center = SMap.Coords.fromWGS84(15.4482842, 49.1867294);
    var m = new SMap(JAK.gel("mapCanvas"), center, 13);
    m.addDefaultLayer(SMap.DEF_BASE).enable();
    m.addDefaultControls();

    var layer = new SMap.Layer.Marker();
    m.addLayer(layer);
    layer.enable();

    var card = new SMap.Card();
    card.getHeader().innerHTML = "<strong>Hotel Antoň Telč</strong>";
    card.getBody().innerHTML = "<div style=\"text-wrap: none\">GPS: 49.1867294N, 15.4482842E <br/><a href=\"https://www.hotel-anton.cz/\" target=\"_blank\" class=\"mapAnchor\">https://www.hotel-anton.cz/</a></div>";

    var options = {
        title: "Hotel Antoň Telč"
    };
    var marker = new SMap.Marker(center, "myMarker", options);
    marker.decorate(SMap.Marker.Feature.Card, card);
    layer.addMarker(marker);

    /* přepínání tabů */
    $("#bottomContentCnt").organicTabs();

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

function stirSponsors(ul) {
    ul.hide();
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
            text = "<p>" + text.substr(0, lastDot) + " &hellip; <a href='#' class='expand'>číst dál</a></p>";
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
            jThis.find("a.expand").click(expand);
        }
    });
    ul.fadeIn(1000);
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

