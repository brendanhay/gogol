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
-- Module      : Network.Google.Resource.SQL.BackupRuns.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the backup taken by a backup run.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLBackupRunsDelete@.
module Network.Google.Resource.SQL.BackupRuns.Delete
    (
    -- * REST Resource
      BackupRunsDeleteResource

    -- * Creating a Request
    , backupRunsDelete'
    , BackupRunsDelete'

    -- * Request Lenses
    , brdProject
    , brdId
    , brdInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLBackupRunsDelete@ method which the
-- 'BackupRunsDelete'' request conforms to.
type BackupRunsDeleteResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "backupRuns" :>
               Capture "id" Int64 :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the backup taken by a backup run.
--
-- /See:/ 'backupRunsDelete'' smart constructor.
data BackupRunsDelete' = BackupRunsDelete'
    { _brdProject  :: !Text
    , _brdId       :: !Int64
    , _brdInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackupRunsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brdProject'
--
-- * 'brdId'
--
-- * 'brdInstance'
backupRunsDelete'
    :: Text -- ^ 'project'
    -> Int64 -- ^ 'id'
    -> Text -- ^ 'instance'
    -> BackupRunsDelete'
backupRunsDelete' pBrdProject_ pBrdId_ pBrdInstance_ =
    BackupRunsDelete'
    { _brdProject = pBrdProject_
    , _brdId = pBrdId_
    , _brdInstance = pBrdInstance_
    }

-- | Project ID of the project that contains the instance.
brdProject :: Lens' BackupRunsDelete' Text
brdProject
  = lens _brdProject (\ s a -> s{_brdProject = a})

-- | The ID of the Backup Run to delete.
brdId :: Lens' BackupRunsDelete' Int64
brdId = lens _brdId (\ s a -> s{_brdId = a})

-- | Cloud SQL instance ID. This does not include the project ID.
brdInstance :: Lens' BackupRunsDelete' Text
brdInstance
  = lens _brdInstance (\ s a -> s{_brdInstance = a})

instance GoogleRequest BackupRunsDelete' where
        type Rs BackupRunsDelete' = Operation
        requestClient BackupRunsDelete'{..}
          = go _brdProject _brdInstance _brdId (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy BackupRunsDeleteResource)
                      mempty
