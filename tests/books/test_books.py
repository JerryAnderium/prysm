import pytest
from backend.books.models import *

@pytest.mark.django_db
def test_author_name():
  author = Author.objects.create(name='Paulo', last_name='Coelho')
  print('This is my authors name: ',author.name)
  assert author.last_name == 'Coelho'
  assert Author.objects.all().count() == 1
  author.delete()
  assert Author.objects.all().count() == 0

@pytest.mark.django_db
@pytest.mark.parametrize(
  'genero, subgenero',
  (
    ('Horror', 'Scifi'),
    ('Fantasía', 'Medieval'),
    ('No-ficción', 'Biografia')
  )
)
def test_genre_name(genero, subgenero):
  genre = Genre.objects.create(name=genero, sub_genre=subgenero)
  print('El genero de mi libro es: ',genre.name)
  print('El subgenero de mi libro es: ',genre.sub_genre)
  assert Genre.objects.all().count() == 1
  assert isinstance (genre.name, str)
  print(genre.name, ' y ', genre.sub_genre, 'son strings')

@pytest.mark.django_db
@pytest.mark.parametrize(
  'id, tienda, ciudad',
  (
    (1, 'Ghandi', 'Puebla'),
    (2, 'Sotano', 'CDMX'),
    (3, 'Leon', 'Monterrey')
  )
)
def test_store_name(id, tienda, ciudad):
  store = Store.objects.create(store_id=id, name=tienda, store_city=ciudad)
  print('La tienda donde compré mis libros es: ',store.name)
  print('La ciudad donde compré mis libros es: ',store.store_city)
  assert Store.objects.all().count() == 1
  assert isinstance (store.store_id, int)
  print(store.name, 'tiene el id', store.store_id)

@pytest.mark.django_db
@pytest.mark.parametrize(
  'editorial, idioma',
  (
    ('Horror', 'Scifi'),
    ('Fantasy', 'Medieval'),
    ('Non-fiction', 'Biography')
  )
)
def test_publisher_name(editorial, idioma):
  publisher = Publisher.objects.create(name=editorial, publisher_language=idioma)
  print('La editorial de mi libro es: ',publisher.name)
  print('El idioma en el que está escrito mi libro es: ',publisher.publisher_language)
  assert Publisher.objects.all().count() == 1

@pytest.mark.django_db
@pytest.mark.parametrize(
  'libro, genero',
  (
    ('It', 'horror'),
    ('Aurora', 'scifi'),
    ('Les miserables', 'novela histórica')
  )
)
def test_book_sold(libro, genero):
  book = Book.objects.create(name=libro)
  genre = Genre.objects.create(name=genero)
  print('El libro', book.name, 'que pertenece al genero de', genre.name)
  if book.name == 'It':
    book.delete()
    assert Book.objects.all().count() == 0
    print ('ya se vendió')
  else:
    assert Book.objects.all().count() == 1
    print ('está disponible')

@pytest.mark.django_db
@pytest.mark.parametrize(
  'libro, idioma',
  (
    ('It', 'inglés'),
    ('Aurora', 'español'),
    ('Les miserables', 'frances')
  )
)
def test_book_language(libro, idioma):
  book = Book.objects.create(name=libro)
  publisher = Publisher.objects.create(publisher_language=idioma)
  if publisher.publisher_language == 'inglés':
    print ('I love the book:', book.name)
  if publisher.publisher_language == 'español':
    print ('Amo el libro:', book.name)
  if publisher.publisher_language == 'frances':
    print ('J\'adore le livre:', book.name)

@pytest.mark.django_db
@pytest.mark.parametrize(
  'ciudad, pais',
  (
    ('CDMX', 'México'),
    ('Paris', 'Francia'),
    ('Inglaterra', 'Reino Unido')
  )
)
def test_city_country(ciudad, pais):
  store = Store.objects.create(store_city=ciudad)
  publisher = Publisher.objects.create(publisher_country=pais)
  print('La ciudad de', store.store_city, 'se encuentra en el pais', publisher.publisher_country)
  tienda_loc = store.store_city + publisher.publisher_country
  assert tienda_loc == ciudad + pais

@pytest.mark.django_db
def test_author_with_monkey(monkeypatch):
  
  author=Author.objects.create(name='nombre', last_name='apellido')
  
  class AuthorQuerySetMock():
    def _init_(self):
      self.some_value=1

    def count(self):
        return 4

  def model_count_mock():
    return AuthorQuerySetMock()
  
  monkeypatch.setattr(Author.objects, 'all', model_count_mock)
      
  # def model_count_mock():
  #   return 4
  # print(dir(Author.objects))
  # print(type(Author.objects))
  # print(type(Author.objects.all()))
  # print(dir(Author.objects.all()))
  # monkeypatch.setattr(Author.objects, 'count', model_count_mock)
  # assert Author.objects.count()==4
  # print('Haciendo el monkeypatch')

# @pytest.mark.django_db
# def test_author_with_monkey(monkeypatch):
# 	autor = Author.objects.create(name='Nombre', last_name='Apellido')
# 	def model_count_mock():
# 		return 4

# 	print(dir(Author.objects))
# 	print(type(Author.objects))
# 	print(type(Author.objects.all()))
# 	monkeypatch.setattr(Author.objects, 'count', model_count_mock)

# 	assert Author.objects.count() == 4
# 	print('Haciendo el monkeypatch')
