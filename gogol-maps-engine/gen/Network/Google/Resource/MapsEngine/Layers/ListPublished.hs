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
-- Module      : Network.Google.Resource.MapsEngine.Layers.ListPublished
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all published layers readable by the current user.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineLayersListPublished@.
module Network.Google.Resource.MapsEngine.Layers.ListPublished
    (
    -- * REST Resource
      LayersListPublishedResource

    -- * Creating a Request
    , layersListPublished'
    , LayersListPublished'

    -- * Request Lenses
    , llpQuotaUser
    , llpPrettyPrint
    , llpUserIP
    , llpKey
    , llpPageToken
    , llpProjectId
    , llpOAuthToken
    , llpMaxResults
    , llpFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineLayersListPublished@ which the
-- 'LayersListPublished'' request conforms to.
type LayersListPublishedResource =
     "layers" :>
       "published" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "pageToken" Text :>
                   QueryParam "projectId" Text :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] PublishedLayersListResponse

-- | Return all published layers readable by the current user.
--
-- /See:/ 'layersListPublished'' smart constructor.
data LayersListPublished' = LayersListPublished'
    { _llpQuotaUser   :: !(Maybe Text)
    , _llpPrettyPrint :: !Bool
    , _llpUserIP      :: !(Maybe Text)
    , _llpKey         :: !(Maybe Key)
    , _llpPageToken   :: !(Maybe Text)
    , _llpProjectId   :: !(Maybe Text)
    , _llpOAuthToken  :: !(Maybe OAuthToken)
    , _llpMaxResults  :: !(Maybe Word32)
    , _llpFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersListPublished'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llpQuotaUser'
--
-- * 'llpPrettyPrint'
--
-- * 'llpUserIP'
--
-- * 'llpKey'
--
-- * 'llpPageToken'
--
-- * 'llpProjectId'
--
-- * 'llpOAuthToken'
--
-- * 'llpMaxResults'
--
-- * 'llpFields'
layersListPublished'
    :: LayersListPublished'
layersListPublished' =
    LayersListPublished'
    { _llpQuotaUser = Nothing
    , _llpPrettyPrint = True
    , _llpUserIP = Nothing
    , _llpKey = Nothing
    , _llpPageToken = Nothing
    , _llpProjectId = Nothing
    , _llpOAuthToken = Nothing
    , _llpMaxResults = Nothing
    , _llpFields = Nothing
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
llpUserIP :: Lens' LayersListPublished' (Maybe Text)
llpUserIP
  = lens _llpUserIP (\ s a -> s{_llpUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
llpKey :: Lens' LayersListPublished' (Maybe Key)
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
llpOAuthToken :: Lens' LayersListPublished' (Maybe OAuthToken)
llpOAuthToken
  = lens _llpOAuthToken
      (\ s a -> s{_llpOAuthToken = a})

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

instance GoogleAuth LayersListPublished' where
        authKey = llpKey . _Just
        authToken = llpOAuthToken . _Just

instance GoogleRequest LayersListPublished' where
        type Rs LayersListPublished' =
             PublishedLayersListResponse
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u LayersListPublished'{..}
          = go _llpQuotaUser (Just _llpPrettyPrint) _llpUserIP
              _llpKey
              _llpPageToken
              _llpProjectId
              _llpOAuthToken
              _llpMaxResults
              _llpFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LayersListPublishedResource)
                      r
                      u
