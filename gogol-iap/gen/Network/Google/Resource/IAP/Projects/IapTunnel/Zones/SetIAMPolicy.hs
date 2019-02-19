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
-- Module      : Network.Google.Resource.IAP.Projects.IapTunnel.Zones.SetIAMPolicy
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
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.iap_tunnel.zones.setIamPolicy@.
module Network.Google.Resource.IAP.Projects.IapTunnel.Zones.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsIapTunnelZonesSetIAMPolicyResource

    -- * Creating a Request
    , projectsIapTunnelZonesSetIAMPolicy
    , ProjectsIapTunnelZonesSetIAMPolicy

    -- * Request Lenses
    , pitzsipXgafv
    , pitzsipUploadProtocol
    , pitzsipAccessToken
    , pitzsipUploadType
    , pitzsipPayload
    , pitzsipResource
    , pitzsipCallback
    ) where

import           Network.Google.IAP.Types
import           Network.Google.Prelude

-- | A resource alias for @iap.projects.iap_tunnel.zones.setIamPolicy@ method which the
-- 'ProjectsIapTunnelZonesSetIAMPolicy' request conforms to.
type ProjectsIapTunnelZonesSetIAMPolicyResource =
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
-- /See:/ 'projectsIapTunnelZonesSetIAMPolicy' smart constructor.
data ProjectsIapTunnelZonesSetIAMPolicy =
  ProjectsIapTunnelZonesSetIAMPolicy'
    { _pitzsipXgafv          :: !(Maybe Xgafv)
    , _pitzsipUploadProtocol :: !(Maybe Text)
    , _pitzsipAccessToken    :: !(Maybe Text)
    , _pitzsipUploadType     :: !(Maybe Text)
    , _pitzsipPayload        :: !SetIAMPolicyRequest
    , _pitzsipResource       :: !Text
    , _pitzsipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsIapTunnelZonesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pitzsipXgafv'
--
-- * 'pitzsipUploadProtocol'
--
-- * 'pitzsipAccessToken'
--
-- * 'pitzsipUploadType'
--
-- * 'pitzsipPayload'
--
-- * 'pitzsipResource'
--
-- * 'pitzsipCallback'
projectsIapTunnelZonesSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'pitzsipPayload'
    -> Text -- ^ 'pitzsipResource'
    -> ProjectsIapTunnelZonesSetIAMPolicy
projectsIapTunnelZonesSetIAMPolicy pPitzsipPayload_ pPitzsipResource_ =
  ProjectsIapTunnelZonesSetIAMPolicy'
    { _pitzsipXgafv = Nothing
    , _pitzsipUploadProtocol = Nothing
    , _pitzsipAccessToken = Nothing
    , _pitzsipUploadType = Nothing
    , _pitzsipPayload = pPitzsipPayload_
    , _pitzsipResource = pPitzsipResource_
    , _pitzsipCallback = Nothing
    }

-- | V1 error format.
pitzsipXgafv :: Lens' ProjectsIapTunnelZonesSetIAMPolicy (Maybe Xgafv)
pitzsipXgafv
  = lens _pitzsipXgafv (\ s a -> s{_pitzsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pitzsipUploadProtocol :: Lens' ProjectsIapTunnelZonesSetIAMPolicy (Maybe Text)
pitzsipUploadProtocol
  = lens _pitzsipUploadProtocol
      (\ s a -> s{_pitzsipUploadProtocol = a})

-- | OAuth access token.
pitzsipAccessToken :: Lens' ProjectsIapTunnelZonesSetIAMPolicy (Maybe Text)
pitzsipAccessToken
  = lens _pitzsipAccessToken
      (\ s a -> s{_pitzsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pitzsipUploadType :: Lens' ProjectsIapTunnelZonesSetIAMPolicy (Maybe Text)
pitzsipUploadType
  = lens _pitzsipUploadType
      (\ s a -> s{_pitzsipUploadType = a})

-- | Multipart request metadata.
pitzsipPayload :: Lens' ProjectsIapTunnelZonesSetIAMPolicy SetIAMPolicyRequest
pitzsipPayload
  = lens _pitzsipPayload
      (\ s a -> s{_pitzsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
pitzsipResource :: Lens' ProjectsIapTunnelZonesSetIAMPolicy Text
pitzsipResource
  = lens _pitzsipResource
      (\ s a -> s{_pitzsipResource = a})

-- | JSONP
pitzsipCallback :: Lens' ProjectsIapTunnelZonesSetIAMPolicy (Maybe Text)
pitzsipCallback
  = lens _pitzsipCallback
      (\ s a -> s{_pitzsipCallback = a})

instance GoogleRequest
           ProjectsIapTunnelZonesSetIAMPolicy
         where
        type Rs ProjectsIapTunnelZonesSetIAMPolicy = Policy
        type Scopes ProjectsIapTunnelZonesSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsIapTunnelZonesSetIAMPolicy'{..}
          = go _pitzsipResource _pitzsipXgafv
              _pitzsipUploadProtocol
              _pitzsipAccessToken
              _pitzsipUploadType
              _pitzsipCallback
              (Just AltJSON)
              _pitzsipPayload
              iAPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsIapTunnelZonesSetIAMPolicyResource)
                      mempty
