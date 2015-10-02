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
-- Module      : Network.Google.Resource.MapsEngine.Tables.Permissions.BatchUpdate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add or update permission entries to an already existing asset. An asset
-- can hold up to 20 different permission entries. Each batchInsert request
-- is atomic.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineTablesPermissionsBatchUpdate@.
module Network.Google.Resource.MapsEngine.Tables.Permissions.BatchUpdate
    (
    -- * REST Resource
      TablesPermissionsBatchUpdateResource

    -- * Creating a Request
    , tablesPermissionsBatchUpdate'
    , TablesPermissionsBatchUpdate'

    -- * Request Lenses
    , tpbuPermissionsBatchUpdateRequest
    , tpbuQuotaUser
    , tpbuPrettyPrint
    , tpbuUserIP
    , tpbuKey
    , tpbuId
    , tpbuOAuthToken
    , tpbuFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineTablesPermissionsBatchUpdate@ which the
-- 'TablesPermissionsBatchUpdate'' request conforms to.
type TablesPermissionsBatchUpdateResource =
     "tables" :>
       Capture "id" Text :>
         "permissions" :>
           "batchUpdate" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] PermissionsBatchUpdateRequest :>
                             Post '[JSON] PermissionsBatchUpdateResponse

-- | Add or update permission entries to an already existing asset. An asset
-- can hold up to 20 different permission entries. Each batchInsert request
-- is atomic.
--
-- /See:/ 'tablesPermissionsBatchUpdate'' smart constructor.
data TablesPermissionsBatchUpdate' = TablesPermissionsBatchUpdate'
    { _tpbuPermissionsBatchUpdateRequest :: !PermissionsBatchUpdateRequest
    , _tpbuQuotaUser                     :: !(Maybe Text)
    , _tpbuPrettyPrint                   :: !Bool
    , _tpbuUserIP                        :: !(Maybe Text)
    , _tpbuKey                           :: !(Maybe Key)
    , _tpbuId                            :: !Text
    , _tpbuOAuthToken                    :: !(Maybe OAuthToken)
    , _tpbuFields                        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesPermissionsBatchUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpbuPermissionsBatchUpdateRequest'
--
-- * 'tpbuQuotaUser'
--
-- * 'tpbuPrettyPrint'
--
-- * 'tpbuUserIP'
--
-- * 'tpbuKey'
--
-- * 'tpbuId'
--
-- * 'tpbuOAuthToken'
--
-- * 'tpbuFields'
tablesPermissionsBatchUpdate'
    :: PermissionsBatchUpdateRequest -- ^ 'PermissionsBatchUpdateRequest'
    -> Text -- ^ 'id'
    -> TablesPermissionsBatchUpdate'
tablesPermissionsBatchUpdate' pTpbuPermissionsBatchUpdateRequest_ pTpbuId_ =
    TablesPermissionsBatchUpdate'
    { _tpbuPermissionsBatchUpdateRequest = pTpbuPermissionsBatchUpdateRequest_
    , _tpbuQuotaUser = Nothing
    , _tpbuPrettyPrint = True
    , _tpbuUserIP = Nothing
    , _tpbuKey = Nothing
    , _tpbuId = pTpbuId_
    , _tpbuOAuthToken = Nothing
    , _tpbuFields = Nothing
    }

-- | Multipart request metadata.
tpbuPermissionsBatchUpdateRequest :: Lens' TablesPermissionsBatchUpdate' PermissionsBatchUpdateRequest
tpbuPermissionsBatchUpdateRequest
  = lens _tpbuPermissionsBatchUpdateRequest
      (\ s a -> s{_tpbuPermissionsBatchUpdateRequest = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tpbuQuotaUser :: Lens' TablesPermissionsBatchUpdate' (Maybe Text)
tpbuQuotaUser
  = lens _tpbuQuotaUser
      (\ s a -> s{_tpbuQuotaUser = a})

-- | Returns response with indentations and line breaks.
tpbuPrettyPrint :: Lens' TablesPermissionsBatchUpdate' Bool
tpbuPrettyPrint
  = lens _tpbuPrettyPrint
      (\ s a -> s{_tpbuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tpbuUserIP :: Lens' TablesPermissionsBatchUpdate' (Maybe Text)
tpbuUserIP
  = lens _tpbuUserIP (\ s a -> s{_tpbuUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpbuKey :: Lens' TablesPermissionsBatchUpdate' (Maybe Key)
tpbuKey = lens _tpbuKey (\ s a -> s{_tpbuKey = a})

-- | The ID of the asset to which permissions will be added.
tpbuId :: Lens' TablesPermissionsBatchUpdate' Text
tpbuId = lens _tpbuId (\ s a -> s{_tpbuId = a})

-- | OAuth 2.0 token for the current user.
tpbuOAuthToken :: Lens' TablesPermissionsBatchUpdate' (Maybe OAuthToken)
tpbuOAuthToken
  = lens _tpbuOAuthToken
      (\ s a -> s{_tpbuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tpbuFields :: Lens' TablesPermissionsBatchUpdate' (Maybe Text)
tpbuFields
  = lens _tpbuFields (\ s a -> s{_tpbuFields = a})

instance GoogleAuth TablesPermissionsBatchUpdate'
         where
        authKey = tpbuKey . _Just
        authToken = tpbuOAuthToken . _Just

instance GoogleRequest TablesPermissionsBatchUpdate'
         where
        type Rs TablesPermissionsBatchUpdate' =
             PermissionsBatchUpdateResponse
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u
          TablesPermissionsBatchUpdate'{..}
          = go _tpbuId _tpbuQuotaUser (Just _tpbuPrettyPrint)
              _tpbuUserIP
              _tpbuFields
              _tpbuKey
              _tpbuOAuthToken
              (Just AltJSON)
              _tpbuPermissionsBatchUpdateRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesPermissionsBatchUpdateResource)
                      r
                      u
