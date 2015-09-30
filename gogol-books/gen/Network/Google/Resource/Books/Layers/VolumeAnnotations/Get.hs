{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Books.Layers.VolumeAnnotations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the volume annotation.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksLayersVolumeAnnotationsGet@.
module Books.Layers.VolumeAnnotations.Get
    (
    -- * REST Resource
      LayersVolumeAnnotationsGetAPI

    -- * Creating a Request
    , layersVolumeAnnotationsGet
    , LayersVolumeAnnotationsGet

    -- * Request Lenses
    , lvagQuotaUser
    , lvagPrettyPrint
    , lvagUserIp
    , lvagLocale
    , lvagKey
    , lvagAnnotationId
    , lvagVolumeId
    , lvagSource
    , lvagOauthToken
    , lvagLayerId
    , lvagFields
    , lvagAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksLayersVolumeAnnotationsGet@ which the
-- 'LayersVolumeAnnotationsGet' request conforms to.
type LayersVolumeAnnotationsGetAPI =
     "volumes" :>
       Capture "volumeId" Text :>
         "layers" :>
           Capture "layerId" Text :>
             "annotations" :>
               Capture "annotationId" Text :>
                 QueryParam "locale" Text :>
                   QueryParam "source" Text :>
                     Get '[JSON] Volumeannotation

-- | Gets the volume annotation.
--
-- /See:/ 'layersVolumeAnnotationsGet' smart constructor.
data LayersVolumeAnnotationsGet = LayersVolumeAnnotationsGet
    { _lvagQuotaUser    :: !(Maybe Text)
    , _lvagPrettyPrint  :: !Bool
    , _lvagUserIp       :: !(Maybe Text)
    , _lvagLocale       :: !(Maybe Text)
    , _lvagKey          :: !(Maybe Text)
    , _lvagAnnotationId :: !Text
    , _lvagVolumeId     :: !Text
    , _lvagSource       :: !(Maybe Text)
    , _lvagOauthToken   :: !(Maybe Text)
    , _lvagLayerId      :: !Text
    , _lvagFields       :: !(Maybe Text)
    , _lvagAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersVolumeAnnotationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvagQuotaUser'
--
-- * 'lvagPrettyPrint'
--
-- * 'lvagUserIp'
--
-- * 'lvagLocale'
--
-- * 'lvagKey'
--
-- * 'lvagAnnotationId'
--
-- * 'lvagVolumeId'
--
-- * 'lvagSource'
--
-- * 'lvagOauthToken'
--
-- * 'lvagLayerId'
--
-- * 'lvagFields'
--
-- * 'lvagAlt'
layersVolumeAnnotationsGet
    :: Text -- ^ 'annotationId'
    -> Text -- ^ 'volumeId'
    -> Text -- ^ 'layerId'
    -> LayersVolumeAnnotationsGet
layersVolumeAnnotationsGet pLvagAnnotationId_ pLvagVolumeId_ pLvagLayerId_ =
    LayersVolumeAnnotationsGet
    { _lvagQuotaUser = Nothing
    , _lvagPrettyPrint = True
    , _lvagUserIp = Nothing
    , _lvagLocale = Nothing
    , _lvagKey = Nothing
    , _lvagAnnotationId = pLvagAnnotationId_
    , _lvagVolumeId = pLvagVolumeId_
    , _lvagSource = Nothing
    , _lvagOauthToken = Nothing
    , _lvagLayerId = pLvagLayerId_
    , _lvagFields = Nothing
    , _lvagAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lvagQuotaUser :: Lens' LayersVolumeAnnotationsGet' (Maybe Text)
lvagQuotaUser
  = lens _lvagQuotaUser
      (\ s a -> s{_lvagQuotaUser = a})

-- | Returns response with indentations and line breaks.
lvagPrettyPrint :: Lens' LayersVolumeAnnotationsGet' Bool
lvagPrettyPrint
  = lens _lvagPrettyPrint
      (\ s a -> s{_lvagPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lvagUserIp :: Lens' LayersVolumeAnnotationsGet' (Maybe Text)
lvagUserIp
  = lens _lvagUserIp (\ s a -> s{_lvagUserIp = a})

-- | The locale information for the data. ISO-639-1 language and ISO-3166-1
-- country code. Ex: \'en_US\'.
lvagLocale :: Lens' LayersVolumeAnnotationsGet' (Maybe Text)
lvagLocale
  = lens _lvagLocale (\ s a -> s{_lvagLocale = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lvagKey :: Lens' LayersVolumeAnnotationsGet' (Maybe Text)
lvagKey = lens _lvagKey (\ s a -> s{_lvagKey = a})

-- | The ID of the volume annotation to retrieve.
lvagAnnotationId :: Lens' LayersVolumeAnnotationsGet' Text
lvagAnnotationId
  = lens _lvagAnnotationId
      (\ s a -> s{_lvagAnnotationId = a})

-- | The volume to retrieve annotations for.
lvagVolumeId :: Lens' LayersVolumeAnnotationsGet' Text
lvagVolumeId
  = lens _lvagVolumeId (\ s a -> s{_lvagVolumeId = a})

-- | String to identify the originator of this request.
lvagSource :: Lens' LayersVolumeAnnotationsGet' (Maybe Text)
lvagSource
  = lens _lvagSource (\ s a -> s{_lvagSource = a})

-- | OAuth 2.0 token for the current user.
lvagOauthToken :: Lens' LayersVolumeAnnotationsGet' (Maybe Text)
lvagOauthToken
  = lens _lvagOauthToken
      (\ s a -> s{_lvagOauthToken = a})

-- | The ID for the layer to get the annotations.
lvagLayerId :: Lens' LayersVolumeAnnotationsGet' Text
lvagLayerId
  = lens _lvagLayerId (\ s a -> s{_lvagLayerId = a})

-- | Selector specifying which fields to include in a partial response.
lvagFields :: Lens' LayersVolumeAnnotationsGet' (Maybe Text)
lvagFields
  = lens _lvagFields (\ s a -> s{_lvagFields = a})

-- | Data format for the response.
lvagAlt :: Lens' LayersVolumeAnnotationsGet' Text
lvagAlt = lens _lvagAlt (\ s a -> s{_lvagAlt = a})

instance GoogleRequest LayersVolumeAnnotationsGet'
         where
        type Rs LayersVolumeAnnotationsGet' =
             Volumeannotation
        request = requestWithRoute defReq booksURL
        requestWithRoute r u LayersVolumeAnnotationsGet{..}
          = go _lvagQuotaUser _lvagPrettyPrint _lvagUserIp
              _lvagLocale
              _lvagKey
              _lvagAnnotationId
              _lvagVolumeId
              _lvagSource
              _lvagOauthToken
              _lvagLayerId
              _lvagFields
              _lvagAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LayersVolumeAnnotationsGetAPI)
                      r
                      u
