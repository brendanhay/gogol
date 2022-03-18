{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Searchtype
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches for resources in the given FHIR store according to criteria specified as query parameters. Implements the FHIR standard search interaction (<http://hl7.org/implement/standards/fhir/DSTU2/http.html#search DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/http.html#search STU3>, <http://hl7.org/implement/standards/fhir/R4/http.html#search R4>) using the search semantics described in the FHIR Search specification (<http://hl7.org/implement/standards/fhir/DSTU2/search.html DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/search.html STU3>, <http://hl7.org/implement/standards/fhir/R4/search.html R4>). Supports four methods of search defined by the specification: * @GET [base]?[parameters]@ to search across all resources. * @GET [base]\/[type]?[parameters]@ to search resources of a specified type. * @POST [base]\/_search?[parameters]@ as an alternate form having the same semantics as the @GET@ method across all resources. * @POST [base]\/[type]\/_search?[parameters]@ as an alternate form having
-- the same semantics as the @GET@ method for the specified type. The @GET@ and @POST@ methods do not support compartment searches. The @POST@ method does not support @application\/x-www-form-urlencoded@ search parameters. On success, the response body contains a JSON-encoded representation of a @Bundle@ resource of type @searchset@, containing the results of the search. Errors generated by the FHIR store contain a JSON-encoded @OperationOutcome@ resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. The server\'s capability statement, retrieved through capabilities, indicates what search parameters are supported on each FHIR resource. A list of all search parameters defined by the specification can be found in the FHIR Search Parameter Registry (<http://hl7.org/implement/standards/fhir/STU3/searchparameter-registry.html STU3>,
-- <http://hl7.org/implement/standards/fhir/R4/searchparameter-registry.html R4>). FHIR search parameters for DSTU2 can be found on each resource\'s definition page. Supported search modifiers: @:missing@, @:exact@, @:contains@, @:text@, @:in@, @:not-in@, @:above@, @:below@, @:[type]@, @:not@, and @:recurse@. Supported search result parameters: @_sort@, @_count@, @_include@, @_revinclude@, @_summary=text@, @_summary=data@, and @_elements@. The maximum number of search results returned defaults to 100, which can be overridden by the @_count@ parameter up to a maximum limit of 1000. If there are additional results, the returned @Bundle@ contains a link of @relation@ \"next\", which has a @_page_token@ parameter for an opaque pagination token that can be used to retrieve the next page. Resources with a total size larger than 5MB or a field count larger than 50,000 might not be fully searchable as the server might trim its generated search index in those cases. Note: FHIR resources are indexed asynchronously, so
-- there might be a slight delay between the time a resource is created or changes and when the change is reflected in search results. For samples and detailed information, see </healthcare/docs/how-tos/fhir-search Searching for FHIR resources> and </healthcare/docs/how-tos/fhir-advanced-search Advanced FHIR search features>.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.searchtype@.
module Network.Google.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Searchtype
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsFhirStoresFhirSearchtypeResource,

    -- ** Constructing a Request
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirSearchtype,
    HealthcareProjectsLocationsDatasetsFhirStoresFhirSearchtype,
  )
where

import Network.Google.Healthcare.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.searchtype@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresFhirSearchtype' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresFhirSearchtypeResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "fhir"
    Core.:> Core.Capture "resourceType" Core.Text
    Core.:> "_search"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SearchResourcesRequest
    Core.:> Core.Post '[Core.JSON] HttpBody

-- | Searches for resources in the given FHIR store according to criteria specified as query parameters. Implements the FHIR standard search interaction (<http://hl7.org/implement/standards/fhir/DSTU2/http.html#search DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/http.html#search STU3>, <http://hl7.org/implement/standards/fhir/R4/http.html#search R4>) using the search semantics described in the FHIR Search specification (<http://hl7.org/implement/standards/fhir/DSTU2/search.html DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/search.html STU3>, <http://hl7.org/implement/standards/fhir/R4/search.html R4>). Supports four methods of search defined by the specification: * @GET [base]?[parameters]@ to search across all resources. * @GET [base]\/[type]?[parameters]@ to search resources of a specified type. * @POST [base]\/_search?[parameters]@ as an alternate form having the same semantics as the @GET@ method across all resources. * @POST [base]\/[type]\/_search?[parameters]@ as an alternate form having
-- the same semantics as the @GET@ method for the specified type. The @GET@ and @POST@ methods do not support compartment searches. The @POST@ method does not support @application\/x-www-form-urlencoded@ search parameters. On success, the response body contains a JSON-encoded representation of a @Bundle@ resource of type @searchset@, containing the results of the search. Errors generated by the FHIR store contain a JSON-encoded @OperationOutcome@ resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. The server\'s capability statement, retrieved through capabilities, indicates what search parameters are supported on each FHIR resource. A list of all search parameters defined by the specification can be found in the FHIR Search Parameter Registry (<http://hl7.org/implement/standards/fhir/STU3/searchparameter-registry.html STU3>,
-- <http://hl7.org/implement/standards/fhir/R4/searchparameter-registry.html R4>). FHIR search parameters for DSTU2 can be found on each resource\'s definition page. Supported search modifiers: @:missing@, @:exact@, @:contains@, @:text@, @:in@, @:not-in@, @:above@, @:below@, @:[type]@, @:not@, and @:recurse@. Supported search result parameters: @_sort@, @_count@, @_include@, @_revinclude@, @_summary=text@, @_summary=data@, and @_elements@. The maximum number of search results returned defaults to 100, which can be overridden by the @_count@ parameter up to a maximum limit of 1000. If there are additional results, the returned @Bundle@ contains a link of @relation@ \"next\", which has a @_page_token@ parameter for an opaque pagination token that can be used to retrieve the next page. Resources with a total size larger than 5MB or a field count larger than 50,000 might not be fully searchable as the server might trim its generated search index in those cases. Note: FHIR resources are indexed asynchronously, so
-- there might be a slight delay between the time a resource is created or changes and when the change is reflected in search results. For samples and detailed information, see </healthcare/docs/how-tos/fhir-search Searching for FHIR resources> and </healthcare/docs/how-tos/fhir-advanced-search Advanced FHIR search features>.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresFhirSearchtype' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresFhirSearchtype = HealthcareProjectsLocationsDatasetsFhirStoresFhirSearchtype
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the FHIR store to retrieve resources from.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: SearchResourcesRequest,
    -- | The FHIR resource type to search, such as Patient or Observation. For a complete list, see the FHIR Resource Index (<http://hl7.org/implement/standards/fhir/DSTU2/resourcelist.html DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/resourcelist.html STU3>, <http://hl7.org/implement/standards/fhir/R4/resourcelist.html R4>).
    resourceType :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresFhirSearchtype' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresFhirSearchtype ::
  -- |  Name of the FHIR store to retrieve resources from. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SearchResourcesRequest ->
  -- |  The FHIR resource type to search, such as Patient or Observation. For a complete list, see the FHIR Resource Index (<http://hl7.org/implement/standards/fhir/DSTU2/resourcelist.html DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/resourcelist.html STU3>, <http://hl7.org/implement/standards/fhir/R4/resourcelist.html R4>). See 'resourceType'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsFhirStoresFhirSearchtype
newHealthcareProjectsLocationsDatasetsFhirStoresFhirSearchtype parent payload resourceType =
  HealthcareProjectsLocationsDatasetsFhirStoresFhirSearchtype
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      resourceType = resourceType,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsFhirStoresFhirSearchtype
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsFhirStoresFhirSearchtype =
      HttpBody
  type
    Scopes
      HealthcareProjectsLocationsDatasetsFhirStoresFhirSearchtype =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    HealthcareProjectsLocationsDatasetsFhirStoresFhirSearchtype {..} =
      go
        parent
        resourceType
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        healthcareService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  HealthcareProjectsLocationsDatasetsFhirStoresFhirSearchtypeResource
            )
            Core.mempty