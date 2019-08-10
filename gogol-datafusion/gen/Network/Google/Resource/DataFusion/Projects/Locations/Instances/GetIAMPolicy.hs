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
-- Module      : Network.Google.Resource.DataFusion.Projects.Locations.Instances.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/data-fusion/docs Cloud Data Fusion API Reference> for @datafusion.projects.locations.instances.getIamPolicy@.
module Network.Google.Resource.DataFusion.Projects.Locations.Instances.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsInstancesGetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsInstancesGetIAMPolicy
    , ProjectsLocationsInstancesGetIAMPolicy

    -- * Request Lenses
    , pligipXgafv
    , pligipUploadProtocol
    , pligipAccessToken
    , pligipUploadType
    , pligipResource
    , pligipCallback
    ) where

import           Network.Google.DataFusion.Types
import           Network.Google.Prelude

-- | A resource alias for @datafusion.projects.locations.instances.getIamPolicy@ method which the
-- 'ProjectsLocationsInstancesGetIAMPolicy' request conforms to.
type ProjectsLocationsInstancesGetIAMPolicyResource =
     "v1beta1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ 'projectsLocationsInstancesGetIAMPolicy' smart constructor.
data ProjectsLocationsInstancesGetIAMPolicy =
  ProjectsLocationsInstancesGetIAMPolicy'
    { _pligipXgafv          :: !(Maybe Xgafv)
    , _pligipUploadProtocol :: !(Maybe Text)
    , _pligipAccessToken    :: !(Maybe Text)
    , _pligipUploadType     :: !(Maybe Text)
    , _pligipResource       :: !Text
    , _pligipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsInstancesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pligipXgafv'
--
-- * 'pligipUploadProtocol'
--
-- * 'pligipAccessToken'
--
-- * 'pligipUploadType'
--
-- * 'pligipResource'
--
-- * 'pligipCallback'
projectsLocationsInstancesGetIAMPolicy
    :: Text -- ^ 'pligipResource'
    -> ProjectsLocationsInstancesGetIAMPolicy
projectsLocationsInstancesGetIAMPolicy pPligipResource_ =
  ProjectsLocationsInstancesGetIAMPolicy'
    { _pligipXgafv = Nothing
    , _pligipUploadProtocol = Nothing
    , _pligipAccessToken = Nothing
    , _pligipUploadType = Nothing
    , _pligipResource = pPligipResource_
    , _pligipCallback = Nothing
    }


-- | V1 error format.
pligipXgafv :: Lens' ProjectsLocationsInstancesGetIAMPolicy (Maybe Xgafv)
pligipXgafv
  = lens _pligipXgafv (\ s a -> s{_pligipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pligipUploadProtocol :: Lens' ProjectsLocationsInstancesGetIAMPolicy (Maybe Text)
pligipUploadProtocol
  = lens _pligipUploadProtocol
      (\ s a -> s{_pligipUploadProtocol = a})

-- | OAuth access token.
pligipAccessToken :: Lens' ProjectsLocationsInstancesGetIAMPolicy (Maybe Text)
pligipAccessToken
  = lens _pligipAccessToken
      (\ s a -> s{_pligipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pligipUploadType :: Lens' ProjectsLocationsInstancesGetIAMPolicy (Maybe Text)
pligipUploadType
  = lens _pligipUploadType
      (\ s a -> s{_pligipUploadType = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
pligipResource :: Lens' ProjectsLocationsInstancesGetIAMPolicy Text
pligipResource
  = lens _pligipResource
      (\ s a -> s{_pligipResource = a})

-- | JSONP
pligipCallback :: Lens' ProjectsLocationsInstancesGetIAMPolicy (Maybe Text)
pligipCallback
  = lens _pligipCallback
      (\ s a -> s{_pligipCallback = a})

instance GoogleRequest
           ProjectsLocationsInstancesGetIAMPolicy
         where
        type Rs ProjectsLocationsInstancesGetIAMPolicy =
             Policy
        type Scopes ProjectsLocationsInstancesGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsInstancesGetIAMPolicy'{..}
          = go _pligipResource _pligipXgafv
              _pligipUploadProtocol
              _pligipAccessToken
              _pligipUploadType
              _pligipCallback
              (Just AltJSON)
              dataFusionService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsInstancesGetIAMPolicyResource)
                      mempty
