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
-- Module      : Network.Google.Resource.SQL.Instances.RestoreBackup
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restores a backup of a Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.instances.restoreBackup@.
module Network.Google.Resource.SQL.Instances.RestoreBackup
    (
    -- * REST Resource
      InstancesRestoreBackupResource

    -- * Creating a Request
    , instancesRestoreBackup
    , InstancesRestoreBackup

    -- * Request Lenses
    , irbProject
    , irbPayload
    , irbInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.restoreBackup@ method which the
-- 'InstancesRestoreBackup' request conforms to.
type InstancesRestoreBackupResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               Capture "instance" Text :>
                 "restoreBackup" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] InstancesRestoreBackupRequest :>
                       Post '[JSON] Operation

-- | Restores a backup of a Cloud SQL instance.
--
-- /See:/ 'instancesRestoreBackup' smart constructor.
data InstancesRestoreBackup = InstancesRestoreBackup
    { _irbProject  :: !Text
    , _irbPayload  :: !InstancesRestoreBackupRequest
    , _irbInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesRestoreBackup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irbProject'
--
-- * 'irbPayload'
--
-- * 'irbInstance'
instancesRestoreBackup
    :: Text -- ^ 'irbProject'
    -> InstancesRestoreBackupRequest -- ^ 'irbPayload'
    -> Text -- ^ 'irbInstance'
    -> InstancesRestoreBackup
instancesRestoreBackup pIrbProject_ pIrbPayload_ pIrbInstance_ =
    InstancesRestoreBackup
    { _irbProject = pIrbProject_
    , _irbPayload = pIrbPayload_
    , _irbInstance = pIrbInstance_
    }

-- | Project ID of the project that contains the instance.
irbProject :: Lens' InstancesRestoreBackup Text
irbProject
  = lens _irbProject (\ s a -> s{_irbProject = a})

-- | Multipart request metadata.
irbPayload :: Lens' InstancesRestoreBackup InstancesRestoreBackupRequest
irbPayload
  = lens _irbPayload (\ s a -> s{_irbPayload = a})

-- | Cloud SQL instance ID. This does not include the project ID.
irbInstance :: Lens' InstancesRestoreBackup Text
irbInstance
  = lens _irbInstance (\ s a -> s{_irbInstance = a})

instance GoogleRequest InstancesRestoreBackup where
        type Rs InstancesRestoreBackup = Operation
        requestClient InstancesRestoreBackup{..}
          = go _irbProject _irbInstance (Just AltJSON)
              _irbPayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesRestoreBackupResource)
                      mempty
