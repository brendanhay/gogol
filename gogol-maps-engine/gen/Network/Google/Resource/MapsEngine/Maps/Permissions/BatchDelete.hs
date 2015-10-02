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
-- Module      : Network.Google.Resource.MapsEngine.Maps.Permissions.BatchDelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Remove permission entries from an already existing asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineMapsPermissionsBatchDelete@.
module Network.Google.Resource.MapsEngine.Maps.Permissions.BatchDelete
    (
    -- * REST Resource
      MapsPermissionsBatchDeleteResource

    -- * Creating a Request
    , mapsPermissionsBatchDelete'
    , MapsPermissionsBatchDelete'

    -- * Request Lenses
    , mpbdPermissionsBatchDeleteRequest
    , mpbdQuotaUser
    , mpbdPrettyPrint
    , mpbdUserIP
    , mpbdKey
    , mpbdId
    , mpbdOAuthToken
    , mpbdFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineMapsPermissionsBatchDelete@ which the
-- 'MapsPermissionsBatchDelete'' request conforms to.
type MapsPermissionsBatchDeleteResource =
     "maps" :>
       Capture "id" Text :>
         "permissions" :>
           "batchDelete" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] PermissionsBatchDeleteRequest :>
                             Post '[JSON] PermissionsBatchDeleteResponse

-- | Remove permission entries from an already existing asset.
--
-- /See:/ 'mapsPermissionsBatchDelete'' smart constructor.
data MapsPermissionsBatchDelete' = MapsPermissionsBatchDelete'
    { _mpbdPermissionsBatchDeleteRequest :: !PermissionsBatchDeleteRequest
    , _mpbdQuotaUser                     :: !(Maybe Text)
    , _mpbdPrettyPrint                   :: !Bool
    , _mpbdUserIP                        :: !(Maybe Text)
    , _mpbdKey                           :: !(Maybe Key)
    , _mpbdId                            :: !Text
    , _mpbdOAuthToken                    :: !(Maybe OAuthToken)
    , _mpbdFields                        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsPermissionsBatchDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpbdPermissionsBatchDeleteRequest'
--
-- * 'mpbdQuotaUser'
--
-- * 'mpbdPrettyPrint'
--
-- * 'mpbdUserIP'
--
-- * 'mpbdKey'
--
-- * 'mpbdId'
--
-- * 'mpbdOAuthToken'
--
-- * 'mpbdFields'
mapsPermissionsBatchDelete'
    :: PermissionsBatchDeleteRequest -- ^ 'PermissionsBatchDeleteRequest'
    -> Text -- ^ 'id'
    -> MapsPermissionsBatchDelete'
mapsPermissionsBatchDelete' pMpbdPermissionsBatchDeleteRequest_ pMpbdId_ =
    MapsPermissionsBatchDelete'
    { _mpbdPermissionsBatchDeleteRequest = pMpbdPermissionsBatchDeleteRequest_
    , _mpbdQuotaUser = Nothing
    , _mpbdPrettyPrint = True
    , _mpbdUserIP = Nothing
    , _mpbdKey = Nothing
    , _mpbdId = pMpbdId_
    , _mpbdOAuthToken = Nothing
    , _mpbdFields = Nothing
    }

-- | Multipart request metadata.
mpbdPermissionsBatchDeleteRequest :: Lens' MapsPermissionsBatchDelete' PermissionsBatchDeleteRequest
mpbdPermissionsBatchDeleteRequest
  = lens _mpbdPermissionsBatchDeleteRequest
      (\ s a -> s{_mpbdPermissionsBatchDeleteRequest = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpbdQuotaUser :: Lens' MapsPermissionsBatchDelete' (Maybe Text)
mpbdQuotaUser
  = lens _mpbdQuotaUser
      (\ s a -> s{_mpbdQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpbdPrettyPrint :: Lens' MapsPermissionsBatchDelete' Bool
mpbdPrettyPrint
  = lens _mpbdPrettyPrint
      (\ s a -> s{_mpbdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpbdUserIP :: Lens' MapsPermissionsBatchDelete' (Maybe Text)
mpbdUserIP
  = lens _mpbdUserIP (\ s a -> s{_mpbdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpbdKey :: Lens' MapsPermissionsBatchDelete' (Maybe Key)
mpbdKey = lens _mpbdKey (\ s a -> s{_mpbdKey = a})

-- | The ID of the asset from which permissions will be removed.
mpbdId :: Lens' MapsPermissionsBatchDelete' Text
mpbdId = lens _mpbdId (\ s a -> s{_mpbdId = a})

-- | OAuth 2.0 token for the current user.
mpbdOAuthToken :: Lens' MapsPermissionsBatchDelete' (Maybe OAuthToken)
mpbdOAuthToken
  = lens _mpbdOAuthToken
      (\ s a -> s{_mpbdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpbdFields :: Lens' MapsPermissionsBatchDelete' (Maybe Text)
mpbdFields
  = lens _mpbdFields (\ s a -> s{_mpbdFields = a})

instance GoogleAuth MapsPermissionsBatchDelete' where
        authKey = mpbdKey . _Just
        authToken = mpbdOAuthToken . _Just

instance GoogleRequest MapsPermissionsBatchDelete'
         where
        type Rs MapsPermissionsBatchDelete' =
             PermissionsBatchDeleteResponse
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u MapsPermissionsBatchDelete'{..}
          = go _mpbdQuotaUser (Just _mpbdPrettyPrint)
              _mpbdUserIP
              _mpbdKey
              _mpbdId
              _mpbdOAuthToken
              _mpbdFields
              (Just AltJSON)
              _mpbdPermissionsBatchDeleteRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MapsPermissionsBatchDeleteResource)
                      r
                      u
