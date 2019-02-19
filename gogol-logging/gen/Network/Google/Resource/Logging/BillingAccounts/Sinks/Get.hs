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
-- Module      : Network.Google.Resource.Logging.BillingAccounts.Sinks.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a sink.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.billingAccounts.sinks.get@.
module Network.Google.Resource.Logging.BillingAccounts.Sinks.Get
    (
    -- * REST Resource
      BillingAccountsSinksGetResource

    -- * Creating a Request
    , billingAccountsSinksGet
    , BillingAccountsSinksGet

    -- * Request Lenses
    , basgXgafv
    , basgUploadProtocol
    , basgAccessToken
    , basgUploadType
    , basgSinkName
    , basgCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.billingAccounts.sinks.get@ method which the
-- 'BillingAccountsSinksGet' request conforms to.
type BillingAccountsSinksGetResource =
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
-- /See:/ 'billingAccountsSinksGet' smart constructor.
data BillingAccountsSinksGet =
  BillingAccountsSinksGet'
    { _basgXgafv          :: !(Maybe Xgafv)
    , _basgUploadProtocol :: !(Maybe Text)
    , _basgAccessToken    :: !(Maybe Text)
    , _basgUploadType     :: !(Maybe Text)
    , _basgSinkName       :: !Text
    , _basgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BillingAccountsSinksGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'basgXgafv'
--
-- * 'basgUploadProtocol'
--
-- * 'basgAccessToken'
--
-- * 'basgUploadType'
--
-- * 'basgSinkName'
--
-- * 'basgCallback'
billingAccountsSinksGet
    :: Text -- ^ 'basgSinkName'
    -> BillingAccountsSinksGet
billingAccountsSinksGet pBasgSinkName_ =
  BillingAccountsSinksGet'
    { _basgXgafv = Nothing
    , _basgUploadProtocol = Nothing
    , _basgAccessToken = Nothing
    , _basgUploadType = Nothing
    , _basgSinkName = pBasgSinkName_
    , _basgCallback = Nothing
    }

-- | V1 error format.
basgXgafv :: Lens' BillingAccountsSinksGet (Maybe Xgafv)
basgXgafv
  = lens _basgXgafv (\ s a -> s{_basgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
basgUploadProtocol :: Lens' BillingAccountsSinksGet (Maybe Text)
basgUploadProtocol
  = lens _basgUploadProtocol
      (\ s a -> s{_basgUploadProtocol = a})

-- | OAuth access token.
basgAccessToken :: Lens' BillingAccountsSinksGet (Maybe Text)
basgAccessToken
  = lens _basgAccessToken
      (\ s a -> s{_basgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
basgUploadType :: Lens' BillingAccountsSinksGet (Maybe Text)
basgUploadType
  = lens _basgUploadType
      (\ s a -> s{_basgUploadType = a})

-- | Required. The resource name of the sink:
-- \"projects\/[PROJECT_ID]\/sinks\/[SINK_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/sinks\/[SINK_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/sinks\/[SINK_ID]\"
-- \"folders\/[FOLDER_ID]\/sinks\/[SINK_ID]\" Example:
-- \"projects\/my-project-id\/sinks\/my-sink-id\".
basgSinkName :: Lens' BillingAccountsSinksGet Text
basgSinkName
  = lens _basgSinkName (\ s a -> s{_basgSinkName = a})

-- | JSONP
basgCallback :: Lens' BillingAccountsSinksGet (Maybe Text)
basgCallback
  = lens _basgCallback (\ s a -> s{_basgCallback = a})

instance GoogleRequest BillingAccountsSinksGet where
        type Rs BillingAccountsSinksGet = LogSink
        type Scopes BillingAccountsSinksGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient BillingAccountsSinksGet'{..}
          = go _basgSinkName _basgXgafv _basgUploadProtocol
              _basgAccessToken
              _basgUploadType
              _basgCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy BillingAccountsSinksGetResource)
                      mempty
