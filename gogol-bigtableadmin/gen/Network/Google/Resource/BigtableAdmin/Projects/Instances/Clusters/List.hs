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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists information about clusters in an instance.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.clusters.list@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.List
    (
    -- * REST Resource
      ProjectsInstancesClustersListResource

    -- * Creating a Request
    , projectsInstancesClustersList
    , ProjectsInstancesClustersList

    -- * Request Lenses
    , piclParent
    , piclXgafv
    , piclUploadProtocol
    , piclAccessToken
    , piclUploadType
    , piclPageToken
    , piclCallback
    ) where

import           Network.Google.BigtableAdmin.Types
import           Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.clusters.list@ method which the
-- 'ProjectsInstancesClustersList' request conforms to.
type ProjectsInstancesClustersListResource =
     "v2" :>
       Capture "parent" Text :>
         "clusters" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ListClustersResponse

-- | Lists information about clusters in an instance.
--
-- /See:/ 'projectsInstancesClustersList' smart constructor.
data ProjectsInstancesClustersList =
  ProjectsInstancesClustersList'
    { _piclParent         :: !Text
    , _piclXgafv          :: !(Maybe Xgafv)
    , _piclUploadProtocol :: !(Maybe Text)
    , _piclAccessToken    :: !(Maybe Text)
    , _piclUploadType     :: !(Maybe Text)
    , _piclPageToken      :: !(Maybe Text)
    , _piclCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesClustersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piclParent'
--
-- * 'piclXgafv'
--
-- * 'piclUploadProtocol'
--
-- * 'piclAccessToken'
--
-- * 'piclUploadType'
--
-- * 'piclPageToken'
--
-- * 'piclCallback'
projectsInstancesClustersList
    :: Text -- ^ 'piclParent'
    -> ProjectsInstancesClustersList
projectsInstancesClustersList pPiclParent_ =
  ProjectsInstancesClustersList'
    { _piclParent = pPiclParent_
    , _piclXgafv = Nothing
    , _piclUploadProtocol = Nothing
    , _piclAccessToken = Nothing
    , _piclUploadType = Nothing
    , _piclPageToken = Nothing
    , _piclCallback = Nothing
    }


-- | The unique name of the instance for which a list of clusters is
-- requested. Values are of the form \`projects\/\/instances\/\`. Use \` =
-- \'-\'\` to list Clusters for all Instances in a project, e.g.,
-- \`projects\/myproject\/instances\/-\`.
piclParent :: Lens' ProjectsInstancesClustersList Text
piclParent
  = lens _piclParent (\ s a -> s{_piclParent = a})

-- | V1 error format.
piclXgafv :: Lens' ProjectsInstancesClustersList (Maybe Xgafv)
piclXgafv
  = lens _piclXgafv (\ s a -> s{_piclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piclUploadProtocol :: Lens' ProjectsInstancesClustersList (Maybe Text)
piclUploadProtocol
  = lens _piclUploadProtocol
      (\ s a -> s{_piclUploadProtocol = a})

-- | OAuth access token.
piclAccessToken :: Lens' ProjectsInstancesClustersList (Maybe Text)
piclAccessToken
  = lens _piclAccessToken
      (\ s a -> s{_piclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piclUploadType :: Lens' ProjectsInstancesClustersList (Maybe Text)
piclUploadType
  = lens _piclUploadType
      (\ s a -> s{_piclUploadType = a})

-- | DEPRECATED: This field is unused and ignored.
piclPageToken :: Lens' ProjectsInstancesClustersList (Maybe Text)
piclPageToken
  = lens _piclPageToken
      (\ s a -> s{_piclPageToken = a})

-- | JSONP
piclCallback :: Lens' ProjectsInstancesClustersList (Maybe Text)
piclCallback
  = lens _piclCallback (\ s a -> s{_piclCallback = a})

instance GoogleRequest ProjectsInstancesClustersList
         where
        type Rs ProjectsInstancesClustersList =
             ListClustersResponse
        type Scopes ProjectsInstancesClustersList =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.cluster",
               "https://www.googleapis.com/auth/bigtable.admin.instance",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ProjectsInstancesClustersList'{..}
          = go _piclParent _piclXgafv _piclUploadProtocol
              _piclAccessToken
              _piclUploadType
              _piclPageToken
              _piclCallback
              (Just AltJSON)
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesClustersListResource)
                      mempty
