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
-- Module      : Network.Google.Resource.MapsEngine.RasterCollections.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all raster collections readable by the current user.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRasterCollectionsList@.
module Network.Google.Resource.MapsEngine.RasterCollections.List
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
    , rclUserIP
    , rclCreatorEmail
    , rclRole
    , rclKey
    , rclBbox
    , rclProcessingStatus
    , rclModifiedAfter
    , rclModifiedBefore
    , rclPageToken
    , rclProjectId
    , rclOAuthToken
    , rclSearch
    , rclMaxResults
    , rclTags
    , rclFields
    , rclCreatedBefore
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRasterCollectionsList@ which the
-- 'RasterCollectionsList'' request conforms to.
type RasterCollectionsListResource =
     "rasterCollections" :>
       QueryParam "bbox" Text :>
         QueryParam "createdAfter" DateTime :>
           QueryParam "createdBefore" DateTime :>
             QueryParam "creatorEmail" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "modifiedAfter" DateTime :>
                   QueryParam "modifiedBefore" DateTime :>
                     QueryParam "pageToken" Text :>
                       QueryParam "processingStatus"
                         MapsEngineRasterCollectionsListProcessingStatus
                         :>
                         QueryParam "projectId" Text :>
                           QueryParam "role" MapsEngineRasterCollectionsListRole
                             :>
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
                                               Get '[JSON]
                                                 RasterCollectionsListResponse

-- | Return all raster collections readable by the current user.
--
-- /See:/ 'rasterCollectionsList'' smart constructor.
data RasterCollectionsList' = RasterCollectionsList'
    { _rclCreatedAfter     :: !(Maybe DateTime)
    , _rclQuotaUser        :: !(Maybe Text)
    , _rclPrettyPrint      :: !Bool
    , _rclUserIP           :: !(Maybe Text)
    , _rclCreatorEmail     :: !(Maybe Text)
    , _rclRole             :: !(Maybe MapsEngineRasterCollectionsListRole)
    , _rclKey              :: !(Maybe Key)
    , _rclBbox             :: !(Maybe Text)
    , _rclProcessingStatus :: !(Maybe MapsEngineRasterCollectionsListProcessingStatus)
    , _rclModifiedAfter    :: !(Maybe DateTime)
    , _rclModifiedBefore   :: !(Maybe DateTime)
    , _rclPageToken        :: !(Maybe Text)
    , _rclProjectId        :: !(Maybe Text)
    , _rclOAuthToken       :: !(Maybe OAuthToken)
    , _rclSearch           :: !(Maybe Text)
    , _rclMaxResults       :: !(Maybe Word32)
    , _rclTags             :: !(Maybe Text)
    , _rclFields           :: !(Maybe Text)
    , _rclCreatedBefore    :: !(Maybe DateTime)
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
-- * 'rclUserIP'
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
-- * 'rclOAuthToken'
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
rasterCollectionsList'
    :: RasterCollectionsList'
rasterCollectionsList' =
    RasterCollectionsList'
    { _rclCreatedAfter = Nothing
    , _rclQuotaUser = Nothing
    , _rclPrettyPrint = True
    , _rclUserIP = Nothing
    , _rclCreatorEmail = Nothing
    , _rclRole = Nothing
    , _rclKey = Nothing
    , _rclBbox = Nothing
    , _rclProcessingStatus = Nothing
    , _rclModifiedAfter = Nothing
    , _rclModifiedBefore = Nothing
    , _rclPageToken = Nothing
    , _rclProjectId = Nothing
    , _rclOAuthToken = Nothing
    , _rclSearch = Nothing
    , _rclMaxResults = Nothing
    , _rclTags = Nothing
    , _rclFields = Nothing
    , _rclCreatedBefore = Nothing
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
rclUserIP :: Lens' RasterCollectionsList' (Maybe Text)
rclUserIP
  = lens _rclUserIP (\ s a -> s{_rclUserIP = a})

-- | An email address representing a user. Returned assets that have been
-- created by the user associated with the provided email address.
rclCreatorEmail :: Lens' RasterCollectionsList' (Maybe Text)
rclCreatorEmail
  = lens _rclCreatorEmail
      (\ s a -> s{_rclCreatorEmail = a})

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
rclRole :: Lens' RasterCollectionsList' (Maybe MapsEngineRasterCollectionsListRole)
rclRole = lens _rclRole (\ s a -> s{_rclRole = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rclKey :: Lens' RasterCollectionsList' (Maybe Key)
rclKey = lens _rclKey (\ s a -> s{_rclKey = a})

-- | A bounding box, expressed as \"west,south,east,north\". If set, only
-- assets which intersect this bounding box will be returned.
rclBbox :: Lens' RasterCollectionsList' (Maybe Text)
rclBbox = lens _rclBbox (\ s a -> s{_rclBbox = a})

rclProcessingStatus :: Lens' RasterCollectionsList' (Maybe MapsEngineRasterCollectionsListProcessingStatus)
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
rclOAuthToken :: Lens' RasterCollectionsList' (Maybe OAuthToken)
rclOAuthToken
  = lens _rclOAuthToken
      (\ s a -> s{_rclOAuthToken = a})

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

instance GoogleAuth RasterCollectionsList' where
        authKey = rclKey . _Just
        authToken = rclOAuthToken . _Just

instance GoogleRequest RasterCollectionsList' where
        type Rs RasterCollectionsList' =
             RasterCollectionsListResponse
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u RasterCollectionsList'{..}
          = go _rclBbox _rclCreatedAfter _rclCreatedBefore
              _rclCreatorEmail
              _rclMaxResults
              _rclModifiedAfter
              _rclModifiedBefore
              _rclPageToken
              _rclProcessingStatus
              _rclProjectId
              _rclRole
              _rclSearch
              _rclTags
              _rclQuotaUser
              (Just _rclPrettyPrint)
              _rclUserIP
              _rclFields
              _rclKey
              _rclOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RasterCollectionsListResource)
                      r
                      u
