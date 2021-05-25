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
-- Module      : Network.Google.Resource.SQL.BackupRuns.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new backup run on demand.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.backupRuns.insert@.
module Network.Google.Resource.SQL.BackupRuns.Insert
    (
    -- * REST Resource
      BackupRunsInsertResource

    -- * Creating a Request
    , backupRunsInsert
    , BackupRunsInsert

    -- * Request Lenses
    , briXgafv
    , briUploadProtocol
    , briProject
    , briAccessToken
    , briUploadType
    , briPayload
    , briCallback
    , briInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.backupRuns.insert@ method which the
-- 'BackupRunsInsert' request conforms to.
type BackupRunsInsertResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "backupRuns" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] BackupRun :> Post '[JSON] Operation

-- | Creates a new backup run on demand.
--
-- /See:/ 'backupRunsInsert' smart constructor.
data BackupRunsInsert =
  BackupRunsInsert'
    { _briXgafv :: !(Maybe Xgafv)
    , _briUploadProtocol :: !(Maybe Text)
    , _briProject :: !Text
    , _briAccessToken :: !(Maybe Text)
    , _briUploadType :: !(Maybe Text)
    , _briPayload :: !BackupRun
    , _briCallback :: !(Maybe Text)
    , _briInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BackupRunsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'briXgafv'
--
-- * 'briUploadProtocol'
--
-- * 'briProject'
--
-- * 'briAccessToken'
--
-- * 'briUploadType'
--
-- * 'briPayload'
--
-- * 'briCallback'
--
-- * 'briInstance'
backupRunsInsert
    :: Text -- ^ 'briProject'
    -> BackupRun -- ^ 'briPayload'
    -> Text -- ^ 'briInstance'
    -> BackupRunsInsert
backupRunsInsert pBriProject_ pBriPayload_ pBriInstance_ =
  BackupRunsInsert'
    { _briXgafv = Nothing
    , _briUploadProtocol = Nothing
    , _briProject = pBriProject_
    , _briAccessToken = Nothing
    , _briUploadType = Nothing
    , _briPayload = pBriPayload_
    , _briCallback = Nothing
    , _briInstance = pBriInstance_
    }


-- | V1 error format.
briXgafv :: Lens' BackupRunsInsert (Maybe Xgafv)
briXgafv = lens _briXgafv (\ s a -> s{_briXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
briUploadProtocol :: Lens' BackupRunsInsert (Maybe Text)
briUploadProtocol
  = lens _briUploadProtocol
      (\ s a -> s{_briUploadProtocol = a})

-- | Project ID of the project that contains the instance.
briProject :: Lens' BackupRunsInsert Text
briProject
  = lens _briProject (\ s a -> s{_briProject = a})

-- | OAuth access token.
briAccessToken :: Lens' BackupRunsInsert (Maybe Text)
briAccessToken
  = lens _briAccessToken
      (\ s a -> s{_briAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
briUploadType :: Lens' BackupRunsInsert (Maybe Text)
briUploadType
  = lens _briUploadType
      (\ s a -> s{_briUploadType = a})

-- | Multipart request metadata.
briPayload :: Lens' BackupRunsInsert BackupRun
briPayload
  = lens _briPayload (\ s a -> s{_briPayload = a})

-- | JSONP
briCallback :: Lens' BackupRunsInsert (Maybe Text)
briCallback
  = lens _briCallback (\ s a -> s{_briCallback = a})

-- | Cloud SQL instance ID. This does not include the project ID.
briInstance :: Lens' BackupRunsInsert Text
briInstance
  = lens _briInstance (\ s a -> s{_briInstance = a})

instance GoogleRequest BackupRunsInsert where
        type Rs BackupRunsInsert = Operation
        type Scopes BackupRunsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient BackupRunsInsert'{..}
          = go _briProject _briInstance _briXgafv
              _briUploadProtocol
              _briAccessToken
              _briUploadType
              _briCallback
              (Just AltJSON)
              _briPayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy BackupRunsInsertResource)
                      mempty
