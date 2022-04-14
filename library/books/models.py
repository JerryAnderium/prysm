from django.db import models

# Create your models here.
class Author(models.Model):
	name = models.CharField(max_length=128)
	last_name = models.CharField(max_length=128, null=True)

class Publisher(models.Model):
    name = models.CharField(max_length = 256)
    publisher_country = models.CharField(max_length = 256, null=True)
    publisher_language = models.CharField(max_length = 256, null=True)

class Genre(models.Model):
    name = models.CharField(max_length = 128)
    sub_genre = models.CharField(max_length = 128, null=True)

class Store(models.Model):
    store_id = models.SmallIntegerField(null=True)
    name = models.CharField(max_length = 256) 
    store_city = models.CharField(max_length = 256, null=True)
    store_zip_code = models.CharField(max_length = 256, null=True)

class Book(models.Model):
	name = models.CharField(max_length = 256)
	publish_year = models.SmallIntegerField(null=True)
	pages = models.SmallIntegerField(null=True)
	price = models.DecimalField(max_digits = 6, decimal_places = 2, null=True)
	created_at = models.DateTimeField(auto_now_add=True, null=True)
	updated_at = models.DateTimeField(auto_now=True, null=True)
	authors = models.ManyToManyField(Author, through='BooksAuthors')

class BooksAuthors(models.Model):
	book = models.ForeignKey(Book, related_name='BookWithAuthors', on_delete=models.DO_NOTHING)
	author = models.ForeignKey(Author, on_delete=models.DO_NOTHING)

	def __str__(self):
		return f'{self.id}'