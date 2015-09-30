{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Tables.Permissions.BatchUpdate
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
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineTablesPermissionsBatchUpdate@.
module Mapsengine.Tables.Permissions.BatchUpdate
    (
    -- * REST Resource
      TablesPermissionsBatchUpdateAPI

    -- * Creating a Request
    , tablesPermissionsBatchUpdate
    , TablesPermissionsBatchUpdate

    -- * Request Lenses
    , tpbuQuotaUser
    , tpbuPrettyPrint
    , tpbuUserIp
    , tpbuKey
    , tpbuId
    , tpbuOauthToken
    , tpbuFields
    , tpbuAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineTablesPermissionsBatchUpdate@ which the
-- 'TablesPermissionsBatchUpdate' request conforms to.
type TablesPermissionsBatchUpdateAPI =
     "tables" :>
       Capture "id" Text :>
         "permissions" :>
           "batchUpdate" :>
             Post '[JSON] PermissionsBatchUpdateResponse

-- | Add or update permission entries to an already existing asset. An asset
-- can hold up to 20 different permission entries. Each batchInsert request
-- is atomic.
--
-- /See:/ 'tablesPermissionsBatchUpdate' smart constructor.
data TablesPermissionsBatchUpdate = TablesPermissionsBatchUpdate
    { _tpbuQuotaUser   :: !(Maybe Text)
    , _tpbuPrettyPrint :: !Bool
    , _tpbuUserIp      :: !(Maybe Text)
    , _tpbuKey         :: !(Maybe Text)
    , _tpbuId          :: !Text
    , _tpbuOauthToken  :: !(Maybe Text)
    , _tpbuFields      :: !(Maybe Text)
    , _tpbuAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesPermissionsBatchUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpbuQuotaUser'
--
-- * 'tpbuPrettyPrint'
--
-- * 'tpbuUserIp'
--
-- * 'tpbuKey'
--
-- * 'tpbuId'
--
-- * 'tpbuOauthToken'
--
-- * 'tpbuFields'
--
-- * 'tpbuAlt'
tablesPermissionsBatchUpdate
    :: Text -- ^ 'id'
    -> TablesPermissionsBatchUpdate
tablesPermissionsBatchUpdate pTpbuId_ =
    TablesPermissionsBatchUpdate
    { _tpbuQuotaUser = Nothing
    , _tpbuPrettyPrint = True
    , _tpbuUserIp = Nothing
    , _tpbuKey = Nothing
    , _tpbuId = pTpbuId_
    , _tpbuOauthToken = Nothing
    , _tpbuFields = Nothing
    , _tpbuAlt = "json"
    }

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
tpbuUserIp :: Lens' TablesPermissionsBatchUpdate' (Maybe Text)
tpbuUserIp
  = lens _tpbuUserIp (\ s a -> s{_tpbuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpbuKey :: Lens' TablesPermissionsBatchUpdate' (Maybe Text)
tpbuKey = lens _tpbuKey (\ s a -> s{_tpbuKey = a})

-- | The ID of the asset to which permissions will be added.
tpbuId :: Lens' TablesPermissionsBatchUpdate' Text
tpbuId = lens _tpbuId (\ s a -> s{_tpbuId = a})

-- | OAuth 2.0 token for the current user.
tpbuOauthToken :: Lens' TablesPermissionsBatchUpdate' (Maybe Text)
tpbuOauthToken
  = lens _tpbuOauthToken
      (\ s a -> s{_tpbuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tpbuFields :: Lens' TablesPermissionsBatchUpdate' (Maybe Text)
tpbuFields
  = lens _tpbuFields (\ s a -> s{_tpbuFields = a})

-- | Data format for the response.
tpbuAlt :: Lens' TablesPermissionsBatchUpdate' Text
tpbuAlt = lens _tpbuAlt (\ s a -> s{_tpbuAlt = a})

instance GoogleRequest TablesPermissionsBatchUpdate'
         where
        type Rs TablesPermissionsBatchUpdate' =
             PermissionsBatchUpdateResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u TablesPermissionsBatchUpdate{..}
          = go _tpbuQuotaUser _tpbuPrettyPrint _tpbuUserIp
              _tpbuKey
              _tpbuId
              _tpbuOauthToken
              _tpbuFields
              _tpbuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesPermissionsBatchUpdateAPI)
                      r
                      u
