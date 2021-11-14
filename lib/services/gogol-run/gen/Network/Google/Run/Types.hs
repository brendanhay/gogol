{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Run.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Run.Types
    (
    -- * Service Configuration
      runService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * ResourceRequirementsRequests
    , ResourceRequirementsRequests
    , resourceRequirementsRequests
    , rrrAddtional

    -- * ConfigMapKeySelector
    , ConfigMapKeySelector
    , configMapKeySelector
    , cmksKey
    , cmksName
    , cmksLocalObjectReference
    , cmksOptional

    -- * SecretKeySelector
    , SecretKeySelector
    , secretKeySelector
    , sksKey
    , sksName
    , sksLocalObjectReference
    , sksOptional

    -- * TCPSocketAction
    , TCPSocketAction
    , tcpSocketAction
    , tsaHost
    , tsaPort

    -- * Status
    , Status
    , status
    , sStatus
    , sReason
    , sDetails
    , sMetadata
    , sCode
    , sMessage

    -- * Addressable
    , Addressable
    , addressable
    , aURL

    -- * ObjectMetaAnnotations
    , ObjectMetaAnnotations
    , objectMetaAnnotations
    , omaAddtional

    -- * TrafficTarget
    , TrafficTarget
    , trafficTarget
    , ttRevisionName
    , ttConfigurationName
    , ttTag
    , ttLatestRevision
    , ttURL
    , ttPercent

    -- * AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- * AuthorizedDomain
    , AuthorizedDomain
    , authorizedDomain
    , adName
    , adId

    -- * DomainMAppingSpecCertificateMode
    , DomainMAppingSpecCertificateMode (..)

    -- * HTTPHeader
    , HTTPHeader
    , hTTPHeader
    , httphValue
    , httphName

    -- * ListServicesResponse
    , ListServicesResponse
    , listServicesResponse
    , lsrAPIVersion
    , lsrKind
    , lsrItems
    , lsrUnreachable
    , lsrMetadata

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * ResourceRecord
    , ResourceRecord
    , resourceRecord
    , rrRrData
    , rrName
    , rrType

    -- * ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- * Probe
    , Probe
    , probe
    , pSuccessThreshold
    , pFailureThreshold
    , pExec
    , pTCPSocket
    , pTimeoutSeconds
    , pInitialDelaySeconds
    , pHTTPGet
    , pPeriodSeconds

    -- * ListConfigurationsResponse
    , ListConfigurationsResponse
    , listConfigurationsResponse
    , lcrAPIVersion
    , lcrKind
    , lcrItems
    , lcrUnreachable
    , lcrMetadata

    -- * EnvVarSource
    , EnvVarSource
    , envVarSource
    , evsConfigMapKeyRef
    , evsSecretKeyRef

    -- * Service
    , Service
    , service
    , serStatus
    , serAPIVersion
    , serKind
    , serSpec
    , serMetadata

    -- * Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- * StatusCause
    , StatusCause
    , statusCause
    , scField
    , scReason
    , scMessage

    -- * RouteStatus
    , RouteStatus
    , routeStatus
    , rsObservedGeneration
    , rsURL
    , rsAddress
    , rsTraffic
    , rsConditions

    -- * ConfigurationSpec
    , ConfigurationSpec
    , configurationSpec
    , csTemplate

    -- * GoogleCloudRunV1Condition
    , GoogleCloudRunV1Condition
    , googleCloudRunV1Condition
    , gcrvcStatus
    , gcrvcSeverity
    , gcrvcReason
    , gcrvcLastTransitionTime
    , gcrvcType
    , gcrvcMessage

    -- * ListAuthorizedDomainsResponse
    , ListAuthorizedDomainsResponse
    , listAuthorizedDomainsResponse
    , ladrNextPageToken
    , ladrDomains

    -- * ResourceRequirementsLimits
    , ResourceRequirementsLimits
    , resourceRequirementsLimits
    , rrlAddtional

    -- * Volume
    , Volume
    , volume
    , vConfigMap
    , vSecret
    , vName

    -- * ObjectMeta
    , ObjectMeta
    , objectMeta
    , omGenerateName
    , omAnnotations
    , omDeletionTimestamp
    , omUid
    , omDeletionGracePeriodSeconds
    , omResourceVersion
    , omFinalizers
    , omNamespace
    , omOwnerReferences
    , omSelfLink
    , omName
    , omCreationTimestamp
    , omClusterName
    , omLabels
    , omGeneration

    -- * ConfigMapVolumeSource
    , ConfigMapVolumeSource
    , configMapVolumeSource
    , cmvsDefaultMode
    , cmvsItems
    , cmvsName
    , cmvsOptional

    -- * SecretVolumeSource
    , SecretVolumeSource
    , secretVolumeSource
    , svsDefaultMode
    , svsItems
    , svsSecretName
    , svsOptional

    -- * ListRoutesResponse
    , ListRoutesResponse
    , listRoutesResponse
    , lrrAPIVersion
    , lrrKind
    , lrrItems
    , lrrUnreachable
    , lrrMetadata

    -- * RevisionTemplate
    , RevisionTemplate
    , revisionTemplate
    , rtSpec
    , rtMetadata

    -- * StatusDetails
    , StatusDetails
    , statusDetails
    , sdGroup
    , sdCauses
    , sdKind
    , sdUid
    , sdRetryAfterSeconds
    , sdName

    -- * ResourceRequirements
    , ResourceRequirements
    , resourceRequirements
    , rrLimits
    , rrRequests

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- * DomainMAppingSpec
    , DomainMAppingSpec
    , domainMAppingSpec
    , dmasRouteName
    , dmasCertificateMode
    , dmasForceOverride

    -- * Route
    , Route
    , route
    , rStatus
    , rAPIVersion
    , rKind
    , rSpec
    , rMetadata

    -- * SecurityContext
    , SecurityContext
    , securityContext
    , scRunAsUser

    -- * ServiceStatus
    , ServiceStatus
    , serviceStatus
    , ssLatestCreatedRevisionName
    , ssObservedGeneration
    , ssURL
    , ssAddress
    , ssLatestReadyRevisionName
    , ssTraffic
    , ssConditions

    -- * DomainMApping
    , DomainMApping
    , domainMApping
    , dmaStatus
    , dmaAPIVersion
    , dmaKind
    , dmaSpec
    , dmaMetadata

    -- * ConfigurationStatus
    , ConfigurationStatus
    , configurationStatus
    , csLatestCreatedRevisionName
    , csObservedGeneration
    , csLatestReadyRevisionName
    , csConditions

    -- * RouteSpec
    , RouteSpec
    , routeSpec
    , rTraffic

    -- * RevisionStatus
    , RevisionStatus
    , revisionStatus
    , rLogURL
    , rObservedGeneration
    , rImageDigest
    , rServiceName
    , rConditions

    -- * Container
    , Container
    , container
    , cLivenessProbe
    , cImage
    , cTerminationMessagePolicy
    , cCommand
    , cArgs
    , cImagePullPolicy
    , cReadinessProbe
    , cEnv
    , cVolumeMounts
    , cWorkingDir
    , cSecurityContext
    , cResources
    , cName
    , cStartupProbe
    , cTerminationMessagePath
    , cPorts
    , cEnvFrom

    -- * ResourceRecordType
    , ResourceRecordType (..)

    -- * ListMeta
    , ListMeta
    , listMeta
    , lmResourceVersion
    , lmSelfLink
    , lmContinue

    -- * AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- * OwnerReference
    , OwnerReference
    , ownerReference
    , orController
    , orAPIVersion
    , orKind
    , orUid
    , orBlockOwnerDeletion
    , orName

    -- * Xgafv
    , Xgafv (..)

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * ExecAction
    , ExecAction
    , execAction
    , eaCommand

    -- * ObjectMetaLabels
    , ObjectMetaLabels
    , objectMetaLabels
    , omlAddtional

    -- * VolumeMount
    , VolumeMount
    , volumeMount
    , vmSubPath
    , vmName
    , vmMountPath
    , vmReadOnly

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * DomainMAppingStatus
    , DomainMAppingStatus
    , domainMAppingStatus
    , dmasResourceRecords
    , dmasObservedGeneration
    , dmasMAppedRouteName
    , dmasURL
    , dmasConditions

    -- * EnvVar
    , EnvVar
    , envVar
    , evValue
    , evName
    , evValueFrom

    -- * ServiceSpec
    , ServiceSpec
    , serviceSpec
    , sTraffic
    , sTemplate

    -- * Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- * LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- * HTTPGetAction
    , HTTPGetAction
    , hTTPGetAction
    , httpgaHTTPHeaders
    , httpgaPath
    , httpgaScheme
    , httpgaHost

    -- * Configuration
    , Configuration
    , configuration
    , cStatus
    , cAPIVersion
    , cKind
    , cSpec
    , cMetadata

    -- * LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- * AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- * LocalObjectReference
    , LocalObjectReference
    , localObjectReference
    , lorName

    -- * Revision
    , Revision
    , revision
    , revStatus
    , revAPIVersion
    , revKind
    , revSpec
    , revMetadata

    -- * EnvFromSource
    , EnvFromSource
    , envFromSource
    , efsConfigMapRef
    , efsSecretRef
    , efsPrefix

    -- * RevisionSpec
    , RevisionSpec
    , revisionSpec
    , rsServiceAccountName
    , rsContainers
    , rsContainerConcurrency
    , rsTimeoutSeconds
    , rsVolumes

    -- * ConfigMapEnvSource
    , ConfigMapEnvSource
    , configMapEnvSource
    , cmesName
    , cmesLocalObjectReference
    , cmesOptional

    -- * SecretEnvSource
    , SecretEnvSource
    , secretEnvSource
    , sesName
    , sesLocalObjectReference
    , sesOptional

    -- * ListDomainMAppingsResponse
    , ListDomainMAppingsResponse
    , listDomainMAppingsResponse
    , ldmarAPIVersion
    , ldmarKind
    , ldmarItems
    , ldmarUnreachable
    , ldmarMetadata

    -- * ContainerPort
    , ContainerPort
    , containerPort
    , cpProtocol
    , cpName
    , cpContainerPort

    -- * ListRevisionsResponse
    , ListRevisionsResponse
    , listRevisionsResponse
    , lisAPIVersion
    , lisKind
    , lisItems
    , lisUnreachable
    , lisMetadata

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- * KeyToPath
    , KeyToPath
    , keyToPath
    , ktpPath
    , ktpMode
    , ktpKey
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types.Product
import Network.Google.Run.Types.Sum

-- | Default request referring to version 'v1' of the Cloud Run Admin API. This contains the host and root path used as a starting point for constructing service requests.
runService :: ServiceConfig
runService
  = defaultService (ServiceId "run:v1")
      "run.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
