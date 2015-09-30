{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.RasterCollections.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all of the permissions for the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineRasterCollectionsPermissionsList@.
module Mapsengine.RasterCollections.Permissions.List
    (
    -- * REST Resource
      RasterCollectionsPermissionsListAPI

    -- * Creating a Request
    , rasterCollectionsPermissionsList
    , RasterCollectionsPermissionsList

    -- * Request Lenses
    , rcplcQuotaUser
    , rcplcPrettyPrint
    , rcplcUserIp
    , rcplcKey
    , rcplcId
    , rcplcOauthToken
    , rcplcFields
    , rcplcAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineRasterCollectionsPermissionsList@ which the
-- 'RasterCollectionsPermissionsList' request conforms to.
type RasterCollectionsPermissionsListAPI =
     "rasterCollections" :>
       Capture "id" Text :>
         "permissions" :> Get '[JSON] PermissionsListResponse

-- | Return all of the permissions for the specified asset.
--
-- /See:/ 'rasterCollectionsPermissionsList' smart constructor.
data RasterCollectionsPermissionsList = RasterCollectionsPermissionsList
    { _rcplcQuotaUser   :: !(Maybe Text)
    , _rcplcPrettyPrint :: !Bool
    , _rcplcUserIp      :: !(Maybe Text)
    , _rcplcKey         :: !(Maybe Text)
    , _rcplcId          :: !Text
    , _rcplcOauthToken  :: !(Maybe Text)
    , _rcplcFields      :: !(Maybe Text)
    , _rcplcAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsPermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcplcQuotaUser'
--
-- * 'rcplcPrettyPrint'
--
-- * 'rcplcUserIp'
--
-- * 'rcplcKey'
--
-- * 'rcplcId'
--
-- * 'rcplcOauthToken'
--
-- * 'rcplcFields'
--
-- * 'rcplcAlt'
rasterCollectionsPermissionsList
    :: Text -- ^ 'id'
    -> RasterCollectionsPermissionsList
rasterCollectionsPermissionsList pRcplcId_ =
    RasterCollectionsPermissionsList
    { _rcplcQuotaUser = Nothing
    , _rcplcPrettyPrint = True
    , _rcplcUserIp = Nothing
    , _rcplcKey = Nothing
    , _rcplcId = pRcplcId_
    , _rcplcOauthToken = Nothing
    , _rcplcFields = Nothing
    , _rcplcAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rcplcQuotaUser :: Lens' RasterCollectionsPermissionsList' (Maybe Text)
rcplcQuotaUser
  = lens _rcplcQuotaUser
      (\ s a -> s{_rcplcQuotaUser = a})

-- | Returns response with indentations and line breaks.
rcplcPrettyPrint :: Lens' RasterCollectionsPermissionsList' Bool
rcplcPrettyPrint
  = lens _rcplcPrettyPrint
      (\ s a -> s{_rcplcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rcplcUserIp :: Lens' RasterCollectionsPermissionsList' (Maybe Text)
rcplcUserIp
  = lens _rcplcUserIp (\ s a -> s{_rcplcUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcplcKey :: Lens' RasterCollectionsPermissionsList' (Maybe Text)
rcplcKey = lens _rcplcKey (\ s a -> s{_rcplcKey = a})

-- | The ID of the asset whose permissions will be listed.
rcplcId :: Lens' RasterCollectionsPermissionsList' Text
rcplcId = lens _rcplcId (\ s a -> s{_rcplcId = a})

-- | OAuth 2.0 token for the current user.
rcplcOauthToken :: Lens' RasterCollectionsPermissionsList' (Maybe Text)
rcplcOauthToken
  = lens _rcplcOauthToken
      (\ s a -> s{_rcplcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcplcFields :: Lens' RasterCollectionsPermissionsList' (Maybe Text)
rcplcFields
  = lens _rcplcFields (\ s a -> s{_rcplcFields = a})

-- | Data format for the response.
rcplcAlt :: Lens' RasterCollectionsPermissionsList' Text
rcplcAlt = lens _rcplcAlt (\ s a -> s{_rcplcAlt = a})

instance GoogleRequest
         RasterCollectionsPermissionsList' where
        type Rs RasterCollectionsPermissionsList' =
             PermissionsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u
          RasterCollectionsPermissionsList{..}
          = go _rcplcQuotaUser _rcplcPrettyPrint _rcplcUserIp
              _rcplcKey
              _rcplcId
              _rcplcOauthToken
              _rcplcFields
              _rcplcAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RasterCollectionsPermissionsListAPI)
                      r
                      u
