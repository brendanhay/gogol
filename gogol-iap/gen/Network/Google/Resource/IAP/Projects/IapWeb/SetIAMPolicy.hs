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
-- Module      : Network.Google.Resource.IAP.Projects.IapWeb.SetIAMPolicy
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
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.iap_web.setIamPolicy@.
module Network.Google.Resource.IAP.Projects.IapWeb.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsIapWebSetIAMPolicyResource

    -- * Creating a Request
    , projectsIapWebSetIAMPolicy
    , ProjectsIapWebSetIAMPolicy

    -- * Request Lenses
    , piwsipXgafv
    , piwsipUploadProtocol
    , piwsipAccessToken
    , piwsipUploadType
    , piwsipPayload
    , piwsipResource
    , piwsipCallback
    ) where

import           Network.Google.IAP.Types
import           Network.Google.Prelude

-- | A resource alias for @iap.projects.iap_web.setIamPolicy@ method which the
-- 'ProjectsIapWebSetIAMPolicy' request conforms to.
type ProjectsIapWebSetIAMPolicyResource =
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
-- /See:/ 'projectsIapWebSetIAMPolicy' smart constructor.
data ProjectsIapWebSetIAMPolicy = ProjectsIapWebSetIAMPolicy'
    { _piwsipXgafv          :: !(Maybe Xgafv)
    , _piwsipUploadProtocol :: !(Maybe Text)
    , _piwsipAccessToken    :: !(Maybe Text)
    , _piwsipUploadType     :: !(Maybe Text)
    , _piwsipPayload        :: !SetIAMPolicyRequest
    , _piwsipResource       :: !Text
    , _piwsipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsIapWebSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piwsipXgafv'
--
-- * 'piwsipUploadProtocol'
--
-- * 'piwsipAccessToken'
--
-- * 'piwsipUploadType'
--
-- * 'piwsipPayload'
--
-- * 'piwsipResource'
--
-- * 'piwsipCallback'
projectsIapWebSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'piwsipPayload'
    -> Text -- ^ 'piwsipResource'
    -> ProjectsIapWebSetIAMPolicy
projectsIapWebSetIAMPolicy pPiwsipPayload_ pPiwsipResource_ =
    ProjectsIapWebSetIAMPolicy'
    { _piwsipXgafv = Nothing
    , _piwsipUploadProtocol = Nothing
    , _piwsipAccessToken = Nothing
    , _piwsipUploadType = Nothing
    , _piwsipPayload = pPiwsipPayload_
    , _piwsipResource = pPiwsipResource_
    , _piwsipCallback = Nothing
    }

-- | V1 error format.
piwsipXgafv :: Lens' ProjectsIapWebSetIAMPolicy (Maybe Xgafv)
piwsipXgafv
  = lens _piwsipXgafv (\ s a -> s{_piwsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piwsipUploadProtocol :: Lens' ProjectsIapWebSetIAMPolicy (Maybe Text)
piwsipUploadProtocol
  = lens _piwsipUploadProtocol
      (\ s a -> s{_piwsipUploadProtocol = a})

-- | OAuth access token.
piwsipAccessToken :: Lens' ProjectsIapWebSetIAMPolicy (Maybe Text)
piwsipAccessToken
  = lens _piwsipAccessToken
      (\ s a -> s{_piwsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piwsipUploadType :: Lens' ProjectsIapWebSetIAMPolicy (Maybe Text)
piwsipUploadType
  = lens _piwsipUploadType
      (\ s a -> s{_piwsipUploadType = a})

-- | Multipart request metadata.
piwsipPayload :: Lens' ProjectsIapWebSetIAMPolicy SetIAMPolicyRequest
piwsipPayload
  = lens _piwsipPayload
      (\ s a -> s{_piwsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
piwsipResource :: Lens' ProjectsIapWebSetIAMPolicy Text
piwsipResource
  = lens _piwsipResource
      (\ s a -> s{_piwsipResource = a})

-- | JSONP
piwsipCallback :: Lens' ProjectsIapWebSetIAMPolicy (Maybe Text)
piwsipCallback
  = lens _piwsipCallback
      (\ s a -> s{_piwsipCallback = a})

instance GoogleRequest ProjectsIapWebSetIAMPolicy
         where
        type Rs ProjectsIapWebSetIAMPolicy = Policy
        type Scopes ProjectsIapWebSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsIapWebSetIAMPolicy'{..}
          = go _piwsipResource _piwsipXgafv
              _piwsipUploadProtocol
              _piwsipAccessToken
              _piwsipUploadType
              _piwsipCallback
              (Just AltJSON)
              _piwsipPayload
              iAPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsIapWebSetIAMPolicyResource)
                      mempty
