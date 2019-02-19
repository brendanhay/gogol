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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.SetIAMPolicy
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
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.setIamPolicy@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresSetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresSetIAMPolicy
    , ProjectsLocationsDataSetsFhirStoresSetIAMPolicy

    -- * Request Lenses
    , pldsfssipXgafv
    , pldsfssipUploadProtocol
    , pldsfssipAccessToken
    , pldsfssipUploadType
    , pldsfssipPayload
    , pldsfssipResource
    , pldsfssipCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.setIamPolicy@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresSetIAMPolicy' request conforms to.
type ProjectsLocationsDataSetsFhirStoresSetIAMPolicyResource
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
-- /See:/ 'projectsLocationsDataSetsFhirStoresSetIAMPolicy' smart constructor.
data ProjectsLocationsDataSetsFhirStoresSetIAMPolicy =
  ProjectsLocationsDataSetsFhirStoresSetIAMPolicy'
    { _pldsfssipXgafv          :: !(Maybe Xgafv)
    , _pldsfssipUploadProtocol :: !(Maybe Text)
    , _pldsfssipAccessToken    :: !(Maybe Text)
    , _pldsfssipUploadType     :: !(Maybe Text)
    , _pldsfssipPayload        :: !SetIAMPolicyRequest
    , _pldsfssipResource       :: !Text
    , _pldsfssipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfssipXgafv'
--
-- * 'pldsfssipUploadProtocol'
--
-- * 'pldsfssipAccessToken'
--
-- * 'pldsfssipUploadType'
--
-- * 'pldsfssipPayload'
--
-- * 'pldsfssipResource'
--
-- * 'pldsfssipCallback'
projectsLocationsDataSetsFhirStoresSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'pldsfssipPayload'
    -> Text -- ^ 'pldsfssipResource'
    -> ProjectsLocationsDataSetsFhirStoresSetIAMPolicy
projectsLocationsDataSetsFhirStoresSetIAMPolicy pPldsfssipPayload_ pPldsfssipResource_ =
  ProjectsLocationsDataSetsFhirStoresSetIAMPolicy'
    { _pldsfssipXgafv = Nothing
    , _pldsfssipUploadProtocol = Nothing
    , _pldsfssipAccessToken = Nothing
    , _pldsfssipUploadType = Nothing
    , _pldsfssipPayload = pPldsfssipPayload_
    , _pldsfssipResource = pPldsfssipResource_
    , _pldsfssipCallback = Nothing
    }


-- | V1 error format.
pldsfssipXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresSetIAMPolicy (Maybe Xgafv)
pldsfssipXgafv
  = lens _pldsfssipXgafv
      (\ s a -> s{_pldsfssipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfssipUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresSetIAMPolicy (Maybe Text)
pldsfssipUploadProtocol
  = lens _pldsfssipUploadProtocol
      (\ s a -> s{_pldsfssipUploadProtocol = a})

-- | OAuth access token.
pldsfssipAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresSetIAMPolicy (Maybe Text)
pldsfssipAccessToken
  = lens _pldsfssipAccessToken
      (\ s a -> s{_pldsfssipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfssipUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresSetIAMPolicy (Maybe Text)
pldsfssipUploadType
  = lens _pldsfssipUploadType
      (\ s a -> s{_pldsfssipUploadType = a})

-- | Multipart request metadata.
pldsfssipPayload :: Lens' ProjectsLocationsDataSetsFhirStoresSetIAMPolicy SetIAMPolicyRequest
pldsfssipPayload
  = lens _pldsfssipPayload
      (\ s a -> s{_pldsfssipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
pldsfssipResource :: Lens' ProjectsLocationsDataSetsFhirStoresSetIAMPolicy Text
pldsfssipResource
  = lens _pldsfssipResource
      (\ s a -> s{_pldsfssipResource = a})

-- | JSONP
pldsfssipCallback :: Lens' ProjectsLocationsDataSetsFhirStoresSetIAMPolicy (Maybe Text)
pldsfssipCallback
  = lens _pldsfssipCallback
      (\ s a -> s{_pldsfssipCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresSetIAMPolicy
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresSetIAMPolicy
             = Policy
        type Scopes
               ProjectsLocationsDataSetsFhirStoresSetIAMPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresSetIAMPolicy'{..}
          = go _pldsfssipResource _pldsfssipXgafv
              _pldsfssipUploadProtocol
              _pldsfssipAccessToken
              _pldsfssipUploadType
              _pldsfssipCallback
              (Just AltJSON)
              _pldsfssipPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresSetIAMPolicyResource)
                      mempty
