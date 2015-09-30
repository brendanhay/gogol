{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Layers.ListPublished
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all published layers readable by the current user.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineLayersListPublished@.
module Mapsengine.Layers.ListPublished
    (
    -- * REST Resource
      LayersListPublishedAPI

    -- * Creating a Request
    , layersListPublished
    , LayersListPublished

    -- * Request Lenses
    , llpQuotaUser
    , llpPrettyPrint
    , llpUserIp
    , llpKey
    , llpPageToken
    , llpProjectId
    , llpOauthToken
    , llpMaxResults
    , llpFields
    , llpAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineLayersListPublished@ which the
-- 'LayersListPublished' request conforms to.
type LayersListPublishedAPI =
     "layers" :>
       "published" :>
         QueryParam "pageToken" Text :>
           QueryParam "projectId" Text :>
             QueryParam "maxResults" Word32 :>
               Get '[JSON] PublishedLayersListResponse

-- | Return all published layers readable by the current user.
--
-- /See:/ 'layersListPublished' smart constructor.
data LayersListPublished = LayersListPublished
    { _llpQuotaUser   :: !(Maybe Text)
    , _llpPrettyPrint :: !Bool
    , _llpUserIp      :: !(Maybe Text)
    , _llpKey         :: !(Maybe Text)
    , _llpPageToken   :: !(Maybe Text)
    , _llpProjectId   :: !(Maybe Text)
    , _llpOauthToken  :: !(Maybe Text)
    , _llpMaxResults  :: !(Maybe Word32)
    , _llpFields      :: !(Maybe Text)
    , _llpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersListPublished'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llpQuotaUser'
--
-- * 'llpPrettyPrint'
--
-- * 'llpUserIp'
--
-- * 'llpKey'
--
-- * 'llpPageToken'
--
-- * 'llpProjectId'
--
-- * 'llpOauthToken'
--
-- * 'llpMaxResults'
--
-- * 'llpFields'
--
-- * 'llpAlt'
layersListPublished
    :: LayersListPublished
layersListPublished =
    LayersListPublished
    { _llpQuotaUser = Nothing
    , _llpPrettyPrint = True
    , _llpUserIp = Nothing
    , _llpKey = Nothing
    , _llpPageToken = Nothing
    , _llpProjectId = Nothing
    , _llpOauthToken = Nothing
    , _llpMaxResults = Nothing
    , _llpFields = Nothing
    , _llpAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
llpQuotaUser :: Lens' LayersListPublished' (Maybe Text)
llpQuotaUser
  = lens _llpQuotaUser (\ s a -> s{_llpQuotaUser = a})

-- | Returns response with indentations and line breaks.
llpPrettyPrint :: Lens' LayersListPublished' Bool
llpPrettyPrint
  = lens _llpPrettyPrint
      (\ s a -> s{_llpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
llpUserIp :: Lens' LayersListPublished' (Maybe Text)
llpUserIp
  = lens _llpUserIp (\ s a -> s{_llpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
llpKey :: Lens' LayersListPublished' (Maybe Text)
llpKey = lens _llpKey (\ s a -> s{_llpKey = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
llpPageToken :: Lens' LayersListPublished' (Maybe Text)
llpPageToken
  = lens _llpPageToken (\ s a -> s{_llpPageToken = a})

-- | The ID of a Maps Engine project, used to filter the response. To list
-- all available projects with their IDs, send a Projects: list request.
-- You can also find your project ID as the value of the DashboardPlace:cid
-- URL parameter when signed in to mapsengine.google.com.
llpProjectId :: Lens' LayersListPublished' (Maybe Text)
llpProjectId
  = lens _llpProjectId (\ s a -> s{_llpProjectId = a})

-- | OAuth 2.0 token for the current user.
llpOauthToken :: Lens' LayersListPublished' (Maybe Text)
llpOauthToken
  = lens _llpOauthToken
      (\ s a -> s{_llpOauthToken = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 100.
llpMaxResults :: Lens' LayersListPublished' (Maybe Word32)
llpMaxResults
  = lens _llpMaxResults
      (\ s a -> s{_llpMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
llpFields :: Lens' LayersListPublished' (Maybe Text)
llpFields
  = lens _llpFields (\ s a -> s{_llpFields = a})

-- | Data format for the response.
llpAlt :: Lens' LayersListPublished' Text
llpAlt = lens _llpAlt (\ s a -> s{_llpAlt = a})

instance GoogleRequest LayersListPublished' where
        type Rs LayersListPublished' =
             PublishedLayersListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u LayersListPublished{..}
          = go _llpQuotaUser _llpPrettyPrint _llpUserIp _llpKey
              _llpPageToken
              _llpProjectId
              _llpOauthToken
              _llpMaxResults
              _llpFields
              _llpAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LayersListPublishedAPI)
                      r
                      u
