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
-- Module      : Network.Google.Resource.MapsEngine.Rasters.Permissions.BatchUpdate
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
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRastersPermissionsBatchUpdate@.
module Network.Google.Resource.MapsEngine.Rasters.Permissions.BatchUpdate
    (
    -- * REST Resource
      RastersPermissionsBatchUpdateResource

    -- * Creating a Request
    , rastersPermissionsBatchUpdate'
    , RastersPermissionsBatchUpdate'

    -- * Request Lenses
    , rpbuQuotaUser
    , rpbuPrettyPrint
    , rpbuUserIP
    , rpbuPayload
    , rpbuKey
    , rpbuId
    , rpbuOAuthToken
    , rpbuFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRastersPermissionsBatchUpdate@ which the
-- 'RastersPermissionsBatchUpdate'' request conforms to.
type RastersPermissionsBatchUpdateResource =
     "rasters" :>
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
-- /See:/ 'rastersPermissionsBatchUpdate'' smart constructor.
data RastersPermissionsBatchUpdate' = RastersPermissionsBatchUpdate'
    { _rpbuQuotaUser   :: !(Maybe Text)
    , _rpbuPrettyPrint :: !Bool
    , _rpbuUserIP      :: !(Maybe Text)
    , _rpbuPayload     :: !PermissionsBatchUpdateRequest
    , _rpbuKey         :: !(Maybe Key)
    , _rpbuId          :: !Text
    , _rpbuOAuthToken  :: !(Maybe OAuthToken)
    , _rpbuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersPermissionsBatchUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpbuQuotaUser'
--
-- * 'rpbuPrettyPrint'
--
-- * 'rpbuUserIP'
--
-- * 'rpbuPayload'
--
-- * 'rpbuKey'
--
-- * 'rpbuId'
--
-- * 'rpbuOAuthToken'
--
-- * 'rpbuFields'
rastersPermissionsBatchUpdate'
    :: PermissionsBatchUpdateRequest -- ^ 'payload'
    -> Text -- ^ 'id'
    -> RastersPermissionsBatchUpdate'
rastersPermissionsBatchUpdate' pRpbuPayload_ pRpbuId_ =
    RastersPermissionsBatchUpdate'
    { _rpbuQuotaUser = Nothing
    , _rpbuPrettyPrint = True
    , _rpbuUserIP = Nothing
    , _rpbuPayload = pRpbuPayload_
    , _rpbuKey = Nothing
    , _rpbuId = pRpbuId_
    , _rpbuOAuthToken = Nothing
    , _rpbuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rpbuQuotaUser :: Lens' RastersPermissionsBatchUpdate' (Maybe Text)
rpbuQuotaUser
  = lens _rpbuQuotaUser
      (\ s a -> s{_rpbuQuotaUser = a})

-- | Returns response with indentations and line breaks.
rpbuPrettyPrint :: Lens' RastersPermissionsBatchUpdate' Bool
rpbuPrettyPrint
  = lens _rpbuPrettyPrint
      (\ s a -> s{_rpbuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rpbuUserIP :: Lens' RastersPermissionsBatchUpdate' (Maybe Text)
rpbuUserIP
  = lens _rpbuUserIP (\ s a -> s{_rpbuUserIP = a})

-- | Multipart request metadata.
rpbuPayload :: Lens' RastersPermissionsBatchUpdate' PermissionsBatchUpdateRequest
rpbuPayload
  = lens _rpbuPayload (\ s a -> s{_rpbuPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpbuKey :: Lens' RastersPermissionsBatchUpdate' (Maybe Key)
rpbuKey = lens _rpbuKey (\ s a -> s{_rpbuKey = a})

-- | The ID of the asset to which permissions will be added.
rpbuId :: Lens' RastersPermissionsBatchUpdate' Text
rpbuId = lens _rpbuId (\ s a -> s{_rpbuId = a})

-- | OAuth 2.0 token for the current user.
rpbuOAuthToken :: Lens' RastersPermissionsBatchUpdate' (Maybe OAuthToken)
rpbuOAuthToken
  = lens _rpbuOAuthToken
      (\ s a -> s{_rpbuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rpbuFields :: Lens' RastersPermissionsBatchUpdate' (Maybe Text)
rpbuFields
  = lens _rpbuFields (\ s a -> s{_rpbuFields = a})

instance GoogleAuth RastersPermissionsBatchUpdate'
         where
        authKey = rpbuKey . _Just
        authToken = rpbuOAuthToken . _Just

instance GoogleRequest RastersPermissionsBatchUpdate'
         where
        type Rs RastersPermissionsBatchUpdate' =
             PermissionsBatchUpdateResponse
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u
          RastersPermissionsBatchUpdate'{..}
          = go _rpbuId _rpbuQuotaUser (Just _rpbuPrettyPrint)
              _rpbuUserIP
              _rpbuFields
              _rpbuKey
              _rpbuOAuthToken
              (Just AltJSON)
              _rpbuPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy RastersPermissionsBatchUpdateResource)
                      r
                      u
