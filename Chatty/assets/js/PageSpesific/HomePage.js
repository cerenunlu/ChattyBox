jQuery(function($) {

    // instead of listening to window scroll event, we use 'IntersectionObserver'
    // to observe 2 elements and determine when they become visible/invisible during scrolling

    // 1. when we scroll down, navbar becomes fixed
    // 2. when we scroll back up, it is still fixed until we reach document top
    // we observe 2 hidden elements (#scroll-down & #scroll-up) to determine when to do the above 1 & 2
    if (window.IntersectionObserver) {
        var observer = new window.IntersectionObserver(function(entries) {
            var entry = entries[0];
            if(entry.target.id == 'scroll-down') {
                // #scroll-down's CSS position is top:50vh
                // so when intersectionRatio < 1 and boundingClientRect.y < 0 means we've scrolled to top:50vh, so let's fix navbar and make it compact
                var isOut = entry.intersectionRatio < 1 && entry.boundingClientRect.y < 0
                if (isOut) {
                    $('.navbar').addClass('navbar-fixed navbar-compact');
                }
                else {// we are scrolling up but still scrollTop > 0                    
                    $('.navbar').removeClass('navbar-compact');
                }
            }
            else if(entry.target.id == 'scroll-up') {
                // #scroll-up's CSS position is top:0 , so intersectionRatio ==1 and boundingClientRect.y >= 0 means we've scrolled to scrollTop:0
                var isVisible = entry.intersectionRatio == 1 && entry.boundingClientRect.y >= 0
                if (isVisible) {
                    $('.navbar').removeClass('navbar-fixed');
                }
            }
        },
        {
            threshold: [1.0],
            delay: 100
        })

        observer.observe(document.getElementById('scroll-down'))
        observer.observe(document.getElementById('scroll-up'))
    }



    // add random circles and squares to .page-intro
    var bgColors = [
        'blue',
        'brown',
        'primary',
        'default',
        'success',
        'warning',
        'dark',
        'purple',
        'grey'
    ];

    var randomShapes = document.getElementById('random-shapes');
    var shapeCount = parseInt(Math.random() * 5 + 6);
    for(var i = 0; i < shapeCount; i++) {
        var width = parseInt(16 + Math.random()*24);
        var top = parseInt(Math.random()  *90);
        var left = parseInt(Math.random() * 90);
        $(randomShapes).append('<div class="pos-abs bgc-'+bgColors[parseInt(Math.random() * bgColors.length)]+'-m4 radius-round opacity-3" style="width:'+width+'px; height:'+width+'px; top:'+top+'%; left:'+left+'%;"></div>');
    }

    for(var i = 0; i < shapeCount; i++) {
        var width = parseInt(16 + Math.random()*16);
        var top = parseInt(Math.random()  *90);
        var left = parseInt(Math.random() * 90);
        $(randomShapes).append('<div class="pos-abs bgc-'+bgColors[parseInt(Math.random() * bgColors.length)]+'-m4 radius-1 opacity-3" style="width:'+width+'px; height:'+width+'px; top:'+top+'%; left:'+left+'%;"></div>');
    }

    ////////////

    //Animation on scroll plugin
    if (window.IntersectionObserver) {
        AOS.init({
            once: true,
            duration: 550
        });
    }
    else {
        // if AOS is not supported, remove the stylesheets so page elements become visible again
        $('link[href*="aos.css"],link[href*="aos.min.css"]').remove();
    }
})