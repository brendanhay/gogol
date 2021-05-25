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
-- Module      : Network.Google.Resource.ServiceNetworking.Services.Connections.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a private connection that establishes a VPC Network Peering
-- connection to a VPC network in the service producer\'s organization. The
-- administrator of the service consumer\'s VPC network invokes this
-- method. The administrator must assign one or more allocated IP ranges
-- for provisioning subnetworks in the service producer\'s VPC network.
-- This connection is used for all supported services in the service
-- producer\'s organization, so it only needs to be invoked once.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.connections.create@.
module Network.Google.Resource.ServiceNetworking.Services.Connections.Create
    (
    -- * REST Resource
      ServicesConnectionsCreateResource

    -- * Creating a Request
    , servicesConnectionsCreate
    , ServicesConnectionsCreate

    -- * Request Lenses
    , sccParent
    , sccXgafv
    , sccUploadProtocol
    , sccAccessToken
    , sccUploadType
    , sccPayload
    , sccCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.connections.create@ method which the
-- 'ServicesConnectionsCreate' request conforms to.
type ServicesConnectionsCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "connections" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Connection :> Post '[JSON] Operation

-- | Creates a private connection that establishes a VPC Network Peering
-- connection to a VPC network in the service producer\'s organization. The
-- administrator of the service consumer\'s VPC network invokes this
-- method. The administrator must assign one or more allocated IP ranges
-- for provisioning subnetworks in the service producer\'s VPC network.
-- This connection is used for all supported services in the service
-- producer\'s organization, so it only needs to be invoked once.
--
-- /See:/ 'servicesConnectionsCreate' smart constructor.
data ServicesConnectionsCreate =
  ServicesConnectionsCreate'
    { _sccParent :: !Text
    , _sccXgafv :: !(Maybe Xgafv)
    , _sccUploadProtocol :: !(Maybe Text)
    , _sccAccessToken :: !(Maybe Text)
    , _sccUploadType :: !(Maybe Text)
    , _sccPayload :: !Connection
    , _sccCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesConnectionsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sccParent'
--
-- * 'sccXgafv'
--
-- * 'sccUploadProtocol'
--
-- * 'sccAccessToken'
--
-- * 'sccUploadType'
--
-- * 'sccPayload'
--
-- * 'sccCallback'
servicesConnectionsCreate
    :: Text -- ^ 'sccParent'
    -> Connection -- ^ 'sccPayload'
    -> ServicesConnectionsCreate
servicesConnectionsCreate pSccParent_ pSccPayload_ =
  ServicesConnectionsCreate'
    { _sccParent = pSccParent_
    , _sccXgafv = Nothing
    , _sccUploadProtocol = Nothing
    , _sccAccessToken = Nothing
    , _sccUploadType = Nothing
    , _sccPayload = pSccPayload_
    , _sccCallback = Nothing
    }


-- | The service that is managing peering connectivity for a service
-- producer\'s organization. For Google services that support this
-- functionality, this value is
-- \`services\/servicenetworking.googleapis.com\`.
sccParent :: Lens' ServicesConnectionsCreate Text
sccParent
  = lens _sccParent (\ s a -> s{_sccParent = a})

-- | V1 error format.
sccXgafv :: Lens' ServicesConnectionsCreate (Maybe Xgafv)
sccXgafv = lens _sccXgafv (\ s a -> s{_sccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sccUploadProtocol :: Lens' ServicesConnectionsCreate (Maybe Text)
sccUploadProtocol
  = lens _sccUploadProtocol
      (\ s a -> s{_sccUploadProtocol = a})

-- | OAuth access token.
sccAccessToken :: Lens' ServicesConnectionsCreate (Maybe Text)
sccAccessToken
  = lens _sccAccessToken
      (\ s a -> s{_sccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sccUploadType :: Lens' ServicesConnectionsCreate (Maybe Text)
sccUploadType
  = lens _sccUploadType
      (\ s a -> s{_sccUploadType = a})

-- | Multipart request metadata.
sccPayload :: Lens' ServicesConnectionsCreate Connection
sccPayload
  = lens _sccPayload (\ s a -> s{_sccPayload = a})

-- | JSONP
sccCallback :: Lens' ServicesConnectionsCreate (Maybe Text)
sccCallback
  = lens _sccCallback (\ s a -> s{_sccCallback = a})

instance GoogleRequest ServicesConnectionsCreate
         where
        type Rs ServicesConnectionsCreate = Operation
        type Scopes ServicesConnectionsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesConnectionsCreate'{..}
          = go _sccParent _sccXgafv _sccUploadProtocol
              _sccAccessToken
              _sccUploadType
              _sccCallback
              (Just AltJSON)
              _sccPayload
              serviceNetworkingService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesConnectionsCreateResource)
                      mempty
