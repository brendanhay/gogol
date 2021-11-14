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
-- Module      : Network.Google.Resource.ServiceNetworking.Services.Projects.Global.Networks.PeeredDNSDomains.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists peered DNS domains for a connection.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.projects.global.networks.peeredDnsDomains.list@.
module Network.Google.Resource.ServiceNetworking.Services.Projects.Global.Networks.PeeredDNSDomains.List
    (
    -- * REST Resource
      ServicesProjectsGlobalNetworksPeeredDNSDomainsListResource

    -- * Creating a Request
    , servicesProjectsGlobalNetworksPeeredDNSDomainsList
    , ServicesProjectsGlobalNetworksPeeredDNSDomainsList

    -- * Request Lenses
    , spgnpddlParent
    , spgnpddlXgafv
    , spgnpddlUploadProtocol
    , spgnpddlAccessToken
    , spgnpddlUploadType
    , spgnpddlCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.projects.global.networks.peeredDnsDomains.list@ method which the
-- 'ServicesProjectsGlobalNetworksPeeredDNSDomainsList' request conforms to.
type ServicesProjectsGlobalNetworksPeeredDNSDomainsListResource
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
                       Get '[JSON] ListPeeredDNSDomainsResponse

-- | Lists peered DNS domains for a connection.
--
-- /See:/ 'servicesProjectsGlobalNetworksPeeredDNSDomainsList' smart constructor.
data ServicesProjectsGlobalNetworksPeeredDNSDomainsList =
  ServicesProjectsGlobalNetworksPeeredDNSDomainsList'
    { _spgnpddlParent :: !Text
    , _spgnpddlXgafv :: !(Maybe Xgafv)
    , _spgnpddlUploadProtocol :: !(Maybe Text)
    , _spgnpddlAccessToken :: !(Maybe Text)
    , _spgnpddlUploadType :: !(Maybe Text)
    , _spgnpddlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesProjectsGlobalNetworksPeeredDNSDomainsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spgnpddlParent'
--
-- * 'spgnpddlXgafv'
--
-- * 'spgnpddlUploadProtocol'
--
-- * 'spgnpddlAccessToken'
--
-- * 'spgnpddlUploadType'
--
-- * 'spgnpddlCallback'
servicesProjectsGlobalNetworksPeeredDNSDomainsList
    :: Text -- ^ 'spgnpddlParent'
    -> ServicesProjectsGlobalNetworksPeeredDNSDomainsList
servicesProjectsGlobalNetworksPeeredDNSDomainsList pSpgnpddlParent_ =
  ServicesProjectsGlobalNetworksPeeredDNSDomainsList'
    { _spgnpddlParent = pSpgnpddlParent_
    , _spgnpddlXgafv = Nothing
    , _spgnpddlUploadProtocol = Nothing
    , _spgnpddlAccessToken = Nothing
    , _spgnpddlUploadType = Nothing
    , _spgnpddlCallback = Nothing
    }


-- | Required. Parent resource identifying the connection which owns this
-- collection of peered DNS domains in the format:
-- \`services\/{service}\/projects\/{project}\/global\/networks\/{network}\`.
-- {service} is the peering service that is managing connectivity for the
-- service producer\'s organization. For Google services that support this
-- functionality, this value is \`servicenetworking.googleapis.com\`.
-- {project} is a project number e.g. \`12345\` that contains the service
-- consumer\'s VPC network. {network} is the name of the service
-- consumer\'s VPC network.
spgnpddlParent :: Lens' ServicesProjectsGlobalNetworksPeeredDNSDomainsList Text
spgnpddlParent
  = lens _spgnpddlParent
      (\ s a -> s{_spgnpddlParent = a})

-- | V1 error format.
spgnpddlXgafv :: Lens' ServicesProjectsGlobalNetworksPeeredDNSDomainsList (Maybe Xgafv)
spgnpddlXgafv
  = lens _spgnpddlXgafv
      (\ s a -> s{_spgnpddlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
spgnpddlUploadProtocol :: Lens' ServicesProjectsGlobalNetworksPeeredDNSDomainsList (Maybe Text)
spgnpddlUploadProtocol
  = lens _spgnpddlUploadProtocol
      (\ s a -> s{_spgnpddlUploadProtocol = a})

-- | OAuth access token.
spgnpddlAccessToken :: Lens' ServicesProjectsGlobalNetworksPeeredDNSDomainsList (Maybe Text)
spgnpddlAccessToken
  = lens _spgnpddlAccessToken
      (\ s a -> s{_spgnpddlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
spgnpddlUploadType :: Lens' ServicesProjectsGlobalNetworksPeeredDNSDomainsList (Maybe Text)
spgnpddlUploadType
  = lens _spgnpddlUploadType
      (\ s a -> s{_spgnpddlUploadType = a})

-- | JSONP
spgnpddlCallback :: Lens' ServicesProjectsGlobalNetworksPeeredDNSDomainsList (Maybe Text)
spgnpddlCallback
  = lens _spgnpddlCallback
      (\ s a -> s{_spgnpddlCallback = a})

instance GoogleRequest
           ServicesProjectsGlobalNetworksPeeredDNSDomainsList
         where
        type Rs
               ServicesProjectsGlobalNetworksPeeredDNSDomainsList
             = ListPeeredDNSDomainsResponse
        type Scopes
               ServicesProjectsGlobalNetworksPeeredDNSDomainsList
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient
          ServicesProjectsGlobalNetworksPeeredDNSDomainsList'{..}
          = go _spgnpddlParent _spgnpddlXgafv
              _spgnpddlUploadProtocol
              _spgnpddlAccessToken
              _spgnpddlUploadType
              _spgnpddlCallback
              (Just AltJSON)
              serviceNetworkingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ServicesProjectsGlobalNetworksPeeredDNSDomainsListResource)
                      mempty
