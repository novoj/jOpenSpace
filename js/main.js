document.createElement('header');
document.createElement('section');
document.createElement('footer');
document.createElement('nav');
document.createElement('article');
document.createElement('figure');

$(document).ready(function() {

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

    /* topContent - výška pravého sloupce stejná jako levého */
    if ( $(window).width() > 767 ) {
        var topContentHeightArr = new Array();
        $('#topContent .twoCols > *').each(function() {
            var height = $(this).outerHeight(false);
            topContentHeightArr.push(height);
        });
        if ( topContentHeightArr[1] < topContentHeightArr[0] ) {
            $('#topContent .twoCols > .fr').css({'height': topContentHeightArr[0] + 'px'});
        } else {
            $('#topContent .twoCols > .fl').css({'height': topContentHeightArr[1] + 'px'});
        }
    }

    /* mapka */
    $('#mapCanvas').gmap().bind('init', function(ev, map) {

        $('#mapCanvas').gmap('addMarker', {'position': '49.461988, 15.242486', 'bounds': true}).click(function() {
            $('#mapCanvas').gmap('openInfoWindow', {'content': '<div style="text-wrap: none"><strong>Hotel Farma</strong><br/>GPS: 49°27\'43.2"N 15°14\'33.0"E<br/><a href="http://www.hotel-farma.cz/" target="_blank" class="mapAnchor">http://www.hotel-farma.cz/</a></div>'}, this);
        });
        $('#mapCanvas').gmap('option', 'zoom', 14);
    });

    /* přepínání tabů */
    $("#bottomContent").organicTabs();

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

    /* zobrazení tabu, pokud přijde jako hash */
    $('#bottomContent').each(function() {
        var hash = window.location.hash;
        detectHashChange(hash);
    });

    /* detekce eventu history.back */
    var hashChangeSource = '';
    $(document).on('click', 'a', function(e) {
        hashChangeSource = 'click';
    });

    $(window).on('hashchange', function(event){
        if ( hashChangeSource != 'click' ) {
            var hash = window.location.hash;
            detectHashChange(hash);
        }
        hashChangeSource = '';
    });

});

function detectHashChange (hash) {
    $('#bottomContentSwitch ul li a').each(function() {
        if ($(this).attr('href') == hash) {
            $('#bottomContentSwitch ul li a').removeClass('current');
            $('.list-wrap > div').addClass('hide').css({'position' : 'relative', 'top' : '0px', 'left' : '0px', 'display' : 'none'});
            $(this).addClass('current');
            $('.list-wrap > div' + hash).removeClass('hide').addClass('hide').removeAttr('style');
        }
    });
}

function stirSponsors(ul) {
    ul.hide();
    var items = ul.find("li").toArray();
    var randomizedItems = shuffle(items);
    ul.empty();
    for(item in randomizedItems) {
        ul.append(randomizedItems[item]);
    }
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

