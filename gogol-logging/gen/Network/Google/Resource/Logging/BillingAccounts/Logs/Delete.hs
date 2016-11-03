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
-- Deletes a log and all its log entries. The log will reappear if it
-- receives new entries.
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
    , baldPp
    , baldAccessToken
    , baldUploadType
    , baldBearerToken
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
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a log and all its log entries. The log will reappear if it
-- receives new entries.
--
-- /See:/ 'billingAccountsLogsDelete' smart constructor.
data BillingAccountsLogsDelete = BillingAccountsLogsDelete'
    { _baldXgafv          :: !(Maybe Xgafv)
    , _baldUploadProtocol :: !(Maybe Text)
    , _baldPp             :: !Bool
    , _baldAccessToken    :: !(Maybe Text)
    , _baldUploadType     :: !(Maybe Text)
    , _baldBearerToken    :: !(Maybe Text)
    , _baldLogName        :: !Text
    , _baldCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BillingAccountsLogsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baldXgafv'
--
-- * 'baldUploadProtocol'
--
-- * 'baldPp'
--
-- * 'baldAccessToken'
--
-- * 'baldUploadType'
--
-- * 'baldBearerToken'
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
    , _baldPp = True
    , _baldAccessToken = Nothing
    , _baldUploadType = Nothing
    , _baldBearerToken = Nothing
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

-- | Pretty-print response.
baldPp :: Lens' BillingAccountsLogsDelete Bool
baldPp = lens _baldPp (\ s a -> s{_baldPp = a})

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

-- | OAuth bearer token.
baldBearerToken :: Lens' BillingAccountsLogsDelete (Maybe Text)
baldBearerToken
  = lens _baldBearerToken
      (\ s a -> s{_baldBearerToken = a})

-- | Required. The resource name of the log to delete. Example:
-- \`\"projects\/my-project\/logs\/syslog\"\`.
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
              (Just _baldPp)
              _baldAccessToken
              _baldUploadType
              _baldBearerToken
              _baldCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy BillingAccountsLogsDeleteResource)
                      mempty
