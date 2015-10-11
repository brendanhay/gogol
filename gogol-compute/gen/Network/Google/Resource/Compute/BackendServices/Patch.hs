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
-- Module      : Network.Google.Resource.Compute.BackendServices.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the entire content of the BackendService resource. This method
-- supports patch semantics.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeBackendServicesPatch@.
module Network.Google.Resource.Compute.BackendServices.Patch
    (
    -- * REST Resource
      BackendServicesPatchResource

    -- * Creating a Request
    , backendServicesPatch'
    , BackendServicesPatch'

    -- * Request Lenses
    , bspQuotaUser
    , bspPrettyPrint
    , bspProject
    , bspUserIP
    , bspPayload
    , bspKey
    , bspOAuthToken
    , bspFields
    , bspBackendService
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeBackendServicesPatch@ method which the
-- 'BackendServicesPatch'' request conforms to.
type BackendServicesPatchResource =
     Capture "project" Text :>
       "global" :>
         "backendServices" :>
           Capture "backendService" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] BackendService :>
                             Patch '[JSON] Operation

-- | Update the entire content of the BackendService resource. This method
-- supports patch semantics.
--
-- /See:/ 'backendServicesPatch'' smart constructor.
data BackendServicesPatch' = BackendServicesPatch'
    { _bspQuotaUser      :: !(Maybe Text)
    , _bspPrettyPrint    :: !Bool
    , _bspProject        :: !Text
    , _bspUserIP         :: !(Maybe Text)
    , _bspPayload        :: !BackendService
    , _bspKey            :: !(Maybe AuthKey)
    , _bspOAuthToken     :: !(Maybe OAuthToken)
    , _bspFields         :: !(Maybe Text)
    , _bspBackendService :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServicesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bspQuotaUser'
--
-- * 'bspPrettyPrint'
--
-- * 'bspProject'
--
-- * 'bspUserIP'
--
-- * 'bspPayload'
--
-- * 'bspKey'
--
-- * 'bspOAuthToken'
--
-- * 'bspFields'
--
-- * 'bspBackendService'
backendServicesPatch'
    :: Text -- ^ 'project'
    -> BackendService -- ^ 'payload'
    -> Text -- ^ 'backendService'
    -> BackendServicesPatch'
backendServicesPatch' pBspProject_ pBspPayload_ pBspBackendService_ =
    BackendServicesPatch'
    { _bspQuotaUser = Nothing
    , _bspPrettyPrint = True
    , _bspProject = pBspProject_
    , _bspUserIP = Nothing
    , _bspPayload = pBspPayload_
    , _bspKey = Nothing
    , _bspOAuthToken = Nothing
    , _bspFields = Nothing
    , _bspBackendService = pBspBackendService_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bspQuotaUser :: Lens' BackendServicesPatch' (Maybe Text)
bspQuotaUser
  = lens _bspQuotaUser (\ s a -> s{_bspQuotaUser = a})

-- | Returns response with indentations and line breaks.
bspPrettyPrint :: Lens' BackendServicesPatch' Bool
bspPrettyPrint
  = lens _bspPrettyPrint
      (\ s a -> s{_bspPrettyPrint = a})

-- | Name of the project scoping this request.
bspProject :: Lens' BackendServicesPatch' Text
bspProject
  = lens _bspProject (\ s a -> s{_bspProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bspUserIP :: Lens' BackendServicesPatch' (Maybe Text)
bspUserIP
  = lens _bspUserIP (\ s a -> s{_bspUserIP = a})

-- | Multipart request metadata.
bspPayload :: Lens' BackendServicesPatch' BackendService
bspPayload
  = lens _bspPayload (\ s a -> s{_bspPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bspKey :: Lens' BackendServicesPatch' (Maybe AuthKey)
bspKey = lens _bspKey (\ s a -> s{_bspKey = a})

-- | OAuth 2.0 token for the current user.
bspOAuthToken :: Lens' BackendServicesPatch' (Maybe OAuthToken)
bspOAuthToken
  = lens _bspOAuthToken
      (\ s a -> s{_bspOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
bspFields :: Lens' BackendServicesPatch' (Maybe Text)
bspFields
  = lens _bspFields (\ s a -> s{_bspFields = a})

-- | Name of the BackendService resource to update.
bspBackendService :: Lens' BackendServicesPatch' Text
bspBackendService
  = lens _bspBackendService
      (\ s a -> s{_bspBackendService = a})

instance GoogleAuth BackendServicesPatch' where
        _AuthKey = bspKey . _Just
        _AuthToken = bspOAuthToken . _Just

instance GoogleRequest BackendServicesPatch' where
        type Rs BackendServicesPatch' = Operation
        request = requestWith computeRequest
        requestWith rq BackendServicesPatch'{..}
          = go _bspProject _bspBackendService _bspQuotaUser
              (Just _bspPrettyPrint)
              _bspUserIP
              _bspFields
              _bspKey
              _bspOAuthToken
              (Just AltJSON)
              _bspPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy BackendServicesPatchResource)
                      rq
