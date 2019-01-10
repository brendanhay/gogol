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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a cluster within an instance.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.clusters.create@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Create
    (
    -- * REST Resource
      ProjectsInstancesClustersCreateResource

    -- * Creating a Request
    , projectsInstancesClustersCreate
    , ProjectsInstancesClustersCreate

    -- * Request Lenses
    , piccParent
    , piccXgafv
    , piccUploadProtocol
    , piccAccessToken
    , piccUploadType
    , piccPayload
    , piccClusterId
    , piccCallback
    ) where

import           Network.Google.BigtableAdmin.Types
import           Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.clusters.create@ method which the
-- 'ProjectsInstancesClustersCreate' request conforms to.
type ProjectsInstancesClustersCreateResource =
     "v2" :>
       Capture "parent" Text :>
         "clusters" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "clusterId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Cluster :> Post '[JSON] Operation

-- | Creates a cluster within an instance.
--
-- /See:/ 'projectsInstancesClustersCreate' smart constructor.
data ProjectsInstancesClustersCreate = ProjectsInstancesClustersCreate'
    { _piccParent         :: !Text
    , _piccXgafv          :: !(Maybe Xgafv)
    , _piccUploadProtocol :: !(Maybe Text)
    , _piccAccessToken    :: !(Maybe Text)
    , _piccUploadType     :: !(Maybe Text)
    , _piccPayload        :: !Cluster
    , _piccClusterId      :: !(Maybe Text)
    , _piccCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsInstancesClustersCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piccParent'
--
-- * 'piccXgafv'
--
-- * 'piccUploadProtocol'
--
-- * 'piccAccessToken'
--
-- * 'piccUploadType'
--
-- * 'piccPayload'
--
-- * 'piccClusterId'
--
-- * 'piccCallback'
projectsInstancesClustersCreate
    :: Text -- ^ 'piccParent'
    -> Cluster -- ^ 'piccPayload'
    -> ProjectsInstancesClustersCreate
projectsInstancesClustersCreate pPiccParent_ pPiccPayload_ =
    ProjectsInstancesClustersCreate'
    { _piccParent = pPiccParent_
    , _piccXgafv = Nothing
    , _piccUploadProtocol = Nothing
    , _piccAccessToken = Nothing
    , _piccUploadType = Nothing
    , _piccPayload = pPiccPayload_
    , _piccClusterId = Nothing
    , _piccCallback = Nothing
    }

-- | The unique name of the instance in which to create the new cluster.
-- Values are of the form \`projects\/\/instances\/\`.
piccParent :: Lens' ProjectsInstancesClustersCreate Text
piccParent
  = lens _piccParent (\ s a -> s{_piccParent = a})

-- | V1 error format.
piccXgafv :: Lens' ProjectsInstancesClustersCreate (Maybe Xgafv)
piccXgafv
  = lens _piccXgafv (\ s a -> s{_piccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piccUploadProtocol :: Lens' ProjectsInstancesClustersCreate (Maybe Text)
piccUploadProtocol
  = lens _piccUploadProtocol
      (\ s a -> s{_piccUploadProtocol = a})

-- | OAuth access token.
piccAccessToken :: Lens' ProjectsInstancesClustersCreate (Maybe Text)
piccAccessToken
  = lens _piccAccessToken
      (\ s a -> s{_piccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piccUploadType :: Lens' ProjectsInstancesClustersCreate (Maybe Text)
piccUploadType
  = lens _piccUploadType
      (\ s a -> s{_piccUploadType = a})

-- | Multipart request metadata.
piccPayload :: Lens' ProjectsInstancesClustersCreate Cluster
piccPayload
  = lens _piccPayload (\ s a -> s{_piccPayload = a})

-- | The ID to be used when referring to the new cluster within its instance,
-- e.g., just \`mycluster\` rather than
-- \`projects\/myproject\/instances\/myinstance\/clusters\/mycluster\`.
piccClusterId :: Lens' ProjectsInstancesClustersCreate (Maybe Text)
piccClusterId
  = lens _piccClusterId
      (\ s a -> s{_piccClusterId = a})

-- | JSONP
piccCallback :: Lens' ProjectsInstancesClustersCreate (Maybe Text)
piccCallback
  = lens _piccCallback (\ s a -> s{_piccCallback = a})

instance GoogleRequest
         ProjectsInstancesClustersCreate where
        type Rs ProjectsInstancesClustersCreate = Operation
        type Scopes ProjectsInstancesClustersCreate =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.cluster",
               "https://www.googleapis.com/auth/bigtable.admin.instance",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsInstancesClustersCreate'{..}
          = go _piccParent _piccXgafv _piccUploadProtocol
              _piccAccessToken
              _piccUploadType
              _piccClusterId
              _piccCallback
              (Just AltJSON)
              _piccPayload
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesClustersCreateResource)
                      mempty
