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
-- Module      : Network.Google.Resource.IAP.Projects.IapWeb.GetIAMPolicy
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
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.iap_web.getIamPolicy@.
module Network.Google.Resource.IAP.Projects.IapWeb.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsIapWebGetIAMPolicyResource

    -- * Creating a Request
    , projectsIapWebGetIAMPolicy
    , ProjectsIapWebGetIAMPolicy

    -- * Request Lenses
    , piwgipXgafv
    , piwgipUploadProtocol
    , piwgipAccessToken
    , piwgipUploadType
    , piwgipPayload
    , piwgipResource
    , piwgipCallback
    ) where

import           Network.Google.IAP.Types
import           Network.Google.Prelude

-- | A resource alias for @iap.projects.iap_web.getIamPolicy@ method which the
-- 'ProjectsIapWebGetIAMPolicy' request conforms to.
type ProjectsIapWebGetIAMPolicyResource =
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
-- /See:/ 'projectsIapWebGetIAMPolicy' smart constructor.
data ProjectsIapWebGetIAMPolicy = ProjectsIapWebGetIAMPolicy'
    { _piwgipXgafv          :: !(Maybe Xgafv)
    , _piwgipUploadProtocol :: !(Maybe Text)
    , _piwgipAccessToken    :: !(Maybe Text)
    , _piwgipUploadType     :: !(Maybe Text)
    , _piwgipPayload        :: !GetIAMPolicyRequest
    , _piwgipResource       :: !Text
    , _piwgipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsIapWebGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piwgipXgafv'
--
-- * 'piwgipUploadProtocol'
--
-- * 'piwgipAccessToken'
--
-- * 'piwgipUploadType'
--
-- * 'piwgipPayload'
--
-- * 'piwgipResource'
--
-- * 'piwgipCallback'
projectsIapWebGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'piwgipPayload'
    -> Text -- ^ 'piwgipResource'
    -> ProjectsIapWebGetIAMPolicy
projectsIapWebGetIAMPolicy pPiwgipPayload_ pPiwgipResource_ =
    ProjectsIapWebGetIAMPolicy'
    { _piwgipXgafv = Nothing
    , _piwgipUploadProtocol = Nothing
    , _piwgipAccessToken = Nothing
    , _piwgipUploadType = Nothing
    , _piwgipPayload = pPiwgipPayload_
    , _piwgipResource = pPiwgipResource_
    , _piwgipCallback = Nothing
    }

-- | V1 error format.
piwgipXgafv :: Lens' ProjectsIapWebGetIAMPolicy (Maybe Xgafv)
piwgipXgafv
  = lens _piwgipXgafv (\ s a -> s{_piwgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piwgipUploadProtocol :: Lens' ProjectsIapWebGetIAMPolicy (Maybe Text)
piwgipUploadProtocol
  = lens _piwgipUploadProtocol
      (\ s a -> s{_piwgipUploadProtocol = a})

-- | OAuth access token.
piwgipAccessToken :: Lens' ProjectsIapWebGetIAMPolicy (Maybe Text)
piwgipAccessToken
  = lens _piwgipAccessToken
      (\ s a -> s{_piwgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piwgipUploadType :: Lens' ProjectsIapWebGetIAMPolicy (Maybe Text)
piwgipUploadType
  = lens _piwgipUploadType
      (\ s a -> s{_piwgipUploadType = a})

-- | Multipart request metadata.
piwgipPayload :: Lens' ProjectsIapWebGetIAMPolicy GetIAMPolicyRequest
piwgipPayload
  = lens _piwgipPayload
      (\ s a -> s{_piwgipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
piwgipResource :: Lens' ProjectsIapWebGetIAMPolicy Text
piwgipResource
  = lens _piwgipResource
      (\ s a -> s{_piwgipResource = a})

-- | JSONP
piwgipCallback :: Lens' ProjectsIapWebGetIAMPolicy (Maybe Text)
piwgipCallback
  = lens _piwgipCallback
      (\ s a -> s{_piwgipCallback = a})

instance GoogleRequest ProjectsIapWebGetIAMPolicy
         where
        type Rs ProjectsIapWebGetIAMPolicy = Policy
        type Scopes ProjectsIapWebGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsIapWebGetIAMPolicy'{..}
          = go _piwgipResource _piwgipXgafv
              _piwgipUploadProtocol
              _piwgipAccessToken
              _piwgipUploadType
              _piwgipCallback
              (Just AltJSON)
              _piwgipPayload
              iAPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsIapWebGetIAMPolicyResource)
                      mempty
