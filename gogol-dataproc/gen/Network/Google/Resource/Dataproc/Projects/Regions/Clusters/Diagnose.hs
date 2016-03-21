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
-- Gets cluster diagnostic information. After the operation completes, the
-- Operation.response field contains \`DiagnoseClusterOutputLocation\`.
--
-- /See:/ <https://cloud.google.com/dataproc/ Google Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.diagnose@.
module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.Diagnose
    (
    -- * REST Resource
      ProjectsRegionsClustersDiagnoseResource

    -- * Creating a Request
    , projectsRegionsClustersDiagnose
    , ProjectsRegionsClustersDiagnose

    -- * Request Lenses
    , pXgafv
    , pUploadProtocol
    , pPp
    , pAccessToken
    , pUploadType
    , pPayload
    , pBearerToken
    , pClusterName
    , pRegion
    , pProjectId
    , pCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

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
                   QueryParam "$.xgafv" Text :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "pp" Bool :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "bearer_token" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] DiagnoseClusterRequest :>
                                     Post '[JSON] Operation

-- | Gets cluster diagnostic information. After the operation completes, the
-- Operation.response field contains \`DiagnoseClusterOutputLocation\`.
--
-- /See:/ 'projectsRegionsClustersDiagnose' smart constructor.
data ProjectsRegionsClustersDiagnose = ProjectsRegionsClustersDiagnose'
    { _pXgafv          :: !(Maybe Text)
    , _pUploadProtocol :: !(Maybe Text)
    , _pPp             :: !Bool
    , _pAccessToken    :: !(Maybe Text)
    , _pUploadType     :: !(Maybe Text)
    , _pPayload        :: !DiagnoseClusterRequest
    , _pBearerToken    :: !(Maybe Text)
    , _pClusterName    :: !Text
    , _pRegion         :: !Text
    , _pProjectId      :: !Text
    , _pCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsRegionsClustersDiagnose' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pXgafv'
--
-- * 'pUploadProtocol'
--
-- * 'pPp'
--
-- * 'pAccessToken'
--
-- * 'pUploadType'
--
-- * 'pPayload'
--
-- * 'pBearerToken'
--
-- * 'pClusterName'
--
-- * 'pRegion'
--
-- * 'pProjectId'
--
-- * 'pCallback'
projectsRegionsClustersDiagnose
    :: DiagnoseClusterRequest -- ^ 'pPayload'
    -> Text -- ^ 'pClusterName'
    -> Text -- ^ 'pRegion'
    -> Text -- ^ 'pProjectId'
    -> ProjectsRegionsClustersDiagnose
projectsRegionsClustersDiagnose pPPayload_ pPClusterName_ pPRegion_ pPProjectId_ =
    ProjectsRegionsClustersDiagnose'
    { _pXgafv = Nothing
    , _pUploadProtocol = Nothing
    , _pPp = True
    , _pAccessToken = Nothing
    , _pUploadType = Nothing
    , _pPayload = pPPayload_
    , _pBearerToken = Nothing
    , _pClusterName = pPClusterName_
    , _pRegion = pPRegion_
    , _pProjectId = pPProjectId_
    , _pCallback = Nothing
    }

-- | V1 error format.
pXgafv :: Lens' ProjectsRegionsClustersDiagnose (Maybe Text)
pXgafv = lens _pXgafv (\ s a -> s{_pXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pUploadProtocol :: Lens' ProjectsRegionsClustersDiagnose (Maybe Text)
pUploadProtocol
  = lens _pUploadProtocol
      (\ s a -> s{_pUploadProtocol = a})

-- | Pretty-print response.
pPp :: Lens' ProjectsRegionsClustersDiagnose Bool
pPp = lens _pPp (\ s a -> s{_pPp = a})

-- | OAuth access token.
pAccessToken :: Lens' ProjectsRegionsClustersDiagnose (Maybe Text)
pAccessToken
  = lens _pAccessToken (\ s a -> s{_pAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pUploadType :: Lens' ProjectsRegionsClustersDiagnose (Maybe Text)
pUploadType
  = lens _pUploadType (\ s a -> s{_pUploadType = a})

-- | Multipart request metadata.
pPayload :: Lens' ProjectsRegionsClustersDiagnose DiagnoseClusterRequest
pPayload = lens _pPayload (\ s a -> s{_pPayload = a})

-- | OAuth bearer token.
pBearerToken :: Lens' ProjectsRegionsClustersDiagnose (Maybe Text)
pBearerToken
  = lens _pBearerToken (\ s a -> s{_pBearerToken = a})

-- | [Required] The cluster name.
pClusterName :: Lens' ProjectsRegionsClustersDiagnose Text
pClusterName
  = lens _pClusterName (\ s a -> s{_pClusterName = a})

-- | [Required] The Cloud Dataproc region in which to handle the request.
pRegion :: Lens' ProjectsRegionsClustersDiagnose Text
pRegion = lens _pRegion (\ s a -> s{_pRegion = a})

-- | [Required] The ID of the Google Cloud Platform project that the cluster
-- belongs to.
pProjectId :: Lens' ProjectsRegionsClustersDiagnose Text
pProjectId
  = lens _pProjectId (\ s a -> s{_pProjectId = a})

-- | JSONP
pCallback :: Lens' ProjectsRegionsClustersDiagnose (Maybe Text)
pCallback
  = lens _pCallback (\ s a -> s{_pCallback = a})

instance GoogleRequest
         ProjectsRegionsClustersDiagnose where
        type Rs ProjectsRegionsClustersDiagnose = Operation
        type Scopes ProjectsRegionsClustersDiagnose =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsRegionsClustersDiagnose'{..}
          = go _pProjectId _pRegion _pClusterName _pXgafv
              _pUploadProtocol
              (Just _pPp)
              _pAccessToken
              _pUploadType
              _pBearerToken
              _pCallback
              (Just AltJSON)
              _pPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsRegionsClustersDiagnoseResource)
                      mempty
