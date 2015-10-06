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
-- Module      : Network.Google.Resource.MapsEngine.Rasters.Permissions.BatchDelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Remove permission entries from an already existing asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRastersPermissionsBatchDelete@.
module Network.Google.Resource.MapsEngine.Rasters.Permissions.BatchDelete
    (
    -- * REST Resource
      RastersPermissionsBatchDeleteResource

    -- * Creating a Request
    , rastersPermissionsBatchDelete'
    , RastersPermissionsBatchDelete'

    -- * Request Lenses
    , rpbdQuotaUser
    , rpbdPrettyPrint
    , rpbdUserIP
    , rpbdPayload
    , rpbdKey
    , rpbdId
    , rpbdOAuthToken
    , rpbdFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRastersPermissionsBatchDelete@ which the
-- 'RastersPermissionsBatchDelete'' request conforms to.
type RastersPermissionsBatchDeleteResource =
     "rasters" :>
       Capture "id" Text :>
         "permissions" :>
           "batchDelete" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] PermissionsBatchDeleteRequest :>
                             Post '[JSON] PermissionsBatchDeleteResponse

-- | Remove permission entries from an already existing asset.
--
-- /See:/ 'rastersPermissionsBatchDelete'' smart constructor.
data RastersPermissionsBatchDelete' = RastersPermissionsBatchDelete'
    { _rpbdQuotaUser   :: !(Maybe Text)
    , _rpbdPrettyPrint :: !Bool
    , _rpbdUserIP      :: !(Maybe Text)
    , _rpbdPayload     :: !PermissionsBatchDeleteRequest
    , _rpbdKey         :: !(Maybe AuthKey)
    , _rpbdId          :: !Text
    , _rpbdOAuthToken  :: !(Maybe OAuthToken)
    , _rpbdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersPermissionsBatchDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpbdQuotaUser'
--
-- * 'rpbdPrettyPrint'
--
-- * 'rpbdUserIP'
--
-- * 'rpbdPayload'
--
-- * 'rpbdKey'
--
-- * 'rpbdId'
--
-- * 'rpbdOAuthToken'
--
-- * 'rpbdFields'
rastersPermissionsBatchDelete'
    :: PermissionsBatchDeleteRequest -- ^ 'payload'
    -> Text -- ^ 'id'
    -> RastersPermissionsBatchDelete'
rastersPermissionsBatchDelete' pRpbdPayload_ pRpbdId_ =
    RastersPermissionsBatchDelete'
    { _rpbdQuotaUser = Nothing
    , _rpbdPrettyPrint = True
    , _rpbdUserIP = Nothing
    , _rpbdPayload = pRpbdPayload_
    , _rpbdKey = Nothing
    , _rpbdId = pRpbdId_
    , _rpbdOAuthToken = Nothing
    , _rpbdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rpbdQuotaUser :: Lens' RastersPermissionsBatchDelete' (Maybe Text)
rpbdQuotaUser
  = lens _rpbdQuotaUser
      (\ s a -> s{_rpbdQuotaUser = a})

-- | Returns response with indentations and line breaks.
rpbdPrettyPrint :: Lens' RastersPermissionsBatchDelete' Bool
rpbdPrettyPrint
  = lens _rpbdPrettyPrint
      (\ s a -> s{_rpbdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rpbdUserIP :: Lens' RastersPermissionsBatchDelete' (Maybe Text)
rpbdUserIP
  = lens _rpbdUserIP (\ s a -> s{_rpbdUserIP = a})

-- | Multipart request metadata.
rpbdPayload :: Lens' RastersPermissionsBatchDelete' PermissionsBatchDeleteRequest
rpbdPayload
  = lens _rpbdPayload (\ s a -> s{_rpbdPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpbdKey :: Lens' RastersPermissionsBatchDelete' (Maybe AuthKey)
rpbdKey = lens _rpbdKey (\ s a -> s{_rpbdKey = a})

-- | The ID of the asset from which permissions will be removed.
rpbdId :: Lens' RastersPermissionsBatchDelete' Text
rpbdId = lens _rpbdId (\ s a -> s{_rpbdId = a})

-- | OAuth 2.0 token for the current user.
rpbdOAuthToken :: Lens' RastersPermissionsBatchDelete' (Maybe OAuthToken)
rpbdOAuthToken
  = lens _rpbdOAuthToken
      (\ s a -> s{_rpbdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rpbdFields :: Lens' RastersPermissionsBatchDelete' (Maybe Text)
rpbdFields
  = lens _rpbdFields (\ s a -> s{_rpbdFields = a})

instance GoogleAuth RastersPermissionsBatchDelete'
         where
        authKey = rpbdKey . _Just
        authToken = rpbdOAuthToken . _Just

instance GoogleRequest RastersPermissionsBatchDelete'
         where
        type Rs RastersPermissionsBatchDelete' =
             PermissionsBatchDeleteResponse
        request = requestWith mapsEngineRequest
        requestWith rq RastersPermissionsBatchDelete'{..}
          = go _rpbdId _rpbdQuotaUser (Just _rpbdPrettyPrint)
              _rpbdUserIP
              _rpbdFields
              _rpbdKey
              _rpbdOAuthToken
              (Just AltJSON)
              _rpbdPayload
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy RastersPermissionsBatchDeleteResource)
                      rq
