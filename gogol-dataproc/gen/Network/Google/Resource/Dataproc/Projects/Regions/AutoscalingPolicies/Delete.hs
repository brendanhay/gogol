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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an autoscaling policy. It is an error to delete an autoscaling
-- policy that is in use by one or more clusters.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.autoscalingPolicies.delete@.
module Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.Delete
    (
    -- * REST Resource
      ProjectsRegionsAutoscalingPoliciesDeleteResource

    -- * Creating a Request
    , projectsRegionsAutoscalingPoliciesDelete
    , ProjectsRegionsAutoscalingPoliciesDelete

    -- * Request Lenses
    , prapdXgafv
    , prapdUploadProtocol
    , prapdAccessToken
    , prapdUploadType
    , prapdName
    , prapdCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.autoscalingPolicies.delete@ method which the
-- 'ProjectsRegionsAutoscalingPoliciesDelete' request conforms to.
type ProjectsRegionsAutoscalingPoliciesDeleteResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes an autoscaling policy. It is an error to delete an autoscaling
-- policy that is in use by one or more clusters.
--
-- /See:/ 'projectsRegionsAutoscalingPoliciesDelete' smart constructor.
data ProjectsRegionsAutoscalingPoliciesDelete =
  ProjectsRegionsAutoscalingPoliciesDelete'
    { _prapdXgafv :: !(Maybe Xgafv)
    , _prapdUploadProtocol :: !(Maybe Text)
    , _prapdAccessToken :: !(Maybe Text)
    , _prapdUploadType :: !(Maybe Text)
    , _prapdName :: !Text
    , _prapdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsAutoscalingPoliciesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prapdXgafv'
--
-- * 'prapdUploadProtocol'
--
-- * 'prapdAccessToken'
--
-- * 'prapdUploadType'
--
-- * 'prapdName'
--
-- * 'prapdCallback'
projectsRegionsAutoscalingPoliciesDelete
    :: Text -- ^ 'prapdName'
    -> ProjectsRegionsAutoscalingPoliciesDelete
projectsRegionsAutoscalingPoliciesDelete pPrapdName_ =
  ProjectsRegionsAutoscalingPoliciesDelete'
    { _prapdXgafv = Nothing
    , _prapdUploadProtocol = Nothing
    , _prapdAccessToken = Nothing
    , _prapdUploadType = Nothing
    , _prapdName = pPrapdName_
    , _prapdCallback = Nothing
    }


-- | V1 error format.
prapdXgafv :: Lens' ProjectsRegionsAutoscalingPoliciesDelete (Maybe Xgafv)
prapdXgafv
  = lens _prapdXgafv (\ s a -> s{_prapdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prapdUploadProtocol :: Lens' ProjectsRegionsAutoscalingPoliciesDelete (Maybe Text)
prapdUploadProtocol
  = lens _prapdUploadProtocol
      (\ s a -> s{_prapdUploadProtocol = a})

-- | OAuth access token.
prapdAccessToken :: Lens' ProjectsRegionsAutoscalingPoliciesDelete (Maybe Text)
prapdAccessToken
  = lens _prapdAccessToken
      (\ s a -> s{_prapdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prapdUploadType :: Lens' ProjectsRegionsAutoscalingPoliciesDelete (Maybe Text)
prapdUploadType
  = lens _prapdUploadType
      (\ s a -> s{_prapdUploadType = a})

-- | Required. The \"resource name\" of the autoscaling policy, as described
-- in https:\/\/cloud.google.com\/apis\/design\/resource_names. For
-- projects.regions.autoscalingPolicies.delete, the resource name of the
-- policy has the following format:
-- projects\/{project_id}\/regions\/{region}\/autoscalingPolicies\/{policy_id}
-- For projects.locations.autoscalingPolicies.delete, the resource name of
-- the policy has the following format:
-- projects\/{project_id}\/locations\/{location}\/autoscalingPolicies\/{policy_id}
prapdName :: Lens' ProjectsRegionsAutoscalingPoliciesDelete Text
prapdName
  = lens _prapdName (\ s a -> s{_prapdName = a})

-- | JSONP
prapdCallback :: Lens' ProjectsRegionsAutoscalingPoliciesDelete (Maybe Text)
prapdCallback
  = lens _prapdCallback
      (\ s a -> s{_prapdCallback = a})

instance GoogleRequest
           ProjectsRegionsAutoscalingPoliciesDelete
         where
        type Rs ProjectsRegionsAutoscalingPoliciesDelete =
             Empty
        type Scopes ProjectsRegionsAutoscalingPoliciesDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsRegionsAutoscalingPoliciesDelete'{..}
          = go _prapdName _prapdXgafv _prapdUploadProtocol
              _prapdAccessToken
              _prapdUploadType
              _prapdCallback
              (Just AltJSON)
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsRegionsAutoscalingPoliciesDeleteResource)
                      mempty
