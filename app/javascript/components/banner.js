import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Marre de votre conjoint ?", "Besoin d'un peu de temps pour vous ?", "Mettez ses talents a profit : Exploitez le !"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };

