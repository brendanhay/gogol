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
-- Enable a managed service for a project with default setting. Operation
-- google.rpc.Status errors may contain a google.rpc.PreconditionFailure
-- error detail.
--
-- /See:/ <https://cloud.google.com/service-management/ Google Service Management API Reference> for @servicemanagement.services.enable@.
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
    , sePp
    , seAccessToken
    , seUploadType
    , sePayload
    , seBearerToken
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
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] EnableServiceRequest :>
                             Post '[JSON] Operation

-- | Enable a managed service for a project with default setting. Operation
-- google.rpc.Status errors may contain a google.rpc.PreconditionFailure
-- error detail.
--
-- /See:/ 'servicesEnable' smart constructor.
data ServicesEnable = ServicesEnable'
    { _seXgafv          :: !(Maybe Xgafv)
    , _seUploadProtocol :: !(Maybe Text)
    , _sePp             :: !Bool
    , _seAccessToken    :: !(Maybe Text)
    , _seUploadType     :: !(Maybe Text)
    , _sePayload        :: !EnableServiceRequest
    , _seBearerToken    :: !(Maybe Text)
    , _seServiceName    :: !Text
    , _seCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServicesEnable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'seXgafv'
--
-- * 'seUploadProtocol'
--
-- * 'sePp'
--
-- * 'seAccessToken'
--
-- * 'seUploadType'
--
-- * 'sePayload'
--
-- * 'seBearerToken'
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
    , _sePp = True
    , _seAccessToken = Nothing
    , _seUploadType = Nothing
    , _sePayload = pSePayload_
    , _seBearerToken = Nothing
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

-- | Pretty-print response.
sePp :: Lens' ServicesEnable Bool
sePp = lens _sePp (\ s a -> s{_sePp = a})

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

-- | OAuth bearer token.
seBearerToken :: Lens' ServicesEnable (Maybe Text)
seBearerToken
  = lens _seBearerToken
      (\ s a -> s{_seBearerToken = a})

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
              (Just _sePp)
              _seAccessToken
              _seUploadType
              _seBearerToken
              _seCallback
              (Just AltJSON)
              _sePayload
              serviceManagementService
          where go
                  = buildClient (Proxy :: Proxy ServicesEnableResource)
                      mempty
