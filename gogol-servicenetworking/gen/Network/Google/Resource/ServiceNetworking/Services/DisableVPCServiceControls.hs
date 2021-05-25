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
-- Module      : Network.Google.Resource.ServiceNetworking.Services.DisableVPCServiceControls
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables VPC service controls for a connection.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.disableVpcServiceControls@.
module Network.Google.Resource.ServiceNetworking.Services.DisableVPCServiceControls
    (
    -- * REST Resource
      ServicesDisableVPCServiceControlsResource

    -- * Creating a Request
    , servicesDisableVPCServiceControls
    , ServicesDisableVPCServiceControls

    -- * Request Lenses
    , sdvscParent
    , sdvscXgafv
    , sdvscUploadProtocol
    , sdvscAccessToken
    , sdvscUploadType
    , sdvscPayload
    , sdvscCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.disableVpcServiceControls@ method which the
-- 'ServicesDisableVPCServiceControls' request conforms to.
type ServicesDisableVPCServiceControlsResource =
     "v1" :>
       CaptureMode "parent" "disableVpcServiceControls" Text
         :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] DisableVPCServiceControlsRequest :>
                       Patch '[JSON] Operation

-- | Disables VPC service controls for a connection.
--
-- /See:/ 'servicesDisableVPCServiceControls' smart constructor.
data ServicesDisableVPCServiceControls =
  ServicesDisableVPCServiceControls'
    { _sdvscParent :: !Text
    , _sdvscXgafv :: !(Maybe Xgafv)
    , _sdvscUploadProtocol :: !(Maybe Text)
    , _sdvscAccessToken :: !(Maybe Text)
    , _sdvscUploadType :: !(Maybe Text)
    , _sdvscPayload :: !DisableVPCServiceControlsRequest
    , _sdvscCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesDisableVPCServiceControls' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdvscParent'
--
-- * 'sdvscXgafv'
--
-- * 'sdvscUploadProtocol'
--
-- * 'sdvscAccessToken'
--
-- * 'sdvscUploadType'
--
-- * 'sdvscPayload'
--
-- * 'sdvscCallback'
servicesDisableVPCServiceControls
    :: Text -- ^ 'sdvscParent'
    -> DisableVPCServiceControlsRequest -- ^ 'sdvscPayload'
    -> ServicesDisableVPCServiceControls
servicesDisableVPCServiceControls pSdvscParent_ pSdvscPayload_ =
  ServicesDisableVPCServiceControls'
    { _sdvscParent = pSdvscParent_
    , _sdvscXgafv = Nothing
    , _sdvscUploadProtocol = Nothing
    , _sdvscAccessToken = Nothing
    , _sdvscUploadType = Nothing
    , _sdvscPayload = pSdvscPayload_
    , _sdvscCallback = Nothing
    }


-- | The service that is managing peering connectivity for a service
-- producer\'s organization. For Google services that support this
-- functionality, this value is
-- \`services\/servicenetworking.googleapis.com\`.
sdvscParent :: Lens' ServicesDisableVPCServiceControls Text
sdvscParent
  = lens _sdvscParent (\ s a -> s{_sdvscParent = a})

-- | V1 error format.
sdvscXgafv :: Lens' ServicesDisableVPCServiceControls (Maybe Xgafv)
sdvscXgafv
  = lens _sdvscXgafv (\ s a -> s{_sdvscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sdvscUploadProtocol :: Lens' ServicesDisableVPCServiceControls (Maybe Text)
sdvscUploadProtocol
  = lens _sdvscUploadProtocol
      (\ s a -> s{_sdvscUploadProtocol = a})

-- | OAuth access token.
sdvscAccessToken :: Lens' ServicesDisableVPCServiceControls (Maybe Text)
sdvscAccessToken
  = lens _sdvscAccessToken
      (\ s a -> s{_sdvscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sdvscUploadType :: Lens' ServicesDisableVPCServiceControls (Maybe Text)
sdvscUploadType
  = lens _sdvscUploadType
      (\ s a -> s{_sdvscUploadType = a})

-- | Multipart request metadata.
sdvscPayload :: Lens' ServicesDisableVPCServiceControls DisableVPCServiceControlsRequest
sdvscPayload
  = lens _sdvscPayload (\ s a -> s{_sdvscPayload = a})

-- | JSONP
sdvscCallback :: Lens' ServicesDisableVPCServiceControls (Maybe Text)
sdvscCallback
  = lens _sdvscCallback
      (\ s a -> s{_sdvscCallback = a})

instance GoogleRequest
           ServicesDisableVPCServiceControls
         where
        type Rs ServicesDisableVPCServiceControls = Operation
        type Scopes ServicesDisableVPCServiceControls =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesDisableVPCServiceControls'{..}
          = go _sdvscParent _sdvscXgafv _sdvscUploadProtocol
              _sdvscAccessToken
              _sdvscUploadType
              _sdvscCallback
              (Just AltJSON)
              _sdvscPayload
              serviceNetworkingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ServicesDisableVPCServiceControlsResource)
                      mempty
