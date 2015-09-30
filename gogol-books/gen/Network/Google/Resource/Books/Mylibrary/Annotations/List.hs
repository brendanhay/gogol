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
-- Module      : Network.Google.Resource.Books.Mylibrary.Annotations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of annotations, possibly filtered.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMylibraryAnnotationsList@.
module Network.Google.Resource.Books.Mylibrary.Annotations.List
    (
    -- * REST Resource
      MylibraryAnnotationsListResource

    -- * Creating a Request
    , mylibraryAnnotationsList'
    , MylibraryAnnotationsList'

    -- * Request Lenses
    , malQuotaUser
    , malPrettyPrint
    , malUserIp
    , malContentVersion
    , malShowDeleted
    , malUpdatedMax
    , malKey
    , malUpdatedMin
    , malLayerIds
    , malVolumeId
    , malSource
    , malPageToken
    , malOauthToken
    , malLayerId
    , malMaxResults
    , malFields
    , malAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMylibraryAnnotationsList@ which the
-- 'MylibraryAnnotationsList'' request conforms to.
type MylibraryAnnotationsListResource =
     "mylibrary" :>
       "annotations" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "contentVersion" Text :>
                 QueryParam "showDeleted" Bool :>
                   QueryParam "updatedMax" Text :>
                     QueryParam "key" Text :>
                       QueryParam "updatedMin" Text :>
                         QueryParams "layerIds" Text :>
                           QueryParam "volumeId" Text :>
                             QueryParam "source" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "layerId" Text :>
                                     QueryParam "maxResults" Word32 :>
                                       QueryParam "fields" Text :>
                                         QueryParam "alt" Alt :>
                                           Get '[JSON] Annotations

-- | Retrieves a list of annotations, possibly filtered.
--
-- /See:/ 'mylibraryAnnotationsList'' smart constructor.
data MylibraryAnnotationsList' = MylibraryAnnotationsList'
    { _malQuotaUser      :: !(Maybe Text)
    , _malPrettyPrint    :: !Bool
    , _malUserIp         :: !(Maybe Text)
    , _malContentVersion :: !(Maybe Text)
    , _malShowDeleted    :: !(Maybe Bool)
    , _malUpdatedMax     :: !(Maybe Text)
    , _malKey            :: !(Maybe Text)
    , _malUpdatedMin     :: !(Maybe Text)
    , _malLayerIds       :: !(Maybe Text)
    , _malVolumeId       :: !(Maybe Text)
    , _malSource         :: !(Maybe Text)
    , _malPageToken      :: !(Maybe Text)
    , _malOauthToken     :: !(Maybe Text)
    , _malLayerId        :: !(Maybe Text)
    , _malMaxResults     :: !(Maybe Word32)
    , _malFields         :: !(Maybe Text)
    , _malAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MylibraryAnnotationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'malQuotaUser'
--
-- * 'malPrettyPrint'
--
-- * 'malUserIp'
--
-- * 'malContentVersion'
--
-- * 'malShowDeleted'
--
-- * 'malUpdatedMax'
--
-- * 'malKey'
--
-- * 'malUpdatedMin'
--
-- * 'malLayerIds'
--
-- * 'malVolumeId'
--
-- * 'malSource'
--
-- * 'malPageToken'
--
-- * 'malOauthToken'
--
-- * 'malLayerId'
--
-- * 'malMaxResults'
--
-- * 'malFields'
--
-- * 'malAlt'
mylibraryAnnotationsList'
    :: MylibraryAnnotationsList'
mylibraryAnnotationsList' =
    MylibraryAnnotationsList'
    { _malQuotaUser = Nothing
    , _malPrettyPrint = True
    , _malUserIp = Nothing
    , _malContentVersion = Nothing
    , _malShowDeleted = Nothing
    , _malUpdatedMax = Nothing
    , _malKey = Nothing
    , _malUpdatedMin = Nothing
    , _malLayerIds = Nothing
    , _malVolumeId = Nothing
    , _malSource = Nothing
    , _malPageToken = Nothing
    , _malOauthToken = Nothing
    , _malLayerId = Nothing
    , _malMaxResults = Nothing
    , _malFields = Nothing
    , _malAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
malQuotaUser :: Lens' MylibraryAnnotationsList' (Maybe Text)
malQuotaUser
  = lens _malQuotaUser (\ s a -> s{_malQuotaUser = a})

-- | Returns response with indentations and line breaks.
malPrettyPrint :: Lens' MylibraryAnnotationsList' Bool
malPrettyPrint
  = lens _malPrettyPrint
      (\ s a -> s{_malPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
malUserIp :: Lens' MylibraryAnnotationsList' (Maybe Text)
malUserIp
  = lens _malUserIp (\ s a -> s{_malUserIp = a})

-- | The content version for the requested volume.
malContentVersion :: Lens' MylibraryAnnotationsList' (Maybe Text)
malContentVersion
  = lens _malContentVersion
      (\ s a -> s{_malContentVersion = a})

-- | Set to true to return deleted annotations. updatedMin must be in the
-- request to use this. Defaults to false.
malShowDeleted :: Lens' MylibraryAnnotationsList' (Maybe Bool)
malShowDeleted
  = lens _malShowDeleted
      (\ s a -> s{_malShowDeleted = a})

-- | RFC 3339 timestamp to restrict to items updated prior to this timestamp
-- (exclusive).
malUpdatedMax :: Lens' MylibraryAnnotationsList' (Maybe Text)
malUpdatedMax
  = lens _malUpdatedMax
      (\ s a -> s{_malUpdatedMax = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
malKey :: Lens' MylibraryAnnotationsList' (Maybe Text)
malKey = lens _malKey (\ s a -> s{_malKey = a})

-- | RFC 3339 timestamp to restrict to items updated since this timestamp
-- (inclusive).
malUpdatedMin :: Lens' MylibraryAnnotationsList' (Maybe Text)
malUpdatedMin
  = lens _malUpdatedMin
      (\ s a -> s{_malUpdatedMin = a})

-- | The layer ID(s) to limit annotation by.
malLayerIds :: Lens' MylibraryAnnotationsList' (Maybe Text)
malLayerIds
  = lens _malLayerIds (\ s a -> s{_malLayerIds = a})

-- | The volume to restrict annotations to.
malVolumeId :: Lens' MylibraryAnnotationsList' (Maybe Text)
malVolumeId
  = lens _malVolumeId (\ s a -> s{_malVolumeId = a})

-- | String to identify the originator of this request.
malSource :: Lens' MylibraryAnnotationsList' (Maybe Text)
malSource
  = lens _malSource (\ s a -> s{_malSource = a})

-- | The value of the nextToken from the previous page.
malPageToken :: Lens' MylibraryAnnotationsList' (Maybe Text)
malPageToken
  = lens _malPageToken (\ s a -> s{_malPageToken = a})

-- | OAuth 2.0 token for the current user.
malOauthToken :: Lens' MylibraryAnnotationsList' (Maybe Text)
malOauthToken
  = lens _malOauthToken
      (\ s a -> s{_malOauthToken = a})

-- | The layer ID to limit annotation by.
malLayerId :: Lens' MylibraryAnnotationsList' (Maybe Text)
malLayerId
  = lens _malLayerId (\ s a -> s{_malLayerId = a})

-- | Maximum number of results to return
malMaxResults :: Lens' MylibraryAnnotationsList' (Maybe Word32)
malMaxResults
  = lens _malMaxResults
      (\ s a -> s{_malMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
malFields :: Lens' MylibraryAnnotationsList' (Maybe Text)
malFields
  = lens _malFields (\ s a -> s{_malFields = a})

-- | Data format for the response.
malAlt :: Lens' MylibraryAnnotationsList' Alt
malAlt = lens _malAlt (\ s a -> s{_malAlt = a})

instance GoogleRequest MylibraryAnnotationsList'
         where
        type Rs MylibraryAnnotationsList' = Annotations
        request = requestWithRoute defReq booksURL
        requestWithRoute r u MylibraryAnnotationsList'{..}
          = go _malQuotaUser (Just _malPrettyPrint) _malUserIp
              _malContentVersion
              _malShowDeleted
              _malUpdatedMax
              _malKey
              _malUpdatedMin
              _malLayerIds
              _malVolumeId
              _malSource
              _malPageToken
              _malOauthToken
              _malLayerId
              _malMaxResults
              _malFields
              (Just _malAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MylibraryAnnotationsListResource)
                      r
                      u
