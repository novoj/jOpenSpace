document.createElement('header');
document.createElement('section');
document.createElement('footer');
document.createElement('nav');
document.createElement('article');
document.createElement('figure');

var recalculateColumns = function() {
    if($(window).width() > 767) {
        var topContentHeightArr = new Array();
        $('#topContent .twoCols > *').each(function () {
            var height = $(this).outerHeight(false);
            topContentHeightArr.push(height);
            console.log(height);
        });
        if(topContentHeightArr[1] < topContentHeightArr[0]) {
            $('#topContent .twoCols > .fr').css({'height': topContentHeightArr[0] + 'px'});
            $('#topContent .twoCols > .fl').css({'height': 'auto'});
        } else {
            $('#topContent .twoCols > .fr').css({'height': 'auto'});
            $('#topContent .twoCols > .fl').css({'height': topContentHeightArr[1] + 'px'});
        }
    }
};

$(document).ready(function() {

	/* topContent - výška pravého sloupce stejná jako levého */
	setTimeout(recalculateColumns, 100);

    /* podcasty a videa - jiné zobrazení při jedné a více než dvou položkách */
    $('.articleMedia').each(function() {
        var size = $('>li', this).size();
        if ( size == 1 ) {
            $(this).addClass('oneItem');
        } else if ( size > 2 ) {
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
    $('#mapCanvas').gmap().bind('init', function(ev, map) {
        map('addMarker', {'position': '49.6383333, 15.2991667', 'bounds': true}).click(function() {
            map('openInfoWindow', {'content': '<div style="text-wrap: none"><strong>Hotel Luna</strong><br/>GPS: 49°38\'18"N 15°17\'57"E<br/><a href="https://www.hotelluna.cz/" target="_blank" class="mapAnchor">https://www.hotelluna.cz/</a></div>'}, this);
        });
        map('option', 'zoom', 14);
    });

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
        if (jThis.find("p").length > 1) {
            var original = jThis.html();
            var text = jThis.find("p:first").html();
            var lastDot = text.lastIndexOf('.');
            text = "<p>" + text.substr(0, lastDot) + " &hellip; <a href='#' class='expand'>číst dál</a></p>";
            jThis.html(text);
            jThis.data("value", "shortened");
            var expand = function () {
                if(jThis.data("value") == "shortened") {
                    jThis.html(original);
                    jThis.data("value", "original");
                    recalculateColumns();
                }
            };
            var shorten = function () {
                if(jThis.data("value") == "original") {
                    jThis.html(text);
                    jThis.data("value", "shortened");
                    recalculateColumns();
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

