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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Capabilities
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the FHIR capability statement
-- ([STU3](http:\/\/hl7.org\/implement\/standards\/fhir\/STU3\/capabilitystatement.html),
-- [R4](http:\/\/hl7.org\/implement\/standards\/fhir\/R4\/capabilitystatement.html)),
-- or the [conformance
-- statement](http:\/\/hl7.org\/implement\/standards\/fhir\/DSTU2\/conformance.html)
-- in the DSTU2 case for the store, which contains a description of
-- functionality supported by the server. Implements the FHIR standard
-- capabilities interaction
-- ([STU3](http:\/\/hl7.org\/implement\/standards\/fhir\/STU3\/http.html#capabilities),
-- [R4](http:\/\/hl7.org\/implement\/standards\/fhir\/R4\/http.html#capabilities)),
-- or the [conformance
-- interaction](http:\/\/hl7.org\/implement\/standards\/fhir\/DSTU2\/http.html#conformance)
-- in the DSTU2 case. On success, the response body contains a JSON-encoded
-- representation of a \`CapabilityStatement\` resource.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.capabilities@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.Capabilities
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresFhirCapabilitiesResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresFhirCapabilities
    , ProjectsLocationsDataSetsFhirStoresFhirCapabilities

    -- * Request Lenses
    , pldsfsfcXgafv
    , pldsfsfcUploadProtocol
    , pldsfsfcAccessToken
    , pldsfsfcUploadType
    , pldsfsfcName
    , pldsfsfcCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.capabilities@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresFhirCapabilities' request conforms to.
type ProjectsLocationsDataSetsFhirStoresFhirCapabilitiesResource
     =
     "v1" :>
       Capture "name" Text :>
         "fhir" :>
           "metadata" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] HTTPBody

-- | Gets the FHIR capability statement
-- ([STU3](http:\/\/hl7.org\/implement\/standards\/fhir\/STU3\/capabilitystatement.html),
-- [R4](http:\/\/hl7.org\/implement\/standards\/fhir\/R4\/capabilitystatement.html)),
-- or the [conformance
-- statement](http:\/\/hl7.org\/implement\/standards\/fhir\/DSTU2\/conformance.html)
-- in the DSTU2 case for the store, which contains a description of
-- functionality supported by the server. Implements the FHIR standard
-- capabilities interaction
-- ([STU3](http:\/\/hl7.org\/implement\/standards\/fhir\/STU3\/http.html#capabilities),
-- [R4](http:\/\/hl7.org\/implement\/standards\/fhir\/R4\/http.html#capabilities)),
-- or the [conformance
-- interaction](http:\/\/hl7.org\/implement\/standards\/fhir\/DSTU2\/http.html#conformance)
-- in the DSTU2 case. On success, the response body contains a JSON-encoded
-- representation of a \`CapabilityStatement\` resource.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresFhirCapabilities' smart constructor.
data ProjectsLocationsDataSetsFhirStoresFhirCapabilities =
  ProjectsLocationsDataSetsFhirStoresFhirCapabilities'
    { _pldsfsfcXgafv :: !(Maybe Xgafv)
    , _pldsfsfcUploadProtocol :: !(Maybe Text)
    , _pldsfsfcAccessToken :: !(Maybe Text)
    , _pldsfsfcUploadType :: !(Maybe Text)
    , _pldsfsfcName :: !Text
    , _pldsfsfcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresFhirCapabilities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsfcXgafv'
--
-- * 'pldsfsfcUploadProtocol'
--
-- * 'pldsfsfcAccessToken'
--
-- * 'pldsfsfcUploadType'
--
-- * 'pldsfsfcName'
--
-- * 'pldsfsfcCallback'
projectsLocationsDataSetsFhirStoresFhirCapabilities
    :: Text -- ^ 'pldsfsfcName'
    -> ProjectsLocationsDataSetsFhirStoresFhirCapabilities
projectsLocationsDataSetsFhirStoresFhirCapabilities pPldsfsfcName_ =
  ProjectsLocationsDataSetsFhirStoresFhirCapabilities'
    { _pldsfsfcXgafv = Nothing
    , _pldsfsfcUploadProtocol = Nothing
    , _pldsfsfcAccessToken = Nothing
    , _pldsfsfcUploadType = Nothing
    , _pldsfsfcName = pPldsfsfcName_
    , _pldsfsfcCallback = Nothing
    }


-- | V1 error format.
pldsfsfcXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresFhirCapabilities (Maybe Xgafv)
pldsfsfcXgafv
  = lens _pldsfsfcXgafv
      (\ s a -> s{_pldsfsfcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsfcUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresFhirCapabilities (Maybe Text)
pldsfsfcUploadProtocol
  = lens _pldsfsfcUploadProtocol
      (\ s a -> s{_pldsfsfcUploadProtocol = a})

-- | OAuth access token.
pldsfsfcAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresFhirCapabilities (Maybe Text)
pldsfsfcAccessToken
  = lens _pldsfsfcAccessToken
      (\ s a -> s{_pldsfsfcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsfcUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresFhirCapabilities (Maybe Text)
pldsfsfcUploadType
  = lens _pldsfsfcUploadType
      (\ s a -> s{_pldsfsfcUploadType = a})

-- | Name of the FHIR store to retrieve the capabilities for.
pldsfsfcName :: Lens' ProjectsLocationsDataSetsFhirStoresFhirCapabilities Text
pldsfsfcName
  = lens _pldsfsfcName (\ s a -> s{_pldsfsfcName = a})

-- | JSONP
pldsfsfcCallback :: Lens' ProjectsLocationsDataSetsFhirStoresFhirCapabilities (Maybe Text)
pldsfsfcCallback
  = lens _pldsfsfcCallback
      (\ s a -> s{_pldsfsfcCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresFhirCapabilities
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresFhirCapabilities
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsFhirStoresFhirCapabilities
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresFhirCapabilities'{..}
          = go _pldsfsfcName _pldsfsfcXgafv
              _pldsfsfcUploadProtocol
              _pldsfsfcAccessToken
              _pldsfsfcUploadType
              _pldsfsfcCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresFhirCapabilitiesResource)
                      mempty
