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
-- Module      : Network.Google.Resource.IAP.Projects.IapTunnel.Zones.Instances.SetIAMPolicy
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
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.iap_tunnel.zones.instances.setIamPolicy@.
module Network.Google.Resource.IAP.Projects.IapTunnel.Zones.Instances.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsIapTunnelZonesInstancesSetIAMPolicyResource

    -- * Creating a Request
    , projectsIapTunnelZonesInstancesSetIAMPolicy
    , ProjectsIapTunnelZonesInstancesSetIAMPolicy

    -- * Request Lenses
    , pitzisipXgafv
    , pitzisipUploadProtocol
    , pitzisipAccessToken
    , pitzisipUploadType
    , pitzisipPayload
    , pitzisipResource
    , pitzisipCallback
    ) where

import           Network.Google.IAP.Types
import           Network.Google.Prelude

-- | A resource alias for @iap.projects.iap_tunnel.zones.instances.setIamPolicy@ method which the
-- 'ProjectsIapTunnelZonesInstancesSetIAMPolicy' request conforms to.
type ProjectsIapTunnelZonesInstancesSetIAMPolicyResource
     =
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
-- /See:/ 'projectsIapTunnelZonesInstancesSetIAMPolicy' smart constructor.
data ProjectsIapTunnelZonesInstancesSetIAMPolicy = ProjectsIapTunnelZonesInstancesSetIAMPolicy'
    { _pitzisipXgafv          :: !(Maybe Xgafv)
    , _pitzisipUploadProtocol :: !(Maybe Text)
    , _pitzisipAccessToken    :: !(Maybe Text)
    , _pitzisipUploadType     :: !(Maybe Text)
    , _pitzisipPayload        :: !SetIAMPolicyRequest
    , _pitzisipResource       :: !Text
    , _pitzisipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsIapTunnelZonesInstancesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pitzisipXgafv'
--
-- * 'pitzisipUploadProtocol'
--
-- * 'pitzisipAccessToken'
--
-- * 'pitzisipUploadType'
--
-- * 'pitzisipPayload'
--
-- * 'pitzisipResource'
--
-- * 'pitzisipCallback'
projectsIapTunnelZonesInstancesSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'pitzisipPayload'
    -> Text -- ^ 'pitzisipResource'
    -> ProjectsIapTunnelZonesInstancesSetIAMPolicy
projectsIapTunnelZonesInstancesSetIAMPolicy pPitzisipPayload_ pPitzisipResource_ =
    ProjectsIapTunnelZonesInstancesSetIAMPolicy'
    { _pitzisipXgafv = Nothing
    , _pitzisipUploadProtocol = Nothing
    , _pitzisipAccessToken = Nothing
    , _pitzisipUploadType = Nothing
    , _pitzisipPayload = pPitzisipPayload_
    , _pitzisipResource = pPitzisipResource_
    , _pitzisipCallback = Nothing
    }

-- | V1 error format.
pitzisipXgafv :: Lens' ProjectsIapTunnelZonesInstancesSetIAMPolicy (Maybe Xgafv)
pitzisipXgafv
  = lens _pitzisipXgafv
      (\ s a -> s{_pitzisipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pitzisipUploadProtocol :: Lens' ProjectsIapTunnelZonesInstancesSetIAMPolicy (Maybe Text)
pitzisipUploadProtocol
  = lens _pitzisipUploadProtocol
      (\ s a -> s{_pitzisipUploadProtocol = a})

-- | OAuth access token.
pitzisipAccessToken :: Lens' ProjectsIapTunnelZonesInstancesSetIAMPolicy (Maybe Text)
pitzisipAccessToken
  = lens _pitzisipAccessToken
      (\ s a -> s{_pitzisipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pitzisipUploadType :: Lens' ProjectsIapTunnelZonesInstancesSetIAMPolicy (Maybe Text)
pitzisipUploadType
  = lens _pitzisipUploadType
      (\ s a -> s{_pitzisipUploadType = a})

-- | Multipart request metadata.
pitzisipPayload :: Lens' ProjectsIapTunnelZonesInstancesSetIAMPolicy SetIAMPolicyRequest
pitzisipPayload
  = lens _pitzisipPayload
      (\ s a -> s{_pitzisipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
pitzisipResource :: Lens' ProjectsIapTunnelZonesInstancesSetIAMPolicy Text
pitzisipResource
  = lens _pitzisipResource
      (\ s a -> s{_pitzisipResource = a})

-- | JSONP
pitzisipCallback :: Lens' ProjectsIapTunnelZonesInstancesSetIAMPolicy (Maybe Text)
pitzisipCallback
  = lens _pitzisipCallback
      (\ s a -> s{_pitzisipCallback = a})

instance GoogleRequest
         ProjectsIapTunnelZonesInstancesSetIAMPolicy where
        type Rs ProjectsIapTunnelZonesInstancesSetIAMPolicy =
             Policy
        type Scopes
               ProjectsIapTunnelZonesInstancesSetIAMPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsIapTunnelZonesInstancesSetIAMPolicy'{..}
          = go _pitzisipResource _pitzisipXgafv
              _pitzisipUploadProtocol
              _pitzisipAccessToken
              _pitzisipUploadType
              _pitzisipCallback
              (Just AltJSON)
              _pitzisipPayload
              iAPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsIapTunnelZonesInstancesSetIAMPolicyResource)
                      mempty
