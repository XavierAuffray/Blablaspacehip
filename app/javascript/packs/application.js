import "bootstrap";
import "slick-carousel";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";
import $ from "jquery"
import { initCheesyCanvasBackground } from './cheesy_background_canvas'


$('.slick-carousel').slick({
  slidesToShow: 2,
  slidesToScroll: 1,
  autoplay: false
});


initCheesyCanvasBackground()