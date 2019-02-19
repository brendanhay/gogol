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
-- Module      : Network.Google.Resource.ServiceUsage.Services.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the service configuration and enabled state for a given service.
--
-- /See:/ <https://cloud.google.com/service-usage/ Service Usage API Reference> for @serviceusage.services.get@.
module Network.Google.Resource.ServiceUsage.Services.Get
    (
    -- * REST Resource
      ServicesGetResource

    -- * Creating a Request
    , servicesGet
    , ServicesGet

    -- * Request Lenses
    , sgXgafv
    , sgUploadProtocol
    , sgAccessToken
    , sgUploadType
    , sgName
    , sgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceUsage.Types

-- | A resource alias for @serviceusage.services.get@ method which the
-- 'ServicesGet' request conforms to.
type ServicesGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GoogleAPIServiceusageV1Service

-- | Returns the service configuration and enabled state for a given service.
--
-- /See:/ 'servicesGet' smart constructor.
data ServicesGet =
  ServicesGet'
    { _sgXgafv          :: !(Maybe Xgafv)
    , _sgUploadProtocol :: !(Maybe Text)
    , _sgAccessToken    :: !(Maybe Text)
    , _sgUploadType     :: !(Maybe Text)
    , _sgName           :: !Text
    , _sgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgXgafv'
--
-- * 'sgUploadProtocol'
--
-- * 'sgAccessToken'
--
-- * 'sgUploadType'
--
-- * 'sgName'
--
-- * 'sgCallback'
servicesGet
    :: Text -- ^ 'sgName'
    -> ServicesGet
servicesGet pSgName_ =
  ServicesGet'
    { _sgXgafv = Nothing
    , _sgUploadProtocol = Nothing
    , _sgAccessToken = Nothing
    , _sgUploadType = Nothing
    , _sgName = pSgName_
    , _sgCallback = Nothing
    }


-- | V1 error format.
sgXgafv :: Lens' ServicesGet (Maybe Xgafv)
sgXgafv = lens _sgXgafv (\ s a -> s{_sgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sgUploadProtocol :: Lens' ServicesGet (Maybe Text)
sgUploadProtocol
  = lens _sgUploadProtocol
      (\ s a -> s{_sgUploadProtocol = a})

-- | OAuth access token.
sgAccessToken :: Lens' ServicesGet (Maybe Text)
sgAccessToken
  = lens _sgAccessToken
      (\ s a -> s{_sgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sgUploadType :: Lens' ServicesGet (Maybe Text)
sgUploadType
  = lens _sgUploadType (\ s a -> s{_sgUploadType = a})

-- | Name of the consumer and service to get the \`ConsumerState\` for. An
-- example name would be:
-- \`projects\/123\/services\/serviceusage.googleapis.com\` where \`123\`
-- is the project number (not project ID).
sgName :: Lens' ServicesGet Text
sgName = lens _sgName (\ s a -> s{_sgName = a})

-- | JSONP
sgCallback :: Lens' ServicesGet (Maybe Text)
sgCallback
  = lens _sgCallback (\ s a -> s{_sgCallback = a})

instance GoogleRequest ServicesGet where
        type Rs ServicesGet = GoogleAPIServiceusageV1Service
        type Scopes ServicesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ServicesGet'{..}
          = go _sgName _sgXgafv _sgUploadProtocol
              _sgAccessToken
              _sgUploadType
              _sgCallback
              (Just AltJSON)
              serviceUsageService
          where go
                  = buildClient (Proxy :: Proxy ServicesGetResource)
                      mempty
