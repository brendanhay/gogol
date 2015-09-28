{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Mapsengine.Maps.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all of the permissions for the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.maps.permissions.list@.
module Network.Google.API.Mapsengine.Maps.Permissions.List
    (
    -- * REST Resource
      MapsPermissionsListAPI

    -- * Creating a Request
    , mapsPermissionsList'
    , MapsPermissionsList'

    -- * Request Lenses
    , mplQuotaUser
    , mplPrettyPrint
    , mplUserIp
    , mplKey
    , mplId
    , mplOauthToken
    , mplFields
    , mplAlt
    ) where

import           Network.Google.Map.Engine.Types
import           Network.Google.Prelude

-- | A resource alias for mapsengine.maps.permissions.list which the
-- 'MapsPermissionsList'' request conforms to.
type MapsPermissionsListAPI =
     "maps" :>
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
-- /See:/ 'mapsPermissionsList'' smart constructor.
data MapsPermissionsList' = MapsPermissionsList'
    { _mplQuotaUser   :: !(Maybe Text)
    , _mplPrettyPrint :: !Bool
    , _mplUserIp      :: !(Maybe Text)
    , _mplKey         :: !(Maybe Text)
    , _mplId          :: !Text
    , _mplOauthToken  :: !(Maybe Text)
    , _mplFields      :: !(Maybe Text)
    , _mplAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsPermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mplQuotaUser'
--
-- * 'mplPrettyPrint'
--
-- * 'mplUserIp'
--
-- * 'mplKey'
--
-- * 'mplId'
--
-- * 'mplOauthToken'
--
-- * 'mplFields'
--
-- * 'mplAlt'
mapsPermissionsList'
    :: Text -- ^ 'id'
    -> MapsPermissionsList'
mapsPermissionsList' pMplId_ =
    MapsPermissionsList'
    { _mplQuotaUser = Nothing
    , _mplPrettyPrint = True
    , _mplUserIp = Nothing
    , _mplKey = Nothing
    , _mplId = pMplId_
    , _mplOauthToken = Nothing
    , _mplFields = Nothing
    , _mplAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mplQuotaUser :: Lens' MapsPermissionsList' (Maybe Text)
mplQuotaUser
  = lens _mplQuotaUser (\ s a -> s{_mplQuotaUser = a})

-- | Returns response with indentations and line breaks.
mplPrettyPrint :: Lens' MapsPermissionsList' Bool
mplPrettyPrint
  = lens _mplPrettyPrint
      (\ s a -> s{_mplPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mplUserIp :: Lens' MapsPermissionsList' (Maybe Text)
mplUserIp
  = lens _mplUserIp (\ s a -> s{_mplUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mplKey :: Lens' MapsPermissionsList' (Maybe Text)
mplKey = lens _mplKey (\ s a -> s{_mplKey = a})

-- | The ID of the asset whose permissions will be listed.
mplId :: Lens' MapsPermissionsList' Text
mplId = lens _mplId (\ s a -> s{_mplId = a})

-- | OAuth 2.0 token for the current user.
mplOauthToken :: Lens' MapsPermissionsList' (Maybe Text)
mplOauthToken
  = lens _mplOauthToken
      (\ s a -> s{_mplOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mplFields :: Lens' MapsPermissionsList' (Maybe Text)
mplFields
  = lens _mplFields (\ s a -> s{_mplFields = a})

-- | Data format for the response.
mplAlt :: Lens' MapsPermissionsList' Alt
mplAlt = lens _mplAlt (\ s a -> s{_mplAlt = a})

instance GoogleRequest MapsPermissionsList' where
        type Rs MapsPermissionsList' =
             PermissionsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u MapsPermissionsList'{..}
          = go _mplQuotaUser (Just _mplPrettyPrint) _mplUserIp
              _mplKey
              _mplId
              _mplOauthToken
              _mplFields
              (Just _mplAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MapsPermissionsListAPI)
                      r
                      u
