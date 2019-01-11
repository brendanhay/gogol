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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Clusters.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.getIamPolicy@.
module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsRegionsClustersGetIAMPolicyResource

    -- * Creating a Request
    , projectsRegionsClustersGetIAMPolicy
    , ProjectsRegionsClustersGetIAMPolicy

    -- * Request Lenses
    , prcgipXgafv
    , prcgipUploadProtocol
    , prcgipAccessToken
    , prcgipUploadType
    , prcgipPayload
    , prcgipResource
    , prcgipCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.clusters.getIamPolicy@ method which the
-- 'ProjectsRegionsClustersGetIAMPolicy' request conforms to.
type ProjectsRegionsClustersGetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ 'projectsRegionsClustersGetIAMPolicy' smart constructor.
data ProjectsRegionsClustersGetIAMPolicy = ProjectsRegionsClustersGetIAMPolicy'
    { _prcgipXgafv          :: !(Maybe Xgafv)
    , _prcgipUploadProtocol :: !(Maybe Text)
    , _prcgipAccessToken    :: !(Maybe Text)
    , _prcgipUploadType     :: !(Maybe Text)
    , _prcgipPayload        :: !GetIAMPolicyRequest
    , _prcgipResource       :: !Text
    , _prcgipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsRegionsClustersGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prcgipXgafv'
--
-- * 'prcgipUploadProtocol'
--
-- * 'prcgipAccessToken'
--
-- * 'prcgipUploadType'
--
-- * 'prcgipPayload'
--
-- * 'prcgipResource'
--
-- * 'prcgipCallback'
projectsRegionsClustersGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'prcgipPayload'
    -> Text -- ^ 'prcgipResource'
    -> ProjectsRegionsClustersGetIAMPolicy
projectsRegionsClustersGetIAMPolicy pPrcgipPayload_ pPrcgipResource_ =
    ProjectsRegionsClustersGetIAMPolicy'
    { _prcgipXgafv = Nothing
    , _prcgipUploadProtocol = Nothing
    , _prcgipAccessToken = Nothing
    , _prcgipUploadType = Nothing
    , _prcgipPayload = pPrcgipPayload_
    , _prcgipResource = pPrcgipResource_
    , _prcgipCallback = Nothing
    }

-- | V1 error format.
prcgipXgafv :: Lens' ProjectsRegionsClustersGetIAMPolicy (Maybe Xgafv)
prcgipXgafv
  = lens _prcgipXgafv (\ s a -> s{_prcgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prcgipUploadProtocol :: Lens' ProjectsRegionsClustersGetIAMPolicy (Maybe Text)
prcgipUploadProtocol
  = lens _prcgipUploadProtocol
      (\ s a -> s{_prcgipUploadProtocol = a})

-- | OAuth access token.
prcgipAccessToken :: Lens' ProjectsRegionsClustersGetIAMPolicy (Maybe Text)
prcgipAccessToken
  = lens _prcgipAccessToken
      (\ s a -> s{_prcgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prcgipUploadType :: Lens' ProjectsRegionsClustersGetIAMPolicy (Maybe Text)
prcgipUploadType
  = lens _prcgipUploadType
      (\ s a -> s{_prcgipUploadType = a})

-- | Multipart request metadata.
prcgipPayload :: Lens' ProjectsRegionsClustersGetIAMPolicy GetIAMPolicyRequest
prcgipPayload
  = lens _prcgipPayload
      (\ s a -> s{_prcgipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
prcgipResource :: Lens' ProjectsRegionsClustersGetIAMPolicy Text
prcgipResource
  = lens _prcgipResource
      (\ s a -> s{_prcgipResource = a})

-- | JSONP
prcgipCallback :: Lens' ProjectsRegionsClustersGetIAMPolicy (Maybe Text)
prcgipCallback
  = lens _prcgipCallback
      (\ s a -> s{_prcgipCallback = a})

instance GoogleRequest
         ProjectsRegionsClustersGetIAMPolicy where
        type Rs ProjectsRegionsClustersGetIAMPolicy = Policy
        type Scopes ProjectsRegionsClustersGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsRegionsClustersGetIAMPolicy'{..}
          = go _prcgipResource _prcgipXgafv
              _prcgipUploadProtocol
              _prcgipAccessToken
              _prcgipUploadType
              _prcgipCallback
              (Just AltJSON)
              _prcgipPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsRegionsClustersGetIAMPolicyResource)
                      mempty
