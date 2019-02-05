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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a cluster from an instance.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.clusters.delete@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Delete
    (
    -- * REST Resource
      ProjectsInstancesClustersDeleteResource

    -- * Creating a Request
    , projectsInstancesClustersDelete
    , ProjectsInstancesClustersDelete

    -- * Request Lenses
    , picdXgafv
    , picdUploadProtocol
    , picdAccessToken
    , picdUploadType
    , picdName
    , picdCallback
    ) where

import           Network.Google.BigtableAdmin.Types
import           Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.clusters.delete@ method which the
-- 'ProjectsInstancesClustersDelete' request conforms to.
type ProjectsInstancesClustersDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a cluster from an instance.
--
-- /See:/ 'projectsInstancesClustersDelete' smart constructor.
data ProjectsInstancesClustersDelete = ProjectsInstancesClustersDelete'
    { _picdXgafv          :: !(Maybe Xgafv)
    , _picdUploadProtocol :: !(Maybe Text)
    , _picdAccessToken    :: !(Maybe Text)
    , _picdUploadType     :: !(Maybe Text)
    , _picdName           :: !Text
    , _picdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsInstancesClustersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'picdXgafv'
--
-- * 'picdUploadProtocol'
--
-- * 'picdAccessToken'
--
-- * 'picdUploadType'
--
-- * 'picdName'
--
-- * 'picdCallback'
projectsInstancesClustersDelete
    :: Text -- ^ 'picdName'
    -> ProjectsInstancesClustersDelete
projectsInstancesClustersDelete pPicdName_ =
    ProjectsInstancesClustersDelete'
    { _picdXgafv = Nothing
    , _picdUploadProtocol = Nothing
    , _picdAccessToken = Nothing
    , _picdUploadType = Nothing
    , _picdName = pPicdName_
    , _picdCallback = Nothing
    }

-- | V1 error format.
picdXgafv :: Lens' ProjectsInstancesClustersDelete (Maybe Xgafv)
picdXgafv
  = lens _picdXgafv (\ s a -> s{_picdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
picdUploadProtocol :: Lens' ProjectsInstancesClustersDelete (Maybe Text)
picdUploadProtocol
  = lens _picdUploadProtocol
      (\ s a -> s{_picdUploadProtocol = a})

-- | OAuth access token.
picdAccessToken :: Lens' ProjectsInstancesClustersDelete (Maybe Text)
picdAccessToken
  = lens _picdAccessToken
      (\ s a -> s{_picdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
picdUploadType :: Lens' ProjectsInstancesClustersDelete (Maybe Text)
picdUploadType
  = lens _picdUploadType
      (\ s a -> s{_picdUploadType = a})

-- | The unique name of the cluster to be deleted. Values are of the form
-- \`projects\/\/instances\/\/clusters\/\`.
picdName :: Lens' ProjectsInstancesClustersDelete Text
picdName = lens _picdName (\ s a -> s{_picdName = a})

-- | JSONP
picdCallback :: Lens' ProjectsInstancesClustersDelete (Maybe Text)
picdCallback
  = lens _picdCallback (\ s a -> s{_picdCallback = a})

instance GoogleRequest
         ProjectsInstancesClustersDelete where
        type Rs ProjectsInstancesClustersDelete = Empty
        type Scopes ProjectsInstancesClustersDelete =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.cluster",
               "https://www.googleapis.com/auth/bigtable.admin.instance",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsInstancesClustersDelete'{..}
          = go _picdName _picdXgafv _picdUploadProtocol
              _picdAccessToken
              _picdUploadType
              _picdCallback
              (Just AltJSON)
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesClustersDeleteResource)
                      mempty
