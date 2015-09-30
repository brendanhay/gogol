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
-- Module      : Network.Google.Resource.Mapsengine.Assets.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all of the permissions for the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineAssetsPermissionsList@.
module Network.Google.Resource.Mapsengine.Assets.Permissions.List
    (
    -- * REST Resource
      AssetsPermissionsListResource

    -- * Creating a Request
    , assetsPermissionsList'
    , AssetsPermissionsList'

    -- * Request Lenses
    , aplQuotaUser
    , aplPrettyPrint
    , aplUserIp
    , aplKey
    , aplId
    , aplOauthToken
    , aplFields
    , aplAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineAssetsPermissionsList@ which the
-- 'AssetsPermissionsList'' request conforms to.
type AssetsPermissionsListResource =
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
    { _aplQuotaUser   :: !(Maybe Text)
    , _aplPrettyPrint :: !Bool
    , _aplUserIp      :: !(Maybe Text)
    , _aplKey         :: !(Maybe Text)
    , _aplId          :: !Text
    , _aplOauthToken  :: !(Maybe Text)
    , _aplFields      :: !(Maybe Text)
    , _aplAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AssetsPermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aplQuotaUser'
--
-- * 'aplPrettyPrint'
--
-- * 'aplUserIp'
--
-- * 'aplKey'
--
-- * 'aplId'
--
-- * 'aplOauthToken'
--
-- * 'aplFields'
--
-- * 'aplAlt'
assetsPermissionsList'
    :: Text -- ^ 'id'
    -> AssetsPermissionsList'
assetsPermissionsList' pAplId_ =
    AssetsPermissionsList'
    { _aplQuotaUser = Nothing
    , _aplPrettyPrint = True
    , _aplUserIp = Nothing
    , _aplKey = Nothing
    , _aplId = pAplId_
    , _aplOauthToken = Nothing
    , _aplFields = Nothing
    , _aplAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aplQuotaUser :: Lens' AssetsPermissionsList' (Maybe Text)
aplQuotaUser
  = lens _aplQuotaUser (\ s a -> s{_aplQuotaUser = a})

-- | Returns response with indentations and line breaks.
aplPrettyPrint :: Lens' AssetsPermissionsList' Bool
aplPrettyPrint
  = lens _aplPrettyPrint
      (\ s a -> s{_aplPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aplUserIp :: Lens' AssetsPermissionsList' (Maybe Text)
aplUserIp
  = lens _aplUserIp (\ s a -> s{_aplUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aplKey :: Lens' AssetsPermissionsList' (Maybe Text)
aplKey = lens _aplKey (\ s a -> s{_aplKey = a})

-- | The ID of the asset whose permissions will be listed.
aplId :: Lens' AssetsPermissionsList' Text
aplId = lens _aplId (\ s a -> s{_aplId = a})

-- | OAuth 2.0 token for the current user.
aplOauthToken :: Lens' AssetsPermissionsList' (Maybe Text)
aplOauthToken
  = lens _aplOauthToken
      (\ s a -> s{_aplOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aplFields :: Lens' AssetsPermissionsList' (Maybe Text)
aplFields
  = lens _aplFields (\ s a -> s{_aplFields = a})

-- | Data format for the response.
aplAlt :: Lens' AssetsPermissionsList' Alt
aplAlt = lens _aplAlt (\ s a -> s{_aplAlt = a})

instance GoogleRequest AssetsPermissionsList' where
        type Rs AssetsPermissionsList' =
             PermissionsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u AssetsPermissionsList'{..}
          = go _aplQuotaUser (Just _aplPrettyPrint) _aplUserIp
              _aplKey
              _aplId
              _aplOauthToken
              _aplFields
              (Just _aplAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AssetsPermissionsListResource)
                      r
                      u
