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
-- Module      : Network.Google.Resource.IAP.Projects.IapWeb.Services.GetIAMPolicy
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
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.iap_web.services.getIamPolicy@.
module Network.Google.Resource.IAP.Projects.IapWeb.Services.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsIapWebServicesGetIAMPolicyResource

    -- * Creating a Request
    , projectsIapWebServicesGetIAMPolicy
    , ProjectsIapWebServicesGetIAMPolicy

    -- * Request Lenses
    , piwsgipXgafv
    , piwsgipUploadProtocol
    , piwsgipAccessToken
    , piwsgipUploadType
    , piwsgipPayload
    , piwsgipResource
    , piwsgipCallback
    ) where

import           Network.Google.IAP.Types
import           Network.Google.Prelude

-- | A resource alias for @iap.projects.iap_web.services.getIamPolicy@ method which the
-- 'ProjectsIapWebServicesGetIAMPolicy' request conforms to.
type ProjectsIapWebServicesGetIAMPolicyResource =
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
-- /See:/ 'projectsIapWebServicesGetIAMPolicy' smart constructor.
data ProjectsIapWebServicesGetIAMPolicy = ProjectsIapWebServicesGetIAMPolicy'
    { _piwsgipXgafv          :: !(Maybe Xgafv)
    , _piwsgipUploadProtocol :: !(Maybe Text)
    , _piwsgipAccessToken    :: !(Maybe Text)
    , _piwsgipUploadType     :: !(Maybe Text)
    , _piwsgipPayload        :: !GetIAMPolicyRequest
    , _piwsgipResource       :: !Text
    , _piwsgipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsIapWebServicesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piwsgipXgafv'
--
-- * 'piwsgipUploadProtocol'
--
-- * 'piwsgipAccessToken'
--
-- * 'piwsgipUploadType'
--
-- * 'piwsgipPayload'
--
-- * 'piwsgipResource'
--
-- * 'piwsgipCallback'
projectsIapWebServicesGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'piwsgipPayload'
    -> Text -- ^ 'piwsgipResource'
    -> ProjectsIapWebServicesGetIAMPolicy
projectsIapWebServicesGetIAMPolicy pPiwsgipPayload_ pPiwsgipResource_ =
    ProjectsIapWebServicesGetIAMPolicy'
    { _piwsgipXgafv = Nothing
    , _piwsgipUploadProtocol = Nothing
    , _piwsgipAccessToken = Nothing
    , _piwsgipUploadType = Nothing
    , _piwsgipPayload = pPiwsgipPayload_
    , _piwsgipResource = pPiwsgipResource_
    , _piwsgipCallback = Nothing
    }

-- | V1 error format.
piwsgipXgafv :: Lens' ProjectsIapWebServicesGetIAMPolicy (Maybe Xgafv)
piwsgipXgafv
  = lens _piwsgipXgafv (\ s a -> s{_piwsgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piwsgipUploadProtocol :: Lens' ProjectsIapWebServicesGetIAMPolicy (Maybe Text)
piwsgipUploadProtocol
  = lens _piwsgipUploadProtocol
      (\ s a -> s{_piwsgipUploadProtocol = a})

-- | OAuth access token.
piwsgipAccessToken :: Lens' ProjectsIapWebServicesGetIAMPolicy (Maybe Text)
piwsgipAccessToken
  = lens _piwsgipAccessToken
      (\ s a -> s{_piwsgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piwsgipUploadType :: Lens' ProjectsIapWebServicesGetIAMPolicy (Maybe Text)
piwsgipUploadType
  = lens _piwsgipUploadType
      (\ s a -> s{_piwsgipUploadType = a})

-- | Multipart request metadata.
piwsgipPayload :: Lens' ProjectsIapWebServicesGetIAMPolicy GetIAMPolicyRequest
piwsgipPayload
  = lens _piwsgipPayload
      (\ s a -> s{_piwsgipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
piwsgipResource :: Lens' ProjectsIapWebServicesGetIAMPolicy Text
piwsgipResource
  = lens _piwsgipResource
      (\ s a -> s{_piwsgipResource = a})

-- | JSONP
piwsgipCallback :: Lens' ProjectsIapWebServicesGetIAMPolicy (Maybe Text)
piwsgipCallback
  = lens _piwsgipCallback
      (\ s a -> s{_piwsgipCallback = a})

instance GoogleRequest
         ProjectsIapWebServicesGetIAMPolicy where
        type Rs ProjectsIapWebServicesGetIAMPolicy = Policy
        type Scopes ProjectsIapWebServicesGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsIapWebServicesGetIAMPolicy'{..}
          = go _piwsgipResource _piwsgipXgafv
              _piwsgipUploadProtocol
              _piwsgipAccessToken
              _piwsgipUploadType
              _piwsgipCallback
              (Just AltJSON)
              _piwsgipPayload
              iAPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsIapWebServicesGetIAMPolicyResource)
                      mempty
