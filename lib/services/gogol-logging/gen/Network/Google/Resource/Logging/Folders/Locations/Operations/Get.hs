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
-- Module      : Network.Google.Resource.Logging.Folders.Locations.Operations.Get
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
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.locations.operations.get@.
module Network.Google.Resource.Logging.Folders.Locations.Operations.Get
    (
    -- * REST Resource
      FoldersLocationsOperationsGetResource

    -- * Creating a Request
    , foldersLocationsOperationsGet
    , FoldersLocationsOperationsGet

    -- * Request Lenses
    , flogXgafv
    , flogUploadProtocol
    , flogAccessToken
    , flogUploadType
    , flogName
    , flogCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.folders.locations.operations.get@ method which the
-- 'FoldersLocationsOperationsGet' request conforms to.
type FoldersLocationsOperationsGetResource =
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
-- /See:/ 'foldersLocationsOperationsGet' smart constructor.
data FoldersLocationsOperationsGet =
  FoldersLocationsOperationsGet'
    { _flogXgafv :: !(Maybe Xgafv)
    , _flogUploadProtocol :: !(Maybe Text)
    , _flogAccessToken :: !(Maybe Text)
    , _flogUploadType :: !(Maybe Text)
    , _flogName :: !Text
    , _flogCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersLocationsOperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flogXgafv'
--
-- * 'flogUploadProtocol'
--
-- * 'flogAccessToken'
--
-- * 'flogUploadType'
--
-- * 'flogName'
--
-- * 'flogCallback'
foldersLocationsOperationsGet
    :: Text -- ^ 'flogName'
    -> FoldersLocationsOperationsGet
foldersLocationsOperationsGet pFlogName_ =
  FoldersLocationsOperationsGet'
    { _flogXgafv = Nothing
    , _flogUploadProtocol = Nothing
    , _flogAccessToken = Nothing
    , _flogUploadType = Nothing
    , _flogName = pFlogName_
    , _flogCallback = Nothing
    }


-- | V1 error format.
flogXgafv :: Lens' FoldersLocationsOperationsGet (Maybe Xgafv)
flogXgafv
  = lens _flogXgafv (\ s a -> s{_flogXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
flogUploadProtocol :: Lens' FoldersLocationsOperationsGet (Maybe Text)
flogUploadProtocol
  = lens _flogUploadProtocol
      (\ s a -> s{_flogUploadProtocol = a})

-- | OAuth access token.
flogAccessToken :: Lens' FoldersLocationsOperationsGet (Maybe Text)
flogAccessToken
  = lens _flogAccessToken
      (\ s a -> s{_flogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
flogUploadType :: Lens' FoldersLocationsOperationsGet (Maybe Text)
flogUploadType
  = lens _flogUploadType
      (\ s a -> s{_flogUploadType = a})

-- | The name of the operation resource.
flogName :: Lens' FoldersLocationsOperationsGet Text
flogName = lens _flogName (\ s a -> s{_flogName = a})

-- | JSONP
flogCallback :: Lens' FoldersLocationsOperationsGet (Maybe Text)
flogCallback
  = lens _flogCallback (\ s a -> s{_flogCallback = a})

instance GoogleRequest FoldersLocationsOperationsGet
         where
        type Rs FoldersLocationsOperationsGet = Operation
        type Scopes FoldersLocationsOperationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient FoldersLocationsOperationsGet'{..}
          = go _flogName _flogXgafv _flogUploadProtocol
              _flogAccessToken
              _flogUploadType
              _flogCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FoldersLocationsOperationsGetResource)
                      mempty
