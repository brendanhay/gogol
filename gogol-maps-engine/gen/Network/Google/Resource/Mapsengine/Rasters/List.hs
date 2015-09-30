{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Rasters.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all rasters readable by the current user.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineRastersList@.
module Mapsengine.Rasters.List
    (
    -- * REST Resource
      RastersListAPI

    -- * Creating a Request
    , rastersList
    , RastersList

    -- * Request Lenses
    , rlCreatedAfter
    , rlQuotaUser
    , rlPrettyPrint
    , rlUserIp
    , rlCreatorEmail
    , rlRole
    , rlKey
    , rlBbox
    , rlProcessingStatus
    , rlModifiedAfter
    , rlModifiedBefore
    , rlPageToken
    , rlProjectId
    , rlOauthToken
    , rlSearch
    , rlMaxResults
    , rlTags
    , rlFields
    , rlCreatedBefore
    , rlAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineRastersList@ which the
-- 'RastersList' request conforms to.
type RastersListAPI =
     "rasters" :>
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
                                 Get '[JSON] RastersListResponse

-- | Return all rasters readable by the current user.
--
-- /See:/ 'rastersList' smart constructor.
data RastersList = RastersList
    { _rlCreatedAfter     :: !(Maybe UTCTime)
    , _rlQuotaUser        :: !(Maybe Text)
    , _rlPrettyPrint      :: !Bool
    , _rlUserIp           :: !(Maybe Text)
    , _rlCreatorEmail     :: !(Maybe Text)
    , _rlRole             :: !(Maybe Text)
    , _rlKey              :: !(Maybe Text)
    , _rlBbox             :: !(Maybe Text)
    , _rlProcessingStatus :: !(Maybe Text)
    , _rlModifiedAfter    :: !(Maybe UTCTime)
    , _rlModifiedBefore   :: !(Maybe UTCTime)
    , _rlPageToken        :: !(Maybe Text)
    , _rlProjectId        :: !Text
    , _rlOauthToken       :: !(Maybe Text)
    , _rlSearch           :: !(Maybe Text)
    , _rlMaxResults       :: !(Maybe Word32)
    , _rlTags             :: !(Maybe Text)
    , _rlFields           :: !(Maybe Text)
    , _rlCreatedBefore    :: !(Maybe UTCTime)
    , _rlAlt              :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlCreatedAfter'
--
-- * 'rlQuotaUser'
--
-- * 'rlPrettyPrint'
--
-- * 'rlUserIp'
--
-- * 'rlCreatorEmail'
--
-- * 'rlRole'
--
-- * 'rlKey'
--
-- * 'rlBbox'
--
-- * 'rlProcessingStatus'
--
-- * 'rlModifiedAfter'
--
-- * 'rlModifiedBefore'
--
-- * 'rlPageToken'
--
-- * 'rlProjectId'
--
-- * 'rlOauthToken'
--
-- * 'rlSearch'
--
-- * 'rlMaxResults'
--
-- * 'rlTags'
--
-- * 'rlFields'
--
-- * 'rlCreatedBefore'
--
-- * 'rlAlt'
rastersList
    :: Text -- ^ 'projectId'
    -> RastersList
rastersList pRlProjectId_ =
    RastersList
    { _rlCreatedAfter = Nothing
    , _rlQuotaUser = Nothing
    , _rlPrettyPrint = True
    , _rlUserIp = Nothing
    , _rlCreatorEmail = Nothing
    , _rlRole = Nothing
    , _rlKey = Nothing
    , _rlBbox = Nothing
    , _rlProcessingStatus = Nothing
    , _rlModifiedAfter = Nothing
    , _rlModifiedBefore = Nothing
    , _rlPageToken = Nothing
    , _rlProjectId = pRlProjectId_
    , _rlOauthToken = Nothing
    , _rlSearch = Nothing
    , _rlMaxResults = Nothing
    , _rlTags = Nothing
    , _rlFields = Nothing
    , _rlCreatedBefore = Nothing
    , _rlAlt = "json"
    }

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or after this time.
rlCreatedAfter :: Lens' RastersList' (Maybe UTCTime)
rlCreatedAfter
  = lens _rlCreatedAfter
      (\ s a -> s{_rlCreatedAfter = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rlQuotaUser :: Lens' RastersList' (Maybe Text)
rlQuotaUser
  = lens _rlQuotaUser (\ s a -> s{_rlQuotaUser = a})

-- | Returns response with indentations and line breaks.
rlPrettyPrint :: Lens' RastersList' Bool
rlPrettyPrint
  = lens _rlPrettyPrint
      (\ s a -> s{_rlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rlUserIp :: Lens' RastersList' (Maybe Text)
rlUserIp = lens _rlUserIp (\ s a -> s{_rlUserIp = a})

-- | An email address representing a user. Returned assets that have been
-- created by the user associated with the provided email address.
rlCreatorEmail :: Lens' RastersList' (Maybe Text)
rlCreatorEmail
  = lens _rlCreatorEmail
      (\ s a -> s{_rlCreatorEmail = a})

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
rlRole :: Lens' RastersList' (Maybe Text)
rlRole = lens _rlRole (\ s a -> s{_rlRole = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rlKey :: Lens' RastersList' (Maybe Text)
rlKey = lens _rlKey (\ s a -> s{_rlKey = a})

-- | A bounding box, expressed as \"west,south,east,north\". If set, only
-- assets which intersect this bounding box will be returned.
rlBbox :: Lens' RastersList' (Maybe Text)
rlBbox = lens _rlBbox (\ s a -> s{_rlBbox = a})

rlProcessingStatus :: Lens' RastersList' (Maybe Text)
rlProcessingStatus
  = lens _rlProcessingStatus
      (\ s a -> s{_rlProcessingStatus = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or after this time.
rlModifiedAfter :: Lens' RastersList' (Maybe UTCTime)
rlModifiedAfter
  = lens _rlModifiedAfter
      (\ s a -> s{_rlModifiedAfter = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or before this time.
rlModifiedBefore :: Lens' RastersList' (Maybe UTCTime)
rlModifiedBefore
  = lens _rlModifiedBefore
      (\ s a -> s{_rlModifiedBefore = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
rlPageToken :: Lens' RastersList' (Maybe Text)
rlPageToken
  = lens _rlPageToken (\ s a -> s{_rlPageToken = a})

-- | The ID of a Maps Engine project, used to filter the response. To list
-- all available projects with their IDs, send a Projects: list request.
-- You can also find your project ID as the value of the DashboardPlace:cid
-- URL parameter when signed in to mapsengine.google.com.
rlProjectId :: Lens' RastersList' Text
rlProjectId
  = lens _rlProjectId (\ s a -> s{_rlProjectId = a})

-- | OAuth 2.0 token for the current user.
rlOauthToken :: Lens' RastersList' (Maybe Text)
rlOauthToken
  = lens _rlOauthToken (\ s a -> s{_rlOauthToken = a})

-- | An unstructured search string used to filter the set of results based on
-- asset metadata.
rlSearch :: Lens' RastersList' (Maybe Text)
rlSearch = lens _rlSearch (\ s a -> s{_rlSearch = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 100.
rlMaxResults :: Lens' RastersList' (Maybe Word32)
rlMaxResults
  = lens _rlMaxResults (\ s a -> s{_rlMaxResults = a})

-- | A comma separated list of tags. Returned assets will contain all the
-- tags from the list.
rlTags :: Lens' RastersList' (Maybe Text)
rlTags = lens _rlTags (\ s a -> s{_rlTags = a})

-- | Selector specifying which fields to include in a partial response.
rlFields :: Lens' RastersList' (Maybe Text)
rlFields = lens _rlFields (\ s a -> s{_rlFields = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or before this time.
rlCreatedBefore :: Lens' RastersList' (Maybe UTCTime)
rlCreatedBefore
  = lens _rlCreatedBefore
      (\ s a -> s{_rlCreatedBefore = a})

-- | Data format for the response.
rlAlt :: Lens' RastersList' Text
rlAlt = lens _rlAlt (\ s a -> s{_rlAlt = a})

instance GoogleRequest RastersList' where
        type Rs RastersList' = RastersListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u RastersList{..}
          = go _rlCreatedAfter _rlQuotaUser _rlPrettyPrint
              _rlUserIp
              _rlCreatorEmail
              _rlRole
              _rlKey
              _rlBbox
              _rlProcessingStatus
              _rlModifiedAfter
              _rlModifiedBefore
              _rlPageToken
              (Just _rlProjectId)
              _rlOauthToken
              _rlSearch
              _rlMaxResults
              _rlTags
              _rlFields
              _rlCreatedBefore
              _rlAlt
          where go
                  = clientWithRoute (Proxy :: Proxy RastersListAPI) r u
