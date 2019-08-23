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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.hl7V2Stores.setIamPolicy@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Hl7V2Stores.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsDataSetsHl7V2StoresSetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsDataSetsHl7V2StoresSetIAMPolicy
    , ProjectsLocationsDataSetsHl7V2StoresSetIAMPolicy

    -- * Request Lenses
    , pldshvssipXgafv
    , pldshvssipUploadProtocol
    , pldshvssipAccessToken
    , pldshvssipUploadType
    , pldshvssipPayload
    , pldshvssipResource
    , pldshvssipCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.hl7V2Stores.setIamPolicy@ method which the
-- 'ProjectsLocationsDataSetsHl7V2StoresSetIAMPolicy' request conforms to.
type ProjectsLocationsDataSetsHl7V2StoresSetIAMPolicyResource
     =
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
-- /See:/ 'projectsLocationsDataSetsHl7V2StoresSetIAMPolicy' smart constructor.
data ProjectsLocationsDataSetsHl7V2StoresSetIAMPolicy =
  ProjectsLocationsDataSetsHl7V2StoresSetIAMPolicy'
    { _pldshvssipXgafv          :: !(Maybe Xgafv)
    , _pldshvssipUploadProtocol :: !(Maybe Text)
    , _pldshvssipAccessToken    :: !(Maybe Text)
    , _pldshvssipUploadType     :: !(Maybe Text)
    , _pldshvssipPayload        :: !SetIAMPolicyRequest
    , _pldshvssipResource       :: !Text
    , _pldshvssipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsHl7V2StoresSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldshvssipXgafv'
--
-- * 'pldshvssipUploadProtocol'
--
-- * 'pldshvssipAccessToken'
--
-- * 'pldshvssipUploadType'
--
-- * 'pldshvssipPayload'
--
-- * 'pldshvssipResource'
--
-- * 'pldshvssipCallback'
projectsLocationsDataSetsHl7V2StoresSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'pldshvssipPayload'
    -> Text -- ^ 'pldshvssipResource'
    -> ProjectsLocationsDataSetsHl7V2StoresSetIAMPolicy
projectsLocationsDataSetsHl7V2StoresSetIAMPolicy pPldshvssipPayload_ pPldshvssipResource_ =
  ProjectsLocationsDataSetsHl7V2StoresSetIAMPolicy'
    { _pldshvssipXgafv = Nothing
    , _pldshvssipUploadProtocol = Nothing
    , _pldshvssipAccessToken = Nothing
    , _pldshvssipUploadType = Nothing
    , _pldshvssipPayload = pPldshvssipPayload_
    , _pldshvssipResource = pPldshvssipResource_
    , _pldshvssipCallback = Nothing
    }


-- | V1 error format.
pldshvssipXgafv :: Lens' ProjectsLocationsDataSetsHl7V2StoresSetIAMPolicy (Maybe Xgafv)
pldshvssipXgafv
  = lens _pldshvssipXgafv
      (\ s a -> s{_pldshvssipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldshvssipUploadProtocol :: Lens' ProjectsLocationsDataSetsHl7V2StoresSetIAMPolicy (Maybe Text)
pldshvssipUploadProtocol
  = lens _pldshvssipUploadProtocol
      (\ s a -> s{_pldshvssipUploadProtocol = a})

-- | OAuth access token.
pldshvssipAccessToken :: Lens' ProjectsLocationsDataSetsHl7V2StoresSetIAMPolicy (Maybe Text)
pldshvssipAccessToken
  = lens _pldshvssipAccessToken
      (\ s a -> s{_pldshvssipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldshvssipUploadType :: Lens' ProjectsLocationsDataSetsHl7V2StoresSetIAMPolicy (Maybe Text)
pldshvssipUploadType
  = lens _pldshvssipUploadType
      (\ s a -> s{_pldshvssipUploadType = a})

-- | Multipart request metadata.
pldshvssipPayload :: Lens' ProjectsLocationsDataSetsHl7V2StoresSetIAMPolicy SetIAMPolicyRequest
pldshvssipPayload
  = lens _pldshvssipPayload
      (\ s a -> s{_pldshvssipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
pldshvssipResource :: Lens' ProjectsLocationsDataSetsHl7V2StoresSetIAMPolicy Text
pldshvssipResource
  = lens _pldshvssipResource
      (\ s a -> s{_pldshvssipResource = a})

-- | JSONP
pldshvssipCallback :: Lens' ProjectsLocationsDataSetsHl7V2StoresSetIAMPolicy (Maybe Text)
pldshvssipCallback
  = lens _pldshvssipCallback
      (\ s a -> s{_pldshvssipCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsHl7V2StoresSetIAMPolicy
         where
        type Rs
               ProjectsLocationsDataSetsHl7V2StoresSetIAMPolicy
             = Policy
        type Scopes
               ProjectsLocationsDataSetsHl7V2StoresSetIAMPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsHl7V2StoresSetIAMPolicy'{..}
          = go _pldshvssipResource _pldshvssipXgafv
              _pldshvssipUploadProtocol
              _pldshvssipAccessToken
              _pldshvssipUploadType
              _pldshvssipCallback
              (Just AltJSON)
              _pldshvssipPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsHl7V2StoresSetIAMPolicyResource)
                      mempty
