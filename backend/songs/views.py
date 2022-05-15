from rest_framework import viewsets
from rest_framework import permissions
from backend.songs.serializers import *
import base64
from rest_framework.response import Response

class ArtistViewSet(viewsets.ModelViewSet):
    queryset = Artist.objects.all().order_by('name')
    serializer_class = ArtistSerializer
    permission_classes = []

class AlbumViewSet(viewsets.ModelViewSet):
    queryset = Album.objects.all().order_by('name')
    serializer_class = AlbumSerializer
    permission_classes = []

class SongViewSet(viewsets.ModelViewSet):
    queryset = Song.objects.all().order_by('name')
    serializer_class = SongSerializer
    permission_classes = []
