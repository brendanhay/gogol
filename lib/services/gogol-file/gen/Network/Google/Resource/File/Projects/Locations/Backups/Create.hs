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
-- Module      : Network.Google.Resource.File.Projects.Locations.Backups.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a backup.
--
-- /See:/ <https://cloud.google.com/filestore/ Cloud Filestore API Reference> for @file.projects.locations.backups.create@.
module Network.Google.Resource.File.Projects.Locations.Backups.Create
    (
    -- * REST Resource
      ProjectsLocationsBackupsCreateResource

    -- * Creating a Request
    , projectsLocationsBackupsCreate
    , ProjectsLocationsBackupsCreate

    -- * Request Lenses
    , plbcParent
    , plbcXgafv
    , plbcUploadProtocol
    , plbcAccessToken
    , plbcBackupId
    , plbcUploadType
    , plbcPayload
    , plbcCallback
    ) where

import Network.Google.File.Types
import Network.Google.Prelude

-- | A resource alias for @file.projects.locations.backups.create@ method which the
-- 'ProjectsLocationsBackupsCreate' request conforms to.
type ProjectsLocationsBackupsCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "backups" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "backupId" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Backup :> Post '[JSON] Operation

-- | Creates a backup.
--
-- /See:/ 'projectsLocationsBackupsCreate' smart constructor.
data ProjectsLocationsBackupsCreate =
  ProjectsLocationsBackupsCreate'
    { _plbcParent :: !Text
    , _plbcXgafv :: !(Maybe Xgafv)
    , _plbcUploadProtocol :: !(Maybe Text)
    , _plbcAccessToken :: !(Maybe Text)
    , _plbcBackupId :: !(Maybe Text)
    , _plbcUploadType :: !(Maybe Text)
    , _plbcPayload :: !Backup
    , _plbcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsBackupsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plbcParent'
--
-- * 'plbcXgafv'
--
-- * 'plbcUploadProtocol'
--
-- * 'plbcAccessToken'
--
-- * 'plbcBackupId'
--
-- * 'plbcUploadType'
--
-- * 'plbcPayload'
--
-- * 'plbcCallback'
projectsLocationsBackupsCreate
    :: Text -- ^ 'plbcParent'
    -> Backup -- ^ 'plbcPayload'
    -> ProjectsLocationsBackupsCreate
projectsLocationsBackupsCreate pPlbcParent_ pPlbcPayload_ =
  ProjectsLocationsBackupsCreate'
    { _plbcParent = pPlbcParent_
    , _plbcXgafv = Nothing
    , _plbcUploadProtocol = Nothing
    , _plbcAccessToken = Nothing
    , _plbcBackupId = Nothing
    , _plbcUploadType = Nothing
    , _plbcPayload = pPlbcPayload_
    , _plbcCallback = Nothing
    }


-- | Required. The backup\'s project and location, in the format
-- projects\/{project_number}\/locations\/{location}. In Cloud Filestore,
-- backup locations map to GCP regions, for example **us-west1**.
plbcParent :: Lens' ProjectsLocationsBackupsCreate Text
plbcParent
  = lens _plbcParent (\ s a -> s{_plbcParent = a})

-- | V1 error format.
plbcXgafv :: Lens' ProjectsLocationsBackupsCreate (Maybe Xgafv)
plbcXgafv
  = lens _plbcXgafv (\ s a -> s{_plbcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plbcUploadProtocol :: Lens' ProjectsLocationsBackupsCreate (Maybe Text)
plbcUploadProtocol
  = lens _plbcUploadProtocol
      (\ s a -> s{_plbcUploadProtocol = a})

-- | OAuth access token.
plbcAccessToken :: Lens' ProjectsLocationsBackupsCreate (Maybe Text)
plbcAccessToken
  = lens _plbcAccessToken
      (\ s a -> s{_plbcAccessToken = a})

-- | Required. The ID to use for the backup. The ID must be unique within the
-- specified project and location. This value must start with a lowercase
-- letter followed by up to 62 lowercase letters, numbers, or hyphens, and
-- cannot end with a hyphen. Values that do not match this pattern will
-- trigger an INVALID_ARGUMENT error.
plbcBackupId :: Lens' ProjectsLocationsBackupsCreate (Maybe Text)
plbcBackupId
  = lens _plbcBackupId (\ s a -> s{_plbcBackupId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plbcUploadType :: Lens' ProjectsLocationsBackupsCreate (Maybe Text)
plbcUploadType
  = lens _plbcUploadType
      (\ s a -> s{_plbcUploadType = a})

-- | Multipart request metadata.
plbcPayload :: Lens' ProjectsLocationsBackupsCreate Backup
plbcPayload
  = lens _plbcPayload (\ s a -> s{_plbcPayload = a})

-- | JSONP
plbcCallback :: Lens' ProjectsLocationsBackupsCreate (Maybe Text)
plbcCallback
  = lens _plbcCallback (\ s a -> s{_plbcCallback = a})

instance GoogleRequest ProjectsLocationsBackupsCreate
         where
        type Rs ProjectsLocationsBackupsCreate = Operation
        type Scopes ProjectsLocationsBackupsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsBackupsCreate'{..}
          = go _plbcParent _plbcXgafv _plbcUploadProtocol
              _plbcAccessToken
              _plbcBackupId
              _plbcUploadType
              _plbcCallback
              (Just AltJSON)
              _plbcPayload
              fileService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsBackupsCreateResource)
                      mempty
