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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a resource containing information about a backup run.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.backupRuns.get@.
module Network.Google.Resource.SQL.BackupRuns.Get
    (
    -- * REST Resource
      BackupRunsGetResource

    -- * Creating a Request
    , backupRunsGet
    , BackupRunsGet

    -- * Request Lenses
    , brgXgafv
    , brgUploadProtocol
    , brgProject
    , brgAccessToken
    , brgUploadType
    , brgId
    , brgCallback
    , brgInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.backupRuns.get@ method which the
-- 'BackupRunsGet' request conforms to.
type BackupRunsGetResource =
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
                             QueryParam "alt" AltJSON :> Get '[JSON] BackupRun

-- | Retrieves a resource containing information about a backup run.
--
-- /See:/ 'backupRunsGet' smart constructor.
data BackupRunsGet =
  BackupRunsGet'
    { _brgXgafv :: !(Maybe Xgafv)
    , _brgUploadProtocol :: !(Maybe Text)
    , _brgProject :: !Text
    , _brgAccessToken :: !(Maybe Text)
    , _brgUploadType :: !(Maybe Text)
    , _brgId :: !(Textual Int64)
    , _brgCallback :: !(Maybe Text)
    , _brgInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BackupRunsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brgXgafv'
--
-- * 'brgUploadProtocol'
--
-- * 'brgProject'
--
-- * 'brgAccessToken'
--
-- * 'brgUploadType'
--
-- * 'brgId'
--
-- * 'brgCallback'
--
-- * 'brgInstance'
backupRunsGet
    :: Text -- ^ 'brgProject'
    -> Int64 -- ^ 'brgId'
    -> Text -- ^ 'brgInstance'
    -> BackupRunsGet
backupRunsGet pBrgProject_ pBrgId_ pBrgInstance_ =
  BackupRunsGet'
    { _brgXgafv = Nothing
    , _brgUploadProtocol = Nothing
    , _brgProject = pBrgProject_
    , _brgAccessToken = Nothing
    , _brgUploadType = Nothing
    , _brgId = _Coerce # pBrgId_
    , _brgCallback = Nothing
    , _brgInstance = pBrgInstance_
    }


-- | V1 error format.
brgXgafv :: Lens' BackupRunsGet (Maybe Xgafv)
brgXgafv = lens _brgXgafv (\ s a -> s{_brgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
brgUploadProtocol :: Lens' BackupRunsGet (Maybe Text)
brgUploadProtocol
  = lens _brgUploadProtocol
      (\ s a -> s{_brgUploadProtocol = a})

-- | Project ID of the project that contains the instance.
brgProject :: Lens' BackupRunsGet Text
brgProject
  = lens _brgProject (\ s a -> s{_brgProject = a})

-- | OAuth access token.
brgAccessToken :: Lens' BackupRunsGet (Maybe Text)
brgAccessToken
  = lens _brgAccessToken
      (\ s a -> s{_brgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
brgUploadType :: Lens' BackupRunsGet (Maybe Text)
brgUploadType
  = lens _brgUploadType
      (\ s a -> s{_brgUploadType = a})

-- | The ID of this backup run.
brgId :: Lens' BackupRunsGet Int64
brgId
  = lens _brgId (\ s a -> s{_brgId = a}) . _Coerce

-- | JSONP
brgCallback :: Lens' BackupRunsGet (Maybe Text)
brgCallback
  = lens _brgCallback (\ s a -> s{_brgCallback = a})

-- | Cloud SQL instance ID. This does not include the project ID.
brgInstance :: Lens' BackupRunsGet Text
brgInstance
  = lens _brgInstance (\ s a -> s{_brgInstance = a})

instance GoogleRequest BackupRunsGet where
        type Rs BackupRunsGet = BackupRun
        type Scopes BackupRunsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient BackupRunsGet'{..}
          = go _brgProject _brgInstance _brgId _brgXgafv
              _brgUploadProtocol
              _brgAccessToken
              _brgUploadType
              _brgCallback
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy BackupRunsGetResource)
                      mempty
