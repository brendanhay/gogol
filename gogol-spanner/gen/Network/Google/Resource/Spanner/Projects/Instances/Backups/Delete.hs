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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Backups.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a pending or completed Backup.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.backups.delete@.
module Network.Google.Resource.Spanner.Projects.Instances.Backups.Delete
    (
    -- * REST Resource
      ProjectsInstancesBackupsDeleteResource

    -- * Creating a Request
    , projectsInstancesBackupsDelete
    , ProjectsInstancesBackupsDelete

    -- * Request Lenses
    , pibdXgafv
    , pibdUploadProtocol
    , pibdAccessToken
    , pibdUploadType
    , pibdName
    , pibdCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.backups.delete@ method which the
-- 'ProjectsInstancesBackupsDelete' request conforms to.
type ProjectsInstancesBackupsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a pending or completed Backup.
--
-- /See:/ 'projectsInstancesBackupsDelete' smart constructor.
data ProjectsInstancesBackupsDelete =
  ProjectsInstancesBackupsDelete'
    { _pibdXgafv :: !(Maybe Xgafv)
    , _pibdUploadProtocol :: !(Maybe Text)
    , _pibdAccessToken :: !(Maybe Text)
    , _pibdUploadType :: !(Maybe Text)
    , _pibdName :: !Text
    , _pibdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesBackupsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pibdXgafv'
--
-- * 'pibdUploadProtocol'
--
-- * 'pibdAccessToken'
--
-- * 'pibdUploadType'
--
-- * 'pibdName'
--
-- * 'pibdCallback'
projectsInstancesBackupsDelete
    :: Text -- ^ 'pibdName'
    -> ProjectsInstancesBackupsDelete
projectsInstancesBackupsDelete pPibdName_ =
  ProjectsInstancesBackupsDelete'
    { _pibdXgafv = Nothing
    , _pibdUploadProtocol = Nothing
    , _pibdAccessToken = Nothing
    , _pibdUploadType = Nothing
    , _pibdName = pPibdName_
    , _pibdCallback = Nothing
    }


-- | V1 error format.
pibdXgafv :: Lens' ProjectsInstancesBackupsDelete (Maybe Xgafv)
pibdXgafv
  = lens _pibdXgafv (\ s a -> s{_pibdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pibdUploadProtocol :: Lens' ProjectsInstancesBackupsDelete (Maybe Text)
pibdUploadProtocol
  = lens _pibdUploadProtocol
      (\ s a -> s{_pibdUploadProtocol = a})

-- | OAuth access token.
pibdAccessToken :: Lens' ProjectsInstancesBackupsDelete (Maybe Text)
pibdAccessToken
  = lens _pibdAccessToken
      (\ s a -> s{_pibdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pibdUploadType :: Lens' ProjectsInstancesBackupsDelete (Maybe Text)
pibdUploadType
  = lens _pibdUploadType
      (\ s a -> s{_pibdUploadType = a})

-- | Required. Name of the backup to delete. Values are of the form
-- \`projects\/\/instances\/\/backups\/\`.
pibdName :: Lens' ProjectsInstancesBackupsDelete Text
pibdName = lens _pibdName (\ s a -> s{_pibdName = a})

-- | JSONP
pibdCallback :: Lens' ProjectsInstancesBackupsDelete (Maybe Text)
pibdCallback
  = lens _pibdCallback (\ s a -> s{_pibdCallback = a})

instance GoogleRequest ProjectsInstancesBackupsDelete
         where
        type Rs ProjectsInstancesBackupsDelete = Empty
        type Scopes ProjectsInstancesBackupsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient ProjectsInstancesBackupsDelete'{..}
          = go _pibdName _pibdXgafv _pibdUploadProtocol
              _pibdAccessToken
              _pibdUploadType
              _pibdCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesBackupsDeleteResource)
                      mempty
