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
-- Module      : Network.Google.Resource.IAP.Projects.IapWeb.Services.Versions.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy for an Identity-Aware Proxy protected
-- resource. Replaces any existing policy. More information about managing
-- access via IAP can be found at:
-- https:\/\/cloud.google.com\/iap\/docs\/managing-access#managing_access_via_the_api
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.iap_web.services.versions.setIamPolicy@.
module Network.Google.Resource.IAP.Projects.IapWeb.Services.Versions.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsIapWebServicesVersionsSetIAMPolicyResource

    -- * Creating a Request
    , projectsIapWebServicesVersionsSetIAMPolicy
    , ProjectsIapWebServicesVersionsSetIAMPolicy

    -- * Request Lenses
    , piwsvsipXgafv
    , piwsvsipUploadProtocol
    , piwsvsipAccessToken
    , piwsvsipUploadType
    , piwsvsipPayload
    , piwsvsipResource
    , piwsvsipCallback
    ) where

import           Network.Google.IAP.Types
import           Network.Google.Prelude

-- | A resource alias for @iap.projects.iap_web.services.versions.setIamPolicy@ method which the
-- 'ProjectsIapWebServicesVersionsSetIAMPolicy' request conforms to.
type ProjectsIapWebServicesVersionsSetIAMPolicyResource
     =
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

-- | Sets the access control policy for an Identity-Aware Proxy protected
-- resource. Replaces any existing policy. More information about managing
-- access via IAP can be found at:
-- https:\/\/cloud.google.com\/iap\/docs\/managing-access#managing_access_via_the_api
--
-- /See:/ 'projectsIapWebServicesVersionsSetIAMPolicy' smart constructor.
data ProjectsIapWebServicesVersionsSetIAMPolicy = ProjectsIapWebServicesVersionsSetIAMPolicy'
    { _piwsvsipXgafv          :: !(Maybe Xgafv)
    , _piwsvsipUploadProtocol :: !(Maybe Text)
    , _piwsvsipAccessToken    :: !(Maybe Text)
    , _piwsvsipUploadType     :: !(Maybe Text)
    , _piwsvsipPayload        :: !SetIAMPolicyRequest
    , _piwsvsipResource       :: !Text
    , _piwsvsipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsIapWebServicesVersionsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piwsvsipXgafv'
--
-- * 'piwsvsipUploadProtocol'
--
-- * 'piwsvsipAccessToken'
--
-- * 'piwsvsipUploadType'
--
-- * 'piwsvsipPayload'
--
-- * 'piwsvsipResource'
--
-- * 'piwsvsipCallback'
projectsIapWebServicesVersionsSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'piwsvsipPayload'
    -> Text -- ^ 'piwsvsipResource'
    -> ProjectsIapWebServicesVersionsSetIAMPolicy
projectsIapWebServicesVersionsSetIAMPolicy pPiwsvsipPayload_ pPiwsvsipResource_ =
    ProjectsIapWebServicesVersionsSetIAMPolicy'
    { _piwsvsipXgafv = Nothing
    , _piwsvsipUploadProtocol = Nothing
    , _piwsvsipAccessToken = Nothing
    , _piwsvsipUploadType = Nothing
    , _piwsvsipPayload = pPiwsvsipPayload_
    , _piwsvsipResource = pPiwsvsipResource_
    , _piwsvsipCallback = Nothing
    }

-- | V1 error format.
piwsvsipXgafv :: Lens' ProjectsIapWebServicesVersionsSetIAMPolicy (Maybe Xgafv)
piwsvsipXgafv
  = lens _piwsvsipXgafv
      (\ s a -> s{_piwsvsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piwsvsipUploadProtocol :: Lens' ProjectsIapWebServicesVersionsSetIAMPolicy (Maybe Text)
piwsvsipUploadProtocol
  = lens _piwsvsipUploadProtocol
      (\ s a -> s{_piwsvsipUploadProtocol = a})

-- | OAuth access token.
piwsvsipAccessToken :: Lens' ProjectsIapWebServicesVersionsSetIAMPolicy (Maybe Text)
piwsvsipAccessToken
  = lens _piwsvsipAccessToken
      (\ s a -> s{_piwsvsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piwsvsipUploadType :: Lens' ProjectsIapWebServicesVersionsSetIAMPolicy (Maybe Text)
piwsvsipUploadType
  = lens _piwsvsipUploadType
      (\ s a -> s{_piwsvsipUploadType = a})

-- | Multipart request metadata.
piwsvsipPayload :: Lens' ProjectsIapWebServicesVersionsSetIAMPolicy SetIAMPolicyRequest
piwsvsipPayload
  = lens _piwsvsipPayload
      (\ s a -> s{_piwsvsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
piwsvsipResource :: Lens' ProjectsIapWebServicesVersionsSetIAMPolicy Text
piwsvsipResource
  = lens _piwsvsipResource
      (\ s a -> s{_piwsvsipResource = a})

-- | JSONP
piwsvsipCallback :: Lens' ProjectsIapWebServicesVersionsSetIAMPolicy (Maybe Text)
piwsvsipCallback
  = lens _piwsvsipCallback
      (\ s a -> s{_piwsvsipCallback = a})

instance GoogleRequest
         ProjectsIapWebServicesVersionsSetIAMPolicy where
        type Rs ProjectsIapWebServicesVersionsSetIAMPolicy =
             Policy
        type Scopes
               ProjectsIapWebServicesVersionsSetIAMPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsIapWebServicesVersionsSetIAMPolicy'{..}
          = go _piwsvsipResource _piwsvsipXgafv
              _piwsvsipUploadProtocol
              _piwsvsipAccessToken
              _piwsvsipUploadType
              _piwsvsipCallback
              (Just AltJSON)
              _piwsvsipPayload
              iAPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsIapWebServicesVersionsSetIAMPolicyResource)
                      mempty
