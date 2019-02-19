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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.SecurityLabels.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a FHIR store or security label within
-- a FHIR store. Returns NOT_FOUND error if the resource does not exist.
-- Returns an empty policy if the resource exists but does not have a
-- policy set. Authorization requires the Google IAM permission
-- \'healthcare.fhirStores.getIamPolicy\' for a FHIR store or
-- \'healthcare.securityLabels.getIamPolicy\' for a security label
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.securityLabels.getIamPolicy@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.SecurityLabels.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresSecurityLabelsGetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresSecurityLabelsGetIAMPolicy
    , ProjectsLocationsDataSetsFhirStoresSecurityLabelsGetIAMPolicy

    -- * Request Lenses
    , pldsfsslgipXgafv
    , pldsfsslgipUploadProtocol
    , pldsfsslgipAccessToken
    , pldsfsslgipUploadType
    , pldsfsslgipPayload
    , pldsfsslgipResource
    , pldsfsslgipCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.securityLabels.getIamPolicy@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresSecurityLabelsGetIAMPolicy' request conforms to.
type ProjectsLocationsDataSetsFhirStoresSecurityLabelsGetIAMPolicyResource
     =
     "v1alpha" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Gets the access control policy for a FHIR store or security label within
-- a FHIR store. Returns NOT_FOUND error if the resource does not exist.
-- Returns an empty policy if the resource exists but does not have a
-- policy set. Authorization requires the Google IAM permission
-- \'healthcare.fhirStores.getIamPolicy\' for a FHIR store or
-- \'healthcare.securityLabels.getIamPolicy\' for a security label
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresSecurityLabelsGetIAMPolicy' smart constructor.
data ProjectsLocationsDataSetsFhirStoresSecurityLabelsGetIAMPolicy =
  ProjectsLocationsDataSetsFhirStoresSecurityLabelsGetIAMPolicy'
    { _pldsfsslgipXgafv          :: !(Maybe Xgafv)
    , _pldsfsslgipUploadProtocol :: !(Maybe Text)
    , _pldsfsslgipAccessToken    :: !(Maybe Text)
    , _pldsfsslgipUploadType     :: !(Maybe Text)
    , _pldsfsslgipPayload        :: !GetIAMPolicyRequest
    , _pldsfsslgipResource       :: !Text
    , _pldsfsslgipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresSecurityLabelsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsslgipXgafv'
--
-- * 'pldsfsslgipUploadProtocol'
--
-- * 'pldsfsslgipAccessToken'
--
-- * 'pldsfsslgipUploadType'
--
-- * 'pldsfsslgipPayload'
--
-- * 'pldsfsslgipResource'
--
-- * 'pldsfsslgipCallback'
projectsLocationsDataSetsFhirStoresSecurityLabelsGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'pldsfsslgipPayload'
    -> Text -- ^ 'pldsfsslgipResource'
    -> ProjectsLocationsDataSetsFhirStoresSecurityLabelsGetIAMPolicy
projectsLocationsDataSetsFhirStoresSecurityLabelsGetIAMPolicy pPldsfsslgipPayload_ pPldsfsslgipResource_ =
  ProjectsLocationsDataSetsFhirStoresSecurityLabelsGetIAMPolicy'
    { _pldsfsslgipXgafv = Nothing
    , _pldsfsslgipUploadProtocol = Nothing
    , _pldsfsslgipAccessToken = Nothing
    , _pldsfsslgipUploadType = Nothing
    , _pldsfsslgipPayload = pPldsfsslgipPayload_
    , _pldsfsslgipResource = pPldsfsslgipResource_
    , _pldsfsslgipCallback = Nothing
    }


-- | V1 error format.
pldsfsslgipXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresSecurityLabelsGetIAMPolicy (Maybe Xgafv)
pldsfsslgipXgafv
  = lens _pldsfsslgipXgafv
      (\ s a -> s{_pldsfsslgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsslgipUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresSecurityLabelsGetIAMPolicy (Maybe Text)
pldsfsslgipUploadProtocol
  = lens _pldsfsslgipUploadProtocol
      (\ s a -> s{_pldsfsslgipUploadProtocol = a})

-- | OAuth access token.
pldsfsslgipAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresSecurityLabelsGetIAMPolicy (Maybe Text)
pldsfsslgipAccessToken
  = lens _pldsfsslgipAccessToken
      (\ s a -> s{_pldsfsslgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsslgipUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresSecurityLabelsGetIAMPolicy (Maybe Text)
pldsfsslgipUploadType
  = lens _pldsfsslgipUploadType
      (\ s a -> s{_pldsfsslgipUploadType = a})

-- | Multipart request metadata.
pldsfsslgipPayload :: Lens' ProjectsLocationsDataSetsFhirStoresSecurityLabelsGetIAMPolicy GetIAMPolicyRequest
pldsfsslgipPayload
  = lens _pldsfsslgipPayload
      (\ s a -> s{_pldsfsslgipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
pldsfsslgipResource :: Lens' ProjectsLocationsDataSetsFhirStoresSecurityLabelsGetIAMPolicy Text
pldsfsslgipResource
  = lens _pldsfsslgipResource
      (\ s a -> s{_pldsfsslgipResource = a})

-- | JSONP
pldsfsslgipCallback :: Lens' ProjectsLocationsDataSetsFhirStoresSecurityLabelsGetIAMPolicy (Maybe Text)
pldsfsslgipCallback
  = lens _pldsfsslgipCallback
      (\ s a -> s{_pldsfsslgipCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresSecurityLabelsGetIAMPolicy
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresSecurityLabelsGetIAMPolicy
             = Policy
        type Scopes
               ProjectsLocationsDataSetsFhirStoresSecurityLabelsGetIAMPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresSecurityLabelsGetIAMPolicy'{..}
          = go _pldsfsslgipResource _pldsfsslgipXgafv
              _pldsfsslgipUploadProtocol
              _pldsfsslgipAccessToken
              _pldsfsslgipUploadType
              _pldsfsslgipCallback
              (Just AltJSON)
              _pldsfsslgipPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresSecurityLabelsGetIAMPolicyResource)
                      mempty
