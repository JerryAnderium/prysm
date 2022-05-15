from django.db import models
from backend.users.models import User
from django.db.models import Count
from django.contrib.auth.models import User

class Artist(models.Model):
  name = models.CharField(max_length=128)
  nationality = models.CharField(max_length=128, null=True)
  image = models.ImageField(upload_to='artists/', null=True)
  slug = models.SlugField(max_length=128, unique=True, default='none')

  def __str__(self):
    return self.name

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
  image = models.ImageField(upload_to='albums/', null=True)
  genre = models.CharField(max_length=128)
  year = models.IntegerField(null=True)
  album_type = models.CharField(max_length=1, choices=ALBUM_TYPE_CHOICES)
  album_artist = models.ForeignKey(Artist, related_name='albumartist', on_delete=models.DO_NOTHING, default=None)
  slug = models.SlugField(max_length=128, unique=True, default='none')

  def __str__(self):
    return self.name


class Song(models.Model):
  track = models.IntegerField()
  name = models.CharField(max_length=128)
  song_artist = models.ForeignKey('Artist', related_name='songartist', on_delete=models.DO_NOTHING, default=None)
  song_album = models.ForeignKey('Album', related_name='songalbum', on_delete=models.DO_NOTHING, default=None)
  plays = models.IntegerField(null=True)
  rank = models.IntegerField(null=True)
  preview = models.FileField(upload_to='preview/', null=True)

  class Meta:
    ordering = ('track',)

  def __str__(self):
    return self.name