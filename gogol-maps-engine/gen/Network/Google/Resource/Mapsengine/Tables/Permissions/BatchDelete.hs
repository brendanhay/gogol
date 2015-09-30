{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Tables.Permissions.BatchDelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Remove permission entries from an already existing asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineTablesPermissionsBatchDelete@.
module Mapsengine.Tables.Permissions.BatchDelete
    (
    -- * REST Resource
      TablesPermissionsBatchDeleteAPI

    -- * Creating a Request
    , tablesPermissionsBatchDelete
    , TablesPermissionsBatchDelete

    -- * Request Lenses
    , tpbdQuotaUser
    , tpbdPrettyPrint
    , tpbdUserIp
    , tpbdKey
    , tpbdId
    , tpbdOauthToken
    , tpbdFields
    , tpbdAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineTablesPermissionsBatchDelete@ which the
-- 'TablesPermissionsBatchDelete' request conforms to.
type TablesPermissionsBatchDeleteAPI =
     "tables" :>
       Capture "id" Text :>
         "permissions" :>
           "batchDelete" :>
             Post '[JSON] PermissionsBatchDeleteResponse

-- | Remove permission entries from an already existing asset.
--
-- /See:/ 'tablesPermissionsBatchDelete' smart constructor.
data TablesPermissionsBatchDelete = TablesPermissionsBatchDelete
    { _tpbdQuotaUser   :: !(Maybe Text)
    , _tpbdPrettyPrint :: !Bool
    , _tpbdUserIp      :: !(Maybe Text)
    , _tpbdKey         :: !(Maybe Text)
    , _tpbdId          :: !Text
    , _tpbdOauthToken  :: !(Maybe Text)
    , _tpbdFields      :: !(Maybe Text)
    , _tpbdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesPermissionsBatchDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpbdQuotaUser'
--
-- * 'tpbdPrettyPrint'
--
-- * 'tpbdUserIp'
--
-- * 'tpbdKey'
--
-- * 'tpbdId'
--
-- * 'tpbdOauthToken'
--
-- * 'tpbdFields'
--
-- * 'tpbdAlt'
tablesPermissionsBatchDelete
    :: Text -- ^ 'id'
    -> TablesPermissionsBatchDelete
tablesPermissionsBatchDelete pTpbdId_ =
    TablesPermissionsBatchDelete
    { _tpbdQuotaUser = Nothing
    , _tpbdPrettyPrint = True
    , _tpbdUserIp = Nothing
    , _tpbdKey = Nothing
    , _tpbdId = pTpbdId_
    , _tpbdOauthToken = Nothing
    , _tpbdFields = Nothing
    , _tpbdAlt = "json"
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
tpbdUserIp :: Lens' TablesPermissionsBatchDelete' (Maybe Text)
tpbdUserIp
  = lens _tpbdUserIp (\ s a -> s{_tpbdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpbdKey :: Lens' TablesPermissionsBatchDelete' (Maybe Text)
tpbdKey = lens _tpbdKey (\ s a -> s{_tpbdKey = a})

-- | The ID of the asset from which permissions will be removed.
tpbdId :: Lens' TablesPermissionsBatchDelete' Text
tpbdId = lens _tpbdId (\ s a -> s{_tpbdId = a})

-- | OAuth 2.0 token for the current user.
tpbdOauthToken :: Lens' TablesPermissionsBatchDelete' (Maybe Text)
tpbdOauthToken
  = lens _tpbdOauthToken
      (\ s a -> s{_tpbdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tpbdFields :: Lens' TablesPermissionsBatchDelete' (Maybe Text)
tpbdFields
  = lens _tpbdFields (\ s a -> s{_tpbdFields = a})

-- | Data format for the response.
tpbdAlt :: Lens' TablesPermissionsBatchDelete' Text
tpbdAlt = lens _tpbdAlt (\ s a -> s{_tpbdAlt = a})

instance GoogleRequest TablesPermissionsBatchDelete'
         where
        type Rs TablesPermissionsBatchDelete' =
             PermissionsBatchDeleteResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u TablesPermissionsBatchDelete{..}
          = go _tpbdQuotaUser _tpbdPrettyPrint _tpbdUserIp
              _tpbdKey
              _tpbdId
              _tpbdOauthToken
              _tpbdFields
              _tpbdAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesPermissionsBatchDeleteAPI)
                      r
                      u
