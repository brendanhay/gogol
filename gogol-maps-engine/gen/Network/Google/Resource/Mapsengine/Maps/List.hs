{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Mapsengine.Maps.List
    (
    -- * REST Resource
      MapsListAPI

    -- * Creating a Request
    , mapsList
    , MapsList

    -- * Request Lenses
    , mCreatedAfter
    , mQuotaUser
    , mPrettyPrint
    , mUserIp
    , mCreatorEmail
    , mRole
    , mKey
    , mBbox
    , mProcessingStatus
    , mModifiedAfter
    , mModifiedBefore
    , mPageToken
    , mProjectId
    , mOauthToken
    , mSearch
    , mMaxResults
    , mTags
    , mFields
    , mCreatedBefore
    , mAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineMapsList@ which the
-- 'MapsList' request conforms to.
type MapsListAPI =
     "maps" :>
       QueryParam "createdAfter" UTCTime :>
         QueryParam "creatorEmail" Text :>
           QueryParam "role" Text :>
             QueryParam "bbox" Text :>
               QueryParam "processingStatus" Text :>
                 QueryParam "modifiedAfter" UTCTime :>
                   QueryParam "modifiedBefore" UTCTime :>
                     QueryParam "pageToken" Text :>
                       QueryParam "projectId" Text :>
                         QueryParam "search" Text :>
                           QueryParam "maxResults" Word32 :>
                             QueryParam "tags" Text :>
                               QueryParam "createdBefore" UTCTime :>
                                 Get '[JSON] MapsListResponse

-- | Return all maps readable by the current user.
--
-- /See:/ 'mapsList' smart constructor.
data MapsList = MapsList
    { _mCreatedAfter     :: !(Maybe UTCTime)
    , _mQuotaUser        :: !(Maybe Text)
    , _mPrettyPrint      :: !Bool
    , _mUserIp           :: !(Maybe Text)
    , _mCreatorEmail     :: !(Maybe Text)
    , _mRole             :: !(Maybe Text)
    , _mKey              :: !(Maybe Text)
    , _mBbox             :: !(Maybe Text)
    , _mProcessingStatus :: !(Maybe Text)
    , _mModifiedAfter    :: !(Maybe UTCTime)
    , _mModifiedBefore   :: !(Maybe UTCTime)
    , _mPageToken        :: !(Maybe Text)
    , _mProjectId        :: !(Maybe Text)
    , _mOauthToken       :: !(Maybe Text)
    , _mSearch           :: !(Maybe Text)
    , _mMaxResults       :: !(Maybe Word32)
    , _mTags             :: !(Maybe Text)
    , _mFields           :: !(Maybe Text)
    , _mCreatedBefore    :: !(Maybe UTCTime)
    , _mAlt              :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mCreatedAfter'
--
-- * 'mQuotaUser'
--
-- * 'mPrettyPrint'
--
-- * 'mUserIp'
--
-- * 'mCreatorEmail'
--
-- * 'mRole'
--
-- * 'mKey'
--
-- * 'mBbox'
--
-- * 'mProcessingStatus'
--
-- * 'mModifiedAfter'
--
-- * 'mModifiedBefore'
--
-- * 'mPageToken'
--
-- * 'mProjectId'
--
-- * 'mOauthToken'
--
-- * 'mSearch'
--
-- * 'mMaxResults'
--
-- * 'mTags'
--
-- * 'mFields'
--
-- * 'mCreatedBefore'
--
-- * 'mAlt'
mapsList
    :: MapsList
mapsList =
    MapsList
    { _mCreatedAfter = Nothing
    , _mQuotaUser = Nothing
    , _mPrettyPrint = True
    , _mUserIp = Nothing
    , _mCreatorEmail = Nothing
    , _mRole = Nothing
    , _mKey = Nothing
    , _mBbox = Nothing
    , _mProcessingStatus = Nothing
    , _mModifiedAfter = Nothing
    , _mModifiedBefore = Nothing
    , _mPageToken = Nothing
    , _mProjectId = Nothing
    , _mOauthToken = Nothing
    , _mSearch = Nothing
    , _mMaxResults = Nothing
    , _mTags = Nothing
    , _mFields = Nothing
    , _mCreatedBefore = Nothing
    , _mAlt = "json"
    }

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or after this time.
mCreatedAfter :: Lens' MapsList' (Maybe UTCTime)
mCreatedAfter
  = lens _mCreatedAfter
      (\ s a -> s{_mCreatedAfter = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mQuotaUser :: Lens' MapsList' (Maybe Text)
mQuotaUser
  = lens _mQuotaUser (\ s a -> s{_mQuotaUser = a})

-- | Returns response with indentations and line breaks.
mPrettyPrint :: Lens' MapsList' Bool
mPrettyPrint
  = lens _mPrettyPrint (\ s a -> s{_mPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mUserIp :: Lens' MapsList' (Maybe Text)
mUserIp = lens _mUserIp (\ s a -> s{_mUserIp = a})

-- | An email address representing a user. Returned assets that have been
-- created by the user associated with the provided email address.
mCreatorEmail :: Lens' MapsList' (Maybe Text)
mCreatorEmail
  = lens _mCreatorEmail
      (\ s a -> s{_mCreatorEmail = a})

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
mRole :: Lens' MapsList' (Maybe Text)
mRole = lens _mRole (\ s a -> s{_mRole = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mKey :: Lens' MapsList' (Maybe Text)
mKey = lens _mKey (\ s a -> s{_mKey = a})

-- | A bounding box, expressed as \"west,south,east,north\". If set, only
-- assets which intersect this bounding box will be returned.
mBbox :: Lens' MapsList' (Maybe Text)
mBbox = lens _mBbox (\ s a -> s{_mBbox = a})

mProcessingStatus :: Lens' MapsList' (Maybe Text)
mProcessingStatus
  = lens _mProcessingStatus
      (\ s a -> s{_mProcessingStatus = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or after this time.
mModifiedAfter :: Lens' MapsList' (Maybe UTCTime)
mModifiedAfter
  = lens _mModifiedAfter
      (\ s a -> s{_mModifiedAfter = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or before this time.
mModifiedBefore :: Lens' MapsList' (Maybe UTCTime)
mModifiedBefore
  = lens _mModifiedBefore
      (\ s a -> s{_mModifiedBefore = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
mPageToken :: Lens' MapsList' (Maybe Text)
mPageToken
  = lens _mPageToken (\ s a -> s{_mPageToken = a})

-- | The ID of a Maps Engine project, used to filter the response. To list
-- all available projects with their IDs, send a Projects: list request.
-- You can also find your project ID as the value of the DashboardPlace:cid
-- URL parameter when signed in to mapsengine.google.com.
mProjectId :: Lens' MapsList' (Maybe Text)
mProjectId
  = lens _mProjectId (\ s a -> s{_mProjectId = a})

-- | OAuth 2.0 token for the current user.
mOauthToken :: Lens' MapsList' (Maybe Text)
mOauthToken
  = lens _mOauthToken (\ s a -> s{_mOauthToken = a})

-- | An unstructured search string used to filter the set of results based on
-- asset metadata.
mSearch :: Lens' MapsList' (Maybe Text)
mSearch = lens _mSearch (\ s a -> s{_mSearch = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 100.
mMaxResults :: Lens' MapsList' (Maybe Word32)
mMaxResults
  = lens _mMaxResults (\ s a -> s{_mMaxResults = a})

-- | A comma separated list of tags. Returned assets will contain all the
-- tags from the list.
mTags :: Lens' MapsList' (Maybe Text)
mTags = lens _mTags (\ s a -> s{_mTags = a})

-- | Selector specifying which fields to include in a partial response.
mFields :: Lens' MapsList' (Maybe Text)
mFields = lens _mFields (\ s a -> s{_mFields = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or before this time.
mCreatedBefore :: Lens' MapsList' (Maybe UTCTime)
mCreatedBefore
  = lens _mCreatedBefore
      (\ s a -> s{_mCreatedBefore = a})

-- | Data format for the response.
mAlt :: Lens' MapsList' Text
mAlt = lens _mAlt (\ s a -> s{_mAlt = a})

instance GoogleRequest MapsList' where
        type Rs MapsList' = MapsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u MapsList{..}
          = go _mCreatedAfter _mQuotaUser _mPrettyPrint
              _mUserIp
              _mCreatorEmail
              _mRole
              _mKey
              _mBbox
              _mProcessingStatus
              _mModifiedAfter
              _mModifiedBefore
              _mPageToken
              _mProjectId
              _mOauthToken
              _mSearch
              _mMaxResults
              _mTags
              _mFields
              _mCreatedBefore
              _mAlt
          where go
                  = clientWithRoute (Proxy :: Proxy MapsListAPI) r u
