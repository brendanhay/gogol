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
-- Module      : Network.Google.Resource.File.Projects.Locations.Instances.Restore
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restores an existing instance\'s file share from a backup. The capacity
-- of the instance needs to be equal to or larger than the capacity of the
-- backup (and also equal to or larger than the minimum capacity of the
-- tier).
--
-- /See:/ <https://cloud.google.com/filestore/ Cloud Filestore API Reference> for @file.projects.locations.instances.restore@.
module Network.Google.Resource.File.Projects.Locations.Instances.Restore
    (
    -- * REST Resource
      ProjectsLocationsInstancesRestoreResource

    -- * Creating a Request
    , projectsLocationsInstancesRestore
    , ProjectsLocationsInstancesRestore

    -- * Request Lenses
    , plirXgafv
    , plirUploadProtocol
    , plirAccessToken
    , plirUploadType
    , plirPayload
    , plirName
    , plirCallback
    ) where

import Network.Google.File.Types
import Network.Google.Prelude

-- | A resource alias for @file.projects.locations.instances.restore@ method which the
-- 'ProjectsLocationsInstancesRestore' request conforms to.
type ProjectsLocationsInstancesRestoreResource =
     "v1" :>
       CaptureMode "name" "restore" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] RestoreInstanceRequest :>
                       Post '[JSON] Operation

-- | Restores an existing instance\'s file share from a backup. The capacity
-- of the instance needs to be equal to or larger than the capacity of the
-- backup (and also equal to or larger than the minimum capacity of the
-- tier).
--
-- /See:/ 'projectsLocationsInstancesRestore' smart constructor.
data ProjectsLocationsInstancesRestore =
  ProjectsLocationsInstancesRestore'
    { _plirXgafv :: !(Maybe Xgafv)
    , _plirUploadProtocol :: !(Maybe Text)
    , _plirAccessToken :: !(Maybe Text)
    , _plirUploadType :: !(Maybe Text)
    , _plirPayload :: !RestoreInstanceRequest
    , _plirName :: !Text
    , _plirCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsInstancesRestore' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plirXgafv'
--
-- * 'plirUploadProtocol'
--
-- * 'plirAccessToken'
--
-- * 'plirUploadType'
--
-- * 'plirPayload'
--
-- * 'plirName'
--
-- * 'plirCallback'
projectsLocationsInstancesRestore
    :: RestoreInstanceRequest -- ^ 'plirPayload'
    -> Text -- ^ 'plirName'
    -> ProjectsLocationsInstancesRestore
projectsLocationsInstancesRestore pPlirPayload_ pPlirName_ =
  ProjectsLocationsInstancesRestore'
    { _plirXgafv = Nothing
    , _plirUploadProtocol = Nothing
    , _plirAccessToken = Nothing
    , _plirUploadType = Nothing
    , _plirPayload = pPlirPayload_
    , _plirName = pPlirName_
    , _plirCallback = Nothing
    }


-- | V1 error format.
plirXgafv :: Lens' ProjectsLocationsInstancesRestore (Maybe Xgafv)
plirXgafv
  = lens _plirXgafv (\ s a -> s{_plirXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plirUploadProtocol :: Lens' ProjectsLocationsInstancesRestore (Maybe Text)
plirUploadProtocol
  = lens _plirUploadProtocol
      (\ s a -> s{_plirUploadProtocol = a})

-- | OAuth access token.
plirAccessToken :: Lens' ProjectsLocationsInstancesRestore (Maybe Text)
plirAccessToken
  = lens _plirAccessToken
      (\ s a -> s{_plirAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plirUploadType :: Lens' ProjectsLocationsInstancesRestore (Maybe Text)
plirUploadType
  = lens _plirUploadType
      (\ s a -> s{_plirUploadType = a})

-- | Multipart request metadata.
plirPayload :: Lens' ProjectsLocationsInstancesRestore RestoreInstanceRequest
plirPayload
  = lens _plirPayload (\ s a -> s{_plirPayload = a})

-- | Required. The resource name of the instance, in the format
-- projects\/{project_number}\/locations\/{location_id}\/instances\/{instance_id}.
plirName :: Lens' ProjectsLocationsInstancesRestore Text
plirName = lens _plirName (\ s a -> s{_plirName = a})

-- | JSONP
plirCallback :: Lens' ProjectsLocationsInstancesRestore (Maybe Text)
plirCallback
  = lens _plirCallback (\ s a -> s{_plirCallback = a})

instance GoogleRequest
           ProjectsLocationsInstancesRestore
         where
        type Rs ProjectsLocationsInstancesRestore = Operation
        type Scopes ProjectsLocationsInstancesRestore =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsInstancesRestore'{..}
          = go _plirName _plirXgafv _plirUploadProtocol
              _plirAccessToken
              _plirUploadType
              _plirCallback
              (Just AltJSON)
              _plirPayload
              fileService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsInstancesRestoreResource)
                      mempty
