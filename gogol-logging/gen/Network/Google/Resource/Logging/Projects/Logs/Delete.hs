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
-- Module      : Network.Google.Resource.Logging.Projects.Logs.Delete
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
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.projects.logs.delete@.
module Network.Google.Resource.Logging.Projects.Logs.Delete
    (
    -- * REST Resource
      ProjectsLogsDeleteResource

    -- * Creating a Request
    , projectsLogsDelete
    , ProjectsLogsDelete

    -- * Request Lenses
    , pldXgafv
    , pldUploadProtocol
    , pldAccessToken
    , pldUploadType
    , pldLogName
    , pldCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.projects.logs.delete@ method which the
-- 'ProjectsLogsDelete' request conforms to.
type ProjectsLogsDeleteResource =
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
-- /See:/ 'projectsLogsDelete' smart constructor.
data ProjectsLogsDelete =
  ProjectsLogsDelete'
    { _pldXgafv          :: !(Maybe Xgafv)
    , _pldUploadProtocol :: !(Maybe Text)
    , _pldAccessToken    :: !(Maybe Text)
    , _pldUploadType     :: !(Maybe Text)
    , _pldLogName        :: !Text
    , _pldCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLogsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldXgafv'
--
-- * 'pldUploadProtocol'
--
-- * 'pldAccessToken'
--
-- * 'pldUploadType'
--
-- * 'pldLogName'
--
-- * 'pldCallback'
projectsLogsDelete
    :: Text -- ^ 'pldLogName'
    -> ProjectsLogsDelete
projectsLogsDelete pPldLogName_ =
  ProjectsLogsDelete'
    { _pldXgafv = Nothing
    , _pldUploadProtocol = Nothing
    , _pldAccessToken = Nothing
    , _pldUploadType = Nothing
    , _pldLogName = pPldLogName_
    , _pldCallback = Nothing
    }

-- | V1 error format.
pldXgafv :: Lens' ProjectsLogsDelete (Maybe Xgafv)
pldXgafv = lens _pldXgafv (\ s a -> s{_pldXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldUploadProtocol :: Lens' ProjectsLogsDelete (Maybe Text)
pldUploadProtocol
  = lens _pldUploadProtocol
      (\ s a -> s{_pldUploadProtocol = a})

-- | OAuth access token.
pldAccessToken :: Lens' ProjectsLogsDelete (Maybe Text)
pldAccessToken
  = lens _pldAccessToken
      (\ s a -> s{_pldAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldUploadType :: Lens' ProjectsLogsDelete (Maybe Text)
pldUploadType
  = lens _pldUploadType
      (\ s a -> s{_pldUploadType = a})

-- | Required. The resource name of the log to delete:
-- \"projects\/[PROJECT_ID]\/logs\/[LOG_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/logs\/[LOG_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/logs\/[LOG_ID]\"
-- \"folders\/[FOLDER_ID]\/logs\/[LOG_ID]\" [LOG_ID] must be URL-encoded.
-- For example, \"projects\/my-project-id\/logs\/syslog\",
-- \"organizations\/1234567890\/logs\/cloudresourcemanager.googleapis.com%2Factivity\".
-- For more information about log names, see LogEntry.
pldLogName :: Lens' ProjectsLogsDelete Text
pldLogName
  = lens _pldLogName (\ s a -> s{_pldLogName = a})

-- | JSONP
pldCallback :: Lens' ProjectsLogsDelete (Maybe Text)
pldCallback
  = lens _pldCallback (\ s a -> s{_pldCallback = a})

instance GoogleRequest ProjectsLogsDelete where
        type Rs ProjectsLogsDelete = Empty
        type Scopes ProjectsLogsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient ProjectsLogsDelete'{..}
          = go _pldLogName _pldXgafv _pldUploadProtocol
              _pldAccessToken
              _pldUploadType
              _pldCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLogsDeleteResource)
                      mempty
