{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Books.Layers.AnnotationData.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the annotation data.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksLayersAnnotationDataGet@.
module Network.Google.Resource.Books.Layers.AnnotationData.Get
    (
    -- * REST Resource
      LayersAnnotationDataGetResource

    -- * Creating a Request
    , layersAnnotationDataGet'
    , LayersAnnotationDataGet'

    -- * Request Lenses
    , ladgQuotaUser
    , ladgW
    , ladgPrettyPrint
    , ladgScale
    , ladgUserIp
    , ladgLocale
    , ladgContentVersion
    , ladgKey
    , ladgAllowWebDefinitions
    , ladgAnnotationDataId
    , ladgVolumeId
    , ladgSource
    , ladgH
    , ladgOauthToken
    , ladgLayerId
    , ladgFields
    , ladgAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksLayersAnnotationDataGet@ which the
-- 'LayersAnnotationDataGet'' request conforms to.
type LayersAnnotationDataGetResource =
     "volumes" :>
       Capture "volumeId" Text :>
         "layers" :>
           Capture "layerId" Text :>
             "data" :>
               Capture "annotationDataId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "w" Int32 :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "scale" Int32 :>
                         QueryParam "userIp" Text :>
                           QueryParam "locale" Text :>
                             QueryParam "contentVersion" Text :>
                               QueryParam "key" Text :>
                                 QueryParam "allowWebDefinitions" Bool :>
                                   QueryParam "source" Text :>
                                     QueryParam "h" Int32 :>
                                       QueryParam "oauth_token" Text :>
                                         QueryParam "fields" Text :>
                                           QueryParam "alt" Alt :>
                                             Get '[JSON] Annotationdata

-- | Gets the annotation data.
--
-- /See:/ 'layersAnnotationDataGet'' smart constructor.
data LayersAnnotationDataGet' = LayersAnnotationDataGet'
    { _ladgQuotaUser           :: !(Maybe Text)
    , _ladgW                   :: !(Maybe Int32)
    , _ladgPrettyPrint         :: !Bool
    , _ladgScale               :: !(Maybe Int32)
    , _ladgUserIp              :: !(Maybe Text)
    , _ladgLocale              :: !(Maybe Text)
    , _ladgContentVersion      :: !Text
    , _ladgKey                 :: !(Maybe Text)
    , _ladgAllowWebDefinitions :: !(Maybe Bool)
    , _ladgAnnotationDataId    :: !Text
    , _ladgVolumeId            :: !Text
    , _ladgSource              :: !(Maybe Text)
    , _ladgH                   :: !(Maybe Int32)
    , _ladgOauthToken          :: !(Maybe Text)
    , _ladgLayerId             :: !Text
    , _ladgFields              :: !(Maybe Text)
    , _ladgAlt                 :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersAnnotationDataGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ladgQuotaUser'
--
-- * 'ladgW'
--
-- * 'ladgPrettyPrint'
--
-- * 'ladgScale'
--
-- * 'ladgUserIp'
--
-- * 'ladgLocale'
--
-- * 'ladgContentVersion'
--
-- * 'ladgKey'
--
-- * 'ladgAllowWebDefinitions'
--
-- * 'ladgAnnotationDataId'
--
-- * 'ladgVolumeId'
--
-- * 'ladgSource'
--
-- * 'ladgH'
--
-- * 'ladgOauthToken'
--
-- * 'ladgLayerId'
--
-- * 'ladgFields'
--
-- * 'ladgAlt'
layersAnnotationDataGet'
    :: Text -- ^ 'contentVersion'
    -> Text -- ^ 'annotationDataId'
    -> Text -- ^ 'volumeId'
    -> Text -- ^ 'layerId'
    -> LayersAnnotationDataGet'
layersAnnotationDataGet' pLadgContentVersion_ pLadgAnnotationDataId_ pLadgVolumeId_ pLadgLayerId_ =
    LayersAnnotationDataGet'
    { _ladgQuotaUser = Nothing
    , _ladgW = Nothing
    , _ladgPrettyPrint = True
    , _ladgScale = Nothing
    , _ladgUserIp = Nothing
    , _ladgLocale = Nothing
    , _ladgContentVersion = pLadgContentVersion_
    , _ladgKey = Nothing
    , _ladgAllowWebDefinitions = Nothing
    , _ladgAnnotationDataId = pLadgAnnotationDataId_
    , _ladgVolumeId = pLadgVolumeId_
    , _ladgSource = Nothing
    , _ladgH = Nothing
    , _ladgOauthToken = Nothing
    , _ladgLayerId = pLadgLayerId_
    , _ladgFields = Nothing
    , _ladgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ladgQuotaUser :: Lens' LayersAnnotationDataGet' (Maybe Text)
ladgQuotaUser
  = lens _ladgQuotaUser
      (\ s a -> s{_ladgQuotaUser = a})

-- | The requested pixel width for any images. If width is provided height
-- must also be provided.
ladgW :: Lens' LayersAnnotationDataGet' (Maybe Int32)
ladgW = lens _ladgW (\ s a -> s{_ladgW = a})

-- | Returns response with indentations and line breaks.
ladgPrettyPrint :: Lens' LayersAnnotationDataGet' Bool
ladgPrettyPrint
  = lens _ladgPrettyPrint
      (\ s a -> s{_ladgPrettyPrint = a})

-- | The requested scale for the image.
ladgScale :: Lens' LayersAnnotationDataGet' (Maybe Int32)
ladgScale
  = lens _ladgScale (\ s a -> s{_ladgScale = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ladgUserIp :: Lens' LayersAnnotationDataGet' (Maybe Text)
ladgUserIp
  = lens _ladgUserIp (\ s a -> s{_ladgUserIp = a})

-- | The locale information for the data. ISO-639-1 language and ISO-3166-1
-- country code. Ex: \'en_US\'.
ladgLocale :: Lens' LayersAnnotationDataGet' (Maybe Text)
ladgLocale
  = lens _ladgLocale (\ s a -> s{_ladgLocale = a})

-- | The content version for the volume you are trying to retrieve.
ladgContentVersion :: Lens' LayersAnnotationDataGet' Text
ladgContentVersion
  = lens _ladgContentVersion
      (\ s a -> s{_ladgContentVersion = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ladgKey :: Lens' LayersAnnotationDataGet' (Maybe Text)
ladgKey = lens _ladgKey (\ s a -> s{_ladgKey = a})

-- | For the dictionary layer. Whether or not to allow web definitions.
ladgAllowWebDefinitions :: Lens' LayersAnnotationDataGet' (Maybe Bool)
ladgAllowWebDefinitions
  = lens _ladgAllowWebDefinitions
      (\ s a -> s{_ladgAllowWebDefinitions = a})

-- | The ID of the annotation data to retrieve.
ladgAnnotationDataId :: Lens' LayersAnnotationDataGet' Text
ladgAnnotationDataId
  = lens _ladgAnnotationDataId
      (\ s a -> s{_ladgAnnotationDataId = a})

-- | The volume to retrieve annotations for.
ladgVolumeId :: Lens' LayersAnnotationDataGet' Text
ladgVolumeId
  = lens _ladgVolumeId (\ s a -> s{_ladgVolumeId = a})

-- | String to identify the originator of this request.
ladgSource :: Lens' LayersAnnotationDataGet' (Maybe Text)
ladgSource
  = lens _ladgSource (\ s a -> s{_ladgSource = a})

-- | The requested pixel height for any images. If height is provided width
-- must also be provided.
ladgH :: Lens' LayersAnnotationDataGet' (Maybe Int32)
ladgH = lens _ladgH (\ s a -> s{_ladgH = a})

-- | OAuth 2.0 token for the current user.
ladgOauthToken :: Lens' LayersAnnotationDataGet' (Maybe Text)
ladgOauthToken
  = lens _ladgOauthToken
      (\ s a -> s{_ladgOauthToken = a})

-- | The ID for the layer to get the annotations.
ladgLayerId :: Lens' LayersAnnotationDataGet' Text
ladgLayerId
  = lens _ladgLayerId (\ s a -> s{_ladgLayerId = a})

-- | Selector specifying which fields to include in a partial response.
ladgFields :: Lens' LayersAnnotationDataGet' (Maybe Text)
ladgFields
  = lens _ladgFields (\ s a -> s{_ladgFields = a})

-- | Data format for the response.
ladgAlt :: Lens' LayersAnnotationDataGet' Alt
ladgAlt = lens _ladgAlt (\ s a -> s{_ladgAlt = a})

instance GoogleRequest LayersAnnotationDataGet' where
        type Rs LayersAnnotationDataGet' = Annotationdata
        request = requestWithRoute defReq booksURL
        requestWithRoute r u LayersAnnotationDataGet'{..}
          = go _ladgQuotaUser _ladgW (Just _ladgPrettyPrint)
              _ladgScale
              _ladgUserIp
              _ladgLocale
              (Just _ladgContentVersion)
              _ladgKey
              _ladgAllowWebDefinitions
              _ladgAnnotationDataId
              _ladgVolumeId
              _ladgSource
              _ladgH
              _ladgOauthToken
              _ladgLayerId
              _ladgFields
              (Just _ladgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LayersAnnotationDataGetResource)
                      r
                      u
