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
-- Module      : Network.Google.Resource.File.Projects.Locations.Backups.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the settings of a specific backup.
--
-- /See:/ <https://cloud.google.com/filestore/ Cloud Filestore API Reference> for @file.projects.locations.backups.patch@.
module Network.Google.Resource.File.Projects.Locations.Backups.Patch
    (
    -- * REST Resource
      ProjectsLocationsBackupsPatchResource

    -- * Creating a Request
    , projectsLocationsBackupsPatch
    , ProjectsLocationsBackupsPatch

    -- * Request Lenses
    , plbpXgafv
    , plbpUploadProtocol
    , plbpUpdateMask
    , plbpAccessToken
    , plbpUploadType
    , plbpPayload
    , plbpName
    , plbpCallback
    ) where

import Network.Google.File.Types
import Network.Google.Prelude

-- | A resource alias for @file.projects.locations.backups.patch@ method which the
-- 'ProjectsLocationsBackupsPatch' request conforms to.
type ProjectsLocationsBackupsPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Backup :> Patch '[JSON] Operation

-- | Updates the settings of a specific backup.
--
-- /See:/ 'projectsLocationsBackupsPatch' smart constructor.
data ProjectsLocationsBackupsPatch =
  ProjectsLocationsBackupsPatch'
    { _plbpXgafv :: !(Maybe Xgafv)
    , _plbpUploadProtocol :: !(Maybe Text)
    , _plbpUpdateMask :: !(Maybe GFieldMask)
    , _plbpAccessToken :: !(Maybe Text)
    , _plbpUploadType :: !(Maybe Text)
    , _plbpPayload :: !Backup
    , _plbpName :: !Text
    , _plbpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsBackupsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plbpXgafv'
--
-- * 'plbpUploadProtocol'
--
-- * 'plbpUpdateMask'
--
-- * 'plbpAccessToken'
--
-- * 'plbpUploadType'
--
-- * 'plbpPayload'
--
-- * 'plbpName'
--
-- * 'plbpCallback'
projectsLocationsBackupsPatch
    :: Backup -- ^ 'plbpPayload'
    -> Text -- ^ 'plbpName'
    -> ProjectsLocationsBackupsPatch
projectsLocationsBackupsPatch pPlbpPayload_ pPlbpName_ =
  ProjectsLocationsBackupsPatch'
    { _plbpXgafv = Nothing
    , _plbpUploadProtocol = Nothing
    , _plbpUpdateMask = Nothing
    , _plbpAccessToken = Nothing
    , _plbpUploadType = Nothing
    , _plbpPayload = pPlbpPayload_
    , _plbpName = pPlbpName_
    , _plbpCallback = Nothing
    }


-- | V1 error format.
plbpXgafv :: Lens' ProjectsLocationsBackupsPatch (Maybe Xgafv)
plbpXgafv
  = lens _plbpXgafv (\ s a -> s{_plbpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plbpUploadProtocol :: Lens' ProjectsLocationsBackupsPatch (Maybe Text)
plbpUploadProtocol
  = lens _plbpUploadProtocol
      (\ s a -> s{_plbpUploadProtocol = a})

-- | Required. Mask of fields to update. At least one path must be supplied
-- in this field.
plbpUpdateMask :: Lens' ProjectsLocationsBackupsPatch (Maybe GFieldMask)
plbpUpdateMask
  = lens _plbpUpdateMask
      (\ s a -> s{_plbpUpdateMask = a})

-- | OAuth access token.
plbpAccessToken :: Lens' ProjectsLocationsBackupsPatch (Maybe Text)
plbpAccessToken
  = lens _plbpAccessToken
      (\ s a -> s{_plbpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plbpUploadType :: Lens' ProjectsLocationsBackupsPatch (Maybe Text)
plbpUploadType
  = lens _plbpUploadType
      (\ s a -> s{_plbpUploadType = a})

-- | Multipart request metadata.
plbpPayload :: Lens' ProjectsLocationsBackupsPatch Backup
plbpPayload
  = lens _plbpPayload (\ s a -> s{_plbpPayload = a})

-- | Output only. The resource name of the backup, in the format
-- projects\/{project_number}\/locations\/{location_id}\/backups\/{backup_id}.
plbpName :: Lens' ProjectsLocationsBackupsPatch Text
plbpName = lens _plbpName (\ s a -> s{_plbpName = a})

-- | JSONP
plbpCallback :: Lens' ProjectsLocationsBackupsPatch (Maybe Text)
plbpCallback
  = lens _plbpCallback (\ s a -> s{_plbpCallback = a})

instance GoogleRequest ProjectsLocationsBackupsPatch
         where
        type Rs ProjectsLocationsBackupsPatch = Operation
        type Scopes ProjectsLocationsBackupsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsBackupsPatch'{..}
          = go _plbpName _plbpXgafv _plbpUploadProtocol
              _plbpUpdateMask
              _plbpAccessToken
              _plbpUploadType
              _plbpCallback
              (Just AltJSON)
              _plbpPayload
              fileService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsBackupsPatchResource)
                      mempty
