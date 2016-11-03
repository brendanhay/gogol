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
-- Deletes a log and all its log entries. The log will reappear if it
-- receives new entries.
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
    , oldPp
    , oldAccessToken
    , oldUploadType
    , oldBearerToken
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
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a log and all its log entries. The log will reappear if it
-- receives new entries.
--
-- /See:/ 'organizationsLogsDelete' smart constructor.
data OrganizationsLogsDelete = OrganizationsLogsDelete'
    { _oldXgafv          :: !(Maybe Xgafv)
    , _oldUploadProtocol :: !(Maybe Text)
    , _oldPp             :: !Bool
    , _oldAccessToken    :: !(Maybe Text)
    , _oldUploadType     :: !(Maybe Text)
    , _oldBearerToken    :: !(Maybe Text)
    , _oldLogName        :: !Text
    , _oldCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrganizationsLogsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oldXgafv'
--
-- * 'oldUploadProtocol'
--
-- * 'oldPp'
--
-- * 'oldAccessToken'
--
-- * 'oldUploadType'
--
-- * 'oldBearerToken'
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
    , _oldPp = True
    , _oldAccessToken = Nothing
    , _oldUploadType = Nothing
    , _oldBearerToken = Nothing
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

-- | Pretty-print response.
oldPp :: Lens' OrganizationsLogsDelete Bool
oldPp = lens _oldPp (\ s a -> s{_oldPp = a})

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

-- | OAuth bearer token.
oldBearerToken :: Lens' OrganizationsLogsDelete (Maybe Text)
oldBearerToken
  = lens _oldBearerToken
      (\ s a -> s{_oldBearerToken = a})

-- | Required. The resource name of the log to delete. Example:
-- \`\"projects\/my-project\/logs\/syslog\"\`.
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
              (Just _oldPp)
              _oldAccessToken
              _oldUploadType
              _oldBearerToken
              _oldCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsLogsDeleteResource)
                      mempty
