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
-- Module      : Network.Google.Resource.ServiceNetworking.Services.EnableVPCServiceControls
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables VPC service controls for a connection.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.enableVpcServiceControls@.
module Network.Google.Resource.ServiceNetworking.Services.EnableVPCServiceControls
    (
    -- * REST Resource
      ServicesEnableVPCServiceControlsResource

    -- * Creating a Request
    , servicesEnableVPCServiceControls
    , ServicesEnableVPCServiceControls

    -- * Request Lenses
    , sevscParent
    , sevscXgafv
    , sevscUploadProtocol
    , sevscAccessToken
    , sevscUploadType
    , sevscPayload
    , sevscCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.enableVpcServiceControls@ method which the
-- 'ServicesEnableVPCServiceControls' request conforms to.
type ServicesEnableVPCServiceControlsResource =
     "v1" :>
       CaptureMode "parent" "enableVpcServiceControls" Text
         :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] EnableVPCServiceControlsRequest :>
                       Patch '[JSON] Operation

-- | Enables VPC service controls for a connection.
--
-- /See:/ 'servicesEnableVPCServiceControls' smart constructor.
data ServicesEnableVPCServiceControls =
  ServicesEnableVPCServiceControls'
    { _sevscParent :: !Text
    , _sevscXgafv :: !(Maybe Xgafv)
    , _sevscUploadProtocol :: !(Maybe Text)
    , _sevscAccessToken :: !(Maybe Text)
    , _sevscUploadType :: !(Maybe Text)
    , _sevscPayload :: !EnableVPCServiceControlsRequest
    , _sevscCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesEnableVPCServiceControls' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sevscParent'
--
-- * 'sevscXgafv'
--
-- * 'sevscUploadProtocol'
--
-- * 'sevscAccessToken'
--
-- * 'sevscUploadType'
--
-- * 'sevscPayload'
--
-- * 'sevscCallback'
servicesEnableVPCServiceControls
    :: Text -- ^ 'sevscParent'
    -> EnableVPCServiceControlsRequest -- ^ 'sevscPayload'
    -> ServicesEnableVPCServiceControls
servicesEnableVPCServiceControls pSevscParent_ pSevscPayload_ =
  ServicesEnableVPCServiceControls'
    { _sevscParent = pSevscParent_
    , _sevscXgafv = Nothing
    , _sevscUploadProtocol = Nothing
    , _sevscAccessToken = Nothing
    , _sevscUploadType = Nothing
    , _sevscPayload = pSevscPayload_
    , _sevscCallback = Nothing
    }


-- | The service that is managing peering connectivity for a service
-- producer\'s organization. For Google services that support this
-- functionality, this value is
-- \`services\/servicenetworking.googleapis.com\`.
sevscParent :: Lens' ServicesEnableVPCServiceControls Text
sevscParent
  = lens _sevscParent (\ s a -> s{_sevscParent = a})

-- | V1 error format.
sevscXgafv :: Lens' ServicesEnableVPCServiceControls (Maybe Xgafv)
sevscXgafv
  = lens _sevscXgafv (\ s a -> s{_sevscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sevscUploadProtocol :: Lens' ServicesEnableVPCServiceControls (Maybe Text)
sevscUploadProtocol
  = lens _sevscUploadProtocol
      (\ s a -> s{_sevscUploadProtocol = a})

-- | OAuth access token.
sevscAccessToken :: Lens' ServicesEnableVPCServiceControls (Maybe Text)
sevscAccessToken
  = lens _sevscAccessToken
      (\ s a -> s{_sevscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sevscUploadType :: Lens' ServicesEnableVPCServiceControls (Maybe Text)
sevscUploadType
  = lens _sevscUploadType
      (\ s a -> s{_sevscUploadType = a})

-- | Multipart request metadata.
sevscPayload :: Lens' ServicesEnableVPCServiceControls EnableVPCServiceControlsRequest
sevscPayload
  = lens _sevscPayload (\ s a -> s{_sevscPayload = a})

-- | JSONP
sevscCallback :: Lens' ServicesEnableVPCServiceControls (Maybe Text)
sevscCallback
  = lens _sevscCallback
      (\ s a -> s{_sevscCallback = a})

instance GoogleRequest
           ServicesEnableVPCServiceControls
         where
        type Rs ServicesEnableVPCServiceControls = Operation
        type Scopes ServicesEnableVPCServiceControls =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesEnableVPCServiceControls'{..}
          = go _sevscParent _sevscXgafv _sevscUploadProtocol
              _sevscAccessToken
              _sevscUploadType
              _sevscCallback
              (Just AltJSON)
              _sevscPayload
              serviceNetworkingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ServicesEnableVPCServiceControlsResource)
                      mempty
