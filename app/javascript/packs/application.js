import "bootstrap";
import "../plugins/flatpickr"

import { openCity } from '../components/togglable_vertical_tabs';

import { loadDynamicBannerText } from '../components/banner';

if (window.location.pathname === "/") {
  loadDynamicBannerText();
}
