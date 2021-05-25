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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Backups.Operations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.backups.operations.get@.
module Network.Google.Resource.Spanner.Projects.Instances.Backups.Operations.Get
    (
    -- * REST Resource
      ProjectsInstancesBackupsOperationsGetResource

    -- * Creating a Request
    , projectsInstancesBackupsOperationsGet
    , ProjectsInstancesBackupsOperationsGet

    -- * Request Lenses
    , pibogXgafv
    , pibogUploadProtocol
    , pibogAccessToken
    , pibogUploadType
    , pibogName
    , pibogCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.backups.operations.get@ method which the
-- 'ProjectsInstancesBackupsOperationsGet' request conforms to.
type ProjectsInstancesBackupsOperationsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ 'projectsInstancesBackupsOperationsGet' smart constructor.
data ProjectsInstancesBackupsOperationsGet =
  ProjectsInstancesBackupsOperationsGet'
    { _pibogXgafv :: !(Maybe Xgafv)
    , _pibogUploadProtocol :: !(Maybe Text)
    , _pibogAccessToken :: !(Maybe Text)
    , _pibogUploadType :: !(Maybe Text)
    , _pibogName :: !Text
    , _pibogCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesBackupsOperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pibogXgafv'
--
-- * 'pibogUploadProtocol'
--
-- * 'pibogAccessToken'
--
-- * 'pibogUploadType'
--
-- * 'pibogName'
--
-- * 'pibogCallback'
projectsInstancesBackupsOperationsGet
    :: Text -- ^ 'pibogName'
    -> ProjectsInstancesBackupsOperationsGet
projectsInstancesBackupsOperationsGet pPibogName_ =
  ProjectsInstancesBackupsOperationsGet'
    { _pibogXgafv = Nothing
    , _pibogUploadProtocol = Nothing
    , _pibogAccessToken = Nothing
    , _pibogUploadType = Nothing
    , _pibogName = pPibogName_
    , _pibogCallback = Nothing
    }


-- | V1 error format.
pibogXgafv :: Lens' ProjectsInstancesBackupsOperationsGet (Maybe Xgafv)
pibogXgafv
  = lens _pibogXgafv (\ s a -> s{_pibogXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pibogUploadProtocol :: Lens' ProjectsInstancesBackupsOperationsGet (Maybe Text)
pibogUploadProtocol
  = lens _pibogUploadProtocol
      (\ s a -> s{_pibogUploadProtocol = a})

-- | OAuth access token.
pibogAccessToken :: Lens' ProjectsInstancesBackupsOperationsGet (Maybe Text)
pibogAccessToken
  = lens _pibogAccessToken
      (\ s a -> s{_pibogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pibogUploadType :: Lens' ProjectsInstancesBackupsOperationsGet (Maybe Text)
pibogUploadType
  = lens _pibogUploadType
      (\ s a -> s{_pibogUploadType = a})

-- | The name of the operation resource.
pibogName :: Lens' ProjectsInstancesBackupsOperationsGet Text
pibogName
  = lens _pibogName (\ s a -> s{_pibogName = a})

-- | JSONP
pibogCallback :: Lens' ProjectsInstancesBackupsOperationsGet (Maybe Text)
pibogCallback
  = lens _pibogCallback
      (\ s a -> s{_pibogCallback = a})

instance GoogleRequest
           ProjectsInstancesBackupsOperationsGet
         where
        type Rs ProjectsInstancesBackupsOperationsGet =
             Operation
        type Scopes ProjectsInstancesBackupsOperationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient
          ProjectsInstancesBackupsOperationsGet'{..}
          = go _pibogName _pibogXgafv _pibogUploadProtocol
              _pibogAccessToken
              _pibogUploadType
              _pibogCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesBackupsOperationsGetResource)
                      mempty
