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
-- Module      : Network.Google.Resource.ServiceNetworking.Services.Projects.Global.Networks.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Service producers use this method to get the configuration of their
-- connection including the import\/export of custom routes and subnetwork
-- routes with public IP.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.projects.global.networks.get@.
module Network.Google.Resource.ServiceNetworking.Services.Projects.Global.Networks.Get
    (
    -- * REST Resource
      ServicesProjectsGlobalNetworksGetResource

    -- * Creating a Request
    , servicesProjectsGlobalNetworksGet
    , ServicesProjectsGlobalNetworksGet

    -- * Request Lenses
    , spgngXgafv
    , spgngUploadProtocol
    , spgngAccessToken
    , spgngUploadType
    , spgngName
    , spgngCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.projects.global.networks.get@ method which the
-- 'ServicesProjectsGlobalNetworksGet' request conforms to.
type ServicesProjectsGlobalNetworksGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ConsumerConfig

-- | Service producers use this method to get the configuration of their
-- connection including the import\/export of custom routes and subnetwork
-- routes with public IP.
--
-- /See:/ 'servicesProjectsGlobalNetworksGet' smart constructor.
data ServicesProjectsGlobalNetworksGet =
  ServicesProjectsGlobalNetworksGet'
    { _spgngXgafv :: !(Maybe Xgafv)
    , _spgngUploadProtocol :: !(Maybe Text)
    , _spgngAccessToken :: !(Maybe Text)
    , _spgngUploadType :: !(Maybe Text)
    , _spgngName :: !Text
    , _spgngCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesProjectsGlobalNetworksGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spgngXgafv'
--
-- * 'spgngUploadProtocol'
--
-- * 'spgngAccessToken'
--
-- * 'spgngUploadType'
--
-- * 'spgngName'
--
-- * 'spgngCallback'
servicesProjectsGlobalNetworksGet
    :: Text -- ^ 'spgngName'
    -> ServicesProjectsGlobalNetworksGet
servicesProjectsGlobalNetworksGet pSpgngName_ =
  ServicesProjectsGlobalNetworksGet'
    { _spgngXgafv = Nothing
    , _spgngUploadProtocol = Nothing
    , _spgngAccessToken = Nothing
    , _spgngUploadType = Nothing
    , _spgngName = pSpgngName_
    , _spgngCallback = Nothing
    }


-- | V1 error format.
spgngXgafv :: Lens' ServicesProjectsGlobalNetworksGet (Maybe Xgafv)
spgngXgafv
  = lens _spgngXgafv (\ s a -> s{_spgngXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
spgngUploadProtocol :: Lens' ServicesProjectsGlobalNetworksGet (Maybe Text)
spgngUploadProtocol
  = lens _spgngUploadProtocol
      (\ s a -> s{_spgngUploadProtocol = a})

-- | OAuth access token.
spgngAccessToken :: Lens' ServicesProjectsGlobalNetworksGet (Maybe Text)
spgngAccessToken
  = lens _spgngAccessToken
      (\ s a -> s{_spgngAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
spgngUploadType :: Lens' ServicesProjectsGlobalNetworksGet (Maybe Text)
spgngUploadType
  = lens _spgngUploadType
      (\ s a -> s{_spgngUploadType = a})

-- | Required. Name of the consumer config to retrieve in the format:
-- \`services\/{service}\/projects\/{project}\/global\/networks\/{network}\`.
-- {service} is the peering service that is managing connectivity for the
-- service producer\'s organization. For Google services that support this
-- functionality, this value is \`servicenetworking.googleapis.com\`.
-- {project} is a project number e.g. \`12345\` that contains the service
-- consumer\'s VPC network. {network} is the name of the service
-- consumer\'s VPC network.
spgngName :: Lens' ServicesProjectsGlobalNetworksGet Text
spgngName
  = lens _spgngName (\ s a -> s{_spgngName = a})

-- | JSONP
spgngCallback :: Lens' ServicesProjectsGlobalNetworksGet (Maybe Text)
spgngCallback
  = lens _spgngCallback
      (\ s a -> s{_spgngCallback = a})

instance GoogleRequest
           ServicesProjectsGlobalNetworksGet
         where
        type Rs ServicesProjectsGlobalNetworksGet =
             ConsumerConfig
        type Scopes ServicesProjectsGlobalNetworksGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesProjectsGlobalNetworksGet'{..}
          = go _spgngName _spgngXgafv _spgngUploadProtocol
              _spgngAccessToken
              _spgngUploadType
              _spgngCallback
              (Just AltJSON)
              serviceNetworkingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ServicesProjectsGlobalNetworksGetResource)
                      mempty
