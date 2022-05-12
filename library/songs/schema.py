import graphene
# from graphene_django import DjangoObjectType
# from graphene.types.field import Field
# from library.songs.models import *

# class ArtistType(DjangoObjectType):
# 	class Meta:
# 		model = Artist
# 		fields = ('id', 'name', 'nationality', 'top1', 'top2', 'top3', 'top4', 'top5', 'albums')

# class SongType(DjangoObjectType):
# 	class Meta:
# 		model = Song
# 		fields = '__all__'

# class SongQuery(graphene.ObjectType):
	
# 	all_artists = graphene.List(ArtistType, first=graphene.Int(), skip=graphene.Int())
# 	song_by_name = graphene.Field(SongType, name=graphene.String(required=True))

# 	def resolve_all_artists(root, info, first = None, skip = None):
# 		from django.contrib.auth.middleware import get_user
# 		from graphql_jwt.utils import get_payload, get_user_by_payload

# 		context = info.context

# 		print('info',dir(context))
		
# 		user = info.context.user
# 		print('IS AUTHENTICATED? ', user.is_authenticated)
		
# 		if not user.is_authenticated:
# 			raise Exception("Authentication credentials were not provided")

# 		artists = Artist.objects.all()
# 		if skip is not None:
# 			artists = artists[:skip]
# 		if first is not None:
# 			artists = artists[first:]

# 		return artists

# 	def resolve_song_by_name(root, info, name):
# 		try:
# 			return Song.objects.get(name=name)
# 		except Song.DoesNotExist:
# 			return None

# class UpsertArtistsMutation(graphene.Mutation):
# 	class Arguments:
# 		id = graphene.ID()
# 		name = graphene.String(required=True)

# 	artist = graphene.Field(ArtistType)
# 	status = graphene.String()

# 	@classmethod
# 	def mutate(cls, root, info, name, id = None):
# 		artist = None
# 		if id is not None:
# 			try:
# 				artist = Artist.objects.get(pk=id)
# 				artist.name = name
# 				artist.nationality = nationality
# 				artist.top1 = top1
# 				artist.top2 = top2
# 				artist.top3 = top3
# 				artist.top4 = top4
# 				artist.top5 = top5
# 				artist.albums = albums
# 				artist.save()
# 			except Artist.DoesNotExist:
# 				return cls( song = None, status = 'Artist not found')
# 		else:
# 			artist = Artist.objects.create(name=name)
# 			artist.save()
# 		return UpsertArtistMutation(artist=artist)

# class DeleteArtistMutation(graphene.Mutation):
#     ok = graphene.Boolean()

#     class Arguments:
#         id = graphene.ID()

#     @classmethod
#     def mutate(cls, root, info, **kwargs):
#         artist = Artist.objects.get(pk=kwargs["id"])
#         artist.delete()
#         return cls(ok=True)

# class Object1Input(graphene.InputObjectType):
# 	id = graphene.ID()
# 	name = graphene.String()

# class ArtistsInput(graphene.InputObjectType):
# 	id = graphene.ID()
# 	name = graphene.String(required=True)

# class UpsertSongMutation(graphene.Mutation):
# 	class Arguments:
# 		id = graphene.ID()
# 		name = graphene.String(required=True)
# 		price = graphene.Decimal(required=True, description='Average price')
# 		created_at = graphene.DateTime()
# 		updated_at = graphene.DateTime()
# 		artists = graphene.List(ArtistsInput)

# 	song = graphene.Field(SongType)
# 	status = graphene.String()

# 	@classmethod
# 	def mutate(cls, root, info, **kwargs):

# 		print('info:',dir(info.context))
# 		print('headers:',info.context.headers)

# 		l_artists = []
# 		if 'artists' in kwargs:
# 			artists = kwargs.pop('artists')
# 			for artist in artists:
# 				aux = None
# 				if 'id' in artist:
# 					try:
# 						aux = Artist.objects.get(pk=artist['id'])
# 						aux.name = artist['name']
# 						aux.save()
# 					except Artist.DoesNotExist:
# 						return cls( status = 'Artist not found', song = None)
# 				else:
# 					aux = Artist.objects.create(name=artist['name'])
# 					aux.save()
# 				l_artists.append(aux)
		
# 		if 'id' in kwargs:
# 			song = None
# 			try:
# 				song = Song.objects.get(pk=kwargs['id'])
# 				song.name = kwargs['name']
# 				song.price = kwargs['price']
# 				if 'created_at' in kwargs:
# 					song.created_at = kwargs['created_at']
# 				if 'updated_at' in kwargs:
# 					song.updated_at = kwargs['updated_at']
# 				song.save()
# 			except Song.DoesNotExist:
# 				return cls( song = None, status = 'Song not found')
# 		else:
# 			song = Song.objects.create(**kwargs)
# 			song.save()
# 			for artist in l_artists:
# 				songs_artists = SongsArtists.objects.create(song=song, artist=artist)
# 				songs_artists.save()
# 		return UpsertSongMutation(song = song, status = 'ok')

# class SongMutation(graphene.ObjectType):
# 	upsert_artist = UpsertArtistMutation.Field()
# 	delete_artist = DeleteArtistMutation.Field()
# 	upsert_song = UpsertSongMutation.Field()