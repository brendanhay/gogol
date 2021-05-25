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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Import
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports resources to the FHIR store by loading data from the specified
-- sources. This method is optimized to load large quantities of data using
-- import semantics that ignore some FHIR store configuration options and
-- are not suitable for all use cases. It is primarily intended to load
-- data into an empty FHIR store that is not being used by other clients.
-- In cases where this method is not appropriate, consider using
-- ExecuteBundle to load data. Every resource in the input must contain a
-- client-supplied ID. Each resource is stored using the supplied ID
-- regardless of the enable_update_create setting on the FHIR store. It is
-- strongly advised not to include or encode any sensitive data such as
-- patient identifiers in client-specified resource IDs. Those IDs are part
-- of the FHIR resource path recorded in Cloud Audit Logs and Cloud
-- Pub\/Sub notifications. Those IDs can also be contained in reference
-- fields within other resources. The import process does not enforce
-- referential integrity, regardless of the disable_referential_integrity
-- setting on the FHIR store. This allows the import of resources with
-- arbitrary interdependencies without considering grouping or ordering,
-- but if the input data contains invalid references or if some resources
-- fail to be imported, the FHIR store might be left in a state that
-- violates referential integrity. The import process does not trigger
-- Pub\/Sub notification or BigQuery streaming update, regardless of how
-- those are configured on the FHIR store. If a resource with the specified
-- ID already exists, the most recent version of the resource is
-- overwritten without creating a new historical version, regardless of the
-- disable_resource_versioning setting on the FHIR store. If transient
-- failures occur during the import, it\'s possible that successfully
-- imported resources will be overwritten more than once. The import
-- operation is idempotent unless the input data contains multiple valid
-- resources with the same ID but different contents. In that case, after
-- the import completes, the store contains exactly one resource with that
-- ID but there is no ordering guarantee on which version of the contents
-- it will have. The operation result counters do not count duplicate IDs
-- as an error and count one success for each resource in the input, which
-- might result in a success count larger than the number of resources in
-- the FHIR store. This often occurs when importing data organized in
-- bundles produced by Patient-everything where each bundle contains its
-- own copy of a resource such as Practitioner that might be referred to by
-- many patients. If some resources fail to import, for example due to
-- parsing errors, successfully imported resources are not rolled back. The
-- location and format of the input data is specified by the parameters in
-- ImportResourcesRequest. Note that if no format is specified, this method
-- assumes the \`BUNDLE\` format. When using the \`BUNDLE\` format this
-- method ignores the \`Bundle.type\` field, except that \`history\`
-- bundles are rejected, and does not apply any of the bundle processing
-- semantics for batch or transaction bundles. Unlike in ExecuteBundle,
-- transaction bundles are not executed as a single transaction and
-- bundle-internal references are not rewritten. The bundle is treated as a
-- collection of resources to be written as provided in
-- \`Bundle.entry.resource\`, ignoring \`Bundle.entry.request\`. As an
-- example, this allows the import of \`searchset\` bundles produced by a
-- FHIR search or Patient-everything operation. This method returns an
-- Operation that can be used to track the status of the import by calling
-- GetOperation. Immediate fatal errors appear in the error field, errors
-- are also logged to Cloud Logging (see [Viewing error logs in Cloud
-- Logging](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/logging)).
-- Otherwise, when the operation finishes, a detailed response of type
-- ImportResourcesResponse is returned in the response field. The metadata
-- field type for this operation is OperationMetadata.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.import@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Import
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresImportResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresImport
    , ProjectsLocationsDataSetsFhirStoresImport

    -- * Request Lenses
    , pldsfsiXgafv
    , pldsfsiUploadProtocol
    , pldsfsiAccessToken
    , pldsfsiUploadType
    , pldsfsiPayload
    , pldsfsiName
    , pldsfsiCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.import@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresImport' request conforms to.
type ProjectsLocationsDataSetsFhirStoresImportResource
     =
     "v1" :>
       CaptureMode "name" "import" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ImportResourcesRequest :>
                       Post '[JSON] Operation

-- | Imports resources to the FHIR store by loading data from the specified
-- sources. This method is optimized to load large quantities of data using
-- import semantics that ignore some FHIR store configuration options and
-- are not suitable for all use cases. It is primarily intended to load
-- data into an empty FHIR store that is not being used by other clients.
-- In cases where this method is not appropriate, consider using
-- ExecuteBundle to load data. Every resource in the input must contain a
-- client-supplied ID. Each resource is stored using the supplied ID
-- regardless of the enable_update_create setting on the FHIR store. It is
-- strongly advised not to include or encode any sensitive data such as
-- patient identifiers in client-specified resource IDs. Those IDs are part
-- of the FHIR resource path recorded in Cloud Audit Logs and Cloud
-- Pub\/Sub notifications. Those IDs can also be contained in reference
-- fields within other resources. The import process does not enforce
-- referential integrity, regardless of the disable_referential_integrity
-- setting on the FHIR store. This allows the import of resources with
-- arbitrary interdependencies without considering grouping or ordering,
-- but if the input data contains invalid references or if some resources
-- fail to be imported, the FHIR store might be left in a state that
-- violates referential integrity. The import process does not trigger
-- Pub\/Sub notification or BigQuery streaming update, regardless of how
-- those are configured on the FHIR store. If a resource with the specified
-- ID already exists, the most recent version of the resource is
-- overwritten without creating a new historical version, regardless of the
-- disable_resource_versioning setting on the FHIR store. If transient
-- failures occur during the import, it\'s possible that successfully
-- imported resources will be overwritten more than once. The import
-- operation is idempotent unless the input data contains multiple valid
-- resources with the same ID but different contents. In that case, after
-- the import completes, the store contains exactly one resource with that
-- ID but there is no ordering guarantee on which version of the contents
-- it will have. The operation result counters do not count duplicate IDs
-- as an error and count one success for each resource in the input, which
-- might result in a success count larger than the number of resources in
-- the FHIR store. This often occurs when importing data organized in
-- bundles produced by Patient-everything where each bundle contains its
-- own copy of a resource such as Practitioner that might be referred to by
-- many patients. If some resources fail to import, for example due to
-- parsing errors, successfully imported resources are not rolled back. The
-- location and format of the input data is specified by the parameters in
-- ImportResourcesRequest. Note that if no format is specified, this method
-- assumes the \`BUNDLE\` format. When using the \`BUNDLE\` format this
-- method ignores the \`Bundle.type\` field, except that \`history\`
-- bundles are rejected, and does not apply any of the bundle processing
-- semantics for batch or transaction bundles. Unlike in ExecuteBundle,
-- transaction bundles are not executed as a single transaction and
-- bundle-internal references are not rewritten. The bundle is treated as a
-- collection of resources to be written as provided in
-- \`Bundle.entry.resource\`, ignoring \`Bundle.entry.request\`. As an
-- example, this allows the import of \`searchset\` bundles produced by a
-- FHIR search or Patient-everything operation. This method returns an
-- Operation that can be used to track the status of the import by calling
-- GetOperation. Immediate fatal errors appear in the error field, errors
-- are also logged to Cloud Logging (see [Viewing error logs in Cloud
-- Logging](https:\/\/cloud.google.com\/healthcare\/docs\/how-tos\/logging)).
-- Otherwise, when the operation finishes, a detailed response of type
-- ImportResourcesResponse is returned in the response field. The metadata
-- field type for this operation is OperationMetadata.
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresImport' smart constructor.
data ProjectsLocationsDataSetsFhirStoresImport =
  ProjectsLocationsDataSetsFhirStoresImport'
    { _pldsfsiXgafv :: !(Maybe Xgafv)
    , _pldsfsiUploadProtocol :: !(Maybe Text)
    , _pldsfsiAccessToken :: !(Maybe Text)
    , _pldsfsiUploadType :: !(Maybe Text)
    , _pldsfsiPayload :: !ImportResourcesRequest
    , _pldsfsiName :: !Text
    , _pldsfsiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresImport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsiXgafv'
--
-- * 'pldsfsiUploadProtocol'
--
-- * 'pldsfsiAccessToken'
--
-- * 'pldsfsiUploadType'
--
-- * 'pldsfsiPayload'
--
-- * 'pldsfsiName'
--
-- * 'pldsfsiCallback'
projectsLocationsDataSetsFhirStoresImport
    :: ImportResourcesRequest -- ^ 'pldsfsiPayload'
    -> Text -- ^ 'pldsfsiName'
    -> ProjectsLocationsDataSetsFhirStoresImport
projectsLocationsDataSetsFhirStoresImport pPldsfsiPayload_ pPldsfsiName_ =
  ProjectsLocationsDataSetsFhirStoresImport'
    { _pldsfsiXgafv = Nothing
    , _pldsfsiUploadProtocol = Nothing
    , _pldsfsiAccessToken = Nothing
    , _pldsfsiUploadType = Nothing
    , _pldsfsiPayload = pPldsfsiPayload_
    , _pldsfsiName = pPldsfsiName_
    , _pldsfsiCallback = Nothing
    }


-- | V1 error format.
pldsfsiXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresImport (Maybe Xgafv)
pldsfsiXgafv
  = lens _pldsfsiXgafv (\ s a -> s{_pldsfsiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsiUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresImport (Maybe Text)
pldsfsiUploadProtocol
  = lens _pldsfsiUploadProtocol
      (\ s a -> s{_pldsfsiUploadProtocol = a})

-- | OAuth access token.
pldsfsiAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresImport (Maybe Text)
pldsfsiAccessToken
  = lens _pldsfsiAccessToken
      (\ s a -> s{_pldsfsiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsiUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresImport (Maybe Text)
pldsfsiUploadType
  = lens _pldsfsiUploadType
      (\ s a -> s{_pldsfsiUploadType = a})

-- | Multipart request metadata.
pldsfsiPayload :: Lens' ProjectsLocationsDataSetsFhirStoresImport ImportResourcesRequest
pldsfsiPayload
  = lens _pldsfsiPayload
      (\ s a -> s{_pldsfsiPayload = a})

-- | The name of the FHIR store to import FHIR resources to, in the format of
-- \`projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}\`.
pldsfsiName :: Lens' ProjectsLocationsDataSetsFhirStoresImport Text
pldsfsiName
  = lens _pldsfsiName (\ s a -> s{_pldsfsiName = a})

-- | JSONP
pldsfsiCallback :: Lens' ProjectsLocationsDataSetsFhirStoresImport (Maybe Text)
pldsfsiCallback
  = lens _pldsfsiCallback
      (\ s a -> s{_pldsfsiCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresImport
         where
        type Rs ProjectsLocationsDataSetsFhirStoresImport =
             Operation
        type Scopes ProjectsLocationsDataSetsFhirStoresImport
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresImport'{..}
          = go _pldsfsiName _pldsfsiXgafv
              _pldsfsiUploadProtocol
              _pldsfsiAccessToken
              _pldsfsiUploadType
              _pldsfsiCallback
              (Just AltJSON)
              _pldsfsiPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresImportResource)
                      mempty
