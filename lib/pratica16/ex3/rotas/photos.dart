class Photo {
  final String title;
  final String cityName;
  final String description;
  final String url;

  Photo(this.title, this.cityName, this.description, this.url);

  static List<Photo> getPhotos() {
    Photo newYork = Photo(
      'Nova York',
      'Nova York, EUA',
      'A cidade de Nova York compreende 5 distritos situados no encontro do rio Hudson com o Oceano Atlântico. No centro da cidade fica Manhattan, um distrito com alta densidade demográfica que está entre os principais centros comerciais, financeiros e culturais do mundo (Wikipedia).',
      'https://images.pexels.com/photos/213781/pexels-photo-213781.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    );

    Photo paris = Photo(
      'Paris',
      'Paris, França',
      'Paris, a capital da França, é uma importante cidade europeia e um centro mundial de arte, moda, gastronomia e cultura. Sua paisagem urbana do século XIX é cortada por avenidas largas e pelo rio Sena. A cidade é conhecida por monumentos como a Torre Eiffel e a Catedral de Notre-Dame, uma construção gótica do século XII, sendo famosa também pela cultura dos cafés e por lojas de estilistas famosos na Rue du Faubourg Saint-Honoré',
      'https://letsgobahia.com.br/storage/app/uploads/public/607/a1a/324/607a1a32469cb617859738.jpeg',
    );

    Photo londres = Photo(
      'Londres',
      'Londres, Inglaterra',
      'Londres, capital da Inglaterra e do Reino Unido, é uma cidade do século 21 com uma história que remonta à era romana. Seu centro abriga as sedes imponentes do Parlamento, a famosa torre do relógio do Big Ben e a Abadia de Westminster, local de coroação dos monarcas britânicos. Do outro lado do rio Tâmisa, a roda gigante London Eye tem vista panorâmica do complexo cultural da margem sul e de toda a cidade.',
      'https://viagemeturismo.abril.com.br/wp-content/uploads/2016/12/londres-big-ben.jpeg',
    );

    Photo beloHorizonte = Photo(
      'Belo Horizonte',
      'Belo Horizonte, Brasil',
      'Belo Horizonte é a capital do estado de Minas Gerais, no sudeste do Brasil. Rodeada de montanhas, a cidade é conhecida pelo enorme Estádio Mineirão. Construído em 1965, o estádio alberga também o Museu Brasileiro do Futebol. Nas proximidades encontra-se a Lagoa da Pampulha e o Conjunto Arquitetónico da Pampulha, que inclui a Igreja de São Francisco de Assis, cujo teto é ondulado e que foi concebida pelo arquiteto modernista brasileiro Oscar Niemeyer.',
      'https://prefeitura.pbh.gov.br/sites/default/files/styles/slideshow/public/estrutura-de-governo/desenvolvimento/BH.jpg?itok=IfNw42tJ',
    );

    List<Photo> photos = [
      newYork,
      paris,
      londres,
      beloHorizonte
    ];
    return photos;
  }
}
