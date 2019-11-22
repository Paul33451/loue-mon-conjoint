import "bootstrap";
import { openCity } from '../components/togglable_vertical_tabs';

import { loadDynamicBannerText } from '../components/banner';

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

if (window.location.pathname === "/") {
  loadDynamicBannerText();
}
