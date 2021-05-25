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
-- Module      : Network.Google.Resource.File.Projects.Locations.Backups.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the details of a specific backup.
--
-- /See:/ <https://cloud.google.com/filestore/ Cloud Filestore API Reference> for @file.projects.locations.backups.get@.
module Network.Google.Resource.File.Projects.Locations.Backups.Get
    (
    -- * REST Resource
      ProjectsLocationsBackupsGetResource

    -- * Creating a Request
    , projectsLocationsBackupsGet
    , ProjectsLocationsBackupsGet

    -- * Request Lenses
    , plbgXgafv
    , plbgUploadProtocol
    , plbgAccessToken
    , plbgUploadType
    , plbgName
    , plbgCallback
    ) where

import Network.Google.File.Types
import Network.Google.Prelude

-- | A resource alias for @file.projects.locations.backups.get@ method which the
-- 'ProjectsLocationsBackupsGet' request conforms to.
type ProjectsLocationsBackupsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Backup

-- | Gets the details of a specific backup.
--
-- /See:/ 'projectsLocationsBackupsGet' smart constructor.
data ProjectsLocationsBackupsGet =
  ProjectsLocationsBackupsGet'
    { _plbgXgafv :: !(Maybe Xgafv)
    , _plbgUploadProtocol :: !(Maybe Text)
    , _plbgAccessToken :: !(Maybe Text)
    , _plbgUploadType :: !(Maybe Text)
    , _plbgName :: !Text
    , _plbgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsBackupsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plbgXgafv'
--
-- * 'plbgUploadProtocol'
--
-- * 'plbgAccessToken'
--
-- * 'plbgUploadType'
--
-- * 'plbgName'
--
-- * 'plbgCallback'
projectsLocationsBackupsGet
    :: Text -- ^ 'plbgName'
    -> ProjectsLocationsBackupsGet
projectsLocationsBackupsGet pPlbgName_ =
  ProjectsLocationsBackupsGet'
    { _plbgXgafv = Nothing
    , _plbgUploadProtocol = Nothing
    , _plbgAccessToken = Nothing
    , _plbgUploadType = Nothing
    , _plbgName = pPlbgName_
    , _plbgCallback = Nothing
    }


-- | V1 error format.
plbgXgafv :: Lens' ProjectsLocationsBackupsGet (Maybe Xgafv)
plbgXgafv
  = lens _plbgXgafv (\ s a -> s{_plbgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plbgUploadProtocol :: Lens' ProjectsLocationsBackupsGet (Maybe Text)
plbgUploadProtocol
  = lens _plbgUploadProtocol
      (\ s a -> s{_plbgUploadProtocol = a})

-- | OAuth access token.
plbgAccessToken :: Lens' ProjectsLocationsBackupsGet (Maybe Text)
plbgAccessToken
  = lens _plbgAccessToken
      (\ s a -> s{_plbgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plbgUploadType :: Lens' ProjectsLocationsBackupsGet (Maybe Text)
plbgUploadType
  = lens _plbgUploadType
      (\ s a -> s{_plbgUploadType = a})

-- | Required. The backup resource name, in the format
-- projects\/{project_number}\/locations\/{location}\/backups\/{backup_id}.
plbgName :: Lens' ProjectsLocationsBackupsGet Text
plbgName = lens _plbgName (\ s a -> s{_plbgName = a})

-- | JSONP
plbgCallback :: Lens' ProjectsLocationsBackupsGet (Maybe Text)
plbgCallback
  = lens _plbgCallback (\ s a -> s{_plbgCallback = a})

instance GoogleRequest ProjectsLocationsBackupsGet
         where
        type Rs ProjectsLocationsBackupsGet = Backup
        type Scopes ProjectsLocationsBackupsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsBackupsGet'{..}
          = go _plbgName _plbgXgafv _plbgUploadProtocol
              _plbgAccessToken
              _plbgUploadType
              _plbgCallback
              (Just AltJSON)
              fileService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsBackupsGetResource)
                      mempty
