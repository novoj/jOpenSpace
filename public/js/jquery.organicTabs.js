(function($) {

    $.organicTabs = function(el, options) {

        var base = this;
        base.$el = $(el);
        base.$nav = base.$el.find(".nav");

        base.init = function() {

            base.options = $.extend({},$.organicTabs.defaultOptions, options);

            base.$nav.on("click", "li > a", function(event) {

	            // Figure out current list via CSS class
	            var curList = base.$el.find("a.current").attr("data-tab"),

		            // List moving to
		            $newList = $(this),

		            // Figure out ID of new list
		            listID = $newList.attr("data-tab"),

		            // Set outer wrapper height to (static) height of current inner list
		            $allListWrap = base.$el.find(".list-wrap"),
		            curListHeight = $allListWrap.height();
	                $allListWrap.height(curListHeight);

                var switcher = function() {

	                if ((listID != curList) && ( base.$el.find(":animated").length == 0)) {

		                // Fade out current list
		                base.$el.find("#"+curList).fadeOut(base.options.speed, function() {

			                // Fade in new list on callback
			                base.$el.find("#"+listID).fadeIn(base.options.speed);

			                // Adjust outer wrapper to fit new list snuggly
			                var newHeight = base.$el.find("#"+listID).height();
			                $allListWrap.animate({
				                height: newHeight
			                });

			                // Remove highlighting - Add to just-clicked tab
			                base.$el.find(".nav li a").removeClass("current");
			                $newList.addClass("current");

		                });

	                }
                };

                if ($("#" + listID).length === 0) {
	                $.get(
	                    $(this).attr("href"),
                        function(data) {
	                        var archiveContent = $(data).find("#" + listID).addClass("hide");
	                        $("#archive").append(archiveContent);
		                    switcher();
                        }
	                );
                } else {
                    switcher();
                }

                // Don't behave like a regular link
                // Stop propagation and bubbling
	            event.preventDefault();
                return false;
            });

        };
        base.init();
    };

    $.organicTabs.defaultOptions = {
        "speed": 300
    };

    $.fn.organicTabs = function(options) {
        return this.each(function() {
            (new $.organicTabs(this, options));
        });
    };

})(jQuery);