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
-- Module      : Network.Google.Resource.Logging.BillingAccounts.Logs.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes all the log entries in a log. The log reappears if it receives
-- new entries. Log entries written shortly before the delete operation
-- might not be deleted.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.billingAccounts.logs.delete@.
module Network.Google.Resource.Logging.BillingAccounts.Logs.Delete
    (
    -- * REST Resource
      BillingAccountsLogsDeleteResource

    -- * Creating a Request
    , billingAccountsLogsDelete
    , BillingAccountsLogsDelete

    -- * Request Lenses
    , baldXgafv
    , baldUploadProtocol
    , baldAccessToken
    , baldUploadType
    , baldLogName
    , baldCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.billingAccounts.logs.delete@ method which the
-- 'BillingAccountsLogsDelete' request conforms to.
type BillingAccountsLogsDeleteResource =
     "v2" :>
       Capture "logName" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes all the log entries in a log. The log reappears if it receives
-- new entries. Log entries written shortly before the delete operation
-- might not be deleted.
--
-- /See:/ 'billingAccountsLogsDelete' smart constructor.
data BillingAccountsLogsDelete =
  BillingAccountsLogsDelete'
    { _baldXgafv          :: !(Maybe Xgafv)
    , _baldUploadProtocol :: !(Maybe Text)
    , _baldAccessToken    :: !(Maybe Text)
    , _baldUploadType     :: !(Maybe Text)
    , _baldLogName        :: !Text
    , _baldCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BillingAccountsLogsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baldXgafv'
--
-- * 'baldUploadProtocol'
--
-- * 'baldAccessToken'
--
-- * 'baldUploadType'
--
-- * 'baldLogName'
--
-- * 'baldCallback'
billingAccountsLogsDelete
    :: Text -- ^ 'baldLogName'
    -> BillingAccountsLogsDelete
billingAccountsLogsDelete pBaldLogName_ =
  BillingAccountsLogsDelete'
    { _baldXgafv = Nothing
    , _baldUploadProtocol = Nothing
    , _baldAccessToken = Nothing
    , _baldUploadType = Nothing
    , _baldLogName = pBaldLogName_
    , _baldCallback = Nothing
    }

-- | V1 error format.
baldXgafv :: Lens' BillingAccountsLogsDelete (Maybe Xgafv)
baldXgafv
  = lens _baldXgafv (\ s a -> s{_baldXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
baldUploadProtocol :: Lens' BillingAccountsLogsDelete (Maybe Text)
baldUploadProtocol
  = lens _baldUploadProtocol
      (\ s a -> s{_baldUploadProtocol = a})

-- | OAuth access token.
baldAccessToken :: Lens' BillingAccountsLogsDelete (Maybe Text)
baldAccessToken
  = lens _baldAccessToken
      (\ s a -> s{_baldAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
baldUploadType :: Lens' BillingAccountsLogsDelete (Maybe Text)
baldUploadType
  = lens _baldUploadType
      (\ s a -> s{_baldUploadType = a})

-- | Required. The resource name of the log to delete:
-- \"projects\/[PROJECT_ID]\/logs\/[LOG_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/logs\/[LOG_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/logs\/[LOG_ID]\"
-- \"folders\/[FOLDER_ID]\/logs\/[LOG_ID]\" [LOG_ID] must be URL-encoded.
-- For example, \"projects\/my-project-id\/logs\/syslog\",
-- \"organizations\/1234567890\/logs\/cloudresourcemanager.googleapis.com%2Factivity\".
-- For more information about log names, see LogEntry.
baldLogName :: Lens' BillingAccountsLogsDelete Text
baldLogName
  = lens _baldLogName (\ s a -> s{_baldLogName = a})

-- | JSONP
baldCallback :: Lens' BillingAccountsLogsDelete (Maybe Text)
baldCallback
  = lens _baldCallback (\ s a -> s{_baldCallback = a})

instance GoogleRequest BillingAccountsLogsDelete
         where
        type Rs BillingAccountsLogsDelete = Empty
        type Scopes BillingAccountsLogsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient BillingAccountsLogsDelete'{..}
          = go _baldLogName _baldXgafv _baldUploadProtocol
              _baldAccessToken
              _baldUploadType
              _baldCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy BillingAccountsLogsDeleteResource)
                      mempty
