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
-- Module      : Network.Google.Resource.ServiceNetworking.Services.DNSRecordSets.Add
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Service producers can use this method to add DNS record sets to private
-- DNS zones in the shared producer host project.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.dnsRecordSets.add@.
module Network.Google.Resource.ServiceNetworking.Services.DNSRecordSets.Add
    (
    -- * REST Resource
      ServicesDNSRecordSetsAddResource

    -- * Creating a Request
    , servicesDNSRecordSetsAdd
    , ServicesDNSRecordSetsAdd

    -- * Request Lenses
    , sdrsaParent
    , sdrsaXgafv
    , sdrsaUploadProtocol
    , sdrsaAccessToken
    , sdrsaUploadType
    , sdrsaPayload
    , sdrsaCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.dnsRecordSets.add@ method which the
-- 'ServicesDNSRecordSetsAdd' request conforms to.
type ServicesDNSRecordSetsAddResource =
     "v1" :>
       Capture "parent" Text :>
         "dnsRecordSets:add" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] AddDNSRecordSetRequest :>
                         Post '[JSON] Operation

-- | Service producers can use this method to add DNS record sets to private
-- DNS zones in the shared producer host project.
--
-- /See:/ 'servicesDNSRecordSetsAdd' smart constructor.
data ServicesDNSRecordSetsAdd =
  ServicesDNSRecordSetsAdd'
    { _sdrsaParent :: !Text
    , _sdrsaXgafv :: !(Maybe Xgafv)
    , _sdrsaUploadProtocol :: !(Maybe Text)
    , _sdrsaAccessToken :: !(Maybe Text)
    , _sdrsaUploadType :: !(Maybe Text)
    , _sdrsaPayload :: !AddDNSRecordSetRequest
    , _sdrsaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesDNSRecordSetsAdd' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdrsaParent'
--
-- * 'sdrsaXgafv'
--
-- * 'sdrsaUploadProtocol'
--
-- * 'sdrsaAccessToken'
--
-- * 'sdrsaUploadType'
--
-- * 'sdrsaPayload'
--
-- * 'sdrsaCallback'
servicesDNSRecordSetsAdd
    :: Text -- ^ 'sdrsaParent'
    -> AddDNSRecordSetRequest -- ^ 'sdrsaPayload'
    -> ServicesDNSRecordSetsAdd
servicesDNSRecordSetsAdd pSdrsaParent_ pSdrsaPayload_ =
  ServicesDNSRecordSetsAdd'
    { _sdrsaParent = pSdrsaParent_
    , _sdrsaXgafv = Nothing
    , _sdrsaUploadProtocol = Nothing
    , _sdrsaAccessToken = Nothing
    , _sdrsaUploadType = Nothing
    , _sdrsaPayload = pSdrsaPayload_
    , _sdrsaCallback = Nothing
    }


-- | Required. The service that is managing peering connectivity for a
-- service producer\'s organization. For Google services that support this
-- functionality, this value is
-- \`services\/servicenetworking.googleapis.com\`.
sdrsaParent :: Lens' ServicesDNSRecordSetsAdd Text
sdrsaParent
  = lens _sdrsaParent (\ s a -> s{_sdrsaParent = a})

-- | V1 error format.
sdrsaXgafv :: Lens' ServicesDNSRecordSetsAdd (Maybe Xgafv)
sdrsaXgafv
  = lens _sdrsaXgafv (\ s a -> s{_sdrsaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sdrsaUploadProtocol :: Lens' ServicesDNSRecordSetsAdd (Maybe Text)
sdrsaUploadProtocol
  = lens _sdrsaUploadProtocol
      (\ s a -> s{_sdrsaUploadProtocol = a})

-- | OAuth access token.
sdrsaAccessToken :: Lens' ServicesDNSRecordSetsAdd (Maybe Text)
sdrsaAccessToken
  = lens _sdrsaAccessToken
      (\ s a -> s{_sdrsaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sdrsaUploadType :: Lens' ServicesDNSRecordSetsAdd (Maybe Text)
sdrsaUploadType
  = lens _sdrsaUploadType
      (\ s a -> s{_sdrsaUploadType = a})

-- | Multipart request metadata.
sdrsaPayload :: Lens' ServicesDNSRecordSetsAdd AddDNSRecordSetRequest
sdrsaPayload
  = lens _sdrsaPayload (\ s a -> s{_sdrsaPayload = a})

-- | JSONP
sdrsaCallback :: Lens' ServicesDNSRecordSetsAdd (Maybe Text)
sdrsaCallback
  = lens _sdrsaCallback
      (\ s a -> s{_sdrsaCallback = a})

instance GoogleRequest ServicesDNSRecordSetsAdd where
        type Rs ServicesDNSRecordSetsAdd = Operation
        type Scopes ServicesDNSRecordSetsAdd =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesDNSRecordSetsAdd'{..}
          = go _sdrsaParent _sdrsaXgafv _sdrsaUploadProtocol
              _sdrsaAccessToken
              _sdrsaUploadType
              _sdrsaCallback
              (Just AltJSON)
              _sdrsaPayload
              serviceNetworkingService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesDNSRecordSetsAddResource)
                      mempty
