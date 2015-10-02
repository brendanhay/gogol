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
-- Module      : Network.Google.Resource.MapsEngine.Layers.Permissions.BatchUpdate
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
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineLayersPermissionsBatchUpdate@.
module Network.Google.Resource.MapsEngine.Layers.Permissions.BatchUpdate
    (
    -- * REST Resource
      LayersPermissionsBatchUpdateResource

    -- * Creating a Request
    , layersPermissionsBatchUpdate'
    , LayersPermissionsBatchUpdate'

    -- * Request Lenses
    , lpbuPermissionsBatchUpdateRequest
    , lpbuQuotaUser
    , lpbuPrettyPrint
    , lpbuUserIP
    , lpbuKey
    , lpbuId
    , lpbuOAuthToken
    , lpbuFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineLayersPermissionsBatchUpdate@ which the
-- 'LayersPermissionsBatchUpdate'' request conforms to.
type LayersPermissionsBatchUpdateResource =
     "layers" :>
       Capture "id" Text :>
         "permissions" :>
           "batchUpdate" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] PermissionsBatchUpdateRequest :>
                             Post '[JSON] PermissionsBatchUpdateResponse

-- | Add or update permission entries to an already existing asset. An asset
-- can hold up to 20 different permission entries. Each batchInsert request
-- is atomic.
--
-- /See:/ 'layersPermissionsBatchUpdate'' smart constructor.
data LayersPermissionsBatchUpdate' = LayersPermissionsBatchUpdate'
    { _lpbuPermissionsBatchUpdateRequest :: !PermissionsBatchUpdateRequest
    , _lpbuQuotaUser                     :: !(Maybe Text)
    , _lpbuPrettyPrint                   :: !Bool
    , _lpbuUserIP                        :: !(Maybe Text)
    , _lpbuKey                           :: !(Maybe Key)
    , _lpbuId                            :: !Text
    , _lpbuOAuthToken                    :: !(Maybe OAuthToken)
    , _lpbuFields                        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersPermissionsBatchUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpbuPermissionsBatchUpdateRequest'
--
-- * 'lpbuQuotaUser'
--
-- * 'lpbuPrettyPrint'
--
-- * 'lpbuUserIP'
--
-- * 'lpbuKey'
--
-- * 'lpbuId'
--
-- * 'lpbuOAuthToken'
--
-- * 'lpbuFields'
layersPermissionsBatchUpdate'
    :: PermissionsBatchUpdateRequest -- ^ 'PermissionsBatchUpdateRequest'
    -> Text -- ^ 'id'
    -> LayersPermissionsBatchUpdate'
layersPermissionsBatchUpdate' pLpbuPermissionsBatchUpdateRequest_ pLpbuId_ =
    LayersPermissionsBatchUpdate'
    { _lpbuPermissionsBatchUpdateRequest = pLpbuPermissionsBatchUpdateRequest_
    , _lpbuQuotaUser = Nothing
    , _lpbuPrettyPrint = True
    , _lpbuUserIP = Nothing
    , _lpbuKey = Nothing
    , _lpbuId = pLpbuId_
    , _lpbuOAuthToken = Nothing
    , _lpbuFields = Nothing
    }

-- | Multipart request metadata.
lpbuPermissionsBatchUpdateRequest :: Lens' LayersPermissionsBatchUpdate' PermissionsBatchUpdateRequest
lpbuPermissionsBatchUpdateRequest
  = lens _lpbuPermissionsBatchUpdateRequest
      (\ s a -> s{_lpbuPermissionsBatchUpdateRequest = a})

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
lpbuUserIP :: Lens' LayersPermissionsBatchUpdate' (Maybe Text)
lpbuUserIP
  = lens _lpbuUserIP (\ s a -> s{_lpbuUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lpbuKey :: Lens' LayersPermissionsBatchUpdate' (Maybe Key)
lpbuKey = lens _lpbuKey (\ s a -> s{_lpbuKey = a})

-- | The ID of the asset to which permissions will be added.
lpbuId :: Lens' LayersPermissionsBatchUpdate' Text
lpbuId = lens _lpbuId (\ s a -> s{_lpbuId = a})

-- | OAuth 2.0 token for the current user.
lpbuOAuthToken :: Lens' LayersPermissionsBatchUpdate' (Maybe OAuthToken)
lpbuOAuthToken
  = lens _lpbuOAuthToken
      (\ s a -> s{_lpbuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lpbuFields :: Lens' LayersPermissionsBatchUpdate' (Maybe Text)
lpbuFields
  = lens _lpbuFields (\ s a -> s{_lpbuFields = a})

instance GoogleAuth LayersPermissionsBatchUpdate'
         where
        authKey = lpbuKey . _Just
        authToken = lpbuOAuthToken . _Just

instance GoogleRequest LayersPermissionsBatchUpdate'
         where
        type Rs LayersPermissionsBatchUpdate' =
             PermissionsBatchUpdateResponse
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u
          LayersPermissionsBatchUpdate'{..}
          = go _lpbuId _lpbuQuotaUser (Just _lpbuPrettyPrint)
              _lpbuUserIP
              _lpbuFields
              _lpbuKey
              _lpbuOAuthToken
              (Just AltJSON)
              _lpbuPermissionsBatchUpdateRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LayersPermissionsBatchUpdateResource)
                      r
                      u
