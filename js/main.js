document.createElement('header');
document.createElement('section');
document.createElement('footer');
document.createElement('nav');
document.createElement('article');
document.createElement('figure');

$(document).ready(function() {

    /* menu */
    $(document).on('click', 'nav ul li a', function(e) {
        e.preventDefault();
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
        $('#mapCanvas').gmap('addMarker', {'position': '49.69059,15.9948', 'bounds': true}).click(function() {
            $('#mapCanvas').gmap('openInfoWindow', {'content': '<a href="http://zakova-hora.hotel.cz/" target="_blank" class="mapAnchor">http://zakova-hora.hotel.cz/</a>'}, this);
        });
        $('#mapCanvas').gmap('option', 'zoom', 16);
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
    }

});

