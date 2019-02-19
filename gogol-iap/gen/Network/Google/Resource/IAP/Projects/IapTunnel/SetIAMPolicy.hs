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
-- Module      : Network.Google.Resource.IAP.Projects.IapTunnel.SetIAMPolicy
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
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.iap_tunnel.setIamPolicy@.
module Network.Google.Resource.IAP.Projects.IapTunnel.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsIapTunnelSetIAMPolicyResource

    -- * Creating a Request
    , projectsIapTunnelSetIAMPolicy
    , ProjectsIapTunnelSetIAMPolicy

    -- * Request Lenses
    , pitsipXgafv
    , pitsipUploadProtocol
    , pitsipAccessToken
    , pitsipUploadType
    , pitsipPayload
    , pitsipResource
    , pitsipCallback
    ) where

import           Network.Google.IAP.Types
import           Network.Google.Prelude

-- | A resource alias for @iap.projects.iap_tunnel.setIamPolicy@ method which the
-- 'ProjectsIapTunnelSetIAMPolicy' request conforms to.
type ProjectsIapTunnelSetIAMPolicyResource =
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
-- /See:/ 'projectsIapTunnelSetIAMPolicy' smart constructor.
data ProjectsIapTunnelSetIAMPolicy =
  ProjectsIapTunnelSetIAMPolicy'
    { _pitsipXgafv          :: !(Maybe Xgafv)
    , _pitsipUploadProtocol :: !(Maybe Text)
    , _pitsipAccessToken    :: !(Maybe Text)
    , _pitsipUploadType     :: !(Maybe Text)
    , _pitsipPayload        :: !SetIAMPolicyRequest
    , _pitsipResource       :: !Text
    , _pitsipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsIapTunnelSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pitsipXgafv'
--
-- * 'pitsipUploadProtocol'
--
-- * 'pitsipAccessToken'
--
-- * 'pitsipUploadType'
--
-- * 'pitsipPayload'
--
-- * 'pitsipResource'
--
-- * 'pitsipCallback'
projectsIapTunnelSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'pitsipPayload'
    -> Text -- ^ 'pitsipResource'
    -> ProjectsIapTunnelSetIAMPolicy
projectsIapTunnelSetIAMPolicy pPitsipPayload_ pPitsipResource_ =
  ProjectsIapTunnelSetIAMPolicy'
    { _pitsipXgafv = Nothing
    , _pitsipUploadProtocol = Nothing
    , _pitsipAccessToken = Nothing
    , _pitsipUploadType = Nothing
    , _pitsipPayload = pPitsipPayload_
    , _pitsipResource = pPitsipResource_
    , _pitsipCallback = Nothing
    }

-- | V1 error format.
pitsipXgafv :: Lens' ProjectsIapTunnelSetIAMPolicy (Maybe Xgafv)
pitsipXgafv
  = lens _pitsipXgafv (\ s a -> s{_pitsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pitsipUploadProtocol :: Lens' ProjectsIapTunnelSetIAMPolicy (Maybe Text)
pitsipUploadProtocol
  = lens _pitsipUploadProtocol
      (\ s a -> s{_pitsipUploadProtocol = a})

-- | OAuth access token.
pitsipAccessToken :: Lens' ProjectsIapTunnelSetIAMPolicy (Maybe Text)
pitsipAccessToken
  = lens _pitsipAccessToken
      (\ s a -> s{_pitsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pitsipUploadType :: Lens' ProjectsIapTunnelSetIAMPolicy (Maybe Text)
pitsipUploadType
  = lens _pitsipUploadType
      (\ s a -> s{_pitsipUploadType = a})

-- | Multipart request metadata.
pitsipPayload :: Lens' ProjectsIapTunnelSetIAMPolicy SetIAMPolicyRequest
pitsipPayload
  = lens _pitsipPayload
      (\ s a -> s{_pitsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
pitsipResource :: Lens' ProjectsIapTunnelSetIAMPolicy Text
pitsipResource
  = lens _pitsipResource
      (\ s a -> s{_pitsipResource = a})

-- | JSONP
pitsipCallback :: Lens' ProjectsIapTunnelSetIAMPolicy (Maybe Text)
pitsipCallback
  = lens _pitsipCallback
      (\ s a -> s{_pitsipCallback = a})

instance GoogleRequest ProjectsIapTunnelSetIAMPolicy
         where
        type Rs ProjectsIapTunnelSetIAMPolicy = Policy
        type Scopes ProjectsIapTunnelSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsIapTunnelSetIAMPolicy'{..}
          = go _pitsipResource _pitsipXgafv
              _pitsipUploadProtocol
              _pitsipAccessToken
              _pitsipUploadType
              _pitsipCallback
              (Just AltJSON)
              _pitsipPayload
              iAPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsIapTunnelSetIAMPolicyResource)
                      mempty
