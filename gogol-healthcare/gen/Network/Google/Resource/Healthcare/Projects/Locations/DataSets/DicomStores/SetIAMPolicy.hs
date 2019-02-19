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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.setIamPolicy@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresSetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresSetIAMPolicy
    , ProjectsLocationsDataSetsDicomStoresSetIAMPolicy

    -- * Request Lenses
    , pldsdssipXgafv
    , pldsdssipUploadProtocol
    , pldsdssipAccessToken
    , pldsdssipUploadType
    , pldsdssipPayload
    , pldsdssipResource
    , pldsdssipCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.setIamPolicy@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresSetIAMPolicy' request conforms to.
type ProjectsLocationsDataSetsDicomStoresSetIAMPolicyResource
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

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresSetIAMPolicy' smart constructor.
data ProjectsLocationsDataSetsDicomStoresSetIAMPolicy =
  ProjectsLocationsDataSetsDicomStoresSetIAMPolicy'
    { _pldsdssipXgafv          :: !(Maybe Xgafv)
    , _pldsdssipUploadProtocol :: !(Maybe Text)
    , _pldsdssipAccessToken    :: !(Maybe Text)
    , _pldsdssipUploadType     :: !(Maybe Text)
    , _pldsdssipPayload        :: !SetIAMPolicyRequest
    , _pldsdssipResource       :: !Text
    , _pldsdssipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdssipXgafv'
--
-- * 'pldsdssipUploadProtocol'
--
-- * 'pldsdssipAccessToken'
--
-- * 'pldsdssipUploadType'
--
-- * 'pldsdssipPayload'
--
-- * 'pldsdssipResource'
--
-- * 'pldsdssipCallback'
projectsLocationsDataSetsDicomStoresSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'pldsdssipPayload'
    -> Text -- ^ 'pldsdssipResource'
    -> ProjectsLocationsDataSetsDicomStoresSetIAMPolicy
projectsLocationsDataSetsDicomStoresSetIAMPolicy pPldsdssipPayload_ pPldsdssipResource_ =
  ProjectsLocationsDataSetsDicomStoresSetIAMPolicy'
    { _pldsdssipXgafv = Nothing
    , _pldsdssipUploadProtocol = Nothing
    , _pldsdssipAccessToken = Nothing
    , _pldsdssipUploadType = Nothing
    , _pldsdssipPayload = pPldsdssipPayload_
    , _pldsdssipResource = pPldsdssipResource_
    , _pldsdssipCallback = Nothing
    }

-- | V1 error format.
pldsdssipXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresSetIAMPolicy (Maybe Xgafv)
pldsdssipXgafv
  = lens _pldsdssipXgafv
      (\ s a -> s{_pldsdssipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdssipUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresSetIAMPolicy (Maybe Text)
pldsdssipUploadProtocol
  = lens _pldsdssipUploadProtocol
      (\ s a -> s{_pldsdssipUploadProtocol = a})

-- | OAuth access token.
pldsdssipAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresSetIAMPolicy (Maybe Text)
pldsdssipAccessToken
  = lens _pldsdssipAccessToken
      (\ s a -> s{_pldsdssipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdssipUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresSetIAMPolicy (Maybe Text)
pldsdssipUploadType
  = lens _pldsdssipUploadType
      (\ s a -> s{_pldsdssipUploadType = a})

-- | Multipart request metadata.
pldsdssipPayload :: Lens' ProjectsLocationsDataSetsDicomStoresSetIAMPolicy SetIAMPolicyRequest
pldsdssipPayload
  = lens _pldsdssipPayload
      (\ s a -> s{_pldsdssipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
pldsdssipResource :: Lens' ProjectsLocationsDataSetsDicomStoresSetIAMPolicy Text
pldsdssipResource
  = lens _pldsdssipResource
      (\ s a -> s{_pldsdssipResource = a})

-- | JSONP
pldsdssipCallback :: Lens' ProjectsLocationsDataSetsDicomStoresSetIAMPolicy (Maybe Text)
pldsdssipCallback
  = lens _pldsdssipCallback
      (\ s a -> s{_pldsdssipCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresSetIAMPolicy
         where
        type Rs
               ProjectsLocationsDataSetsDicomStoresSetIAMPolicy
             = Policy
        type Scopes
               ProjectsLocationsDataSetsDicomStoresSetIAMPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresSetIAMPolicy'{..}
          = go _pldsdssipResource _pldsdssipXgafv
              _pldsdssipUploadProtocol
              _pldsdssipAccessToken
              _pldsdssipUploadType
              _pldsdssipCallback
              (Just AltJSON)
              _pldsdssipPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresSetIAMPolicyResource)
                      mempty
