import graphene
from graphene_django import DjangoObjectType    
from library.songs.models import *

class ArtistType(DjangoObjectType):
    class Meta:
        model = Artist
        fields = '__all__'

class AlbumType(DjangoObjectType):
    class Meta:
        model = Album
        fields = '__all__'

class SongType(DjangoObjectType):
    class Meta:
        model = Song
        fields = '__all__'

class Query(graphene.ObjectType):
    all_songs = graphene.List(SongType)
    all_artists = graphene.List(ArtistType)
    all_albums = graphene.List(AlbumType)

    def resolve_all_songs(root, info):
        return Song.objects.select_related('song_artist', 'song_album').all() 

    def resolve_all_artists(root, info):
        return Artist.objects.all()
    
    def resolve_all_albums(root, info):
        return Album.objects.all()

schema = graphene.Schema(query=Query)