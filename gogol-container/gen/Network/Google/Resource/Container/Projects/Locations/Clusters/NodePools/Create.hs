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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a node pool for a cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.nodePools.create@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.NodePools.Create
    (
    -- * REST Resource
      ProjectsLocationsClustersNodePoolsCreateResource

    -- * Creating a Request
    , projectsLocationsClustersNodePoolsCreate
    , ProjectsLocationsClustersNodePoolsCreate

    -- * Request Lenses
    , plcnpcParent
    , plcnpcXgafv
    , plcnpcUploadProtocol
    , plcnpcAccessToken
    , plcnpcUploadType
    , plcnpcPayload
    , plcnpcCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.nodePools.create@ method which the
-- 'ProjectsLocationsClustersNodePoolsCreate' request conforms to.
type ProjectsLocationsClustersNodePoolsCreateResource
     =
     "v1" :>
       Capture "parent" Text :>
         "nodePools" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CreateNodePoolRequest :>
                         Post '[JSON] Operation

-- | Creates a node pool for a cluster.
--
-- /See:/ 'projectsLocationsClustersNodePoolsCreate' smart constructor.
data ProjectsLocationsClustersNodePoolsCreate =
  ProjectsLocationsClustersNodePoolsCreate'
    { _plcnpcParent         :: !Text
    , _plcnpcXgafv          :: !(Maybe Xgafv)
    , _plcnpcUploadProtocol :: !(Maybe Text)
    , _plcnpcAccessToken    :: !(Maybe Text)
    , _plcnpcUploadType     :: !(Maybe Text)
    , _plcnpcPayload        :: !CreateNodePoolRequest
    , _plcnpcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsClustersNodePoolsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcnpcParent'
--
-- * 'plcnpcXgafv'
--
-- * 'plcnpcUploadProtocol'
--
-- * 'plcnpcAccessToken'
--
-- * 'plcnpcUploadType'
--
-- * 'plcnpcPayload'
--
-- * 'plcnpcCallback'
projectsLocationsClustersNodePoolsCreate
    :: Text -- ^ 'plcnpcParent'
    -> CreateNodePoolRequest -- ^ 'plcnpcPayload'
    -> ProjectsLocationsClustersNodePoolsCreate
projectsLocationsClustersNodePoolsCreate pPlcnpcParent_ pPlcnpcPayload_ =
  ProjectsLocationsClustersNodePoolsCreate'
    { _plcnpcParent = pPlcnpcParent_
    , _plcnpcXgafv = Nothing
    , _plcnpcUploadProtocol = Nothing
    , _plcnpcAccessToken = Nothing
    , _plcnpcUploadType = Nothing
    , _plcnpcPayload = pPlcnpcPayload_
    , _plcnpcCallback = Nothing
    }


-- | The parent (project, location, cluster id) where the node pool will be
-- created. Specified in the format
-- \'projects\/*\/locations\/*\/clusters\/*\'.
plcnpcParent :: Lens' ProjectsLocationsClustersNodePoolsCreate Text
plcnpcParent
  = lens _plcnpcParent (\ s a -> s{_plcnpcParent = a})

-- | V1 error format.
plcnpcXgafv :: Lens' ProjectsLocationsClustersNodePoolsCreate (Maybe Xgafv)
plcnpcXgafv
  = lens _plcnpcXgafv (\ s a -> s{_plcnpcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcnpcUploadProtocol :: Lens' ProjectsLocationsClustersNodePoolsCreate (Maybe Text)
plcnpcUploadProtocol
  = lens _plcnpcUploadProtocol
      (\ s a -> s{_plcnpcUploadProtocol = a})

-- | OAuth access token.
plcnpcAccessToken :: Lens' ProjectsLocationsClustersNodePoolsCreate (Maybe Text)
plcnpcAccessToken
  = lens _plcnpcAccessToken
      (\ s a -> s{_plcnpcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcnpcUploadType :: Lens' ProjectsLocationsClustersNodePoolsCreate (Maybe Text)
plcnpcUploadType
  = lens _plcnpcUploadType
      (\ s a -> s{_plcnpcUploadType = a})

-- | Multipart request metadata.
plcnpcPayload :: Lens' ProjectsLocationsClustersNodePoolsCreate CreateNodePoolRequest
plcnpcPayload
  = lens _plcnpcPayload
      (\ s a -> s{_plcnpcPayload = a})

-- | JSONP
plcnpcCallback :: Lens' ProjectsLocationsClustersNodePoolsCreate (Maybe Text)
plcnpcCallback
  = lens _plcnpcCallback
      (\ s a -> s{_plcnpcCallback = a})

instance GoogleRequest
           ProjectsLocationsClustersNodePoolsCreate
         where
        type Rs ProjectsLocationsClustersNodePoolsCreate =
             Operation
        type Scopes ProjectsLocationsClustersNodePoolsCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsClustersNodePoolsCreate'{..}
          = go _plcnpcParent _plcnpcXgafv _plcnpcUploadProtocol
              _plcnpcAccessToken
              _plcnpcUploadType
              _plcnpcCallback
              (Just AltJSON)
              _plcnpcPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsClustersNodePoolsCreateResource)
                      mempty
