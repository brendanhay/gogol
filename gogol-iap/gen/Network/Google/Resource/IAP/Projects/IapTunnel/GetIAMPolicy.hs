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
-- Module      : Network.Google.Resource.IAP.Projects.IapTunnel.GetIAMPolicy
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
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.iap_tunnel.getIamPolicy@.
module Network.Google.Resource.IAP.Projects.IapTunnel.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsIapTunnelGetIAMPolicyResource

    -- * Creating a Request
    , projectsIapTunnelGetIAMPolicy
    , ProjectsIapTunnelGetIAMPolicy

    -- * Request Lenses
    , pitgipXgafv
    , pitgipUploadProtocol
    , pitgipAccessToken
    , pitgipUploadType
    , pitgipPayload
    , pitgipResource
    , pitgipCallback
    ) where

import           Network.Google.IAP.Types
import           Network.Google.Prelude

-- | A resource alias for @iap.projects.iap_tunnel.getIamPolicy@ method which the
-- 'ProjectsIapTunnelGetIAMPolicy' request conforms to.
type ProjectsIapTunnelGetIAMPolicyResource =
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
-- /See:/ 'projectsIapTunnelGetIAMPolicy' smart constructor.
data ProjectsIapTunnelGetIAMPolicy =
  ProjectsIapTunnelGetIAMPolicy'
    { _pitgipXgafv          :: !(Maybe Xgafv)
    , _pitgipUploadProtocol :: !(Maybe Text)
    , _pitgipAccessToken    :: !(Maybe Text)
    , _pitgipUploadType     :: !(Maybe Text)
    , _pitgipPayload        :: !GetIAMPolicyRequest
    , _pitgipResource       :: !Text
    , _pitgipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsIapTunnelGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pitgipXgafv'
--
-- * 'pitgipUploadProtocol'
--
-- * 'pitgipAccessToken'
--
-- * 'pitgipUploadType'
--
-- * 'pitgipPayload'
--
-- * 'pitgipResource'
--
-- * 'pitgipCallback'
projectsIapTunnelGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'pitgipPayload'
    -> Text -- ^ 'pitgipResource'
    -> ProjectsIapTunnelGetIAMPolicy
projectsIapTunnelGetIAMPolicy pPitgipPayload_ pPitgipResource_ =
  ProjectsIapTunnelGetIAMPolicy'
    { _pitgipXgafv = Nothing
    , _pitgipUploadProtocol = Nothing
    , _pitgipAccessToken = Nothing
    , _pitgipUploadType = Nothing
    , _pitgipPayload = pPitgipPayload_
    , _pitgipResource = pPitgipResource_
    , _pitgipCallback = Nothing
    }

-- | V1 error format.
pitgipXgafv :: Lens' ProjectsIapTunnelGetIAMPolicy (Maybe Xgafv)
pitgipXgafv
  = lens _pitgipXgafv (\ s a -> s{_pitgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pitgipUploadProtocol :: Lens' ProjectsIapTunnelGetIAMPolicy (Maybe Text)
pitgipUploadProtocol
  = lens _pitgipUploadProtocol
      (\ s a -> s{_pitgipUploadProtocol = a})

-- | OAuth access token.
pitgipAccessToken :: Lens' ProjectsIapTunnelGetIAMPolicy (Maybe Text)
pitgipAccessToken
  = lens _pitgipAccessToken
      (\ s a -> s{_pitgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pitgipUploadType :: Lens' ProjectsIapTunnelGetIAMPolicy (Maybe Text)
pitgipUploadType
  = lens _pitgipUploadType
      (\ s a -> s{_pitgipUploadType = a})

-- | Multipart request metadata.
pitgipPayload :: Lens' ProjectsIapTunnelGetIAMPolicy GetIAMPolicyRequest
pitgipPayload
  = lens _pitgipPayload
      (\ s a -> s{_pitgipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
pitgipResource :: Lens' ProjectsIapTunnelGetIAMPolicy Text
pitgipResource
  = lens _pitgipResource
      (\ s a -> s{_pitgipResource = a})

-- | JSONP
pitgipCallback :: Lens' ProjectsIapTunnelGetIAMPolicy (Maybe Text)
pitgipCallback
  = lens _pitgipCallback
      (\ s a -> s{_pitgipCallback = a})

instance GoogleRequest ProjectsIapTunnelGetIAMPolicy
         where
        type Rs ProjectsIapTunnelGetIAMPolicy = Policy
        type Scopes ProjectsIapTunnelGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsIapTunnelGetIAMPolicy'{..}
          = go _pitgipResource _pitgipXgafv
              _pitgipUploadProtocol
              _pitgipAccessToken
              _pitgipUploadType
              _pitgipCallback
              (Just AltJSON)
              _pitgipPayload
              iAPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsIapTunnelGetIAMPolicyResource)
                      mempty
