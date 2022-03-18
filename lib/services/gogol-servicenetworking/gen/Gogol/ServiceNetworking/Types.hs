{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ServiceNetworking.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.ServiceNetworking.Types
    (
    -- * Configuration
      serviceNetworkingService

    -- * OAuth Scopes
    , cloudPlatformScope
    , serviceManagementScope

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AddDnsRecordSetMetadata
    , AddDnsRecordSetMetadata (..)
    , newAddDnsRecordSetMetadata

    -- ** AddDnsRecordSetRequest
    , AddDnsRecordSetRequest (..)
    , newAddDnsRecordSetRequest

    -- ** AddDnsZoneMetadata
    , AddDnsZoneMetadata (..)
    , newAddDnsZoneMetadata

    -- ** AddDnsZoneRequest
    , AddDnsZoneRequest (..)
    , newAddDnsZoneRequest

    -- ** AddDnsZoneResponse
    , AddDnsZoneResponse (..)
    , newAddDnsZoneResponse

    -- ** AddRolesMetadata
    , AddRolesMetadata (..)
    , newAddRolesMetadata

    -- ** AddRolesRequest
    , AddRolesRequest (..)
    , newAddRolesRequest

    -- ** AddRolesResponse
    , AddRolesResponse (..)
    , newAddRolesResponse

    -- ** AddSubnetworkRequest
    , AddSubnetworkRequest (..)
    , newAddSubnetworkRequest

    -- ** Api
    , Api (..)
    , newApi

    -- ** Api_Syntax
    , Api_Syntax (..)

    -- ** AuthProvider
    , AuthProvider (..)
    , newAuthProvider

    -- ** AuthRequirement
    , AuthRequirement (..)
    , newAuthRequirement

    -- ** Authentication
    , Authentication (..)
    , newAuthentication

    -- ** AuthenticationRule
    , AuthenticationRule (..)
    , newAuthenticationRule

    -- ** Backend
    , Backend (..)
    , newBackend

    -- ** BackendRule
    , BackendRule (..)
    , newBackendRule

    -- ** BackendRule_PathTranslation
    , BackendRule_PathTranslation (..)

    -- ** Billing
    , Billing (..)
    , newBilling

    -- ** BillingDestination
    , BillingDestination (..)
    , newBillingDestination

    -- ** CancelOperationRequest
    , CancelOperationRequest (..)
    , newCancelOperationRequest

    -- ** Connection
    , Connection (..)
    , newConnection

    -- ** ConsumerConfig
    , ConsumerConfig (..)
    , newConsumerConfig

    -- ** ConsumerConfigMetadata
    , ConsumerConfigMetadata (..)
    , newConsumerConfigMetadata

    -- ** ConsumerProject
    , ConsumerProject (..)
    , newConsumerProject

    -- ** Context
    , Context (..)
    , newContext

    -- ** ContextRule
    , ContextRule (..)
    , newContextRule

    -- ** Control
    , Control (..)
    , newControl

    -- ** CustomError
    , CustomError (..)
    , newCustomError

    -- ** CustomErrorRule
    , CustomErrorRule (..)
    , newCustomErrorRule

    -- ** CustomHttpPattern
    , CustomHttpPattern (..)
    , newCustomHttpPattern

    -- ** DeleteConnectionMetadata
    , DeleteConnectionMetadata (..)
    , newDeleteConnectionMetadata

    -- ** DeleteConnectionRequest
    , DeleteConnectionRequest (..)
    , newDeleteConnectionRequest

    -- ** DeletePeeredDnsDomainMetadata
    , DeletePeeredDnsDomainMetadata (..)
    , newDeletePeeredDnsDomainMetadata

    -- ** DisableVpcServiceControlsRequest
    , DisableVpcServiceControlsRequest (..)
    , newDisableVpcServiceControlsRequest

    -- ** DnsRecordSet
    , DnsRecordSet (..)
    , newDnsRecordSet

    -- ** DnsZone
    , DnsZone (..)
    , newDnsZone

    -- ** Documentation
    , Documentation (..)
    , newDocumentation

    -- ** DocumentationRule
    , DocumentationRule (..)
    , newDocumentationRule

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** EnableVpcServiceControlsRequest
    , EnableVpcServiceControlsRequest (..)
    , newEnableVpcServiceControlsRequest

    -- ** Endpoint
    , Endpoint (..)
    , newEndpoint

    -- ** Enum'
    , Enum' (..)
    , newEnum

    -- ** Enum_Syntax
    , Enum_Syntax (..)

    -- ** EnumValue
    , EnumValue (..)
    , newEnumValue

    -- ** Field
    , Field (..)
    , newField

    -- ** Field_Cardinality
    , Field_Cardinality (..)

    -- ** Field_Kind
    , Field_Kind (..)

    -- ** GoogleCloudServicenetworkingV1ConsumerConfigReservedRange
    , GoogleCloudServicenetworkingV1ConsumerConfigReservedRange (..)
    , newGoogleCloudServicenetworkingV1ConsumerConfigReservedRange

    -- ** GoogleCloudServicenetworkingV1betaConnection
    , GoogleCloudServicenetworkingV1betaConnection (..)
    , newGoogleCloudServicenetworkingV1betaConnection

    -- ** GoogleCloudServicenetworkingV1betaSubnetwork
    , GoogleCloudServicenetworkingV1betaSubnetwork (..)
    , newGoogleCloudServicenetworkingV1betaSubnetwork

    -- ** Http
    , Http (..)
    , newHttp

    -- ** HttpRule
    , HttpRule (..)
    , newHttpRule

    -- ** JwtLocation
    , JwtLocation (..)
    , newJwtLocation

    -- ** LabelDescriptor
    , LabelDescriptor (..)
    , newLabelDescriptor

    -- ** LabelDescriptor_ValueType
    , LabelDescriptor_ValueType (..)

    -- ** ListConnectionsResponse
    , ListConnectionsResponse (..)
    , newListConnectionsResponse

    -- ** ListOperationsResponse
    , ListOperationsResponse (..)
    , newListOperationsResponse

    -- ** ListPeeredDnsDomainsResponse
    , ListPeeredDnsDomainsResponse (..)
    , newListPeeredDnsDomainsResponse

    -- ** LogDescriptor
    , LogDescriptor (..)
    , newLogDescriptor

    -- ** Logging
    , Logging (..)
    , newLogging

    -- ** LoggingDestination
    , LoggingDestination (..)
    , newLoggingDestination

    -- ** Method
    , Method (..)
    , newMethod

    -- ** Method_Syntax
    , Method_Syntax (..)

    -- ** MetricDescriptor
    , MetricDescriptor (..)
    , newMetricDescriptor

    -- ** MetricDescriptor_LaunchStage
    , MetricDescriptor_LaunchStage (..)

    -- ** MetricDescriptor_MetricKind
    , MetricDescriptor_MetricKind (..)

    -- ** MetricDescriptor_ValueType
    , MetricDescriptor_ValueType (..)

    -- ** MetricDescriptorMetadata
    , MetricDescriptorMetadata (..)
    , newMetricDescriptorMetadata

    -- ** MetricDescriptorMetadata_LaunchStage
    , MetricDescriptorMetadata_LaunchStage (..)

    -- ** MetricRule
    , MetricRule (..)
    , newMetricRule

    -- ** MetricRule_MetricCosts
    , MetricRule_MetricCosts (..)
    , newMetricRule_MetricCosts

    -- ** Mixin
    , Mixin (..)
    , newMixin

    -- ** MonitoredResourceDescriptor
    , MonitoredResourceDescriptor (..)
    , newMonitoredResourceDescriptor

    -- ** MonitoredResourceDescriptor_LaunchStage
    , MonitoredResourceDescriptor_LaunchStage (..)

    -- ** Monitoring
    , Monitoring (..)
    , newMonitoring

    -- ** MonitoringDestination
    , MonitoringDestination (..)
    , newMonitoringDestination

    -- ** OAuthRequirements
    , OAuthRequirements (..)
    , newOAuthRequirements

    -- ** Operation
    , Operation (..)
    , newOperation

    -- ** Operation_Metadata
    , Operation_Metadata (..)
    , newOperation_Metadata

    -- ** Operation_Response
    , Operation_Response (..)
    , newOperation_Response

    -- ** Option
    , Option (..)
    , newOption

    -- ** Option_Value
    , Option_Value (..)
    , newOption_Value

    -- ** Page
    , Page (..)
    , newPage

    -- ** PartialDeleteConnectionMetadata
    , PartialDeleteConnectionMetadata (..)
    , newPartialDeleteConnectionMetadata

    -- ** PeeredDnsDomain
    , PeeredDnsDomain (..)
    , newPeeredDnsDomain

    -- ** PeeredDnsDomainMetadata
    , PeeredDnsDomainMetadata (..)
    , newPeeredDnsDomainMetadata

    -- ** PolicyBinding
    , PolicyBinding (..)
    , newPolicyBinding

    -- ** Quota
    , Quota (..)
    , newQuota

    -- ** QuotaLimit
    , QuotaLimit (..)
    , newQuotaLimit

    -- ** QuotaLimit_Values
    , QuotaLimit_Values (..)
    , newQuotaLimit_Values

    -- ** Range
    , Range (..)
    , newRange

    -- ** RangeReservation
    , RangeReservation (..)
    , newRangeReservation

    -- ** RemoveDnsRecordSetMetadata
    , RemoveDnsRecordSetMetadata (..)
    , newRemoveDnsRecordSetMetadata

    -- ** RemoveDnsRecordSetRequest
    , RemoveDnsRecordSetRequest (..)
    , newRemoveDnsRecordSetRequest

    -- ** RemoveDnsRecordSetResponse
    , RemoveDnsRecordSetResponse (..)
    , newRemoveDnsRecordSetResponse

    -- ** RemoveDnsZoneMetadata
    , RemoveDnsZoneMetadata (..)
    , newRemoveDnsZoneMetadata

    -- ** RemoveDnsZoneRequest
    , RemoveDnsZoneRequest (..)
    , newRemoveDnsZoneRequest

    -- ** RemoveDnsZoneResponse
    , RemoveDnsZoneResponse (..)
    , newRemoveDnsZoneResponse

    -- ** Route
    , Route (..)
    , newRoute

    -- ** SearchRangeRequest
    , SearchRangeRequest (..)
    , newSearchRangeRequest

    -- ** SecondaryIpRange
    , SecondaryIpRange (..)
    , newSecondaryIpRange

    -- ** SecondaryIpRangeSpec
    , SecondaryIpRangeSpec (..)
    , newSecondaryIpRangeSpec

    -- ** Service
    , Service (..)
    , newService

    -- ** SourceContext
    , SourceContext (..)
    , newSourceContext

    -- ** SourceInfo
    , SourceInfo (..)
    , newSourceInfo

    -- ** SourceInfo_SourceFilesItem
    , SourceInfo_SourceFilesItem (..)
    , newSourceInfo_SourceFilesItem

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** Subnetwork
    , Subnetwork (..)
    , newSubnetwork

    -- ** SystemParameter
    , SystemParameter (..)
    , newSystemParameter

    -- ** SystemParameterRule
    , SystemParameterRule (..)
    , newSystemParameterRule

    -- ** SystemParameters
    , SystemParameters (..)
    , newSystemParameters

    -- ** Type
    , Type (..)
    , newType

    -- ** Type_Syntax
    , Type_Syntax (..)

    -- ** UpdateConsumerConfigRequest
    , UpdateConsumerConfigRequest (..)
    , newUpdateConsumerConfigRequest

    -- ** UpdateDnsRecordSetMetadata
    , UpdateDnsRecordSetMetadata (..)
    , newUpdateDnsRecordSetMetadata

    -- ** UpdateDnsRecordSetRequest
    , UpdateDnsRecordSetRequest (..)
    , newUpdateDnsRecordSetRequest

    -- ** Usage
    , Usage (..)
    , newUsage

    -- ** UsageRule
    , UsageRule (..)
    , newUsageRule

    -- ** ValidateConsumerConfigRequest
    , ValidateConsumerConfigRequest (..)
    , newValidateConsumerConfigRequest

    -- ** ValidateConsumerConfigResponse
    , ValidateConsumerConfigResponse (..)
    , newValidateConsumerConfigResponse

    -- ** ValidateConsumerConfigResponse_ValidationError
    , ValidateConsumerConfigResponse_ValidationError (..)
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ServiceNetworking.Internal.Product
import Gogol.ServiceNetworking.Internal.Sum

-- | Default request referring to version @v1@ of the Service Networking API. This contains the host and root path used as a starting point for constructing service requests.
serviceNetworkingService :: Core.ServiceConfig
serviceNetworkingService
  = Core.defaultService
      (Core.ServiceId "servicenetworking:v1")
      "servicenetworking.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy

-- | Manage your Google API service configuration
serviceManagementScope :: Core.Proxy '["https://www.googleapis.com/auth/service.management"]
serviceManagementScope = Core.Proxy
