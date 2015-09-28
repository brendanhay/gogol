{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Mapsengine.RasterCollections.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all of the permissions for the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasterCollections.permissions.list@.
module Network.Google.API.Mapsengine.RasterCollections.Permissions.List
    (
    -- * REST Resource
      RasterCollectionsPermissionsListAPI

    -- * Creating a Request
    , rasterCollectionsPermissionsList'
    , RasterCollectionsPermissionsList'

    -- * Request Lenses
    , rcplQuotaUser
    , rcplPrettyPrint
    , rcplUserIp
    , rcplKey
    , rcplId
    , rcplOauthToken
    , rcplFields
    , rcplAlt
    ) where

import           Network.Google.Map.Engine.Types
import           Network.Google.Prelude

-- | A resource alias for mapsengine.rasterCollections.permissions.list which the
-- 'RasterCollectionsPermissionsList'' request conforms to.
type RasterCollectionsPermissionsListAPI =
     "rasterCollections" :>
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
-- /See:/ 'rasterCollectionsPermissionsList'' smart constructor.
data RasterCollectionsPermissionsList' = RasterCollectionsPermissionsList'
    { _rcplQuotaUser   :: !(Maybe Text)
    , _rcplPrettyPrint :: !Bool
    , _rcplUserIp      :: !(Maybe Text)
    , _rcplKey         :: !(Maybe Text)
    , _rcplId          :: !Text
    , _rcplOauthToken  :: !(Maybe Text)
    , _rcplFields      :: !(Maybe Text)
    , _rcplAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsPermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcplQuotaUser'
--
-- * 'rcplPrettyPrint'
--
-- * 'rcplUserIp'
--
-- * 'rcplKey'
--
-- * 'rcplId'
--
-- * 'rcplOauthToken'
--
-- * 'rcplFields'
--
-- * 'rcplAlt'
rasterCollectionsPermissionsList'
    :: Text -- ^ 'id'
    -> RasterCollectionsPermissionsList'
rasterCollectionsPermissionsList' pRcplId_ =
    RasterCollectionsPermissionsList'
    { _rcplQuotaUser = Nothing
    , _rcplPrettyPrint = True
    , _rcplUserIp = Nothing
    , _rcplKey = Nothing
    , _rcplId = pRcplId_
    , _rcplOauthToken = Nothing
    , _rcplFields = Nothing
    , _rcplAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rcplQuotaUser :: Lens' RasterCollectionsPermissionsList' (Maybe Text)
rcplQuotaUser
  = lens _rcplQuotaUser
      (\ s a -> s{_rcplQuotaUser = a})

-- | Returns response with indentations and line breaks.
rcplPrettyPrint :: Lens' RasterCollectionsPermissionsList' Bool
rcplPrettyPrint
  = lens _rcplPrettyPrint
      (\ s a -> s{_rcplPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rcplUserIp :: Lens' RasterCollectionsPermissionsList' (Maybe Text)
rcplUserIp
  = lens _rcplUserIp (\ s a -> s{_rcplUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcplKey :: Lens' RasterCollectionsPermissionsList' (Maybe Text)
rcplKey = lens _rcplKey (\ s a -> s{_rcplKey = a})

-- | The ID of the asset whose permissions will be listed.
rcplId :: Lens' RasterCollectionsPermissionsList' Text
rcplId = lens _rcplId (\ s a -> s{_rcplId = a})

-- | OAuth 2.0 token for the current user.
rcplOauthToken :: Lens' RasterCollectionsPermissionsList' (Maybe Text)
rcplOauthToken
  = lens _rcplOauthToken
      (\ s a -> s{_rcplOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcplFields :: Lens' RasterCollectionsPermissionsList' (Maybe Text)
rcplFields
  = lens _rcplFields (\ s a -> s{_rcplFields = a})

-- | Data format for the response.
rcplAlt :: Lens' RasterCollectionsPermissionsList' Alt
rcplAlt = lens _rcplAlt (\ s a -> s{_rcplAlt = a})

instance GoogleRequest
         RasterCollectionsPermissionsList' where
        type Rs RasterCollectionsPermissionsList' =
             PermissionsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u
          RasterCollectionsPermissionsList'{..}
          = go _rcplQuotaUser (Just _rcplPrettyPrint)
              _rcplUserIp
              _rcplKey
              _rcplId
              _rcplOauthToken
              _rcplFields
              (Just _rcplAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RasterCollectionsPermissionsListAPI)
                      r
                      u
