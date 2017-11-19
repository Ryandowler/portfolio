var menuClosed = true;
jQuery(document).ready(function($){
	var secondaryNav = $('.cd-secondary-nav'),
		secondaryNavTopPosition = secondaryNav.offset().top,
		taglineOffesetTop = $('#cd-intro-tagline').offset().top + $('#cd-intro-tagline').height() + parseInt($('#cd-intro-tagline').css('paddingTop').replace('px', '')),
		contentSections = $('.cd-section'),
		addedLinksToMobilemenu = false;
	
	$(window).on('scroll', function(){
		//on desktop - assign a position fixed to logo and action button and move them outside the viewport
		( $(window).scrollTop() > taglineOffesetTop ) ? $('#cd-logo, .cd-btn').addClass('is-hidden') : $('#cd-logo, .cd-btn').removeClass('is-hidden');
		
		//on desktop - fix secondary navigation on scrolling
		if($(window).scrollTop() > secondaryNavTopPosition ) {
			//fix secondary navigation
			secondaryNav.addClass('is-fixed');
			//push the .cd-main-content giving it a top-margin
			$('.cd-main-content').addClass('has-top-margin');	
			//on Firefox CSS transition/animation fails when parent element changes position attribute
			//so we to change secondary navigation childrens attributes after having changed its position value
			setTimeout(function() {
	            secondaryNav.addClass('animate-children');
	            $('#cd-logo').addClass('slide-in');
	            $('.cd-btn').show();
				$('.cd-btn').addClass('slide-in'); //add contact btn to second navbar
	        }, 50);
		} else {
			secondaryNav.removeClass('is-fixed');
			$('.cd-main-content').removeClass('has-top-margin');
			setTimeout(function() {
	            secondaryNav.removeClass('animate-children');
	            $('#cd-logo').removeClass('slide-in');
				$('.cd-btn').removeClass('slide-in');

	            $('.cd-btn').hide();
	        }, 50);
		}

		//on desktop - update the active link in the secondary fixed navigation
		updateSecondaryNavigation();
	});

	function updateSecondaryNavigation() {
		contentSections.each(function(){
			var actual = $(this),
				actualHeight = actual.height() + parseInt(actual.css('paddingTop').replace('px', '')) + parseInt(actual.css('paddingBottom').replace('px', '')),
				actualAnchor = secondaryNav.find('a[href="#'+actual.attr('id')+'"]');
			if ( ( actual.offset().top - secondaryNav.height() <= $(window).scrollTop() ) && ( actual.offset().top +  actualHeight - secondaryNav.height() > $(window).scrollTop() ) ) {
				actualAnchor.addClass('active');
			}else {
				actualAnchor.removeClass('active');
			}
		});
	}

	//on mobile - open/close secondary navigation clicking/tapping the .cd-secondary-nav-trigger
	$('.cd-secondary-nav-trigger').on('click', function(event){
		event.preventDefault();
		$(this).toggleClass('menu-is-open');
		theUl = secondaryNav.find('ul');
		theUl.toggleClass('is-visible');
		//add the items to mobile menu Once
		if (!addedLinksToMobilemenu){
			theUl.append('<li id="backToTop" class="visible-xs"><a href="" onclick="scrollUp(event);"><span class="tab"><text id="tb">Back To Top <i class="fa fa-arrow-up" aria-hidden="true"></i> </span> </span></a></li>');
			addedLinksToMobilemenu = true;
		}
	});

	//smooth scrolling when clicking on the secondary navigation items
	secondaryNav.find('ul a').on('click', function(event){
        event.preventDefault();
        var target= $(this.hash);
        $('body,html').animate({
        	'scrollTop': target.offset().top - secondaryNav.height() + 1
        	}, 400
        ); 
        //on mobile - close secondary navigation
        $('.cd-secondary-nav-trigger').removeClass('menu-is-open');
        secondaryNav.find('ul').removeClass('is-visible');
    });

    //on mobile - open/close primary navigation clicking/tapping the menu icon
	$('.cd-primary-nav').on('click', function(event){
		if($(event.target).is('.cd-primary-nav')) $(this).children('ul').toggleClass('is-visible');
	});
});

//scroll to top when click button in mobile menu
function scrollUp(event){
event.preventDefault();
$('html, body').animate({
	scrollTop: ($('.cd-header').offset().top)
	},800);
	closeMobileMenu();
}	

function closeMobileMenu(){
	$('.cd-secondary-nav-trigger').removeClass('menu-is-open');
	$('.cd-secondary-nav').find('ul').removeClass('is-visible');
	$('#mobileMenuBtn').removeClass('mobileMenuBtn_Open');
}

function openMobileMenu(){
	$('.cd-secondary-nav-trigger').addClass('menu-is-open');
	$('.cd-secondary-nav').find('ul').addClass('is-visible');
	alert("uuu");
	$('#mobileMenuBtn').addClass('mobileMenuBtn_Open');
}

function mobileMenuClicked(){ 
	if (menuClosed == true){ 
		openMobileMenu();
		menuClosed = false;
		
	}else{
		closeMobileMenu();
		menuClosed = true;
	}
}

//make mobile menu close when click anywhere but the menu its-self
$( document ).ready(function() {
  $("body").click(function(){
      closeMobileMenu();
  });

  $("#mobileMenuBtn").click(function(event) {
    event.stopPropagation();
  });
});