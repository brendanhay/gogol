{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Mapsengine.RasterCollections.Permissions.BatchDelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Remove permission entries from an already existing asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasterCollections.permissions.batchDelete@.
module Network.Google.API.Mapsengine.RasterCollections.Permissions.BatchDelete
    (
    -- * REST Resource
      RasterCollectionsPermissionsBatchDeleteAPI

    -- * Creating a Request
    , rasterCollectionsPermissionsBatchDelete'
    , RasterCollectionsPermissionsBatchDelete'

    -- * Request Lenses
    , rcpbdQuotaUser
    , rcpbdPrettyPrint
    , rcpbdUserIp
    , rcpbdKey
    , rcpbdId
    , rcpbdOauthToken
    , rcpbdFields
    , rcpbdAlt
    ) where

import           Network.Google.Map.Engine.Types
import           Network.Google.Prelude

-- | A resource alias for mapsengine.rasterCollections.permissions.batchDelete which the
-- 'RasterCollectionsPermissionsBatchDelete'' request conforms to.
type RasterCollectionsPermissionsBatchDeleteAPI =
     "rasterCollections" :>
       Capture "id" Text :>
         "permissions" :>
           "batchDelete" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Post '[JSON] PermissionsBatchDeleteResponse

-- | Remove permission entries from an already existing asset.
--
-- /See:/ 'rasterCollectionsPermissionsBatchDelete'' smart constructor.
data RasterCollectionsPermissionsBatchDelete' = RasterCollectionsPermissionsBatchDelete'
    { _rcpbdQuotaUser   :: !(Maybe Text)
    , _rcpbdPrettyPrint :: !Bool
    , _rcpbdUserIp      :: !(Maybe Text)
    , _rcpbdKey         :: !(Maybe Text)
    , _rcpbdId          :: !Text
    , _rcpbdOauthToken  :: !(Maybe Text)
    , _rcpbdFields      :: !(Maybe Text)
    , _rcpbdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsPermissionsBatchDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcpbdQuotaUser'
--
-- * 'rcpbdPrettyPrint'
--
-- * 'rcpbdUserIp'
--
-- * 'rcpbdKey'
--
-- * 'rcpbdId'
--
-- * 'rcpbdOauthToken'
--
-- * 'rcpbdFields'
--
-- * 'rcpbdAlt'
rasterCollectionsPermissionsBatchDelete'
    :: Text -- ^ 'id'
    -> RasterCollectionsPermissionsBatchDelete'
rasterCollectionsPermissionsBatchDelete' pRcpbdId_ =
    RasterCollectionsPermissionsBatchDelete'
    { _rcpbdQuotaUser = Nothing
    , _rcpbdPrettyPrint = True
    , _rcpbdUserIp = Nothing
    , _rcpbdKey = Nothing
    , _rcpbdId = pRcpbdId_
    , _rcpbdOauthToken = Nothing
    , _rcpbdFields = Nothing
    , _rcpbdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rcpbdQuotaUser :: Lens' RasterCollectionsPermissionsBatchDelete' (Maybe Text)
rcpbdQuotaUser
  = lens _rcpbdQuotaUser
      (\ s a -> s{_rcpbdQuotaUser = a})

-- | Returns response with indentations and line breaks.
rcpbdPrettyPrint :: Lens' RasterCollectionsPermissionsBatchDelete' Bool
rcpbdPrettyPrint
  = lens _rcpbdPrettyPrint
      (\ s a -> s{_rcpbdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rcpbdUserIp :: Lens' RasterCollectionsPermissionsBatchDelete' (Maybe Text)
rcpbdUserIp
  = lens _rcpbdUserIp (\ s a -> s{_rcpbdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcpbdKey :: Lens' RasterCollectionsPermissionsBatchDelete' (Maybe Text)
rcpbdKey = lens _rcpbdKey (\ s a -> s{_rcpbdKey = a})

-- | The ID of the asset from which permissions will be removed.
rcpbdId :: Lens' RasterCollectionsPermissionsBatchDelete' Text
rcpbdId = lens _rcpbdId (\ s a -> s{_rcpbdId = a})

-- | OAuth 2.0 token for the current user.
rcpbdOauthToken :: Lens' RasterCollectionsPermissionsBatchDelete' (Maybe Text)
rcpbdOauthToken
  = lens _rcpbdOauthToken
      (\ s a -> s{_rcpbdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcpbdFields :: Lens' RasterCollectionsPermissionsBatchDelete' (Maybe Text)
rcpbdFields
  = lens _rcpbdFields (\ s a -> s{_rcpbdFields = a})

-- | Data format for the response.
rcpbdAlt :: Lens' RasterCollectionsPermissionsBatchDelete' Alt
rcpbdAlt = lens _rcpbdAlt (\ s a -> s{_rcpbdAlt = a})

instance GoogleRequest
         RasterCollectionsPermissionsBatchDelete' where
        type Rs RasterCollectionsPermissionsBatchDelete' =
             PermissionsBatchDeleteResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u
          RasterCollectionsPermissionsBatchDelete'{..}
          = go _rcpbdQuotaUser (Just _rcpbdPrettyPrint)
              _rcpbdUserIp
              _rcpbdKey
              _rcpbdId
              _rcpbdOauthToken
              _rcpbdFields
              (Just _rcpbdAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy RasterCollectionsPermissionsBatchDeleteAPI)
                      r
                      u
