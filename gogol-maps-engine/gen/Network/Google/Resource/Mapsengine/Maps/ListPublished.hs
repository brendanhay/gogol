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
-- Module      : Network.Google.Resource.Mapsengine.Maps.ListPublished
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all published maps readable by the current user.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineMapsListPublished@.
module Network.Google.Resource.Mapsengine.Maps.ListPublished
    (
    -- * REST Resource
      MapsListPublishedResource

    -- * Creating a Request
    , mapsListPublished'
    , MapsListPublished'

    -- * Request Lenses
    , mlpQuotaUser
    , mlpPrettyPrint
    , mlpUserIp
    , mlpKey
    , mlpPageToken
    , mlpProjectId
    , mlpOauthToken
    , mlpMaxResults
    , mlpFields
    , mlpAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineMapsListPublished@ which the
-- 'MapsListPublished'' request conforms to.
type MapsListPublishedResource =
     "maps" :>
       "published" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "projectId" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Get '[JSON] PublishedMapsListResponse

-- | Return all published maps readable by the current user.
--
-- /See:/ 'mapsListPublished'' smart constructor.
data MapsListPublished' = MapsListPublished'
    { _mlpQuotaUser   :: !(Maybe Text)
    , _mlpPrettyPrint :: !Bool
    , _mlpUserIp      :: !(Maybe Text)
    , _mlpKey         :: !(Maybe Text)
    , _mlpPageToken   :: !(Maybe Text)
    , _mlpProjectId   :: !(Maybe Text)
    , _mlpOauthToken  :: !(Maybe Text)
    , _mlpMaxResults  :: !(Maybe Word32)
    , _mlpFields      :: !(Maybe Text)
    , _mlpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsListPublished'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlpQuotaUser'
--
-- * 'mlpPrettyPrint'
--
-- * 'mlpUserIp'
--
-- * 'mlpKey'
--
-- * 'mlpPageToken'
--
-- * 'mlpProjectId'
--
-- * 'mlpOauthToken'
--
-- * 'mlpMaxResults'
--
-- * 'mlpFields'
--
-- * 'mlpAlt'
mapsListPublished'
    :: MapsListPublished'
mapsListPublished' =
    MapsListPublished'
    { _mlpQuotaUser = Nothing
    , _mlpPrettyPrint = True
    , _mlpUserIp = Nothing
    , _mlpKey = Nothing
    , _mlpPageToken = Nothing
    , _mlpProjectId = Nothing
    , _mlpOauthToken = Nothing
    , _mlpMaxResults = Nothing
    , _mlpFields = Nothing
    , _mlpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mlpQuotaUser :: Lens' MapsListPublished' (Maybe Text)
mlpQuotaUser
  = lens _mlpQuotaUser (\ s a -> s{_mlpQuotaUser = a})

-- | Returns response with indentations and line breaks.
mlpPrettyPrint :: Lens' MapsListPublished' Bool
mlpPrettyPrint
  = lens _mlpPrettyPrint
      (\ s a -> s{_mlpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mlpUserIp :: Lens' MapsListPublished' (Maybe Text)
mlpUserIp
  = lens _mlpUserIp (\ s a -> s{_mlpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mlpKey :: Lens' MapsListPublished' (Maybe Text)
mlpKey = lens _mlpKey (\ s a -> s{_mlpKey = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
mlpPageToken :: Lens' MapsListPublished' (Maybe Text)
mlpPageToken
  = lens _mlpPageToken (\ s a -> s{_mlpPageToken = a})

-- | The ID of a Maps Engine project, used to filter the response. To list
-- all available projects with their IDs, send a Projects: list request.
-- You can also find your project ID as the value of the DashboardPlace:cid
-- URL parameter when signed in to mapsengine.google.com.
mlpProjectId :: Lens' MapsListPublished' (Maybe Text)
mlpProjectId
  = lens _mlpProjectId (\ s a -> s{_mlpProjectId = a})

-- | OAuth 2.0 token for the current user.
mlpOauthToken :: Lens' MapsListPublished' (Maybe Text)
mlpOauthToken
  = lens _mlpOauthToken
      (\ s a -> s{_mlpOauthToken = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 100.
mlpMaxResults :: Lens' MapsListPublished' (Maybe Word32)
mlpMaxResults
  = lens _mlpMaxResults
      (\ s a -> s{_mlpMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mlpFields :: Lens' MapsListPublished' (Maybe Text)
mlpFields
  = lens _mlpFields (\ s a -> s{_mlpFields = a})

-- | Data format for the response.
mlpAlt :: Lens' MapsListPublished' Alt
mlpAlt = lens _mlpAlt (\ s a -> s{_mlpAlt = a})

instance GoogleRequest MapsListPublished' where
        type Rs MapsListPublished' =
             PublishedMapsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u MapsListPublished'{..}
          = go _mlpQuotaUser (Just _mlpPrettyPrint) _mlpUserIp
              _mlpKey
              _mlpPageToken
              _mlpProjectId
              _mlpOauthToken
              _mlpMaxResults
              _mlpFields
              (Just _mlpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MapsListPublishedResource)
                      r
                      u
