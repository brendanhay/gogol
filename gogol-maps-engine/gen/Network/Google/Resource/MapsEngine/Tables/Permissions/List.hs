{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.MapsEngine.Tables.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all of the permissions for the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineTablesPermissionsList@.
module Network.Google.Resource.MapsEngine.Tables.Permissions.List
    (
    -- * REST Resource
      TablesPermissionsListResource

    -- * Creating a Request
    , tablesPermissionsList'
    , TablesPermissionsList'

    -- * Request Lenses
    , tplQuotaUser
    , tplPrettyPrint
    , tplUserIP
    , tplKey
    , tplId
    , tplOAuthToken
    , tplFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineTablesPermissionsList@ which the
-- 'TablesPermissionsList'' request conforms to.
type TablesPermissionsListResource =
     "tables" :>
       Capture "id" Text :>
         "permissions" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] PermissionsListResponse

-- | Return all of the permissions for the specified asset.
--
-- /See:/ 'tablesPermissionsList'' smart constructor.
data TablesPermissionsList' = TablesPermissionsList'
    { _tplQuotaUser   :: !(Maybe Text)
    , _tplPrettyPrint :: !Bool
    , _tplUserIP      :: !(Maybe Text)
    , _tplKey         :: !(Maybe Key)
    , _tplId          :: !Text
    , _tplOAuthToken  :: !(Maybe OAuthToken)
    , _tplFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesPermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tplQuotaUser'
--
-- * 'tplPrettyPrint'
--
-- * 'tplUserIP'
--
-- * 'tplKey'
--
-- * 'tplId'
--
-- * 'tplOAuthToken'
--
-- * 'tplFields'
tablesPermissionsList'
    :: Text -- ^ 'id'
    -> TablesPermissionsList'
tablesPermissionsList' pTplId_ =
    TablesPermissionsList'
    { _tplQuotaUser = Nothing
    , _tplPrettyPrint = True
    , _tplUserIP = Nothing
    , _tplKey = Nothing
    , _tplId = pTplId_
    , _tplOAuthToken = Nothing
    , _tplFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tplQuotaUser :: Lens' TablesPermissionsList' (Maybe Text)
tplQuotaUser
  = lens _tplQuotaUser (\ s a -> s{_tplQuotaUser = a})

-- | Returns response with indentations and line breaks.
tplPrettyPrint :: Lens' TablesPermissionsList' Bool
tplPrettyPrint
  = lens _tplPrettyPrint
      (\ s a -> s{_tplPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tplUserIP :: Lens' TablesPermissionsList' (Maybe Text)
tplUserIP
  = lens _tplUserIP (\ s a -> s{_tplUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tplKey :: Lens' TablesPermissionsList' (Maybe Key)
tplKey = lens _tplKey (\ s a -> s{_tplKey = a})

-- | The ID of the asset whose permissions will be listed.
tplId :: Lens' TablesPermissionsList' Text
tplId = lens _tplId (\ s a -> s{_tplId = a})

-- | OAuth 2.0 token for the current user.
tplOAuthToken :: Lens' TablesPermissionsList' (Maybe OAuthToken)
tplOAuthToken
  = lens _tplOAuthToken
      (\ s a -> s{_tplOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tplFields :: Lens' TablesPermissionsList' (Maybe Text)
tplFields
  = lens _tplFields (\ s a -> s{_tplFields = a})

instance GoogleAuth TablesPermissionsList' where
        authKey = tplKey . _Just
        authToken = tplOAuthToken . _Just

instance GoogleRequest TablesPermissionsList' where
        type Rs TablesPermissionsList' =
             PermissionsListResponse
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u TablesPermissionsList'{..}
          = go _tplId _tplQuotaUser (Just _tplPrettyPrint)
              _tplUserIP
              _tplFields
              _tplKey
              _tplOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesPermissionsListResource)
                      r
                      u
