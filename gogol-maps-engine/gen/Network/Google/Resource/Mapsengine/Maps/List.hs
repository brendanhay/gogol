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
-- Module      : Network.Google.Resource.Mapsengine.Maps.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all maps readable by the current user.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineMapsList@.
module Network.Google.Resource.Mapsengine.Maps.List
    (
    -- * REST Resource
      MapsListResource

    -- * Creating a Request
    , mapsList'
    , MapsList'

    -- * Request Lenses
    , mllCreatedAfter
    , mllQuotaUser
    , mllPrettyPrint
    , mllUserIp
    , mllCreatorEmail
    , mllRole
    , mllKey
    , mllBbox
    , mllProcessingStatus
    , mllModifiedAfter
    , mllModifiedBefore
    , mllPageToken
    , mllProjectId
    , mllOauthToken
    , mllSearch
    , mllMaxResults
    , mllTags
    , mllFields
    , mllCreatedBefore
    , mllAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineMapsList@ which the
-- 'MapsList'' request conforms to.
type MapsListResource =
     "maps" :>
       QueryParam "createdAfter" UTCTime :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "creatorEmail" Text :>
                 QueryParam "role" MapsengineMapsListRole :>
                   QueryParam "key" Text :>
                     QueryParam "bbox" Text :>
                       QueryParam "processingStatus"
                         MapsengineMapsListProcessingStatus
                         :>
                         QueryParam "modifiedAfter" UTCTime :>
                           QueryParam "modifiedBefore" UTCTime :>
                             QueryParam "pageToken" Text :>
                               QueryParam "projectId" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "search" Text :>
                                     QueryParam "maxResults" Word32 :>
                                       QueryParam "tags" Text :>
                                         QueryParam "fields" Text :>
                                           QueryParam "createdBefore" UTCTime :>
                                             QueryParam "alt" Alt :>
                                               Get '[JSON] MapsListResponse

-- | Return all maps readable by the current user.
--
-- /See:/ 'mapsList'' smart constructor.
data MapsList' = MapsList'
    { _mllCreatedAfter     :: !(Maybe UTCTime)
    , _mllQuotaUser        :: !(Maybe Text)
    , _mllPrettyPrint      :: !Bool
    , _mllUserIp           :: !(Maybe Text)
    , _mllCreatorEmail     :: !(Maybe Text)
    , _mllRole             :: !(Maybe MapsengineMapsListRole)
    , _mllKey              :: !(Maybe Text)
    , _mllBbox             :: !(Maybe Text)
    , _mllProcessingStatus :: !(Maybe MapsengineMapsListProcessingStatus)
    , _mllModifiedAfter    :: !(Maybe UTCTime)
    , _mllModifiedBefore   :: !(Maybe UTCTime)
    , _mllPageToken        :: !(Maybe Text)
    , _mllProjectId        :: !(Maybe Text)
    , _mllOauthToken       :: !(Maybe Text)
    , _mllSearch           :: !(Maybe Text)
    , _mllMaxResults       :: !(Maybe Word32)
    , _mllTags             :: !(Maybe Text)
    , _mllFields           :: !(Maybe Text)
    , _mllCreatedBefore    :: !(Maybe UTCTime)
    , _mllAlt              :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mllCreatedAfter'
--
-- * 'mllQuotaUser'
--
-- * 'mllPrettyPrint'
--
-- * 'mllUserIp'
--
-- * 'mllCreatorEmail'
--
-- * 'mllRole'
--
-- * 'mllKey'
--
-- * 'mllBbox'
--
-- * 'mllProcessingStatus'
--
-- * 'mllModifiedAfter'
--
-- * 'mllModifiedBefore'
--
-- * 'mllPageToken'
--
-- * 'mllProjectId'
--
-- * 'mllOauthToken'
--
-- * 'mllSearch'
--
-- * 'mllMaxResults'
--
-- * 'mllTags'
--
-- * 'mllFields'
--
-- * 'mllCreatedBefore'
--
-- * 'mllAlt'
mapsList'
    :: MapsList'
mapsList' =
    MapsList'
    { _mllCreatedAfter = Nothing
    , _mllQuotaUser = Nothing
    , _mllPrettyPrint = True
    , _mllUserIp = Nothing
    , _mllCreatorEmail = Nothing
    , _mllRole = Nothing
    , _mllKey = Nothing
    , _mllBbox = Nothing
    , _mllProcessingStatus = Nothing
    , _mllModifiedAfter = Nothing
    , _mllModifiedBefore = Nothing
    , _mllPageToken = Nothing
    , _mllProjectId = Nothing
    , _mllOauthToken = Nothing
    , _mllSearch = Nothing
    , _mllMaxResults = Nothing
    , _mllTags = Nothing
    , _mllFields = Nothing
    , _mllCreatedBefore = Nothing
    , _mllAlt = JSON
    }

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or after this time.
mllCreatedAfter :: Lens' MapsList' (Maybe UTCTime)
mllCreatedAfter
  = lens _mllCreatedAfter
      (\ s a -> s{_mllCreatedAfter = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mllQuotaUser :: Lens' MapsList' (Maybe Text)
mllQuotaUser
  = lens _mllQuotaUser (\ s a -> s{_mllQuotaUser = a})

-- | Returns response with indentations and line breaks.
mllPrettyPrint :: Lens' MapsList' Bool
mllPrettyPrint
  = lens _mllPrettyPrint
      (\ s a -> s{_mllPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mllUserIp :: Lens' MapsList' (Maybe Text)
mllUserIp
  = lens _mllUserIp (\ s a -> s{_mllUserIp = a})

-- | An email address representing a user. Returned assets that have been
-- created by the user associated with the provided email address.
mllCreatorEmail :: Lens' MapsList' (Maybe Text)
mllCreatorEmail
  = lens _mllCreatorEmail
      (\ s a -> s{_mllCreatorEmail = a})

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
mllRole :: Lens' MapsList' (Maybe MapsengineMapsListRole)
mllRole = lens _mllRole (\ s a -> s{_mllRole = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mllKey :: Lens' MapsList' (Maybe Text)
mllKey = lens _mllKey (\ s a -> s{_mllKey = a})

-- | A bounding box, expressed as \"west,south,east,north\". If set, only
-- assets which intersect this bounding box will be returned.
mllBbox :: Lens' MapsList' (Maybe Text)
mllBbox = lens _mllBbox (\ s a -> s{_mllBbox = a})

mllProcessingStatus :: Lens' MapsList' (Maybe MapsengineMapsListProcessingStatus)
mllProcessingStatus
  = lens _mllProcessingStatus
      (\ s a -> s{_mllProcessingStatus = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or after this time.
mllModifiedAfter :: Lens' MapsList' (Maybe UTCTime)
mllModifiedAfter
  = lens _mllModifiedAfter
      (\ s a -> s{_mllModifiedAfter = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or before this time.
mllModifiedBefore :: Lens' MapsList' (Maybe UTCTime)
mllModifiedBefore
  = lens _mllModifiedBefore
      (\ s a -> s{_mllModifiedBefore = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
mllPageToken :: Lens' MapsList' (Maybe Text)
mllPageToken
  = lens _mllPageToken (\ s a -> s{_mllPageToken = a})

-- | The ID of a Maps Engine project, used to filter the response. To list
-- all available projects with their IDs, send a Projects: list request.
-- You can also find your project ID as the value of the DashboardPlace:cid
-- URL parameter when signed in to mapsengine.google.com.
mllProjectId :: Lens' MapsList' (Maybe Text)
mllProjectId
  = lens _mllProjectId (\ s a -> s{_mllProjectId = a})

-- | OAuth 2.0 token for the current user.
mllOauthToken :: Lens' MapsList' (Maybe Text)
mllOauthToken
  = lens _mllOauthToken
      (\ s a -> s{_mllOauthToken = a})

-- | An unstructured search string used to filter the set of results based on
-- asset metadata.
mllSearch :: Lens' MapsList' (Maybe Text)
mllSearch
  = lens _mllSearch (\ s a -> s{_mllSearch = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 100.
mllMaxResults :: Lens' MapsList' (Maybe Word32)
mllMaxResults
  = lens _mllMaxResults
      (\ s a -> s{_mllMaxResults = a})

-- | A comma separated list of tags. Returned assets will contain all the
-- tags from the list.
mllTags :: Lens' MapsList' (Maybe Text)
mllTags = lens _mllTags (\ s a -> s{_mllTags = a})

-- | Selector specifying which fields to include in a partial response.
mllFields :: Lens' MapsList' (Maybe Text)
mllFields
  = lens _mllFields (\ s a -> s{_mllFields = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or before this time.
mllCreatedBefore :: Lens' MapsList' (Maybe UTCTime)
mllCreatedBefore
  = lens _mllCreatedBefore
      (\ s a -> s{_mllCreatedBefore = a})

-- | Data format for the response.
mllAlt :: Lens' MapsList' Alt
mllAlt = lens _mllAlt (\ s a -> s{_mllAlt = a})

instance GoogleRequest MapsList' where
        type Rs MapsList' = MapsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u MapsList'{..}
          = go _mllCreatedAfter _mllQuotaUser
              (Just _mllPrettyPrint)
              _mllUserIp
              _mllCreatorEmail
              _mllRole
              _mllKey
              _mllBbox
              _mllProcessingStatus
              _mllModifiedAfter
              _mllModifiedBefore
              _mllPageToken
              _mllProjectId
              _mllOauthToken
              _mllSearch
              _mllMaxResults
              _mllTags
              _mllFields
              _mllCreatedBefore
              (Just _mllAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy MapsListResource) r
                      u
