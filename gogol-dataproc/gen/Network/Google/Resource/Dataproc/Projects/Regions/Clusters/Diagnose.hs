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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Diagnose
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets cluster diagnostic information. The returned Operation.metadata
-- will be ClusterOperationMetadata
-- (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#clusteroperationmetadata).
-- After the operation completes, Operation.response contains
-- DiagnoseClusterResults
-- (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#diagnoseclusterresults).
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.diagnose@.
module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Diagnose
    (
    -- * REST Resource
      ProjectsRegionsClustersDiagnoseResource

    -- * Creating a Request
    , projectsRegionsClustersDiagnose
    , ProjectsRegionsClustersDiagnose

    -- * Request Lenses
    , proXgafv
    , proUploadProtocol
    , proAccessToken
    , proUploadType
    , proPayload
    , proClusterName
    , proRegion
    , proProjectId
    , proCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.clusters.diagnose@ method which the
-- 'ProjectsRegionsClustersDiagnose' request conforms to.
type ProjectsRegionsClustersDiagnoseResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "regions" :>
             Capture "region" Text :>
               "clusters" :>
                 CaptureMode "clusterName" "diagnose" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] DiagnoseClusterRequest :>
                                 Post '[JSON] Operation

-- | Gets cluster diagnostic information. The returned Operation.metadata
-- will be ClusterOperationMetadata
-- (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#clusteroperationmetadata).
-- After the operation completes, Operation.response contains
-- DiagnoseClusterResults
-- (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#diagnoseclusterresults).
--
-- /See:/ 'projectsRegionsClustersDiagnose' smart constructor.
data ProjectsRegionsClustersDiagnose =
  ProjectsRegionsClustersDiagnose'
    { _proXgafv :: !(Maybe Xgafv)
    , _proUploadProtocol :: !(Maybe Text)
    , _proAccessToken :: !(Maybe Text)
    , _proUploadType :: !(Maybe Text)
    , _proPayload :: !DiagnoseClusterRequest
    , _proClusterName :: !Text
    , _proRegion :: !Text
    , _proProjectId :: !Text
    , _proCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsClustersDiagnose' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proXgafv'
--
-- * 'proUploadProtocol'
--
-- * 'proAccessToken'
--
-- * 'proUploadType'
--
-- * 'proPayload'
--
-- * 'proClusterName'
--
-- * 'proRegion'
--
-- * 'proProjectId'
--
-- * 'proCallback'
projectsRegionsClustersDiagnose
    :: DiagnoseClusterRequest -- ^ 'proPayload'
    -> Text -- ^ 'proClusterName'
    -> Text -- ^ 'proRegion'
    -> Text -- ^ 'proProjectId'
    -> ProjectsRegionsClustersDiagnose
projectsRegionsClustersDiagnose pProPayload_ pProClusterName_ pProRegion_ pProProjectId_ =
  ProjectsRegionsClustersDiagnose'
    { _proXgafv = Nothing
    , _proUploadProtocol = Nothing
    , _proAccessToken = Nothing
    , _proUploadType = Nothing
    , _proPayload = pProPayload_
    , _proClusterName = pProClusterName_
    , _proRegion = pProRegion_
    , _proProjectId = pProProjectId_
    , _proCallback = Nothing
    }


-- | V1 error format.
proXgafv :: Lens' ProjectsRegionsClustersDiagnose (Maybe Xgafv)
proXgafv = lens _proXgafv (\ s a -> s{_proXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
proUploadProtocol :: Lens' ProjectsRegionsClustersDiagnose (Maybe Text)
proUploadProtocol
  = lens _proUploadProtocol
      (\ s a -> s{_proUploadProtocol = a})

-- | OAuth access token.
proAccessToken :: Lens' ProjectsRegionsClustersDiagnose (Maybe Text)
proAccessToken
  = lens _proAccessToken
      (\ s a -> s{_proAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
proUploadType :: Lens' ProjectsRegionsClustersDiagnose (Maybe Text)
proUploadType
  = lens _proUploadType
      (\ s a -> s{_proUploadType = a})

-- | Multipart request metadata.
proPayload :: Lens' ProjectsRegionsClustersDiagnose DiagnoseClusterRequest
proPayload
  = lens _proPayload (\ s a -> s{_proPayload = a})

-- | Required. The cluster name.
proClusterName :: Lens' ProjectsRegionsClustersDiagnose Text
proClusterName
  = lens _proClusterName
      (\ s a -> s{_proClusterName = a})

-- | Required. The Dataproc region in which to handle the request.
proRegion :: Lens' ProjectsRegionsClustersDiagnose Text
proRegion
  = lens _proRegion (\ s a -> s{_proRegion = a})

-- | Required. The ID of the Google Cloud Platform project that the cluster
-- belongs to.
proProjectId :: Lens' ProjectsRegionsClustersDiagnose Text
proProjectId
  = lens _proProjectId (\ s a -> s{_proProjectId = a})

-- | JSONP
proCallback :: Lens' ProjectsRegionsClustersDiagnose (Maybe Text)
proCallback
  = lens _proCallback (\ s a -> s{_proCallback = a})

instance GoogleRequest
           ProjectsRegionsClustersDiagnose
         where
        type Rs ProjectsRegionsClustersDiagnose = Operation
        type Scopes ProjectsRegionsClustersDiagnose =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsRegionsClustersDiagnose'{..}
          = go _proProjectId _proRegion _proClusterName
              _proXgafv
              _proUploadProtocol
              _proAccessToken
              _proUploadType
              _proCallback
              (Just AltJSON)
              _proPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsRegionsClustersDiagnoseResource)
                      mempty
