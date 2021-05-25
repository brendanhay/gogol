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
-- Module      : Network.Google.Resource.ServiceNetworking.Services.Projects.Global.Networks.PeeredDNSDomains.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a peered DNS domain which sends requests for records in given
-- namespace originating in the service producer VPC network to the
-- consumer VPC network to be resolved.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.projects.global.networks.peeredDnsDomains.create@.
module Network.Google.Resource.ServiceNetworking.Services.Projects.Global.Networks.PeeredDNSDomains.Create
    (
    -- * REST Resource
      ServicesProjectsGlobalNetworksPeeredDNSDomainsCreateResource

    -- * Creating a Request
    , servicesProjectsGlobalNetworksPeeredDNSDomainsCreate
    , ServicesProjectsGlobalNetworksPeeredDNSDomainsCreate

    -- * Request Lenses
    , spgnpddcParent
    , spgnpddcXgafv
    , spgnpddcUploadProtocol
    , spgnpddcAccessToken
    , spgnpddcUploadType
    , spgnpddcPayload
    , spgnpddcCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.projects.global.networks.peeredDnsDomains.create@ method which the
-- 'ServicesProjectsGlobalNetworksPeeredDNSDomainsCreate' request conforms to.
type ServicesProjectsGlobalNetworksPeeredDNSDomainsCreateResource
     =
     "v1" :>
       Capture "parent" Text :>
         "peeredDnsDomains" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] PeeredDNSDomain :>
                         Post '[JSON] Operation

-- | Creates a peered DNS domain which sends requests for records in given
-- namespace originating in the service producer VPC network to the
-- consumer VPC network to be resolved.
--
-- /See:/ 'servicesProjectsGlobalNetworksPeeredDNSDomainsCreate' smart constructor.
data ServicesProjectsGlobalNetworksPeeredDNSDomainsCreate =
  ServicesProjectsGlobalNetworksPeeredDNSDomainsCreate'
    { _spgnpddcParent :: !Text
    , _spgnpddcXgafv :: !(Maybe Xgafv)
    , _spgnpddcUploadProtocol :: !(Maybe Text)
    , _spgnpddcAccessToken :: !(Maybe Text)
    , _spgnpddcUploadType :: !(Maybe Text)
    , _spgnpddcPayload :: !PeeredDNSDomain
    , _spgnpddcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesProjectsGlobalNetworksPeeredDNSDomainsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spgnpddcParent'
--
-- * 'spgnpddcXgafv'
--
-- * 'spgnpddcUploadProtocol'
--
-- * 'spgnpddcAccessToken'
--
-- * 'spgnpddcUploadType'
--
-- * 'spgnpddcPayload'
--
-- * 'spgnpddcCallback'
servicesProjectsGlobalNetworksPeeredDNSDomainsCreate
    :: Text -- ^ 'spgnpddcParent'
    -> PeeredDNSDomain -- ^ 'spgnpddcPayload'
    -> ServicesProjectsGlobalNetworksPeeredDNSDomainsCreate
servicesProjectsGlobalNetworksPeeredDNSDomainsCreate pSpgnpddcParent_ pSpgnpddcPayload_ =
  ServicesProjectsGlobalNetworksPeeredDNSDomainsCreate'
    { _spgnpddcParent = pSpgnpddcParent_
    , _spgnpddcXgafv = Nothing
    , _spgnpddcUploadProtocol = Nothing
    , _spgnpddcAccessToken = Nothing
    , _spgnpddcUploadType = Nothing
    , _spgnpddcPayload = pSpgnpddcPayload_
    , _spgnpddcCallback = Nothing
    }


-- | Required. Parent resource identifying the connection for which the
-- peered DNS domain will be created in the format:
-- \`services\/{service}\/projects\/{project}\/global\/networks\/{network}\`
-- {service} is the peering service that is managing connectivity for the
-- service producer\'s organization. For Google services that support this
-- functionality, this value is \`servicenetworking.googleapis.com\`.
-- {project} is the number of the project that contains the service
-- consumer\'s VPC network e.g. \`12345\`. {network} is the name of the
-- service consumer\'s VPC network.
spgnpddcParent :: Lens' ServicesProjectsGlobalNetworksPeeredDNSDomainsCreate Text
spgnpddcParent
  = lens _spgnpddcParent
      (\ s a -> s{_spgnpddcParent = a})

-- | V1 error format.
spgnpddcXgafv :: Lens' ServicesProjectsGlobalNetworksPeeredDNSDomainsCreate (Maybe Xgafv)
spgnpddcXgafv
  = lens _spgnpddcXgafv
      (\ s a -> s{_spgnpddcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
spgnpddcUploadProtocol :: Lens' ServicesProjectsGlobalNetworksPeeredDNSDomainsCreate (Maybe Text)
spgnpddcUploadProtocol
  = lens _spgnpddcUploadProtocol
      (\ s a -> s{_spgnpddcUploadProtocol = a})

-- | OAuth access token.
spgnpddcAccessToken :: Lens' ServicesProjectsGlobalNetworksPeeredDNSDomainsCreate (Maybe Text)
spgnpddcAccessToken
  = lens _spgnpddcAccessToken
      (\ s a -> s{_spgnpddcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
spgnpddcUploadType :: Lens' ServicesProjectsGlobalNetworksPeeredDNSDomainsCreate (Maybe Text)
spgnpddcUploadType
  = lens _spgnpddcUploadType
      (\ s a -> s{_spgnpddcUploadType = a})

-- | Multipart request metadata.
spgnpddcPayload :: Lens' ServicesProjectsGlobalNetworksPeeredDNSDomainsCreate PeeredDNSDomain
spgnpddcPayload
  = lens _spgnpddcPayload
      (\ s a -> s{_spgnpddcPayload = a})

-- | JSONP
spgnpddcCallback :: Lens' ServicesProjectsGlobalNetworksPeeredDNSDomainsCreate (Maybe Text)
spgnpddcCallback
  = lens _spgnpddcCallback
      (\ s a -> s{_spgnpddcCallback = a})

instance GoogleRequest
           ServicesProjectsGlobalNetworksPeeredDNSDomainsCreate
         where
        type Rs
               ServicesProjectsGlobalNetworksPeeredDNSDomainsCreate
             = Operation
        type Scopes
               ServicesProjectsGlobalNetworksPeeredDNSDomainsCreate
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient
          ServicesProjectsGlobalNetworksPeeredDNSDomainsCreate'{..}
          = go _spgnpddcParent _spgnpddcXgafv
              _spgnpddcUploadProtocol
              _spgnpddcAccessToken
              _spgnpddcUploadType
              _spgnpddcCallback
              (Just AltJSON)
              _spgnpddcPayload
              serviceNetworkingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ServicesProjectsGlobalNetworksPeeredDNSDomainsCreateResource)
                      mempty
