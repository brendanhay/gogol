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
-- Module      : Network.Google.Resource.ServiceNetworking.Services.Connections.DeleteConnection
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a private service access connection.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.connections.deleteConnection@.
module Network.Google.Resource.ServiceNetworking.Services.Connections.DeleteConnection
    (
    -- * REST Resource
      ServicesConnectionsDeleteConnectionResource

    -- * Creating a Request
    , servicesConnectionsDeleteConnection
    , ServicesConnectionsDeleteConnection

    -- * Request Lenses
    , scdcXgafv
    , scdcUploadProtocol
    , scdcAccessToken
    , scdcUploadType
    , scdcPayload
    , scdcName
    , scdcCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.connections.deleteConnection@ method which the
-- 'ServicesConnectionsDeleteConnection' request conforms to.
type ServicesConnectionsDeleteConnectionResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] DeleteConnectionRequest :>
                       Post '[JSON] Operation

-- | Deletes a private service access connection.
--
-- /See:/ 'servicesConnectionsDeleteConnection' smart constructor.
data ServicesConnectionsDeleteConnection =
  ServicesConnectionsDeleteConnection'
    { _scdcXgafv :: !(Maybe Xgafv)
    , _scdcUploadProtocol :: !(Maybe Text)
    , _scdcAccessToken :: !(Maybe Text)
    , _scdcUploadType :: !(Maybe Text)
    , _scdcPayload :: !DeleteConnectionRequest
    , _scdcName :: !Text
    , _scdcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesConnectionsDeleteConnection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scdcXgafv'
--
-- * 'scdcUploadProtocol'
--
-- * 'scdcAccessToken'
--
-- * 'scdcUploadType'
--
-- * 'scdcPayload'
--
-- * 'scdcName'
--
-- * 'scdcCallback'
servicesConnectionsDeleteConnection
    :: DeleteConnectionRequest -- ^ 'scdcPayload'
    -> Text -- ^ 'scdcName'
    -> ServicesConnectionsDeleteConnection
servicesConnectionsDeleteConnection pScdcPayload_ pScdcName_ =
  ServicesConnectionsDeleteConnection'
    { _scdcXgafv = Nothing
    , _scdcUploadProtocol = Nothing
    , _scdcAccessToken = Nothing
    , _scdcUploadType = Nothing
    , _scdcPayload = pScdcPayload_
    , _scdcName = pScdcName_
    , _scdcCallback = Nothing
    }


-- | V1 error format.
scdcXgafv :: Lens' ServicesConnectionsDeleteConnection (Maybe Xgafv)
scdcXgafv
  = lens _scdcXgafv (\ s a -> s{_scdcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
scdcUploadProtocol :: Lens' ServicesConnectionsDeleteConnection (Maybe Text)
scdcUploadProtocol
  = lens _scdcUploadProtocol
      (\ s a -> s{_scdcUploadProtocol = a})

-- | OAuth access token.
scdcAccessToken :: Lens' ServicesConnectionsDeleteConnection (Maybe Text)
scdcAccessToken
  = lens _scdcAccessToken
      (\ s a -> s{_scdcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
scdcUploadType :: Lens' ServicesConnectionsDeleteConnection (Maybe Text)
scdcUploadType
  = lens _scdcUploadType
      (\ s a -> s{_scdcUploadType = a})

-- | Multipart request metadata.
scdcPayload :: Lens' ServicesConnectionsDeleteConnection DeleteConnectionRequest
scdcPayload
  = lens _scdcPayload (\ s a -> s{_scdcPayload = a})

-- | Required. The private service connection that connects to a service
-- producer organization. The name includes both the private service name
-- and the VPC network peering name in the format of
-- \`services\/{peering_service_name}\/connections\/{vpc_peering_name}\`.
-- For Google services that support this functionality, this is
-- \`services\/servicenetworking.googleapis.com\/connections\/servicenetworking-googleapis-com\`.
scdcName :: Lens' ServicesConnectionsDeleteConnection Text
scdcName = lens _scdcName (\ s a -> s{_scdcName = a})

-- | JSONP
scdcCallback :: Lens' ServicesConnectionsDeleteConnection (Maybe Text)
scdcCallback
  = lens _scdcCallback (\ s a -> s{_scdcCallback = a})

instance GoogleRequest
           ServicesConnectionsDeleteConnection
         where
        type Rs ServicesConnectionsDeleteConnection =
             Operation
        type Scopes ServicesConnectionsDeleteConnection =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient
          ServicesConnectionsDeleteConnection'{..}
          = go _scdcName _scdcXgafv _scdcUploadProtocol
              _scdcAccessToken
              _scdcUploadType
              _scdcCallback
              (Just AltJSON)
              _scdcPayload
              serviceNetworkingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ServicesConnectionsDeleteConnectionResource)
                      mempty
