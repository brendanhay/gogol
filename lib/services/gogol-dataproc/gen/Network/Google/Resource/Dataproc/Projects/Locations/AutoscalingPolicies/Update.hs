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
-- Module      : Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates (replaces) autoscaling policy.Disabled check for update_mask,
-- because all updates will be full replacements.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.autoscalingPolicies.update@.
module Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.Update
    (
    -- * REST Resource
      ProjectsLocationsAutoscalingPoliciesUpdateResource

    -- * Creating a Request
    , projectsLocationsAutoscalingPoliciesUpdate
    , ProjectsLocationsAutoscalingPoliciesUpdate

    -- * Request Lenses
    , plapuXgafv
    , plapuUploadProtocol
    , plapuAccessToken
    , plapuUploadType
    , plapuPayload
    , plapuName
    , plapuCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.locations.autoscalingPolicies.update@ method which the
-- 'ProjectsLocationsAutoscalingPoliciesUpdate' request conforms to.
type ProjectsLocationsAutoscalingPoliciesUpdateResource
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
-- /See:/ 'projectsLocationsAutoscalingPoliciesUpdate' smart constructor.
data ProjectsLocationsAutoscalingPoliciesUpdate =
  ProjectsLocationsAutoscalingPoliciesUpdate'
    { _plapuXgafv :: !(Maybe Xgafv)
    , _plapuUploadProtocol :: !(Maybe Text)
    , _plapuAccessToken :: !(Maybe Text)
    , _plapuUploadType :: !(Maybe Text)
    , _plapuPayload :: !AutoscalingPolicy
    , _plapuName :: !Text
    , _plapuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAutoscalingPoliciesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plapuXgafv'
--
-- * 'plapuUploadProtocol'
--
-- * 'plapuAccessToken'
--
-- * 'plapuUploadType'
--
-- * 'plapuPayload'
--
-- * 'plapuName'
--
-- * 'plapuCallback'
projectsLocationsAutoscalingPoliciesUpdate
    :: AutoscalingPolicy -- ^ 'plapuPayload'
    -> Text -- ^ 'plapuName'
    -> ProjectsLocationsAutoscalingPoliciesUpdate
projectsLocationsAutoscalingPoliciesUpdate pPlapuPayload_ pPlapuName_ =
  ProjectsLocationsAutoscalingPoliciesUpdate'
    { _plapuXgafv = Nothing
    , _plapuUploadProtocol = Nothing
    , _plapuAccessToken = Nothing
    , _plapuUploadType = Nothing
    , _plapuPayload = pPlapuPayload_
    , _plapuName = pPlapuName_
    , _plapuCallback = Nothing
    }


-- | V1 error format.
plapuXgafv :: Lens' ProjectsLocationsAutoscalingPoliciesUpdate (Maybe Xgafv)
plapuXgafv
  = lens _plapuXgafv (\ s a -> s{_plapuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plapuUploadProtocol :: Lens' ProjectsLocationsAutoscalingPoliciesUpdate (Maybe Text)
plapuUploadProtocol
  = lens _plapuUploadProtocol
      (\ s a -> s{_plapuUploadProtocol = a})

-- | OAuth access token.
plapuAccessToken :: Lens' ProjectsLocationsAutoscalingPoliciesUpdate (Maybe Text)
plapuAccessToken
  = lens _plapuAccessToken
      (\ s a -> s{_plapuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plapuUploadType :: Lens' ProjectsLocationsAutoscalingPoliciesUpdate (Maybe Text)
plapuUploadType
  = lens _plapuUploadType
      (\ s a -> s{_plapuUploadType = a})

-- | Multipart request metadata.
plapuPayload :: Lens' ProjectsLocationsAutoscalingPoliciesUpdate AutoscalingPolicy
plapuPayload
  = lens _plapuPayload (\ s a -> s{_plapuPayload = a})

-- | Output only. The \"resource name\" of the autoscaling policy, as
-- described in https:\/\/cloud.google.com\/apis\/design\/resource_names.
-- For projects.regions.autoscalingPolicies, the resource name of the
-- policy has the following format:
-- projects\/{project_id}\/regions\/{region}\/autoscalingPolicies\/{policy_id}
-- For projects.locations.autoscalingPolicies, the resource name of the
-- policy has the following format:
-- projects\/{project_id}\/locations\/{location}\/autoscalingPolicies\/{policy_id}
plapuName :: Lens' ProjectsLocationsAutoscalingPoliciesUpdate Text
plapuName
  = lens _plapuName (\ s a -> s{_plapuName = a})

-- | JSONP
plapuCallback :: Lens' ProjectsLocationsAutoscalingPoliciesUpdate (Maybe Text)
plapuCallback
  = lens _plapuCallback
      (\ s a -> s{_plapuCallback = a})

instance GoogleRequest
           ProjectsLocationsAutoscalingPoliciesUpdate
         where
        type Rs ProjectsLocationsAutoscalingPoliciesUpdate =
             AutoscalingPolicy
        type Scopes
               ProjectsLocationsAutoscalingPoliciesUpdate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsAutoscalingPoliciesUpdate'{..}
          = go _plapuName _plapuXgafv _plapuUploadProtocol
              _plapuAccessToken
              _plapuUploadType
              _plapuCallback
              (Just AltJSON)
              _plapuPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAutoscalingPoliciesUpdateResource)
                      mempty
