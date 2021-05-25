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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the details of a specific cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.get@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.Get
    (
    -- * REST Resource
      ProjectsLocationsClustersGetResource

    -- * Creating a Request
    , projectsLocationsClustersGet
    , ProjectsLocationsClustersGet

    -- * Request Lenses
    , plcgXgafv
    , plcgUploadProtocol
    , plcgAccessToken
    , plcgUploadType
    , plcgZone
    , plcgName
    , plcgClusterId
    , plcgProjectId
    , plcgCallback
    ) where

import Network.Google.Container.Types
import Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.get@ method which the
-- 'ProjectsLocationsClustersGet' request conforms to.
type ProjectsLocationsClustersGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "zone" Text :>
                   QueryParam "clusterId" Text :>
                     QueryParam "projectId" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Cluster

-- | Gets the details of a specific cluster.
--
-- /See:/ 'projectsLocationsClustersGet' smart constructor.
data ProjectsLocationsClustersGet =
  ProjectsLocationsClustersGet'
    { _plcgXgafv :: !(Maybe Xgafv)
    , _plcgUploadProtocol :: !(Maybe Text)
    , _plcgAccessToken :: !(Maybe Text)
    , _plcgUploadType :: !(Maybe Text)
    , _plcgZone :: !(Maybe Text)
    , _plcgName :: !Text
    , _plcgClusterId :: !(Maybe Text)
    , _plcgProjectId :: !(Maybe Text)
    , _plcgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsClustersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcgXgafv'
--
-- * 'plcgUploadProtocol'
--
-- * 'plcgAccessToken'
--
-- * 'plcgUploadType'
--
-- * 'plcgZone'
--
-- * 'plcgName'
--
-- * 'plcgClusterId'
--
-- * 'plcgProjectId'
--
-- * 'plcgCallback'
projectsLocationsClustersGet
    :: Text -- ^ 'plcgName'
    -> ProjectsLocationsClustersGet
projectsLocationsClustersGet pPlcgName_ =
  ProjectsLocationsClustersGet'
    { _plcgXgafv = Nothing
    , _plcgUploadProtocol = Nothing
    , _plcgAccessToken = Nothing
    , _plcgUploadType = Nothing
    , _plcgZone = Nothing
    , _plcgName = pPlcgName_
    , _plcgClusterId = Nothing
    , _plcgProjectId = Nothing
    , _plcgCallback = Nothing
    }


-- | V1 error format.
plcgXgafv :: Lens' ProjectsLocationsClustersGet (Maybe Xgafv)
plcgXgafv
  = lens _plcgXgafv (\ s a -> s{_plcgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcgUploadProtocol :: Lens' ProjectsLocationsClustersGet (Maybe Text)
plcgUploadProtocol
  = lens _plcgUploadProtocol
      (\ s a -> s{_plcgUploadProtocol = a})

-- | OAuth access token.
plcgAccessToken :: Lens' ProjectsLocationsClustersGet (Maybe Text)
plcgAccessToken
  = lens _plcgAccessToken
      (\ s a -> s{_plcgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcgUploadType :: Lens' ProjectsLocationsClustersGet (Maybe Text)
plcgUploadType
  = lens _plcgUploadType
      (\ s a -> s{_plcgUploadType = a})

-- | Deprecated. The name of the Google Compute Engine
-- [zone](https:\/\/cloud.google.com\/compute\/docs\/zones#available) in
-- which the cluster resides. This field has been deprecated and replaced
-- by the name field.
plcgZone :: Lens' ProjectsLocationsClustersGet (Maybe Text)
plcgZone = lens _plcgZone (\ s a -> s{_plcgZone = a})

-- | The name (project, location, cluster) of the cluster to retrieve.
-- Specified in the format \`projects\/*\/locations\/*\/clusters\/*\`.
plcgName :: Lens' ProjectsLocationsClustersGet Text
plcgName = lens _plcgName (\ s a -> s{_plcgName = a})

-- | Deprecated. The name of the cluster to retrieve. This field has been
-- deprecated and replaced by the name field.
plcgClusterId :: Lens' ProjectsLocationsClustersGet (Maybe Text)
plcgClusterId
  = lens _plcgClusterId
      (\ s a -> s{_plcgClusterId = a})

-- | Deprecated. The Google Developers Console [project ID or project
-- number](https:\/\/support.google.com\/cloud\/answer\/6158840). This
-- field has been deprecated and replaced by the name field.
plcgProjectId :: Lens' ProjectsLocationsClustersGet (Maybe Text)
plcgProjectId
  = lens _plcgProjectId
      (\ s a -> s{_plcgProjectId = a})

-- | JSONP
plcgCallback :: Lens' ProjectsLocationsClustersGet (Maybe Text)
plcgCallback
  = lens _plcgCallback (\ s a -> s{_plcgCallback = a})

instance GoogleRequest ProjectsLocationsClustersGet
         where
        type Rs ProjectsLocationsClustersGet = Cluster
        type Scopes ProjectsLocationsClustersGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsClustersGet'{..}
          = go _plcgName _plcgXgafv _plcgUploadProtocol
              _plcgAccessToken
              _plcgUploadType
              _plcgZone
              _plcgClusterId
              _plcgProjectId
              _plcgCallback
              (Just AltJSON)
              containerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsClustersGetResource)
                      mempty
