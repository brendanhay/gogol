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
-- Module      : Network.Google.Resource.DataFusion.Projects.Locations.Instances.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://cloud.google.com/data-fusion/docs Cloud Data Fusion API Reference> for @datafusion.projects.locations.instances.setIamPolicy@.
module Network.Google.Resource.DataFusion.Projects.Locations.Instances.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsInstancesSetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsInstancesSetIAMPolicy
    , ProjectsLocationsInstancesSetIAMPolicy

    -- * Request Lenses
    , plisipXgafv
    , plisipUploadProtocol
    , plisipAccessToken
    , plisipUploadType
    , plisipPayload
    , plisipResource
    , plisipCallback
    ) where

import           Network.Google.DataFusion.Types
import           Network.Google.Prelude

-- | A resource alias for @datafusion.projects.locations.instances.setIamPolicy@ method which the
-- 'ProjectsLocationsInstancesSetIAMPolicy' request conforms to.
type ProjectsLocationsInstancesSetIAMPolicyResource =
     "v1beta1" :>
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
-- /See:/ 'projectsLocationsInstancesSetIAMPolicy' smart constructor.
data ProjectsLocationsInstancesSetIAMPolicy =
  ProjectsLocationsInstancesSetIAMPolicy'
    { _plisipXgafv          :: !(Maybe Xgafv)
    , _plisipUploadProtocol :: !(Maybe Text)
    , _plisipAccessToken    :: !(Maybe Text)
    , _plisipUploadType     :: !(Maybe Text)
    , _plisipPayload        :: !SetIAMPolicyRequest
    , _plisipResource       :: !Text
    , _plisipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsInstancesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plisipXgafv'
--
-- * 'plisipUploadProtocol'
--
-- * 'plisipAccessToken'
--
-- * 'plisipUploadType'
--
-- * 'plisipPayload'
--
-- * 'plisipResource'
--
-- * 'plisipCallback'
projectsLocationsInstancesSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'plisipPayload'
    -> Text -- ^ 'plisipResource'
    -> ProjectsLocationsInstancesSetIAMPolicy
projectsLocationsInstancesSetIAMPolicy pPlisipPayload_ pPlisipResource_ =
  ProjectsLocationsInstancesSetIAMPolicy'
    { _plisipXgafv = Nothing
    , _plisipUploadProtocol = Nothing
    , _plisipAccessToken = Nothing
    , _plisipUploadType = Nothing
    , _plisipPayload = pPlisipPayload_
    , _plisipResource = pPlisipResource_
    , _plisipCallback = Nothing
    }


-- | V1 error format.
plisipXgafv :: Lens' ProjectsLocationsInstancesSetIAMPolicy (Maybe Xgafv)
plisipXgafv
  = lens _plisipXgafv (\ s a -> s{_plisipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plisipUploadProtocol :: Lens' ProjectsLocationsInstancesSetIAMPolicy (Maybe Text)
plisipUploadProtocol
  = lens _plisipUploadProtocol
      (\ s a -> s{_plisipUploadProtocol = a})

-- | OAuth access token.
plisipAccessToken :: Lens' ProjectsLocationsInstancesSetIAMPolicy (Maybe Text)
plisipAccessToken
  = lens _plisipAccessToken
      (\ s a -> s{_plisipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plisipUploadType :: Lens' ProjectsLocationsInstancesSetIAMPolicy (Maybe Text)
plisipUploadType
  = lens _plisipUploadType
      (\ s a -> s{_plisipUploadType = a})

-- | Multipart request metadata.
plisipPayload :: Lens' ProjectsLocationsInstancesSetIAMPolicy SetIAMPolicyRequest
plisipPayload
  = lens _plisipPayload
      (\ s a -> s{_plisipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
plisipResource :: Lens' ProjectsLocationsInstancesSetIAMPolicy Text
plisipResource
  = lens _plisipResource
      (\ s a -> s{_plisipResource = a})

-- | JSONP
plisipCallback :: Lens' ProjectsLocationsInstancesSetIAMPolicy (Maybe Text)
plisipCallback
  = lens _plisipCallback
      (\ s a -> s{_plisipCallback = a})

instance GoogleRequest
           ProjectsLocationsInstancesSetIAMPolicy
         where
        type Rs ProjectsLocationsInstancesSetIAMPolicy =
             Policy
        type Scopes ProjectsLocationsInstancesSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsInstancesSetIAMPolicy'{..}
          = go _plisipResource _plisipXgafv
              _plisipUploadProtocol
              _plisipAccessToken
              _plisipUploadType
              _plisipCallback
              (Just AltJSON)
              _plisipPayload
              dataFusionService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsInstancesSetIAMPolicyResource)
                      mempty
