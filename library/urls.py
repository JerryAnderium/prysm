from django.views.decorators.csrf import csrf_exempt
from django.contrib import admin
from django.urls import path, include
from django.conf.urls.static import static
from django.conf import settings
from library.views import CustomTokenObtainPairView
from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
)
from graphene_django.views import GraphQLView

urlpatterns = [
    # ...
    path("graphql", csrf_exempt(GraphQLView.as_view(graphiql=True))),
]

# JWT URLs
urlpatterns += [
    path('api/token/', CustomTokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('api/token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
]

urlpatterns += [
    path('admin/', admin.site.urls),
    path('api_auth/', include('rest_framework.urls')),
    path('users/', include('library.users.urls')),
    path('songs/', include('library.songs.urls')),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)