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
-- Module      : Network.Google.Resource.ServiceUsage.Services.BatchEnable
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enable multiple services on a project. The operation is atomic: if
-- enabling any service fails, then the entire batch fails, and no state
-- changes occur. Operation
--
-- /See:/ <https://cloud.google.com/service-usage/ Service Usage API Reference> for @serviceusage.services.batchEnable@.
module Network.Google.Resource.ServiceUsage.Services.BatchEnable
    (
    -- * REST Resource
      ServicesBatchEnableResource

    -- * Creating a Request
    , servicesBatchEnable
    , ServicesBatchEnable

    -- * Request Lenses
    , sbeParent
    , sbeXgafv
    , sbeUploadProtocol
    , sbeAccessToken
    , sbeUploadType
    , sbePayload
    , sbeCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceUsage.Types

-- | A resource alias for @serviceusage.services.batchEnable@ method which the
-- 'ServicesBatchEnable' request conforms to.
type ServicesBatchEnableResource =
     "v1" :>
       Capture "parent" Text :>
         "services:batchEnable" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] BatchEnableServicesRequest :>
                         Post '[JSON] Operation

-- | Enable multiple services on a project. The operation is atomic: if
-- enabling any service fails, then the entire batch fails, and no state
-- changes occur. Operation
--
-- /See:/ 'servicesBatchEnable' smart constructor.
data ServicesBatchEnable =
  ServicesBatchEnable'
    { _sbeParent         :: !Text
    , _sbeXgafv          :: !(Maybe Xgafv)
    , _sbeUploadProtocol :: !(Maybe Text)
    , _sbeAccessToken    :: !(Maybe Text)
    , _sbeUploadType     :: !(Maybe Text)
    , _sbePayload        :: !BatchEnableServicesRequest
    , _sbeCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ServicesBatchEnable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sbeParent'
--
-- * 'sbeXgafv'
--
-- * 'sbeUploadProtocol'
--
-- * 'sbeAccessToken'
--
-- * 'sbeUploadType'
--
-- * 'sbePayload'
--
-- * 'sbeCallback'
servicesBatchEnable
    :: Text -- ^ 'sbeParent'
    -> BatchEnableServicesRequest -- ^ 'sbePayload'
    -> ServicesBatchEnable
servicesBatchEnable pSbeParent_ pSbePayload_ =
  ServicesBatchEnable'
    { _sbeParent = pSbeParent_
    , _sbeXgafv = Nothing
    , _sbeUploadProtocol = Nothing
    , _sbeAccessToken = Nothing
    , _sbeUploadType = Nothing
    , _sbePayload = pSbePayload_
    , _sbeCallback = Nothing
    }

-- | Parent to enable services on. An example name would be:
-- \`projects\/123\` where \`123\` is the project number (not project ID).
-- The \`BatchEnableServices\` method currently only supports projects.
sbeParent :: Lens' ServicesBatchEnable Text
sbeParent
  = lens _sbeParent (\ s a -> s{_sbeParent = a})

-- | V1 error format.
sbeXgafv :: Lens' ServicesBatchEnable (Maybe Xgafv)
sbeXgafv = lens _sbeXgafv (\ s a -> s{_sbeXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sbeUploadProtocol :: Lens' ServicesBatchEnable (Maybe Text)
sbeUploadProtocol
  = lens _sbeUploadProtocol
      (\ s a -> s{_sbeUploadProtocol = a})

-- | OAuth access token.
sbeAccessToken :: Lens' ServicesBatchEnable (Maybe Text)
sbeAccessToken
  = lens _sbeAccessToken
      (\ s a -> s{_sbeAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sbeUploadType :: Lens' ServicesBatchEnable (Maybe Text)
sbeUploadType
  = lens _sbeUploadType
      (\ s a -> s{_sbeUploadType = a})

-- | Multipart request metadata.
sbePayload :: Lens' ServicesBatchEnable BatchEnableServicesRequest
sbePayload
  = lens _sbePayload (\ s a -> s{_sbePayload = a})

-- | JSONP
sbeCallback :: Lens' ServicesBatchEnable (Maybe Text)
sbeCallback
  = lens _sbeCallback (\ s a -> s{_sbeCallback = a})

instance GoogleRequest ServicesBatchEnable where
        type Rs ServicesBatchEnable = Operation
        type Scopes ServicesBatchEnable =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/service.management"]
        requestClient ServicesBatchEnable'{..}
          = go _sbeParent _sbeXgafv _sbeUploadProtocol
              _sbeAccessToken
              _sbeUploadType
              _sbeCallback
              (Just AltJSON)
              _sbePayload
              serviceUsageService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesBatchEnableResource)
                      mempty
