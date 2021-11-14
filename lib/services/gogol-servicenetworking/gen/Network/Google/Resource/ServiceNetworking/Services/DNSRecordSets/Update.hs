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
-- Module      : Network.Google.Resource.ServiceNetworking.Services.DNSRecordSets.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Service producers can use this method to update DNS record sets from
-- private DNS zones in the shared producer host project.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.dnsRecordSets.update@.
module Network.Google.Resource.ServiceNetworking.Services.DNSRecordSets.Update
    (
    -- * REST Resource
      ServicesDNSRecordSetsUpdateResource

    -- * Creating a Request
    , servicesDNSRecordSetsUpdate
    , ServicesDNSRecordSetsUpdate

    -- * Request Lenses
    , sdrsuParent
    , sdrsuXgafv
    , sdrsuUploadProtocol
    , sdrsuAccessToken
    , sdrsuUploadType
    , sdrsuPayload
    , sdrsuCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.dnsRecordSets.update@ method which the
-- 'ServicesDNSRecordSetsUpdate' request conforms to.
type ServicesDNSRecordSetsUpdateResource =
     "v1" :>
       Capture "parent" Text :>
         "dnsRecordSets:update" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] UpdateDNSRecordSetRequest :>
                         Post '[JSON] Operation

-- | Service producers can use this method to update DNS record sets from
-- private DNS zones in the shared producer host project.
--
-- /See:/ 'servicesDNSRecordSetsUpdate' smart constructor.
data ServicesDNSRecordSetsUpdate =
  ServicesDNSRecordSetsUpdate'
    { _sdrsuParent :: !Text
    , _sdrsuXgafv :: !(Maybe Xgafv)
    , _sdrsuUploadProtocol :: !(Maybe Text)
    , _sdrsuAccessToken :: !(Maybe Text)
    , _sdrsuUploadType :: !(Maybe Text)
    , _sdrsuPayload :: !UpdateDNSRecordSetRequest
    , _sdrsuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesDNSRecordSetsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdrsuParent'
--
-- * 'sdrsuXgafv'
--
-- * 'sdrsuUploadProtocol'
--
-- * 'sdrsuAccessToken'
--
-- * 'sdrsuUploadType'
--
-- * 'sdrsuPayload'
--
-- * 'sdrsuCallback'
servicesDNSRecordSetsUpdate
    :: Text -- ^ 'sdrsuParent'
    -> UpdateDNSRecordSetRequest -- ^ 'sdrsuPayload'
    -> ServicesDNSRecordSetsUpdate
servicesDNSRecordSetsUpdate pSdrsuParent_ pSdrsuPayload_ =
  ServicesDNSRecordSetsUpdate'
    { _sdrsuParent = pSdrsuParent_
    , _sdrsuXgafv = Nothing
    , _sdrsuUploadProtocol = Nothing
    , _sdrsuAccessToken = Nothing
    , _sdrsuUploadType = Nothing
    , _sdrsuPayload = pSdrsuPayload_
    , _sdrsuCallback = Nothing
    }


-- | Required. The service that is managing peering connectivity for a
-- service producer\'s organization. For Google services that support this
-- functionality, this value is
-- \`services\/servicenetworking.googleapis.com\`.
sdrsuParent :: Lens' ServicesDNSRecordSetsUpdate Text
sdrsuParent
  = lens _sdrsuParent (\ s a -> s{_sdrsuParent = a})

-- | V1 error format.
sdrsuXgafv :: Lens' ServicesDNSRecordSetsUpdate (Maybe Xgafv)
sdrsuXgafv
  = lens _sdrsuXgafv (\ s a -> s{_sdrsuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sdrsuUploadProtocol :: Lens' ServicesDNSRecordSetsUpdate (Maybe Text)
sdrsuUploadProtocol
  = lens _sdrsuUploadProtocol
      (\ s a -> s{_sdrsuUploadProtocol = a})

-- | OAuth access token.
sdrsuAccessToken :: Lens' ServicesDNSRecordSetsUpdate (Maybe Text)
sdrsuAccessToken
  = lens _sdrsuAccessToken
      (\ s a -> s{_sdrsuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sdrsuUploadType :: Lens' ServicesDNSRecordSetsUpdate (Maybe Text)
sdrsuUploadType
  = lens _sdrsuUploadType
      (\ s a -> s{_sdrsuUploadType = a})

-- | Multipart request metadata.
sdrsuPayload :: Lens' ServicesDNSRecordSetsUpdate UpdateDNSRecordSetRequest
sdrsuPayload
  = lens _sdrsuPayload (\ s a -> s{_sdrsuPayload = a})

-- | JSONP
sdrsuCallback :: Lens' ServicesDNSRecordSetsUpdate (Maybe Text)
sdrsuCallback
  = lens _sdrsuCallback
      (\ s a -> s{_sdrsuCallback = a})

instance GoogleRequest ServicesDNSRecordSetsUpdate
         where
        type Rs ServicesDNSRecordSetsUpdate = Operation
        type Scopes ServicesDNSRecordSetsUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesDNSRecordSetsUpdate'{..}
          = go _sdrsuParent _sdrsuXgafv _sdrsuUploadProtocol
              _sdrsuAccessToken
              _sdrsuUploadType
              _sdrsuCallback
              (Just AltJSON)
              _sdrsuPayload
              serviceNetworkingService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesDNSRecordSetsUpdateResource)
                      mempty
