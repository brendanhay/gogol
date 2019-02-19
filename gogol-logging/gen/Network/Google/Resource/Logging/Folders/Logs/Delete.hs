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
-- Module      : Network.Google.Resource.Logging.Folders.Logs.Delete
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
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.folders.logs.delete@.
module Network.Google.Resource.Logging.Folders.Logs.Delete
    (
    -- * REST Resource
      FoldersLogsDeleteResource

    -- * Creating a Request
    , foldersLogsDelete
    , FoldersLogsDelete

    -- * Request Lenses
    , fldXgafv
    , fldUploadProtocol
    , fldAccessToken
    , fldUploadType
    , fldLogName
    , fldCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.folders.logs.delete@ method which the
-- 'FoldersLogsDelete' request conforms to.
type FoldersLogsDeleteResource =
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
-- /See:/ 'foldersLogsDelete' smart constructor.
data FoldersLogsDelete =
  FoldersLogsDelete'
    { _fldXgafv          :: !(Maybe Xgafv)
    , _fldUploadProtocol :: !(Maybe Text)
    , _fldAccessToken    :: !(Maybe Text)
    , _fldUploadType     :: !(Maybe Text)
    , _fldLogName        :: !Text
    , _fldCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersLogsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fldXgafv'
--
-- * 'fldUploadProtocol'
--
-- * 'fldAccessToken'
--
-- * 'fldUploadType'
--
-- * 'fldLogName'
--
-- * 'fldCallback'
foldersLogsDelete
    :: Text -- ^ 'fldLogName'
    -> FoldersLogsDelete
foldersLogsDelete pFldLogName_ =
  FoldersLogsDelete'
    { _fldXgafv = Nothing
    , _fldUploadProtocol = Nothing
    , _fldAccessToken = Nothing
    , _fldUploadType = Nothing
    , _fldLogName = pFldLogName_
    , _fldCallback = Nothing
    }


-- | V1 error format.
fldXgafv :: Lens' FoldersLogsDelete (Maybe Xgafv)
fldXgafv = lens _fldXgafv (\ s a -> s{_fldXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fldUploadProtocol :: Lens' FoldersLogsDelete (Maybe Text)
fldUploadProtocol
  = lens _fldUploadProtocol
      (\ s a -> s{_fldUploadProtocol = a})

-- | OAuth access token.
fldAccessToken :: Lens' FoldersLogsDelete (Maybe Text)
fldAccessToken
  = lens _fldAccessToken
      (\ s a -> s{_fldAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fldUploadType :: Lens' FoldersLogsDelete (Maybe Text)
fldUploadType
  = lens _fldUploadType
      (\ s a -> s{_fldUploadType = a})

-- | Required. The resource name of the log to delete:
-- \"projects\/[PROJECT_ID]\/logs\/[LOG_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/logs\/[LOG_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/logs\/[LOG_ID]\"
-- \"folders\/[FOLDER_ID]\/logs\/[LOG_ID]\" [LOG_ID] must be URL-encoded.
-- For example, \"projects\/my-project-id\/logs\/syslog\",
-- \"organizations\/1234567890\/logs\/cloudresourcemanager.googleapis.com%2Factivity\".
-- For more information about log names, see LogEntry.
fldLogName :: Lens' FoldersLogsDelete Text
fldLogName
  = lens _fldLogName (\ s a -> s{_fldLogName = a})

-- | JSONP
fldCallback :: Lens' FoldersLogsDelete (Maybe Text)
fldCallback
  = lens _fldCallback (\ s a -> s{_fldCallback = a})

instance GoogleRequest FoldersLogsDelete where
        type Rs FoldersLogsDelete = Empty
        type Scopes FoldersLogsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient FoldersLogsDelete'{..}
          = go _fldLogName _fldXgafv _fldUploadProtocol
              _fldAccessToken
              _fldUploadType
              _fldCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersLogsDeleteResource)
                      mempty
