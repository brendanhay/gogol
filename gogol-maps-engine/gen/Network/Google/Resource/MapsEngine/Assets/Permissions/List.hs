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
-- Module      : Network.Google.Resource.MapsEngine.Assets.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all of the permissions for the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineAssetsPermissionsList@.
module Network.Google.Resource.MapsEngine.Assets.Permissions.List
    (
    -- * REST Resource
      AssetsPermissionsListResource

    -- * Creating a Request
    , assetsPermissionsList'
    , AssetsPermissionsList'

    -- * Request Lenses
    , aplQuotaUser
    , aplPrettyPrint
    , aplUserIP
    , aplKey
    , aplId
    , aplOAuthToken
    , aplFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineAssetsPermissionsList@ method which the
-- 'AssetsPermissionsList'' request conforms to.
type AssetsPermissionsListResource =
     "assets" :>
       Capture "id" Text :>
         "permissions" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] PermissionsListResponse

-- | Return all of the permissions for the specified asset.
--
-- /See:/ 'assetsPermissionsList'' smart constructor.
data AssetsPermissionsList' = AssetsPermissionsList'
    { _aplQuotaUser   :: !(Maybe Text)
    , _aplPrettyPrint :: !Bool
    , _aplUserIP      :: !(Maybe Text)
    , _aplKey         :: !(Maybe AuthKey)
    , _aplId          :: !Text
    , _aplOAuthToken  :: !(Maybe OAuthToken)
    , _aplFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AssetsPermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aplQuotaUser'
--
-- * 'aplPrettyPrint'
--
-- * 'aplUserIP'
--
-- * 'aplKey'
--
-- * 'aplId'
--
-- * 'aplOAuthToken'
--
-- * 'aplFields'
assetsPermissionsList'
    :: Text -- ^ 'id'
    -> AssetsPermissionsList'
assetsPermissionsList' pAplId_ =
    AssetsPermissionsList'
    { _aplQuotaUser = Nothing
    , _aplPrettyPrint = True
    , _aplUserIP = Nothing
    , _aplKey = Nothing
    , _aplId = pAplId_
    , _aplOAuthToken = Nothing
    , _aplFields = Nothing
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
aplUserIP :: Lens' AssetsPermissionsList' (Maybe Text)
aplUserIP
  = lens _aplUserIP (\ s a -> s{_aplUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aplKey :: Lens' AssetsPermissionsList' (Maybe AuthKey)
aplKey = lens _aplKey (\ s a -> s{_aplKey = a})

-- | The ID of the asset whose permissions will be listed.
aplId :: Lens' AssetsPermissionsList' Text
aplId = lens _aplId (\ s a -> s{_aplId = a})

-- | OAuth 2.0 token for the current user.
aplOAuthToken :: Lens' AssetsPermissionsList' (Maybe OAuthToken)
aplOAuthToken
  = lens _aplOAuthToken
      (\ s a -> s{_aplOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aplFields :: Lens' AssetsPermissionsList' (Maybe Text)
aplFields
  = lens _aplFields (\ s a -> s{_aplFields = a})

instance GoogleAuth AssetsPermissionsList' where
        _AuthKey = aplKey . _Just
        _AuthToken = aplOAuthToken . _Just

instance GoogleRequest AssetsPermissionsList' where
        type Rs AssetsPermissionsList' =
             PermissionsListResponse
        request = requestWith mapsEngineRequest
        requestWith rq AssetsPermissionsList'{..}
          = go _aplId _aplQuotaUser (Just _aplPrettyPrint)
              _aplUserIP
              _aplFields
              _aplKey
              _aplOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AssetsPermissionsListResource)
                      rq
