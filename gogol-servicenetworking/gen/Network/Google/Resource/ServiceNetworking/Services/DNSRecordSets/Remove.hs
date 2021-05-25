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
-- Module      : Network.Google.Resource.ServiceNetworking.Services.DNSRecordSets.Remove
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Service producers can use this method to remove DNS record sets from
-- private DNS zones in the shared producer host project.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.dnsRecordSets.remove@.
module Network.Google.Resource.ServiceNetworking.Services.DNSRecordSets.Remove
    (
    -- * REST Resource
      ServicesDNSRecordSetsRemoveResource

    -- * Creating a Request
    , servicesDNSRecordSetsRemove
    , ServicesDNSRecordSetsRemove

    -- * Request Lenses
    , sdrsrParent
    , sdrsrXgafv
    , sdrsrUploadProtocol
    , sdrsrAccessToken
    , sdrsrUploadType
    , sdrsrPayload
    , sdrsrCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.dnsRecordSets.remove@ method which the
-- 'ServicesDNSRecordSetsRemove' request conforms to.
type ServicesDNSRecordSetsRemoveResource =
     "v1" :>
       Capture "parent" Text :>
         "dnsRecordSets:remove" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] RemoveDNSRecordSetRequest :>
                         Post '[JSON] Operation

-- | Service producers can use this method to remove DNS record sets from
-- private DNS zones in the shared producer host project.
--
-- /See:/ 'servicesDNSRecordSetsRemove' smart constructor.
data ServicesDNSRecordSetsRemove =
  ServicesDNSRecordSetsRemove'
    { _sdrsrParent :: !Text
    , _sdrsrXgafv :: !(Maybe Xgafv)
    , _sdrsrUploadProtocol :: !(Maybe Text)
    , _sdrsrAccessToken :: !(Maybe Text)
    , _sdrsrUploadType :: !(Maybe Text)
    , _sdrsrPayload :: !RemoveDNSRecordSetRequest
    , _sdrsrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesDNSRecordSetsRemove' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdrsrParent'
--
-- * 'sdrsrXgafv'
--
-- * 'sdrsrUploadProtocol'
--
-- * 'sdrsrAccessToken'
--
-- * 'sdrsrUploadType'
--
-- * 'sdrsrPayload'
--
-- * 'sdrsrCallback'
servicesDNSRecordSetsRemove
    :: Text -- ^ 'sdrsrParent'
    -> RemoveDNSRecordSetRequest -- ^ 'sdrsrPayload'
    -> ServicesDNSRecordSetsRemove
servicesDNSRecordSetsRemove pSdrsrParent_ pSdrsrPayload_ =
  ServicesDNSRecordSetsRemove'
    { _sdrsrParent = pSdrsrParent_
    , _sdrsrXgafv = Nothing
    , _sdrsrUploadProtocol = Nothing
    , _sdrsrAccessToken = Nothing
    , _sdrsrUploadType = Nothing
    , _sdrsrPayload = pSdrsrPayload_
    , _sdrsrCallback = Nothing
    }


-- | Required. The service that is managing peering connectivity for a
-- service producer\'s organization. For Google services that support this
-- functionality, this value is
-- \`services\/servicenetworking.googleapis.com\`.
sdrsrParent :: Lens' ServicesDNSRecordSetsRemove Text
sdrsrParent
  = lens _sdrsrParent (\ s a -> s{_sdrsrParent = a})

-- | V1 error format.
sdrsrXgafv :: Lens' ServicesDNSRecordSetsRemove (Maybe Xgafv)
sdrsrXgafv
  = lens _sdrsrXgafv (\ s a -> s{_sdrsrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sdrsrUploadProtocol :: Lens' ServicesDNSRecordSetsRemove (Maybe Text)
sdrsrUploadProtocol
  = lens _sdrsrUploadProtocol
      (\ s a -> s{_sdrsrUploadProtocol = a})

-- | OAuth access token.
sdrsrAccessToken :: Lens' ServicesDNSRecordSetsRemove (Maybe Text)
sdrsrAccessToken
  = lens _sdrsrAccessToken
      (\ s a -> s{_sdrsrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sdrsrUploadType :: Lens' ServicesDNSRecordSetsRemove (Maybe Text)
sdrsrUploadType
  = lens _sdrsrUploadType
      (\ s a -> s{_sdrsrUploadType = a})

-- | Multipart request metadata.
sdrsrPayload :: Lens' ServicesDNSRecordSetsRemove RemoveDNSRecordSetRequest
sdrsrPayload
  = lens _sdrsrPayload (\ s a -> s{_sdrsrPayload = a})

-- | JSONP
sdrsrCallback :: Lens' ServicesDNSRecordSetsRemove (Maybe Text)
sdrsrCallback
  = lens _sdrsrCallback
      (\ s a -> s{_sdrsrCallback = a})

instance GoogleRequest ServicesDNSRecordSetsRemove
         where
        type Rs ServicesDNSRecordSetsRemove = Operation
        type Scopes ServicesDNSRecordSetsRemove =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesDNSRecordSetsRemove'{..}
          = go _sdrsrParent _sdrsrXgafv _sdrsrUploadProtocol
              _sdrsrAccessToken
              _sdrsrUploadType
              _sdrsrCallback
              (Just AltJSON)
              _sdrsrPayload
              serviceNetworkingService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesDNSRecordSetsRemoveResource)
                      mempty
