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
-- Module      : Network.Google.Resource.Compute.BackendServices.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the entire content of the BackendService resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeBackendServicesUpdate@.
module Network.Google.Resource.Compute.BackendServices.Update
    (
    -- * REST Resource
      BackendServicesUpdateResource

    -- * Creating a Request
    , backendServicesUpdate'
    , BackendServicesUpdate'

    -- * Request Lenses
    , bsuQuotaUser
    , bsuPrettyPrint
    , bsuProject
    , bsuUserIP
    , bsuPayload
    , bsuKey
    , bsuOAuthToken
    , bsuFields
    , bsuBackendService
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeBackendServicesUpdate@ which the
-- 'BackendServicesUpdate'' request conforms to.
type BackendServicesUpdateResource =
     Capture "project" Text :>
       "global" :>
         "backendServices" :>
           Capture "backendService" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] BackendService :>
                             Put '[JSON] Operation

-- | Update the entire content of the BackendService resource.
--
-- /See:/ 'backendServicesUpdate'' smart constructor.
data BackendServicesUpdate' = BackendServicesUpdate'
    { _bsuQuotaUser      :: !(Maybe Text)
    , _bsuPrettyPrint    :: !Bool
    , _bsuProject        :: !Text
    , _bsuUserIP         :: !(Maybe Text)
    , _bsuPayload        :: !BackendService
    , _bsuKey            :: !(Maybe AuthKey)
    , _bsuOAuthToken     :: !(Maybe OAuthToken)
    , _bsuFields         :: !(Maybe Text)
    , _bsuBackendService :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServicesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsuQuotaUser'
--
-- * 'bsuPrettyPrint'
--
-- * 'bsuProject'
--
-- * 'bsuUserIP'
--
-- * 'bsuPayload'
--
-- * 'bsuKey'
--
-- * 'bsuOAuthToken'
--
-- * 'bsuFields'
--
-- * 'bsuBackendService'
backendServicesUpdate'
    :: Text -- ^ 'project'
    -> BackendService -- ^ 'payload'
    -> Text -- ^ 'backendService'
    -> BackendServicesUpdate'
backendServicesUpdate' pBsuProject_ pBsuPayload_ pBsuBackendService_ =
    BackendServicesUpdate'
    { _bsuQuotaUser = Nothing
    , _bsuPrettyPrint = True
    , _bsuProject = pBsuProject_
    , _bsuUserIP = Nothing
    , _bsuPayload = pBsuPayload_
    , _bsuKey = Nothing
    , _bsuOAuthToken = Nothing
    , _bsuFields = Nothing
    , _bsuBackendService = pBsuBackendService_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bsuQuotaUser :: Lens' BackendServicesUpdate' (Maybe Text)
bsuQuotaUser
  = lens _bsuQuotaUser (\ s a -> s{_bsuQuotaUser = a})

-- | Returns response with indentations and line breaks.
bsuPrettyPrint :: Lens' BackendServicesUpdate' Bool
bsuPrettyPrint
  = lens _bsuPrettyPrint
      (\ s a -> s{_bsuPrettyPrint = a})

-- | Name of the project scoping this request.
bsuProject :: Lens' BackendServicesUpdate' Text
bsuProject
  = lens _bsuProject (\ s a -> s{_bsuProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bsuUserIP :: Lens' BackendServicesUpdate' (Maybe Text)
bsuUserIP
  = lens _bsuUserIP (\ s a -> s{_bsuUserIP = a})

-- | Multipart request metadata.
bsuPayload :: Lens' BackendServicesUpdate' BackendService
bsuPayload
  = lens _bsuPayload (\ s a -> s{_bsuPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bsuKey :: Lens' BackendServicesUpdate' (Maybe AuthKey)
bsuKey = lens _bsuKey (\ s a -> s{_bsuKey = a})

-- | OAuth 2.0 token for the current user.
bsuOAuthToken :: Lens' BackendServicesUpdate' (Maybe OAuthToken)
bsuOAuthToken
  = lens _bsuOAuthToken
      (\ s a -> s{_bsuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
bsuFields :: Lens' BackendServicesUpdate' (Maybe Text)
bsuFields
  = lens _bsuFields (\ s a -> s{_bsuFields = a})

-- | Name of the BackendService resource to update.
bsuBackendService :: Lens' BackendServicesUpdate' Text
bsuBackendService
  = lens _bsuBackendService
      (\ s a -> s{_bsuBackendService = a})

instance GoogleAuth BackendServicesUpdate' where
        authKey = bsuKey . _Just
        authToken = bsuOAuthToken . _Just

instance GoogleRequest BackendServicesUpdate' where
        type Rs BackendServicesUpdate' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u BackendServicesUpdate'{..}
          = go _bsuProject _bsuBackendService _bsuQuotaUser
              (Just _bsuPrettyPrint)
              _bsuUserIP
              _bsuFields
              _bsuKey
              _bsuOAuthToken
              (Just AltJSON)
              _bsuPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BackendServicesUpdateResource)
                      r
                      u
