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
-- Module      : Network.Google.Resource.Logging.Folders.Sinks.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a sink.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.folders.sinks.get@.
module Network.Google.Resource.Logging.Folders.Sinks.Get
    (
    -- * REST Resource
      FoldersSinksGetResource

    -- * Creating a Request
    , foldersSinksGet
    , FoldersSinksGet

    -- * Request Lenses
    , fsgXgafv
    , fsgUploadProtocol
    , fsgAccessToken
    , fsgUploadType
    , fsgSinkName
    , fsgCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.folders.sinks.get@ method which the
-- 'FoldersSinksGet' request conforms to.
type FoldersSinksGetResource =
     "v2" :>
       Capture "sinkName" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] LogSink

-- | Gets a sink.
--
-- /See:/ 'foldersSinksGet' smart constructor.
data FoldersSinksGet =
  FoldersSinksGet'
    { _fsgXgafv          :: !(Maybe Xgafv)
    , _fsgUploadProtocol :: !(Maybe Text)
    , _fsgAccessToken    :: !(Maybe Text)
    , _fsgUploadType     :: !(Maybe Text)
    , _fsgSinkName       :: !Text
    , _fsgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'FoldersSinksGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fsgXgafv'
--
-- * 'fsgUploadProtocol'
--
-- * 'fsgAccessToken'
--
-- * 'fsgUploadType'
--
-- * 'fsgSinkName'
--
-- * 'fsgCallback'
foldersSinksGet
    :: Text -- ^ 'fsgSinkName'
    -> FoldersSinksGet
foldersSinksGet pFsgSinkName_ =
  FoldersSinksGet'
    { _fsgXgafv = Nothing
    , _fsgUploadProtocol = Nothing
    , _fsgAccessToken = Nothing
    , _fsgUploadType = Nothing
    , _fsgSinkName = pFsgSinkName_
    , _fsgCallback = Nothing
    }

-- | V1 error format.
fsgXgafv :: Lens' FoldersSinksGet (Maybe Xgafv)
fsgXgafv = lens _fsgXgafv (\ s a -> s{_fsgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fsgUploadProtocol :: Lens' FoldersSinksGet (Maybe Text)
fsgUploadProtocol
  = lens _fsgUploadProtocol
      (\ s a -> s{_fsgUploadProtocol = a})

-- | OAuth access token.
fsgAccessToken :: Lens' FoldersSinksGet (Maybe Text)
fsgAccessToken
  = lens _fsgAccessToken
      (\ s a -> s{_fsgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fsgUploadType :: Lens' FoldersSinksGet (Maybe Text)
fsgUploadType
  = lens _fsgUploadType
      (\ s a -> s{_fsgUploadType = a})

-- | Required. The resource name of the sink:
-- \"projects\/[PROJECT_ID]\/sinks\/[SINK_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/sinks\/[SINK_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/sinks\/[SINK_ID]\"
-- \"folders\/[FOLDER_ID]\/sinks\/[SINK_ID]\" Example:
-- \"projects\/my-project-id\/sinks\/my-sink-id\".
fsgSinkName :: Lens' FoldersSinksGet Text
fsgSinkName
  = lens _fsgSinkName (\ s a -> s{_fsgSinkName = a})

-- | JSONP
fsgCallback :: Lens' FoldersSinksGet (Maybe Text)
fsgCallback
  = lens _fsgCallback (\ s a -> s{_fsgCallback = a})

instance GoogleRequest FoldersSinksGet where
        type Rs FoldersSinksGet = LogSink
        type Scopes FoldersSinksGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient FoldersSinksGet'{..}
          = go _fsgSinkName _fsgXgafv _fsgUploadProtocol
              _fsgAccessToken
              _fsgUploadType
              _fsgCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersSinksGetResource)
                      mempty
