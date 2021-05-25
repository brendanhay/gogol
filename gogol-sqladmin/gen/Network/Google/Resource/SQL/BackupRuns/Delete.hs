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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the backup taken by a backup run.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.backupRuns.delete@.
module Network.Google.Resource.SQL.BackupRuns.Delete
    (
    -- * REST Resource
      BackupRunsDeleteResource

    -- * Creating a Request
    , backupRunsDelete
    , BackupRunsDelete

    -- * Request Lenses
    , brdXgafv
    , brdUploadProtocol
    , brdProject
    , brdAccessToken
    , brdUploadType
    , brdId
    , brdCallback
    , brdInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.backupRuns.delete@ method which the
-- 'BackupRunsDelete' request conforms to.
type BackupRunsDeleteResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "backupRuns" :>
                 Capture "id" (Textual Int64) :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Delete '[JSON] Operation

-- | Deletes the backup taken by a backup run.
--
-- /See:/ 'backupRunsDelete' smart constructor.
data BackupRunsDelete =
  BackupRunsDelete'
    { _brdXgafv :: !(Maybe Xgafv)
    , _brdUploadProtocol :: !(Maybe Text)
    , _brdProject :: !Text
    , _brdAccessToken :: !(Maybe Text)
    , _brdUploadType :: !(Maybe Text)
    , _brdId :: !(Textual Int64)
    , _brdCallback :: !(Maybe Text)
    , _brdInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BackupRunsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brdXgafv'
--
-- * 'brdUploadProtocol'
--
-- * 'brdProject'
--
-- * 'brdAccessToken'
--
-- * 'brdUploadType'
--
-- * 'brdId'
--
-- * 'brdCallback'
--
-- * 'brdInstance'
backupRunsDelete
    :: Text -- ^ 'brdProject'
    -> Int64 -- ^ 'brdId'
    -> Text -- ^ 'brdInstance'
    -> BackupRunsDelete
backupRunsDelete pBrdProject_ pBrdId_ pBrdInstance_ =
  BackupRunsDelete'
    { _brdXgafv = Nothing
    , _brdUploadProtocol = Nothing
    , _brdProject = pBrdProject_
    , _brdAccessToken = Nothing
    , _brdUploadType = Nothing
    , _brdId = _Coerce # pBrdId_
    , _brdCallback = Nothing
    , _brdInstance = pBrdInstance_
    }


-- | V1 error format.
brdXgafv :: Lens' BackupRunsDelete (Maybe Xgafv)
brdXgafv = lens _brdXgafv (\ s a -> s{_brdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
brdUploadProtocol :: Lens' BackupRunsDelete (Maybe Text)
brdUploadProtocol
  = lens _brdUploadProtocol
      (\ s a -> s{_brdUploadProtocol = a})

-- | Project ID of the project that contains the instance.
brdProject :: Lens' BackupRunsDelete Text
brdProject
  = lens _brdProject (\ s a -> s{_brdProject = a})

-- | OAuth access token.
brdAccessToken :: Lens' BackupRunsDelete (Maybe Text)
brdAccessToken
  = lens _brdAccessToken
      (\ s a -> s{_brdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
brdUploadType :: Lens' BackupRunsDelete (Maybe Text)
brdUploadType
  = lens _brdUploadType
      (\ s a -> s{_brdUploadType = a})

-- | The ID of the backup run to delete. To find a backup run ID, use the
-- list method.
brdId :: Lens' BackupRunsDelete Int64
brdId
  = lens _brdId (\ s a -> s{_brdId = a}) . _Coerce

-- | JSONP
brdCallback :: Lens' BackupRunsDelete (Maybe Text)
brdCallback
  = lens _brdCallback (\ s a -> s{_brdCallback = a})

-- | Cloud SQL instance ID. This does not include the project ID.
brdInstance :: Lens' BackupRunsDelete Text
brdInstance
  = lens _brdInstance (\ s a -> s{_brdInstance = a})

instance GoogleRequest BackupRunsDelete where
        type Rs BackupRunsDelete = Operation
        type Scopes BackupRunsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient BackupRunsDelete'{..}
          = go _brdProject _brdInstance _brdId _brdXgafv
              _brdUploadProtocol
              _brdAccessToken
              _brdUploadType
              _brdCallback
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy BackupRunsDeleteResource)
                      mempty
