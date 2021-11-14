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
-- Module      : Network.Google.Resource.ServiceUsage.Services.Disable
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disable a service so that it can no longer be used with a project. This
-- prevents unintended usage that may cause unexpected billing charges or
-- security leaks. It is not valid to call the disable method on a service
-- that is not currently enabled. Callers will receive a
-- \`FAILED_PRECONDITION\` status if the target service is not currently
-- enabled.
--
-- /See:/ <https://cloud.google.com/service-usage/ Service Usage API Reference> for @serviceusage.services.disable@.
module Network.Google.Resource.ServiceUsage.Services.Disable
    (
    -- * REST Resource
      ServicesDisableResource

    -- * Creating a Request
    , servicesDisable
    , ServicesDisable

    -- * Request Lenses
    , sdXgafv
    , sdUploadProtocol
    , sdAccessToken
    , sdUploadType
    , sdPayload
    , sdName
    , sdCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceUsage.Types

-- | A resource alias for @serviceusage.services.disable@ method which the
-- 'ServicesDisable' request conforms to.
type ServicesDisableResource =
     "v1" :>
       CaptureMode "name" "disable" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] DisableServiceRequest :>
                       Post '[JSON] Operation

-- | Disable a service so that it can no longer be used with a project. This
-- prevents unintended usage that may cause unexpected billing charges or
-- security leaks. It is not valid to call the disable method on a service
-- that is not currently enabled. Callers will receive a
-- \`FAILED_PRECONDITION\` status if the target service is not currently
-- enabled.
--
-- /See:/ 'servicesDisable' smart constructor.
data ServicesDisable =
  ServicesDisable'
    { _sdXgafv :: !(Maybe Xgafv)
    , _sdUploadProtocol :: !(Maybe Text)
    , _sdAccessToken :: !(Maybe Text)
    , _sdUploadType :: !(Maybe Text)
    , _sdPayload :: !DisableServiceRequest
    , _sdName :: !Text
    , _sdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesDisable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdXgafv'
--
-- * 'sdUploadProtocol'
--
-- * 'sdAccessToken'
--
-- * 'sdUploadType'
--
-- * 'sdPayload'
--
-- * 'sdName'
--
-- * 'sdCallback'
servicesDisable
    :: DisableServiceRequest -- ^ 'sdPayload'
    -> Text -- ^ 'sdName'
    -> ServicesDisable
servicesDisable pSdPayload_ pSdName_ =
  ServicesDisable'
    { _sdXgafv = Nothing
    , _sdUploadProtocol = Nothing
    , _sdAccessToken = Nothing
    , _sdUploadType = Nothing
    , _sdPayload = pSdPayload_
    , _sdName = pSdName_
    , _sdCallback = Nothing
    }


-- | V1 error format.
sdXgafv :: Lens' ServicesDisable (Maybe Xgafv)
sdXgafv = lens _sdXgafv (\ s a -> s{_sdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sdUploadProtocol :: Lens' ServicesDisable (Maybe Text)
sdUploadProtocol
  = lens _sdUploadProtocol
      (\ s a -> s{_sdUploadProtocol = a})

-- | OAuth access token.
sdAccessToken :: Lens' ServicesDisable (Maybe Text)
sdAccessToken
  = lens _sdAccessToken
      (\ s a -> s{_sdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sdUploadType :: Lens' ServicesDisable (Maybe Text)
sdUploadType
  = lens _sdUploadType (\ s a -> s{_sdUploadType = a})

-- | Multipart request metadata.
sdPayload :: Lens' ServicesDisable DisableServiceRequest
sdPayload
  = lens _sdPayload (\ s a -> s{_sdPayload = a})

-- | Name of the consumer and service to disable the service on. The enable
-- and disable methods currently only support projects. An example name
-- would be: \`projects\/123\/services\/serviceusage.googleapis.com\` where
-- \`123\` is the project number.
sdName :: Lens' ServicesDisable Text
sdName = lens _sdName (\ s a -> s{_sdName = a})

-- | JSONP
sdCallback :: Lens' ServicesDisable (Maybe Text)
sdCallback
  = lens _sdCallback (\ s a -> s{_sdCallback = a})

instance GoogleRequest ServicesDisable where
        type Rs ServicesDisable = Operation
        type Scopes ServicesDisable =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesDisable'{..}
          = go _sdName _sdXgafv _sdUploadProtocol
              _sdAccessToken
              _sdUploadType
              _sdCallback
              (Just AltJSON)
              _sdPayload
              serviceUsageService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesDisableResource)
                      mempty
