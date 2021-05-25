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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists information about instances in a project.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.list@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.List
    (
    -- * REST Resource
      ProjectsInstancesListResource

    -- * Creating a Request
    , projectsInstancesList
    , ProjectsInstancesList

    -- * Request Lenses
    , pilParent
    , pilXgafv
    , pilUploadProtocol
    , pilAccessToken
    , pilUploadType
    , pilPageToken
    , pilCallback
    ) where

import Network.Google.BigtableAdmin.Types
import Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.list@ method which the
-- 'ProjectsInstancesList' request conforms to.
type ProjectsInstancesListResource =
     "v2" :>
       Capture "parent" Text :>
         "instances" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ListInstancesResponse

-- | Lists information about instances in a project.
--
-- /See:/ 'projectsInstancesList' smart constructor.
data ProjectsInstancesList =
  ProjectsInstancesList'
    { _pilParent :: !Text
    , _pilXgafv :: !(Maybe Xgafv)
    , _pilUploadProtocol :: !(Maybe Text)
    , _pilAccessToken :: !(Maybe Text)
    , _pilUploadType :: !(Maybe Text)
    , _pilPageToken :: !(Maybe Text)
    , _pilCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pilParent'
--
-- * 'pilXgafv'
--
-- * 'pilUploadProtocol'
--
-- * 'pilAccessToken'
--
-- * 'pilUploadType'
--
-- * 'pilPageToken'
--
-- * 'pilCallback'
projectsInstancesList
    :: Text -- ^ 'pilParent'
    -> ProjectsInstancesList
projectsInstancesList pPilParent_ =
  ProjectsInstancesList'
    { _pilParent = pPilParent_
    , _pilXgafv = Nothing
    , _pilUploadProtocol = Nothing
    , _pilAccessToken = Nothing
    , _pilUploadType = Nothing
    , _pilPageToken = Nothing
    , _pilCallback = Nothing
    }


-- | Required. The unique name of the project for which a list of instances
-- is requested. Values are of the form \`projects\/{project}\`.
pilParent :: Lens' ProjectsInstancesList Text
pilParent
  = lens _pilParent (\ s a -> s{_pilParent = a})

-- | V1 error format.
pilXgafv :: Lens' ProjectsInstancesList (Maybe Xgafv)
pilXgafv = lens _pilXgafv (\ s a -> s{_pilXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pilUploadProtocol :: Lens' ProjectsInstancesList (Maybe Text)
pilUploadProtocol
  = lens _pilUploadProtocol
      (\ s a -> s{_pilUploadProtocol = a})

-- | OAuth access token.
pilAccessToken :: Lens' ProjectsInstancesList (Maybe Text)
pilAccessToken
  = lens _pilAccessToken
      (\ s a -> s{_pilAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pilUploadType :: Lens' ProjectsInstancesList (Maybe Text)
pilUploadType
  = lens _pilUploadType
      (\ s a -> s{_pilUploadType = a})

-- | DEPRECATED: This field is unused and ignored.
pilPageToken :: Lens' ProjectsInstancesList (Maybe Text)
pilPageToken
  = lens _pilPageToken (\ s a -> s{_pilPageToken = a})

-- | JSONP
pilCallback :: Lens' ProjectsInstancesList (Maybe Text)
pilCallback
  = lens _pilCallback (\ s a -> s{_pilCallback = a})

instance GoogleRequest ProjectsInstancesList where
        type Rs ProjectsInstancesList = ListInstancesResponse
        type Scopes ProjectsInstancesList =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.cluster",
               "https://www.googleapis.com/auth/bigtable.admin.instance",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ProjectsInstancesList'{..}
          = go _pilParent _pilXgafv _pilUploadProtocol
              _pilAccessToken
              _pilUploadType
              _pilPageToken
              _pilCallback
              (Just AltJSON)
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsInstancesListResource)
                      mempty
