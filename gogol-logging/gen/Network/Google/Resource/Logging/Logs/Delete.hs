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
-- Module      : Network.Google.Resource.Logging.Logs.Delete
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
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.logs.delete@.
module Network.Google.Resource.Logging.Logs.Delete
    (
    -- * REST Resource
      LogsDeleteResource

    -- * Creating a Request
    , logsDelete
    , LogsDelete

    -- * Request Lenses
    , ldXgafv
    , ldUploadProtocol
    , ldAccessToken
    , ldUploadType
    , ldLogName
    , ldCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.logs.delete@ method which the
-- 'LogsDelete' request conforms to.
type LogsDeleteResource =
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
-- /See:/ 'logsDelete' smart constructor.
data LogsDelete = LogsDelete'
    { _ldXgafv          :: !(Maybe Xgafv)
    , _ldUploadProtocol :: !(Maybe Text)
    , _ldAccessToken    :: !(Maybe Text)
    , _ldUploadType     :: !(Maybe Text)
    , _ldLogName        :: !Text
    , _ldCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LogsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldXgafv'
--
-- * 'ldUploadProtocol'
--
-- * 'ldAccessToken'
--
-- * 'ldUploadType'
--
-- * 'ldLogName'
--
-- * 'ldCallback'
logsDelete
    :: Text -- ^ 'ldLogName'
    -> LogsDelete
logsDelete pLdLogName_ =
    LogsDelete'
    { _ldXgafv = Nothing
    , _ldUploadProtocol = Nothing
    , _ldAccessToken = Nothing
    , _ldUploadType = Nothing
    , _ldLogName = pLdLogName_
    , _ldCallback = Nothing
    }

-- | V1 error format.
ldXgafv :: Lens' LogsDelete (Maybe Xgafv)
ldXgafv = lens _ldXgafv (\ s a -> s{_ldXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ldUploadProtocol :: Lens' LogsDelete (Maybe Text)
ldUploadProtocol
  = lens _ldUploadProtocol
      (\ s a -> s{_ldUploadProtocol = a})

-- | OAuth access token.
ldAccessToken :: Lens' LogsDelete (Maybe Text)
ldAccessToken
  = lens _ldAccessToken
      (\ s a -> s{_ldAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ldUploadType :: Lens' LogsDelete (Maybe Text)
ldUploadType
  = lens _ldUploadType (\ s a -> s{_ldUploadType = a})

-- | Required. The resource name of the log to delete:
-- \"projects\/[PROJECT_ID]\/logs\/[LOG_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/logs\/[LOG_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/logs\/[LOG_ID]\"
-- \"folders\/[FOLDER_ID]\/logs\/[LOG_ID]\" [LOG_ID] must be URL-encoded.
-- For example, \"projects\/my-project-id\/logs\/syslog\",
-- \"organizations\/1234567890\/logs\/cloudresourcemanager.googleapis.com%2Factivity\".
-- For more information about log names, see LogEntry.
ldLogName :: Lens' LogsDelete Text
ldLogName
  = lens _ldLogName (\ s a -> s{_ldLogName = a})

-- | JSONP
ldCallback :: Lens' LogsDelete (Maybe Text)
ldCallback
  = lens _ldCallback (\ s a -> s{_ldCallback = a})

instance GoogleRequest LogsDelete where
        type Rs LogsDelete = Empty
        type Scopes LogsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient LogsDelete'{..}
          = go _ldLogName _ldXgafv _ldUploadProtocol
              _ldAccessToken
              _ldUploadType
              _ldCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient (Proxy :: Proxy LogsDeleteResource)
                      mempty
