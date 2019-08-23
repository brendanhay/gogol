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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Clusters.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.clusters.setIamPolicy@.
module Network.Google.Resource.Dataproc.Projects.Regions.Clusters.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsRegionsClustersSetIAMPolicyResource

    -- * Creating a Request
    , projectsRegionsClustersSetIAMPolicy
    , ProjectsRegionsClustersSetIAMPolicy

    -- * Request Lenses
    , prcsipXgafv
    , prcsipUploadProtocol
    , prcsipAccessToken
    , prcsipUploadType
    , prcsipPayload
    , prcsipResource
    , prcsipCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.clusters.setIamPolicy@ method which the
-- 'ProjectsRegionsClustersSetIAMPolicy' request conforms to.
type ProjectsRegionsClustersSetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'projectsRegionsClustersSetIAMPolicy' smart constructor.
data ProjectsRegionsClustersSetIAMPolicy =
  ProjectsRegionsClustersSetIAMPolicy'
    { _prcsipXgafv          :: !(Maybe Xgafv)
    , _prcsipUploadProtocol :: !(Maybe Text)
    , _prcsipAccessToken    :: !(Maybe Text)
    , _prcsipUploadType     :: !(Maybe Text)
    , _prcsipPayload        :: !SetIAMPolicyRequest
    , _prcsipResource       :: !Text
    , _prcsipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsClustersSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prcsipXgafv'
--
-- * 'prcsipUploadProtocol'
--
-- * 'prcsipAccessToken'
--
-- * 'prcsipUploadType'
--
-- * 'prcsipPayload'
--
-- * 'prcsipResource'
--
-- * 'prcsipCallback'
projectsRegionsClustersSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'prcsipPayload'
    -> Text -- ^ 'prcsipResource'
    -> ProjectsRegionsClustersSetIAMPolicy
projectsRegionsClustersSetIAMPolicy pPrcsipPayload_ pPrcsipResource_ =
  ProjectsRegionsClustersSetIAMPolicy'
    { _prcsipXgafv = Nothing
    , _prcsipUploadProtocol = Nothing
    , _prcsipAccessToken = Nothing
    , _prcsipUploadType = Nothing
    , _prcsipPayload = pPrcsipPayload_
    , _prcsipResource = pPrcsipResource_
    , _prcsipCallback = Nothing
    }


-- | V1 error format.
prcsipXgafv :: Lens' ProjectsRegionsClustersSetIAMPolicy (Maybe Xgafv)
prcsipXgafv
  = lens _prcsipXgafv (\ s a -> s{_prcsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prcsipUploadProtocol :: Lens' ProjectsRegionsClustersSetIAMPolicy (Maybe Text)
prcsipUploadProtocol
  = lens _prcsipUploadProtocol
      (\ s a -> s{_prcsipUploadProtocol = a})

-- | OAuth access token.
prcsipAccessToken :: Lens' ProjectsRegionsClustersSetIAMPolicy (Maybe Text)
prcsipAccessToken
  = lens _prcsipAccessToken
      (\ s a -> s{_prcsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prcsipUploadType :: Lens' ProjectsRegionsClustersSetIAMPolicy (Maybe Text)
prcsipUploadType
  = lens _prcsipUploadType
      (\ s a -> s{_prcsipUploadType = a})

-- | Multipart request metadata.
prcsipPayload :: Lens' ProjectsRegionsClustersSetIAMPolicy SetIAMPolicyRequest
prcsipPayload
  = lens _prcsipPayload
      (\ s a -> s{_prcsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
prcsipResource :: Lens' ProjectsRegionsClustersSetIAMPolicy Text
prcsipResource
  = lens _prcsipResource
      (\ s a -> s{_prcsipResource = a})

-- | JSONP
prcsipCallback :: Lens' ProjectsRegionsClustersSetIAMPolicy (Maybe Text)
prcsipCallback
  = lens _prcsipCallback
      (\ s a -> s{_prcsipCallback = a})

instance GoogleRequest
           ProjectsRegionsClustersSetIAMPolicy
         where
        type Rs ProjectsRegionsClustersSetIAMPolicy = Policy
        type Scopes ProjectsRegionsClustersSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsRegionsClustersSetIAMPolicy'{..}
          = go _prcsipResource _prcsipXgafv
              _prcsipUploadProtocol
              _prcsipAccessToken
              _prcsipUploadType
              _prcsipCallback
              (Just AltJSON)
              _prcsipPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsRegionsClustersSetIAMPolicyResource)
                      mempty
