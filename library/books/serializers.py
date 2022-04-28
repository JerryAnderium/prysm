from rest_framework import serializers
from .models import *

class ThingSerializer(serializers.ModelSerializer):
    class Meta:
        model = Thing
        fields = ['id', 'name', 'image']

class AuthorSerializer(serializers.ModelSerializer):
    class Meta:
        model = Author
        fields = ['id', 'name', 'last_name']
       
class BookSerializer(serializers.ModelSerializer):
    # author=AuthorSerializer()
    authors = serializers.StringRelatedField(many=True, read_only=True)
    class Meta:
        model = Book
        fields = ['id', 'name', 'publish_year', 'pages', 'price', 'created_at', 'updated_at', 'authors']
    
    '''
    # def f(*args,**kwargs): f(1,2,3,key:1:4,key2:5):

    def create(self, vdata):
        author = vdata.pop('author)
        author_instance = Author.objects.create(**author)
        book_instance = Book.objects.create(author = author_instance, **vdata)
        return book_instance
    '''

class PublisherSerializer(serializers.ModelSerializer):
    class Meta:
        model = Publisher
        fields = ['id', 'name', 'publisher_country', 'publisher_language']

class GenreSerializer(serializers.ModelSerializer):
    class Meta:
        model = Genre
        fields = ['id', 'name', 'sub_genre']

class StoreSerializer(serializers.ModelSerializer):
    class Meta:
        model = Store
        fields = ['id', 'store_id', 'name', 'store_city', 'store_zip_code']

class BooksAuthorsSerializer(serializers.ModelSerializer):
    class Meta:
        model = BooksAuthors
        fields = ['id', 'book', 'author']
