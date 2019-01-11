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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.AppProFiles.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about an app profile.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.appProfiles.get@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.AppProFiles.Get
    (
    -- * REST Resource
      ProjectsInstancesAppProFilesGetResource

    -- * Creating a Request
    , projectsInstancesAppProFilesGet
    , ProjectsInstancesAppProFilesGet

    -- * Request Lenses
    , piapfgXgafv
    , piapfgUploadProtocol
    , piapfgAccessToken
    , piapfgUploadType
    , piapfgName
    , piapfgCallback
    ) where

import           Network.Google.BigtableAdmin.Types
import           Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.appProfiles.get@ method which the
-- 'ProjectsInstancesAppProFilesGet' request conforms to.
type ProjectsInstancesAppProFilesGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] AppProFile

-- | Gets information about an app profile.
--
-- /See:/ 'projectsInstancesAppProFilesGet' smart constructor.
data ProjectsInstancesAppProFilesGet = ProjectsInstancesAppProFilesGet'
    { _piapfgXgafv          :: !(Maybe Xgafv)
    , _piapfgUploadProtocol :: !(Maybe Text)
    , _piapfgAccessToken    :: !(Maybe Text)
    , _piapfgUploadType     :: !(Maybe Text)
    , _piapfgName           :: !Text
    , _piapfgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsInstancesAppProFilesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piapfgXgafv'
--
-- * 'piapfgUploadProtocol'
--
-- * 'piapfgAccessToken'
--
-- * 'piapfgUploadType'
--
-- * 'piapfgName'
--
-- * 'piapfgCallback'
projectsInstancesAppProFilesGet
    :: Text -- ^ 'piapfgName'
    -> ProjectsInstancesAppProFilesGet
projectsInstancesAppProFilesGet pPiapfgName_ =
    ProjectsInstancesAppProFilesGet'
    { _piapfgXgafv = Nothing
    , _piapfgUploadProtocol = Nothing
    , _piapfgAccessToken = Nothing
    , _piapfgUploadType = Nothing
    , _piapfgName = pPiapfgName_
    , _piapfgCallback = Nothing
    }

-- | V1 error format.
piapfgXgafv :: Lens' ProjectsInstancesAppProFilesGet (Maybe Xgafv)
piapfgXgafv
  = lens _piapfgXgafv (\ s a -> s{_piapfgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piapfgUploadProtocol :: Lens' ProjectsInstancesAppProFilesGet (Maybe Text)
piapfgUploadProtocol
  = lens _piapfgUploadProtocol
      (\ s a -> s{_piapfgUploadProtocol = a})

-- | OAuth access token.
piapfgAccessToken :: Lens' ProjectsInstancesAppProFilesGet (Maybe Text)
piapfgAccessToken
  = lens _piapfgAccessToken
      (\ s a -> s{_piapfgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piapfgUploadType :: Lens' ProjectsInstancesAppProFilesGet (Maybe Text)
piapfgUploadType
  = lens _piapfgUploadType
      (\ s a -> s{_piapfgUploadType = a})

-- | The unique name of the requested app profile. Values are of the form
-- \`projects\/\/instances\/\/appProfiles\/\`.
piapfgName :: Lens' ProjectsInstancesAppProFilesGet Text
piapfgName
  = lens _piapfgName (\ s a -> s{_piapfgName = a})

-- | JSONP
piapfgCallback :: Lens' ProjectsInstancesAppProFilesGet (Maybe Text)
piapfgCallback
  = lens _piapfgCallback
      (\ s a -> s{_piapfgCallback = a})

instance GoogleRequest
         ProjectsInstancesAppProFilesGet where
        type Rs ProjectsInstancesAppProFilesGet = AppProFile
        type Scopes ProjectsInstancesAppProFilesGet =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.cluster",
               "https://www.googleapis.com/auth/bigtable.admin.instance",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsInstancesAppProFilesGet'{..}
          = go _piapfgName _piapfgXgafv _piapfgUploadProtocol
              _piapfgAccessToken
              _piapfgUploadType
              _piapfgCallback
              (Just AltJSON)
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesAppProFilesGetResource)
                      mempty
