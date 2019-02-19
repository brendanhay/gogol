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
-- Module      : Network.Google.Resource.ServiceManagement.Services.Consumers.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/service-management/ Service Management API Reference> for @servicemanagement.services.consumers.getIamPolicy@.
module Network.Google.Resource.ServiceManagement.Services.Consumers.GetIAMPolicy
    (
    -- * REST Resource
      ServicesConsumersGetIAMPolicyResource

    -- * Creating a Request
    , servicesConsumersGetIAMPolicy
    , ServicesConsumersGetIAMPolicy

    -- * Request Lenses
    , scgipXgafv
    , scgipUploadProtocol
    , scgipAccessToken
    , scgipUploadType
    , scgipPayload
    , scgipResource
    , scgipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.consumers.getIamPolicy@ method which the
-- 'ServicesConsumersGetIAMPolicy' request conforms to.
type ServicesConsumersGetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ 'servicesConsumersGetIAMPolicy' smart constructor.
data ServicesConsumersGetIAMPolicy =
  ServicesConsumersGetIAMPolicy'
    { _scgipXgafv          :: !(Maybe Xgafv)
    , _scgipUploadProtocol :: !(Maybe Text)
    , _scgipAccessToken    :: !(Maybe Text)
    , _scgipUploadType     :: !(Maybe Text)
    , _scgipPayload        :: !GetIAMPolicyRequest
    , _scgipResource       :: !Text
    , _scgipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ServicesConsumersGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scgipXgafv'
--
-- * 'scgipUploadProtocol'
--
-- * 'scgipAccessToken'
--
-- * 'scgipUploadType'
--
-- * 'scgipPayload'
--
-- * 'scgipResource'
--
-- * 'scgipCallback'
servicesConsumersGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'scgipPayload'
    -> Text -- ^ 'scgipResource'
    -> ServicesConsumersGetIAMPolicy
servicesConsumersGetIAMPolicy pScgipPayload_ pScgipResource_ =
  ServicesConsumersGetIAMPolicy'
    { _scgipXgafv = Nothing
    , _scgipUploadProtocol = Nothing
    , _scgipAccessToken = Nothing
    , _scgipUploadType = Nothing
    , _scgipPayload = pScgipPayload_
    , _scgipResource = pScgipResource_
    , _scgipCallback = Nothing
    }

-- | V1 error format.
scgipXgafv :: Lens' ServicesConsumersGetIAMPolicy (Maybe Xgafv)
scgipXgafv
  = lens _scgipXgafv (\ s a -> s{_scgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
scgipUploadProtocol :: Lens' ServicesConsumersGetIAMPolicy (Maybe Text)
scgipUploadProtocol
  = lens _scgipUploadProtocol
      (\ s a -> s{_scgipUploadProtocol = a})

-- | OAuth access token.
scgipAccessToken :: Lens' ServicesConsumersGetIAMPolicy (Maybe Text)
scgipAccessToken
  = lens _scgipAccessToken
      (\ s a -> s{_scgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
scgipUploadType :: Lens' ServicesConsumersGetIAMPolicy (Maybe Text)
scgipUploadType
  = lens _scgipUploadType
      (\ s a -> s{_scgipUploadType = a})

-- | Multipart request metadata.
scgipPayload :: Lens' ServicesConsumersGetIAMPolicy GetIAMPolicyRequest
scgipPayload
  = lens _scgipPayload (\ s a -> s{_scgipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
scgipResource :: Lens' ServicesConsumersGetIAMPolicy Text
scgipResource
  = lens _scgipResource
      (\ s a -> s{_scgipResource = a})

-- | JSONP
scgipCallback :: Lens' ServicesConsumersGetIAMPolicy (Maybe Text)
scgipCallback
  = lens _scgipCallback
      (\ s a -> s{_scgipCallback = a})

instance GoogleRequest ServicesConsumersGetIAMPolicy
         where
        type Rs ServicesConsumersGetIAMPolicy = Policy
        type Scopes ServicesConsumersGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/service.management",
               "https://www.googleapis.com/auth/service.management.readonly"]
        requestClient ServicesConsumersGetIAMPolicy'{..}
          = go _scgipResource _scgipXgafv _scgipUploadProtocol
              _scgipAccessToken
              _scgipUploadType
              _scgipCallback
              (Just AltJSON)
              _scgipPayload
              serviceManagementService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ServicesConsumersGetIAMPolicyResource)
                      mempty
