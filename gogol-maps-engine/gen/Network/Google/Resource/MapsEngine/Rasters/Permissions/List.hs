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
-- Module      : Network.Google.Resource.MapsEngine.Rasters.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all of the permissions for the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRastersPermissionsList@.
module Network.Google.Resource.MapsEngine.Rasters.Permissions.List
    (
    -- * REST Resource
      RastersPermissionsListResource

    -- * Creating a Request
    , rastersPermissionsList'
    , RastersPermissionsList'

    -- * Request Lenses
    , rplQuotaUser
    , rplPrettyPrint
    , rplUserIP
    , rplKey
    , rplId
    , rplOAuthToken
    , rplFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRastersPermissionsList@ which the
-- 'RastersPermissionsList'' request conforms to.
type RastersPermissionsListResource =
     "rasters" :>
       Capture "id" Text :>
         "permissions" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] PermissionsListResponse

-- | Return all of the permissions for the specified asset.
--
-- /See:/ 'rastersPermissionsList'' smart constructor.
data RastersPermissionsList' = RastersPermissionsList'
    { _rplQuotaUser   :: !(Maybe Text)
    , _rplPrettyPrint :: !Bool
    , _rplUserIP      :: !(Maybe Text)
    , _rplKey         :: !(Maybe AuthKey)
    , _rplId          :: !Text
    , _rplOAuthToken  :: !(Maybe OAuthToken)
    , _rplFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersPermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rplQuotaUser'
--
-- * 'rplPrettyPrint'
--
-- * 'rplUserIP'
--
-- * 'rplKey'
--
-- * 'rplId'
--
-- * 'rplOAuthToken'
--
-- * 'rplFields'
rastersPermissionsList'
    :: Text -- ^ 'id'
    -> RastersPermissionsList'
rastersPermissionsList' pRplId_ =
    RastersPermissionsList'
    { _rplQuotaUser = Nothing
    , _rplPrettyPrint = True
    , _rplUserIP = Nothing
    , _rplKey = Nothing
    , _rplId = pRplId_
    , _rplOAuthToken = Nothing
    , _rplFields = Nothing
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
rplUserIP :: Lens' RastersPermissionsList' (Maybe Text)
rplUserIP
  = lens _rplUserIP (\ s a -> s{_rplUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rplKey :: Lens' RastersPermissionsList' (Maybe AuthKey)
rplKey = lens _rplKey (\ s a -> s{_rplKey = a})

-- | The ID of the asset whose permissions will be listed.
rplId :: Lens' RastersPermissionsList' Text
rplId = lens _rplId (\ s a -> s{_rplId = a})

-- | OAuth 2.0 token for the current user.
rplOAuthToken :: Lens' RastersPermissionsList' (Maybe OAuthToken)
rplOAuthToken
  = lens _rplOAuthToken
      (\ s a -> s{_rplOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rplFields :: Lens' RastersPermissionsList' (Maybe Text)
rplFields
  = lens _rplFields (\ s a -> s{_rplFields = a})

instance GoogleAuth RastersPermissionsList' where
        authKey = rplKey . _Just
        authToken = rplOAuthToken . _Just

instance GoogleRequest RastersPermissionsList' where
        type Rs RastersPermissionsList' =
             PermissionsListResponse
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u RastersPermissionsList'{..}
          = go _rplId _rplQuotaUser (Just _rplPrettyPrint)
              _rplUserIP
              _rplFields
              _rplKey
              _rplOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RastersPermissionsListResource)
                      r
                      u
