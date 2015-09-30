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
-- Module      : Network.Google.Resource.Mapsengine.RasterCollections.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all raster collections readable by the current user.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineRasterCollectionsList@.
module Network.Google.Resource.Mapsengine.RasterCollections.List
    (
    -- * REST Resource
      RasterCollectionsListResource

    -- * Creating a Request
    , rasterCollectionsList'
    , RasterCollectionsList'

    -- * Request Lenses
    , rclCreatedAfter
    , rclQuotaUser
    , rclPrettyPrint
    , rclUserIp
    , rclCreatorEmail
    , rclRole
    , rclKey
    , rclBbox
    , rclProcessingStatus
    , rclModifiedAfter
    , rclModifiedBefore
    , rclPageToken
    , rclProjectId
    , rclOauthToken
    , rclSearch
    , rclMaxResults
    , rclTags
    , rclFields
    , rclCreatedBefore
    , rclAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineRasterCollectionsList@ which the
-- 'RasterCollectionsList'' request conforms to.
type RasterCollectionsListResource =
     "rasterCollections" :>
       QueryParam "createdAfter" UTCTime :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "creatorEmail" Text :>
                 QueryParam "role" MapsengineRasterCollectionsListRole
                   :>
                   QueryParam "key" Text :>
                     QueryParam "bbox" Text :>
                       QueryParam "processingStatus"
                         MapsengineRasterCollectionsListProcessingStatus
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
                                               Get '[JSON]
                                                 RasterCollectionsListResponse

-- | Return all raster collections readable by the current user.
--
-- /See:/ 'rasterCollectionsList'' smart constructor.
data RasterCollectionsList' = RasterCollectionsList'
    { _rclCreatedAfter     :: !(Maybe UTCTime)
    , _rclQuotaUser        :: !(Maybe Text)
    , _rclPrettyPrint      :: !Bool
    , _rclUserIp           :: !(Maybe Text)
    , _rclCreatorEmail     :: !(Maybe Text)
    , _rclRole             :: !(Maybe MapsengineRasterCollectionsListRole)
    , _rclKey              :: !(Maybe Text)
    , _rclBbox             :: !(Maybe Text)
    , _rclProcessingStatus :: !(Maybe MapsengineRasterCollectionsListProcessingStatus)
    , _rclModifiedAfter    :: !(Maybe UTCTime)
    , _rclModifiedBefore   :: !(Maybe UTCTime)
    , _rclPageToken        :: !(Maybe Text)
    , _rclProjectId        :: !(Maybe Text)
    , _rclOauthToken       :: !(Maybe Text)
    , _rclSearch           :: !(Maybe Text)
    , _rclMaxResults       :: !(Maybe Word32)
    , _rclTags             :: !(Maybe Text)
    , _rclFields           :: !(Maybe Text)
    , _rclCreatedBefore    :: !(Maybe UTCTime)
    , _rclAlt              :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rclCreatedAfter'
--
-- * 'rclQuotaUser'
--
-- * 'rclPrettyPrint'
--
-- * 'rclUserIp'
--
-- * 'rclCreatorEmail'
--
-- * 'rclRole'
--
-- * 'rclKey'
--
-- * 'rclBbox'
--
-- * 'rclProcessingStatus'
--
-- * 'rclModifiedAfter'
--
-- * 'rclModifiedBefore'
--
-- * 'rclPageToken'
--
-- * 'rclProjectId'
--
-- * 'rclOauthToken'
--
-- * 'rclSearch'
--
-- * 'rclMaxResults'
--
-- * 'rclTags'
--
-- * 'rclFields'
--
-- * 'rclCreatedBefore'
--
-- * 'rclAlt'
rasterCollectionsList'
    :: RasterCollectionsList'
rasterCollectionsList' =
    RasterCollectionsList'
    { _rclCreatedAfter = Nothing
    , _rclQuotaUser = Nothing
    , _rclPrettyPrint = True
    , _rclUserIp = Nothing
    , _rclCreatorEmail = Nothing
    , _rclRole = Nothing
    , _rclKey = Nothing
    , _rclBbox = Nothing
    , _rclProcessingStatus = Nothing
    , _rclModifiedAfter = Nothing
    , _rclModifiedBefore = Nothing
    , _rclPageToken = Nothing
    , _rclProjectId = Nothing
    , _rclOauthToken = Nothing
    , _rclSearch = Nothing
    , _rclMaxResults = Nothing
    , _rclTags = Nothing
    , _rclFields = Nothing
    , _rclCreatedBefore = Nothing
    , _rclAlt = JSON
    }

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or after this time.
rclCreatedAfter :: Lens' RasterCollectionsList' (Maybe UTCTime)
rclCreatedAfter
  = lens _rclCreatedAfter
      (\ s a -> s{_rclCreatedAfter = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rclQuotaUser :: Lens' RasterCollectionsList' (Maybe Text)
rclQuotaUser
  = lens _rclQuotaUser (\ s a -> s{_rclQuotaUser = a})

-- | Returns response with indentations and line breaks.
rclPrettyPrint :: Lens' RasterCollectionsList' Bool
rclPrettyPrint
  = lens _rclPrettyPrint
      (\ s a -> s{_rclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rclUserIp :: Lens' RasterCollectionsList' (Maybe Text)
rclUserIp
  = lens _rclUserIp (\ s a -> s{_rclUserIp = a})

-- | An email address representing a user. Returned assets that have been
-- created by the user associated with the provided email address.
rclCreatorEmail :: Lens' RasterCollectionsList' (Maybe Text)
rclCreatorEmail
  = lens _rclCreatorEmail
      (\ s a -> s{_rclCreatorEmail = a})

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
rclRole :: Lens' RasterCollectionsList' (Maybe MapsengineRasterCollectionsListRole)
rclRole = lens _rclRole (\ s a -> s{_rclRole = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rclKey :: Lens' RasterCollectionsList' (Maybe Text)
rclKey = lens _rclKey (\ s a -> s{_rclKey = a})

-- | A bounding box, expressed as \"west,south,east,north\". If set, only
-- assets which intersect this bounding box will be returned.
rclBbox :: Lens' RasterCollectionsList' (Maybe Text)
rclBbox = lens _rclBbox (\ s a -> s{_rclBbox = a})

rclProcessingStatus :: Lens' RasterCollectionsList' (Maybe MapsengineRasterCollectionsListProcessingStatus)
rclProcessingStatus
  = lens _rclProcessingStatus
      (\ s a -> s{_rclProcessingStatus = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or after this time.
rclModifiedAfter :: Lens' RasterCollectionsList' (Maybe UTCTime)
rclModifiedAfter
  = lens _rclModifiedAfter
      (\ s a -> s{_rclModifiedAfter = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or before this time.
rclModifiedBefore :: Lens' RasterCollectionsList' (Maybe UTCTime)
rclModifiedBefore
  = lens _rclModifiedBefore
      (\ s a -> s{_rclModifiedBefore = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
rclPageToken :: Lens' RasterCollectionsList' (Maybe Text)
rclPageToken
  = lens _rclPageToken (\ s a -> s{_rclPageToken = a})

-- | The ID of a Maps Engine project, used to filter the response. To list
-- all available projects with their IDs, send a Projects: list request.
-- You can also find your project ID as the value of the DashboardPlace:cid
-- URL parameter when signed in to mapsengine.google.com.
rclProjectId :: Lens' RasterCollectionsList' (Maybe Text)
rclProjectId
  = lens _rclProjectId (\ s a -> s{_rclProjectId = a})

-- | OAuth 2.0 token for the current user.
rclOauthToken :: Lens' RasterCollectionsList' (Maybe Text)
rclOauthToken
  = lens _rclOauthToken
      (\ s a -> s{_rclOauthToken = a})

-- | An unstructured search string used to filter the set of results based on
-- asset metadata.
rclSearch :: Lens' RasterCollectionsList' (Maybe Text)
rclSearch
  = lens _rclSearch (\ s a -> s{_rclSearch = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 100.
rclMaxResults :: Lens' RasterCollectionsList' (Maybe Word32)
rclMaxResults
  = lens _rclMaxResults
      (\ s a -> s{_rclMaxResults = a})

-- | A comma separated list of tags. Returned assets will contain all the
-- tags from the list.
rclTags :: Lens' RasterCollectionsList' (Maybe Text)
rclTags = lens _rclTags (\ s a -> s{_rclTags = a})

-- | Selector specifying which fields to include in a partial response.
rclFields :: Lens' RasterCollectionsList' (Maybe Text)
rclFields
  = lens _rclFields (\ s a -> s{_rclFields = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or before this time.
rclCreatedBefore :: Lens' RasterCollectionsList' (Maybe UTCTime)
rclCreatedBefore
  = lens _rclCreatedBefore
      (\ s a -> s{_rclCreatedBefore = a})

-- | Data format for the response.
rclAlt :: Lens' RasterCollectionsList' Alt
rclAlt = lens _rclAlt (\ s a -> s{_rclAlt = a})

instance GoogleRequest RasterCollectionsList' where
        type Rs RasterCollectionsList' =
             RasterCollectionsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u RasterCollectionsList'{..}
          = go _rclCreatedAfter _rclQuotaUser
              (Just _rclPrettyPrint)
              _rclUserIp
              _rclCreatorEmail
              _rclRole
              _rclKey
              _rclBbox
              _rclProcessingStatus
              _rclModifiedAfter
              _rclModifiedBefore
              _rclPageToken
              _rclProjectId
              _rclOauthToken
              _rclSearch
              _rclMaxResults
              _rclTags
              _rclFields
              _rclCreatedBefore
              (Just _rclAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RasterCollectionsListResource)
                      r
                      u
