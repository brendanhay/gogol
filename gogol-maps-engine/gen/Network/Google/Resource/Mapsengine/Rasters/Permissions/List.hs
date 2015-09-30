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
-- Module      : Network.Google.Resource.Mapsengine.Rasters.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all of the permissions for the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineRastersPermissionsList@.
module Network.Google.Resource.Mapsengine.Rasters.Permissions.List
    (
    -- * REST Resource
      RastersPermissionsListResource

    -- * Creating a Request
    , rastersPermissionsList'
    , RastersPermissionsList'

    -- * Request Lenses
    , rplQuotaUser
    , rplPrettyPrint
    , rplUserIp
    , rplKey
    , rplId
    , rplOauthToken
    , rplFields
    , rplAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineRastersPermissionsList@ which the
-- 'RastersPermissionsList'' request conforms to.
type RastersPermissionsListResource =
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
    { _rplQuotaUser   :: !(Maybe Text)
    , _rplPrettyPrint :: !Bool
    , _rplUserIp      :: !(Maybe Text)
    , _rplKey         :: !(Maybe Text)
    , _rplId          :: !Text
    , _rplOauthToken  :: !(Maybe Text)
    , _rplFields      :: !(Maybe Text)
    , _rplAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersPermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rplQuotaUser'
--
-- * 'rplPrettyPrint'
--
-- * 'rplUserIp'
--
-- * 'rplKey'
--
-- * 'rplId'
--
-- * 'rplOauthToken'
--
-- * 'rplFields'
--
-- * 'rplAlt'
rastersPermissionsList'
    :: Text -- ^ 'id'
    -> RastersPermissionsList'
rastersPermissionsList' pRplId_ =
    RastersPermissionsList'
    { _rplQuotaUser = Nothing
    , _rplPrettyPrint = True
    , _rplUserIp = Nothing
    , _rplKey = Nothing
    , _rplId = pRplId_
    , _rplOauthToken = Nothing
    , _rplFields = Nothing
    , _rplAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rplQuotaUser :: Lens' RastersPermissionsList' (Maybe Text)
rplQuotaUser
  = lens _rplQuotaUser (\ s a -> s{_rplQuotaUser = a})

-- | Returns response with indentations and line breaks.
rplPrettyPrint :: Lens' RastersPermissionsList' Bool
rplPrettyPrint
  = lens _rplPrettyPrint
      (\ s a -> s{_rplPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rplUserIp :: Lens' RastersPermissionsList' (Maybe Text)
rplUserIp
  = lens _rplUserIp (\ s a -> s{_rplUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rplKey :: Lens' RastersPermissionsList' (Maybe Text)
rplKey = lens _rplKey (\ s a -> s{_rplKey = a})

-- | The ID of the asset whose permissions will be listed.
rplId :: Lens' RastersPermissionsList' Text
rplId = lens _rplId (\ s a -> s{_rplId = a})

-- | OAuth 2.0 token for the current user.
rplOauthToken :: Lens' RastersPermissionsList' (Maybe Text)
rplOauthToken
  = lens _rplOauthToken
      (\ s a -> s{_rplOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rplFields :: Lens' RastersPermissionsList' (Maybe Text)
rplFields
  = lens _rplFields (\ s a -> s{_rplFields = a})

-- | Data format for the response.
rplAlt :: Lens' RastersPermissionsList' Alt
rplAlt = lens _rplAlt (\ s a -> s{_rplAlt = a})

instance GoogleRequest RastersPermissionsList' where
        type Rs RastersPermissionsList' =
             PermissionsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u RastersPermissionsList'{..}
          = go _rplQuotaUser (Just _rplPrettyPrint) _rplUserIp
              _rplKey
              _rplId
              _rplOauthToken
              _rplFields
              (Just _rplAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RastersPermissionsListResource)
                      r
                      u
