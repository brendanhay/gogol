{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.MapsEngine.RasterCollections.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all of the permissions for the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRasterCollectionsPermissionsList@.
module Network.Google.Resource.MapsEngine.RasterCollections.Permissions.List
    (
    -- * REST Resource
      RasterCollectionsPermissionsListResource

    -- * Creating a Request
    , rasterCollectionsPermissionsList'
    , RasterCollectionsPermissionsList'

    -- * Request Lenses
    , rcplcQuotaUser
    , rcplcPrettyPrint
    , rcplcUserIP
    , rcplcKey
    , rcplcId
    , rcplcOAuthToken
    , rcplcFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRasterCollectionsPermissionsList@ method which the
-- 'RasterCollectionsPermissionsList'' request conforms to.
type RasterCollectionsPermissionsListResource =
     "rasterCollections" :>
       Capture "id" Text :>
         "permissions" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] PermissionsListResponse

-- | Return all of the permissions for the specified asset.
--
-- /See:/ 'rasterCollectionsPermissionsList'' smart constructor.
data RasterCollectionsPermissionsList' = RasterCollectionsPermissionsList'
    { _rcplcQuotaUser   :: !(Maybe Text)
    , _rcplcPrettyPrint :: !Bool
    , _rcplcUserIP      :: !(Maybe Text)
    , _rcplcKey         :: !(Maybe AuthKey)
    , _rcplcId          :: !Text
    , _rcplcOAuthToken  :: !(Maybe OAuthToken)
    , _rcplcFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsPermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcplcQuotaUser'
--
-- * 'rcplcPrettyPrint'
--
-- * 'rcplcUserIP'
--
-- * 'rcplcKey'
--
-- * 'rcplcId'
--
-- * 'rcplcOAuthToken'
--
-- * 'rcplcFields'
rasterCollectionsPermissionsList'
    :: Text -- ^ 'id'
    -> RasterCollectionsPermissionsList'
rasterCollectionsPermissionsList' pRcplcId_ =
    RasterCollectionsPermissionsList'
    { _rcplcQuotaUser = Nothing
    , _rcplcPrettyPrint = True
    , _rcplcUserIP = Nothing
    , _rcplcKey = Nothing
    , _rcplcId = pRcplcId_
    , _rcplcOAuthToken = Nothing
    , _rcplcFields = Nothing
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
rcplcUserIP :: Lens' RasterCollectionsPermissionsList' (Maybe Text)
rcplcUserIP
  = lens _rcplcUserIP (\ s a -> s{_rcplcUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcplcKey :: Lens' RasterCollectionsPermissionsList' (Maybe AuthKey)
rcplcKey = lens _rcplcKey (\ s a -> s{_rcplcKey = a})

-- | The ID of the asset whose permissions will be listed.
rcplcId :: Lens' RasterCollectionsPermissionsList' Text
rcplcId = lens _rcplcId (\ s a -> s{_rcplcId = a})

-- | OAuth 2.0 token for the current user.
rcplcOAuthToken :: Lens' RasterCollectionsPermissionsList' (Maybe OAuthToken)
rcplcOAuthToken
  = lens _rcplcOAuthToken
      (\ s a -> s{_rcplcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcplcFields :: Lens' RasterCollectionsPermissionsList' (Maybe Text)
rcplcFields
  = lens _rcplcFields (\ s a -> s{_rcplcFields = a})

instance GoogleAuth RasterCollectionsPermissionsList'
         where
        _AuthKey = rcplcKey . _Just
        _AuthToken = rcplcOAuthToken . _Just

instance GoogleRequest
         RasterCollectionsPermissionsList' where
        type Rs RasterCollectionsPermissionsList' =
             PermissionsListResponse
        request = requestWith mapsEngineRequest
        requestWith rq RasterCollectionsPermissionsList'{..}
          = go _rcplcId _rcplcQuotaUser
              (Just _rcplcPrettyPrint)
              _rcplcUserIP
              _rcplcFields
              _rcplcKey
              _rcplcOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy RasterCollectionsPermissionsListResource)
                      rq
