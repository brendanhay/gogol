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
-- Module      : Network.Google.Resource.MapsEngine.Maps.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all maps readable by the current user.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineMapsList@.
module Network.Google.Resource.MapsEngine.Maps.List
    (
    -- * REST Resource
      MapsListResource

    -- * Creating a Request
    , mapsList'
    , MapsList'

    -- * Request Lenses
    , mapCreatedAfter
    , mapQuotaUser
    , mapPrettyPrint
    , mapUserIP
    , mapCreatorEmail
    , mapRole
    , mapKey
    , mapBbox
    , mapProcessingStatus
    , mapModifiedAfter
    , mapModifiedBefore
    , mapPageToken
    , mapProjectId
    , mapOAuthToken
    , mapSearch
    , mapMaxResults
    , mapTags
    , mapFields
    , mapCreatedBefore
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineMapsList@ which the
-- 'MapsList'' request conforms to.
type MapsListResource =
     "maps" :>
       QueryParam "bbox" Text :>
         QueryParam "createdAfter" UTCTime :>
           QueryParam "createdBefore" UTCTime :>
             QueryParam "creatorEmail" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "modifiedAfter" UTCTime :>
                   QueryParam "modifiedBefore" UTCTime :>
                     QueryParam "pageToken" Text :>
                       QueryParam "processingStatus"
                         MapsEngineMapsListProcessingStatus
                         :>
                         QueryParam "projectId" Text :>
                           QueryParam "role" MapsEngineMapsListRole :>
                             QueryParam "search" Text :>
                               QueryParam "tags" Text :>
                                 QueryParam "quotaUser" Text :>
                                   QueryParam "prettyPrint" Bool :>
                                     QueryParam "userIp" Text :>
                                       QueryParam "fields" Text :>
                                         QueryParam "key" Key :>
                                           QueryParam "oauth_token" OAuthToken
                                             :>
                                             QueryParam "alt" AltJSON :>
                                               Get '[JSON] MapsListResponse

-- | Return all maps readable by the current user.
--
-- /See:/ 'mapsList'' smart constructor.
data MapsList' = MapsList'
    { _mapCreatedAfter     :: !(Maybe UTCTime)
    , _mapQuotaUser        :: !(Maybe Text)
    , _mapPrettyPrint      :: !Bool
    , _mapUserIP           :: !(Maybe Text)
    , _mapCreatorEmail     :: !(Maybe Text)
    , _mapRole             :: !(Maybe MapsEngineMapsListRole)
    , _mapKey              :: !(Maybe Key)
    , _mapBbox             :: !(Maybe Text)
    , _mapProcessingStatus :: !(Maybe MapsEngineMapsListProcessingStatus)
    , _mapModifiedAfter    :: !(Maybe UTCTime)
    , _mapModifiedBefore   :: !(Maybe UTCTime)
    , _mapPageToken        :: !(Maybe Text)
    , _mapProjectId        :: !(Maybe Text)
    , _mapOAuthToken       :: !(Maybe OAuthToken)
    , _mapSearch           :: !(Maybe Text)
    , _mapMaxResults       :: !(Maybe Word32)
    , _mapTags             :: !(Maybe Text)
    , _mapFields           :: !(Maybe Text)
    , _mapCreatedBefore    :: !(Maybe UTCTime)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mapCreatedAfter'
--
-- * 'mapQuotaUser'
--
-- * 'mapPrettyPrint'
--
-- * 'mapUserIP'
--
-- * 'mapCreatorEmail'
--
-- * 'mapRole'
--
-- * 'mapKey'
--
-- * 'mapBbox'
--
-- * 'mapProcessingStatus'
--
-- * 'mapModifiedAfter'
--
-- * 'mapModifiedBefore'
--
-- * 'mapPageToken'
--
-- * 'mapProjectId'
--
-- * 'mapOAuthToken'
--
-- * 'mapSearch'
--
-- * 'mapMaxResults'
--
-- * 'mapTags'
--
-- * 'mapFields'
--
-- * 'mapCreatedBefore'
mapsList'
    :: MapsList'
mapsList' =
    MapsList'
    { _mapCreatedAfter = Nothing
    , _mapQuotaUser = Nothing
    , _mapPrettyPrint = True
    , _mapUserIP = Nothing
    , _mapCreatorEmail = Nothing
    , _mapRole = Nothing
    , _mapKey = Nothing
    , _mapBbox = Nothing
    , _mapProcessingStatus = Nothing
    , _mapModifiedAfter = Nothing
    , _mapModifiedBefore = Nothing
    , _mapPageToken = Nothing
    , _mapProjectId = Nothing
    , _mapOAuthToken = Nothing
    , _mapSearch = Nothing
    , _mapMaxResults = Nothing
    , _mapTags = Nothing
    , _mapFields = Nothing
    , _mapCreatedBefore = Nothing
    }

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or after this time.
mapCreatedAfter :: Lens' MapsList' (Maybe UTCTime)
mapCreatedAfter
  = lens _mapCreatedAfter
      (\ s a -> s{_mapCreatedAfter = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mapQuotaUser :: Lens' MapsList' (Maybe Text)
mapQuotaUser
  = lens _mapQuotaUser (\ s a -> s{_mapQuotaUser = a})

-- | Returns response with indentations and line breaks.
mapPrettyPrint :: Lens' MapsList' Bool
mapPrettyPrint
  = lens _mapPrettyPrint
      (\ s a -> s{_mapPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mapUserIP :: Lens' MapsList' (Maybe Text)
mapUserIP
  = lens _mapUserIP (\ s a -> s{_mapUserIP = a})

-- | An email address representing a user. Returned assets that have been
-- created by the user associated with the provided email address.
mapCreatorEmail :: Lens' MapsList' (Maybe Text)
mapCreatorEmail
  = lens _mapCreatorEmail
      (\ s a -> s{_mapCreatorEmail = a})

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
mapRole :: Lens' MapsList' (Maybe MapsEngineMapsListRole)
mapRole = lens _mapRole (\ s a -> s{_mapRole = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mapKey :: Lens' MapsList' (Maybe Key)
mapKey = lens _mapKey (\ s a -> s{_mapKey = a})

-- | A bounding box, expressed as \"west,south,east,north\". If set, only
-- assets which intersect this bounding box will be returned.
mapBbox :: Lens' MapsList' (Maybe Text)
mapBbox = lens _mapBbox (\ s a -> s{_mapBbox = a})

mapProcessingStatus :: Lens' MapsList' (Maybe MapsEngineMapsListProcessingStatus)
mapProcessingStatus
  = lens _mapProcessingStatus
      (\ s a -> s{_mapProcessingStatus = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or after this time.
mapModifiedAfter :: Lens' MapsList' (Maybe UTCTime)
mapModifiedAfter
  = lens _mapModifiedAfter
      (\ s a -> s{_mapModifiedAfter = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or before this time.
mapModifiedBefore :: Lens' MapsList' (Maybe UTCTime)
mapModifiedBefore
  = lens _mapModifiedBefore
      (\ s a -> s{_mapModifiedBefore = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
mapPageToken :: Lens' MapsList' (Maybe Text)
mapPageToken
  = lens _mapPageToken (\ s a -> s{_mapPageToken = a})

-- | The ID of a Maps Engine project, used to filter the response. To list
-- all available projects with their IDs, send a Projects: list request.
-- You can also find your project ID as the value of the DashboardPlace:cid
-- URL parameter when signed in to mapsengine.google.com.
mapProjectId :: Lens' MapsList' (Maybe Text)
mapProjectId
  = lens _mapProjectId (\ s a -> s{_mapProjectId = a})

-- | OAuth 2.0 token for the current user.
mapOAuthToken :: Lens' MapsList' (Maybe OAuthToken)
mapOAuthToken
  = lens _mapOAuthToken
      (\ s a -> s{_mapOAuthToken = a})

-- | An unstructured search string used to filter the set of results based on
-- asset metadata.
mapSearch :: Lens' MapsList' (Maybe Text)
mapSearch
  = lens _mapSearch (\ s a -> s{_mapSearch = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 100.
mapMaxResults :: Lens' MapsList' (Maybe Word32)
mapMaxResults
  = lens _mapMaxResults
      (\ s a -> s{_mapMaxResults = a})

-- | A comma separated list of tags. Returned assets will contain all the
-- tags from the list.
mapTags :: Lens' MapsList' (Maybe Text)
mapTags = lens _mapTags (\ s a -> s{_mapTags = a})

-- | Selector specifying which fields to include in a partial response.
mapFields :: Lens' MapsList' (Maybe Text)
mapFields
  = lens _mapFields (\ s a -> s{_mapFields = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or before this time.
mapCreatedBefore :: Lens' MapsList' (Maybe UTCTime)
mapCreatedBefore
  = lens _mapCreatedBefore
      (\ s a -> s{_mapCreatedBefore = a})

instance GoogleAuth MapsList' where
        authKey = mapKey . _Just
        authToken = mapOAuthToken . _Just

instance GoogleRequest MapsList' where
        type Rs MapsList' = MapsListResponse
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u MapsList'{..}
          = go _mapBbox _mapCreatedAfter _mapCreatedBefore
              _mapCreatorEmail
              _mapMaxResults
              _mapModifiedAfter
              _mapModifiedBefore
              _mapPageToken
              _mapProcessingStatus
              _mapProjectId
              _mapRole
              _mapSearch
              _mapTags
              _mapQuotaUser
              (Just _mapPrettyPrint)
              _mapUserIP
              _mapFields
              _mapKey
              _mapOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy MapsListResource) r
                      u
