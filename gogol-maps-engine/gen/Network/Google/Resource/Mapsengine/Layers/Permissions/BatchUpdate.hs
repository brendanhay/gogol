{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Layers.Permissions.BatchUpdate
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
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineLayersPermissionsBatchUpdate@.
module Mapsengine.Layers.Permissions.BatchUpdate
    (
    -- * REST Resource
      LayersPermissionsBatchUpdateAPI

    -- * Creating a Request
    , layersPermissionsBatchUpdate
    , LayersPermissionsBatchUpdate

    -- * Request Lenses
    , lpbuQuotaUser
    , lpbuPrettyPrint
    , lpbuUserIp
    , lpbuKey
    , lpbuId
    , lpbuOauthToken
    , lpbuFields
    , lpbuAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineLayersPermissionsBatchUpdate@ which the
-- 'LayersPermissionsBatchUpdate' request conforms to.
type LayersPermissionsBatchUpdateAPI =
     "layers" :>
       Capture "id" Text :>
         "permissions" :>
           "batchUpdate" :>
             Post '[JSON] PermissionsBatchUpdateResponse

-- | Add or update permission entries to an already existing asset. An asset
-- can hold up to 20 different permission entries. Each batchInsert request
-- is atomic.
--
-- /See:/ 'layersPermissionsBatchUpdate' smart constructor.
data LayersPermissionsBatchUpdate = LayersPermissionsBatchUpdate
    { _lpbuQuotaUser   :: !(Maybe Text)
    , _lpbuPrettyPrint :: !Bool
    , _lpbuUserIp      :: !(Maybe Text)
    , _lpbuKey         :: !(Maybe Text)
    , _lpbuId          :: !Text
    , _lpbuOauthToken  :: !(Maybe Text)
    , _lpbuFields      :: !(Maybe Text)
    , _lpbuAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersPermissionsBatchUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpbuQuotaUser'
--
-- * 'lpbuPrettyPrint'
--
-- * 'lpbuUserIp'
--
-- * 'lpbuKey'
--
-- * 'lpbuId'
--
-- * 'lpbuOauthToken'
--
-- * 'lpbuFields'
--
-- * 'lpbuAlt'
layersPermissionsBatchUpdate
    :: Text -- ^ 'id'
    -> LayersPermissionsBatchUpdate
layersPermissionsBatchUpdate pLpbuId_ =
    LayersPermissionsBatchUpdate
    { _lpbuQuotaUser = Nothing
    , _lpbuPrettyPrint = True
    , _lpbuUserIp = Nothing
    , _lpbuKey = Nothing
    , _lpbuId = pLpbuId_
    , _lpbuOauthToken = Nothing
    , _lpbuFields = Nothing
    , _lpbuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lpbuQuotaUser :: Lens' LayersPermissionsBatchUpdate' (Maybe Text)
lpbuQuotaUser
  = lens _lpbuQuotaUser
      (\ s a -> s{_lpbuQuotaUser = a})

-- | Returns response with indentations and line breaks.
lpbuPrettyPrint :: Lens' LayersPermissionsBatchUpdate' Bool
lpbuPrettyPrint
  = lens _lpbuPrettyPrint
      (\ s a -> s{_lpbuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lpbuUserIp :: Lens' LayersPermissionsBatchUpdate' (Maybe Text)
lpbuUserIp
  = lens _lpbuUserIp (\ s a -> s{_lpbuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lpbuKey :: Lens' LayersPermissionsBatchUpdate' (Maybe Text)
lpbuKey = lens _lpbuKey (\ s a -> s{_lpbuKey = a})

-- | The ID of the asset to which permissions will be added.
lpbuId :: Lens' LayersPermissionsBatchUpdate' Text
lpbuId = lens _lpbuId (\ s a -> s{_lpbuId = a})

-- | OAuth 2.0 token for the current user.
lpbuOauthToken :: Lens' LayersPermissionsBatchUpdate' (Maybe Text)
lpbuOauthToken
  = lens _lpbuOauthToken
      (\ s a -> s{_lpbuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lpbuFields :: Lens' LayersPermissionsBatchUpdate' (Maybe Text)
lpbuFields
  = lens _lpbuFields (\ s a -> s{_lpbuFields = a})

-- | Data format for the response.
lpbuAlt :: Lens' LayersPermissionsBatchUpdate' Text
lpbuAlt = lens _lpbuAlt (\ s a -> s{_lpbuAlt = a})

instance GoogleRequest LayersPermissionsBatchUpdate'
         where
        type Rs LayersPermissionsBatchUpdate' =
             PermissionsBatchUpdateResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u LayersPermissionsBatchUpdate{..}
          = go _lpbuQuotaUser _lpbuPrettyPrint _lpbuUserIp
              _lpbuKey
              _lpbuId
              _lpbuOauthToken
              _lpbuFields
              _lpbuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LayersPermissionsBatchUpdateAPI)
                      r
                      u
