{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.Books.Layers.VolumeAnnotations.Get
    (
    -- * REST Resource
      LayersVolumeAnnotationsGetResource

    -- * Creating a Request
    , layersVolumeAnnotationsGet'
    , LayersVolumeAnnotationsGet'

    -- * Request Lenses
    , lvagQuotaUser
    , lvagPrettyPrint
    , lvagUserIP
    , lvagLocale
    , lvagKey
    , lvagAnnotationId
    , lvagVolumeId
    , lvagSource
    , lvagOAuthToken
    , lvagLayerId
    , lvagFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksLayersVolumeAnnotationsGet@ which the
-- 'LayersVolumeAnnotationsGet'' request conforms to.
type LayersVolumeAnnotationsGetResource =
     "volumes" :>
       Capture "volumeId" Text :>
         "layers" :>
           Capture "layerId" Text :>
             "annotations" :>
               Capture "annotationId" Text :>
                 QueryParam "locale" Text :>
                   QueryParam "source" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] Volumeannotation

-- | Gets the volume annotation.
--
-- /See:/ 'layersVolumeAnnotationsGet'' smart constructor.
data LayersVolumeAnnotationsGet' = LayersVolumeAnnotationsGet'
    { _lvagQuotaUser    :: !(Maybe Text)
    , _lvagPrettyPrint  :: !Bool
    , _lvagUserIP       :: !(Maybe Text)
    , _lvagLocale       :: !(Maybe Text)
    , _lvagKey          :: !(Maybe Key)
    , _lvagAnnotationId :: !Text
    , _lvagVolumeId     :: !Text
    , _lvagSource       :: !(Maybe Text)
    , _lvagOAuthToken   :: !(Maybe OAuthToken)
    , _lvagLayerId      :: !Text
    , _lvagFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersVolumeAnnotationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvagQuotaUser'
--
-- * 'lvagPrettyPrint'
--
-- * 'lvagUserIP'
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
-- * 'lvagOAuthToken'
--
-- * 'lvagLayerId'
--
-- * 'lvagFields'
layersVolumeAnnotationsGet'
    :: Text -- ^ 'annotationId'
    -> Text -- ^ 'volumeId'
    -> Text -- ^ 'layerId'
    -> LayersVolumeAnnotationsGet'
layersVolumeAnnotationsGet' pLvagAnnotationId_ pLvagVolumeId_ pLvagLayerId_ =
    LayersVolumeAnnotationsGet'
    { _lvagQuotaUser = Nothing
    , _lvagPrettyPrint = True
    , _lvagUserIP = Nothing
    , _lvagLocale = Nothing
    , _lvagKey = Nothing
    , _lvagAnnotationId = pLvagAnnotationId_
    , _lvagVolumeId = pLvagVolumeId_
    , _lvagSource = Nothing
    , _lvagOAuthToken = Nothing
    , _lvagLayerId = pLvagLayerId_
    , _lvagFields = Nothing
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
lvagUserIP :: Lens' LayersVolumeAnnotationsGet' (Maybe Text)
lvagUserIP
  = lens _lvagUserIP (\ s a -> s{_lvagUserIP = a})

-- | The locale information for the data. ISO-639-1 language and ISO-3166-1
-- country code. Ex: \'en_US\'.
lvagLocale :: Lens' LayersVolumeAnnotationsGet' (Maybe Text)
lvagLocale
  = lens _lvagLocale (\ s a -> s{_lvagLocale = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lvagKey :: Lens' LayersVolumeAnnotationsGet' (Maybe Key)
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
lvagOAuthToken :: Lens' LayersVolumeAnnotationsGet' (Maybe OAuthToken)
lvagOAuthToken
  = lens _lvagOAuthToken
      (\ s a -> s{_lvagOAuthToken = a})

-- | The ID for the layer to get the annotations.
lvagLayerId :: Lens' LayersVolumeAnnotationsGet' Text
lvagLayerId
  = lens _lvagLayerId (\ s a -> s{_lvagLayerId = a})

-- | Selector specifying which fields to include in a partial response.
lvagFields :: Lens' LayersVolumeAnnotationsGet' (Maybe Text)
lvagFields
  = lens _lvagFields (\ s a -> s{_lvagFields = a})

instance GoogleAuth LayersVolumeAnnotationsGet' where
        authKey = lvagKey . _Just
        authToken = lvagOAuthToken . _Just

instance GoogleRequest LayersVolumeAnnotationsGet'
         where
        type Rs LayersVolumeAnnotationsGet' =
             Volumeannotation
        request = requestWithRoute defReq booksURL
        requestWithRoute r u LayersVolumeAnnotationsGet'{..}
          = go _lvagVolumeId _lvagLayerId _lvagAnnotationId
              _lvagLocale
              _lvagSource
              _lvagQuotaUser
              (Just _lvagPrettyPrint)
              _lvagUserIP
              _lvagFields
              _lvagKey
              _lvagOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LayersVolumeAnnotationsGetResource)
                      r
                      u
