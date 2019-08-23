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
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.Sources.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified Source.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Cloud Security Command Center API Reference> for @securitycenter.organizations.sources.setIamPolicy@.
module Network.Google.Resource.SecurityCenter.Organizations.Sources.SetIAMPolicy
    (
    -- * REST Resource
      OrganizationsSourcesSetIAMPolicyResource

    -- * Creating a Request
    , organizationsSourcesSetIAMPolicy
    , OrganizationsSourcesSetIAMPolicy

    -- * Request Lenses
    , ossipXgafv
    , ossipUploadProtocol
    , ossipAccessToken
    , ossipUploadType
    , ossipPayload
    , ossipResource
    , ossipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.sources.setIamPolicy@ method which the
-- 'OrganizationsSourcesSetIAMPolicy' request conforms to.
type OrganizationsSourcesSetIAMPolicyResource =
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

-- | Sets the access control policy on the specified Source.
--
-- /See:/ 'organizationsSourcesSetIAMPolicy' smart constructor.
data OrganizationsSourcesSetIAMPolicy =
  OrganizationsSourcesSetIAMPolicy'
    { _ossipXgafv          :: !(Maybe Xgafv)
    , _ossipUploadProtocol :: !(Maybe Text)
    , _ossipAccessToken    :: !(Maybe Text)
    , _ossipUploadType     :: !(Maybe Text)
    , _ossipPayload        :: !SetIAMPolicyRequest
    , _ossipResource       :: !Text
    , _ossipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsSourcesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ossipXgafv'
--
-- * 'ossipUploadProtocol'
--
-- * 'ossipAccessToken'
--
-- * 'ossipUploadType'
--
-- * 'ossipPayload'
--
-- * 'ossipResource'
--
-- * 'ossipCallback'
organizationsSourcesSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'ossipPayload'
    -> Text -- ^ 'ossipResource'
    -> OrganizationsSourcesSetIAMPolicy
organizationsSourcesSetIAMPolicy pOssipPayload_ pOssipResource_ =
  OrganizationsSourcesSetIAMPolicy'
    { _ossipXgafv = Nothing
    , _ossipUploadProtocol = Nothing
    , _ossipAccessToken = Nothing
    , _ossipUploadType = Nothing
    , _ossipPayload = pOssipPayload_
    , _ossipResource = pOssipResource_
    , _ossipCallback = Nothing
    }


-- | V1 error format.
ossipXgafv :: Lens' OrganizationsSourcesSetIAMPolicy (Maybe Xgafv)
ossipXgafv
  = lens _ossipXgafv (\ s a -> s{_ossipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ossipUploadProtocol :: Lens' OrganizationsSourcesSetIAMPolicy (Maybe Text)
ossipUploadProtocol
  = lens _ossipUploadProtocol
      (\ s a -> s{_ossipUploadProtocol = a})

-- | OAuth access token.
ossipAccessToken :: Lens' OrganizationsSourcesSetIAMPolicy (Maybe Text)
ossipAccessToken
  = lens _ossipAccessToken
      (\ s a -> s{_ossipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ossipUploadType :: Lens' OrganizationsSourcesSetIAMPolicy (Maybe Text)
ossipUploadType
  = lens _ossipUploadType
      (\ s a -> s{_ossipUploadType = a})

-- | Multipart request metadata.
ossipPayload :: Lens' OrganizationsSourcesSetIAMPolicy SetIAMPolicyRequest
ossipPayload
  = lens _ossipPayload (\ s a -> s{_ossipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
ossipResource :: Lens' OrganizationsSourcesSetIAMPolicy Text
ossipResource
  = lens _ossipResource
      (\ s a -> s{_ossipResource = a})

-- | JSONP
ossipCallback :: Lens' OrganizationsSourcesSetIAMPolicy (Maybe Text)
ossipCallback
  = lens _ossipCallback
      (\ s a -> s{_ossipCallback = a})

instance GoogleRequest
           OrganizationsSourcesSetIAMPolicy
         where
        type Rs OrganizationsSourcesSetIAMPolicy = Policy
        type Scopes OrganizationsSourcesSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsSourcesSetIAMPolicy'{..}
          = go _ossipResource _ossipXgafv _ossipUploadProtocol
              _ossipAccessToken
              _ossipUploadType
              _ossipCallback
              (Just AltJSON)
              _ossipPayload
              securityCenterService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsSourcesSetIAMPolicyResource)
                      mempty
