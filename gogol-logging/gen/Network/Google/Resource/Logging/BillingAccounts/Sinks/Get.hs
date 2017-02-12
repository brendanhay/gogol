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
    , basgPp
    , basgAccessToken
    , basgUploadType
    , basgBearerToken
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
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] LogSink

-- | Gets a sink.
--
-- /See:/ 'billingAccountsSinksGet' smart constructor.
data BillingAccountsSinksGet = BillingAccountsSinksGet'
    { _basgXgafv          :: !(Maybe Xgafv)
    , _basgUploadProtocol :: !(Maybe Text)
    , _basgPp             :: !Bool
    , _basgAccessToken    :: !(Maybe Text)
    , _basgUploadType     :: !(Maybe Text)
    , _basgBearerToken    :: !(Maybe Text)
    , _basgSinkName       :: !Text
    , _basgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BillingAccountsSinksGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'basgXgafv'
--
-- * 'basgUploadProtocol'
--
-- * 'basgPp'
--
-- * 'basgAccessToken'
--
-- * 'basgUploadType'
--
-- * 'basgBearerToken'
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
    , _basgPp = True
    , _basgAccessToken = Nothing
    , _basgUploadType = Nothing
    , _basgBearerToken = Nothing
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

-- | Pretty-print response.
basgPp :: Lens' BillingAccountsSinksGet Bool
basgPp = lens _basgPp (\ s a -> s{_basgPp = a})

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

-- | OAuth bearer token.
basgBearerToken :: Lens' BillingAccountsSinksGet (Maybe Text)
basgBearerToken
  = lens _basgBearerToken
      (\ s a -> s{_basgBearerToken = a})

-- | Required. The parent resource name of the sink:
-- \"projects\/[PROJECT_ID]\/sinks\/[SINK_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/sinks\/[SINK_ID]\" Example:
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
              (Just _basgPp)
              _basgAccessToken
              _basgUploadType
              _basgBearerToken
              _basgCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy BillingAccountsSinksGetResource)
                      mempty
