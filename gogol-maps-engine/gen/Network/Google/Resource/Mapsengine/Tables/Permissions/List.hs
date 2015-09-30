{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Tables.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all of the permissions for the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineTablesPermissionsList@.
module Mapsengine.Tables.Permissions.List
    (
    -- * REST Resource
      TablesPermissionsListAPI

    -- * Creating a Request
    , tablesPermissionsList
    , TablesPermissionsList

    -- * Request Lenses
    , tabQuotaUser
    , tabPrettyPrint
    , tabUserIp
    , tabKey
    , tabId
    , tabOauthToken
    , tabFields
    , tabAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineTablesPermissionsList@ which the
-- 'TablesPermissionsList' request conforms to.
type TablesPermissionsListAPI =
     "tables" :>
       Capture "id" Text :>
         "permissions" :> Get '[JSON] PermissionsListResponse

-- | Return all of the permissions for the specified asset.
--
-- /See:/ 'tablesPermissionsList' smart constructor.
data TablesPermissionsList = TablesPermissionsList
    { _tabQuotaUser   :: !(Maybe Text)
    , _tabPrettyPrint :: !Bool
    , _tabUserIp      :: !(Maybe Text)
    , _tabKey         :: !(Maybe Text)
    , _tabId          :: !Text
    , _tabOauthToken  :: !(Maybe Text)
    , _tabFields      :: !(Maybe Text)
    , _tabAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesPermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tabQuotaUser'
--
-- * 'tabPrettyPrint'
--
-- * 'tabUserIp'
--
-- * 'tabKey'
--
-- * 'tabId'
--
-- * 'tabOauthToken'
--
-- * 'tabFields'
--
-- * 'tabAlt'
tablesPermissionsList
    :: Text -- ^ 'id'
    -> TablesPermissionsList
tablesPermissionsList pTabId_ =
    TablesPermissionsList
    { _tabQuotaUser = Nothing
    , _tabPrettyPrint = True
    , _tabUserIp = Nothing
    , _tabKey = Nothing
    , _tabId = pTabId_
    , _tabOauthToken = Nothing
    , _tabFields = Nothing
    , _tabAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tabQuotaUser :: Lens' TablesPermissionsList' (Maybe Text)
tabQuotaUser
  = lens _tabQuotaUser (\ s a -> s{_tabQuotaUser = a})

-- | Returns response with indentations and line breaks.
tabPrettyPrint :: Lens' TablesPermissionsList' Bool
tabPrettyPrint
  = lens _tabPrettyPrint
      (\ s a -> s{_tabPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tabUserIp :: Lens' TablesPermissionsList' (Maybe Text)
tabUserIp
  = lens _tabUserIp (\ s a -> s{_tabUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tabKey :: Lens' TablesPermissionsList' (Maybe Text)
tabKey = lens _tabKey (\ s a -> s{_tabKey = a})

-- | The ID of the asset whose permissions will be listed.
tabId :: Lens' TablesPermissionsList' Text
tabId = lens _tabId (\ s a -> s{_tabId = a})

-- | OAuth 2.0 token for the current user.
tabOauthToken :: Lens' TablesPermissionsList' (Maybe Text)
tabOauthToken
  = lens _tabOauthToken
      (\ s a -> s{_tabOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tabFields :: Lens' TablesPermissionsList' (Maybe Text)
tabFields
  = lens _tabFields (\ s a -> s{_tabFields = a})

-- | Data format for the response.
tabAlt :: Lens' TablesPermissionsList' Text
tabAlt = lens _tabAlt (\ s a -> s{_tabAlt = a})

instance GoogleRequest TablesPermissionsList' where
        type Rs TablesPermissionsList' =
             PermissionsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u TablesPermissionsList{..}
          = go _tabQuotaUser _tabPrettyPrint _tabUserIp _tabKey
              _tabId
              _tabOauthToken
              _tabFields
              _tabAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesPermissionsListAPI)
                      r
                      u
