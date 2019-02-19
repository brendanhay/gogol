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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a cluster, consisting of the specified number and type of Google
-- Compute Engine instances. By default, the cluster is created in the
-- project\'s [default
-- network](\/compute\/docs\/networks-and-firewalls#networks). One firewall
-- is added for the cluster. After cluster creation, the cluster creates
-- routes for each node to allow the containers on that node to communicate
-- with all other instances in the cluster. Finally, an entry is added to
-- the project\'s global metadata indicating which CIDR range is being used
-- by the cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.create@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.Create
    (
    -- * REST Resource
      ProjectsLocationsClustersCreateResource

    -- * Creating a Request
    , projectsLocationsClustersCreate
    , ProjectsLocationsClustersCreate

    -- * Request Lenses
    , plccParent
    , plccXgafv
    , plccUploadProtocol
    , plccAccessToken
    , plccUploadType
    , plccPayload
    , plccCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.create@ method which the
-- 'ProjectsLocationsClustersCreate' request conforms to.
type ProjectsLocationsClustersCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "clusters" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CreateClusterRequest :>
                         Post '[JSON] Operation

-- | Creates a cluster, consisting of the specified number and type of Google
-- Compute Engine instances. By default, the cluster is created in the
-- project\'s [default
-- network](\/compute\/docs\/networks-and-firewalls#networks). One firewall
-- is added for the cluster. After cluster creation, the cluster creates
-- routes for each node to allow the containers on that node to communicate
-- with all other instances in the cluster. Finally, an entry is added to
-- the project\'s global metadata indicating which CIDR range is being used
-- by the cluster.
--
-- /See:/ 'projectsLocationsClustersCreate' smart constructor.
data ProjectsLocationsClustersCreate =
  ProjectsLocationsClustersCreate'
    { _plccParent         :: !Text
    , _plccXgafv          :: !(Maybe Xgafv)
    , _plccUploadProtocol :: !(Maybe Text)
    , _plccAccessToken    :: !(Maybe Text)
    , _plccUploadType     :: !(Maybe Text)
    , _plccPayload        :: !CreateClusterRequest
    , _plccCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsClustersCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plccParent'
--
-- * 'plccXgafv'
--
-- * 'plccUploadProtocol'
--
-- * 'plccAccessToken'
--
-- * 'plccUploadType'
--
-- * 'plccPayload'
--
-- * 'plccCallback'
projectsLocationsClustersCreate
    :: Text -- ^ 'plccParent'
    -> CreateClusterRequest -- ^ 'plccPayload'
    -> ProjectsLocationsClustersCreate
projectsLocationsClustersCreate pPlccParent_ pPlccPayload_ =
  ProjectsLocationsClustersCreate'
    { _plccParent = pPlccParent_
    , _plccXgafv = Nothing
    , _plccUploadProtocol = Nothing
    , _plccAccessToken = Nothing
    , _plccUploadType = Nothing
    , _plccPayload = pPlccPayload_
    , _plccCallback = Nothing
    }

-- | The parent (project and location) where the cluster will be created.
-- Specified in the format \'projects\/*\/locations\/*\'.
plccParent :: Lens' ProjectsLocationsClustersCreate Text
plccParent
  = lens _plccParent (\ s a -> s{_plccParent = a})

-- | V1 error format.
plccXgafv :: Lens' ProjectsLocationsClustersCreate (Maybe Xgafv)
plccXgafv
  = lens _plccXgafv (\ s a -> s{_plccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plccUploadProtocol :: Lens' ProjectsLocationsClustersCreate (Maybe Text)
plccUploadProtocol
  = lens _plccUploadProtocol
      (\ s a -> s{_plccUploadProtocol = a})

-- | OAuth access token.
plccAccessToken :: Lens' ProjectsLocationsClustersCreate (Maybe Text)
plccAccessToken
  = lens _plccAccessToken
      (\ s a -> s{_plccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plccUploadType :: Lens' ProjectsLocationsClustersCreate (Maybe Text)
plccUploadType
  = lens _plccUploadType
      (\ s a -> s{_plccUploadType = a})

-- | Multipart request metadata.
plccPayload :: Lens' ProjectsLocationsClustersCreate CreateClusterRequest
plccPayload
  = lens _plccPayload (\ s a -> s{_plccPayload = a})

-- | JSONP
plccCallback :: Lens' ProjectsLocationsClustersCreate (Maybe Text)
plccCallback
  = lens _plccCallback (\ s a -> s{_plccCallback = a})

instance GoogleRequest
           ProjectsLocationsClustersCreate
         where
        type Rs ProjectsLocationsClustersCreate = Operation
        type Scopes ProjectsLocationsClustersCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsClustersCreate'{..}
          = go _plccParent _plccXgafv _plccUploadProtocol
              _plccAccessToken
              _plccUploadType
              _plccCallback
              (Just AltJSON)
              _plccPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsClustersCreateResource)
                      mempty
