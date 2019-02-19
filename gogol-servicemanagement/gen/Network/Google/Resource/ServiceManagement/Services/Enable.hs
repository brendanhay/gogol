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
-- Module      : Network.Google.Resource.ServiceManagement.Services.Enable
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables a service for a project, so it can be used for the project. See
-- [Cloud Auth Guide](https:\/\/cloud.google.com\/docs\/authentication) for
-- more information. Operation
--
-- /See:/ <https://cloud.google.com/service-management/ Service Management API Reference> for @servicemanagement.services.enable@.
module Network.Google.Resource.ServiceManagement.Services.Enable
    (
    -- * REST Resource
      ServicesEnableResource

    -- * Creating a Request
    , servicesEnable
    , ServicesEnable

    -- * Request Lenses
    , seXgafv
    , seUploadProtocol
    , seAccessToken
    , seUploadType
    , sePayload
    , seServiceName
    , seCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.enable@ method which the
-- 'ServicesEnable' request conforms to.
type ServicesEnableResource =
     "v1" :>
       "services" :>
         CaptureMode "serviceName" "enable" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] EnableServiceRequest :>
                         Post '[JSON] Operation

-- | Enables a service for a project, so it can be used for the project. See
-- [Cloud Auth Guide](https:\/\/cloud.google.com\/docs\/authentication) for
-- more information. Operation
--
-- /See:/ 'servicesEnable' smart constructor.
data ServicesEnable =
  ServicesEnable'
    { _seXgafv          :: !(Maybe Xgafv)
    , _seUploadProtocol :: !(Maybe Text)
    , _seAccessToken    :: !(Maybe Text)
    , _seUploadType     :: !(Maybe Text)
    , _sePayload        :: !EnableServiceRequest
    , _seServiceName    :: !Text
    , _seCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesEnable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'seXgafv'
--
-- * 'seUploadProtocol'
--
-- * 'seAccessToken'
--
-- * 'seUploadType'
--
-- * 'sePayload'
--
-- * 'seServiceName'
--
-- * 'seCallback'
servicesEnable
    :: EnableServiceRequest -- ^ 'sePayload'
    -> Text -- ^ 'seServiceName'
    -> ServicesEnable
servicesEnable pSePayload_ pSeServiceName_ =
  ServicesEnable'
    { _seXgafv = Nothing
    , _seUploadProtocol = Nothing
    , _seAccessToken = Nothing
    , _seUploadType = Nothing
    , _sePayload = pSePayload_
    , _seServiceName = pSeServiceName_
    , _seCallback = Nothing
    }


-- | V1 error format.
seXgafv :: Lens' ServicesEnable (Maybe Xgafv)
seXgafv = lens _seXgafv (\ s a -> s{_seXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
seUploadProtocol :: Lens' ServicesEnable (Maybe Text)
seUploadProtocol
  = lens _seUploadProtocol
      (\ s a -> s{_seUploadProtocol = a})

-- | OAuth access token.
seAccessToken :: Lens' ServicesEnable (Maybe Text)
seAccessToken
  = lens _seAccessToken
      (\ s a -> s{_seAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
seUploadType :: Lens' ServicesEnable (Maybe Text)
seUploadType
  = lens _seUploadType (\ s a -> s{_seUploadType = a})

-- | Multipart request metadata.
sePayload :: Lens' ServicesEnable EnableServiceRequest
sePayload
  = lens _sePayload (\ s a -> s{_sePayload = a})

-- | Name of the service to enable. Specifying an unknown service name will
-- cause the request to fail.
seServiceName :: Lens' ServicesEnable Text
seServiceName
  = lens _seServiceName
      (\ s a -> s{_seServiceName = a})

-- | JSONP
seCallback :: Lens' ServicesEnable (Maybe Text)
seCallback
  = lens _seCallback (\ s a -> s{_seCallback = a})

instance GoogleRequest ServicesEnable where
        type Rs ServicesEnable = Operation
        type Scopes ServicesEnable =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesEnable'{..}
          = go _seServiceName _seXgafv _seUploadProtocol
              _seAccessToken
              _seUploadType
              _seCallback
              (Just AltJSON)
              _sePayload
              serviceManagementService
          where go
                  = buildClient (Proxy :: Proxy ServicesEnableResource)
                      mempty
