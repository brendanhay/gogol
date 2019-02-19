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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a cluster in a project.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.create@.
module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Create
    (
    -- * REST Resource
      ProjectsRegionsClustersCreateResource

    -- * Creating a Request
    , projectsRegionsClustersCreate
    , ProjectsRegionsClustersCreate

    -- * Request Lenses
    , prccXgafv
    , prccRequestId
    , prccUploadProtocol
    , prccAccessToken
    , prccUploadType
    , prccPayload
    , prccRegion
    , prccProjectId
    , prccCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.clusters.create@ method which the
-- 'ProjectsRegionsClustersCreate' request conforms to.
type ProjectsRegionsClustersCreateResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "regions" :>
             Capture "region" Text :>
               "clusters" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "requestId" Text :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Cluster :> Post '[JSON] Operation

-- | Creates a cluster in a project.
--
-- /See:/ 'projectsRegionsClustersCreate' smart constructor.
data ProjectsRegionsClustersCreate =
  ProjectsRegionsClustersCreate'
    { _prccXgafv          :: !(Maybe Xgafv)
    , _prccRequestId      :: !(Maybe Text)
    , _prccUploadProtocol :: !(Maybe Text)
    , _prccAccessToken    :: !(Maybe Text)
    , _prccUploadType     :: !(Maybe Text)
    , _prccPayload        :: !Cluster
    , _prccRegion         :: !Text
    , _prccProjectId      :: !Text
    , _prccCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsClustersCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prccXgafv'
--
-- * 'prccRequestId'
--
-- * 'prccUploadProtocol'
--
-- * 'prccAccessToken'
--
-- * 'prccUploadType'
--
-- * 'prccPayload'
--
-- * 'prccRegion'
--
-- * 'prccProjectId'
--
-- * 'prccCallback'
projectsRegionsClustersCreate
    :: Cluster -- ^ 'prccPayload'
    -> Text -- ^ 'prccRegion'
    -> Text -- ^ 'prccProjectId'
    -> ProjectsRegionsClustersCreate
projectsRegionsClustersCreate pPrccPayload_ pPrccRegion_ pPrccProjectId_ =
  ProjectsRegionsClustersCreate'
    { _prccXgafv = Nothing
    , _prccRequestId = Nothing
    , _prccUploadProtocol = Nothing
    , _prccAccessToken = Nothing
    , _prccUploadType = Nothing
    , _prccPayload = pPrccPayload_
    , _prccRegion = pPrccRegion_
    , _prccProjectId = pPrccProjectId_
    , _prccCallback = Nothing
    }


-- | V1 error format.
prccXgafv :: Lens' ProjectsRegionsClustersCreate (Maybe Xgafv)
prccXgafv
  = lens _prccXgafv (\ s a -> s{_prccXgafv = a})

-- | Optional. A unique id used to identify the request. If the server
-- receives two CreateClusterRequest requests with the same id, then the
-- second request will be ignored and the first
-- google.longrunning.Operation created and stored in the backend is
-- returned.It is recommended to always set this value to a UUID
-- (https:\/\/en.wikipedia.org\/wiki\/Universally_unique_identifier).The id
-- must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
-- and hyphens (-). The maximum length is 40 characters.
prccRequestId :: Lens' ProjectsRegionsClustersCreate (Maybe Text)
prccRequestId
  = lens _prccRequestId
      (\ s a -> s{_prccRequestId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prccUploadProtocol :: Lens' ProjectsRegionsClustersCreate (Maybe Text)
prccUploadProtocol
  = lens _prccUploadProtocol
      (\ s a -> s{_prccUploadProtocol = a})

-- | OAuth access token.
prccAccessToken :: Lens' ProjectsRegionsClustersCreate (Maybe Text)
prccAccessToken
  = lens _prccAccessToken
      (\ s a -> s{_prccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prccUploadType :: Lens' ProjectsRegionsClustersCreate (Maybe Text)
prccUploadType
  = lens _prccUploadType
      (\ s a -> s{_prccUploadType = a})

-- | Multipart request metadata.
prccPayload :: Lens' ProjectsRegionsClustersCreate Cluster
prccPayload
  = lens _prccPayload (\ s a -> s{_prccPayload = a})

-- | Required. The Cloud Dataproc region in which to handle the request.
prccRegion :: Lens' ProjectsRegionsClustersCreate Text
prccRegion
  = lens _prccRegion (\ s a -> s{_prccRegion = a})

-- | Required. The ID of the Google Cloud Platform project that the cluster
-- belongs to.
prccProjectId :: Lens' ProjectsRegionsClustersCreate Text
prccProjectId
  = lens _prccProjectId
      (\ s a -> s{_prccProjectId = a})

-- | JSONP
prccCallback :: Lens' ProjectsRegionsClustersCreate (Maybe Text)
prccCallback
  = lens _prccCallback (\ s a -> s{_prccCallback = a})

instance GoogleRequest ProjectsRegionsClustersCreate
         where
        type Rs ProjectsRegionsClustersCreate = Operation
        type Scopes ProjectsRegionsClustersCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsRegionsClustersCreate'{..}
          = go _prccProjectId _prccRegion _prccXgafv
              _prccRequestId
              _prccUploadProtocol
              _prccAccessToken
              _prccUploadType
              _prccCallback
              (Just AltJSON)
              _prccPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsRegionsClustersCreateResource)
                      mempty
