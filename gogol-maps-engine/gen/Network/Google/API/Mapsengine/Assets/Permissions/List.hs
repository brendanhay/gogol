{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Mapsengine.Assets.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all of the permissions for the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.assets.permissions.list@.
module Network.Google.API.Mapsengine.Assets.Permissions.List
    (
    -- * REST Resource
      AssetsPermissionsListAPI

    -- * Creating a Request
    , assetsPermissionsList'
    , AssetsPermissionsList'

    -- * Request Lenses
    , assQuotaUser
    , assPrettyPrint
    , assUserIp
    , assKey
    , assId
    , assOauthToken
    , assFields
    , assAlt
    ) where

import           Network.Google.Map.Engine.Types
import           Network.Google.Prelude

-- | A resource alias for mapsengine.assets.permissions.list which the
-- 'AssetsPermissionsList'' request conforms to.
type AssetsPermissionsListAPI =
     "assets" :>
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
-- /See:/ 'assetsPermissionsList'' smart constructor.
data AssetsPermissionsList' = AssetsPermissionsList'
    { _assQuotaUser   :: !(Maybe Text)
    , _assPrettyPrint :: !Bool
    , _assUserIp      :: !(Maybe Text)
    , _assKey         :: !(Maybe Text)
    , _assId          :: !Text
    , _assOauthToken  :: !(Maybe Text)
    , _assFields      :: !(Maybe Text)
    , _assAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AssetsPermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assQuotaUser'
--
-- * 'assPrettyPrint'
--
-- * 'assUserIp'
--
-- * 'assKey'
--
-- * 'assId'
--
-- * 'assOauthToken'
--
-- * 'assFields'
--
-- * 'assAlt'
assetsPermissionsList'
    :: Text -- ^ 'id'
    -> AssetsPermissionsList'
assetsPermissionsList' pAssId_ =
    AssetsPermissionsList'
    { _assQuotaUser = Nothing
    , _assPrettyPrint = True
    , _assUserIp = Nothing
    , _assKey = Nothing
    , _assId = pAssId_
    , _assOauthToken = Nothing
    , _assFields = Nothing
    , _assAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
assQuotaUser :: Lens' AssetsPermissionsList' (Maybe Text)
assQuotaUser
  = lens _assQuotaUser (\ s a -> s{_assQuotaUser = a})

-- | Returns response with indentations and line breaks.
assPrettyPrint :: Lens' AssetsPermissionsList' Bool
assPrettyPrint
  = lens _assPrettyPrint
      (\ s a -> s{_assPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
assUserIp :: Lens' AssetsPermissionsList' (Maybe Text)
assUserIp
  = lens _assUserIp (\ s a -> s{_assUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
assKey :: Lens' AssetsPermissionsList' (Maybe Text)
assKey = lens _assKey (\ s a -> s{_assKey = a})

-- | The ID of the asset whose permissions will be listed.
assId :: Lens' AssetsPermissionsList' Text
assId = lens _assId (\ s a -> s{_assId = a})

-- | OAuth 2.0 token for the current user.
assOauthToken :: Lens' AssetsPermissionsList' (Maybe Text)
assOauthToken
  = lens _assOauthToken
      (\ s a -> s{_assOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
assFields :: Lens' AssetsPermissionsList' (Maybe Text)
assFields
  = lens _assFields (\ s a -> s{_assFields = a})

-- | Data format for the response.
assAlt :: Lens' AssetsPermissionsList' Alt
assAlt = lens _assAlt (\ s a -> s{_assAlt = a})

instance GoogleRequest AssetsPermissionsList' where
        type Rs AssetsPermissionsList' =
             PermissionsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u AssetsPermissionsList'{..}
          = go _assQuotaUser (Just _assPrettyPrint) _assUserIp
              _assKey
              _assId
              _assOauthToken
              _assFields
              (Just _assAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AssetsPermissionsListAPI)
                      r
                      u
