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
-- Module      : Network.Google.Resource.ServiceManagement.Services.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/service-management/ Google Service Management API Reference> for @servicemanagement.services.getIamPolicy@.
module Network.Google.Resource.ServiceManagement.Services.GetIAMPolicy
    (
    -- * REST Resource
      ServicesGetIAMPolicyResource

    -- * Creating a Request
    , servicesGetIAMPolicy
    , ServicesGetIAMPolicy

    -- * Request Lenses
    , sgipXgafv
    , sgipUploadProtocol
    , sgipPp
    , sgipAccessToken
    , sgipUploadType
    , sgipPayload
    , sgipBearerToken
    , sgipResource
    , sgipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.getIamPolicy@ method which the
-- 'ServicesGetIAMPolicy' request conforms to.
type ServicesGetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] GetIAMPolicyRequest :>
                           Post '[JSON] Policy

-- | Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ 'servicesGetIAMPolicy' smart constructor.
data ServicesGetIAMPolicy = ServicesGetIAMPolicy'
    { _sgipXgafv          :: !(Maybe Xgafv)
    , _sgipUploadProtocol :: !(Maybe Text)
    , _sgipPp             :: !Bool
    , _sgipAccessToken    :: !(Maybe Text)
    , _sgipUploadType     :: !(Maybe Text)
    , _sgipPayload        :: !GetIAMPolicyRequest
    , _sgipBearerToken    :: !(Maybe Text)
    , _sgipResource       :: !Text
    , _sgipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServicesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgipXgafv'
--
-- * 'sgipUploadProtocol'
--
-- * 'sgipPp'
--
-- * 'sgipAccessToken'
--
-- * 'sgipUploadType'
--
-- * 'sgipPayload'
--
-- * 'sgipBearerToken'
--
-- * 'sgipResource'
--
-- * 'sgipCallback'
servicesGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'sgipPayload'
    -> Text -- ^ 'sgipResource'
    -> ServicesGetIAMPolicy
servicesGetIAMPolicy pSgipPayload_ pSgipResource_ =
    ServicesGetIAMPolicy'
    { _sgipXgafv = Nothing
    , _sgipUploadProtocol = Nothing
    , _sgipPp = True
    , _sgipAccessToken = Nothing
    , _sgipUploadType = Nothing
    , _sgipPayload = pSgipPayload_
    , _sgipBearerToken = Nothing
    , _sgipResource = pSgipResource_
    , _sgipCallback = Nothing
    }

-- | V1 error format.
sgipXgafv :: Lens' ServicesGetIAMPolicy (Maybe Xgafv)
sgipXgafv
  = lens _sgipXgafv (\ s a -> s{_sgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sgipUploadProtocol :: Lens' ServicesGetIAMPolicy (Maybe Text)
sgipUploadProtocol
  = lens _sgipUploadProtocol
      (\ s a -> s{_sgipUploadProtocol = a})

-- | Pretty-print response.
sgipPp :: Lens' ServicesGetIAMPolicy Bool
sgipPp = lens _sgipPp (\ s a -> s{_sgipPp = a})

-- | OAuth access token.
sgipAccessToken :: Lens' ServicesGetIAMPolicy (Maybe Text)
sgipAccessToken
  = lens _sgipAccessToken
      (\ s a -> s{_sgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sgipUploadType :: Lens' ServicesGetIAMPolicy (Maybe Text)
sgipUploadType
  = lens _sgipUploadType
      (\ s a -> s{_sgipUploadType = a})

-- | Multipart request metadata.
sgipPayload :: Lens' ServicesGetIAMPolicy GetIAMPolicyRequest
sgipPayload
  = lens _sgipPayload (\ s a -> s{_sgipPayload = a})

-- | OAuth bearer token.
sgipBearerToken :: Lens' ServicesGetIAMPolicy (Maybe Text)
sgipBearerToken
  = lens _sgipBearerToken
      (\ s a -> s{_sgipBearerToken = a})

-- | REQUIRED: The resource for which the policy is being requested.
-- \`resource\` is usually specified as a path. For example, a Project
-- resource is specified as \`projects\/{project}\`.
sgipResource :: Lens' ServicesGetIAMPolicy Text
sgipResource
  = lens _sgipResource (\ s a -> s{_sgipResource = a})

-- | JSONP
sgipCallback :: Lens' ServicesGetIAMPolicy (Maybe Text)
sgipCallback
  = lens _sgipCallback (\ s a -> s{_sgipCallback = a})

instance GoogleRequest ServicesGetIAMPolicy where
        type Rs ServicesGetIAMPolicy = Policy
        type Scopes ServicesGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesGetIAMPolicy'{..}
          = go _sgipResource _sgipXgafv _sgipUploadProtocol
              (Just _sgipPp)
              _sgipAccessToken
              _sgipUploadType
              _sgipBearerToken
              _sgipCallback
              (Just AltJSON)
              _sgipPayload
              serviceManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesGetIAMPolicyResource)
                      mempty
