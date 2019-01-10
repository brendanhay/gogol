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
-- Creates a new backup run on demand. This method is applicable only to
-- Second Generation instances.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Admin API Reference> for @sql.backupRuns.insert@.
module Network.Google.Resource.SQL.BackupRuns.Insert
    (
    -- * REST Resource
      BackupRunsInsertResource

    -- * Creating a Request
    , backupRunsInsert
    , BackupRunsInsert

    -- * Request Lenses
    , briProject
    , briPayload
    , briInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.backupRuns.insert@ method which the
-- 'BackupRunsInsert' request conforms to.
type BackupRunsInsertResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               Capture "instance" Text :>
                 "backupRuns" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] BackupRun :> Post '[JSON] Operation

-- | Creates a new backup run on demand. This method is applicable only to
-- Second Generation instances.
--
-- /See:/ 'backupRunsInsert' smart constructor.
data BackupRunsInsert = BackupRunsInsert'
    { _briProject  :: !Text
    , _briPayload  :: !BackupRun
    , _briInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackupRunsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'briProject'
--
-- * 'briPayload'
--
-- * 'briInstance'
backupRunsInsert
    :: Text -- ^ 'briProject'
    -> BackupRun -- ^ 'briPayload'
    -> Text -- ^ 'briInstance'
    -> BackupRunsInsert
backupRunsInsert pBriProject_ pBriPayload_ pBriInstance_ =
    BackupRunsInsert'
    { _briProject = pBriProject_
    , _briPayload = pBriPayload_
    , _briInstance = pBriInstance_
    }

-- | Project ID of the project that contains the instance.
briProject :: Lens' BackupRunsInsert Text
briProject
  = lens _briProject (\ s a -> s{_briProject = a})

-- | Multipart request metadata.
briPayload :: Lens' BackupRunsInsert BackupRun
briPayload
  = lens _briPayload (\ s a -> s{_briPayload = a})

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
          = go _briProject _briInstance (Just AltJSON)
              _briPayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy BackupRunsInsertResource)
                      mempty
