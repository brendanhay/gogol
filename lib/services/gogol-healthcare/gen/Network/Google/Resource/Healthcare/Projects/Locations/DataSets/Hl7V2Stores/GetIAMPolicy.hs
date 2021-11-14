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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.GetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.hl7V2Stores.getIamPolicy@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsDataSetsHl7V2StoresGetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsDataSetsHl7V2StoresGetIAMPolicy
    , ProjectsLocationsDataSetsHl7V2StoresGetIAMPolicy

    -- * Request Lenses
    , pldshvsgipOptionsRequestedPolicyVersion
    , pldshvsgipXgafv
    , pldshvsgipUploadProtocol
    , pldshvsgipAccessToken
    , pldshvsgipUploadType
    , pldshvsgipResource
    , pldshvsgipCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.hl7V2Stores.getIamPolicy@ method which the
-- 'ProjectsLocationsDataSetsHl7V2StoresGetIAMPolicy' request conforms to.
type ProjectsLocationsDataSetsHl7V2StoresGetIAMPolicyResource
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
-- /See:/ 'projectsLocationsDataSetsHl7V2StoresGetIAMPolicy' smart constructor.
data ProjectsLocationsDataSetsHl7V2StoresGetIAMPolicy =
  ProjectsLocationsDataSetsHl7V2StoresGetIAMPolicy'
    { _pldshvsgipOptionsRequestedPolicyVersion :: !(Maybe (Textual Int32))
    , _pldshvsgipXgafv :: !(Maybe Xgafv)
    , _pldshvsgipUploadProtocol :: !(Maybe Text)
    , _pldshvsgipAccessToken :: !(Maybe Text)
    , _pldshvsgipUploadType :: !(Maybe Text)
    , _pldshvsgipResource :: !Text
    , _pldshvsgipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsHl7V2StoresGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldshvsgipOptionsRequestedPolicyVersion'
--
-- * 'pldshvsgipXgafv'
--
-- * 'pldshvsgipUploadProtocol'
--
-- * 'pldshvsgipAccessToken'
--
-- * 'pldshvsgipUploadType'
--
-- * 'pldshvsgipResource'
--
-- * 'pldshvsgipCallback'
projectsLocationsDataSetsHl7V2StoresGetIAMPolicy
    :: Text -- ^ 'pldshvsgipResource'
    -> ProjectsLocationsDataSetsHl7V2StoresGetIAMPolicy
projectsLocationsDataSetsHl7V2StoresGetIAMPolicy pPldshvsgipResource_ =
  ProjectsLocationsDataSetsHl7V2StoresGetIAMPolicy'
    { _pldshvsgipOptionsRequestedPolicyVersion = Nothing
    , _pldshvsgipXgafv = Nothing
    , _pldshvsgipUploadProtocol = Nothing
    , _pldshvsgipAccessToken = Nothing
    , _pldshvsgipUploadType = Nothing
    , _pldshvsgipResource = pPldshvsgipResource_
    , _pldshvsgipCallback = Nothing
    }


-- | Optional. The policy format version to be returned. Valid values are 0,
-- 1, and 3. Requests specifying an invalid value will be rejected.
-- Requests for policies with any conditional bindings must specify version
-- 3. Policies without any conditional bindings may specify any valid value
-- or leave the field unset. To learn which resources support conditions in
-- their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
pldshvsgipOptionsRequestedPolicyVersion :: Lens' ProjectsLocationsDataSetsHl7V2StoresGetIAMPolicy (Maybe Int32)
pldshvsgipOptionsRequestedPolicyVersion
  = lens _pldshvsgipOptionsRequestedPolicyVersion
      (\ s a ->
         s{_pldshvsgipOptionsRequestedPolicyVersion = a})
      . mapping _Coerce

-- | V1 error format.
pldshvsgipXgafv :: Lens' ProjectsLocationsDataSetsHl7V2StoresGetIAMPolicy (Maybe Xgafv)
pldshvsgipXgafv
  = lens _pldshvsgipXgafv
      (\ s a -> s{_pldshvsgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldshvsgipUploadProtocol :: Lens' ProjectsLocationsDataSetsHl7V2StoresGetIAMPolicy (Maybe Text)
pldshvsgipUploadProtocol
  = lens _pldshvsgipUploadProtocol
      (\ s a -> s{_pldshvsgipUploadProtocol = a})

-- | OAuth access token.
pldshvsgipAccessToken :: Lens' ProjectsLocationsDataSetsHl7V2StoresGetIAMPolicy (Maybe Text)
pldshvsgipAccessToken
  = lens _pldshvsgipAccessToken
      (\ s a -> s{_pldshvsgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldshvsgipUploadType :: Lens' ProjectsLocationsDataSetsHl7V2StoresGetIAMPolicy (Maybe Text)
pldshvsgipUploadType
  = lens _pldshvsgipUploadType
      (\ s a -> s{_pldshvsgipUploadType = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
pldshvsgipResource :: Lens' ProjectsLocationsDataSetsHl7V2StoresGetIAMPolicy Text
pldshvsgipResource
  = lens _pldshvsgipResource
      (\ s a -> s{_pldshvsgipResource = a})

-- | JSONP
pldshvsgipCallback :: Lens' ProjectsLocationsDataSetsHl7V2StoresGetIAMPolicy (Maybe Text)
pldshvsgipCallback
  = lens _pldshvsgipCallback
      (\ s a -> s{_pldshvsgipCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsHl7V2StoresGetIAMPolicy
         where
        type Rs
               ProjectsLocationsDataSetsHl7V2StoresGetIAMPolicy
             = Policy
        type Scopes
               ProjectsLocationsDataSetsHl7V2StoresGetIAMPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsHl7V2StoresGetIAMPolicy'{..}
          = go _pldshvsgipResource
              _pldshvsgipOptionsRequestedPolicyVersion
              _pldshvsgipXgafv
              _pldshvsgipUploadProtocol
              _pldshvsgipAccessToken
              _pldshvsgipUploadType
              _pldshvsgipCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsHl7V2StoresGetIAMPolicyResource)
                      mempty
