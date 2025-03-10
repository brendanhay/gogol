{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Search
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches for resources in the given FHIR store according to criteria specified as query parameters. Implements the FHIR standard search interaction (<http://hl7.org/implement/standards/fhir/DSTU2/http.html#search DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/http.html#search STU3>, <http://hl7.org/implement/standards/fhir/R4/http.html#search R4>) using the search semantics described in the FHIR Search specification (<http://hl7.org/implement/standards/fhir/DSTU2/search.html DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/search.html STU3>, <http://hl7.org/implement/standards/fhir/R4/search.html R4>). Supports four methods of search defined by the specification: * @GET [base]?[parameters]@ to search across all resources. * @GET [base]\/[type]?[parameters]@ to search resources of a specified type. * @POST [base]\/_search?[parameters]@ as an alternate form having the same semantics as the @GET@ method across all resources. * @POST [base]\/[type]\/_search?[parameters]@ as an alternate form having
-- the same semantics as the @GET@ method for the specified type. The @GET@ and @POST@ methods do not support compartment searches. The @POST@ method does not support @application\/x-www-form-urlencoded@ search parameters. On success, the response body contains a JSON-encoded representation of a @Bundle@ resource of type @searchset@, containing the results of the search. Errors generated by the FHIR store contain a JSON-encoded @OperationOutcome@ resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. The server\'s capability statement, retrieved through capabilities, indicates what search parameters are supported on each FHIR resource. A list of all search parameters defined by the specification can be found in the FHIR Search Parameter Registry (<http://hl7.org/implement/standards/fhir/STU3/searchparameter-registry.html STU3>,
-- <http://hl7.org/implement/standards/fhir/R4/searchparameter-registry.html R4>). FHIR search parameters for DSTU2 can be found on each resource\'s definition page. Supported search modifiers: @:missing@, @:exact@, @:contains@, @:text@, @:in@, @:not-in@, @:above@, @:below@, @:[type]@, @:not@, and @recurse@ (DSTU2 and STU3) or @:iterate@ (R4). Supported search result parameters: @_sort@, @_count@, @_include@, @_revinclude@, @_summary=text@, @_summary=data@, and @_elements@. The maximum number of search results returned defaults to 100, which can be overridden by the @_count@ parameter up to a maximum limit of 1000. The server might return fewer resources than requested to prevent excessively large responses. If there are additional results, the returned @Bundle@ contains a link of @relation@ \"next\", which has a @_page_token@ parameter for an opaque pagination token that can be used to retrieve the next page. Resources with a total size larger than 5MB or a field count larger than 50,000 might not be fully
-- searchable as the server might trim its generated search index in those cases. Note: FHIR resources are indexed asynchronously, so there might be a slight delay between the time a resource is created or changed, and the time when the change reflects in search results. The only exception is resource identifier data, which is indexed synchronously as a special index. As a result, searching using resource identifier is not subject to indexing delay. To use the special synchronous index, the search term for identifier should be in the pattern @identifier=[system]|[value]@ or @identifier=[value]@, and any of the following search result parameters can be used: * @_count@ * @_include@ * @_revinclude@ * @_summary@ * @_elements@ If your query contains any other search parameters, the standard asynchronous index will be used instead. Note that searching against the special index is optimized for resolving a small number of matches. The search isn\'t optimized if your identifier search criteria matches a large number
-- (i.e. more than 2,000) of resources. For a search query that will match a large number of resources, you can avoiding using the special synchronous index by including an additional @_sort@ parameter in your query. Use @_sort=-_lastUpdated@ if you want to keep the default sorting order. Note: The special synchronous identifier index are currently disabled for DocumentReference and DocumentManifest searches. For samples and detailed information, see <https://cloud.google.com/healthcare/docs/how-tos/fhir-search Searching for FHIR resources> and <https://cloud.google.com/healthcare/docs/how-tos/fhir-advanced-search Advanced FHIR search features>.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.search@.
module Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Search
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsFhirStoresFhirSearchResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsFhirStoresFhirSearch (..),
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirSearch,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.search@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresFhirSearch' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresFhirSearchResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "fhir"
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
-- <http://hl7.org/implement/standards/fhir/R4/searchparameter-registry.html R4>). FHIR search parameters for DSTU2 can be found on each resource\'s definition page. Supported search modifiers: @:missing@, @:exact@, @:contains@, @:text@, @:in@, @:not-in@, @:above@, @:below@, @:[type]@, @:not@, and @recurse@ (DSTU2 and STU3) or @:iterate@ (R4). Supported search result parameters: @_sort@, @_count@, @_include@, @_revinclude@, @_summary=text@, @_summary=data@, and @_elements@. The maximum number of search results returned defaults to 100, which can be overridden by the @_count@ parameter up to a maximum limit of 1000. The server might return fewer resources than requested to prevent excessively large responses. If there are additional results, the returned @Bundle@ contains a link of @relation@ \"next\", which has a @_page_token@ parameter for an opaque pagination token that can be used to retrieve the next page. Resources with a total size larger than 5MB or a field count larger than 50,000 might not be fully
-- searchable as the server might trim its generated search index in those cases. Note: FHIR resources are indexed asynchronously, so there might be a slight delay between the time a resource is created or changed, and the time when the change reflects in search results. The only exception is resource identifier data, which is indexed synchronously as a special index. As a result, searching using resource identifier is not subject to indexing delay. To use the special synchronous index, the search term for identifier should be in the pattern @identifier=[system]|[value]@ or @identifier=[value]@, and any of the following search result parameters can be used: * @_count@ * @_include@ * @_revinclude@ * @_summary@ * @_elements@ If your query contains any other search parameters, the standard asynchronous index will be used instead. Note that searching against the special index is optimized for resolving a small number of matches. The search isn\'t optimized if your identifier search criteria matches a large number
-- (i.e. more than 2,000) of resources. For a search query that will match a large number of resources, you can avoiding using the special synchronous index by including an additional @_sort@ parameter in your query. Use @_sort=-_lastUpdated@ if you want to keep the default sorting order. Note: The special synchronous identifier index are currently disabled for DocumentReference and DocumentManifest searches. For samples and detailed information, see <https://cloud.google.com/healthcare/docs/how-tos/fhir-search Searching for FHIR resources> and <https://cloud.google.com/healthcare/docs/how-tos/fhir-advanced-search Advanced FHIR search features>.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresFhirSearch' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresFhirSearch = HealthcareProjectsLocationsDatasetsFhirStoresFhirSearch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the FHIR store to retrieve resources from.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: SearchResourcesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresFhirSearch' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresFhirSearch ::
  -- |  Required. Name of the FHIR store to retrieve resources from. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SearchResourcesRequest ->
  HealthcareProjectsLocationsDatasetsFhirStoresFhirSearch
newHealthcareProjectsLocationsDatasetsFhirStoresFhirSearch
  parent
  payload =
    HealthcareProjectsLocationsDatasetsFhirStoresFhirSearch
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        parent = parent,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsFhirStoresFhirSearch
  where
  type
    Rs HealthcareProjectsLocationsDatasetsFhirStoresFhirSearch =
      HttpBody
  type
    Scopes HealthcareProjectsLocationsDatasetsFhirStoresFhirSearch =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsFhirStoresFhirSearch {..} =
      go
        parent
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
                  HealthcareProjectsLocationsDatasetsFhirStoresFhirSearchResource
            )
            Core.mempty
