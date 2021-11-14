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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.GetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.getIamPolicy@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresGetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresGetIAMPolicy
    , ProjectsLocationsDataSetsFhirStoresGetIAMPolicy

    -- * Request Lenses
    , pldsfsgipOptionsRequestedPolicyVersion
    , pldsfsgipXgafv
    , pldsfsgipUploadProtocol
    , pldsfsgipAccessToken
    , pldsfsgipUploadType
    , pldsfsgipResource
    , pldsfsgipCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.getIamPolicy@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresGetIAMPolicy' request conforms to.
type ProjectsLocationsDataSetsFhirStoresGetIAMPolicyResource
     =
     "v1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "options.requestedPolicyVersion"
           (Textual Int32)
           :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresGetIAMPolicy' smart constructor.
data ProjectsLocationsDataSetsFhirStoresGetIAMPolicy =
  ProjectsLocationsDataSetsFhirStoresGetIAMPolicy'
    { _pldsfsgipOptionsRequestedPolicyVersion :: !(Maybe (Textual Int32))
    , _pldsfsgipXgafv :: !(Maybe Xgafv)
    , _pldsfsgipUploadProtocol :: !(Maybe Text)
    , _pldsfsgipAccessToken :: !(Maybe Text)
    , _pldsfsgipUploadType :: !(Maybe Text)
    , _pldsfsgipResource :: !Text
    , _pldsfsgipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsgipOptionsRequestedPolicyVersion'
--
-- * 'pldsfsgipXgafv'
--
-- * 'pldsfsgipUploadProtocol'
--
-- * 'pldsfsgipAccessToken'
--
-- * 'pldsfsgipUploadType'
--
-- * 'pldsfsgipResource'
--
-- * 'pldsfsgipCallback'
projectsLocationsDataSetsFhirStoresGetIAMPolicy
    :: Text -- ^ 'pldsfsgipResource'
    -> ProjectsLocationsDataSetsFhirStoresGetIAMPolicy
projectsLocationsDataSetsFhirStoresGetIAMPolicy pPldsfsgipResource_ =
  ProjectsLocationsDataSetsFhirStoresGetIAMPolicy'
    { _pldsfsgipOptionsRequestedPolicyVersion = Nothing
    , _pldsfsgipXgafv = Nothing
    , _pldsfsgipUploadProtocol = Nothing
    , _pldsfsgipAccessToken = Nothing
    , _pldsfsgipUploadType = Nothing
    , _pldsfsgipResource = pPldsfsgipResource_
    , _pldsfsgipCallback = Nothing
    }


-- | Optional. The policy format version to be returned. Valid values are 0,
-- 1, and 3. Requests specifying an invalid value will be rejected.
-- Requests for policies with any conditional bindings must specify version
-- 3. Policies without any conditional bindings may specify any valid value
-- or leave the field unset. To learn which resources support conditions in
-- their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
pldsfsgipOptionsRequestedPolicyVersion :: Lens' ProjectsLocationsDataSetsFhirStoresGetIAMPolicy (Maybe Int32)
pldsfsgipOptionsRequestedPolicyVersion
  = lens _pldsfsgipOptionsRequestedPolicyVersion
      (\ s a ->
         s{_pldsfsgipOptionsRequestedPolicyVersion = a})
      . mapping _Coerce

-- | V1 error format.
pldsfsgipXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresGetIAMPolicy (Maybe Xgafv)
pldsfsgipXgafv
  = lens _pldsfsgipXgafv
      (\ s a -> s{_pldsfsgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsgipUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresGetIAMPolicy (Maybe Text)
pldsfsgipUploadProtocol
  = lens _pldsfsgipUploadProtocol
      (\ s a -> s{_pldsfsgipUploadProtocol = a})

-- | OAuth access token.
pldsfsgipAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresGetIAMPolicy (Maybe Text)
pldsfsgipAccessToken
  = lens _pldsfsgipAccessToken
      (\ s a -> s{_pldsfsgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsgipUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresGetIAMPolicy (Maybe Text)
pldsfsgipUploadType
  = lens _pldsfsgipUploadType
      (\ s a -> s{_pldsfsgipUploadType = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
pldsfsgipResource :: Lens' ProjectsLocationsDataSetsFhirStoresGetIAMPolicy Text
pldsfsgipResource
  = lens _pldsfsgipResource
      (\ s a -> s{_pldsfsgipResource = a})

-- | JSONP
pldsfsgipCallback :: Lens' ProjectsLocationsDataSetsFhirStoresGetIAMPolicy (Maybe Text)
pldsfsgipCallback
  = lens _pldsfsgipCallback
      (\ s a -> s{_pldsfsgipCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresGetIAMPolicy
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresGetIAMPolicy
             = Policy
        type Scopes
               ProjectsLocationsDataSetsFhirStoresGetIAMPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresGetIAMPolicy'{..}
          = go _pldsfsgipResource
              _pldsfsgipOptionsRequestedPolicyVersion
              _pldsfsgipXgafv
              _pldsfsgipUploadProtocol
              _pldsfsgipAccessToken
              _pldsfsgipUploadType
              _pldsfsgipCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresGetIAMPolicyResource)
                      mempty
