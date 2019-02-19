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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.SecurityLabels.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy for a FHIR store or security label within
-- a FHIR store. Replaces any existing policy. Authorization requires the
-- Google IAM permission \'healthcare.fhirStores.setIamPolicy\' for a FHIR
-- store or \'healthcare.securityLabels.setIamPolicy\' for a security label
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.securityLabels.setIamPolicy@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.SecurityLabels.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresSecurityLabelsSetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresSecurityLabelsSetIAMPolicy
    , ProjectsLocationsDataSetsFhirStoresSecurityLabelsSetIAMPolicy

    -- * Request Lenses
    , pldsfsslsipXgafv
    , pldsfsslsipUploadProtocol
    , pldsfsslsipAccessToken
    , pldsfsslsipUploadType
    , pldsfsslsipPayload
    , pldsfsslsipResource
    , pldsfsslsipCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.securityLabels.setIamPolicy@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresSecurityLabelsSetIAMPolicy' request conforms to.
type ProjectsLocationsDataSetsFhirStoresSecurityLabelsSetIAMPolicyResource
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

-- | Sets the access control policy for a FHIR store or security label within
-- a FHIR store. Replaces any existing policy. Authorization requires the
-- Google IAM permission \'healthcare.fhirStores.setIamPolicy\' for a FHIR
-- store or \'healthcare.securityLabels.setIamPolicy\' for a security label
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresSecurityLabelsSetIAMPolicy' smart constructor.
data ProjectsLocationsDataSetsFhirStoresSecurityLabelsSetIAMPolicy =
  ProjectsLocationsDataSetsFhirStoresSecurityLabelsSetIAMPolicy'
    { _pldsfsslsipXgafv          :: !(Maybe Xgafv)
    , _pldsfsslsipUploadProtocol :: !(Maybe Text)
    , _pldsfsslsipAccessToken    :: !(Maybe Text)
    , _pldsfsslsipUploadType     :: !(Maybe Text)
    , _pldsfsslsipPayload        :: !SetIAMPolicyRequest
    , _pldsfsslsipResource       :: !Text
    , _pldsfsslsipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresSecurityLabelsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsslsipXgafv'
--
-- * 'pldsfsslsipUploadProtocol'
--
-- * 'pldsfsslsipAccessToken'
--
-- * 'pldsfsslsipUploadType'
--
-- * 'pldsfsslsipPayload'
--
-- * 'pldsfsslsipResource'
--
-- * 'pldsfsslsipCallback'
projectsLocationsDataSetsFhirStoresSecurityLabelsSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'pldsfsslsipPayload'
    -> Text -- ^ 'pldsfsslsipResource'
    -> ProjectsLocationsDataSetsFhirStoresSecurityLabelsSetIAMPolicy
projectsLocationsDataSetsFhirStoresSecurityLabelsSetIAMPolicy pPldsfsslsipPayload_ pPldsfsslsipResource_ =
  ProjectsLocationsDataSetsFhirStoresSecurityLabelsSetIAMPolicy'
    { _pldsfsslsipXgafv = Nothing
    , _pldsfsslsipUploadProtocol = Nothing
    , _pldsfsslsipAccessToken = Nothing
    , _pldsfsslsipUploadType = Nothing
    , _pldsfsslsipPayload = pPldsfsslsipPayload_
    , _pldsfsslsipResource = pPldsfsslsipResource_
    , _pldsfsslsipCallback = Nothing
    }

-- | V1 error format.
pldsfsslsipXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresSecurityLabelsSetIAMPolicy (Maybe Xgafv)
pldsfsslsipXgafv
  = lens _pldsfsslsipXgafv
      (\ s a -> s{_pldsfsslsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsslsipUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresSecurityLabelsSetIAMPolicy (Maybe Text)
pldsfsslsipUploadProtocol
  = lens _pldsfsslsipUploadProtocol
      (\ s a -> s{_pldsfsslsipUploadProtocol = a})

-- | OAuth access token.
pldsfsslsipAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresSecurityLabelsSetIAMPolicy (Maybe Text)
pldsfsslsipAccessToken
  = lens _pldsfsslsipAccessToken
      (\ s a -> s{_pldsfsslsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsslsipUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresSecurityLabelsSetIAMPolicy (Maybe Text)
pldsfsslsipUploadType
  = lens _pldsfsslsipUploadType
      (\ s a -> s{_pldsfsslsipUploadType = a})

-- | Multipart request metadata.
pldsfsslsipPayload :: Lens' ProjectsLocationsDataSetsFhirStoresSecurityLabelsSetIAMPolicy SetIAMPolicyRequest
pldsfsslsipPayload
  = lens _pldsfsslsipPayload
      (\ s a -> s{_pldsfsslsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
pldsfsslsipResource :: Lens' ProjectsLocationsDataSetsFhirStoresSecurityLabelsSetIAMPolicy Text
pldsfsslsipResource
  = lens _pldsfsslsipResource
      (\ s a -> s{_pldsfsslsipResource = a})

-- | JSONP
pldsfsslsipCallback :: Lens' ProjectsLocationsDataSetsFhirStoresSecurityLabelsSetIAMPolicy (Maybe Text)
pldsfsslsipCallback
  = lens _pldsfsslsipCallback
      (\ s a -> s{_pldsfsslsipCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresSecurityLabelsSetIAMPolicy
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresSecurityLabelsSetIAMPolicy
             = Policy
        type Scopes
               ProjectsLocationsDataSetsFhirStoresSecurityLabelsSetIAMPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresSecurityLabelsSetIAMPolicy'{..}
          = go _pldsfsslsipResource _pldsfsslsipXgafv
              _pldsfsslsipUploadProtocol
              _pldsfsslsipAccessToken
              _pldsfsslsipUploadType
              _pldsfsslsipCallback
              (Just AltJSON)
              _pldsfsslsipPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresSecurityLabelsSetIAMPolicyResource)
                      mempty
