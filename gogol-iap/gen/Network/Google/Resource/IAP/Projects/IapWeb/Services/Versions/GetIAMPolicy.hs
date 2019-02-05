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
-- Module      : Network.Google.Resource.IAP.Projects.IapWeb.Services.Versions.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for an Identity-Aware Proxy protected
-- resource. More information about managing access via IAP can be found
-- at:
-- https:\/\/cloud.google.com\/iap\/docs\/managing-access#managing_access_via_the_api
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.iap_web.services.versions.getIamPolicy@.
module Network.Google.Resource.IAP.Projects.IapWeb.Services.Versions.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsIapWebServicesVersionsGetIAMPolicyResource

    -- * Creating a Request
    , projectsIapWebServicesVersionsGetIAMPolicy
    , ProjectsIapWebServicesVersionsGetIAMPolicy

    -- * Request Lenses
    , piwsvgipXgafv
    , piwsvgipUploadProtocol
    , piwsvgipAccessToken
    , piwsvgipUploadType
    , piwsvgipPayload
    , piwsvgipResource
    , piwsvgipCallback
    ) where

import           Network.Google.IAP.Types
import           Network.Google.Prelude

-- | A resource alias for @iap.projects.iap_web.services.versions.getIamPolicy@ method which the
-- 'ProjectsIapWebServicesVersionsGetIAMPolicy' request conforms to.
type ProjectsIapWebServicesVersionsGetIAMPolicyResource
     =
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

-- | Gets the access control policy for an Identity-Aware Proxy protected
-- resource. More information about managing access via IAP can be found
-- at:
-- https:\/\/cloud.google.com\/iap\/docs\/managing-access#managing_access_via_the_api
--
-- /See:/ 'projectsIapWebServicesVersionsGetIAMPolicy' smart constructor.
data ProjectsIapWebServicesVersionsGetIAMPolicy = ProjectsIapWebServicesVersionsGetIAMPolicy'
    { _piwsvgipXgafv          :: !(Maybe Xgafv)
    , _piwsvgipUploadProtocol :: !(Maybe Text)
    , _piwsvgipAccessToken    :: !(Maybe Text)
    , _piwsvgipUploadType     :: !(Maybe Text)
    , _piwsvgipPayload        :: !GetIAMPolicyRequest
    , _piwsvgipResource       :: !Text
    , _piwsvgipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsIapWebServicesVersionsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piwsvgipXgafv'
--
-- * 'piwsvgipUploadProtocol'
--
-- * 'piwsvgipAccessToken'
--
-- * 'piwsvgipUploadType'
--
-- * 'piwsvgipPayload'
--
-- * 'piwsvgipResource'
--
-- * 'piwsvgipCallback'
projectsIapWebServicesVersionsGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'piwsvgipPayload'
    -> Text -- ^ 'piwsvgipResource'
    -> ProjectsIapWebServicesVersionsGetIAMPolicy
projectsIapWebServicesVersionsGetIAMPolicy pPiwsvgipPayload_ pPiwsvgipResource_ =
    ProjectsIapWebServicesVersionsGetIAMPolicy'
    { _piwsvgipXgafv = Nothing
    , _piwsvgipUploadProtocol = Nothing
    , _piwsvgipAccessToken = Nothing
    , _piwsvgipUploadType = Nothing
    , _piwsvgipPayload = pPiwsvgipPayload_
    , _piwsvgipResource = pPiwsvgipResource_
    , _piwsvgipCallback = Nothing
    }

-- | V1 error format.
piwsvgipXgafv :: Lens' ProjectsIapWebServicesVersionsGetIAMPolicy (Maybe Xgafv)
piwsvgipXgafv
  = lens _piwsvgipXgafv
      (\ s a -> s{_piwsvgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piwsvgipUploadProtocol :: Lens' ProjectsIapWebServicesVersionsGetIAMPolicy (Maybe Text)
piwsvgipUploadProtocol
  = lens _piwsvgipUploadProtocol
      (\ s a -> s{_piwsvgipUploadProtocol = a})

-- | OAuth access token.
piwsvgipAccessToken :: Lens' ProjectsIapWebServicesVersionsGetIAMPolicy (Maybe Text)
piwsvgipAccessToken
  = lens _piwsvgipAccessToken
      (\ s a -> s{_piwsvgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piwsvgipUploadType :: Lens' ProjectsIapWebServicesVersionsGetIAMPolicy (Maybe Text)
piwsvgipUploadType
  = lens _piwsvgipUploadType
      (\ s a -> s{_piwsvgipUploadType = a})

-- | Multipart request metadata.
piwsvgipPayload :: Lens' ProjectsIapWebServicesVersionsGetIAMPolicy GetIAMPolicyRequest
piwsvgipPayload
  = lens _piwsvgipPayload
      (\ s a -> s{_piwsvgipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
piwsvgipResource :: Lens' ProjectsIapWebServicesVersionsGetIAMPolicy Text
piwsvgipResource
  = lens _piwsvgipResource
      (\ s a -> s{_piwsvgipResource = a})

-- | JSONP
piwsvgipCallback :: Lens' ProjectsIapWebServicesVersionsGetIAMPolicy (Maybe Text)
piwsvgipCallback
  = lens _piwsvgipCallback
      (\ s a -> s{_piwsvgipCallback = a})

instance GoogleRequest
         ProjectsIapWebServicesVersionsGetIAMPolicy where
        type Rs ProjectsIapWebServicesVersionsGetIAMPolicy =
             Policy
        type Scopes
               ProjectsIapWebServicesVersionsGetIAMPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsIapWebServicesVersionsGetIAMPolicy'{..}
          = go _piwsvgipResource _piwsvgipXgafv
              _piwsvgipUploadProtocol
              _piwsvgipAccessToken
              _piwsvgipUploadType
              _piwsvgipCallback
              (Just AltJSON)
              _piwsvgipPayload
              iAPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsIapWebServicesVersionsGetIAMPolicyResource)
                      mempty
