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
-- Module      : Network.Google.Resource.File.Projects.Locations.Backups.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a backup.
--
-- /See:/ <https://cloud.google.com/filestore/ Cloud Filestore API Reference> for @file.projects.locations.backups.delete@.
module Network.Google.Resource.File.Projects.Locations.Backups.Delete
    (
    -- * REST Resource
      ProjectsLocationsBackupsDeleteResource

    -- * Creating a Request
    , projectsLocationsBackupsDelete
    , ProjectsLocationsBackupsDelete

    -- * Request Lenses
    , plbdXgafv
    , plbdUploadProtocol
    , plbdAccessToken
    , plbdUploadType
    , plbdName
    , plbdCallback
    ) where

import Network.Google.File.Types
import Network.Google.Prelude

-- | A resource alias for @file.projects.locations.backups.delete@ method which the
-- 'ProjectsLocationsBackupsDelete' request conforms to.
type ProjectsLocationsBackupsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes a backup.
--
-- /See:/ 'projectsLocationsBackupsDelete' smart constructor.
data ProjectsLocationsBackupsDelete =
  ProjectsLocationsBackupsDelete'
    { _plbdXgafv :: !(Maybe Xgafv)
    , _plbdUploadProtocol :: !(Maybe Text)
    , _plbdAccessToken :: !(Maybe Text)
    , _plbdUploadType :: !(Maybe Text)
    , _plbdName :: !Text
    , _plbdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsBackupsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plbdXgafv'
--
-- * 'plbdUploadProtocol'
--
-- * 'plbdAccessToken'
--
-- * 'plbdUploadType'
--
-- * 'plbdName'
--
-- * 'plbdCallback'
projectsLocationsBackupsDelete
    :: Text -- ^ 'plbdName'
    -> ProjectsLocationsBackupsDelete
projectsLocationsBackupsDelete pPlbdName_ =
  ProjectsLocationsBackupsDelete'
    { _plbdXgafv = Nothing
    , _plbdUploadProtocol = Nothing
    , _plbdAccessToken = Nothing
    , _plbdUploadType = Nothing
    , _plbdName = pPlbdName_
    , _plbdCallback = Nothing
    }


-- | V1 error format.
plbdXgafv :: Lens' ProjectsLocationsBackupsDelete (Maybe Xgafv)
plbdXgafv
  = lens _plbdXgafv (\ s a -> s{_plbdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plbdUploadProtocol :: Lens' ProjectsLocationsBackupsDelete (Maybe Text)
plbdUploadProtocol
  = lens _plbdUploadProtocol
      (\ s a -> s{_plbdUploadProtocol = a})

-- | OAuth access token.
plbdAccessToken :: Lens' ProjectsLocationsBackupsDelete (Maybe Text)
plbdAccessToken
  = lens _plbdAccessToken
      (\ s a -> s{_plbdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plbdUploadType :: Lens' ProjectsLocationsBackupsDelete (Maybe Text)
plbdUploadType
  = lens _plbdUploadType
      (\ s a -> s{_plbdUploadType = a})

-- | Required. The backup resource name, in the format
-- projects\/{project_number}\/locations\/{location}\/backups\/{backup_id}
plbdName :: Lens' ProjectsLocationsBackupsDelete Text
plbdName = lens _plbdName (\ s a -> s{_plbdName = a})

-- | JSONP
plbdCallback :: Lens' ProjectsLocationsBackupsDelete (Maybe Text)
plbdCallback
  = lens _plbdCallback (\ s a -> s{_plbdCallback = a})

instance GoogleRequest ProjectsLocationsBackupsDelete
         where
        type Rs ProjectsLocationsBackupsDelete = Operation
        type Scopes ProjectsLocationsBackupsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsBackupsDelete'{..}
          = go _plbdName _plbdXgafv _plbdUploadProtocol
              _plbdAccessToken
              _plbdUploadType
              _plbdCallback
              (Just AltJSON)
              fileService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsBackupsDeleteResource)
                      mempty
