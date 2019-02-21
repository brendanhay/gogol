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
-- Module      : Network.Google.Resource.Logging.Organizations.Logs.Delete
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
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.organizations.logs.delete@.
module Network.Google.Resource.Logging.Organizations.Logs.Delete
    (
    -- * REST Resource
      OrganizationsLogsDeleteResource

    -- * Creating a Request
    , organizationsLogsDelete
    , OrganizationsLogsDelete

    -- * Request Lenses
    , oldXgafv
    , oldUploadProtocol
    , oldAccessToken
    , oldUploadType
    , oldLogName
    , oldCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.organizations.logs.delete@ method which the
-- 'OrganizationsLogsDelete' request conforms to.
type OrganizationsLogsDeleteResource =
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
-- /See:/ 'organizationsLogsDelete' smart constructor.
data OrganizationsLogsDelete =
  OrganizationsLogsDelete'
    { _oldXgafv          :: !(Maybe Xgafv)
    , _oldUploadProtocol :: !(Maybe Text)
    , _oldAccessToken    :: !(Maybe Text)
    , _oldUploadType     :: !(Maybe Text)
    , _oldLogName        :: !Text
    , _oldCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLogsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oldXgafv'
--
-- * 'oldUploadProtocol'
--
-- * 'oldAccessToken'
--
-- * 'oldUploadType'
--
-- * 'oldLogName'
--
-- * 'oldCallback'
organizationsLogsDelete
    :: Text -- ^ 'oldLogName'
    -> OrganizationsLogsDelete
organizationsLogsDelete pOldLogName_ =
  OrganizationsLogsDelete'
    { _oldXgafv = Nothing
    , _oldUploadProtocol = Nothing
    , _oldAccessToken = Nothing
    , _oldUploadType = Nothing
    , _oldLogName = pOldLogName_
    , _oldCallback = Nothing
    }


-- | V1 error format.
oldXgafv :: Lens' OrganizationsLogsDelete (Maybe Xgafv)
oldXgafv = lens _oldXgafv (\ s a -> s{_oldXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oldUploadProtocol :: Lens' OrganizationsLogsDelete (Maybe Text)
oldUploadProtocol
  = lens _oldUploadProtocol
      (\ s a -> s{_oldUploadProtocol = a})

-- | OAuth access token.
oldAccessToken :: Lens' OrganizationsLogsDelete (Maybe Text)
oldAccessToken
  = lens _oldAccessToken
      (\ s a -> s{_oldAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oldUploadType :: Lens' OrganizationsLogsDelete (Maybe Text)
oldUploadType
  = lens _oldUploadType
      (\ s a -> s{_oldUploadType = a})

-- | Required. The resource name of the log to delete:
-- \"projects\/[PROJECT_ID]\/logs\/[LOG_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/logs\/[LOG_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/logs\/[LOG_ID]\"
-- \"folders\/[FOLDER_ID]\/logs\/[LOG_ID]\" [LOG_ID] must be URL-encoded.
-- For example, \"projects\/my-project-id\/logs\/syslog\",
-- \"organizations\/1234567890\/logs\/cloudresourcemanager.googleapis.com%2Factivity\".
-- For more information about log names, see LogEntry.
oldLogName :: Lens' OrganizationsLogsDelete Text
oldLogName
  = lens _oldLogName (\ s a -> s{_oldLogName = a})

-- | JSONP
oldCallback :: Lens' OrganizationsLogsDelete (Maybe Text)
oldCallback
  = lens _oldCallback (\ s a -> s{_oldCallback = a})

instance GoogleRequest OrganizationsLogsDelete where
        type Rs OrganizationsLogsDelete = Empty
        type Scopes OrganizationsLogsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient OrganizationsLogsDelete'{..}
          = go _oldLogName _oldXgafv _oldUploadProtocol
              _oldAccessToken
              _oldUploadType
              _oldCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsLogsDeleteResource)
                      mempty
