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
-- Module      : Network.Google.Resource.ServiceUsage.Services.Enable
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enable a service so that it can be used with a project.
--
-- /See:/ <https://cloud.google.com/service-usage/ Service Usage API Reference> for @serviceusage.services.enable@.
module Network.Google.Resource.ServiceUsage.Services.Enable
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
    , seName
    , seCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceUsage.Types

-- | A resource alias for @serviceusage.services.enable@ method which the
-- 'ServicesEnable' request conforms to.
type ServicesEnableResource =
     "v1" :>
       CaptureMode "name" "enable" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] EnableServiceRequest :>
                       Post '[JSON] Operation

-- | Enable a service so that it can be used with a project.
--
-- /See:/ 'servicesEnable' smart constructor.
data ServicesEnable =
  ServicesEnable'
    { _seXgafv :: !(Maybe Xgafv)
    , _seUploadProtocol :: !(Maybe Text)
    , _seAccessToken :: !(Maybe Text)
    , _seUploadType :: !(Maybe Text)
    , _sePayload :: !EnableServiceRequest
    , _seName :: !Text
    , _seCallback :: !(Maybe Text)
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
-- * 'seName'
--
-- * 'seCallback'
servicesEnable
    :: EnableServiceRequest -- ^ 'sePayload'
    -> Text -- ^ 'seName'
    -> ServicesEnable
servicesEnable pSePayload_ pSeName_ =
  ServicesEnable'
    { _seXgafv = Nothing
    , _seUploadProtocol = Nothing
    , _seAccessToken = Nothing
    , _seUploadType = Nothing
    , _sePayload = pSePayload_
    , _seName = pSeName_
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

-- | Name of the consumer and service to enable the service on. The
-- \`EnableService\` and \`DisableService\` methods currently only support
-- projects. Enabling a service requires that the service is public or is
-- shared with the user enabling the service. An example name would be:
-- \`projects\/123\/services\/serviceusage.googleapis.com\` where \`123\`
-- is the project number.
seName :: Lens' ServicesEnable Text
seName = lens _seName (\ s a -> s{_seName = a})

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
          = go _seName _seXgafv _seUploadProtocol
              _seAccessToken
              _seUploadType
              _seCallback
              (Just AltJSON)
              _sePayload
              serviceUsageService
          where go
                  = buildClient (Proxy :: Proxy ServicesEnableResource)
                      mempty
