{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Mapsengine.Layers.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all of the permissions for the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.layers.permissions.list@.
module Network.Google.API.Mapsengine.Layers.Permissions.List
    (
    -- * REST Resource
      LayersPermissionsListAPI

    -- * Creating a Request
    , layersPermissionsList'
    , LayersPermissionsList'

    -- * Request Lenses
    , layQuotaUser
    , layPrettyPrint
    , layUserIp
    , layKey
    , layId
    , layOauthToken
    , layFields
    , layAlt
    ) where

import           Network.Google.Map.Engine.Types
import           Network.Google.Prelude

-- | A resource alias for mapsengine.layers.permissions.list which the
-- 'LayersPermissionsList'' request conforms to.
type LayersPermissionsListAPI =
     "layers" :>
       Capture "id" Text :>
         "permissions" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Get '[JSON] PermissionsListResponse

-- | Return all of the permissions for the specified asset.
--
-- /See:/ 'layersPermissionsList'' smart constructor.
data LayersPermissionsList' = LayersPermissionsList'
    { _layQuotaUser   :: !(Maybe Text)
    , _layPrettyPrint :: !Bool
    , _layUserIp      :: !(Maybe Text)
    , _layKey         :: !(Maybe Text)
    , _layId          :: !Text
    , _layOauthToken  :: !(Maybe Text)
    , _layFields      :: !(Maybe Text)
    , _layAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersPermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'layQuotaUser'
--
-- * 'layPrettyPrint'
--
-- * 'layUserIp'
--
-- * 'layKey'
--
-- * 'layId'
--
-- * 'layOauthToken'
--
-- * 'layFields'
--
-- * 'layAlt'
layersPermissionsList'
    :: Text -- ^ 'id'
    -> LayersPermissionsList'
layersPermissionsList' pLayId_ =
    LayersPermissionsList'
    { _layQuotaUser = Nothing
    , _layPrettyPrint = True
    , _layUserIp = Nothing
    , _layKey = Nothing
    , _layId = pLayId_
    , _layOauthToken = Nothing
    , _layFields = Nothing
    , _layAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
layQuotaUser :: Lens' LayersPermissionsList' (Maybe Text)
layQuotaUser
  = lens _layQuotaUser (\ s a -> s{_layQuotaUser = a})

-- | Returns response with indentations and line breaks.
layPrettyPrint :: Lens' LayersPermissionsList' Bool
layPrettyPrint
  = lens _layPrettyPrint
      (\ s a -> s{_layPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
layUserIp :: Lens' LayersPermissionsList' (Maybe Text)
layUserIp
  = lens _layUserIp (\ s a -> s{_layUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
layKey :: Lens' LayersPermissionsList' (Maybe Text)
layKey = lens _layKey (\ s a -> s{_layKey = a})

-- | The ID of the asset whose permissions will be listed.
layId :: Lens' LayersPermissionsList' Text
layId = lens _layId (\ s a -> s{_layId = a})

-- | OAuth 2.0 token for the current user.
layOauthToken :: Lens' LayersPermissionsList' (Maybe Text)
layOauthToken
  = lens _layOauthToken
      (\ s a -> s{_layOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
layFields :: Lens' LayersPermissionsList' (Maybe Text)
layFields
  = lens _layFields (\ s a -> s{_layFields = a})

-- | Data format for the response.
layAlt :: Lens' LayersPermissionsList' Alt
layAlt = lens _layAlt (\ s a -> s{_layAlt = a})

instance GoogleRequest LayersPermissionsList' where
        type Rs LayersPermissionsList' =
             PermissionsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u LayersPermissionsList'{..}
          = go _layQuotaUser (Just _layPrettyPrint) _layUserIp
              _layKey
              _layId
              _layOauthToken
              _layFields
              (Just _layAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LayersPermissionsListAPI)
                      r
                      u
