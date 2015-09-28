{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Mapsengine.Rasters.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all of the permissions for the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasters.permissions.list@.
module Network.Google.API.Mapsengine.Rasters.Permissions.List
    (
    -- * REST Resource
      RastersPermissionsListAPI

    -- * Creating a Request
    , rastersPermissionsList'
    , RastersPermissionsList'

    -- * Request Lenses
    , rplpQuotaUser
    , rplpPrettyPrint
    , rplpUserIp
    , rplpKey
    , rplpId
    , rplpOauthToken
    , rplpFields
    , rplpAlt
    ) where

import           Network.Google.Map.Engine.Types
import           Network.Google.Prelude

-- | A resource alias for mapsengine.rasters.permissions.list which the
-- 'RastersPermissionsList'' request conforms to.
type RastersPermissionsListAPI =
     "rasters" :>
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
-- /See:/ 'rastersPermissionsList'' smart constructor.
data RastersPermissionsList' = RastersPermissionsList'
    { _rplpQuotaUser   :: !(Maybe Text)
    , _rplpPrettyPrint :: !Bool
    , _rplpUserIp      :: !(Maybe Text)
    , _rplpKey         :: !(Maybe Text)
    , _rplpId          :: !Text
    , _rplpOauthToken  :: !(Maybe Text)
    , _rplpFields      :: !(Maybe Text)
    , _rplpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersPermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rplpQuotaUser'
--
-- * 'rplpPrettyPrint'
--
-- * 'rplpUserIp'
--
-- * 'rplpKey'
--
-- * 'rplpId'
--
-- * 'rplpOauthToken'
--
-- * 'rplpFields'
--
-- * 'rplpAlt'
rastersPermissionsList'
    :: Text -- ^ 'id'
    -> RastersPermissionsList'
rastersPermissionsList' pRplpId_ =
    RastersPermissionsList'
    { _rplpQuotaUser = Nothing
    , _rplpPrettyPrint = True
    , _rplpUserIp = Nothing
    , _rplpKey = Nothing
    , _rplpId = pRplpId_
    , _rplpOauthToken = Nothing
    , _rplpFields = Nothing
    , _rplpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rplpQuotaUser :: Lens' RastersPermissionsList' (Maybe Text)
rplpQuotaUser
  = lens _rplpQuotaUser
      (\ s a -> s{_rplpQuotaUser = a})

-- | Returns response with indentations and line breaks.
rplpPrettyPrint :: Lens' RastersPermissionsList' Bool
rplpPrettyPrint
  = lens _rplpPrettyPrint
      (\ s a -> s{_rplpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rplpUserIp :: Lens' RastersPermissionsList' (Maybe Text)
rplpUserIp
  = lens _rplpUserIp (\ s a -> s{_rplpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rplpKey :: Lens' RastersPermissionsList' (Maybe Text)
rplpKey = lens _rplpKey (\ s a -> s{_rplpKey = a})

-- | The ID of the asset whose permissions will be listed.
rplpId :: Lens' RastersPermissionsList' Text
rplpId = lens _rplpId (\ s a -> s{_rplpId = a})

-- | OAuth 2.0 token for the current user.
rplpOauthToken :: Lens' RastersPermissionsList' (Maybe Text)
rplpOauthToken
  = lens _rplpOauthToken
      (\ s a -> s{_rplpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rplpFields :: Lens' RastersPermissionsList' (Maybe Text)
rplpFields
  = lens _rplpFields (\ s a -> s{_rplpFields = a})

-- | Data format for the response.
rplpAlt :: Lens' RastersPermissionsList' Alt
rplpAlt = lens _rplpAlt (\ s a -> s{_rplpAlt = a})

instance GoogleRequest RastersPermissionsList' where
        type Rs RastersPermissionsList' =
             PermissionsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u RastersPermissionsList'{..}
          = go _rplpQuotaUser (Just _rplpPrettyPrint)
              _rplpUserIp
              _rplpKey
              _rplpId
              _rplpOauthToken
              _rplpFields
              (Just _rplpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RastersPermissionsListAPI)
                      r
                      u
