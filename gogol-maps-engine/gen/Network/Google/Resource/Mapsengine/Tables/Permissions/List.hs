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
module Network.Google.Resource.Mapsengine.Tables.Permissions.List
    (
    -- * REST Resource
      TablesPermissionsListResource

    -- * Creating a Request
    , tablesPermissionsList'
    , TablesPermissionsList'

    -- * Request Lenses
    , tplQuotaUser
    , tplPrettyPrint
    , tplUserIp
    , tplKey
    , tplId
    , tplOauthToken
    , tplFields
    , tplAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineTablesPermissionsList@ which the
-- 'TablesPermissionsList'' request conforms to.
type TablesPermissionsListResource =
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
    { _tplQuotaUser   :: !(Maybe Text)
    , _tplPrettyPrint :: !Bool
    , _tplUserIp      :: !(Maybe Text)
    , _tplKey         :: !(Maybe Text)
    , _tplId          :: !Text
    , _tplOauthToken  :: !(Maybe Text)
    , _tplFields      :: !(Maybe Text)
    , _tplAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesPermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tplQuotaUser'
--
-- * 'tplPrettyPrint'
--
-- * 'tplUserIp'
--
-- * 'tplKey'
--
-- * 'tplId'
--
-- * 'tplOauthToken'
--
-- * 'tplFields'
--
-- * 'tplAlt'
tablesPermissionsList'
    :: Text -- ^ 'id'
    -> TablesPermissionsList'
tablesPermissionsList' pTplId_ =
    TablesPermissionsList'
    { _tplQuotaUser = Nothing
    , _tplPrettyPrint = True
    , _tplUserIp = Nothing
    , _tplKey = Nothing
    , _tplId = pTplId_
    , _tplOauthToken = Nothing
    , _tplFields = Nothing
    , _tplAlt = JSON
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
tplUserIp :: Lens' TablesPermissionsList' (Maybe Text)
tplUserIp
  = lens _tplUserIp (\ s a -> s{_tplUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tplKey :: Lens' TablesPermissionsList' (Maybe Text)
tplKey = lens _tplKey (\ s a -> s{_tplKey = a})

-- | The ID of the asset whose permissions will be listed.
tplId :: Lens' TablesPermissionsList' Text
tplId = lens _tplId (\ s a -> s{_tplId = a})

-- | OAuth 2.0 token for the current user.
tplOauthToken :: Lens' TablesPermissionsList' (Maybe Text)
tplOauthToken
  = lens _tplOauthToken
      (\ s a -> s{_tplOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tplFields :: Lens' TablesPermissionsList' (Maybe Text)
tplFields
  = lens _tplFields (\ s a -> s{_tplFields = a})

-- | Data format for the response.
tplAlt :: Lens' TablesPermissionsList' Alt
tplAlt = lens _tplAlt (\ s a -> s{_tplAlt = a})

instance GoogleRequest TablesPermissionsList' where
        type Rs TablesPermissionsList' =
             PermissionsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u TablesPermissionsList'{..}
          = go _tplQuotaUser (Just _tplPrettyPrint) _tplUserIp
              _tplKey
              _tplId
              _tplOauthToken
              _tplFields
              (Just _tplAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesPermissionsListResource)
                      r
                      u
