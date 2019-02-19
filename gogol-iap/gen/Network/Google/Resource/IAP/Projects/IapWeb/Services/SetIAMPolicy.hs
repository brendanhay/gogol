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
-- Module      : Network.Google.Resource.IAP.Projects.IapWeb.Services.SetIAMPolicy
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
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.iap_web.services.setIamPolicy@.
module Network.Google.Resource.IAP.Projects.IapWeb.Services.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsIapWebServicesSetIAMPolicyResource

    -- * Creating a Request
    , projectsIapWebServicesSetIAMPolicy
    , ProjectsIapWebServicesSetIAMPolicy

    -- * Request Lenses
    , piwssipXgafv
    , piwssipUploadProtocol
    , piwssipAccessToken
    , piwssipUploadType
    , piwssipPayload
    , piwssipResource
    , piwssipCallback
    ) where

import           Network.Google.IAP.Types
import           Network.Google.Prelude

-- | A resource alias for @iap.projects.iap_web.services.setIamPolicy@ method which the
-- 'ProjectsIapWebServicesSetIAMPolicy' request conforms to.
type ProjectsIapWebServicesSetIAMPolicyResource =
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
-- /See:/ 'projectsIapWebServicesSetIAMPolicy' smart constructor.
data ProjectsIapWebServicesSetIAMPolicy =
  ProjectsIapWebServicesSetIAMPolicy'
    { _piwssipXgafv          :: !(Maybe Xgafv)
    , _piwssipUploadProtocol :: !(Maybe Text)
    , _piwssipAccessToken    :: !(Maybe Text)
    , _piwssipUploadType     :: !(Maybe Text)
    , _piwssipPayload        :: !SetIAMPolicyRequest
    , _piwssipResource       :: !Text
    , _piwssipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsIapWebServicesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piwssipXgafv'
--
-- * 'piwssipUploadProtocol'
--
-- * 'piwssipAccessToken'
--
-- * 'piwssipUploadType'
--
-- * 'piwssipPayload'
--
-- * 'piwssipResource'
--
-- * 'piwssipCallback'
projectsIapWebServicesSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'piwssipPayload'
    -> Text -- ^ 'piwssipResource'
    -> ProjectsIapWebServicesSetIAMPolicy
projectsIapWebServicesSetIAMPolicy pPiwssipPayload_ pPiwssipResource_ =
  ProjectsIapWebServicesSetIAMPolicy'
    { _piwssipXgafv = Nothing
    , _piwssipUploadProtocol = Nothing
    , _piwssipAccessToken = Nothing
    , _piwssipUploadType = Nothing
    , _piwssipPayload = pPiwssipPayload_
    , _piwssipResource = pPiwssipResource_
    , _piwssipCallback = Nothing
    }

-- | V1 error format.
piwssipXgafv :: Lens' ProjectsIapWebServicesSetIAMPolicy (Maybe Xgafv)
piwssipXgafv
  = lens _piwssipXgafv (\ s a -> s{_piwssipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piwssipUploadProtocol :: Lens' ProjectsIapWebServicesSetIAMPolicy (Maybe Text)
piwssipUploadProtocol
  = lens _piwssipUploadProtocol
      (\ s a -> s{_piwssipUploadProtocol = a})

-- | OAuth access token.
piwssipAccessToken :: Lens' ProjectsIapWebServicesSetIAMPolicy (Maybe Text)
piwssipAccessToken
  = lens _piwssipAccessToken
      (\ s a -> s{_piwssipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piwssipUploadType :: Lens' ProjectsIapWebServicesSetIAMPolicy (Maybe Text)
piwssipUploadType
  = lens _piwssipUploadType
      (\ s a -> s{_piwssipUploadType = a})

-- | Multipart request metadata.
piwssipPayload :: Lens' ProjectsIapWebServicesSetIAMPolicy SetIAMPolicyRequest
piwssipPayload
  = lens _piwssipPayload
      (\ s a -> s{_piwssipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
piwssipResource :: Lens' ProjectsIapWebServicesSetIAMPolicy Text
piwssipResource
  = lens _piwssipResource
      (\ s a -> s{_piwssipResource = a})

-- | JSONP
piwssipCallback :: Lens' ProjectsIapWebServicesSetIAMPolicy (Maybe Text)
piwssipCallback
  = lens _piwssipCallback
      (\ s a -> s{_piwssipCallback = a})

instance GoogleRequest
           ProjectsIapWebServicesSetIAMPolicy
         where
        type Rs ProjectsIapWebServicesSetIAMPolicy = Policy
        type Scopes ProjectsIapWebServicesSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsIapWebServicesSetIAMPolicy'{..}
          = go _piwssipResource _piwssipXgafv
              _piwssipUploadProtocol
              _piwssipAccessToken
              _piwssipUploadType
              _piwssipCallback
              (Just AltJSON)
              _piwssipPayload
              iAPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsIapWebServicesSetIAMPolicyResource)
                      mempty
