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
-- Module      : Network.Google.Resource.ServiceNetworking.Services.Projects.Global.Networks.UpdateConsumerConfig
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Service producers use this method to update the configuration of their
-- connection including the import\/export of custom routes and subnetwork
-- routes with public IP.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.projects.global.networks.updateConsumerConfig@.
module Network.Google.Resource.ServiceNetworking.Services.Projects.Global.Networks.UpdateConsumerConfig
    (
    -- * REST Resource
      ServicesProjectsGlobalNetworksUpdateConsumerConfigResource

    -- * Creating a Request
    , servicesProjectsGlobalNetworksUpdateConsumerConfig
    , ServicesProjectsGlobalNetworksUpdateConsumerConfig

    -- * Request Lenses
    , spgnuccParent
    , spgnuccXgafv
    , spgnuccUploadProtocol
    , spgnuccAccessToken
    , spgnuccUploadType
    , spgnuccPayload
    , spgnuccCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.projects.global.networks.updateConsumerConfig@ method which the
-- 'ServicesProjectsGlobalNetworksUpdateConsumerConfig' request conforms to.
type ServicesProjectsGlobalNetworksUpdateConsumerConfigResource
     =
     "v1" :>
       CaptureMode "parent" "updateConsumerConfig" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] UpdateConsumerConfigRequest :>
                       Patch '[JSON] Operation

-- | Service producers use this method to update the configuration of their
-- connection including the import\/export of custom routes and subnetwork
-- routes with public IP.
--
-- /See:/ 'servicesProjectsGlobalNetworksUpdateConsumerConfig' smart constructor.
data ServicesProjectsGlobalNetworksUpdateConsumerConfig =
  ServicesProjectsGlobalNetworksUpdateConsumerConfig'
    { _spgnuccParent :: !Text
    , _spgnuccXgafv :: !(Maybe Xgafv)
    , _spgnuccUploadProtocol :: !(Maybe Text)
    , _spgnuccAccessToken :: !(Maybe Text)
    , _spgnuccUploadType :: !(Maybe Text)
    , _spgnuccPayload :: !UpdateConsumerConfigRequest
    , _spgnuccCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesProjectsGlobalNetworksUpdateConsumerConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spgnuccParent'
--
-- * 'spgnuccXgafv'
--
-- * 'spgnuccUploadProtocol'
--
-- * 'spgnuccAccessToken'
--
-- * 'spgnuccUploadType'
--
-- * 'spgnuccPayload'
--
-- * 'spgnuccCallback'
servicesProjectsGlobalNetworksUpdateConsumerConfig
    :: Text -- ^ 'spgnuccParent'
    -> UpdateConsumerConfigRequest -- ^ 'spgnuccPayload'
    -> ServicesProjectsGlobalNetworksUpdateConsumerConfig
servicesProjectsGlobalNetworksUpdateConsumerConfig pSpgnuccParent_ pSpgnuccPayload_ =
  ServicesProjectsGlobalNetworksUpdateConsumerConfig'
    { _spgnuccParent = pSpgnuccParent_
    , _spgnuccXgafv = Nothing
    , _spgnuccUploadProtocol = Nothing
    , _spgnuccAccessToken = Nothing
    , _spgnuccUploadType = Nothing
    , _spgnuccPayload = pSpgnuccPayload_
    , _spgnuccCallback = Nothing
    }


-- | Required. Parent resource identifying the connection for which the
-- consumer config is being updated in the format:
-- \`services\/{service}\/projects\/{project}\/global\/networks\/{network}\`
-- {service} is the peering service that is managing connectivity for the
-- service producer\'s organization. For Google services that support this
-- functionality, this value is \`servicenetworking.googleapis.com\`.
-- {project} is the number of the project that contains the service
-- consumer\'s VPC network e.g. \`12345\`. {network} is the name of the
-- service consumer\'s VPC network.
spgnuccParent :: Lens' ServicesProjectsGlobalNetworksUpdateConsumerConfig Text
spgnuccParent
  = lens _spgnuccParent
      (\ s a -> s{_spgnuccParent = a})

-- | V1 error format.
spgnuccXgafv :: Lens' ServicesProjectsGlobalNetworksUpdateConsumerConfig (Maybe Xgafv)
spgnuccXgafv
  = lens _spgnuccXgafv (\ s a -> s{_spgnuccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
spgnuccUploadProtocol :: Lens' ServicesProjectsGlobalNetworksUpdateConsumerConfig (Maybe Text)
spgnuccUploadProtocol
  = lens _spgnuccUploadProtocol
      (\ s a -> s{_spgnuccUploadProtocol = a})

-- | OAuth access token.
spgnuccAccessToken :: Lens' ServicesProjectsGlobalNetworksUpdateConsumerConfig (Maybe Text)
spgnuccAccessToken
  = lens _spgnuccAccessToken
      (\ s a -> s{_spgnuccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
spgnuccUploadType :: Lens' ServicesProjectsGlobalNetworksUpdateConsumerConfig (Maybe Text)
spgnuccUploadType
  = lens _spgnuccUploadType
      (\ s a -> s{_spgnuccUploadType = a})

-- | Multipart request metadata.
spgnuccPayload :: Lens' ServicesProjectsGlobalNetworksUpdateConsumerConfig UpdateConsumerConfigRequest
spgnuccPayload
  = lens _spgnuccPayload
      (\ s a -> s{_spgnuccPayload = a})

-- | JSONP
spgnuccCallback :: Lens' ServicesProjectsGlobalNetworksUpdateConsumerConfig (Maybe Text)
spgnuccCallback
  = lens _spgnuccCallback
      (\ s a -> s{_spgnuccCallback = a})

instance GoogleRequest
           ServicesProjectsGlobalNetworksUpdateConsumerConfig
         where
        type Rs
               ServicesProjectsGlobalNetworksUpdateConsumerConfig
             = Operation
        type Scopes
               ServicesProjectsGlobalNetworksUpdateConsumerConfig
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient
          ServicesProjectsGlobalNetworksUpdateConsumerConfig'{..}
          = go _spgnuccParent _spgnuccXgafv
              _spgnuccUploadProtocol
              _spgnuccAccessToken
              _spgnuccUploadType
              _spgnuccCallback
              (Just AltJSON)
              _spgnuccPayload
              serviceNetworkingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ServicesProjectsGlobalNetworksUpdateConsumerConfigResource)
                      mempty
