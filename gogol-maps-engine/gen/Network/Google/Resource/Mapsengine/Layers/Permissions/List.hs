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
-- Module      : Network.Google.Resource.Mapsengine.Layers.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all of the permissions for the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineLayersPermissionsList@.
module Network.Google.Resource.Mapsengine.Layers.Permissions.List
    (
    -- * REST Resource
      LayersPermissionsListResource

    -- * Creating a Request
    , layersPermissionsList'
    , LayersPermissionsList'

    -- * Request Lenses
    , lplQuotaUser
    , lplPrettyPrint
    , lplUserIp
    , lplKey
    , lplId
    , lplOauthToken
    , lplFields
    , lplAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineLayersPermissionsList@ which the
-- 'LayersPermissionsList'' request conforms to.
type LayersPermissionsListResource =
     "layers" :>
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
-- /See:/ 'layersPermissionsList'' smart constructor.
data LayersPermissionsList' = LayersPermissionsList'
    { _lplQuotaUser   :: !(Maybe Text)
    , _lplPrettyPrint :: !Bool
    , _lplUserIp      :: !(Maybe Text)
    , _lplKey         :: !(Maybe Text)
    , _lplId          :: !Text
    , _lplOauthToken  :: !(Maybe Text)
    , _lplFields      :: !(Maybe Text)
    , _lplAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersPermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lplQuotaUser'
--
-- * 'lplPrettyPrint'
--
-- * 'lplUserIp'
--
-- * 'lplKey'
--
-- * 'lplId'
--
-- * 'lplOauthToken'
--
-- * 'lplFields'
--
-- * 'lplAlt'
layersPermissionsList'
    :: Text -- ^ 'id'
    -> LayersPermissionsList'
layersPermissionsList' pLplId_ =
    LayersPermissionsList'
    { _lplQuotaUser = Nothing
    , _lplPrettyPrint = True
    , _lplUserIp = Nothing
    , _lplKey = Nothing
    , _lplId = pLplId_
    , _lplOauthToken = Nothing
    , _lplFields = Nothing
    , _lplAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lplQuotaUser :: Lens' LayersPermissionsList' (Maybe Text)
lplQuotaUser
  = lens _lplQuotaUser (\ s a -> s{_lplQuotaUser = a})

-- | Returns response with indentations and line breaks.
lplPrettyPrint :: Lens' LayersPermissionsList' Bool
lplPrettyPrint
  = lens _lplPrettyPrint
      (\ s a -> s{_lplPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lplUserIp :: Lens' LayersPermissionsList' (Maybe Text)
lplUserIp
  = lens _lplUserIp (\ s a -> s{_lplUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lplKey :: Lens' LayersPermissionsList' (Maybe Text)
lplKey = lens _lplKey (\ s a -> s{_lplKey = a})

-- | The ID of the asset whose permissions will be listed.
lplId :: Lens' LayersPermissionsList' Text
lplId = lens _lplId (\ s a -> s{_lplId = a})

-- | OAuth 2.0 token for the current user.
lplOauthToken :: Lens' LayersPermissionsList' (Maybe Text)
lplOauthToken
  = lens _lplOauthToken
      (\ s a -> s{_lplOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lplFields :: Lens' LayersPermissionsList' (Maybe Text)
lplFields
  = lens _lplFields (\ s a -> s{_lplFields = a})

-- | Data format for the response.
lplAlt :: Lens' LayersPermissionsList' Alt
lplAlt = lens _lplAlt (\ s a -> s{_lplAlt = a})

instance GoogleRequest LayersPermissionsList' where
        type Rs LayersPermissionsList' =
             PermissionsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u LayersPermissionsList'{..}
          = go _lplQuotaUser (Just _lplPrettyPrint) _lplUserIp
              _lplKey
              _lplId
              _lplOauthToken
              _lplFields
              (Just _lplAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LayersPermissionsListResource)
                      r
                      u
