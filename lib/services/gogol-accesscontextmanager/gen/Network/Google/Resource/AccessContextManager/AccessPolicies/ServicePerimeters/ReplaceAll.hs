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
-- Module      : Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.ReplaceAll
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replace all existing Service Perimeters in an Access Policy with the
-- Service Perimeters provided. This is done atomically. The longrunning
-- operation from this RPC will have a successful status once all
-- replacements have propagated to long-lasting storage. Replacements
-- containing errors will result in an error response for the first error
-- encountered. Replacement will be cancelled on error, existing Service
-- Perimeters will not be affected. Operation.response field will contain
-- ReplaceServicePerimetersResponse.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.servicePerimeters.replaceAll@.
module Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.ReplaceAll
    (
    -- * REST Resource
      AccessPoliciesServicePerimetersReplaceAllResource

    -- * Creating a Request
    , accessPoliciesServicePerimetersReplaceAll
    , AccessPoliciesServicePerimetersReplaceAll

    -- * Request Lenses
    , apspraParent
    , apspraXgafv
    , apspraUploadProtocol
    , apspraAccessToken
    , apspraUploadType
    , apspraPayload
    , apspraCallback
    ) where

import Network.Google.AccessContextManager.Types
import Network.Google.Prelude

-- | A resource alias for @accesscontextmanager.accessPolicies.servicePerimeters.replaceAll@ method which the
-- 'AccessPoliciesServicePerimetersReplaceAll' request conforms to.
type AccessPoliciesServicePerimetersReplaceAllResource
     =
     "v1" :>
       Capture "parent" Text :>
         "servicePerimeters:replaceAll" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ReplaceServicePerimetersRequest :>
                         Post '[JSON] Operation

-- | Replace all existing Service Perimeters in an Access Policy with the
-- Service Perimeters provided. This is done atomically. The longrunning
-- operation from this RPC will have a successful status once all
-- replacements have propagated to long-lasting storage. Replacements
-- containing errors will result in an error response for the first error
-- encountered. Replacement will be cancelled on error, existing Service
-- Perimeters will not be affected. Operation.response field will contain
-- ReplaceServicePerimetersResponse.
--
-- /See:/ 'accessPoliciesServicePerimetersReplaceAll' smart constructor.
data AccessPoliciesServicePerimetersReplaceAll =
  AccessPoliciesServicePerimetersReplaceAll'
    { _apspraParent :: !Text
    , _apspraXgafv :: !(Maybe Xgafv)
    , _apspraUploadProtocol :: !(Maybe Text)
    , _apspraAccessToken :: !(Maybe Text)
    , _apspraUploadType :: !(Maybe Text)
    , _apspraPayload :: !ReplaceServicePerimetersRequest
    , _apspraCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccessPoliciesServicePerimetersReplaceAll' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apspraParent'
--
-- * 'apspraXgafv'
--
-- * 'apspraUploadProtocol'
--
-- * 'apspraAccessToken'
--
-- * 'apspraUploadType'
--
-- * 'apspraPayload'
--
-- * 'apspraCallback'
accessPoliciesServicePerimetersReplaceAll
    :: Text -- ^ 'apspraParent'
    -> ReplaceServicePerimetersRequest -- ^ 'apspraPayload'
    -> AccessPoliciesServicePerimetersReplaceAll
accessPoliciesServicePerimetersReplaceAll pApspraParent_ pApspraPayload_ =
  AccessPoliciesServicePerimetersReplaceAll'
    { _apspraParent = pApspraParent_
    , _apspraXgafv = Nothing
    , _apspraUploadProtocol = Nothing
    , _apspraAccessToken = Nothing
    , _apspraUploadType = Nothing
    , _apspraPayload = pApspraPayload_
    , _apspraCallback = Nothing
    }


-- | Required. Resource name for the access policy which owns these Service
-- Perimeters. Format: \`accessPolicies\/{policy_id}\`
apspraParent :: Lens' AccessPoliciesServicePerimetersReplaceAll Text
apspraParent
  = lens _apspraParent (\ s a -> s{_apspraParent = a})

-- | V1 error format.
apspraXgafv :: Lens' AccessPoliciesServicePerimetersReplaceAll (Maybe Xgafv)
apspraXgafv
  = lens _apspraXgafv (\ s a -> s{_apspraXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apspraUploadProtocol :: Lens' AccessPoliciesServicePerimetersReplaceAll (Maybe Text)
apspraUploadProtocol
  = lens _apspraUploadProtocol
      (\ s a -> s{_apspraUploadProtocol = a})

-- | OAuth access token.
apspraAccessToken :: Lens' AccessPoliciesServicePerimetersReplaceAll (Maybe Text)
apspraAccessToken
  = lens _apspraAccessToken
      (\ s a -> s{_apspraAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apspraUploadType :: Lens' AccessPoliciesServicePerimetersReplaceAll (Maybe Text)
apspraUploadType
  = lens _apspraUploadType
      (\ s a -> s{_apspraUploadType = a})

-- | Multipart request metadata.
apspraPayload :: Lens' AccessPoliciesServicePerimetersReplaceAll ReplaceServicePerimetersRequest
apspraPayload
  = lens _apspraPayload
      (\ s a -> s{_apspraPayload = a})

-- | JSONP
apspraCallback :: Lens' AccessPoliciesServicePerimetersReplaceAll (Maybe Text)
apspraCallback
  = lens _apspraCallback
      (\ s a -> s{_apspraCallback = a})

instance GoogleRequest
           AccessPoliciesServicePerimetersReplaceAll
         where
        type Rs AccessPoliciesServicePerimetersReplaceAll =
             Operation
        type Scopes AccessPoliciesServicePerimetersReplaceAll
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          AccessPoliciesServicePerimetersReplaceAll'{..}
          = go _apspraParent _apspraXgafv _apspraUploadProtocol
              _apspraAccessToken
              _apspraUploadType
              _apspraCallback
              (Just AltJSON)
              _apspraPayload
              accessContextManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           AccessPoliciesServicePerimetersReplaceAllResource)
                      mempty
