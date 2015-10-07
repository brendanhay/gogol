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
-- Module      : Network.Google.Resource.Compute.BackendServices.GetHealth
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the most recent health check results for this BackendService.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeBackendServicesGetHealth@.
module Network.Google.Resource.Compute.BackendServices.GetHealth
    (
    -- * REST Resource
      BackendServicesGetHealthResource

    -- * Creating a Request
    , backendServicesGetHealth'
    , BackendServicesGetHealth'

    -- * Request Lenses
    , bsghQuotaUser
    , bsghPrettyPrint
    , bsghProject
    , bsghUserIP
    , bsghPayload
    , bsghKey
    , bsghOAuthToken
    , bsghFields
    , bsghBackendService
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeBackendServicesGetHealth@ method which the
-- 'BackendServicesGetHealth'' request conforms to.
type BackendServicesGetHealthResource =
     Capture "project" Text :>
       "global" :>
         "backendServices" :>
           Capture "backendService" Text :>
             "getHealth" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] ResourceGroupReference :>
                               Post '[JSON] BackendServiceGroupHealth

-- | Gets the most recent health check results for this BackendService.
--
-- /See:/ 'backendServicesGetHealth'' smart constructor.
data BackendServicesGetHealth' = BackendServicesGetHealth'
    { _bsghQuotaUser      :: !(Maybe Text)
    , _bsghPrettyPrint    :: !Bool
    , _bsghProject        :: !Text
    , _bsghUserIP         :: !(Maybe Text)
    , _bsghPayload        :: !ResourceGroupReference
    , _bsghKey            :: !(Maybe AuthKey)
    , _bsghOAuthToken     :: !(Maybe OAuthToken)
    , _bsghFields         :: !(Maybe Text)
    , _bsghBackendService :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServicesGetHealth'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsghQuotaUser'
--
-- * 'bsghPrettyPrint'
--
-- * 'bsghProject'
--
-- * 'bsghUserIP'
--
-- * 'bsghPayload'
--
-- * 'bsghKey'
--
-- * 'bsghOAuthToken'
--
-- * 'bsghFields'
--
-- * 'bsghBackendService'
backendServicesGetHealth'
    :: Text -- ^ 'project'
    -> ResourceGroupReference -- ^ 'payload'
    -> Text -- ^ 'backendService'
    -> BackendServicesGetHealth'
backendServicesGetHealth' pBsghProject_ pBsghPayload_ pBsghBackendService_ =
    BackendServicesGetHealth'
    { _bsghQuotaUser = Nothing
    , _bsghPrettyPrint = True
    , _bsghProject = pBsghProject_
    , _bsghUserIP = Nothing
    , _bsghPayload = pBsghPayload_
    , _bsghKey = Nothing
    , _bsghOAuthToken = Nothing
    , _bsghFields = Nothing
    , _bsghBackendService = pBsghBackendService_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bsghQuotaUser :: Lens' BackendServicesGetHealth' (Maybe Text)
bsghQuotaUser
  = lens _bsghQuotaUser
      (\ s a -> s{_bsghQuotaUser = a})

-- | Returns response with indentations and line breaks.
bsghPrettyPrint :: Lens' BackendServicesGetHealth' Bool
bsghPrettyPrint
  = lens _bsghPrettyPrint
      (\ s a -> s{_bsghPrettyPrint = a})

bsghProject :: Lens' BackendServicesGetHealth' Text
bsghProject
  = lens _bsghProject (\ s a -> s{_bsghProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bsghUserIP :: Lens' BackendServicesGetHealth' (Maybe Text)
bsghUserIP
  = lens _bsghUserIP (\ s a -> s{_bsghUserIP = a})

-- | Multipart request metadata.
bsghPayload :: Lens' BackendServicesGetHealth' ResourceGroupReference
bsghPayload
  = lens _bsghPayload (\ s a -> s{_bsghPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bsghKey :: Lens' BackendServicesGetHealth' (Maybe AuthKey)
bsghKey = lens _bsghKey (\ s a -> s{_bsghKey = a})

-- | OAuth 2.0 token for the current user.
bsghOAuthToken :: Lens' BackendServicesGetHealth' (Maybe OAuthToken)
bsghOAuthToken
  = lens _bsghOAuthToken
      (\ s a -> s{_bsghOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
bsghFields :: Lens' BackendServicesGetHealth' (Maybe Text)
bsghFields
  = lens _bsghFields (\ s a -> s{_bsghFields = a})

-- | Name of the BackendService resource to which the queried instance
-- belongs.
bsghBackendService :: Lens' BackendServicesGetHealth' Text
bsghBackendService
  = lens _bsghBackendService
      (\ s a -> s{_bsghBackendService = a})

instance GoogleAuth BackendServicesGetHealth' where
        _AuthKey = bsghKey . _Just
        _AuthToken = bsghOAuthToken . _Just

instance GoogleRequest BackendServicesGetHealth'
         where
        type Rs BackendServicesGetHealth' =
             BackendServiceGroupHealth
        request = requestWith computeRequest
        requestWith rq BackendServicesGetHealth'{..}
          = go _bsghProject _bsghBackendService _bsghQuotaUser
              (Just _bsghPrettyPrint)
              _bsghUserIP
              _bsghFields
              _bsghKey
              _bsghOAuthToken
              (Just AltJSON)
              _bsghPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy BackendServicesGetHealthResource)
                      rq
