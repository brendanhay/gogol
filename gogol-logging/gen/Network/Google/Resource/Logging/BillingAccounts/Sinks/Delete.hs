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
-- Module      : Network.Google.Resource.Logging.BillingAccounts.Sinks.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a sink. If the sink has a unique writer_identity, then that
-- service account is also deleted.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.billingAccounts.sinks.delete@.
module Network.Google.Resource.Logging.BillingAccounts.Sinks.Delete
    (
    -- * REST Resource
      BillingAccountsSinksDeleteResource

    -- * Creating a Request
    , billingAccountsSinksDelete
    , BillingAccountsSinksDelete

    -- * Request Lenses
    , basdXgafv
    , basdUploadProtocol
    , basdAccessToken
    , basdUploadType
    , basdSinkName
    , basdCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.billingAccounts.sinks.delete@ method which the
-- 'BillingAccountsSinksDelete' request conforms to.
type BillingAccountsSinksDeleteResource =
     "v2" :>
       Capture "sinkName" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a sink. If the sink has a unique writer_identity, then that
-- service account is also deleted.
--
-- /See:/ 'billingAccountsSinksDelete' smart constructor.
data BillingAccountsSinksDelete = BillingAccountsSinksDelete'
    { _basdXgafv          :: !(Maybe Xgafv)
    , _basdUploadProtocol :: !(Maybe Text)
    , _basdAccessToken    :: !(Maybe Text)
    , _basdUploadType     :: !(Maybe Text)
    , _basdSinkName       :: !Text
    , _basdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BillingAccountsSinksDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'basdXgafv'
--
-- * 'basdUploadProtocol'
--
-- * 'basdAccessToken'
--
-- * 'basdUploadType'
--
-- * 'basdSinkName'
--
-- * 'basdCallback'
billingAccountsSinksDelete
    :: Text -- ^ 'basdSinkName'
    -> BillingAccountsSinksDelete
billingAccountsSinksDelete pBasdSinkName_ =
    BillingAccountsSinksDelete'
    { _basdXgafv = Nothing
    , _basdUploadProtocol = Nothing
    , _basdAccessToken = Nothing
    , _basdUploadType = Nothing
    , _basdSinkName = pBasdSinkName_
    , _basdCallback = Nothing
    }

-- | V1 error format.
basdXgafv :: Lens' BillingAccountsSinksDelete (Maybe Xgafv)
basdXgafv
  = lens _basdXgafv (\ s a -> s{_basdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
basdUploadProtocol :: Lens' BillingAccountsSinksDelete (Maybe Text)
basdUploadProtocol
  = lens _basdUploadProtocol
      (\ s a -> s{_basdUploadProtocol = a})

-- | OAuth access token.
basdAccessToken :: Lens' BillingAccountsSinksDelete (Maybe Text)
basdAccessToken
  = lens _basdAccessToken
      (\ s a -> s{_basdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
basdUploadType :: Lens' BillingAccountsSinksDelete (Maybe Text)
basdUploadType
  = lens _basdUploadType
      (\ s a -> s{_basdUploadType = a})

-- | Required. The full resource name of the sink to delete, including the
-- parent resource and the sink identifier:
-- \"projects\/[PROJECT_ID]\/sinks\/[SINK_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/sinks\/[SINK_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/sinks\/[SINK_ID]\"
-- \"folders\/[FOLDER_ID]\/sinks\/[SINK_ID]\" Example:
-- \"projects\/my-project-id\/sinks\/my-sink-id\".
basdSinkName :: Lens' BillingAccountsSinksDelete Text
basdSinkName
  = lens _basdSinkName (\ s a -> s{_basdSinkName = a})

-- | JSONP
basdCallback :: Lens' BillingAccountsSinksDelete (Maybe Text)
basdCallback
  = lens _basdCallback (\ s a -> s{_basdCallback = a})

instance GoogleRequest BillingAccountsSinksDelete
         where
        type Rs BillingAccountsSinksDelete = Empty
        type Scopes BillingAccountsSinksDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient BillingAccountsSinksDelete'{..}
          = go _basdSinkName _basdXgafv _basdUploadProtocol
              _basdAccessToken
              _basdUploadType
              _basdCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy BillingAccountsSinksDeleteResource)
                      mempty
