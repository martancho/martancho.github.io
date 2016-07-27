var main = function(){
    $('.dropdown-toggle').click(function(){
        $('.dropdown-menu').toggle();
    })
    
    $('.arrow-next').click(function(){
        var currentSlide = $('.active-slide');
        var nextSlide = currentSlide.next();
        
        currentSlide.fadeOut(600).removeClass('active-slide');
        nextSlide.fadeIn(600).addClass('active-slide');

        if(nextSlide.next == 0){
        	nextSlide = $('.slide').first();
        }
    })
}

$(document).ready(main);