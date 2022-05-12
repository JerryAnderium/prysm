from django.db import models
from library.users.models import User
from django.db.models import Count
from django.contrib.auth.models import User

class Artist(models.Model):
  name = models.CharField(max_length=128)
  nationality = models.CharField(max_length=128, null=True)
  image = models.ImageField(upload_to='artists/')
  # top1 = models.ForeignKey('Song', related_name='top1_artist', null=True, on_delete=models.SET_NULL)
  # top2 = models.ForeignKey('Song', related_name='top2_artist', null=True, on_delete=models.SET_NULL)
  # top3 = models.ForeignKey('Song', related_name='top3_artist', null=True, on_delete=models.SET_NULL)
  # top4 = models.ForeignKey('Song', related_name='top4_artist', null=True, on_delete=models.SET_NULL)
  # top5 = models.ForeignKey('Song', related_name='top5_artist', null=True, on_delete=models.SET_NULL)
  albums = models.ManyToManyField('Album', related_name='ArtistAlbums')
  songs = models.ManyToManyField('Song', related_name='ArtistSongs')

  def __str__(self):
    return self.name

  # def get_songs(self):
  #   return self.songs.all()

  # def get_albums(self):
  #   return self.albums.all()

  # def get_top_songs(self):
  #   return [self.top1, self.top2, self.top3, self.top4, self.top5]

class Album(models.Model):
  single = 'S'
  album = 'A'
  compilation = 'C'
  ep = 'E'

  ALBUM_TYPE_CHOICES = [
    (single, 'Single'),
    (album, 'Album'),
    (compilation, 'Compilation'),
    (ep, 'EP'),
  ]
  name = models.CharField(max_length=128)
  image = models.ImageField(upload_to='albums/')
  genre = models.CharField(max_length=128)
  release_date = models.DateField()
  album_type = models.CharField(max_length=1, choices=ALBUM_TYPE_CHOICES)
  artist = models.ForeignKey(Artist, on_delete=models.CASCADE)
  songs = models.ManyToManyField('Song', related_name='AlbumSongs')

class Song(models.Model):
  track = models.IntegerField()
  name = models.CharField(max_length=128)
  artist = models.ForeignKey(Artist, on_delete=models.CASCADE)
  plays = models.IntegerField()
  rank = models.IntegerField()
  album =  models.ForeignKey(Album, on_delete=models.CASCADE)
  # preview = models.CharField()

  class Meta:
    ordering = ('track',)

  def __str__(self):
    return self.name

class ArtistAlbums(models.Model):
  artist = models.ForeignKey(Artist, on_delete=models.CASCADE)
  album = models.ForeignKey(Album, on_delete=models.CASCADE)

class ArtistSongs(models.Model):
  artist = models.ForeignKey(Artist, on_delete=models.CASCADE)
  song = models.ForeignKey(Song, on_delete=models.CASCADE)

class AlbumSongs(models.Model):
  album = models.ForeignKey(Album, on_delete=models.CASCADE)
  song = models.ForeignKey(Song, on_delete=models.CASCADE)
  
