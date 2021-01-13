jQuery(function($) {
    var bodyContainer = document.querySelector('.body-container');
    bodyContainer.style.overflow = 'visible' // for sticky nav to work

    var profileTabs = document.querySelector('.sticky-nav-md');
    profileTabs.addEventListener('sticky-change', function(e) {
        this.classList.toggle('is-stuck', e.detail.isSticky)
    })
    
    $('#sidebar')
    .on('show.ace.sidebar', function() {
        if (this.classList.contains('sidebar-push') ) {
            bodyContainer.style.overflow = '' // so we don't have body scrollbars
        }
    })
    .on('hide.ace.sidebar', function() {
        if (this.classList.contains('sidebar-push') ) {
            bodyContainer.style.overflow = 'visible' //so we have our sticky nav back
        }
    })


    var _animate = !AceApp.Util.isReducedMotion();

    //progress chart
    var skillData = [80, 74, 68, 50];
    var skillColor = ['#895ea6', '#7cb45f', '#d45485', '#0dadc5'];
    var skillTextColor = ['purple-d1', 'success-d1', 'pink', 'info'];
    var skillName = ['Graphic Design', 'HTML &amp; CSS', 'Angular', 'Backend'];


    for(var p = 0 ; p < skillData.length ; p++) {
       var canvas =
       $('<div class="pos-rel m-2 text-center text-'+skillTextColor[p]+'" style="max-width: 30%;">\
            <canvas height="100" width="100"></canvas>\
            <span class="position-center text-85 font-bolder">'+skillName[p]+'</span>\
        </div>');
  
       $('#skill-chart').append(canvas);
       canvas = canvas.find('canvas');

       var config = {
            type: 'doughnut',
            data: {
                datasets: [{
                    data: [skillData[p], 100 - skillData[p]],
                    backgroundColor: [
                        skillColor[p],
                        "#eee"
                    ],
                    hoverBackgroundColor: [
                        skillColor[p],
                        "#eee"
                    ],
                    borderWidth: 0
                }]
            },
            
            options: {
                responsive: true,
                cutoutPercentage: 90,
                rotation: Math.PI * 0.5,
                legend: {
                    display: false
                },
                animation: {
                    //animateScale: true,
                    duration: _animate ? 500 : 0,
                },
                tooltips: {
                    enabled: false,
                }
            }
        };

        new Chart(canvas.get(0), config);
    }


    ///

    $('#id-field0').aceFileInput({
        style: 'drop',
        droppable: true,
    
        container: 'border-1 border-dashed brc-grey-m4 brc-h-warning-m1',
    
        placeholderClass: 'text-125 text-600 text-grey-l2 my-2',
        placeholderText: 'Drop profile image here or click to choose',
        placeholderIcon: '<i class="fa fa-user fa-3x text-purple-l1 my-2"></i>',
    
        thumbnail: 'large',

        allowExt: 'gif|jpg|jpeg|png|webp|svg'
    });

});