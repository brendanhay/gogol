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
-- Module      : Network.Google.Resource.IAP.Projects.IapTunnel.Zones.GetIAMPolicy
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
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.iap_tunnel.zones.getIamPolicy@.
module Network.Google.Resource.IAP.Projects.IapTunnel.Zones.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsIapTunnelZonesGetIAMPolicyResource

    -- * Creating a Request
    , projectsIapTunnelZonesGetIAMPolicy
    , ProjectsIapTunnelZonesGetIAMPolicy

    -- * Request Lenses
    , pitzgipXgafv
    , pitzgipUploadProtocol
    , pitzgipAccessToken
    , pitzgipUploadType
    , pitzgipPayload
    , pitzgipResource
    , pitzgipCallback
    ) where

import           Network.Google.IAP.Types
import           Network.Google.Prelude

-- | A resource alias for @iap.projects.iap_tunnel.zones.getIamPolicy@ method which the
-- 'ProjectsIapTunnelZonesGetIAMPolicy' request conforms to.
type ProjectsIapTunnelZonesGetIAMPolicyResource =
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
-- /See:/ 'projectsIapTunnelZonesGetIAMPolicy' smart constructor.
data ProjectsIapTunnelZonesGetIAMPolicy = ProjectsIapTunnelZonesGetIAMPolicy'
    { _pitzgipXgafv          :: !(Maybe Xgafv)
    , _pitzgipUploadProtocol :: !(Maybe Text)
    , _pitzgipAccessToken    :: !(Maybe Text)
    , _pitzgipUploadType     :: !(Maybe Text)
    , _pitzgipPayload        :: !GetIAMPolicyRequest
    , _pitzgipResource       :: !Text
    , _pitzgipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsIapTunnelZonesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pitzgipXgafv'
--
-- * 'pitzgipUploadProtocol'
--
-- * 'pitzgipAccessToken'
--
-- * 'pitzgipUploadType'
--
-- * 'pitzgipPayload'
--
-- * 'pitzgipResource'
--
-- * 'pitzgipCallback'
projectsIapTunnelZonesGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'pitzgipPayload'
    -> Text -- ^ 'pitzgipResource'
    -> ProjectsIapTunnelZonesGetIAMPolicy
projectsIapTunnelZonesGetIAMPolicy pPitzgipPayload_ pPitzgipResource_ =
    ProjectsIapTunnelZonesGetIAMPolicy'
    { _pitzgipXgafv = Nothing
    , _pitzgipUploadProtocol = Nothing
    , _pitzgipAccessToken = Nothing
    , _pitzgipUploadType = Nothing
    , _pitzgipPayload = pPitzgipPayload_
    , _pitzgipResource = pPitzgipResource_
    , _pitzgipCallback = Nothing
    }

-- | V1 error format.
pitzgipXgafv :: Lens' ProjectsIapTunnelZonesGetIAMPolicy (Maybe Xgafv)
pitzgipXgafv
  = lens _pitzgipXgafv (\ s a -> s{_pitzgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pitzgipUploadProtocol :: Lens' ProjectsIapTunnelZonesGetIAMPolicy (Maybe Text)
pitzgipUploadProtocol
  = lens _pitzgipUploadProtocol
      (\ s a -> s{_pitzgipUploadProtocol = a})

-- | OAuth access token.
pitzgipAccessToken :: Lens' ProjectsIapTunnelZonesGetIAMPolicy (Maybe Text)
pitzgipAccessToken
  = lens _pitzgipAccessToken
      (\ s a -> s{_pitzgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pitzgipUploadType :: Lens' ProjectsIapTunnelZonesGetIAMPolicy (Maybe Text)
pitzgipUploadType
  = lens _pitzgipUploadType
      (\ s a -> s{_pitzgipUploadType = a})

-- | Multipart request metadata.
pitzgipPayload :: Lens' ProjectsIapTunnelZonesGetIAMPolicy GetIAMPolicyRequest
pitzgipPayload
  = lens _pitzgipPayload
      (\ s a -> s{_pitzgipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
pitzgipResource :: Lens' ProjectsIapTunnelZonesGetIAMPolicy Text
pitzgipResource
  = lens _pitzgipResource
      (\ s a -> s{_pitzgipResource = a})

-- | JSONP
pitzgipCallback :: Lens' ProjectsIapTunnelZonesGetIAMPolicy (Maybe Text)
pitzgipCallback
  = lens _pitzgipCallback
      (\ s a -> s{_pitzgipCallback = a})

instance GoogleRequest
         ProjectsIapTunnelZonesGetIAMPolicy where
        type Rs ProjectsIapTunnelZonesGetIAMPolicy = Policy
        type Scopes ProjectsIapTunnelZonesGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsIapTunnelZonesGetIAMPolicy'{..}
          = go _pitzgipResource _pitzgipXgafv
              _pitzgipUploadProtocol
              _pitzgipAccessToken
              _pitzgipUploadType
              _pitzgipCallback
              (Just AltJSON)
              _pitzgipPayload
              iAPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsIapTunnelZonesGetIAMPolicyResource)
                      mempty
