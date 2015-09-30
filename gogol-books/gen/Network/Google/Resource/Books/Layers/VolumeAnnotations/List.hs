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
-- Module      : Network.Google.Resource.Books.Layers.VolumeAnnotations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the volume annotations for a volume and layer.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksLayersVolumeAnnotationsList@.
module Network.Google.Resource.Books.Layers.VolumeAnnotations.List
    (
    -- * REST Resource
      LayersVolumeAnnotationsListResource

    -- * Creating a Request
    , layersVolumeAnnotationsList'
    , LayersVolumeAnnotationsList'

    -- * Request Lenses
    , lvalQuotaUser
    , lvalPrettyPrint
    , lvalStartOffset
    , lvalUserIp
    , lvalLocale
    , lvalContentVersion
    , lvalShowDeleted
    , lvalVolumeAnnotationsVersion
    , lvalUpdatedMax
    , lvalKey
    , lvalUpdatedMin
    , lvalEndOffset
    , lvalVolumeId
    , lvalSource
    , lvalPageToken
    , lvalOauthToken
    , lvalEndPosition
    , lvalLayerId
    , lvalMaxResults
    , lvalStartPosition
    , lvalFields
    , lvalAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksLayersVolumeAnnotationsList@ which the
-- 'LayersVolumeAnnotationsList'' request conforms to.
type LayersVolumeAnnotationsListResource =
     "volumes" :>
       Capture "volumeId" Text :>
         "layers" :>
           Capture "layerId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "startOffset" Text :>
                   QueryParam "userIp" Text :>
                     QueryParam "locale" Text :>
                       QueryParam "contentVersion" Text :>
                         QueryParam "showDeleted" Bool :>
                           QueryParam "volumeAnnotationsVersion" Text :>
                             QueryParam "updatedMax" Text :>
                               QueryParam "key" Text :>
                                 QueryParam "updatedMin" Text :>
                                   QueryParam "endOffset" Text :>
                                     QueryParam "source" Text :>
                                       QueryParam "pageToken" Text :>
                                         QueryParam "oauth_token" Text :>
                                           QueryParam "endPosition" Text :>
                                             QueryParam "maxResults" Word32 :>
                                               QueryParam "startPosition" Text
                                                 :>
                                                 QueryParam "fields" Text :>
                                                   QueryParam "alt" Alt :>
                                                     Get '[JSON]
                                                       Volumeannotations

-- | Gets the volume annotations for a volume and layer.
--
-- /See:/ 'layersVolumeAnnotationsList'' smart constructor.
data LayersVolumeAnnotationsList' = LayersVolumeAnnotationsList'
    { _lvalQuotaUser                :: !(Maybe Text)
    , _lvalPrettyPrint              :: !Bool
    , _lvalStartOffset              :: !(Maybe Text)
    , _lvalUserIp                   :: !(Maybe Text)
    , _lvalLocale                   :: !(Maybe Text)
    , _lvalContentVersion           :: !Text
    , _lvalShowDeleted              :: !(Maybe Bool)
    , _lvalVolumeAnnotationsVersion :: !(Maybe Text)
    , _lvalUpdatedMax               :: !(Maybe Text)
    , _lvalKey                      :: !(Maybe Text)
    , _lvalUpdatedMin               :: !(Maybe Text)
    , _lvalEndOffset                :: !(Maybe Text)
    , _lvalVolumeId                 :: !Text
    , _lvalSource                   :: !(Maybe Text)
    , _lvalPageToken                :: !(Maybe Text)
    , _lvalOauthToken               :: !(Maybe Text)
    , _lvalEndPosition              :: !(Maybe Text)
    , _lvalLayerId                  :: !Text
    , _lvalMaxResults               :: !(Maybe Word32)
    , _lvalStartPosition            :: !(Maybe Text)
    , _lvalFields                   :: !(Maybe Text)
    , _lvalAlt                      :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersVolumeAnnotationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvalQuotaUser'
--
-- * 'lvalPrettyPrint'
--
-- * 'lvalStartOffset'
--
-- * 'lvalUserIp'
--
-- * 'lvalLocale'
--
-- * 'lvalContentVersion'
--
-- * 'lvalShowDeleted'
--
-- * 'lvalVolumeAnnotationsVersion'
--
-- * 'lvalUpdatedMax'
--
-- * 'lvalKey'
--
-- * 'lvalUpdatedMin'
--
-- * 'lvalEndOffset'
--
-- * 'lvalVolumeId'
--
-- * 'lvalSource'
--
-- * 'lvalPageToken'
--
-- * 'lvalOauthToken'
--
-- * 'lvalEndPosition'
--
-- * 'lvalLayerId'
--
-- * 'lvalMaxResults'
--
-- * 'lvalStartPosition'
--
-- * 'lvalFields'
--
-- * 'lvalAlt'
layersVolumeAnnotationsList'
    :: Text -- ^ 'contentVersion'
    -> Text -- ^ 'volumeId'
    -> Text -- ^ 'layerId'
    -> LayersVolumeAnnotationsList'
layersVolumeAnnotationsList' pLvalContentVersion_ pLvalVolumeId_ pLvalLayerId_ =
    LayersVolumeAnnotationsList'
    { _lvalQuotaUser = Nothing
    , _lvalPrettyPrint = True
    , _lvalStartOffset = Nothing
    , _lvalUserIp = Nothing
    , _lvalLocale = Nothing
    , _lvalContentVersion = pLvalContentVersion_
    , _lvalShowDeleted = Nothing
    , _lvalVolumeAnnotationsVersion = Nothing
    , _lvalUpdatedMax = Nothing
    , _lvalKey = Nothing
    , _lvalUpdatedMin = Nothing
    , _lvalEndOffset = Nothing
    , _lvalVolumeId = pLvalVolumeId_
    , _lvalSource = Nothing
    , _lvalPageToken = Nothing
    , _lvalOauthToken = Nothing
    , _lvalEndPosition = Nothing
    , _lvalLayerId = pLvalLayerId_
    , _lvalMaxResults = Nothing
    , _lvalStartPosition = Nothing
    , _lvalFields = Nothing
    , _lvalAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lvalQuotaUser :: Lens' LayersVolumeAnnotationsList' (Maybe Text)
lvalQuotaUser
  = lens _lvalQuotaUser
      (\ s a -> s{_lvalQuotaUser = a})

-- | Returns response with indentations and line breaks.
lvalPrettyPrint :: Lens' LayersVolumeAnnotationsList' Bool
lvalPrettyPrint
  = lens _lvalPrettyPrint
      (\ s a -> s{_lvalPrettyPrint = a})

-- | The start offset to start retrieving data from.
lvalStartOffset :: Lens' LayersVolumeAnnotationsList' (Maybe Text)
lvalStartOffset
  = lens _lvalStartOffset
      (\ s a -> s{_lvalStartOffset = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lvalUserIp :: Lens' LayersVolumeAnnotationsList' (Maybe Text)
lvalUserIp
  = lens _lvalUserIp (\ s a -> s{_lvalUserIp = a})

-- | The locale information for the data. ISO-639-1 language and ISO-3166-1
-- country code. Ex: \'en_US\'.
lvalLocale :: Lens' LayersVolumeAnnotationsList' (Maybe Text)
lvalLocale
  = lens _lvalLocale (\ s a -> s{_lvalLocale = a})

-- | The content version for the requested volume.
lvalContentVersion :: Lens' LayersVolumeAnnotationsList' Text
lvalContentVersion
  = lens _lvalContentVersion
      (\ s a -> s{_lvalContentVersion = a})

-- | Set to true to return deleted annotations. updatedMin must be in the
-- request to use this. Defaults to false.
lvalShowDeleted :: Lens' LayersVolumeAnnotationsList' (Maybe Bool)
lvalShowDeleted
  = lens _lvalShowDeleted
      (\ s a -> s{_lvalShowDeleted = a})

-- | The version of the volume annotations that you are requesting.
lvalVolumeAnnotationsVersion :: Lens' LayersVolumeAnnotationsList' (Maybe Text)
lvalVolumeAnnotationsVersion
  = lens _lvalVolumeAnnotationsVersion
      (\ s a -> s{_lvalVolumeAnnotationsVersion = a})

-- | RFC 3339 timestamp to restrict to items updated prior to this timestamp
-- (exclusive).
lvalUpdatedMax :: Lens' LayersVolumeAnnotationsList' (Maybe Text)
lvalUpdatedMax
  = lens _lvalUpdatedMax
      (\ s a -> s{_lvalUpdatedMax = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lvalKey :: Lens' LayersVolumeAnnotationsList' (Maybe Text)
lvalKey = lens _lvalKey (\ s a -> s{_lvalKey = a})

-- | RFC 3339 timestamp to restrict to items updated since this timestamp
-- (inclusive).
lvalUpdatedMin :: Lens' LayersVolumeAnnotationsList' (Maybe Text)
lvalUpdatedMin
  = lens _lvalUpdatedMin
      (\ s a -> s{_lvalUpdatedMin = a})

-- | The end offset to end retrieving data from.
lvalEndOffset :: Lens' LayersVolumeAnnotationsList' (Maybe Text)
lvalEndOffset
  = lens _lvalEndOffset
      (\ s a -> s{_lvalEndOffset = a})

-- | The volume to retrieve annotations for.
lvalVolumeId :: Lens' LayersVolumeAnnotationsList' Text
lvalVolumeId
  = lens _lvalVolumeId (\ s a -> s{_lvalVolumeId = a})

-- | String to identify the originator of this request.
lvalSource :: Lens' LayersVolumeAnnotationsList' (Maybe Text)
lvalSource
  = lens _lvalSource (\ s a -> s{_lvalSource = a})

-- | The value of the nextToken from the previous page.
lvalPageToken :: Lens' LayersVolumeAnnotationsList' (Maybe Text)
lvalPageToken
  = lens _lvalPageToken
      (\ s a -> s{_lvalPageToken = a})

-- | OAuth 2.0 token for the current user.
lvalOauthToken :: Lens' LayersVolumeAnnotationsList' (Maybe Text)
lvalOauthToken
  = lens _lvalOauthToken
      (\ s a -> s{_lvalOauthToken = a})

-- | The end position to end retrieving data from.
lvalEndPosition :: Lens' LayersVolumeAnnotationsList' (Maybe Text)
lvalEndPosition
  = lens _lvalEndPosition
      (\ s a -> s{_lvalEndPosition = a})

-- | The ID for the layer to get the annotations.
lvalLayerId :: Lens' LayersVolumeAnnotationsList' Text
lvalLayerId
  = lens _lvalLayerId (\ s a -> s{_lvalLayerId = a})

-- | Maximum number of results to return
lvalMaxResults :: Lens' LayersVolumeAnnotationsList' (Maybe Word32)
lvalMaxResults
  = lens _lvalMaxResults
      (\ s a -> s{_lvalMaxResults = a})

-- | The start position to start retrieving data from.
lvalStartPosition :: Lens' LayersVolumeAnnotationsList' (Maybe Text)
lvalStartPosition
  = lens _lvalStartPosition
      (\ s a -> s{_lvalStartPosition = a})

-- | Selector specifying which fields to include in a partial response.
lvalFields :: Lens' LayersVolumeAnnotationsList' (Maybe Text)
lvalFields
  = lens _lvalFields (\ s a -> s{_lvalFields = a})

-- | Data format for the response.
lvalAlt :: Lens' LayersVolumeAnnotationsList' Alt
lvalAlt = lens _lvalAlt (\ s a -> s{_lvalAlt = a})

instance GoogleRequest LayersVolumeAnnotationsList'
         where
        type Rs LayersVolumeAnnotationsList' =
             Volumeannotations
        request = requestWithRoute defReq booksURL
        requestWithRoute r u LayersVolumeAnnotationsList'{..}
          = go _lvalQuotaUser (Just _lvalPrettyPrint)
              _lvalStartOffset
              _lvalUserIp
              _lvalLocale
              (Just _lvalContentVersion)
              _lvalShowDeleted
              _lvalVolumeAnnotationsVersion
              _lvalUpdatedMax
              _lvalKey
              _lvalUpdatedMin
              _lvalEndOffset
              _lvalVolumeId
              _lvalSource
              _lvalPageToken
              _lvalOauthToken
              _lvalEndPosition
              _lvalLayerId
              _lvalMaxResults
              _lvalStartPosition
              _lvalFields
              (Just _lvalAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LayersVolumeAnnotationsListResource)
                      r
                      u
