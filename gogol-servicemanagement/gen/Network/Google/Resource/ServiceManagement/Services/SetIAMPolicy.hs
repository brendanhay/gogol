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
-- Module      : Network.Google.Resource.ServiceManagement.Services.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://cloud.google.com/service-management/ Service Management API Reference> for @servicemanagement.services.setIamPolicy@.
module Network.Google.Resource.ServiceManagement.Services.SetIAMPolicy
    (
    -- * REST Resource
      ServicesSetIAMPolicyResource

    -- * Creating a Request
    , servicesSetIAMPolicy
    , ServicesSetIAMPolicy

    -- * Request Lenses
    , ssipXgafv
    , ssipUploadProtocol
    , ssipAccessToken
    , ssipUploadType
    , ssipPayload
    , ssipResource
    , ssipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.setIamPolicy@ method which the
-- 'ServicesSetIAMPolicy' request conforms to.
type ServicesSetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'servicesSetIAMPolicy' smart constructor.
data ServicesSetIAMPolicy =
  ServicesSetIAMPolicy'
    { _ssipXgafv          :: !(Maybe Xgafv)
    , _ssipUploadProtocol :: !(Maybe Text)
    , _ssipAccessToken    :: !(Maybe Text)
    , _ssipUploadType     :: !(Maybe Text)
    , _ssipPayload        :: !SetIAMPolicyRequest
    , _ssipResource       :: !Text
    , _ssipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ServicesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssipXgafv'
--
-- * 'ssipUploadProtocol'
--
-- * 'ssipAccessToken'
--
-- * 'ssipUploadType'
--
-- * 'ssipPayload'
--
-- * 'ssipResource'
--
-- * 'ssipCallback'
servicesSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'ssipPayload'
    -> Text -- ^ 'ssipResource'
    -> ServicesSetIAMPolicy
servicesSetIAMPolicy pSsipPayload_ pSsipResource_ =
  ServicesSetIAMPolicy'
    { _ssipXgafv = Nothing
    , _ssipUploadProtocol = Nothing
    , _ssipAccessToken = Nothing
    , _ssipUploadType = Nothing
    , _ssipPayload = pSsipPayload_
    , _ssipResource = pSsipResource_
    , _ssipCallback = Nothing
    }

-- | V1 error format.
ssipXgafv :: Lens' ServicesSetIAMPolicy (Maybe Xgafv)
ssipXgafv
  = lens _ssipXgafv (\ s a -> s{_ssipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ssipUploadProtocol :: Lens' ServicesSetIAMPolicy (Maybe Text)
ssipUploadProtocol
  = lens _ssipUploadProtocol
      (\ s a -> s{_ssipUploadProtocol = a})

-- | OAuth access token.
ssipAccessToken :: Lens' ServicesSetIAMPolicy (Maybe Text)
ssipAccessToken
  = lens _ssipAccessToken
      (\ s a -> s{_ssipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ssipUploadType :: Lens' ServicesSetIAMPolicy (Maybe Text)
ssipUploadType
  = lens _ssipUploadType
      (\ s a -> s{_ssipUploadType = a})

-- | Multipart request metadata.
ssipPayload :: Lens' ServicesSetIAMPolicy SetIAMPolicyRequest
ssipPayload
  = lens _ssipPayload (\ s a -> s{_ssipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
ssipResource :: Lens' ServicesSetIAMPolicy Text
ssipResource
  = lens _ssipResource (\ s a -> s{_ssipResource = a})

-- | JSONP
ssipCallback :: Lens' ServicesSetIAMPolicy (Maybe Text)
ssipCallback
  = lens _ssipCallback (\ s a -> s{_ssipCallback = a})

instance GoogleRequest ServicesSetIAMPolicy where
        type Rs ServicesSetIAMPolicy = Policy
        type Scopes ServicesSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesSetIAMPolicy'{..}
          = go _ssipResource _ssipXgafv _ssipUploadProtocol
              _ssipAccessToken
              _ssipUploadType
              _ssipCallback
              (Just AltJSON)
              _ssipPayload
              serviceManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesSetIAMPolicyResource)
                      mempty
