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
-- Module      : Network.Google.Resource.MapsEngine.Maps.Permissions.BatchUpdate
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
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineMapsPermissionsBatchUpdate@.
module Network.Google.Resource.MapsEngine.Maps.Permissions.BatchUpdate
    (
    -- * REST Resource
      MapsPermissionsBatchUpdateResource

    -- * Creating a Request
    , mapsPermissionsBatchUpdate'
    , MapsPermissionsBatchUpdate'

    -- * Request Lenses
    , mpbuQuotaUser
    , mpbuPrettyPrint
    , mpbuUserIP
    , mpbuPayload
    , mpbuKey
    , mpbuId
    , mpbuOAuthToken
    , mpbuFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineMapsPermissionsBatchUpdate@ which the
-- 'MapsPermissionsBatchUpdate'' request conforms to.
type MapsPermissionsBatchUpdateResource =
     "maps" :>
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
-- /See:/ 'mapsPermissionsBatchUpdate'' smart constructor.
data MapsPermissionsBatchUpdate' = MapsPermissionsBatchUpdate'
    { _mpbuQuotaUser   :: !(Maybe Text)
    , _mpbuPrettyPrint :: !Bool
    , _mpbuUserIP      :: !(Maybe Text)
    , _mpbuPayload     :: !PermissionsBatchUpdateRequest
    , _mpbuKey         :: !(Maybe Key)
    , _mpbuId          :: !Text
    , _mpbuOAuthToken  :: !(Maybe OAuthToken)
    , _mpbuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsPermissionsBatchUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpbuQuotaUser'
--
-- * 'mpbuPrettyPrint'
--
-- * 'mpbuUserIP'
--
-- * 'mpbuPayload'
--
-- * 'mpbuKey'
--
-- * 'mpbuId'
--
-- * 'mpbuOAuthToken'
--
-- * 'mpbuFields'
mapsPermissionsBatchUpdate'
    :: PermissionsBatchUpdateRequest -- ^ 'payload'
    -> Text -- ^ 'id'
    -> MapsPermissionsBatchUpdate'
mapsPermissionsBatchUpdate' pMpbuPayload_ pMpbuId_ =
    MapsPermissionsBatchUpdate'
    { _mpbuQuotaUser = Nothing
    , _mpbuPrettyPrint = True
    , _mpbuUserIP = Nothing
    , _mpbuPayload = pMpbuPayload_
    , _mpbuKey = Nothing
    , _mpbuId = pMpbuId_
    , _mpbuOAuthToken = Nothing
    , _mpbuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpbuQuotaUser :: Lens' MapsPermissionsBatchUpdate' (Maybe Text)
mpbuQuotaUser
  = lens _mpbuQuotaUser
      (\ s a -> s{_mpbuQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpbuPrettyPrint :: Lens' MapsPermissionsBatchUpdate' Bool
mpbuPrettyPrint
  = lens _mpbuPrettyPrint
      (\ s a -> s{_mpbuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpbuUserIP :: Lens' MapsPermissionsBatchUpdate' (Maybe Text)
mpbuUserIP
  = lens _mpbuUserIP (\ s a -> s{_mpbuUserIP = a})

-- | Multipart request metadata.
mpbuPayload :: Lens' MapsPermissionsBatchUpdate' PermissionsBatchUpdateRequest
mpbuPayload
  = lens _mpbuPayload (\ s a -> s{_mpbuPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpbuKey :: Lens' MapsPermissionsBatchUpdate' (Maybe Key)
mpbuKey = lens _mpbuKey (\ s a -> s{_mpbuKey = a})

-- | The ID of the asset to which permissions will be added.
mpbuId :: Lens' MapsPermissionsBatchUpdate' Text
mpbuId = lens _mpbuId (\ s a -> s{_mpbuId = a})

-- | OAuth 2.0 token for the current user.
mpbuOAuthToken :: Lens' MapsPermissionsBatchUpdate' (Maybe OAuthToken)
mpbuOAuthToken
  = lens _mpbuOAuthToken
      (\ s a -> s{_mpbuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpbuFields :: Lens' MapsPermissionsBatchUpdate' (Maybe Text)
mpbuFields
  = lens _mpbuFields (\ s a -> s{_mpbuFields = a})

instance GoogleAuth MapsPermissionsBatchUpdate' where
        authKey = mpbuKey . _Just
        authToken = mpbuOAuthToken . _Just

instance GoogleRequest MapsPermissionsBatchUpdate'
         where
        type Rs MapsPermissionsBatchUpdate' =
             PermissionsBatchUpdateResponse
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u MapsPermissionsBatchUpdate'{..}
          = go _mpbuId _mpbuQuotaUser (Just _mpbuPrettyPrint)
              _mpbuUserIP
              _mpbuFields
              _mpbuKey
              _mpbuOAuthToken
              (Just AltJSON)
              _mpbuPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MapsPermissionsBatchUpdateResource)
                      r
                      u
