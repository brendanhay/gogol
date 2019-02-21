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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.AppProFiles.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an app profile from an instance.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.appProfiles.delete@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.AppProFiles.Delete
    (
    -- * REST Resource
      ProjectsInstancesAppProFilesDeleteResource

    -- * Creating a Request
    , projectsInstancesAppProFilesDelete
    , ProjectsInstancesAppProFilesDelete

    -- * Request Lenses
    , piapfdXgafv
    , piapfdUploadProtocol
    , piapfdAccessToken
    , piapfdUploadType
    , piapfdIgnoreWarnings
    , piapfdName
    , piapfdCallback
    ) where

import           Network.Google.BigtableAdmin.Types
import           Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.appProfiles.delete@ method which the
-- 'ProjectsInstancesAppProFilesDelete' request conforms to.
type ProjectsInstancesAppProFilesDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "ignoreWarnings" Bool :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes an app profile from an instance.
--
-- /See:/ 'projectsInstancesAppProFilesDelete' smart constructor.
data ProjectsInstancesAppProFilesDelete =
  ProjectsInstancesAppProFilesDelete'
    { _piapfdXgafv          :: !(Maybe Xgafv)
    , _piapfdUploadProtocol :: !(Maybe Text)
    , _piapfdAccessToken    :: !(Maybe Text)
    , _piapfdUploadType     :: !(Maybe Text)
    , _piapfdIgnoreWarnings :: !(Maybe Bool)
    , _piapfdName           :: !Text
    , _piapfdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesAppProFilesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piapfdXgafv'
--
-- * 'piapfdUploadProtocol'
--
-- * 'piapfdAccessToken'
--
-- * 'piapfdUploadType'
--
-- * 'piapfdIgnoreWarnings'
--
-- * 'piapfdName'
--
-- * 'piapfdCallback'
projectsInstancesAppProFilesDelete
    :: Text -- ^ 'piapfdName'
    -> ProjectsInstancesAppProFilesDelete
projectsInstancesAppProFilesDelete pPiapfdName_ =
  ProjectsInstancesAppProFilesDelete'
    { _piapfdXgafv = Nothing
    , _piapfdUploadProtocol = Nothing
    , _piapfdAccessToken = Nothing
    , _piapfdUploadType = Nothing
    , _piapfdIgnoreWarnings = Nothing
    , _piapfdName = pPiapfdName_
    , _piapfdCallback = Nothing
    }


-- | V1 error format.
piapfdXgafv :: Lens' ProjectsInstancesAppProFilesDelete (Maybe Xgafv)
piapfdXgafv
  = lens _piapfdXgafv (\ s a -> s{_piapfdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piapfdUploadProtocol :: Lens' ProjectsInstancesAppProFilesDelete (Maybe Text)
piapfdUploadProtocol
  = lens _piapfdUploadProtocol
      (\ s a -> s{_piapfdUploadProtocol = a})

-- | OAuth access token.
piapfdAccessToken :: Lens' ProjectsInstancesAppProFilesDelete (Maybe Text)
piapfdAccessToken
  = lens _piapfdAccessToken
      (\ s a -> s{_piapfdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piapfdUploadType :: Lens' ProjectsInstancesAppProFilesDelete (Maybe Text)
piapfdUploadType
  = lens _piapfdUploadType
      (\ s a -> s{_piapfdUploadType = a})

-- | If true, ignore safety checks when deleting the app profile.
piapfdIgnoreWarnings :: Lens' ProjectsInstancesAppProFilesDelete (Maybe Bool)
piapfdIgnoreWarnings
  = lens _piapfdIgnoreWarnings
      (\ s a -> s{_piapfdIgnoreWarnings = a})

-- | The unique name of the app profile to be deleted. Values are of the form
-- \`projects\/\/instances\/\/appProfiles\/\`.
piapfdName :: Lens' ProjectsInstancesAppProFilesDelete Text
piapfdName
  = lens _piapfdName (\ s a -> s{_piapfdName = a})

-- | JSONP
piapfdCallback :: Lens' ProjectsInstancesAppProFilesDelete (Maybe Text)
piapfdCallback
  = lens _piapfdCallback
      (\ s a -> s{_piapfdCallback = a})

instance GoogleRequest
           ProjectsInstancesAppProFilesDelete
         where
        type Rs ProjectsInstancesAppProFilesDelete = Empty
        type Scopes ProjectsInstancesAppProFilesDelete =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.cluster",
               "https://www.googleapis.com/auth/bigtable.admin.instance",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsInstancesAppProFilesDelete'{..}
          = go _piapfdName _piapfdXgafv _piapfdUploadProtocol
              _piapfdAccessToken
              _piapfdUploadType
              _piapfdIgnoreWarnings
              _piapfdCallback
              (Just AltJSON)
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesAppProFilesDeleteResource)
                      mempty
