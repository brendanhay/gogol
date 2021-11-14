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
-- Module      : Network.Google.Resource.ServiceNetworking.Services.DNSZones.Add
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Service producers can use this method to add private DNS zones in the
-- shared producer host project and matching peering zones in the consumer
-- project.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.dnsZones.add@.
module Network.Google.Resource.ServiceNetworking.Services.DNSZones.Add
    (
    -- * REST Resource
      ServicesDNSZonesAddResource

    -- * Creating a Request
    , servicesDNSZonesAdd
    , ServicesDNSZonesAdd

    -- * Request Lenses
    , sdzaParent
    , sdzaXgafv
    , sdzaUploadProtocol
    , sdzaAccessToken
    , sdzaUploadType
    , sdzaPayload
    , sdzaCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.dnsZones.add@ method which the
-- 'ServicesDNSZonesAdd' request conforms to.
type ServicesDNSZonesAddResource =
     "v1" :>
       Capture "parent" Text :>
         "dnsZones:add" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] AddDNSZoneRequest :>
                         Post '[JSON] Operation

-- | Service producers can use this method to add private DNS zones in the
-- shared producer host project and matching peering zones in the consumer
-- project.
--
-- /See:/ 'servicesDNSZonesAdd' smart constructor.
data ServicesDNSZonesAdd =
  ServicesDNSZonesAdd'
    { _sdzaParent :: !Text
    , _sdzaXgafv :: !(Maybe Xgafv)
    , _sdzaUploadProtocol :: !(Maybe Text)
    , _sdzaAccessToken :: !(Maybe Text)
    , _sdzaUploadType :: !(Maybe Text)
    , _sdzaPayload :: !AddDNSZoneRequest
    , _sdzaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesDNSZonesAdd' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdzaParent'
--
-- * 'sdzaXgafv'
--
-- * 'sdzaUploadProtocol'
--
-- * 'sdzaAccessToken'
--
-- * 'sdzaUploadType'
--
-- * 'sdzaPayload'
--
-- * 'sdzaCallback'
servicesDNSZonesAdd
    :: Text -- ^ 'sdzaParent'
    -> AddDNSZoneRequest -- ^ 'sdzaPayload'
    -> ServicesDNSZonesAdd
servicesDNSZonesAdd pSdzaParent_ pSdzaPayload_ =
  ServicesDNSZonesAdd'
    { _sdzaParent = pSdzaParent_
    , _sdzaXgafv = Nothing
    , _sdzaUploadProtocol = Nothing
    , _sdzaAccessToken = Nothing
    , _sdzaUploadType = Nothing
    , _sdzaPayload = pSdzaPayload_
    , _sdzaCallback = Nothing
    }


-- | Required. The service that is managing peering connectivity for a
-- service producer\'s organization. For Google services that support this
-- functionality, this value is
-- \`services\/servicenetworking.googleapis.com\`.
sdzaParent :: Lens' ServicesDNSZonesAdd Text
sdzaParent
  = lens _sdzaParent (\ s a -> s{_sdzaParent = a})

-- | V1 error format.
sdzaXgafv :: Lens' ServicesDNSZonesAdd (Maybe Xgafv)
sdzaXgafv
  = lens _sdzaXgafv (\ s a -> s{_sdzaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sdzaUploadProtocol :: Lens' ServicesDNSZonesAdd (Maybe Text)
sdzaUploadProtocol
  = lens _sdzaUploadProtocol
      (\ s a -> s{_sdzaUploadProtocol = a})

-- | OAuth access token.
sdzaAccessToken :: Lens' ServicesDNSZonesAdd (Maybe Text)
sdzaAccessToken
  = lens _sdzaAccessToken
      (\ s a -> s{_sdzaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sdzaUploadType :: Lens' ServicesDNSZonesAdd (Maybe Text)
sdzaUploadType
  = lens _sdzaUploadType
      (\ s a -> s{_sdzaUploadType = a})

-- | Multipart request metadata.
sdzaPayload :: Lens' ServicesDNSZonesAdd AddDNSZoneRequest
sdzaPayload
  = lens _sdzaPayload (\ s a -> s{_sdzaPayload = a})

-- | JSONP
sdzaCallback :: Lens' ServicesDNSZonesAdd (Maybe Text)
sdzaCallback
  = lens _sdzaCallback (\ s a -> s{_sdzaCallback = a})

instance GoogleRequest ServicesDNSZonesAdd where
        type Rs ServicesDNSZonesAdd = Operation
        type Scopes ServicesDNSZonesAdd =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesDNSZonesAdd'{..}
          = go _sdzaParent _sdzaXgafv _sdzaUploadProtocol
              _sdzaAccessToken
              _sdzaUploadType
              _sdzaCallback
              (Just AltJSON)
              _sdzaPayload
              serviceNetworkingService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesDNSZonesAddResource)
                      mempty
