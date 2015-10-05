{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

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
    , mllCreatedAfter
    , mllQuotaUser
    , mllPrettyPrint
    , mllUserIP
    , mllCreatorEmail
    , mllRole
    , mllKey
    , mllBbox
    , mllProcessingStatus
    , mllModifiedAfter
    , mllModifiedBefore
    , mllPageToken
    , mllProjectId
    , mllOAuthToken
    , mllSearch
    , mllMaxResults
    , mllTags
    , mllFields
    , mllCreatedBefore
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineMapsList@ which the
-- 'MapsList'' request conforms to.
type MapsListResource =
     "maps" :>
       QueryParam "createdAfter" DateTime' :>
         QueryParam "creatorEmail" Text :>
           QueryParam "role" MapsListRole :>
             QueryParam "bbox" Text :>
               QueryParam "processingStatus"
                 MapsListProcessingStatus
                 :>
                 QueryParam "modifiedAfter" DateTime' :>
                   QueryParam "modifiedBefore" DateTime' :>
                     QueryParam "pageToken" Text :>
                       QueryParam "projectId" Text :>
                         QueryParam "search" Text :>
                           QueryParam "maxResults" Word32 :>
                             QueryParam "tags" Text :>
                               QueryParam "createdBefore" DateTime' :>
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
    { _mllCreatedAfter     :: !(Maybe DateTime')
    , _mllQuotaUser        :: !(Maybe Text)
    , _mllPrettyPrint      :: !Bool
    , _mllUserIP           :: !(Maybe Text)
    , _mllCreatorEmail     :: !(Maybe Text)
    , _mllRole             :: !(Maybe MapsListRole)
    , _mllKey              :: !(Maybe Key)
    , _mllBbox             :: !(Maybe Text)
    , _mllProcessingStatus :: !(Maybe MapsListProcessingStatus)
    , _mllModifiedAfter    :: !(Maybe DateTime')
    , _mllModifiedBefore   :: !(Maybe DateTime')
    , _mllPageToken        :: !(Maybe Text)
    , _mllProjectId        :: !(Maybe Text)
    , _mllOAuthToken       :: !(Maybe OAuthToken)
    , _mllSearch           :: !(Maybe Text)
    , _mllMaxResults       :: !(Maybe Word32)
    , _mllTags             :: !(Maybe Text)
    , _mllFields           :: !(Maybe Text)
    , _mllCreatedBefore    :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'mllUserIP'
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
-- * 'mllOAuthToken'
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
mapsList'
    :: MapsList'
mapsList' =
    MapsList'
    { _mllCreatedAfter = Nothing
    , _mllQuotaUser = Nothing
    , _mllPrettyPrint = True
    , _mllUserIP = Nothing
    , _mllCreatorEmail = Nothing
    , _mllRole = Nothing
    , _mllKey = Nothing
    , _mllBbox = Nothing
    , _mllProcessingStatus = Nothing
    , _mllModifiedAfter = Nothing
    , _mllModifiedBefore = Nothing
    , _mllPageToken = Nothing
    , _mllProjectId = Nothing
    , _mllOAuthToken = Nothing
    , _mllSearch = Nothing
    , _mllMaxResults = Nothing
    , _mllTags = Nothing
    , _mllFields = Nothing
    , _mllCreatedBefore = Nothing
    }

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been created at or after this time.
mllCreatedAfter :: Lens' MapsList' (Maybe UTCTime)
mllCreatedAfter
  = lens _mllCreatedAfter
      (\ s a -> s{_mllCreatedAfter = a})
      . mapping _DateTime

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
mllUserIP :: Lens' MapsList' (Maybe Text)
mllUserIP
  = lens _mllUserIP (\ s a -> s{_mllUserIP = a})

-- | An email address representing a user. Returned assets that have been
-- created by the user associated with the provided email address.
mllCreatorEmail :: Lens' MapsList' (Maybe Text)
mllCreatorEmail
  = lens _mllCreatorEmail
      (\ s a -> s{_mllCreatorEmail = a})

-- | The role parameter indicates that the response should only contain
-- assets where the current user has the specified level of access.
mllRole :: Lens' MapsList' (Maybe MapsListRole)
mllRole = lens _mllRole (\ s a -> s{_mllRole = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mllKey :: Lens' MapsList' (Maybe Key)
mllKey = lens _mllKey (\ s a -> s{_mllKey = a})

-- | A bounding box, expressed as \"west,south,east,north\". If set, only
-- assets which intersect this bounding box will be returned.
mllBbox :: Lens' MapsList' (Maybe Text)
mllBbox = lens _mllBbox (\ s a -> s{_mllBbox = a})

mllProcessingStatus :: Lens' MapsList' (Maybe MapsListProcessingStatus)
mllProcessingStatus
  = lens _mllProcessingStatus
      (\ s a -> s{_mllProcessingStatus = a})

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or after this time.
mllModifiedAfter :: Lens' MapsList' (Maybe UTCTime)
mllModifiedAfter
  = lens _mllModifiedAfter
      (\ s a -> s{_mllModifiedAfter = a})
      . mapping _DateTime

-- | An RFC 3339 formatted date-time value (e.g. 1970-01-01T00:00:00Z).
-- Returned assets will have been modified at or before this time.
mllModifiedBefore :: Lens' MapsList' (Maybe UTCTime)
mllModifiedBefore
  = lens _mllModifiedBefore
      (\ s a -> s{_mllModifiedBefore = a})
      . mapping _DateTime

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
mllOAuthToken :: Lens' MapsList' (Maybe OAuthToken)
mllOAuthToken
  = lens _mllOAuthToken
      (\ s a -> s{_mllOAuthToken = a})

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
      . mapping _DateTime

instance GoogleAuth MapsList' where
        authKey = mllKey . _Just
        authToken = mllOAuthToken . _Just

instance GoogleRequest MapsList' where
        type Rs MapsList' = MapsListResponse
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u MapsList'{..}
          = go _mllCreatedAfter _mllCreatorEmail _mllRole
              _mllBbox
              _mllProcessingStatus
              _mllModifiedAfter
              _mllModifiedBefore
              _mllPageToken
              _mllProjectId
              _mllSearch
              _mllMaxResults
              _mllTags
              _mllCreatedBefore
              _mllQuotaUser
              (Just _mllPrettyPrint)
              _mllUserIP
              _mllFields
              _mllKey
              _mllOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy MapsListResource) r
                      u
