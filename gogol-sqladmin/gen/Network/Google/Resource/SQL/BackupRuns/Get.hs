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
-- Module      : Network.Google.Resource.SQL.BackupRuns.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a resource containing information about a backup run.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.backupRuns.get@.
module Network.Google.Resource.SQL.BackupRuns.Get
    (
    -- * REST Resource
      BackupRunsGetResource

    -- * Creating a Request
    , backupRunsGet
    , BackupRunsGet

    -- * Request Lenses
    , brgProject
    , brgId
    , brgInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.backupRuns.get@ method which the
-- 'BackupRunsGet' request conforms to.
type BackupRunsGetResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "backupRuns" :>
               Capture "id" Int64 :>
                 QueryParam "alt" AltJSON :> Get '[JSON] BackupRun

-- | Retrieves a resource containing information about a backup run.
--
-- /See:/ 'backupRunsGet' smart constructor.
data BackupRunsGet = BackupRunsGet
    { _brgProject  :: !Text
    , _brgId       :: !Int64
    , _brgInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackupRunsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brgProject'
--
-- * 'brgId'
--
-- * 'brgInstance'
backupRunsGet
    :: Text -- ^ 'brgProject'
    -> Int64 -- ^ 'brgId'
    -> Text -- ^ 'brgInstance'
    -> BackupRunsGet
backupRunsGet pBrgProject_ pBrgId_ pBrgInstance_ =
    BackupRunsGet
    { _brgProject = pBrgProject_
    , _brgId = pBrgId_
    , _brgInstance = pBrgInstance_
    }

-- | Project ID of the project that contains the instance.
brgProject :: Lens' BackupRunsGet Text
brgProject
  = lens _brgProject (\ s a -> s{_brgProject = a})

-- | The ID of this Backup Run.
brgId :: Lens' BackupRunsGet Int64
brgId = lens _brgId (\ s a -> s{_brgId = a})

-- | Cloud SQL instance ID. This does not include the project ID.
brgInstance :: Lens' BackupRunsGet Text
brgInstance
  = lens _brgInstance (\ s a -> s{_brgInstance = a})

instance GoogleRequest BackupRunsGet where
        type Rs BackupRunsGet = BackupRun
        requestClient BackupRunsGet{..}
          = go _brgProject _brgInstance _brgId (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy BackupRunsGetResource)
                      mempty
