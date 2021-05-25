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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.ExecuteBundle
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Executes all the requests in the given Bundle. Implements the FHIR
-- standard batch\/transaction interaction
-- ([DSTU2](http:\/\/hl7.org\/implement\/standards\/fhir\/DSTU2\/http.html#transaction),
-- [STU3](http:\/\/hl7.org\/implement\/standards\/fhir\/STU3\/http.html#transaction),
-- [R4](http:\/\/hl7.org\/implement\/standards\/fhir\/R4\/http.html#transaction)).
-- Supports all interactions within a bundle, except search. This method
-- accepts Bundles of type \`batch\` and \`transaction\`, processing them
-- according to the batch processing rules
-- ([DSTU2](http:\/\/hl7.org\/implement\/standards\/fhir\/DSTU2\/http.html#2.1.0.16.1),
-- [STU3](http:\/\/hl7.org\/implement\/standards\/fhir\/STU3\/http.html#2.21.0.17.1),
-- [R4](http:\/\/hl7.org\/implement\/standards\/fhir\/R4\/http.html#brules))
-- and transaction processing rules
-- ([DSTU2](http:\/\/hl7.org\/implement\/standards\/fhir\/DSTU2\/http.html#2.1.0.16.2),
-- [STU3](http:\/\/hl7.org\/implement\/standards\/fhir\/STU3\/http.html#2.21.0.17.2),
-- [R4](http:\/\/hl7.org\/implement\/standards\/fhir\/R4\/http.html#trules)).
-- The request body must contain a JSON-encoded FHIR \`Bundle\` resource,
-- and the request headers must contain \`Content-Type:
-- application\/fhir+json\`. For a batch bundle or a successful transaction
-- the response body will contain a JSON-encoded representation of a
-- \`Bundle\` resource of type \`batch-response\` or
-- \`transaction-response\` containing one entry for each entry in the
-- request, with the outcome of processing the entry. In the case of an
-- error for a transaction bundle, the response body will contain a
-- JSON-encoded \`OperationOutcome\` resource describing the reason for the
-- error. If the request cannot be mapped to a valid API method on a FHIR
-- store, a generic GCP error might be returned instead. For samples that
-- show how to call \`executeBundle\`, see [Managing FHIR resources using
-- FHIR bundles](\/healthcare\/docs\/how-tos\/fhir-bundles).
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.executeBundle@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.ExecuteBundle
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresFhirExecuteBundleResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresFhirExecuteBundle
    , ProjectsLocationsDataSetsFhirStoresFhirExecuteBundle

    -- * Request Lenses
    , pldsfsfebParent
    , pldsfsfebXgafv
    , pldsfsfebUploadProtocol
    , pldsfsfebAccessToken
    , pldsfsfebUploadType
    , pldsfsfebPayload
    , pldsfsfebCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.executeBundle@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresFhirExecuteBundle' request conforms to.
type ProjectsLocationsDataSetsFhirStoresFhirExecuteBundleResource
     =
     "v1" :>
       Capture "parent" Text :>
         "fhir" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] HTTPBody :> Post '[JSON] HTTPBody

-- | Executes all the requests in the given Bundle. Implements the FHIR
-- standard batch\/transaction interaction
-- ([DSTU2](http:\/\/hl7.org\/implement\/standards\/fhir\/DSTU2\/http.html#transaction),
-- [STU3](http:\/\/hl7.org\/implement\/standards\/fhir\/STU3\/http.html#transaction),
-- [R4](http:\/\/hl7.org\/implement\/standards\/fhir\/R4\/http.html#transaction)).
-- Supports all interactions within a bundle, except search. This method
-- accepts Bundles of type \`batch\` and \`transaction\`, processing them
-- according to the batch processing rules
-- ([DSTU2](http:\/\/hl7.org\/implement\/standards\/fhir\/DSTU2\/http.html#2.1.0.16.1),
-- [STU3](http:\/\/hl7.org\/implement\/standards\/fhir\/STU3\/http.html#2.21.0.17.1),
-- [R4](http:\/\/hl7.org\/implement\/standards\/fhir\/R4\/http.html#brules))
-- and transaction processing rules
-- ([DSTU2](http:\/\/hl7.org\/implement\/standards\/fhir\/DSTU2\/http.html#2.1.0.16.2),
-- [STU3](http:\/\/hl7.org\/implement\/standards\/fhir\/STU3\/http.html#2.21.0.17.2),
-- [R4](http:\/\/hl7.org\/implement\/standards\/fhir\/R4\/http.html#trules)).
-- The request body must contain a JSON-encoded FHIR \`Bundle\` resource,
-- and the request headers must contain \`Content-Type:
-- application\/fhir+json\`. For a batch bundle or a successful transaction
-- the response body will contain a JSON-encoded representation of a
-- \`Bundle\` resource of type \`batch-response\` or
-- \`transaction-response\` containing one entry for each entry in the
-- request, with the outcome of processing the entry. In the case of an
-- error for a transaction bundle, the response body will contain a
-- JSON-encoded \`OperationOutcome\` resource describing the reason for the
-- error. If the request cannot be mapped to a valid API method on a FHIR
-- store, a generic GCP error might be returned instead. For samples that
-- show how to call \`executeBundle\`, see [Managing FHIR resources using
-- FHIR bundles](\/healthcare\/docs\/how-tos\/fhir-bundles).
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresFhirExecuteBundle' smart constructor.
data ProjectsLocationsDataSetsFhirStoresFhirExecuteBundle =
  ProjectsLocationsDataSetsFhirStoresFhirExecuteBundle'
    { _pldsfsfebParent :: !Text
    , _pldsfsfebXgafv :: !(Maybe Xgafv)
    , _pldsfsfebUploadProtocol :: !(Maybe Text)
    , _pldsfsfebAccessToken :: !(Maybe Text)
    , _pldsfsfebUploadType :: !(Maybe Text)
    , _pldsfsfebPayload :: !HTTPBody
    , _pldsfsfebCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresFhirExecuteBundle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsfebParent'
--
-- * 'pldsfsfebXgafv'
--
-- * 'pldsfsfebUploadProtocol'
--
-- * 'pldsfsfebAccessToken'
--
-- * 'pldsfsfebUploadType'
--
-- * 'pldsfsfebPayload'
--
-- * 'pldsfsfebCallback'
projectsLocationsDataSetsFhirStoresFhirExecuteBundle
    :: Text -- ^ 'pldsfsfebParent'
    -> HTTPBody -- ^ 'pldsfsfebPayload'
    -> ProjectsLocationsDataSetsFhirStoresFhirExecuteBundle
projectsLocationsDataSetsFhirStoresFhirExecuteBundle pPldsfsfebParent_ pPldsfsfebPayload_ =
  ProjectsLocationsDataSetsFhirStoresFhirExecuteBundle'
    { _pldsfsfebParent = pPldsfsfebParent_
    , _pldsfsfebXgafv = Nothing
    , _pldsfsfebUploadProtocol = Nothing
    , _pldsfsfebAccessToken = Nothing
    , _pldsfsfebUploadType = Nothing
    , _pldsfsfebPayload = pPldsfsfebPayload_
    , _pldsfsfebCallback = Nothing
    }


-- | Name of the FHIR store in which this bundle will be executed.
pldsfsfebParent :: Lens' ProjectsLocationsDataSetsFhirStoresFhirExecuteBundle Text
pldsfsfebParent
  = lens _pldsfsfebParent
      (\ s a -> s{_pldsfsfebParent = a})

-- | V1 error format.
pldsfsfebXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresFhirExecuteBundle (Maybe Xgafv)
pldsfsfebXgafv
  = lens _pldsfsfebXgafv
      (\ s a -> s{_pldsfsfebXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsfebUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresFhirExecuteBundle (Maybe Text)
pldsfsfebUploadProtocol
  = lens _pldsfsfebUploadProtocol
      (\ s a -> s{_pldsfsfebUploadProtocol = a})

-- | OAuth access token.
pldsfsfebAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresFhirExecuteBundle (Maybe Text)
pldsfsfebAccessToken
  = lens _pldsfsfebAccessToken
      (\ s a -> s{_pldsfsfebAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsfebUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresFhirExecuteBundle (Maybe Text)
pldsfsfebUploadType
  = lens _pldsfsfebUploadType
      (\ s a -> s{_pldsfsfebUploadType = a})

-- | Multipart request metadata.
pldsfsfebPayload :: Lens' ProjectsLocationsDataSetsFhirStoresFhirExecuteBundle HTTPBody
pldsfsfebPayload
  = lens _pldsfsfebPayload
      (\ s a -> s{_pldsfsfebPayload = a})

-- | JSONP
pldsfsfebCallback :: Lens' ProjectsLocationsDataSetsFhirStoresFhirExecuteBundle (Maybe Text)
pldsfsfebCallback
  = lens _pldsfsfebCallback
      (\ s a -> s{_pldsfsfebCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresFhirExecuteBundle
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresFhirExecuteBundle
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsFhirStoresFhirExecuteBundle
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresFhirExecuteBundle'{..}
          = go _pldsfsfebParent _pldsfsfebXgafv
              _pldsfsfebUploadProtocol
              _pldsfsfebAccessToken
              _pldsfsfebUploadType
              _pldsfsfebCallback
              (Just AltJSON)
              _pldsfsfebPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresFhirExecuteBundleResource)
                      mempty
