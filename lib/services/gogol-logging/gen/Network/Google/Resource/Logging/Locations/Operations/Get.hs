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
-- Module      : Network.Google.Resource.Logging.Locations.Operations.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.locations.operations.get@.
module Network.Google.Resource.Logging.Locations.Operations.Get
    (
    -- * REST Resource
      LocationsOperationsGetResource

    -- * Creating a Request
    , locationsOperationsGet
    , LocationsOperationsGet

    -- * Request Lenses
    , logXgafv
    , logUploadProtocol
    , logAccessToken
    , logUploadType
    , logName
    , logCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.locations.operations.get@ method which the
-- 'LocationsOperationsGet' request conforms to.
type LocationsOperationsGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ 'locationsOperationsGet' smart constructor.
data LocationsOperationsGet =
  LocationsOperationsGet'
    { _logXgafv :: !(Maybe Xgafv)
    , _logUploadProtocol :: !(Maybe Text)
    , _logAccessToken :: !(Maybe Text)
    , _logUploadType :: !(Maybe Text)
    , _logName :: !Text
    , _logCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationsOperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'logXgafv'
--
-- * 'logUploadProtocol'
--
-- * 'logAccessToken'
--
-- * 'logUploadType'
--
-- * 'logName'
--
-- * 'logCallback'
locationsOperationsGet
    :: Text -- ^ 'logName'
    -> LocationsOperationsGet
locationsOperationsGet pLogName_ =
  LocationsOperationsGet'
    { _logXgafv = Nothing
    , _logUploadProtocol = Nothing
    , _logAccessToken = Nothing
    , _logUploadType = Nothing
    , _logName = pLogName_
    , _logCallback = Nothing
    }


-- | V1 error format.
logXgafv :: Lens' LocationsOperationsGet (Maybe Xgafv)
logXgafv = lens _logXgafv (\ s a -> s{_logXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
logUploadProtocol :: Lens' LocationsOperationsGet (Maybe Text)
logUploadProtocol
  = lens _logUploadProtocol
      (\ s a -> s{_logUploadProtocol = a})

-- | OAuth access token.
logAccessToken :: Lens' LocationsOperationsGet (Maybe Text)
logAccessToken
  = lens _logAccessToken
      (\ s a -> s{_logAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
logUploadType :: Lens' LocationsOperationsGet (Maybe Text)
logUploadType
  = lens _logUploadType
      (\ s a -> s{_logUploadType = a})

-- | The name of the operation resource.
logName :: Lens' LocationsOperationsGet Text
logName = lens _logName (\ s a -> s{_logName = a})

-- | JSONP
logCallback :: Lens' LocationsOperationsGet (Maybe Text)
logCallback
  = lens _logCallback (\ s a -> s{_logCallback = a})

instance GoogleRequest LocationsOperationsGet where
        type Rs LocationsOperationsGet = Operation
        type Scopes LocationsOperationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient LocationsOperationsGet'{..}
          = go _logName _logXgafv _logUploadProtocol
              _logAccessToken
              _logUploadType
              _logCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy LocationsOperationsGetResource)
                      mempty
