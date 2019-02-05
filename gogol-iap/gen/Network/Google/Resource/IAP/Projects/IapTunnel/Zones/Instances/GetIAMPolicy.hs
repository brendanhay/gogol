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
-- Module      : Network.Google.Resource.IAP.Projects.IapTunnel.Zones.Instances.GetIAMPolicy
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
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.iap_tunnel.zones.instances.getIamPolicy@.
module Network.Google.Resource.IAP.Projects.IapTunnel.Zones.Instances.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsIapTunnelZonesInstancesGetIAMPolicyResource

    -- * Creating a Request
    , projectsIapTunnelZonesInstancesGetIAMPolicy
    , ProjectsIapTunnelZonesInstancesGetIAMPolicy

    -- * Request Lenses
    , pitzigipXgafv
    , pitzigipUploadProtocol
    , pitzigipAccessToken
    , pitzigipUploadType
    , pitzigipPayload
    , pitzigipResource
    , pitzigipCallback
    ) where

import           Network.Google.IAP.Types
import           Network.Google.Prelude

-- | A resource alias for @iap.projects.iap_tunnel.zones.instances.getIamPolicy@ method which the
-- 'ProjectsIapTunnelZonesInstancesGetIAMPolicy' request conforms to.
type ProjectsIapTunnelZonesInstancesGetIAMPolicyResource
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
-- /See:/ 'projectsIapTunnelZonesInstancesGetIAMPolicy' smart constructor.
data ProjectsIapTunnelZonesInstancesGetIAMPolicy = ProjectsIapTunnelZonesInstancesGetIAMPolicy'
    { _pitzigipXgafv          :: !(Maybe Xgafv)
    , _pitzigipUploadProtocol :: !(Maybe Text)
    , _pitzigipAccessToken    :: !(Maybe Text)
    , _pitzigipUploadType     :: !(Maybe Text)
    , _pitzigipPayload        :: !GetIAMPolicyRequest
    , _pitzigipResource       :: !Text
    , _pitzigipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsIapTunnelZonesInstancesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pitzigipXgafv'
--
-- * 'pitzigipUploadProtocol'
--
-- * 'pitzigipAccessToken'
--
-- * 'pitzigipUploadType'
--
-- * 'pitzigipPayload'
--
-- * 'pitzigipResource'
--
-- * 'pitzigipCallback'
projectsIapTunnelZonesInstancesGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'pitzigipPayload'
    -> Text -- ^ 'pitzigipResource'
    -> ProjectsIapTunnelZonesInstancesGetIAMPolicy
projectsIapTunnelZonesInstancesGetIAMPolicy pPitzigipPayload_ pPitzigipResource_ =
    ProjectsIapTunnelZonesInstancesGetIAMPolicy'
    { _pitzigipXgafv = Nothing
    , _pitzigipUploadProtocol = Nothing
    , _pitzigipAccessToken = Nothing
    , _pitzigipUploadType = Nothing
    , _pitzigipPayload = pPitzigipPayload_
    , _pitzigipResource = pPitzigipResource_
    , _pitzigipCallback = Nothing
    }

-- | V1 error format.
pitzigipXgafv :: Lens' ProjectsIapTunnelZonesInstancesGetIAMPolicy (Maybe Xgafv)
pitzigipXgafv
  = lens _pitzigipXgafv
      (\ s a -> s{_pitzigipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pitzigipUploadProtocol :: Lens' ProjectsIapTunnelZonesInstancesGetIAMPolicy (Maybe Text)
pitzigipUploadProtocol
  = lens _pitzigipUploadProtocol
      (\ s a -> s{_pitzigipUploadProtocol = a})

-- | OAuth access token.
pitzigipAccessToken :: Lens' ProjectsIapTunnelZonesInstancesGetIAMPolicy (Maybe Text)
pitzigipAccessToken
  = lens _pitzigipAccessToken
      (\ s a -> s{_pitzigipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pitzigipUploadType :: Lens' ProjectsIapTunnelZonesInstancesGetIAMPolicy (Maybe Text)
pitzigipUploadType
  = lens _pitzigipUploadType
      (\ s a -> s{_pitzigipUploadType = a})

-- | Multipart request metadata.
pitzigipPayload :: Lens' ProjectsIapTunnelZonesInstancesGetIAMPolicy GetIAMPolicyRequest
pitzigipPayload
  = lens _pitzigipPayload
      (\ s a -> s{_pitzigipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
pitzigipResource :: Lens' ProjectsIapTunnelZonesInstancesGetIAMPolicy Text
pitzigipResource
  = lens _pitzigipResource
      (\ s a -> s{_pitzigipResource = a})

-- | JSONP
pitzigipCallback :: Lens' ProjectsIapTunnelZonesInstancesGetIAMPolicy (Maybe Text)
pitzigipCallback
  = lens _pitzigipCallback
      (\ s a -> s{_pitzigipCallback = a})

instance GoogleRequest
         ProjectsIapTunnelZonesInstancesGetIAMPolicy where
        type Rs ProjectsIapTunnelZonesInstancesGetIAMPolicy =
             Policy
        type Scopes
               ProjectsIapTunnelZonesInstancesGetIAMPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsIapTunnelZonesInstancesGetIAMPolicy'{..}
          = go _pitzigipResource _pitzigipXgafv
              _pitzigipUploadProtocol
              _pitzigipAccessToken
              _pitzigipUploadType
              _pitzigipCallback
              (Just AltJSON)
              _pitzigipPayload
              iAPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsIapTunnelZonesInstancesGetIAMPolicyResource)
                      mempty
