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
-- Module      : Network.Google.Resource.MapsEngine.Maps.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all of the permissions for the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineMapsPermissionsList@.
module Network.Google.Resource.MapsEngine.Maps.Permissions.List
    (
    -- * REST Resource
      MapsPermissionsListResource

    -- * Creating a Request
    , mapsPermissionsList'
    , MapsPermissionsList'

    -- * Request Lenses
    , mplQuotaUser
    , mplPrettyPrint
    , mplUserIP
    , mplKey
    , mplId
    , mplOAuthToken
    , mplFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineMapsPermissionsList@ which the
-- 'MapsPermissionsList'' request conforms to.
type MapsPermissionsListResource =
     "maps" :>
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
-- /See:/ 'mapsPermissionsList'' smart constructor.
data MapsPermissionsList' = MapsPermissionsList'
    { _mplQuotaUser   :: !(Maybe Text)
    , _mplPrettyPrint :: !Bool
    , _mplUserIP      :: !(Maybe Text)
    , _mplKey         :: !(Maybe AuthKey)
    , _mplId          :: !Text
    , _mplOAuthToken  :: !(Maybe OAuthToken)
    , _mplFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsPermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mplQuotaUser'
--
-- * 'mplPrettyPrint'
--
-- * 'mplUserIP'
--
-- * 'mplKey'
--
-- * 'mplId'
--
-- * 'mplOAuthToken'
--
-- * 'mplFields'
mapsPermissionsList'
    :: Text -- ^ 'id'
    -> MapsPermissionsList'
mapsPermissionsList' pMplId_ =
    MapsPermissionsList'
    { _mplQuotaUser = Nothing
    , _mplPrettyPrint = True
    , _mplUserIP = Nothing
    , _mplKey = Nothing
    , _mplId = pMplId_
    , _mplOAuthToken = Nothing
    , _mplFields = Nothing
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
mplUserIP :: Lens' MapsPermissionsList' (Maybe Text)
mplUserIP
  = lens _mplUserIP (\ s a -> s{_mplUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mplKey :: Lens' MapsPermissionsList' (Maybe AuthKey)
mplKey = lens _mplKey (\ s a -> s{_mplKey = a})

-- | The ID of the asset whose permissions will be listed.
mplId :: Lens' MapsPermissionsList' Text
mplId = lens _mplId (\ s a -> s{_mplId = a})

-- | OAuth 2.0 token for the current user.
mplOAuthToken :: Lens' MapsPermissionsList' (Maybe OAuthToken)
mplOAuthToken
  = lens _mplOAuthToken
      (\ s a -> s{_mplOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mplFields :: Lens' MapsPermissionsList' (Maybe Text)
mplFields
  = lens _mplFields (\ s a -> s{_mplFields = a})

instance GoogleAuth MapsPermissionsList' where
        _AuthKey = mplKey . _Just
        _AuthToken = mplOAuthToken . _Just

instance GoogleRequest MapsPermissionsList' where
        type Rs MapsPermissionsList' =
             PermissionsListResponse
        request = requestWith mapsEngineRequest
        requestWith rq MapsPermissionsList'{..}
          = go _mplId _mplQuotaUser (Just _mplPrettyPrint)
              _mplUserIP
              _mplFields
              _mplKey
              _mplOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy MapsPermissionsListResource)
                      rq
