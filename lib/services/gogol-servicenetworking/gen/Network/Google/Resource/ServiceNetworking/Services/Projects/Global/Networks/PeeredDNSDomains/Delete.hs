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
-- Module      : Network.Google.Resource.ServiceNetworking.Services.Projects.Global.Networks.PeeredDNSDomains.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a peered DNS domain.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.projects.global.networks.peeredDnsDomains.delete@.
module Network.Google.Resource.ServiceNetworking.Services.Projects.Global.Networks.PeeredDNSDomains.Delete
    (
    -- * REST Resource
      ServicesProjectsGlobalNetworksPeeredDNSDomainsDeleteResource

    -- * Creating a Request
    , servicesProjectsGlobalNetworksPeeredDNSDomainsDelete
    , ServicesProjectsGlobalNetworksPeeredDNSDomainsDelete

    -- * Request Lenses
    , spgnpdddXgafv
    , spgnpdddUploadProtocol
    , spgnpdddAccessToken
    , spgnpdddUploadType
    , spgnpdddName
    , spgnpdddCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.projects.global.networks.peeredDnsDomains.delete@ method which the
-- 'ServicesProjectsGlobalNetworksPeeredDNSDomainsDelete' request conforms to.
type ServicesProjectsGlobalNetworksPeeredDNSDomainsDeleteResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes a peered DNS domain.
--
-- /See:/ 'servicesProjectsGlobalNetworksPeeredDNSDomainsDelete' smart constructor.
data ServicesProjectsGlobalNetworksPeeredDNSDomainsDelete =
  ServicesProjectsGlobalNetworksPeeredDNSDomainsDelete'
    { _spgnpdddXgafv :: !(Maybe Xgafv)
    , _spgnpdddUploadProtocol :: !(Maybe Text)
    , _spgnpdddAccessToken :: !(Maybe Text)
    , _spgnpdddUploadType :: !(Maybe Text)
    , _spgnpdddName :: !Text
    , _spgnpdddCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesProjectsGlobalNetworksPeeredDNSDomainsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spgnpdddXgafv'
--
-- * 'spgnpdddUploadProtocol'
--
-- * 'spgnpdddAccessToken'
--
-- * 'spgnpdddUploadType'
--
-- * 'spgnpdddName'
--
-- * 'spgnpdddCallback'
servicesProjectsGlobalNetworksPeeredDNSDomainsDelete
    :: Text -- ^ 'spgnpdddName'
    -> ServicesProjectsGlobalNetworksPeeredDNSDomainsDelete
servicesProjectsGlobalNetworksPeeredDNSDomainsDelete pSpgnpdddName_ =
  ServicesProjectsGlobalNetworksPeeredDNSDomainsDelete'
    { _spgnpdddXgafv = Nothing
    , _spgnpdddUploadProtocol = Nothing
    , _spgnpdddAccessToken = Nothing
    , _spgnpdddUploadType = Nothing
    , _spgnpdddName = pSpgnpdddName_
    , _spgnpdddCallback = Nothing
    }


-- | V1 error format.
spgnpdddXgafv :: Lens' ServicesProjectsGlobalNetworksPeeredDNSDomainsDelete (Maybe Xgafv)
spgnpdddXgafv
  = lens _spgnpdddXgafv
      (\ s a -> s{_spgnpdddXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
spgnpdddUploadProtocol :: Lens' ServicesProjectsGlobalNetworksPeeredDNSDomainsDelete (Maybe Text)
spgnpdddUploadProtocol
  = lens _spgnpdddUploadProtocol
      (\ s a -> s{_spgnpdddUploadProtocol = a})

-- | OAuth access token.
spgnpdddAccessToken :: Lens' ServicesProjectsGlobalNetworksPeeredDNSDomainsDelete (Maybe Text)
spgnpdddAccessToken
  = lens _spgnpdddAccessToken
      (\ s a -> s{_spgnpdddAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
spgnpdddUploadType :: Lens' ServicesProjectsGlobalNetworksPeeredDNSDomainsDelete (Maybe Text)
spgnpdddUploadType
  = lens _spgnpdddUploadType
      (\ s a -> s{_spgnpdddUploadType = a})

-- | Required. The name of the peered DNS domain to delete in the format:
-- \`services\/{service}\/projects\/{project}\/global\/networks\/{network}\/peeredDnsDomains\/{name}\`.
-- {service} is the peering service that is managing connectivity for the
-- service producer\'s organization. For Google services that support this
-- functionality, this value is \`servicenetworking.googleapis.com\`.
-- {project} is the number of the project that contains the service
-- consumer\'s VPC network e.g. \`12345\`. {network} is the name of the
-- service consumer\'s VPC network. {name} is the name of the peered DNS
-- domain.
spgnpdddName :: Lens' ServicesProjectsGlobalNetworksPeeredDNSDomainsDelete Text
spgnpdddName
  = lens _spgnpdddName (\ s a -> s{_spgnpdddName = a})

-- | JSONP
spgnpdddCallback :: Lens' ServicesProjectsGlobalNetworksPeeredDNSDomainsDelete (Maybe Text)
spgnpdddCallback
  = lens _spgnpdddCallback
      (\ s a -> s{_spgnpdddCallback = a})

instance GoogleRequest
           ServicesProjectsGlobalNetworksPeeredDNSDomainsDelete
         where
        type Rs
               ServicesProjectsGlobalNetworksPeeredDNSDomainsDelete
             = Operation
        type Scopes
               ServicesProjectsGlobalNetworksPeeredDNSDomainsDelete
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient
          ServicesProjectsGlobalNetworksPeeredDNSDomainsDelete'{..}
          = go _spgnpdddName _spgnpdddXgafv
              _spgnpdddUploadProtocol
              _spgnpdddAccessToken
              _spgnpdddUploadType
              _spgnpdddCallback
              (Just AltJSON)
              serviceNetworkingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ServicesProjectsGlobalNetworksPeeredDNSDomainsDeleteResource)
                      mempty
