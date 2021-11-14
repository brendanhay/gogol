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
-- Module      : Network.Google.Resource.ServiceNetworking.Services.Validate
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Service producers use this method to validate if the consumer provided
-- network, project and requested range are valid. This allows them to use
-- a fail-fast mechanism for consumer requests, and not have to wait for
-- AddSubnetwork operation completion to determine if user request is
-- invalid.
--
-- /See:/ <https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started Service Networking API Reference> for @servicenetworking.services.validate@.
module Network.Google.Resource.ServiceNetworking.Services.Validate
    (
    -- * REST Resource
      ServicesValidateResource

    -- * Creating a Request
    , servicesValidate
    , ServicesValidate

    -- * Request Lenses
    , svParent
    , svXgafv
    , svUploadProtocol
    , svAccessToken
    , svUploadType
    , svPayload
    , svCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceNetworking.Types

-- | A resource alias for @servicenetworking.services.validate@ method which the
-- 'ServicesValidate' request conforms to.
type ServicesValidateResource =
     "v1" :>
       CaptureMode "parent" "validate" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ValidateConsumerConfigRequest :>
                       Post '[JSON] ValidateConsumerConfigResponse

-- | Service producers use this method to validate if the consumer provided
-- network, project and requested range are valid. This allows them to use
-- a fail-fast mechanism for consumer requests, and not have to wait for
-- AddSubnetwork operation completion to determine if user request is
-- invalid.
--
-- /See:/ 'servicesValidate' smart constructor.
data ServicesValidate =
  ServicesValidate'
    { _svParent :: !Text
    , _svXgafv :: !(Maybe Xgafv)
    , _svUploadProtocol :: !(Maybe Text)
    , _svAccessToken :: !(Maybe Text)
    , _svUploadType :: !(Maybe Text)
    , _svPayload :: !ValidateConsumerConfigRequest
    , _svCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesValidate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svParent'
--
-- * 'svXgafv'
--
-- * 'svUploadProtocol'
--
-- * 'svAccessToken'
--
-- * 'svUploadType'
--
-- * 'svPayload'
--
-- * 'svCallback'
servicesValidate
    :: Text -- ^ 'svParent'
    -> ValidateConsumerConfigRequest -- ^ 'svPayload'
    -> ServicesValidate
servicesValidate pSvParent_ pSvPayload_ =
  ServicesValidate'
    { _svParent = pSvParent_
    , _svXgafv = Nothing
    , _svUploadProtocol = Nothing
    , _svAccessToken = Nothing
    , _svUploadType = Nothing
    , _svPayload = pSvPayload_
    , _svCallback = Nothing
    }


-- | Required. This is in a form services\/{service} where {service} is the
-- name of the private access management service. For example
-- \'service-peering.example.com\'.
svParent :: Lens' ServicesValidate Text
svParent = lens _svParent (\ s a -> s{_svParent = a})

-- | V1 error format.
svXgafv :: Lens' ServicesValidate (Maybe Xgafv)
svXgafv = lens _svXgafv (\ s a -> s{_svXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
svUploadProtocol :: Lens' ServicesValidate (Maybe Text)
svUploadProtocol
  = lens _svUploadProtocol
      (\ s a -> s{_svUploadProtocol = a})

-- | OAuth access token.
svAccessToken :: Lens' ServicesValidate (Maybe Text)
svAccessToken
  = lens _svAccessToken
      (\ s a -> s{_svAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
svUploadType :: Lens' ServicesValidate (Maybe Text)
svUploadType
  = lens _svUploadType (\ s a -> s{_svUploadType = a})

-- | Multipart request metadata.
svPayload :: Lens' ServicesValidate ValidateConsumerConfigRequest
svPayload
  = lens _svPayload (\ s a -> s{_svPayload = a})

-- | JSONP
svCallback :: Lens' ServicesValidate (Maybe Text)
svCallback
  = lens _svCallback (\ s a -> s{_svCallback = a})

instance GoogleRequest ServicesValidate where
        type Rs ServicesValidate =
             ValidateConsumerConfigResponse
        type Scopes ServicesValidate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesValidate'{..}
          = go _svParent _svXgafv _svUploadProtocol
              _svAccessToken
              _svUploadType
              _svCallback
              (Just AltJSON)
              _svPayload
              serviceNetworkingService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesValidateResource)
                      mempty
