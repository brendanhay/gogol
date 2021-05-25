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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates (replaces) autoscaling policy.Disabled check for update_mask,
-- because all updates will be full replacements.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.autoscalingPolicies.update@.
module Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.Update
    (
    -- * REST Resource
      ProjectsRegionsAutoscalingPoliciesUpdateResource

    -- * Creating a Request
    , projectsRegionsAutoscalingPoliciesUpdate
    , ProjectsRegionsAutoscalingPoliciesUpdate

    -- * Request Lenses
    , prapuXgafv
    , prapuUploadProtocol
    , prapuAccessToken
    , prapuUploadType
    , prapuPayload
    , prapuName
    , prapuCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.autoscalingPolicies.update@ method which the
-- 'ProjectsRegionsAutoscalingPoliciesUpdate' request conforms to.
type ProjectsRegionsAutoscalingPoliciesUpdateResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] AutoscalingPolicy :>
                       Put '[JSON] AutoscalingPolicy

-- | Updates (replaces) autoscaling policy.Disabled check for update_mask,
-- because all updates will be full replacements.
--
-- /See:/ 'projectsRegionsAutoscalingPoliciesUpdate' smart constructor.
data ProjectsRegionsAutoscalingPoliciesUpdate =
  ProjectsRegionsAutoscalingPoliciesUpdate'
    { _prapuXgafv :: !(Maybe Xgafv)
    , _prapuUploadProtocol :: !(Maybe Text)
    , _prapuAccessToken :: !(Maybe Text)
    , _prapuUploadType :: !(Maybe Text)
    , _prapuPayload :: !AutoscalingPolicy
    , _prapuName :: !Text
    , _prapuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsAutoscalingPoliciesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prapuXgafv'
--
-- * 'prapuUploadProtocol'
--
-- * 'prapuAccessToken'
--
-- * 'prapuUploadType'
--
-- * 'prapuPayload'
--
-- * 'prapuName'
--
-- * 'prapuCallback'
projectsRegionsAutoscalingPoliciesUpdate
    :: AutoscalingPolicy -- ^ 'prapuPayload'
    -> Text -- ^ 'prapuName'
    -> ProjectsRegionsAutoscalingPoliciesUpdate
projectsRegionsAutoscalingPoliciesUpdate pPrapuPayload_ pPrapuName_ =
  ProjectsRegionsAutoscalingPoliciesUpdate'
    { _prapuXgafv = Nothing
    , _prapuUploadProtocol = Nothing
    , _prapuAccessToken = Nothing
    , _prapuUploadType = Nothing
    , _prapuPayload = pPrapuPayload_
    , _prapuName = pPrapuName_
    , _prapuCallback = Nothing
    }


-- | V1 error format.
prapuXgafv :: Lens' ProjectsRegionsAutoscalingPoliciesUpdate (Maybe Xgafv)
prapuXgafv
  = lens _prapuXgafv (\ s a -> s{_prapuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prapuUploadProtocol :: Lens' ProjectsRegionsAutoscalingPoliciesUpdate (Maybe Text)
prapuUploadProtocol
  = lens _prapuUploadProtocol
      (\ s a -> s{_prapuUploadProtocol = a})

-- | OAuth access token.
prapuAccessToken :: Lens' ProjectsRegionsAutoscalingPoliciesUpdate (Maybe Text)
prapuAccessToken
  = lens _prapuAccessToken
      (\ s a -> s{_prapuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prapuUploadType :: Lens' ProjectsRegionsAutoscalingPoliciesUpdate (Maybe Text)
prapuUploadType
  = lens _prapuUploadType
      (\ s a -> s{_prapuUploadType = a})

-- | Multipart request metadata.
prapuPayload :: Lens' ProjectsRegionsAutoscalingPoliciesUpdate AutoscalingPolicy
prapuPayload
  = lens _prapuPayload (\ s a -> s{_prapuPayload = a})

-- | Output only. The \"resource name\" of the autoscaling policy, as
-- described in https:\/\/cloud.google.com\/apis\/design\/resource_names.
-- For projects.regions.autoscalingPolicies, the resource name of the
-- policy has the following format:
-- projects\/{project_id}\/regions\/{region}\/autoscalingPolicies\/{policy_id}
-- For projects.locations.autoscalingPolicies, the resource name of the
-- policy has the following format:
-- projects\/{project_id}\/locations\/{location}\/autoscalingPolicies\/{policy_id}
prapuName :: Lens' ProjectsRegionsAutoscalingPoliciesUpdate Text
prapuName
  = lens _prapuName (\ s a -> s{_prapuName = a})

-- | JSONP
prapuCallback :: Lens' ProjectsRegionsAutoscalingPoliciesUpdate (Maybe Text)
prapuCallback
  = lens _prapuCallback
      (\ s a -> s{_prapuCallback = a})

instance GoogleRequest
           ProjectsRegionsAutoscalingPoliciesUpdate
         where
        type Rs ProjectsRegionsAutoscalingPoliciesUpdate =
             AutoscalingPolicy
        type Scopes ProjectsRegionsAutoscalingPoliciesUpdate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsRegionsAutoscalingPoliciesUpdate'{..}
          = go _prapuName _prapuXgafv _prapuUploadProtocol
              _prapuAccessToken
              _prapuUploadType
              _prapuCallback
              (Just AltJSON)
              _prapuPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsRegionsAutoscalingPoliciesUpdateResource)
                      mempty
