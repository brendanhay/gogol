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
-- Module      : Network.Google.Resource.ServiceNetworking.Services.Connections.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the private connections that are configured in a service
-- consumer\'s VPC network.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.connections.list@.
module Network.Google.Resource.ServiceNetworking.Services.Connections.List
    (
    -- * REST Resource
      ServicesConnectionsListResource

    -- * Creating a Request
    , servicesConnectionsList
    , ServicesConnectionsList

    -- * Request Lenses
    , sclParent
    , sclXgafv
    , sclUploadProtocol
    , sclAccessToken
    , sclUploadType
    , sclNetwork
    , sclCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.connections.list@ method which the
-- 'ServicesConnectionsList' request conforms to.
type ServicesConnectionsListResource =
     "v1" :>
       Capture "parent" Text :>
         "connections" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "network" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ListConnectionsResponse

-- | List the private connections that are configured in a service
-- consumer\'s VPC network.
--
-- /See:/ 'servicesConnectionsList' smart constructor.
data ServicesConnectionsList =
  ServicesConnectionsList'
    { _sclParent         :: !Text
    , _sclXgafv          :: !(Maybe Xgafv)
    , _sclUploadProtocol :: !(Maybe Text)
    , _sclAccessToken    :: !(Maybe Text)
    , _sclUploadType     :: !(Maybe Text)
    , _sclNetwork        :: !(Maybe Text)
    , _sclCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesConnectionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sclParent'
--
-- * 'sclXgafv'
--
-- * 'sclUploadProtocol'
--
-- * 'sclAccessToken'
--
-- * 'sclUploadType'
--
-- * 'sclNetwork'
--
-- * 'sclCallback'
servicesConnectionsList
    :: Text -- ^ 'sclParent'
    -> ServicesConnectionsList
servicesConnectionsList pSclParent_ =
  ServicesConnectionsList'
    { _sclParent = pSclParent_
    , _sclXgafv = Nothing
    , _sclUploadProtocol = Nothing
    , _sclAccessToken = Nothing
    , _sclUploadType = Nothing
    , _sclNetwork = Nothing
    , _sclCallback = Nothing
    }


-- | The service that is managing peering connectivity for a service
-- producer\'s organization. For Google services that support this
-- functionality, this value is
-- \`services\/servicenetworking.googleapis.com\`. If you specify
-- \`services\/-\` as the parameter value, all configured peering services
-- are listed.
sclParent :: Lens' ServicesConnectionsList Text
sclParent
  = lens _sclParent (\ s a -> s{_sclParent = a})

-- | V1 error format.
sclXgafv :: Lens' ServicesConnectionsList (Maybe Xgafv)
sclXgafv = lens _sclXgafv (\ s a -> s{_sclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sclUploadProtocol :: Lens' ServicesConnectionsList (Maybe Text)
sclUploadProtocol
  = lens _sclUploadProtocol
      (\ s a -> s{_sclUploadProtocol = a})

-- | OAuth access token.
sclAccessToken :: Lens' ServicesConnectionsList (Maybe Text)
sclAccessToken
  = lens _sclAccessToken
      (\ s a -> s{_sclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sclUploadType :: Lens' ServicesConnectionsList (Maybe Text)
sclUploadType
  = lens _sclUploadType
      (\ s a -> s{_sclUploadType = a})

-- | The name of service consumer\'s VPC network that\'s connected with
-- service producer network through a private connection. The network name
-- must be in the following format:
-- \`projects\/{project}\/global\/networks\/{network}\`. {project} is a
-- project number, such as in \`12345\` that includes the VPC service
-- consumer\'s VPC network. {network} is the name of the service
-- consumer\'s VPC network.
sclNetwork :: Lens' ServicesConnectionsList (Maybe Text)
sclNetwork
  = lens _sclNetwork (\ s a -> s{_sclNetwork = a})

-- | JSONP
sclCallback :: Lens' ServicesConnectionsList (Maybe Text)
sclCallback
  = lens _sclCallback (\ s a -> s{_sclCallback = a})

instance GoogleRequest ServicesConnectionsList where
        type Rs ServicesConnectionsList =
             ListConnectionsResponse
        type Scopes ServicesConnectionsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesConnectionsList'{..}
          = go _sclParent _sclXgafv _sclUploadProtocol
              _sclAccessToken
              _sclUploadType
              _sclNetwork
              _sclCallback
              (Just AltJSON)
              serviceNetworkingService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesConnectionsListResource)
                      mempty
