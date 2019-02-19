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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a cluster.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.clusters.get@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Get
    (
    -- * REST Resource
      ProjectsInstancesClustersGetResource

    -- * Creating a Request
    , projectsInstancesClustersGet
    , ProjectsInstancesClustersGet

    -- * Request Lenses
    , picgXgafv
    , picgUploadProtocol
    , picgAccessToken
    , picgUploadType
    , picgName
    , picgCallback
    ) where

import           Network.Google.BigtableAdmin.Types
import           Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.clusters.get@ method which the
-- 'ProjectsInstancesClustersGet' request conforms to.
type ProjectsInstancesClustersGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Cluster

-- | Gets information about a cluster.
--
-- /See:/ 'projectsInstancesClustersGet' smart constructor.
data ProjectsInstancesClustersGet =
  ProjectsInstancesClustersGet'
    { _picgXgafv          :: !(Maybe Xgafv)
    , _picgUploadProtocol :: !(Maybe Text)
    , _picgAccessToken    :: !(Maybe Text)
    , _picgUploadType     :: !(Maybe Text)
    , _picgName           :: !Text
    , _picgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsInstancesClustersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'picgXgafv'
--
-- * 'picgUploadProtocol'
--
-- * 'picgAccessToken'
--
-- * 'picgUploadType'
--
-- * 'picgName'
--
-- * 'picgCallback'
projectsInstancesClustersGet
    :: Text -- ^ 'picgName'
    -> ProjectsInstancesClustersGet
projectsInstancesClustersGet pPicgName_ =
  ProjectsInstancesClustersGet'
    { _picgXgafv = Nothing
    , _picgUploadProtocol = Nothing
    , _picgAccessToken = Nothing
    , _picgUploadType = Nothing
    , _picgName = pPicgName_
    , _picgCallback = Nothing
    }

-- | V1 error format.
picgXgafv :: Lens' ProjectsInstancesClustersGet (Maybe Xgafv)
picgXgafv
  = lens _picgXgafv (\ s a -> s{_picgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
picgUploadProtocol :: Lens' ProjectsInstancesClustersGet (Maybe Text)
picgUploadProtocol
  = lens _picgUploadProtocol
      (\ s a -> s{_picgUploadProtocol = a})

-- | OAuth access token.
picgAccessToken :: Lens' ProjectsInstancesClustersGet (Maybe Text)
picgAccessToken
  = lens _picgAccessToken
      (\ s a -> s{_picgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
picgUploadType :: Lens' ProjectsInstancesClustersGet (Maybe Text)
picgUploadType
  = lens _picgUploadType
      (\ s a -> s{_picgUploadType = a})

-- | The unique name of the requested cluster. Values are of the form
-- \`projects\/\/instances\/\/clusters\/\`.
picgName :: Lens' ProjectsInstancesClustersGet Text
picgName = lens _picgName (\ s a -> s{_picgName = a})

-- | JSONP
picgCallback :: Lens' ProjectsInstancesClustersGet (Maybe Text)
picgCallback
  = lens _picgCallback (\ s a -> s{_picgCallback = a})

instance GoogleRequest ProjectsInstancesClustersGet
         where
        type Rs ProjectsInstancesClustersGet = Cluster
        type Scopes ProjectsInstancesClustersGet =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.cluster",
               "https://www.googleapis.com/auth/bigtable.admin.instance",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ProjectsInstancesClustersGet'{..}
          = go _picgName _picgXgafv _picgUploadProtocol
              _picgAccessToken
              _picgUploadType
              _picgCallback
              (Just AltJSON)
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsInstancesClustersGetResource)
                      mempty
