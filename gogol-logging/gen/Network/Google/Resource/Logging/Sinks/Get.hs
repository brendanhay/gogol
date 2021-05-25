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
-- Module      : Network.Google.Resource.Logging.Sinks.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a sink.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.sinks.get@.
module Network.Google.Resource.Logging.Sinks.Get
    (
    -- * REST Resource
      SinksGetResource

    -- * Creating a Request
    , sinksGet
    , SinksGet

    -- * Request Lenses
    , sgXgafv
    , sgUploadProtocol
    , sgAccessToken
    , sgUploadType
    , sgSinkName
    , sgCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.sinks.get@ method which the
-- 'SinksGet' request conforms to.
type SinksGetResource =
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
-- /See:/ 'sinksGet' smart constructor.
data SinksGet =
  SinksGet'
    { _sgXgafv :: !(Maybe Xgafv)
    , _sgUploadProtocol :: !(Maybe Text)
    , _sgAccessToken :: !(Maybe Text)
    , _sgUploadType :: !(Maybe Text)
    , _sgSinkName :: !Text
    , _sgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SinksGet' with the minimum fields required to make a request.
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
-- * 'sgSinkName'
--
-- * 'sgCallback'
sinksGet
    :: Text -- ^ 'sgSinkName'
    -> SinksGet
sinksGet pSgSinkName_ =
  SinksGet'
    { _sgXgafv = Nothing
    , _sgUploadProtocol = Nothing
    , _sgAccessToken = Nothing
    , _sgUploadType = Nothing
    , _sgSinkName = pSgSinkName_
    , _sgCallback = Nothing
    }


-- | V1 error format.
sgXgafv :: Lens' SinksGet (Maybe Xgafv)
sgXgafv = lens _sgXgafv (\ s a -> s{_sgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sgUploadProtocol :: Lens' SinksGet (Maybe Text)
sgUploadProtocol
  = lens _sgUploadProtocol
      (\ s a -> s{_sgUploadProtocol = a})

-- | OAuth access token.
sgAccessToken :: Lens' SinksGet (Maybe Text)
sgAccessToken
  = lens _sgAccessToken
      (\ s a -> s{_sgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sgUploadType :: Lens' SinksGet (Maybe Text)
sgUploadType
  = lens _sgUploadType (\ s a -> s{_sgUploadType = a})

-- | Required. The resource name of the sink:
-- \"projects\/[PROJECT_ID]\/sinks\/[SINK_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/sinks\/[SINK_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/sinks\/[SINK_ID]\"
-- \"folders\/[FOLDER_ID]\/sinks\/[SINK_ID]\" Example:
-- \"projects\/my-project-id\/sinks\/my-sink-id\".
sgSinkName :: Lens' SinksGet Text
sgSinkName
  = lens _sgSinkName (\ s a -> s{_sgSinkName = a})

-- | JSONP
sgCallback :: Lens' SinksGet (Maybe Text)
sgCallback
  = lens _sgCallback (\ s a -> s{_sgCallback = a})

instance GoogleRequest SinksGet where
        type Rs SinksGet = LogSink
        type Scopes SinksGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient SinksGet'{..}
          = go _sgSinkName _sgXgafv _sgUploadProtocol
              _sgAccessToken
              _sgUploadType
              _sgCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient (Proxy :: Proxy SinksGetResource)
                      mempty
