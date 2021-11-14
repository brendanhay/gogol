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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves autoscaling policy.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.autoscalingPolicies.get@.
module Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.Get
    (
    -- * REST Resource
      ProjectsRegionsAutoscalingPoliciesGetResource

    -- * Creating a Request
    , projectsRegionsAutoscalingPoliciesGet
    , ProjectsRegionsAutoscalingPoliciesGet

    -- * Request Lenses
    , prapgXgafv
    , prapgUploadProtocol
    , prapgAccessToken
    , prapgUploadType
    , prapgName
    , prapgCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.autoscalingPolicies.get@ method which the
-- 'ProjectsRegionsAutoscalingPoliciesGet' request conforms to.
type ProjectsRegionsAutoscalingPoliciesGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] AutoscalingPolicy

-- | Retrieves autoscaling policy.
--
-- /See:/ 'projectsRegionsAutoscalingPoliciesGet' smart constructor.
data ProjectsRegionsAutoscalingPoliciesGet =
  ProjectsRegionsAutoscalingPoliciesGet'
    { _prapgXgafv :: !(Maybe Xgafv)
    , _prapgUploadProtocol :: !(Maybe Text)
    , _prapgAccessToken :: !(Maybe Text)
    , _prapgUploadType :: !(Maybe Text)
    , _prapgName :: !Text
    , _prapgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsAutoscalingPoliciesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prapgXgafv'
--
-- * 'prapgUploadProtocol'
--
-- * 'prapgAccessToken'
--
-- * 'prapgUploadType'
--
-- * 'prapgName'
--
-- * 'prapgCallback'
projectsRegionsAutoscalingPoliciesGet
    :: Text -- ^ 'prapgName'
    -> ProjectsRegionsAutoscalingPoliciesGet
projectsRegionsAutoscalingPoliciesGet pPrapgName_ =
  ProjectsRegionsAutoscalingPoliciesGet'
    { _prapgXgafv = Nothing
    , _prapgUploadProtocol = Nothing
    , _prapgAccessToken = Nothing
    , _prapgUploadType = Nothing
    , _prapgName = pPrapgName_
    , _prapgCallback = Nothing
    }


-- | V1 error format.
prapgXgafv :: Lens' ProjectsRegionsAutoscalingPoliciesGet (Maybe Xgafv)
prapgXgafv
  = lens _prapgXgafv (\ s a -> s{_prapgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prapgUploadProtocol :: Lens' ProjectsRegionsAutoscalingPoliciesGet (Maybe Text)
prapgUploadProtocol
  = lens _prapgUploadProtocol
      (\ s a -> s{_prapgUploadProtocol = a})

-- | OAuth access token.
prapgAccessToken :: Lens' ProjectsRegionsAutoscalingPoliciesGet (Maybe Text)
prapgAccessToken
  = lens _prapgAccessToken
      (\ s a -> s{_prapgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prapgUploadType :: Lens' ProjectsRegionsAutoscalingPoliciesGet (Maybe Text)
prapgUploadType
  = lens _prapgUploadType
      (\ s a -> s{_prapgUploadType = a})

-- | Required. The \"resource name\" of the autoscaling policy, as described
-- in https:\/\/cloud.google.com\/apis\/design\/resource_names. For
-- projects.regions.autoscalingPolicies.get, the resource name of the
-- policy has the following format:
-- projects\/{project_id}\/regions\/{region}\/autoscalingPolicies\/{policy_id}
-- For projects.locations.autoscalingPolicies.get, the resource name of the
-- policy has the following format:
-- projects\/{project_id}\/locations\/{location}\/autoscalingPolicies\/{policy_id}
prapgName :: Lens' ProjectsRegionsAutoscalingPoliciesGet Text
prapgName
  = lens _prapgName (\ s a -> s{_prapgName = a})

-- | JSONP
prapgCallback :: Lens' ProjectsRegionsAutoscalingPoliciesGet (Maybe Text)
prapgCallback
  = lens _prapgCallback
      (\ s a -> s{_prapgCallback = a})

instance GoogleRequest
           ProjectsRegionsAutoscalingPoliciesGet
         where
        type Rs ProjectsRegionsAutoscalingPoliciesGet =
             AutoscalingPolicy
        type Scopes ProjectsRegionsAutoscalingPoliciesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsRegionsAutoscalingPoliciesGet'{..}
          = go _prapgName _prapgXgafv _prapgUploadProtocol
              _prapgAccessToken
              _prapgUploadType
              _prapgCallback
              (Just AltJSON)
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsRegionsAutoscalingPoliciesGetResource)
                      mempty
