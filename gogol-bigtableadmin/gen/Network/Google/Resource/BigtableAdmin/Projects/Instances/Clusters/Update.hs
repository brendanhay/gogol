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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a cluster within an instance.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.clusters.update@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Update
    (
    -- * REST Resource
      ProjectsInstancesClustersUpdateResource

    -- * Creating a Request
    , projectsInstancesClustersUpdate
    , ProjectsInstancesClustersUpdate

    -- * Request Lenses
    , picuXgafv
    , picuUploadProtocol
    , picuAccessToken
    , picuUploadType
    , picuPayload
    , picuName
    , picuCallback
    ) where

import           Network.Google.BigtableAdmin.Types
import           Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.clusters.update@ method which the
-- 'ProjectsInstancesClustersUpdate' request conforms to.
type ProjectsInstancesClustersUpdateResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Cluster :> Put '[JSON] Operation

-- | Updates a cluster within an instance.
--
-- /See:/ 'projectsInstancesClustersUpdate' smart constructor.
data ProjectsInstancesClustersUpdate = ProjectsInstancesClustersUpdate'
    { _picuXgafv          :: !(Maybe Xgafv)
    , _picuUploadProtocol :: !(Maybe Text)
    , _picuAccessToken    :: !(Maybe Text)
    , _picuUploadType     :: !(Maybe Text)
    , _picuPayload        :: !Cluster
    , _picuName           :: !Text
    , _picuCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsInstancesClustersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'picuXgafv'
--
-- * 'picuUploadProtocol'
--
-- * 'picuAccessToken'
--
-- * 'picuUploadType'
--
-- * 'picuPayload'
--
-- * 'picuName'
--
-- * 'picuCallback'
projectsInstancesClustersUpdate
    :: Cluster -- ^ 'picuPayload'
    -> Text -- ^ 'picuName'
    -> ProjectsInstancesClustersUpdate
projectsInstancesClustersUpdate pPicuPayload_ pPicuName_ =
    ProjectsInstancesClustersUpdate'
    { _picuXgafv = Nothing
    , _picuUploadProtocol = Nothing
    , _picuAccessToken = Nothing
    , _picuUploadType = Nothing
    , _picuPayload = pPicuPayload_
    , _picuName = pPicuName_
    , _picuCallback = Nothing
    }

-- | V1 error format.
picuXgafv :: Lens' ProjectsInstancesClustersUpdate (Maybe Xgafv)
picuXgafv
  = lens _picuXgafv (\ s a -> s{_picuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
picuUploadProtocol :: Lens' ProjectsInstancesClustersUpdate (Maybe Text)
picuUploadProtocol
  = lens _picuUploadProtocol
      (\ s a -> s{_picuUploadProtocol = a})

-- | OAuth access token.
picuAccessToken :: Lens' ProjectsInstancesClustersUpdate (Maybe Text)
picuAccessToken
  = lens _picuAccessToken
      (\ s a -> s{_picuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
picuUploadType :: Lens' ProjectsInstancesClustersUpdate (Maybe Text)
picuUploadType
  = lens _picuUploadType
      (\ s a -> s{_picuUploadType = a})

-- | Multipart request metadata.
picuPayload :: Lens' ProjectsInstancesClustersUpdate Cluster
picuPayload
  = lens _picuPayload (\ s a -> s{_picuPayload = a})

-- | (\`OutputOnly\`) The unique name of the cluster. Values are of the form
-- \`projects\/\/instances\/\/clusters\/a-z*\`.
picuName :: Lens' ProjectsInstancesClustersUpdate Text
picuName = lens _picuName (\ s a -> s{_picuName = a})

-- | JSONP
picuCallback :: Lens' ProjectsInstancesClustersUpdate (Maybe Text)
picuCallback
  = lens _picuCallback (\ s a -> s{_picuCallback = a})

instance GoogleRequest
         ProjectsInstancesClustersUpdate where
        type Rs ProjectsInstancesClustersUpdate = Operation
        type Scopes ProjectsInstancesClustersUpdate =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.cluster",
               "https://www.googleapis.com/auth/bigtable.admin.instance",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsInstancesClustersUpdate'{..}
          = go _picuName _picuXgafv _picuUploadProtocol
              _picuAccessToken
              _picuUploadType
              _picuCallback
              (Just AltJSON)
              _picuPayload
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesClustersUpdateResource)
                      mempty
