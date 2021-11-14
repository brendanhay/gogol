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
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.Sources.GetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy on the specified Source.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.sources.getIamPolicy@.
module Network.Google.Resource.SecurityCenter.Organizations.Sources.GetIAMPolicy
    (
    -- * REST Resource
      OrganizationsSourcesGetIAMPolicyResource

    -- * Creating a Request
    , organizationsSourcesGetIAMPolicy
    , OrganizationsSourcesGetIAMPolicy

    -- * Request Lenses
    , osgipXgafv
    , osgipUploadProtocol
    , osgipAccessToken
    , osgipUploadType
    , osgipPayload
    , osgipResource
    , osgipCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.sources.getIamPolicy@ method which the
-- 'OrganizationsSourcesGetIAMPolicy' request conforms to.
type OrganizationsSourcesGetIAMPolicyResource =
     "v1p1beta1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Gets the access control policy on the specified Source.
--
-- /See:/ 'organizationsSourcesGetIAMPolicy' smart constructor.
data OrganizationsSourcesGetIAMPolicy =
  OrganizationsSourcesGetIAMPolicy'
    { _osgipXgafv :: !(Maybe Xgafv)
    , _osgipUploadProtocol :: !(Maybe Text)
    , _osgipAccessToken :: !(Maybe Text)
    , _osgipUploadType :: !(Maybe Text)
    , _osgipPayload :: !GetIAMPolicyRequest
    , _osgipResource :: !Text
    , _osgipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsSourcesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osgipXgafv'
--
-- * 'osgipUploadProtocol'
--
-- * 'osgipAccessToken'
--
-- * 'osgipUploadType'
--
-- * 'osgipPayload'
--
-- * 'osgipResource'
--
-- * 'osgipCallback'
organizationsSourcesGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'osgipPayload'
    -> Text -- ^ 'osgipResource'
    -> OrganizationsSourcesGetIAMPolicy
organizationsSourcesGetIAMPolicy pOsgipPayload_ pOsgipResource_ =
  OrganizationsSourcesGetIAMPolicy'
    { _osgipXgafv = Nothing
    , _osgipUploadProtocol = Nothing
    , _osgipAccessToken = Nothing
    , _osgipUploadType = Nothing
    , _osgipPayload = pOsgipPayload_
    , _osgipResource = pOsgipResource_
    , _osgipCallback = Nothing
    }


-- | V1 error format.
osgipXgafv :: Lens' OrganizationsSourcesGetIAMPolicy (Maybe Xgafv)
osgipXgafv
  = lens _osgipXgafv (\ s a -> s{_osgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
osgipUploadProtocol :: Lens' OrganizationsSourcesGetIAMPolicy (Maybe Text)
osgipUploadProtocol
  = lens _osgipUploadProtocol
      (\ s a -> s{_osgipUploadProtocol = a})

-- | OAuth access token.
osgipAccessToken :: Lens' OrganizationsSourcesGetIAMPolicy (Maybe Text)
osgipAccessToken
  = lens _osgipAccessToken
      (\ s a -> s{_osgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
osgipUploadType :: Lens' OrganizationsSourcesGetIAMPolicy (Maybe Text)
osgipUploadType
  = lens _osgipUploadType
      (\ s a -> s{_osgipUploadType = a})

-- | Multipart request metadata.
osgipPayload :: Lens' OrganizationsSourcesGetIAMPolicy GetIAMPolicyRequest
osgipPayload
  = lens _osgipPayload (\ s a -> s{_osgipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
osgipResource :: Lens' OrganizationsSourcesGetIAMPolicy Text
osgipResource
  = lens _osgipResource
      (\ s a -> s{_osgipResource = a})

-- | JSONP
osgipCallback :: Lens' OrganizationsSourcesGetIAMPolicy (Maybe Text)
osgipCallback
  = lens _osgipCallback
      (\ s a -> s{_osgipCallback = a})

instance GoogleRequest
           OrganizationsSourcesGetIAMPolicy
         where
        type Rs OrganizationsSourcesGetIAMPolicy = Policy
        type Scopes OrganizationsSourcesGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsSourcesGetIAMPolicy'{..}
          = go _osgipResource _osgipXgafv _osgipUploadProtocol
              _osgipAccessToken
              _osgipUploadType
              _osgipCallback
              (Just AltJSON)
              _osgipPayload
              securityCenterService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsSourcesGetIAMPolicyResource)
                      mempty
