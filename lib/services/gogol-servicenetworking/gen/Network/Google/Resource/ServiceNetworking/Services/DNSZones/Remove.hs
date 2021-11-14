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
-- Module      : Network.Google.Resource.ServiceNetworking.Services.DNSZones.Remove
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Service producers can use this method to remove private DNS zones in the
-- shared producer host project and matching peering zones in the consumer
-- project.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.dnsZones.remove@.
module Network.Google.Resource.ServiceNetworking.Services.DNSZones.Remove
    (
    -- * REST Resource
      ServicesDNSZonesRemoveResource

    -- * Creating a Request
    , servicesDNSZonesRemove
    , ServicesDNSZonesRemove

    -- * Request Lenses
    , sdzrParent
    , sdzrXgafv
    , sdzrUploadProtocol
    , sdzrAccessToken
    , sdzrUploadType
    , sdzrPayload
    , sdzrCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.dnsZones.remove@ method which the
-- 'ServicesDNSZonesRemove' request conforms to.
type ServicesDNSZonesRemoveResource =
     "v1" :>
       Capture "parent" Text :>
         "dnsZones:remove" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] RemoveDNSZoneRequest :>
                         Post '[JSON] Operation

-- | Service producers can use this method to remove private DNS zones in the
-- shared producer host project and matching peering zones in the consumer
-- project.
--
-- /See:/ 'servicesDNSZonesRemove' smart constructor.
data ServicesDNSZonesRemove =
  ServicesDNSZonesRemove'
    { _sdzrParent :: !Text
    , _sdzrXgafv :: !(Maybe Xgafv)
    , _sdzrUploadProtocol :: !(Maybe Text)
    , _sdzrAccessToken :: !(Maybe Text)
    , _sdzrUploadType :: !(Maybe Text)
    , _sdzrPayload :: !RemoveDNSZoneRequest
    , _sdzrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesDNSZonesRemove' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdzrParent'
--
-- * 'sdzrXgafv'
--
-- * 'sdzrUploadProtocol'
--
-- * 'sdzrAccessToken'
--
-- * 'sdzrUploadType'
--
-- * 'sdzrPayload'
--
-- * 'sdzrCallback'
servicesDNSZonesRemove
    :: Text -- ^ 'sdzrParent'
    -> RemoveDNSZoneRequest -- ^ 'sdzrPayload'
    -> ServicesDNSZonesRemove
servicesDNSZonesRemove pSdzrParent_ pSdzrPayload_ =
  ServicesDNSZonesRemove'
    { _sdzrParent = pSdzrParent_
    , _sdzrXgafv = Nothing
    , _sdzrUploadProtocol = Nothing
    , _sdzrAccessToken = Nothing
    , _sdzrUploadType = Nothing
    , _sdzrPayload = pSdzrPayload_
    , _sdzrCallback = Nothing
    }


-- | Required. The service that is managing peering connectivity for a
-- service producer\'s organization. For Google services that support this
-- functionality, this value is
-- \`services\/servicenetworking.googleapis.com\`.
sdzrParent :: Lens' ServicesDNSZonesRemove Text
sdzrParent
  = lens _sdzrParent (\ s a -> s{_sdzrParent = a})

-- | V1 error format.
sdzrXgafv :: Lens' ServicesDNSZonesRemove (Maybe Xgafv)
sdzrXgafv
  = lens _sdzrXgafv (\ s a -> s{_sdzrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sdzrUploadProtocol :: Lens' ServicesDNSZonesRemove (Maybe Text)
sdzrUploadProtocol
  = lens _sdzrUploadProtocol
      (\ s a -> s{_sdzrUploadProtocol = a})

-- | OAuth access token.
sdzrAccessToken :: Lens' ServicesDNSZonesRemove (Maybe Text)
sdzrAccessToken
  = lens _sdzrAccessToken
      (\ s a -> s{_sdzrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sdzrUploadType :: Lens' ServicesDNSZonesRemove (Maybe Text)
sdzrUploadType
  = lens _sdzrUploadType
      (\ s a -> s{_sdzrUploadType = a})

-- | Multipart request metadata.
sdzrPayload :: Lens' ServicesDNSZonesRemove RemoveDNSZoneRequest
sdzrPayload
  = lens _sdzrPayload (\ s a -> s{_sdzrPayload = a})

-- | JSONP
sdzrCallback :: Lens' ServicesDNSZonesRemove (Maybe Text)
sdzrCallback
  = lens _sdzrCallback (\ s a -> s{_sdzrCallback = a})

instance GoogleRequest ServicesDNSZonesRemove where
        type Rs ServicesDNSZonesRemove = Operation
        type Scopes ServicesDNSZonesRemove =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesDNSZonesRemove'{..}
          = go _sdzrParent _sdzrXgafv _sdzrUploadProtocol
              _sdzrAccessToken
              _sdzrUploadType
              _sdzrCallback
              (Just AltJSON)
              _sdzrPayload
              serviceNetworkingService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesDNSZonesRemoveResource)
                      mempty
