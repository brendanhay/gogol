{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Mapsengine.RasterCollections.Permissions.BatchUpdate
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
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasterCollections.permissions.batchUpdate@.
module Network.Google.API.Mapsengine.RasterCollections.Permissions.BatchUpdate
    (
    -- * REST Resource
      RasterCollectionsPermissionsBatchUpdateAPI

    -- * Creating a Request
    , rasterCollectionsPermissionsBatchUpdate'
    , RasterCollectionsPermissionsBatchUpdate'

    -- * Request Lenses
    , rcpbuQuotaUser
    , rcpbuPrettyPrint
    , rcpbuUserIp
    , rcpbuKey
    , rcpbuId
    , rcpbuOauthToken
    , rcpbuFields
    , rcpbuAlt
    ) where

import           Network.Google.Map.Engine.Types
import           Network.Google.Prelude

-- | A resource alias for mapsengine.rasterCollections.permissions.batchUpdate which the
-- 'RasterCollectionsPermissionsBatchUpdate'' request conforms to.
type RasterCollectionsPermissionsBatchUpdateAPI =
     "rasterCollections" :>
       Capture "id" Text :>
         "permissions" :>
           "batchUpdate" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Post '[JSON] PermissionsBatchUpdateResponse

-- | Add or update permission entries to an already existing asset. An asset
-- can hold up to 20 different permission entries. Each batchInsert request
-- is atomic.
--
-- /See:/ 'rasterCollectionsPermissionsBatchUpdate'' smart constructor.
data RasterCollectionsPermissionsBatchUpdate' = RasterCollectionsPermissionsBatchUpdate'
    { _rcpbuQuotaUser   :: !(Maybe Text)
    , _rcpbuPrettyPrint :: !Bool
    , _rcpbuUserIp      :: !(Maybe Text)
    , _rcpbuKey         :: !(Maybe Text)
    , _rcpbuId          :: !Text
    , _rcpbuOauthToken  :: !(Maybe Text)
    , _rcpbuFields      :: !(Maybe Text)
    , _rcpbuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsPermissionsBatchUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcpbuQuotaUser'
--
-- * 'rcpbuPrettyPrint'
--
-- * 'rcpbuUserIp'
--
-- * 'rcpbuKey'
--
-- * 'rcpbuId'
--
-- * 'rcpbuOauthToken'
--
-- * 'rcpbuFields'
--
-- * 'rcpbuAlt'
rasterCollectionsPermissionsBatchUpdate'
    :: Text -- ^ 'id'
    -> RasterCollectionsPermissionsBatchUpdate'
rasterCollectionsPermissionsBatchUpdate' pRcpbuId_ =
    RasterCollectionsPermissionsBatchUpdate'
    { _rcpbuQuotaUser = Nothing
    , _rcpbuPrettyPrint = True
    , _rcpbuUserIp = Nothing
    , _rcpbuKey = Nothing
    , _rcpbuId = pRcpbuId_
    , _rcpbuOauthToken = Nothing
    , _rcpbuFields = Nothing
    , _rcpbuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rcpbuQuotaUser :: Lens' RasterCollectionsPermissionsBatchUpdate' (Maybe Text)
rcpbuQuotaUser
  = lens _rcpbuQuotaUser
      (\ s a -> s{_rcpbuQuotaUser = a})

-- | Returns response with indentations and line breaks.
rcpbuPrettyPrint :: Lens' RasterCollectionsPermissionsBatchUpdate' Bool
rcpbuPrettyPrint
  = lens _rcpbuPrettyPrint
      (\ s a -> s{_rcpbuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rcpbuUserIp :: Lens' RasterCollectionsPermissionsBatchUpdate' (Maybe Text)
rcpbuUserIp
  = lens _rcpbuUserIp (\ s a -> s{_rcpbuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcpbuKey :: Lens' RasterCollectionsPermissionsBatchUpdate' (Maybe Text)
rcpbuKey = lens _rcpbuKey (\ s a -> s{_rcpbuKey = a})

-- | The ID of the asset to which permissions will be added.
rcpbuId :: Lens' RasterCollectionsPermissionsBatchUpdate' Text
rcpbuId = lens _rcpbuId (\ s a -> s{_rcpbuId = a})

-- | OAuth 2.0 token for the current user.
rcpbuOauthToken :: Lens' RasterCollectionsPermissionsBatchUpdate' (Maybe Text)
rcpbuOauthToken
  = lens _rcpbuOauthToken
      (\ s a -> s{_rcpbuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcpbuFields :: Lens' RasterCollectionsPermissionsBatchUpdate' (Maybe Text)
rcpbuFields
  = lens _rcpbuFields (\ s a -> s{_rcpbuFields = a})

-- | Data format for the response.
rcpbuAlt :: Lens' RasterCollectionsPermissionsBatchUpdate' Alt
rcpbuAlt = lens _rcpbuAlt (\ s a -> s{_rcpbuAlt = a})

instance GoogleRequest
         RasterCollectionsPermissionsBatchUpdate' where
        type Rs RasterCollectionsPermissionsBatchUpdate' =
             PermissionsBatchUpdateResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u
          RasterCollectionsPermissionsBatchUpdate'{..}
          = go _rcpbuQuotaUser (Just _rcpbuPrettyPrint)
              _rcpbuUserIp
              _rcpbuKey
              _rcpbuId
              _rcpbuOauthToken
              _rcpbuFields
              (Just _rcpbuAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy RasterCollectionsPermissionsBatchUpdateAPI)
                      r
                      u
