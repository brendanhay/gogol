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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Backups.Operations.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a long-running operation. This method indicates that the client
-- is no longer interested in the operation result. It does not cancel the
-- operation. If the server doesn\'t support this method, it returns
-- \`google.rpc.Code.UNIMPLEMENTED\`.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.backups.operations.delete@.
module Network.Google.Resource.Spanner.Projects.Instances.Backups.Operations.Delete
    (
    -- * REST Resource
      ProjectsInstancesBackupsOperationsDeleteResource

    -- * Creating a Request
    , projectsInstancesBackupsOperationsDelete
    , ProjectsInstancesBackupsOperationsDelete

    -- * Request Lenses
    , pibodXgafv
    , pibodUploadProtocol
    , pibodAccessToken
    , pibodUploadType
    , pibodName
    , pibodCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.backups.operations.delete@ method which the
-- 'ProjectsInstancesBackupsOperationsDelete' request conforms to.
type ProjectsInstancesBackupsOperationsDeleteResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a long-running operation. This method indicates that the client
-- is no longer interested in the operation result. It does not cancel the
-- operation. If the server doesn\'t support this method, it returns
-- \`google.rpc.Code.UNIMPLEMENTED\`.
--
-- /See:/ 'projectsInstancesBackupsOperationsDelete' smart constructor.
data ProjectsInstancesBackupsOperationsDelete =
  ProjectsInstancesBackupsOperationsDelete'
    { _pibodXgafv :: !(Maybe Xgafv)
    , _pibodUploadProtocol :: !(Maybe Text)
    , _pibodAccessToken :: !(Maybe Text)
    , _pibodUploadType :: !(Maybe Text)
    , _pibodName :: !Text
    , _pibodCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesBackupsOperationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pibodXgafv'
--
-- * 'pibodUploadProtocol'
--
-- * 'pibodAccessToken'
--
-- * 'pibodUploadType'
--
-- * 'pibodName'
--
-- * 'pibodCallback'
projectsInstancesBackupsOperationsDelete
    :: Text -- ^ 'pibodName'
    -> ProjectsInstancesBackupsOperationsDelete
projectsInstancesBackupsOperationsDelete pPibodName_ =
  ProjectsInstancesBackupsOperationsDelete'
    { _pibodXgafv = Nothing
    , _pibodUploadProtocol = Nothing
    , _pibodAccessToken = Nothing
    , _pibodUploadType = Nothing
    , _pibodName = pPibodName_
    , _pibodCallback = Nothing
    }


-- | V1 error format.
pibodXgafv :: Lens' ProjectsInstancesBackupsOperationsDelete (Maybe Xgafv)
pibodXgafv
  = lens _pibodXgafv (\ s a -> s{_pibodXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pibodUploadProtocol :: Lens' ProjectsInstancesBackupsOperationsDelete (Maybe Text)
pibodUploadProtocol
  = lens _pibodUploadProtocol
      (\ s a -> s{_pibodUploadProtocol = a})

-- | OAuth access token.
pibodAccessToken :: Lens' ProjectsInstancesBackupsOperationsDelete (Maybe Text)
pibodAccessToken
  = lens _pibodAccessToken
      (\ s a -> s{_pibodAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pibodUploadType :: Lens' ProjectsInstancesBackupsOperationsDelete (Maybe Text)
pibodUploadType
  = lens _pibodUploadType
      (\ s a -> s{_pibodUploadType = a})

-- | The name of the operation resource to be deleted.
pibodName :: Lens' ProjectsInstancesBackupsOperationsDelete Text
pibodName
  = lens _pibodName (\ s a -> s{_pibodName = a})

-- | JSONP
pibodCallback :: Lens' ProjectsInstancesBackupsOperationsDelete (Maybe Text)
pibodCallback
  = lens _pibodCallback
      (\ s a -> s{_pibodCallback = a})

instance GoogleRequest
           ProjectsInstancesBackupsOperationsDelete
         where
        type Rs ProjectsInstancesBackupsOperationsDelete =
             Empty
        type Scopes ProjectsInstancesBackupsOperationsDelete
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient
          ProjectsInstancesBackupsOperationsDelete'{..}
          = go _pibodName _pibodXgafv _pibodUploadProtocol
              _pibodAccessToken
              _pibodUploadType
              _pibodCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesBackupsOperationsDeleteResource)
                      mempty
