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
-- Module      : Network.Google.Resource.MapsEngine.Tables.Permissions.BatchDelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Remove permission entries from an already existing asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineTablesPermissionsBatchDelete@.
module Network.Google.Resource.MapsEngine.Tables.Permissions.BatchDelete
    (
    -- * REST Resource
      TablesPermissionsBatchDeleteResource

    -- * Creating a Request
    , tablesPermissionsBatchDelete'
    , TablesPermissionsBatchDelete'

    -- * Request Lenses
    , tpbdQuotaUser
    , tpbdPrettyPrint
    , tpbdUserIP
    , tpbdPayload
    , tpbdKey
    , tpbdId
    , tpbdOAuthToken
    , tpbdFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineTablesPermissionsBatchDelete@ which the
-- 'TablesPermissionsBatchDelete'' request conforms to.
type TablesPermissionsBatchDeleteResource =
     "tables" :>
       Capture "id" Text :>
         "permissions" :>
           "batchDelete" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] PermissionsBatchDeleteRequest :>
                             Post '[JSON] PermissionsBatchDeleteResponse

-- | Remove permission entries from an already existing asset.
--
-- /See:/ 'tablesPermissionsBatchDelete'' smart constructor.
data TablesPermissionsBatchDelete' = TablesPermissionsBatchDelete'
    { _tpbdQuotaUser   :: !(Maybe Text)
    , _tpbdPrettyPrint :: !Bool
    , _tpbdUserIP      :: !(Maybe Text)
    , _tpbdPayload     :: !PermissionsBatchDeleteRequest
    , _tpbdKey         :: !(Maybe AuthKey)
    , _tpbdId          :: !Text
    , _tpbdOAuthToken  :: !(Maybe OAuthToken)
    , _tpbdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesPermissionsBatchDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpbdQuotaUser'
--
-- * 'tpbdPrettyPrint'
--
-- * 'tpbdUserIP'
--
-- * 'tpbdPayload'
--
-- * 'tpbdKey'
--
-- * 'tpbdId'
--
-- * 'tpbdOAuthToken'
--
-- * 'tpbdFields'
tablesPermissionsBatchDelete'
    :: PermissionsBatchDeleteRequest -- ^ 'payload'
    -> Text -- ^ 'id'
    -> TablesPermissionsBatchDelete'
tablesPermissionsBatchDelete' pTpbdPayload_ pTpbdId_ =
    TablesPermissionsBatchDelete'
    { _tpbdQuotaUser = Nothing
    , _tpbdPrettyPrint = True
    , _tpbdUserIP = Nothing
    , _tpbdPayload = pTpbdPayload_
    , _tpbdKey = Nothing
    , _tpbdId = pTpbdId_
    , _tpbdOAuthToken = Nothing
    , _tpbdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tpbdQuotaUser :: Lens' TablesPermissionsBatchDelete' (Maybe Text)
tpbdQuotaUser
  = lens _tpbdQuotaUser
      (\ s a -> s{_tpbdQuotaUser = a})

-- | Returns response with indentations and line breaks.
tpbdPrettyPrint :: Lens' TablesPermissionsBatchDelete' Bool
tpbdPrettyPrint
  = lens _tpbdPrettyPrint
      (\ s a -> s{_tpbdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tpbdUserIP :: Lens' TablesPermissionsBatchDelete' (Maybe Text)
tpbdUserIP
  = lens _tpbdUserIP (\ s a -> s{_tpbdUserIP = a})

-- | Multipart request metadata.
tpbdPayload :: Lens' TablesPermissionsBatchDelete' PermissionsBatchDeleteRequest
tpbdPayload
  = lens _tpbdPayload (\ s a -> s{_tpbdPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpbdKey :: Lens' TablesPermissionsBatchDelete' (Maybe AuthKey)
tpbdKey = lens _tpbdKey (\ s a -> s{_tpbdKey = a})

-- | The ID of the asset from which permissions will be removed.
tpbdId :: Lens' TablesPermissionsBatchDelete' Text
tpbdId = lens _tpbdId (\ s a -> s{_tpbdId = a})

-- | OAuth 2.0 token for the current user.
tpbdOAuthToken :: Lens' TablesPermissionsBatchDelete' (Maybe OAuthToken)
tpbdOAuthToken
  = lens _tpbdOAuthToken
      (\ s a -> s{_tpbdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tpbdFields :: Lens' TablesPermissionsBatchDelete' (Maybe Text)
tpbdFields
  = lens _tpbdFields (\ s a -> s{_tpbdFields = a})

instance GoogleAuth TablesPermissionsBatchDelete'
         where
        authKey = tpbdKey . _Just
        authToken = tpbdOAuthToken . _Just

instance GoogleRequest TablesPermissionsBatchDelete'
         where
        type Rs TablesPermissionsBatchDelete' =
             PermissionsBatchDeleteResponse
        request = requestWith mapsEngineRequest
        requestWith rq TablesPermissionsBatchDelete'{..}
          = go _tpbdId _tpbdQuotaUser (Just _tpbdPrettyPrint)
              _tpbdUserIP
              _tpbdFields
              _tpbdKey
              _tpbdOAuthToken
              (Just AltJSON)
              _tpbdPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy TablesPermissionsBatchDeleteResource)
                      rq
