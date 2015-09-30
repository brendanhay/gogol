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
-- Module      : Network.Google.Resource.Mapsengine.Layers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all layers readable by the current user.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineLayersList@.
module Network.Google.Resource.Mapsengine.Layers.List
    (
    -- * REST Resource
      LayersListResource

    -- * Creating a Request
    , layersList'
    , LayersList'

    -- * Request Lenses
    , llCreatedAfter
    , llQuotaUser
    , llPrettyPrint
    , llUserIp
    , llCreatorEmail
    , llRole
    , llKey
    , llBbox
    , llProcessingStatus
    , llModifiedAfter
    , llModifiedBefore
    , llPageToken
    , llProjectId
    , llOauthToken
    , llSearch
    , llMaxResults
    , llTags
    , llFields
    , llCreatedBefore
    , llAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineLayersList@ which the
-- 'LayersList'' request conforms to.
type LayersListResource =
     "layers" :>
       QueryParam "createdAfter" UTCTime :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "creatorEmail" Text :>
                 QueryParam "role" MapsengineLayersListRole :>
                   QueryParam "key" Text :>
                     QueryParam "bbox" Text :>
                       QueryParam "processingStatus"
                         MapsengineLayersListProcessingStatus
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
                                               Get '[JSON] LayersListResponse

-- | Return all layers readable by the current user.
--
-- /See:/ 'layersList'' smart constructor.
data LayersList' = LayersList'
    { _llCreatedAfter     :: !(Maybe UTCTime)
    , _llQuotaUser        :: !(Maybe Text)
    , _llPrettyPrint      :: !Bool
    , _llUserIp           :: !(Maybe Text)
    , _llCreatorEmail     :: !(Maybe Text)
    , _llRole             :: !(Maybe MapsengineLayersListRole)
    , _llKey              :: !(Maybe Text)
    , _llBbox             :: !(Maybe Text)
    , _llProcessingStatus :: !(Maybe MapsengineLayersListProcessingStatus)
    , _llModifiedAfter    :: !(Maybe UTCTime)
    , _llModifiedBefore   :: !(Maybe UTCTime)
    , _llPageToken        :: !(Maybe Text)
    , _llProjectId        :: !(Maybe Text)
    , _llOauthToken       :: !(Maybe Text)
    , _llSearch           :: !(Maybe Text)
    , _llMaxResults       :: !(Maybe Word32)
    , _llTags             :: !(Maybe Text)
    , _llFields           :: !(Maybe Text)
    , _llCreatedBefore    :: !(Maybe UTCTime)
    , _llAlt              :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llCreatedAfter'
--
-- * 'llQuotaUser'
--
-- * 'llPrettyPrint'
--
-- * 'llUserIp'
--
-- * 'llCreatorEmail'
--
-- * 'llRole'
--
-- * 'llKey'
--
-- * 'llBbox'
--
-- * 'llProcessingStatus'
--
-- * 'llModifiedAfter'
--
-- * 'llModifiedBefore'
--
-- * 'llPageToken'
--
-- * 'llProjectId'
--
-- * 'llOauthToken'
--
-- * 'llSearch'
--
-- * 'llMaxResults'
--
-- * 'llTags'
--
-- * 'llFields'
--
-- * 'llCreatedBefore'
--
-- * 'llAlt'
layersList'
    :: LayersList'
layersList' =
    LayersList'
    { _llCreatedAfter = Nothing
    , _llQuotaUser = Nothing
    , _llPrettyPrint = True
    , _llUserIp = Nothing
    , _llCreatorEmail = Nothing
    , _llRole = Nothing
    , _llKey = Nothing
    , _llBbox = Nothing
    , _llProcessingStatus = Nothing
    , _llModifiedAfter = Nothing
    , _llModifiedBefore = Nothing
    , _llPageToken = Nothing
    , _llProjectId = Nothing
    , _llOauthToken = Nothing
    , _llSearch = Nothing
    , _llMaxResults = Nothing
    , _llTags = Nothing
    , _llFields = Nothing
    , _llCreatedBefore = Nothing
    , _llAlt = JSON
    }

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or after this time.
llCreatedAfter :: Lens' LayersList' (Maybe UTCTime)
llCreatedAfter
  = lens _llCreatedAfter
      (\ s a -> s{_llCreatedAfter = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
llQuotaUser :: Lens' LayersList' (Maybe Text)
llQuotaUser
  = lens _llQuotaUser (\ s a -> s{_llQuotaUser = a})

-- | Returns response with indentations and line breaks.
llPrettyPrint :: Lens' LayersList' Bool
llPrettyPrint
  = lens _llPrettyPrint
      (\ s a -> s{_llPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
llUserIp :: Lens' LayersList' (Maybe Text)
llUserIp = lens _llUserIp (\ s a -> s{_llUserIp = a})

-- | An email address representing a user. Returned assets that have been
-- created by the user associated with the provided email address.
llCreatorEmail :: Lens' LayersList' (Maybe Text)
llCreatorEmail
  = lens _llCreatorEmail
      (\ s a -> s{_llCreatorEmail = a})

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
llRole :: Lens' LayersList' (Maybe MapsengineLayersListRole)
llRole = lens _llRole (\ s a -> s{_llRole = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
llKey :: Lens' LayersList' (Maybe Text)
llKey = lens _llKey (\ s a -> s{_llKey = a})

-- | A bounding box, expressed as \"west,south,east,north\". If set, only
-- assets which intersect this bounding box will be returned.
llBbox :: Lens' LayersList' (Maybe Text)
llBbox = lens _llBbox (\ s a -> s{_llBbox = a})

llProcessingStatus :: Lens' LayersList' (Maybe MapsengineLayersListProcessingStatus)
llProcessingStatus
  = lens _llProcessingStatus
      (\ s a -> s{_llProcessingStatus = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or after this time.
llModifiedAfter :: Lens' LayersList' (Maybe UTCTime)
llModifiedAfter
  = lens _llModifiedAfter
      (\ s a -> s{_llModifiedAfter = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or before this time.
llModifiedBefore :: Lens' LayersList' (Maybe UTCTime)
llModifiedBefore
  = lens _llModifiedBefore
      (\ s a -> s{_llModifiedBefore = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
llPageToken :: Lens' LayersList' (Maybe Text)
llPageToken
  = lens _llPageToken (\ s a -> s{_llPageToken = a})

-- | The ID of a Maps Engine project, used to filter the response. To list
-- all available projects with their IDs, send a Projects: list request.
-- You can also find your project ID as the value of the DashboardPlace:cid
-- URL parameter when signed in to mapsengine.google.com.
llProjectId :: Lens' LayersList' (Maybe Text)
llProjectId
  = lens _llProjectId (\ s a -> s{_llProjectId = a})

-- | OAuth 2.0 token for the current user.
llOauthToken :: Lens' LayersList' (Maybe Text)
llOauthToken
  = lens _llOauthToken (\ s a -> s{_llOauthToken = a})

-- | An unstructured search string used to filter the set of results based on
-- asset metadata.
llSearch :: Lens' LayersList' (Maybe Text)
llSearch = lens _llSearch (\ s a -> s{_llSearch = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 100.
llMaxResults :: Lens' LayersList' (Maybe Word32)
llMaxResults
  = lens _llMaxResults (\ s a -> s{_llMaxResults = a})

-- | A comma separated list of tags. Returned assets will contain all the
-- tags from the list.
llTags :: Lens' LayersList' (Maybe Text)
llTags = lens _llTags (\ s a -> s{_llTags = a})

-- | Selector specifying which fields to include in a partial response.
llFields :: Lens' LayersList' (Maybe Text)
llFields = lens _llFields (\ s a -> s{_llFields = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or before this time.
llCreatedBefore :: Lens' LayersList' (Maybe UTCTime)
llCreatedBefore
  = lens _llCreatedBefore
      (\ s a -> s{_llCreatedBefore = a})

-- | Data format for the response.
llAlt :: Lens' LayersList' Alt
llAlt = lens _llAlt (\ s a -> s{_llAlt = a})

instance GoogleRequest LayersList' where
        type Rs LayersList' = LayersListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u LayersList'{..}
          = go _llCreatedAfter _llQuotaUser
              (Just _llPrettyPrint)
              _llUserIp
              _llCreatorEmail
              _llRole
              _llKey
              _llBbox
              _llProcessingStatus
              _llModifiedAfter
              _llModifiedBefore
              _llPageToken
              _llProjectId
              _llOauthToken
              _llSearch
              _llMaxResults
              _llTags
              _llFields
              _llCreatedBefore
              (Just _llAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy LayersListResource)
                      r
                      u
