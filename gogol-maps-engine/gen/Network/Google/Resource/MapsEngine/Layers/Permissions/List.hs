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
-- Module      : Network.Google.Resource.MapsEngine.Layers.Permissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all of the permissions for the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineLayersPermissionsList@.
module Network.Google.Resource.MapsEngine.Layers.Permissions.List
    (
    -- * REST Resource
      LayersPermissionsListResource

    -- * Creating a Request
    , layersPermissionsList'
    , LayersPermissionsList'

    -- * Request Lenses
    , lplQuotaUser
    , lplPrettyPrint
    , lplUserIP
    , lplKey
    , lplId
    , lplOAuthToken
    , lplFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineLayersPermissionsList@ which the
-- 'LayersPermissionsList'' request conforms to.
type LayersPermissionsListResource =
     "layers" :>
       Capture "id" Text :>
         "permissions" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] PermissionsListResponse

-- | Return all of the permissions for the specified asset.
--
-- /See:/ 'layersPermissionsList'' smart constructor.
data LayersPermissionsList' = LayersPermissionsList'
    { _lplQuotaUser   :: !(Maybe Text)
    , _lplPrettyPrint :: !Bool
    , _lplUserIP      :: !(Maybe Text)
    , _lplKey         :: !(Maybe AuthKey)
    , _lplId          :: !Text
    , _lplOAuthToken  :: !(Maybe OAuthToken)
    , _lplFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersPermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lplQuotaUser'
--
-- * 'lplPrettyPrint'
--
-- * 'lplUserIP'
--
-- * 'lplKey'
--
-- * 'lplId'
--
-- * 'lplOAuthToken'
--
-- * 'lplFields'
layersPermissionsList'
    :: Text -- ^ 'id'
    -> LayersPermissionsList'
layersPermissionsList' pLplId_ =
    LayersPermissionsList'
    { _lplQuotaUser = Nothing
    , _lplPrettyPrint = True
    , _lplUserIP = Nothing
    , _lplKey = Nothing
    , _lplId = pLplId_
    , _lplOAuthToken = Nothing
    , _lplFields = Nothing
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
lplUserIP :: Lens' LayersPermissionsList' (Maybe Text)
lplUserIP
  = lens _lplUserIP (\ s a -> s{_lplUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lplKey :: Lens' LayersPermissionsList' (Maybe AuthKey)
lplKey = lens _lplKey (\ s a -> s{_lplKey = a})

-- | The ID of the asset whose permissions will be listed.
lplId :: Lens' LayersPermissionsList' Text
lplId = lens _lplId (\ s a -> s{_lplId = a})

-- | OAuth 2.0 token for the current user.
lplOAuthToken :: Lens' LayersPermissionsList' (Maybe OAuthToken)
lplOAuthToken
  = lens _lplOAuthToken
      (\ s a -> s{_lplOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lplFields :: Lens' LayersPermissionsList' (Maybe Text)
lplFields
  = lens _lplFields (\ s a -> s{_lplFields = a})

instance GoogleAuth LayersPermissionsList' where
        _AuthKey = lplKey . _Just
        _AuthToken = lplOAuthToken . _Just

instance GoogleRequest LayersPermissionsList' where
        type Rs LayersPermissionsList' =
             PermissionsListResponse
        request = requestWith mapsEngineRequest
        requestWith rq LayersPermissionsList'{..}
          = go _lplId _lplQuotaUser (Just _lplPrettyPrint)
              _lplUserIP
              _lplFields
              _lplKey
              _lplOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy LayersPermissionsListResource)
                      rq
