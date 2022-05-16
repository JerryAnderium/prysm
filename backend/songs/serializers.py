from rest_framework import serializers
from .models import *

class ArtistSerializer(serializers.ModelSerializer):
    class Meta:
        model = Artist
        fields = ['id', 'name', 'nationality', 'slug', 'image']

class AlbumSerializer(serializers.ModelSerializer):
    class Meta:
        model = Album
        fields = ['id', 'name', 'genre', 'album_type', 'year', 'album_artist', 'slug', 'image']

class SongSerializer(serializers.ModelSerializer):
    class Meta:
        model = Song
        fields = ['id', 'name', 'track', 'song_artist', 'song_album','rank', 'plays', 'file', 'preview']