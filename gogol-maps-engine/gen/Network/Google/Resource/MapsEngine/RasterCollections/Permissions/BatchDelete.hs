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
-- Module      : Network.Google.Resource.MapsEngine.RasterCollections.Permissions.BatchDelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Remove permission entries from an already existing asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRasterCollectionsPermissionsBatchDelete@.
module Network.Google.Resource.MapsEngine.RasterCollections.Permissions.BatchDelete
    (
    -- * REST Resource
      RasterCollectionsPermissionsBatchDeleteResource

    -- * Creating a Request
    , rasterCollectionsPermissionsBatchDelete'
    , RasterCollectionsPermissionsBatchDelete'

    -- * Request Lenses
    , rcpbdPermissionsBatchDeleteRequest
    , rcpbdQuotaUser
    , rcpbdPrettyPrint
    , rcpbdUserIP
    , rcpbdKey
    , rcpbdId
    , rcpbdOAuthToken
    , rcpbdFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRasterCollectionsPermissionsBatchDelete@ which the
-- 'RasterCollectionsPermissionsBatchDelete'' request conforms to.
type RasterCollectionsPermissionsBatchDeleteResource
     =
     "rasterCollections" :>
       Capture "id" Text :>
         "permissions" :>
           "batchDelete" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] PermissionsBatchDeleteRequest :>
                             Post '[JSON] PermissionsBatchDeleteResponse

-- | Remove permission entries from an already existing asset.
--
-- /See:/ 'rasterCollectionsPermissionsBatchDelete'' smart constructor.
data RasterCollectionsPermissionsBatchDelete' = RasterCollectionsPermissionsBatchDelete'
    { _rcpbdPermissionsBatchDeleteRequest :: !PermissionsBatchDeleteRequest
    , _rcpbdQuotaUser                     :: !(Maybe Text)
    , _rcpbdPrettyPrint                   :: !Bool
    , _rcpbdUserIP                        :: !(Maybe Text)
    , _rcpbdKey                           :: !(Maybe Key)
    , _rcpbdId                            :: !Text
    , _rcpbdOAuthToken                    :: !(Maybe OAuthToken)
    , _rcpbdFields                        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsPermissionsBatchDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcpbdPermissionsBatchDeleteRequest'
--
-- * 'rcpbdQuotaUser'
--
-- * 'rcpbdPrettyPrint'
--
-- * 'rcpbdUserIP'
--
-- * 'rcpbdKey'
--
-- * 'rcpbdId'
--
-- * 'rcpbdOAuthToken'
--
-- * 'rcpbdFields'
rasterCollectionsPermissionsBatchDelete'
    :: PermissionsBatchDeleteRequest -- ^ 'PermissionsBatchDeleteRequest'
    -> Text -- ^ 'id'
    -> RasterCollectionsPermissionsBatchDelete'
rasterCollectionsPermissionsBatchDelete' pRcpbdPermissionsBatchDeleteRequest_ pRcpbdId_ =
    RasterCollectionsPermissionsBatchDelete'
    { _rcpbdPermissionsBatchDeleteRequest = pRcpbdPermissionsBatchDeleteRequest_
    , _rcpbdQuotaUser = Nothing
    , _rcpbdPrettyPrint = True
    , _rcpbdUserIP = Nothing
    , _rcpbdKey = Nothing
    , _rcpbdId = pRcpbdId_
    , _rcpbdOAuthToken = Nothing
    , _rcpbdFields = Nothing
    }

-- | Multipart request metadata.
rcpbdPermissionsBatchDeleteRequest :: Lens' RasterCollectionsPermissionsBatchDelete' PermissionsBatchDeleteRequest
rcpbdPermissionsBatchDeleteRequest
  = lens _rcpbdPermissionsBatchDeleteRequest
      (\ s a -> s{_rcpbdPermissionsBatchDeleteRequest = a})

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
rcpbdUserIP :: Lens' RasterCollectionsPermissionsBatchDelete' (Maybe Text)
rcpbdUserIP
  = lens _rcpbdUserIP (\ s a -> s{_rcpbdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcpbdKey :: Lens' RasterCollectionsPermissionsBatchDelete' (Maybe Key)
rcpbdKey = lens _rcpbdKey (\ s a -> s{_rcpbdKey = a})

-- | The ID of the asset from which permissions will be removed.
rcpbdId :: Lens' RasterCollectionsPermissionsBatchDelete' Text
rcpbdId = lens _rcpbdId (\ s a -> s{_rcpbdId = a})

-- | OAuth 2.0 token for the current user.
rcpbdOAuthToken :: Lens' RasterCollectionsPermissionsBatchDelete' (Maybe OAuthToken)
rcpbdOAuthToken
  = lens _rcpbdOAuthToken
      (\ s a -> s{_rcpbdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcpbdFields :: Lens' RasterCollectionsPermissionsBatchDelete' (Maybe Text)
rcpbdFields
  = lens _rcpbdFields (\ s a -> s{_rcpbdFields = a})

instance GoogleAuth
         RasterCollectionsPermissionsBatchDelete' where
        authKey = rcpbdKey . _Just
        authToken = rcpbdOAuthToken . _Just

instance GoogleRequest
         RasterCollectionsPermissionsBatchDelete' where
        type Rs RasterCollectionsPermissionsBatchDelete' =
             PermissionsBatchDeleteResponse
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u
          RasterCollectionsPermissionsBatchDelete'{..}
          = go _rcpbdId _rcpbdQuotaUser
              (Just _rcpbdPrettyPrint)
              _rcpbdUserIP
              _rcpbdFields
              _rcpbdKey
              _rcpbdOAuthToken
              (Just AltJSON)
              _rcpbdPermissionsBatchDeleteRequest
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy
                           RasterCollectionsPermissionsBatchDeleteResource)
                      r
                      u
