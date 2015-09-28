{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Mapsengine.Layers.Permissions.BatchDelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Remove permission entries from an already existing asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.layers.permissions.batchDelete@.
module Network.Google.API.Mapsengine.Layers.Permissions.BatchDelete
    (
    -- * REST Resource
      LayersPermissionsBatchDeleteAPI

    -- * Creating a Request
    , layersPermissionsBatchDelete'
    , LayersPermissionsBatchDelete'

    -- * Request Lenses
    , lpbdQuotaUser
    , lpbdPrettyPrint
    , lpbdUserIp
    , lpbdKey
    , lpbdId
    , lpbdOauthToken
    , lpbdFields
    , lpbdAlt
    ) where

import           Network.Google.Map.Engine.Types
import           Network.Google.Prelude

-- | A resource alias for mapsengine.layers.permissions.batchDelete which the
-- 'LayersPermissionsBatchDelete'' request conforms to.
type LayersPermissionsBatchDeleteAPI =
     "layers" :>
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
-- /See:/ 'layersPermissionsBatchDelete'' smart constructor.
data LayersPermissionsBatchDelete' = LayersPermissionsBatchDelete'
    { _lpbdQuotaUser   :: !(Maybe Text)
    , _lpbdPrettyPrint :: !Bool
    , _lpbdUserIp      :: !(Maybe Text)
    , _lpbdKey         :: !(Maybe Text)
    , _lpbdId          :: !Text
    , _lpbdOauthToken  :: !(Maybe Text)
    , _lpbdFields      :: !(Maybe Text)
    , _lpbdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersPermissionsBatchDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpbdQuotaUser'
--
-- * 'lpbdPrettyPrint'
--
-- * 'lpbdUserIp'
--
-- * 'lpbdKey'
--
-- * 'lpbdId'
--
-- * 'lpbdOauthToken'
--
-- * 'lpbdFields'
--
-- * 'lpbdAlt'
layersPermissionsBatchDelete'
    :: Text -- ^ 'id'
    -> LayersPermissionsBatchDelete'
layersPermissionsBatchDelete' pLpbdId_ =
    LayersPermissionsBatchDelete'
    { _lpbdQuotaUser = Nothing
    , _lpbdPrettyPrint = True
    , _lpbdUserIp = Nothing
    , _lpbdKey = Nothing
    , _lpbdId = pLpbdId_
    , _lpbdOauthToken = Nothing
    , _lpbdFields = Nothing
    , _lpbdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lpbdQuotaUser :: Lens' LayersPermissionsBatchDelete' (Maybe Text)
lpbdQuotaUser
  = lens _lpbdQuotaUser
      (\ s a -> s{_lpbdQuotaUser = a})

-- | Returns response with indentations and line breaks.
lpbdPrettyPrint :: Lens' LayersPermissionsBatchDelete' Bool
lpbdPrettyPrint
  = lens _lpbdPrettyPrint
      (\ s a -> s{_lpbdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lpbdUserIp :: Lens' LayersPermissionsBatchDelete' (Maybe Text)
lpbdUserIp
  = lens _lpbdUserIp (\ s a -> s{_lpbdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lpbdKey :: Lens' LayersPermissionsBatchDelete' (Maybe Text)
lpbdKey = lens _lpbdKey (\ s a -> s{_lpbdKey = a})

-- | The ID of the asset from which permissions will be removed.
lpbdId :: Lens' LayersPermissionsBatchDelete' Text
lpbdId = lens _lpbdId (\ s a -> s{_lpbdId = a})

-- | OAuth 2.0 token for the current user.
lpbdOauthToken :: Lens' LayersPermissionsBatchDelete' (Maybe Text)
lpbdOauthToken
  = lens _lpbdOauthToken
      (\ s a -> s{_lpbdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lpbdFields :: Lens' LayersPermissionsBatchDelete' (Maybe Text)
lpbdFields
  = lens _lpbdFields (\ s a -> s{_lpbdFields = a})

-- | Data format for the response.
lpbdAlt :: Lens' LayersPermissionsBatchDelete' Alt
lpbdAlt = lens _lpbdAlt (\ s a -> s{_lpbdAlt = a})

instance GoogleRequest LayersPermissionsBatchDelete'
         where
        type Rs LayersPermissionsBatchDelete' =
             PermissionsBatchDeleteResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u
          LayersPermissionsBatchDelete'{..}
          = go _lpbdQuotaUser (Just _lpbdPrettyPrint)
              _lpbdUserIp
              _lpbdKey
              _lpbdId
              _lpbdOauthToken
              _lpbdFields
              (Just _lpbdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LayersPermissionsBatchDeleteAPI)
                      r
                      u
