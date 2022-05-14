from django.contrib import admin
from .models import Song, Artist, Album

@admin.register(Song)
class SongAdmin(admin.ModelAdmin):
    list_display = ['name', 'track', 'rank', 'plays', 'song_artist', 'song_album', 'preview']
    # list_editable = ['name', 'track', 'rank',]

@admin.register(Album)
class AlbumAdmin(admin.ModelAdmin):
    list_display = ['name', 'year', 'genre', 'slug', 'album_artist', 'album_type', 'image']
    # list_editable = ['name', 'album_type', 'genre', 'year',]
    prepopulated_fields = {'slug': ('name',)}
    
@admin.register(Artist)
class ArtistAdmin(admin.ModelAdmin):
    list_display = ['name', 'nationality', 'slug', 'image']
    # list_editable = ['name', 'nationality',]
    prepopulated_fields = {'slug': ('name',)}