{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.MapsEngine.RasterCollections.Permissions.BatchUpdate
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
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRasterCollectionsPermissionsBatchUpdate@.
module Network.Google.Resource.MapsEngine.RasterCollections.Permissions.BatchUpdate
    (
    -- * REST Resource
      RasterCollectionsPermissionsBatchUpdateResource

    -- * Creating a Request
    , rasterCollectionsPermissionsBatchUpdate'
    , RasterCollectionsPermissionsBatchUpdate'

    -- * Request Lenses
    , rcpbuQuotaUser
    , rcpbuPrettyPrint
    , rcpbuUserIP
    , rcpbuPayload
    , rcpbuKey
    , rcpbuId
    , rcpbuOAuthToken
    , rcpbuFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRasterCollectionsPermissionsBatchUpdate@ which the
-- 'RasterCollectionsPermissionsBatchUpdate'' request conforms to.
type RasterCollectionsPermissionsBatchUpdateResource
     =
     "rasterCollections" :>
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
-- /See:/ 'rasterCollectionsPermissionsBatchUpdate'' smart constructor.
data RasterCollectionsPermissionsBatchUpdate' = RasterCollectionsPermissionsBatchUpdate'
    { _rcpbuQuotaUser   :: !(Maybe Text)
    , _rcpbuPrettyPrint :: !Bool
    , _rcpbuUserIP      :: !(Maybe Text)
    , _rcpbuPayload     :: !PermissionsBatchUpdateRequest
    , _rcpbuKey         :: !(Maybe Key)
    , _rcpbuId          :: !Text
    , _rcpbuOAuthToken  :: !(Maybe OAuthToken)
    , _rcpbuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsPermissionsBatchUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcpbuQuotaUser'
--
-- * 'rcpbuPrettyPrint'
--
-- * 'rcpbuUserIP'
--
-- * 'rcpbuPayload'
--
-- * 'rcpbuKey'
--
-- * 'rcpbuId'
--
-- * 'rcpbuOAuthToken'
--
-- * 'rcpbuFields'
rasterCollectionsPermissionsBatchUpdate'
    :: PermissionsBatchUpdateRequest -- ^ 'payload'
    -> Text -- ^ 'id'
    -> RasterCollectionsPermissionsBatchUpdate'
rasterCollectionsPermissionsBatchUpdate' pRcpbuPayload_ pRcpbuId_ =
    RasterCollectionsPermissionsBatchUpdate'
    { _rcpbuQuotaUser = Nothing
    , _rcpbuPrettyPrint = True
    , _rcpbuUserIP = Nothing
    , _rcpbuPayload = pRcpbuPayload_
    , _rcpbuKey = Nothing
    , _rcpbuId = pRcpbuId_
    , _rcpbuOAuthToken = Nothing
    , _rcpbuFields = Nothing
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
rcpbuUserIP :: Lens' RasterCollectionsPermissionsBatchUpdate' (Maybe Text)
rcpbuUserIP
  = lens _rcpbuUserIP (\ s a -> s{_rcpbuUserIP = a})

-- | Multipart request metadata.
rcpbuPayload :: Lens' RasterCollectionsPermissionsBatchUpdate' PermissionsBatchUpdateRequest
rcpbuPayload
  = lens _rcpbuPayload (\ s a -> s{_rcpbuPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcpbuKey :: Lens' RasterCollectionsPermissionsBatchUpdate' (Maybe Key)
rcpbuKey = lens _rcpbuKey (\ s a -> s{_rcpbuKey = a})

-- | The ID of the asset to which permissions will be added.
rcpbuId :: Lens' RasterCollectionsPermissionsBatchUpdate' Text
rcpbuId = lens _rcpbuId (\ s a -> s{_rcpbuId = a})

-- | OAuth 2.0 token for the current user.
rcpbuOAuthToken :: Lens' RasterCollectionsPermissionsBatchUpdate' (Maybe OAuthToken)
rcpbuOAuthToken
  = lens _rcpbuOAuthToken
      (\ s a -> s{_rcpbuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcpbuFields :: Lens' RasterCollectionsPermissionsBatchUpdate' (Maybe Text)
rcpbuFields
  = lens _rcpbuFields (\ s a -> s{_rcpbuFields = a})

instance GoogleAuth
         RasterCollectionsPermissionsBatchUpdate' where
        authKey = rcpbuKey . _Just
        authToken = rcpbuOAuthToken . _Just

instance GoogleRequest
         RasterCollectionsPermissionsBatchUpdate' where
        type Rs RasterCollectionsPermissionsBatchUpdate' =
             PermissionsBatchUpdateResponse
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u
          RasterCollectionsPermissionsBatchUpdate'{..}
          = go _rcpbuId _rcpbuQuotaUser
              (Just _rcpbuPrettyPrint)
              _rcpbuUserIP
              _rcpbuFields
              _rcpbuKey
              _rcpbuOAuthToken
              (Just AltJSON)
              _rcpbuPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy
                           RasterCollectionsPermissionsBatchUpdateResource)
                      r
                      u
