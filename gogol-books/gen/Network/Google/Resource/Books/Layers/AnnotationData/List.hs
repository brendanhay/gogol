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
-- Module      : Network.Google.Resource.Books.Layers.AnnotationData.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the annotation data for a volume and layer.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksLayersAnnotationDataList@.
module Network.Google.Resource.Books.Layers.AnnotationData.List
    (
    -- * REST Resource
      LayersAnnotationDataListResource

    -- * Creating a Request
    , layersAnnotationDataList'
    , LayersAnnotationDataList'

    -- * Request Lenses
    , ladlQuotaUser
    , ladlW
    , ladlPrettyPrint
    , ladlScale
    , ladlUserIP
    , ladlLocale
    , ladlContentVersion
    , ladlUpdatedMax
    , ladlKey
    , ladlUpdatedMin
    , ladlAnnotationDataId
    , ladlVolumeId
    , ladlSource
    , ladlH
    , ladlPageToken
    , ladlOAuthToken
    , ladlLayerId
    , ladlMaxResults
    , ladlFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksLayersAnnotationDataList@ which the
-- 'LayersAnnotationDataList'' request conforms to.
type LayersAnnotationDataListResource =
     "volumes" :>
       Capture "volumeId" Text :>
         "layers" :>
           Capture "layerId" Text :>
             "data" :>
               QueryParam "contentVersion" Text :>
                 QueryParam "w" Int32 :>
                   QueryParam "scale" Int32 :>
                     QueryParam "locale" Text :>
                       QueryParam "updatedMax" Text :>
                         QueryParam "updatedMin" Text :>
                           QueryParams "annotationDataId" Text :>
                             QueryParam "source" Text :>
                               QueryParam "h" Int32 :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "maxResults" Word32 :>
                                     QueryParam "quotaUser" Text :>
                                       QueryParam "prettyPrint" Bool :>
                                         QueryParam "userIp" Text :>
                                           QueryParam "fields" Text :>
                                             QueryParam "key" Key :>
                                               QueryParam "oauth_token"
                                                 OAuthToken
                                                 :>
                                                 QueryParam "alt" AltJSON :>
                                                   Get '[JSON] Annotationsdata

-- | Gets the annotation data for a volume and layer.
--
-- /See:/ 'layersAnnotationDataList'' smart constructor.
data LayersAnnotationDataList' = LayersAnnotationDataList'
    { _ladlQuotaUser        :: !(Maybe Text)
    , _ladlW                :: !(Maybe Int32)
    , _ladlPrettyPrint      :: !Bool
    , _ladlScale            :: !(Maybe Int32)
    , _ladlUserIP           :: !(Maybe Text)
    , _ladlLocale           :: !(Maybe Text)
    , _ladlContentVersion   :: !Text
    , _ladlUpdatedMax       :: !(Maybe Text)
    , _ladlKey              :: !(Maybe Key)
    , _ladlUpdatedMin       :: !(Maybe Text)
    , _ladlAnnotationDataId :: !(Maybe [Text])
    , _ladlVolumeId         :: !Text
    , _ladlSource           :: !(Maybe Text)
    , _ladlH                :: !(Maybe Int32)
    , _ladlPageToken        :: !(Maybe Text)
    , _ladlOAuthToken       :: !(Maybe OAuthToken)
    , _ladlLayerId          :: !Text
    , _ladlMaxResults       :: !(Maybe Word32)
    , _ladlFields           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersAnnotationDataList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ladlQuotaUser'
--
-- * 'ladlW'
--
-- * 'ladlPrettyPrint'
--
-- * 'ladlScale'
--
-- * 'ladlUserIP'
--
-- * 'ladlLocale'
--
-- * 'ladlContentVersion'
--
-- * 'ladlUpdatedMax'
--
-- * 'ladlKey'
--
-- * 'ladlUpdatedMin'
--
-- * 'ladlAnnotationDataId'
--
-- * 'ladlVolumeId'
--
-- * 'ladlSource'
--
-- * 'ladlH'
--
-- * 'ladlPageToken'
--
-- * 'ladlOAuthToken'
--
-- * 'ladlLayerId'
--
-- * 'ladlMaxResults'
--
-- * 'ladlFields'
layersAnnotationDataList'
    :: Text -- ^ 'contentVersion'
    -> Text -- ^ 'volumeId'
    -> Text -- ^ 'layerId'
    -> LayersAnnotationDataList'
layersAnnotationDataList' pLadlContentVersion_ pLadlVolumeId_ pLadlLayerId_ =
    LayersAnnotationDataList'
    { _ladlQuotaUser = Nothing
    , _ladlW = Nothing
    , _ladlPrettyPrint = True
    , _ladlScale = Nothing
    , _ladlUserIP = Nothing
    , _ladlLocale = Nothing
    , _ladlContentVersion = pLadlContentVersion_
    , _ladlUpdatedMax = Nothing
    , _ladlKey = Nothing
    , _ladlUpdatedMin = Nothing
    , _ladlAnnotationDataId = Nothing
    , _ladlVolumeId = pLadlVolumeId_
    , _ladlSource = Nothing
    , _ladlH = Nothing
    , _ladlPageToken = Nothing
    , _ladlOAuthToken = Nothing
    , _ladlLayerId = pLadlLayerId_
    , _ladlMaxResults = Nothing
    , _ladlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ladlQuotaUser :: Lens' LayersAnnotationDataList' (Maybe Text)
ladlQuotaUser
  = lens _ladlQuotaUser
      (\ s a -> s{_ladlQuotaUser = a})

-- | The requested pixel width for any images. If width is provided height
-- must also be provided.
ladlW :: Lens' LayersAnnotationDataList' (Maybe Int32)
ladlW = lens _ladlW (\ s a -> s{_ladlW = a})

-- | Returns response with indentations and line breaks.
ladlPrettyPrint :: Lens' LayersAnnotationDataList' Bool
ladlPrettyPrint
  = lens _ladlPrettyPrint
      (\ s a -> s{_ladlPrettyPrint = a})

-- | The requested scale for the image.
ladlScale :: Lens' LayersAnnotationDataList' (Maybe Int32)
ladlScale
  = lens _ladlScale (\ s a -> s{_ladlScale = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ladlUserIP :: Lens' LayersAnnotationDataList' (Maybe Text)
ladlUserIP
  = lens _ladlUserIP (\ s a -> s{_ladlUserIP = a})

-- | The locale information for the data. ISO-639-1 language and ISO-3166-1
-- country code. Ex: \'en_US\'.
ladlLocale :: Lens' LayersAnnotationDataList' (Maybe Text)
ladlLocale
  = lens _ladlLocale (\ s a -> s{_ladlLocale = a})

-- | The content version for the requested volume.
ladlContentVersion :: Lens' LayersAnnotationDataList' Text
ladlContentVersion
  = lens _ladlContentVersion
      (\ s a -> s{_ladlContentVersion = a})

-- | RFC 3339 timestamp to restrict to items updated prior to this timestamp
-- (exclusive).
ladlUpdatedMax :: Lens' LayersAnnotationDataList' (Maybe Text)
ladlUpdatedMax
  = lens _ladlUpdatedMax
      (\ s a -> s{_ladlUpdatedMax = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ladlKey :: Lens' LayersAnnotationDataList' (Maybe Key)
ladlKey = lens _ladlKey (\ s a -> s{_ladlKey = a})

-- | RFC 3339 timestamp to restrict to items updated since this timestamp
-- (inclusive).
ladlUpdatedMin :: Lens' LayersAnnotationDataList' (Maybe Text)
ladlUpdatedMin
  = lens _ladlUpdatedMin
      (\ s a -> s{_ladlUpdatedMin = a})

-- | The list of Annotation Data Ids to retrieve. Pagination is ignored if
-- this is set.
ladlAnnotationDataId :: Lens' LayersAnnotationDataList' [Text]
ladlAnnotationDataId
  = lens _ladlAnnotationDataId
      (\ s a -> s{_ladlAnnotationDataId = a})
      . _Default
      . _Coerce

-- | The volume to retrieve annotation data for.
ladlVolumeId :: Lens' LayersAnnotationDataList' Text
ladlVolumeId
  = lens _ladlVolumeId (\ s a -> s{_ladlVolumeId = a})

-- | String to identify the originator of this request.
ladlSource :: Lens' LayersAnnotationDataList' (Maybe Text)
ladlSource
  = lens _ladlSource (\ s a -> s{_ladlSource = a})

-- | The requested pixel height for any images. If height is provided width
-- must also be provided.
ladlH :: Lens' LayersAnnotationDataList' (Maybe Int32)
ladlH = lens _ladlH (\ s a -> s{_ladlH = a})

-- | The value of the nextToken from the previous page.
ladlPageToken :: Lens' LayersAnnotationDataList' (Maybe Text)
ladlPageToken
  = lens _ladlPageToken
      (\ s a -> s{_ladlPageToken = a})

-- | OAuth 2.0 token for the current user.
ladlOAuthToken :: Lens' LayersAnnotationDataList' (Maybe OAuthToken)
ladlOAuthToken
  = lens _ladlOAuthToken
      (\ s a -> s{_ladlOAuthToken = a})

-- | The ID for the layer to get the annotation data.
ladlLayerId :: Lens' LayersAnnotationDataList' Text
ladlLayerId
  = lens _ladlLayerId (\ s a -> s{_ladlLayerId = a})

-- | Maximum number of results to return
ladlMaxResults :: Lens' LayersAnnotationDataList' (Maybe Word32)
ladlMaxResults
  = lens _ladlMaxResults
      (\ s a -> s{_ladlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
ladlFields :: Lens' LayersAnnotationDataList' (Maybe Text)
ladlFields
  = lens _ladlFields (\ s a -> s{_ladlFields = a})

instance GoogleAuth LayersAnnotationDataList' where
        authKey = ladlKey . _Just
        authToken = ladlOAuthToken . _Just

instance GoogleRequest LayersAnnotationDataList'
         where
        type Rs LayersAnnotationDataList' = Annotationsdata
        request = requestWithRoute defReq booksURL
        requestWithRoute r u LayersAnnotationDataList'{..}
          = go _ladlVolumeId _ladlLayerId
              (Just _ladlContentVersion)
              _ladlW
              _ladlScale
              _ladlLocale
              _ladlUpdatedMax
              _ladlUpdatedMin
              (_ladlAnnotationDataId ^. _Default)
              _ladlSource
              _ladlH
              _ladlPageToken
              _ladlMaxResults
              _ladlQuotaUser
              (Just _ladlPrettyPrint)
              _ladlUserIP
              _ladlFields
              _ladlKey
              _ladlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LayersAnnotationDataListResource)
                      r
                      u
