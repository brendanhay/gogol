{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Run
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deploy and manage user provided container images that scale
-- automatically based on incoming requests. The Cloud Run Admin API
-- follows the Knative Serving API specification.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference>
module Network.Google.Run
    (
    -- * Service Configuration
      runService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , RunAPI

    -- * Resources

    -- ** run.namespaces.authorizeddomains.list
    , module Network.Google.Resource.Run.Namespaces.Authorizeddomains.List

    -- ** run.namespaces.configurations.get
    , module Network.Google.Resource.Run.Namespaces.Configurations.Get

    -- ** run.namespaces.configurations.list
    , module Network.Google.Resource.Run.Namespaces.Configurations.List

    -- ** run.namespaces.domainmappings.create
    , module Network.Google.Resource.Run.Namespaces.DomainmAppings.Create

    -- ** run.namespaces.domainmappings.delete
    , module Network.Google.Resource.Run.Namespaces.DomainmAppings.Delete

    -- ** run.namespaces.domainmappings.get
    , module Network.Google.Resource.Run.Namespaces.DomainmAppings.Get

    -- ** run.namespaces.domainmappings.list
    , module Network.Google.Resource.Run.Namespaces.DomainmAppings.List

    -- ** run.namespaces.revisions.delete
    , module Network.Google.Resource.Run.Namespaces.Revisions.Delete

    -- ** run.namespaces.revisions.get
    , module Network.Google.Resource.Run.Namespaces.Revisions.Get

    -- ** run.namespaces.revisions.list
    , module Network.Google.Resource.Run.Namespaces.Revisions.List

    -- ** run.namespaces.routes.get
    , module Network.Google.Resource.Run.Namespaces.Routes.Get

    -- ** run.namespaces.routes.list
    , module Network.Google.Resource.Run.Namespaces.Routes.List

    -- ** run.namespaces.services.create
    , module Network.Google.Resource.Run.Namespaces.Services.Create

    -- ** run.namespaces.services.delete
    , module Network.Google.Resource.Run.Namespaces.Services.Delete

    -- ** run.namespaces.services.get
    , module Network.Google.Resource.Run.Namespaces.Services.Get

    -- ** run.namespaces.services.list
    , module Network.Google.Resource.Run.Namespaces.Services.List

    -- ** run.namespaces.services.replaceService
    , module Network.Google.Resource.Run.Namespaces.Services.ReplaceService

    -- ** run.projects.authorizeddomains.list
    , module Network.Google.Resource.Run.Projects.Authorizeddomains.List

    -- ** run.projects.locations.authorizeddomains.list
    , module Network.Google.Resource.Run.Projects.Locations.Authorizeddomains.List

    -- ** run.projects.locations.configurations.get
    , module Network.Google.Resource.Run.Projects.Locations.Configurations.Get

    -- ** run.projects.locations.configurations.list
    , module Network.Google.Resource.Run.Projects.Locations.Configurations.List

    -- ** run.projects.locations.domainmappings.create
    , module Network.Google.Resource.Run.Projects.Locations.DomainmAppings.Create

    -- ** run.projects.locations.domainmappings.delete
    , module Network.Google.Resource.Run.Projects.Locations.DomainmAppings.Delete

    -- ** run.projects.locations.domainmappings.get
    , module Network.Google.Resource.Run.Projects.Locations.DomainmAppings.Get

    -- ** run.projects.locations.domainmappings.list
    , module Network.Google.Resource.Run.Projects.Locations.DomainmAppings.List

    -- ** run.projects.locations.list
    , module Network.Google.Resource.Run.Projects.Locations.List

    -- ** run.projects.locations.revisions.delete
    , module Network.Google.Resource.Run.Projects.Locations.Revisions.Delete

    -- ** run.projects.locations.revisions.get
    , module Network.Google.Resource.Run.Projects.Locations.Revisions.Get

    -- ** run.projects.locations.revisions.list
    , module Network.Google.Resource.Run.Projects.Locations.Revisions.List

    -- ** run.projects.locations.routes.get
    , module Network.Google.Resource.Run.Projects.Locations.Routes.Get

    -- ** run.projects.locations.routes.list
    , module Network.Google.Resource.Run.Projects.Locations.Routes.List

    -- ** run.projects.locations.services.create
    , module Network.Google.Resource.Run.Projects.Locations.Services.Create

    -- ** run.projects.locations.services.delete
    , module Network.Google.Resource.Run.Projects.Locations.Services.Delete

    -- ** run.projects.locations.services.get
    , module Network.Google.Resource.Run.Projects.Locations.Services.Get

    -- ** run.projects.locations.services.getIamPolicy
    , module Network.Google.Resource.Run.Projects.Locations.Services.GetIAMPolicy

    -- ** run.projects.locations.services.list
    , module Network.Google.Resource.Run.Projects.Locations.Services.List

    -- ** run.projects.locations.services.replaceService
    , module Network.Google.Resource.Run.Projects.Locations.Services.ReplaceService

    -- ** run.projects.locations.services.setIamPolicy
    , module Network.Google.Resource.Run.Projects.Locations.Services.SetIAMPolicy

    -- ** run.projects.locations.services.testIamPermissions
    , module Network.Google.Resource.Run.Projects.Locations.Services.TestIAMPermissions

    -- * Types

    -- ** ResourceRequirementsRequests
    , ResourceRequirementsRequests
    , resourceRequirementsRequests
    , rrrAddtional

    -- ** ConfigMapKeySelector
    , ConfigMapKeySelector
    , configMapKeySelector
    , cmksKey
    , cmksName
    , cmksLocalObjectReference
    , cmksOptional

    -- ** SecretKeySelector
    , SecretKeySelector
    , secretKeySelector
    , sksKey
    , sksName
    , sksLocalObjectReference
    , sksOptional

    -- ** TCPSocketAction
    , TCPSocketAction
    , tcpSocketAction
    , tsaHost
    , tsaPort

    -- ** Status
    , Status
    , status
    , sStatus
    , sReason
    , sDetails
    , sMetadata
    , sCode
    , sMessage

    -- ** Addressable
    , Addressable
    , addressable
    , aURL

    -- ** ObjectMetaAnnotations
    , ObjectMetaAnnotations
    , objectMetaAnnotations
    , omaAddtional

    -- ** TrafficTarget
    , TrafficTarget
    , trafficTarget
    , ttRevisionName
    , ttConfigurationName
    , ttTag
    , ttLatestRevision
    , ttURL
    , ttPercent

    -- ** AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- ** AuthorizedDomain
    , AuthorizedDomain
    , authorizedDomain
    , adName
    , adId

    -- ** DomainMAppingSpecCertificateMode
    , DomainMAppingSpecCertificateMode (..)

    -- ** HTTPHeader
    , HTTPHeader
    , hTTPHeader
    , httphValue
    , httphName

    -- ** ListServicesResponse
    , ListServicesResponse
    , listServicesResponse
    , lsrAPIVersion
    , lsrKind
    , lsrItems
    , lsrUnreachable
    , lsrMetadata

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** ResourceRecord
    , ResourceRecord
    , resourceRecord
    , rrRrData
    , rrName
    , rrType

    -- ** ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- ** Probe
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

    -- ** ListConfigurationsResponse
    , ListConfigurationsResponse
    , listConfigurationsResponse
    , lcrAPIVersion
    , lcrKind
    , lcrItems
    , lcrUnreachable
    , lcrMetadata

    -- ** EnvVarSource
    , EnvVarSource
    , envVarSource
    , evsConfigMapKeyRef
    , evsSecretKeyRef

    -- ** Service
    , Service
    , service
    , serStatus
    , serAPIVersion
    , serKind
    , serSpec
    , serMetadata

    -- ** Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- ** StatusCause
    , StatusCause
    , statusCause
    , scField
    , scReason
    , scMessage

    -- ** RouteStatus
    , RouteStatus
    , routeStatus
    , rsObservedGeneration
    , rsURL
    , rsAddress
    , rsTraffic
    , rsConditions

    -- ** ConfigurationSpec
    , ConfigurationSpec
    , configurationSpec
    , csTemplate

    -- ** GoogleCloudRunV1Condition
    , GoogleCloudRunV1Condition
    , googleCloudRunV1Condition
    , gcrvcStatus
    , gcrvcSeverity
    , gcrvcReason
    , gcrvcLastTransitionTime
    , gcrvcType
    , gcrvcMessage

    -- ** ListAuthorizedDomainsResponse
    , ListAuthorizedDomainsResponse
    , listAuthorizedDomainsResponse
    , ladrNextPageToken
    , ladrDomains

    -- ** ResourceRequirementsLimits
    , ResourceRequirementsLimits
    , resourceRequirementsLimits
    , rrlAddtional

    -- ** Volume
    , Volume
    , volume
    , vConfigMap
    , vSecret
    , vName

    -- ** ObjectMeta
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

    -- ** ConfigMapVolumeSource
    , ConfigMapVolumeSource
    , configMapVolumeSource
    , cmvsDefaultMode
    , cmvsItems
    , cmvsName
    , cmvsOptional

    -- ** SecretVolumeSource
    , SecretVolumeSource
    , secretVolumeSource
    , svsDefaultMode
    , svsItems
    , svsSecretName
    , svsOptional

    -- ** ListRoutesResponse
    , ListRoutesResponse
    , listRoutesResponse
    , lrrAPIVersion
    , lrrKind
    , lrrItems
    , lrrUnreachable
    , lrrMetadata

    -- ** RevisionTemplate
    , RevisionTemplate
    , revisionTemplate
    , rtSpec
    , rtMetadata

    -- ** StatusDetails
    , StatusDetails
    , statusDetails
    , sdGroup
    , sdCauses
    , sdKind
    , sdUid
    , sdRetryAfterSeconds
    , sdName

    -- ** ResourceRequirements
    , ResourceRequirements
    , resourceRequirements
    , rrLimits
    , rrRequests

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- ** DomainMAppingSpec
    , DomainMAppingSpec
    , domainMAppingSpec
    , dmasRouteName
    , dmasCertificateMode
    , dmasForceOverride

    -- ** Route
    , Route
    , route
    , rStatus
    , rAPIVersion
    , rKind
    , rSpec
    , rMetadata

    -- ** SecurityContext
    , SecurityContext
    , securityContext
    , scRunAsUser

    -- ** ServiceStatus
    , ServiceStatus
    , serviceStatus
    , ssLatestCreatedRevisionName
    , ssObservedGeneration
    , ssURL
    , ssAddress
    , ssLatestReadyRevisionName
    , ssTraffic
    , ssConditions

    -- ** DomainMApping
    , DomainMApping
    , domainMApping
    , dmaStatus
    , dmaAPIVersion
    , dmaKind
    , dmaSpec
    , dmaMetadata

    -- ** ConfigurationStatus
    , ConfigurationStatus
    , configurationStatus
    , csLatestCreatedRevisionName
    , csObservedGeneration
    , csLatestReadyRevisionName
    , csConditions

    -- ** RouteSpec
    , RouteSpec
    , routeSpec
    , rTraffic

    -- ** RevisionStatus
    , RevisionStatus
    , revisionStatus
    , rLogURL
    , rObservedGeneration
    , rImageDigest
    , rServiceName
    , rConditions

    -- ** Container
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

    -- ** ResourceRecordType
    , ResourceRecordType (..)

    -- ** ListMeta
    , ListMeta
    , listMeta
    , lmResourceVersion
    , lmSelfLink
    , lmContinue

    -- ** AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- ** OwnerReference
    , OwnerReference
    , ownerReference
    , orController
    , orAPIVersion
    , orKind
    , orUid
    , orBlockOwnerDeletion
    , orName

    -- ** Xgafv
    , Xgafv (..)

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** ExecAction
    , ExecAction
    , execAction
    , eaCommand

    -- ** ObjectMetaLabels
    , ObjectMetaLabels
    , objectMetaLabels
    , omlAddtional

    -- ** VolumeMount
    , VolumeMount
    , volumeMount
    , vmSubPath
    , vmName
    , vmMountPath
    , vmReadOnly

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- ** DomainMAppingStatus
    , DomainMAppingStatus
    , domainMAppingStatus
    , dmasResourceRecords
    , dmasObservedGeneration
    , dmasMAppedRouteName
    , dmasURL
    , dmasConditions

    -- ** EnvVar
    , EnvVar
    , envVar
    , evValue
    , evName
    , evValueFrom

    -- ** ServiceSpec
    , ServiceSpec
    , serviceSpec
    , sTraffic
    , sTemplate

    -- ** Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- ** LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- ** HTTPGetAction
    , HTTPGetAction
    , hTTPGetAction
    , httpgaHTTPHeaders
    , httpgaPath
    , httpgaScheme
    , httpgaHost

    -- ** Configuration
    , Configuration
    , configuration
    , cStatus
    , cAPIVersion
    , cKind
    , cSpec
    , cMetadata

    -- ** LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- ** AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- ** LocalObjectReference
    , LocalObjectReference
    , localObjectReference
    , lorName

    -- ** Revision
    , Revision
    , revision
    , revStatus
    , revAPIVersion
    , revKind
    , revSpec
    , revMetadata

    -- ** EnvFromSource
    , EnvFromSource
    , envFromSource
    , efsConfigMapRef
    , efsSecretRef
    , efsPrefix

    -- ** RevisionSpec
    , RevisionSpec
    , revisionSpec
    , rsServiceAccountName
    , rsContainers
    , rsContainerConcurrency
    , rsTimeoutSeconds
    , rsVolumes

    -- ** ConfigMapEnvSource
    , ConfigMapEnvSource
    , configMapEnvSource
    , cmesName
    , cmesLocalObjectReference
    , cmesOptional

    -- ** SecretEnvSource
    , SecretEnvSource
    , secretEnvSource
    , sesName
    , sesLocalObjectReference
    , sesOptional

    -- ** ListDomainMAppingsResponse
    , ListDomainMAppingsResponse
    , listDomainMAppingsResponse
    , ldmarAPIVersion
    , ldmarKind
    , ldmarItems
    , ldmarUnreachable
    , ldmarMetadata

    -- ** ContainerPort
    , ContainerPort
    , containerPort
    , cpProtocol
    , cpName
    , cpContainerPort

    -- ** ListRevisionsResponse
    , ListRevisionsResponse
    , listRevisionsResponse
    , lisAPIVersion
    , lisKind
    , lisItems
    , lisUnreachable
    , lisMetadata

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- ** KeyToPath
    , KeyToPath
    , keyToPath
    , ktpPath
    , ktpMode
    , ktpKey
    ) where

import Network.Google.Prelude
import Network.Google.Resource.Run.Namespaces.Authorizeddomains.List
import Network.Google.Resource.Run.Namespaces.Configurations.Get
import Network.Google.Resource.Run.Namespaces.Configurations.List
import Network.Google.Resource.Run.Namespaces.DomainmAppings.Create
import Network.Google.Resource.Run.Namespaces.DomainmAppings.Delete
import Network.Google.Resource.Run.Namespaces.DomainmAppings.Get
import Network.Google.Resource.Run.Namespaces.DomainmAppings.List
import Network.Google.Resource.Run.Namespaces.Revisions.Delete
import Network.Google.Resource.Run.Namespaces.Revisions.Get
import Network.Google.Resource.Run.Namespaces.Revisions.List
import Network.Google.Resource.Run.Namespaces.Routes.Get
import Network.Google.Resource.Run.Namespaces.Routes.List
import Network.Google.Resource.Run.Namespaces.Services.Create
import Network.Google.Resource.Run.Namespaces.Services.Delete
import Network.Google.Resource.Run.Namespaces.Services.Get
import Network.Google.Resource.Run.Namespaces.Services.List
import Network.Google.Resource.Run.Namespaces.Services.ReplaceService
import Network.Google.Resource.Run.Projects.Authorizeddomains.List
import Network.Google.Resource.Run.Projects.Locations.Authorizeddomains.List
import Network.Google.Resource.Run.Projects.Locations.Configurations.Get
import Network.Google.Resource.Run.Projects.Locations.Configurations.List
import Network.Google.Resource.Run.Projects.Locations.DomainmAppings.Create
import Network.Google.Resource.Run.Projects.Locations.DomainmAppings.Delete
import Network.Google.Resource.Run.Projects.Locations.DomainmAppings.Get
import Network.Google.Resource.Run.Projects.Locations.DomainmAppings.List
import Network.Google.Resource.Run.Projects.Locations.List
import Network.Google.Resource.Run.Projects.Locations.Revisions.Delete
import Network.Google.Resource.Run.Projects.Locations.Revisions.Get
import Network.Google.Resource.Run.Projects.Locations.Revisions.List
import Network.Google.Resource.Run.Projects.Locations.Routes.Get
import Network.Google.Resource.Run.Projects.Locations.Routes.List
import Network.Google.Resource.Run.Projects.Locations.Services.Create
import Network.Google.Resource.Run.Projects.Locations.Services.Delete
import Network.Google.Resource.Run.Projects.Locations.Services.Get
import Network.Google.Resource.Run.Projects.Locations.Services.GetIAMPolicy
import Network.Google.Resource.Run.Projects.Locations.Services.List
import Network.Google.Resource.Run.Projects.Locations.Services.ReplaceService
import Network.Google.Resource.Run.Projects.Locations.Services.SetIAMPolicy
import Network.Google.Resource.Run.Projects.Locations.Services.TestIAMPermissions
import Network.Google.Run.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Run Admin API service.
type RunAPI =
     NamespacesAuthorizeddomainsListResource :<|>
       NamespacesDomainmAppingsListResource
       :<|> NamespacesDomainmAppingsGetResource
       :<|> NamespacesDomainmAppingsCreateResource
       :<|> NamespacesDomainmAppingsDeleteResource
       :<|> NamespacesRoutesListResource
       :<|> NamespacesRoutesGetResource
       :<|> NamespacesConfigurationsListResource
       :<|> NamespacesConfigurationsGetResource
       :<|> NamespacesRevisionsListResource
       :<|> NamespacesRevisionsGetResource
       :<|> NamespacesRevisionsDeleteResource
       :<|> NamespacesServicesListResource
       :<|> NamespacesServicesGetResource
       :<|> NamespacesServicesReplaceServiceResource
       :<|> NamespacesServicesCreateResource
       :<|> NamespacesServicesDeleteResource
       :<|> ProjectsAuthorizeddomainsListResource
       :<|> ProjectsLocationsAuthorizeddomainsListResource
       :<|> ProjectsLocationsDomainmAppingsListResource
       :<|> ProjectsLocationsDomainmAppingsGetResource
       :<|> ProjectsLocationsDomainmAppingsCreateResource
       :<|> ProjectsLocationsDomainmAppingsDeleteResource
       :<|> ProjectsLocationsRoutesListResource
       :<|> ProjectsLocationsRoutesGetResource
       :<|> ProjectsLocationsConfigurationsListResource
       :<|> ProjectsLocationsConfigurationsGetResource
       :<|> ProjectsLocationsRevisionsListResource
       :<|> ProjectsLocationsRevisionsGetResource
       :<|> ProjectsLocationsRevisionsDeleteResource
       :<|> ProjectsLocationsServicesListResource
       :<|> ProjectsLocationsServicesGetIAMPolicyResource
       :<|> ProjectsLocationsServicesGetResource
       :<|> ProjectsLocationsServicesReplaceServiceResource
       :<|> ProjectsLocationsServicesCreateResource
       :<|> ProjectsLocationsServicesSetIAMPolicyResource
       :<|>
       ProjectsLocationsServicesTestIAMPermissionsResource
       :<|> ProjectsLocationsServicesDeleteResource
       :<|> ProjectsLocationsListResource
