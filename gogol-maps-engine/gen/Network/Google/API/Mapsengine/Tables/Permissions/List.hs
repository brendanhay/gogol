{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Mapsengine.Tables.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all of the permissions for the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.tables.permissions.list@.
module Network.Google.API.Mapsengine.Tables.Permissions.List
    (
    -- * REST Resource
      TablesPermissionsListAPI

    -- * Creating a Request
    , tablesPermissionsList'
    , TablesPermissionsList'

    -- * Request Lenses
    , tQuotaUser
    , tPrettyPrint
    , tUserIp
    , tKey
    , tId
    , tOauthToken
    , tFields
    , tAlt
    ) where

import           Network.Google.Map.Engine.Types
import           Network.Google.Prelude

-- | A resource alias for mapsengine.tables.permissions.list which the
-- 'TablesPermissionsList'' request conforms to.
type TablesPermissionsListAPI =
     "tables" :>
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
-- /See:/ 'tablesPermissionsList'' smart constructor.
data TablesPermissionsList' = TablesPermissionsList'
    { _tQuotaUser   :: !(Maybe Text)
    , _tPrettyPrint :: !Bool
    , _tUserIp      :: !(Maybe Text)
    , _tKey         :: !(Maybe Text)
    , _tId          :: !Text
    , _tOauthToken  :: !(Maybe Text)
    , _tFields      :: !(Maybe Text)
    , _tAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesPermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tQuotaUser'
--
-- * 'tPrettyPrint'
--
-- * 'tUserIp'
--
-- * 'tKey'
--
-- * 'tId'
--
-- * 'tOauthToken'
--
-- * 'tFields'
--
-- * 'tAlt'
tablesPermissionsList'
    :: Text -- ^ 'id'
    -> TablesPermissionsList'
tablesPermissionsList' pTId_ =
    TablesPermissionsList'
    { _tQuotaUser = Nothing
    , _tPrettyPrint = True
    , _tUserIp = Nothing
    , _tKey = Nothing
    , _tId = pTId_
    , _tOauthToken = Nothing
    , _tFields = Nothing
    , _tAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tQuotaUser :: Lens' TablesPermissionsList' (Maybe Text)
tQuotaUser
  = lens _tQuotaUser (\ s a -> s{_tQuotaUser = a})

-- | Returns response with indentations and line breaks.
tPrettyPrint :: Lens' TablesPermissionsList' Bool
tPrettyPrint
  = lens _tPrettyPrint (\ s a -> s{_tPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tUserIp :: Lens' TablesPermissionsList' (Maybe Text)
tUserIp = lens _tUserIp (\ s a -> s{_tUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tKey :: Lens' TablesPermissionsList' (Maybe Text)
tKey = lens _tKey (\ s a -> s{_tKey = a})

-- | The ID of the asset whose permissions will be listed.
tId :: Lens' TablesPermissionsList' Text
tId = lens _tId (\ s a -> s{_tId = a})

-- | OAuth 2.0 token for the current user.
tOauthToken :: Lens' TablesPermissionsList' (Maybe Text)
tOauthToken
  = lens _tOauthToken (\ s a -> s{_tOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tFields :: Lens' TablesPermissionsList' (Maybe Text)
tFields = lens _tFields (\ s a -> s{_tFields = a})

-- | Data format for the response.
tAlt :: Lens' TablesPermissionsList' Alt
tAlt = lens _tAlt (\ s a -> s{_tAlt = a})

instance GoogleRequest TablesPermissionsList' where
        type Rs TablesPermissionsList' =
             PermissionsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u TablesPermissionsList'{..}
          = go _tQuotaUser (Just _tPrettyPrint) _tUserIp _tKey
              _tId
              _tOauthToken
              _tFields
              (Just _tAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesPermissionsListAPI)
                      r
                      u
