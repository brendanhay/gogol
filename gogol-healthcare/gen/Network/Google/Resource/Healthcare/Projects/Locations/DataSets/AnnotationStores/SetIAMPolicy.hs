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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- POLICIES Sets the access control policy for a resource. Replaces any
-- existing policy. Authorization requires the Google IAM permission
-- \'healthcare.annotationStores.setIamPolicy\' on the specified resource
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.annotationStores.setIamPolicy@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsDataSetsAnnotationStoresSetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsDataSetsAnnotationStoresSetIAMPolicy
    , ProjectsLocationsDataSetsAnnotationStoresSetIAMPolicy

    -- * Request Lenses
    , pldsassipXgafv
    , pldsassipUploadProtocol
    , pldsassipAccessToken
    , pldsassipUploadType
    , pldsassipPayload
    , pldsassipResource
    , pldsassipCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.annotationStores.setIamPolicy@ method which the
-- 'ProjectsLocationsDataSetsAnnotationStoresSetIAMPolicy' request conforms to.
type ProjectsLocationsDataSetsAnnotationStoresSetIAMPolicyResource
     =
     "v1alpha" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | POLICIES Sets the access control policy for a resource. Replaces any
-- existing policy. Authorization requires the Google IAM permission
-- \'healthcare.annotationStores.setIamPolicy\' on the specified resource
--
-- /See:/ 'projectsLocationsDataSetsAnnotationStoresSetIAMPolicy' smart constructor.
data ProjectsLocationsDataSetsAnnotationStoresSetIAMPolicy =
  ProjectsLocationsDataSetsAnnotationStoresSetIAMPolicy'
    { _pldsassipXgafv          :: !(Maybe Xgafv)
    , _pldsassipUploadProtocol :: !(Maybe Text)
    , _pldsassipAccessToken    :: !(Maybe Text)
    , _pldsassipUploadType     :: !(Maybe Text)
    , _pldsassipPayload        :: !SetIAMPolicyRequest
    , _pldsassipResource       :: !Text
    , _pldsassipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsDataSetsAnnotationStoresSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsassipXgafv'
--
-- * 'pldsassipUploadProtocol'
--
-- * 'pldsassipAccessToken'
--
-- * 'pldsassipUploadType'
--
-- * 'pldsassipPayload'
--
-- * 'pldsassipResource'
--
-- * 'pldsassipCallback'
projectsLocationsDataSetsAnnotationStoresSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'pldsassipPayload'
    -> Text -- ^ 'pldsassipResource'
    -> ProjectsLocationsDataSetsAnnotationStoresSetIAMPolicy
projectsLocationsDataSetsAnnotationStoresSetIAMPolicy pPldsassipPayload_ pPldsassipResource_ =
  ProjectsLocationsDataSetsAnnotationStoresSetIAMPolicy'
    { _pldsassipXgafv = Nothing
    , _pldsassipUploadProtocol = Nothing
    , _pldsassipAccessToken = Nothing
    , _pldsassipUploadType = Nothing
    , _pldsassipPayload = pPldsassipPayload_
    , _pldsassipResource = pPldsassipResource_
    , _pldsassipCallback = Nothing
    }

-- | V1 error format.
pldsassipXgafv :: Lens' ProjectsLocationsDataSetsAnnotationStoresSetIAMPolicy (Maybe Xgafv)
pldsassipXgafv
  = lens _pldsassipXgafv
      (\ s a -> s{_pldsassipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsassipUploadProtocol :: Lens' ProjectsLocationsDataSetsAnnotationStoresSetIAMPolicy (Maybe Text)
pldsassipUploadProtocol
  = lens _pldsassipUploadProtocol
      (\ s a -> s{_pldsassipUploadProtocol = a})

-- | OAuth access token.
pldsassipAccessToken :: Lens' ProjectsLocationsDataSetsAnnotationStoresSetIAMPolicy (Maybe Text)
pldsassipAccessToken
  = lens _pldsassipAccessToken
      (\ s a -> s{_pldsassipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsassipUploadType :: Lens' ProjectsLocationsDataSetsAnnotationStoresSetIAMPolicy (Maybe Text)
pldsassipUploadType
  = lens _pldsassipUploadType
      (\ s a -> s{_pldsassipUploadType = a})

-- | Multipart request metadata.
pldsassipPayload :: Lens' ProjectsLocationsDataSetsAnnotationStoresSetIAMPolicy SetIAMPolicyRequest
pldsassipPayload
  = lens _pldsassipPayload
      (\ s a -> s{_pldsassipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
pldsassipResource :: Lens' ProjectsLocationsDataSetsAnnotationStoresSetIAMPolicy Text
pldsassipResource
  = lens _pldsassipResource
      (\ s a -> s{_pldsassipResource = a})

-- | JSONP
pldsassipCallback :: Lens' ProjectsLocationsDataSetsAnnotationStoresSetIAMPolicy (Maybe Text)
pldsassipCallback
  = lens _pldsassipCallback
      (\ s a -> s{_pldsassipCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsAnnotationStoresSetIAMPolicy
         where
        type Rs
               ProjectsLocationsDataSetsAnnotationStoresSetIAMPolicy
             = Policy
        type Scopes
               ProjectsLocationsDataSetsAnnotationStoresSetIAMPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsAnnotationStoresSetIAMPolicy'{..}
          = go _pldsassipResource _pldsassipXgafv
              _pldsassipUploadProtocol
              _pldsassipAccessToken
              _pldsassipUploadType
              _pldsassipCallback
              (Just AltJSON)
              _pldsassipPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsAnnotationStoresSetIAMPolicyResource)
                      mempty
