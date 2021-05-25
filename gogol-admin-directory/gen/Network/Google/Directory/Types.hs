{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Directory.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Directory.Types
    (
    -- * Service Configuration
      directoryService

    -- * OAuth Scopes
    , adminDirectoryRoleManagementReadOnlyScope
    , adminDirectoryGroupReadOnlyScope
    , adminDirectoryDeviceChromeosReadOnlyScope
    , adminDirectoryDeviceChromeosScope
    , adminDirectoryUserScope
    , adminDirectoryGroupMemberReadOnlyScope
    , adminDirectoryUserAliasScope
    , adminDirectoryResourceCalendarScope
    , adminDirectoryDeviceMobileActionScope
    , adminDirectoryResourceCalendarReadOnlyScope
    , adminDirectoryDomainReadOnlyScope
    , adminDirectoryUserschemaScope
    , adminDirectoryUserschemaReadOnlyScope
    , adminDirectoryDomainScope
    , cloudPlatformScope
    , adminDirectoryRoleManagementScope
    , adminDirectoryGroupScope
    , adminDirectoryOrgUnitReadOnlyScope
    , adminDirectoryCustomerScope
    , adminDirectoryCustomerReadOnlyScope
    , adminDirectoryOrgUnitScope
    , adminDirectoryUserReadOnlyScope
    , adminDirectoryUserAliasReadOnlyScope
    , adminDirectoryUserSecurityScope
    , adminDirectoryGroupMemberScope
    , adminDirectoryDeviceMobileScope
    , adminDirectoryDeviceMobileReadOnlyScope
    , adminChromePrintersReadOnlyScope
    , adminChromePrintersScope

    -- * UserLocation
    , UserLocation
    , userLocation
    , ulArea
    , ulBuildingId
    , ulDeskCode
    , ulFloorName
    , ulType
    , ulCustomType
    , ulFloorSection

    -- * VerificationCode
    , VerificationCode
    , verificationCode
    , vcVerificationCode
    , vcEtag
    , vcKind
    , vcUserId

    -- * Feature
    , Feature
    , feature
    , fEtags
    , fKind
    , fName

    -- * OrgUnit
    , OrgUnit
    , orgUnit
    , ouEtag
    , ouParentOrgUnitPath
    , ouKind
    , ouOrgUnitPath
    , ouName
    , ouBlockInheritance
    , ouParentOrgUnitId
    , ouDescription
    , ouOrgUnitId

    -- * UserMakeAdmin
    , UserMakeAdmin
    , userMakeAdmin
    , umaStatus

    -- * UserAbout
    , UserAbout
    , userAbout
    , uaValue
    , uaContentType

    -- * UsersListEvent
    , UsersListEvent (..)

    -- * ListPrintersResponse
    , ListPrintersResponse
    , listPrintersResponse
    , lprNextPageToken
    , lprPrinters

    -- * Privileges
    , Privileges
    , privileges
    , pEtag
    , pKind
    , pItems

    -- * Groups
    , Groups
    , groups
    , gGroups
    , gEtag
    , gNextPageToken
    , gKind

    -- * UsersAliasesListEvent
    , UsersAliasesListEvent (..)

    -- * RoleAssignments
    , RoleAssignments
    , roleAssignments
    , raEtag
    , raNextPageToken
    , raKind
    , raItems

    -- * Privilege
    , Privilege
    , privilege
    , priEtag
    , priIsOuScopable
    , priKind
    , priServiceName
    , priServiceId
    , priPrivilegeName
    , priChildPrivileges

    -- * UsersAliasesWatchEvent
    , UsersAliasesWatchEvent (..)

    -- * Roles
    , Roles
    , roles
    , rEtag
    , rNextPageToken
    , rKind
    , rItems

    -- * UsersWatchEvent
    , UsersWatchEvent (..)

    -- * ChromeOSDeviceDiskVolumeReportsItem
    , ChromeOSDeviceDiskVolumeReportsItem
    , chromeOSDeviceDiskVolumeReportsItem
    , coddvriVolumeInfo

    -- * UserAddress
    , UserAddress
    , userAddress
    , uaStreetAddress
    , uaPoBox
    , uaCountry
    , uaPostalCode
    , uaFormatted
    , uaExtendedAddress
    , uaLocality
    , uaPrimary
    , uaCountryCode
    , uaRegion
    , uaType
    , uaCustomType
    , uaSourceIsStructured

    -- * DirectoryChromeosDevicesIssueCommandRequest
    , DirectoryChromeosDevicesIssueCommandRequest
    , directoryChromeosDevicesIssueCommandRequest
    , dcdicrPayload
    , dcdicrCommandType

    -- * CustomerPostalAddress
    , CustomerPostalAddress
    , customerPostalAddress
    , cpaOrganizationName
    , cpaPostalCode
    , cpaAddressLine1
    , cpaLocality
    , cpaContactName
    , cpaAddressLine2
    , cpaCountryCode
    , cpaRegion
    , cpaAddressLine3

    -- * RoleAssignment
    , RoleAssignment
    , roleAssignment
    , rolEtag
    , rolScopeType
    , rolKind
    , rolAssignedTo
    , rolRoleId
    , rolRoleAssignmentId
    , rolOrgUnitId

    -- * Group
    , Group
    , group'
    , groEmail
    , groEtag
    , groDirectMembersCount
    , groKind
    , groAliases
    , groNonEditableAliases
    , groName
    , groAdminCreated
    , groId
    , groDescription

    -- * DirectoryChromeosDevicesCommandType
    , DirectoryChromeosDevicesCommandType (..)

    -- * ChromeOSDevice
    , ChromeOSDevice
    , chromeOSDevice
    , codStatus
    , codEtag
    , codCPUStatusReports
    , codAnnotatedUser
    , codSystemRamFreeReports
    , codDockMACAddress
    , codPlatformVersion
    , codLastSync
    , codActiveTimeRanges
    , codEthernetMACAddress0
    , codKind
    , codEthernetMACAddress
    , codLastEnrollmentTime
    , codAnnotatedLocation
    , codMACAddress
    , codOrgUnitPath
    , codRecentUsers
    , codSupportEndDate
    , codModel
    , codLastKnownNetwork
    , codWillAutoRenew
    , codMeid
    , codDeviceFiles
    , codDeviceId
    , codBootMode
    , codTpmVersionInfo
    , codAutoUpdateExpiration
    , codOrderNumber
    , codDiskVolumeReports
    , codAnnotatedAssetId
    , codNotes
    , codSerialNumber
    , codFirmwareVersion
    , codOSVersion
    , codManufactureDate
    , codScreenshotFiles
    , codSystemRamTotal

    -- * ChromeosDevicesPatchProjection
    , ChromeosDevicesPatchProjection (..)

    -- * ChromeosDevicesGetProjection
    , ChromeosDevicesGetProjection (..)

    -- * Users
    , Users
    , users
    , uEtag
    , uNextPageToken
    , uUsers
    , uKind
    , uTriggerEvent

    -- * Asp
    , Asp
    , asp
    , aCreationTime
    , aEtag
    , aCodeId
    , aKind
    , aName
    , aLastTimeUsed
    , aUserKey

    -- * AuxiliaryMessageSeverity
    , AuxiliaryMessageSeverity (..)

    -- * Schemas
    , Schemas
    , schemas
    , sEtag
    , sSchemas
    , sKind

    -- * ChromeOSDeviceDeviceFilesItem
    , ChromeOSDeviceDeviceFilesItem
    , chromeOSDeviceDeviceFilesItem
    , coddfiName
    , coddfiDownloadURL
    , coddfiType
    , coddfiCreateTime

    -- * UsersListViewType
    , UsersListViewType (..)

    -- * Buildings
    , Buildings
    , buildings
    , bEtag
    , bNextPageToken
    , bBuildings
    , bKind

    -- * OrgUnitsListType
    , OrgUnitsListType (..)

    -- * Empty
    , Empty
    , empty

    -- * MobileDevicesListSortOrder
    , MobileDevicesListSortOrder (..)

    -- * UserIm
    , UserIm
    , userIm
    , uiIm
    , uiProtocol
    , uiPrimary
    , uiCustomProtocol
    , uiType
    , uiCustomType

    -- * UsersListOrderBy
    , UsersListOrderBy (..)

    -- * DirectoryChromeosDevicesIssueCommandRequestCommandType
    , DirectoryChromeosDevicesIssueCommandRequestCommandType (..)

    -- * BuildingAddress
    , BuildingAddress
    , buildingAddress
    , baLanguageCode
    , baRegionCode
    , baSublocality
    , baPostalCode
    , baLocality
    , baAdministrativeArea
    , baAddressLines

    -- * Tokens
    , Tokens
    , tokens
    , tEtag
    , tKind
    , tItems

    -- * UserCustomSchemas
    , UserCustomSchemas
    , userCustomSchemas
    , ucsAddtional

    -- * UserKeyword
    , UserKeyword
    , userKeyword
    , ukValue
    , ukType
    , ukCustomType

    -- * DomainAliases
    , DomainAliases
    , domainAliases
    , daEtag
    , daKind
    , daDomainAliases

    -- * ChromeOSDeviceLastKnownNetworkItem
    , ChromeOSDeviceLastKnownNetworkItem
    , chromeOSDeviceLastKnownNetworkItem
    , codlkniWanIPAddress
    , codlkniIPAddress

    -- * Aliases
    , Aliases
    , aliases
    , aliEtag
    , aliKind
    , aliAliases

    -- * DirectoryChromeosDevicesCommandState
    , DirectoryChromeosDevicesCommandState (..)

    -- * CalendarResource
    , CalendarResource
    , calendarResource
    , crEtags
    , crResourceId
    , crResourceType
    , crResourceName
    , crKind
    , crBuildingId
    , crFeatureInstances
    , crResourceEmail
    , crCapacity
    , crResourceDescription
    , crFloorName
    , crGeneratedResourceName
    , crResourceCategory
    , crFloorSection
    , crUserVisibleDescription

    -- * GroupsListOrderBy
    , GroupsListOrderBy (..)

    -- * UserUndelete
    , UserUndelete
    , userUndelete
    , uuOrgUnitPath

    -- * FailureInfoErrorCode
    , FailureInfoErrorCode (..)

    -- * Members
    , Members
    , members
    , mEtag
    , mNextPageToken
    , mKind
    , mMembers

    -- * Channel
    , Channel
    , channel
    , cResourceURI
    , cResourceId
    , cKind
    , cExpiration
    , cToken
    , cAddress
    , cPayload
    , cParams
    , cId
    , cType

    -- * ListPrinterModelsResponse
    , ListPrinterModelsResponse
    , listPrinterModelsResponse
    , lpmrNextPageToken
    , lpmrPrinterModels

    -- * MobileDevices
    , MobileDevices
    , mobileDevices
    , mdEtag
    , mdNextPageToken
    , mdKind
    , mdMobileDevices

    -- * Token
    , Token
    , token
    , tokClientId
    , tokEtag
    , tokDisplayText
    , tokKind
    , tokScopes
    , tokNATiveApp
    , tokAnonymous
    , tokUserKey

    -- * ResourcesBuildingsPatchCoordinatesSource
    , ResourcesBuildingsPatchCoordinatesSource (..)

    -- * UserName
    , UserName
    , userName
    , unGivenName
    , unFullName
    , unFamilyName

    -- * UsersWatchViewType
    , UsersWatchViewType (..)

    -- * Building
    , Building
    , building
    , buiEtags
    , buiKind
    , buiBuildingId
    , buiAddress
    , buiCoordinates
    , buiBuildingName
    , buiFloorNames
    , buiDescription

    -- * ChromeOSDeviceRecentUsersItem
    , ChromeOSDeviceRecentUsersItem
    , chromeOSDeviceRecentUsersItem
    , codruiEmail
    , codruiType

    -- * FailureInfo
    , FailureInfo
    , failureInfo
    , fiPrinterId
    , fiPrinter
    , fiErrorCode
    , fiErrorMessage

    -- * DomainAlias
    , DomainAlias
    , domainAlias
    , dCreationTime
    , dEtag
    , dKind
    , dVerified
    , dDomainAliasName
    , dParentDomainName

    -- * DirectoryChromeosDevicesCommandResult
    , DirectoryChromeosDevicesCommandResult
    , directoryChromeosDevicesCommandResult
    , dcdcrExecuteTime
    , dcdcrResult
    , dcdcrErrorMessage

    -- * BatchCreatePrintersResponse
    , BatchCreatePrintersResponse
    , batchCreatePrintersResponse
    , bcprPrinters
    , bcprFailures

    -- * UserGender
    , UserGender
    , userGender
    , ugAddressMeAs
    , ugCustomGender
    , ugType

    -- * Alias
    , Alias
    , alias
    , aaEtag
    , aaKind
    , aaAlias
    , aaId
    , aaPrimaryEmail

    -- * Printer
    , Printer
    , printer
    , pAuxiliaryMessages
    , pUseDriverlessConfig
    , pURI
    , pMakeAndModel
    , pName
    , pDisplayName
    , pId
    , pDescription
    , pCreateTime
    , pOrgUnitId

    -- * UsersGetProjection
    , UsersGetProjection (..)

    -- * Schema
    , Schema
    , schema
    , schEtag
    , schKind
    , schSchemaName
    , schSchemaId
    , schDisplayName
    , schFields

    -- * PrinterModel
    , PrinterModel
    , printerModel
    , pmManufacturer
    , pmMakeAndModel
    , pmDisplayName

    -- * BatchDeletePrintersRequest
    , BatchDeletePrintersRequest
    , batchDeletePrintersRequest
    , bdprPrinterIds

    -- * ChromeOSMoveDevicesToOu
    , ChromeOSMoveDevicesToOu
    , chromeOSMoveDevicesToOu
    , comdtoDeviceIds

    -- * ResourcesBuildingsUpdateCoordinatesSource
    , ResourcesBuildingsUpdateCoordinatesSource (..)

    -- * AuxiliaryMessage
    , AuxiliaryMessage
    , auxiliaryMessage
    , amSeverity
    , amFieldMask
    , amAuxiliaryMessage

    -- * User
    , User
    , user
    , useCreationTime
    , useLastLoginTime
    , useThumbnailPhotoEtag
    , useEtag
    , usePosixAccounts
    , useIPWhiteListed
    , useRelations
    , useSSHPublicKeys
    , useHashFunction
    , useKind
    , useChangePasswordAtNextLogin
    , useWebsites
    , useAddresses
    , useAliases
    , useThumbnailPhotoURL
    , useExternalIds
    , useSuspended
    , useAgreedToTerms
    , useDeletionTime
    , useNonEditableAliases
    , useOrgUnitPath
    , useCustomerId
    , useLanguages
    , useIncludeInGlobalAddressList
    , useGender
    , usePhones
    , useRecoveryEmail
    , useName
    , usePassword
    , useEmails
    , useRecoveryPhone
    , useIms
    , useKeywords
    , useIsAdmin
    , useIsEnrolledIn2Sv
    , useId
    , useOrganizations
    , usePrimaryEmail
    , useIsEnforcedIn2Sv
    , useNotes
    , useIsDelegatedAdmin
    , useLocations
    , useArchived
    , useIsMailboxSetup
    , useCustomSchemas
    , useSuspensionReason

    -- * MobileDevicesListProjection
    , MobileDevicesListProjection (..)

    -- * ChromeOSDeviceAction
    , ChromeOSDeviceAction
    , chromeOSDeviceAction
    , codaAction
    , codaDeprovisionReason

    -- * FeatureRename
    , FeatureRename
    , featureRename
    , frNewName

    -- * Role
    , Role
    , role'
    , rrEtag
    , rrKind
    , rrRoleName
    , rrIsSystemRole
    , rrRoleId
    , rrRoleDescription
    , rrIsSuperAdminRole
    , rrRolePrivileges

    -- * Customer
    , Customer
    , customer
    , cusEtag
    , cusKind
    , cusAlternateEmail
    , cusCustomerDomain
    , cusPhoneNumber
    , cusLanguage
    , cusId
    , cusCustomerCreationTime
    , cusPostalAddress

    -- * MobileDeviceApplicationsItem
    , MobileDeviceApplicationsItem
    , mobileDeviceApplicationsItem
    , mdaiVersionCode
    , mdaiVersionName
    , mdaiPackageName
    , mdaiDisplayName
    , mdaiPermission

    -- * BatchCreatePrintersRequest
    , BatchCreatePrintersRequest
    , batchCreatePrintersRequest
    , bcprRequests

    -- * ChromeOSDeviceDiskVolumeReportsItemVolumeInfoItem
    , ChromeOSDeviceDiskVolumeReportsItemVolumeInfoItem
    , chromeOSDeviceDiskVolumeReportsItemVolumeInfoItem
    , coddvriviiStorageFree
    , coddvriviiStorageTotal
    , coddvriviiVolumeId

    -- * MobileDevicesListOrderBy
    , MobileDevicesListOrderBy (..)

    -- * UsersListSortOrder
    , UsersListSortOrder (..)

    -- * ResourcesBuildingsInsertCoordinatesSource
    , ResourcesBuildingsInsertCoordinatesSource (..)

    -- * OrgUnits
    , OrgUnits
    , orgUnits
    , oEtag
    , oKind
    , oOrganizationUnits

    -- * UserSSHPublicKey
    , UserSSHPublicKey
    , userSSHPublicKey
    , uspkFingerprint
    , uspkKey
    , uspkExpirationTimeUsec

    -- * DirectoryChromeosDevicesCommand
    , DirectoryChromeosDevicesCommand
    , directoryChromeosDevicesCommand
    , dcdcState
    , dcdcPayload
    , dcdcCommandExpireTime
    , dcdcIssueTime
    , dcdcCommandId
    , dcdcType
    , dcdcCommandResult

    -- * VerificationCodes
    , VerificationCodes
    , verificationCodes
    , vEtag
    , vKind
    , vItems

    -- * BuildingCoordinates
    , BuildingCoordinates
    , buildingCoordinates
    , bcLatitude
    , bcLongitude

    -- * ChromeosDevicesListSortOrder
    , ChromeosDevicesListSortOrder (..)

    -- * UserRelation
    , UserRelation
    , userRelation
    , urValue
    , urType
    , urCustomType

    -- * DirectoryChromeosDevicesCommandResultResult
    , DirectoryChromeosDevicesCommandResultResult (..)

    -- * UsersWatchSortOrder
    , UsersWatchSortOrder (..)

    -- * Features
    , Features
    , features
    , feaEtag
    , feaNextPageToken
    , feaKind
    , feaFeatures

    -- * ChannelParams
    , ChannelParams
    , channelParams
    , cpAddtional

    -- * ChromeOSDeviceTpmVersionInfo
    , ChromeOSDeviceTpmVersionInfo
    , chromeOSDeviceTpmVersionInfo
    , codtviVendorSpecific
    , codtviManufacturer
    , codtviSpecLevel
    , codtviTpmModel
    , codtviFamily
    , codtviFirmwareVersion

    -- * UserOrganization
    , UserOrganization
    , userOrganization
    , uoDePartment
    , uoLocation
    , uoCostCenter
    , uoDomain
    , uoSymbol
    , uoPrimary
    , uoName
    , uoFullTimeEquivalent
    , uoTitle
    , uoType
    , uoCustomType
    , uoDescription

    -- * UserWebsite
    , UserWebsite
    , userWebsite
    , uwValue
    , uwPrimary
    , uwType
    , uwCustomType

    -- * GroupsListSortOrder
    , GroupsListSortOrder (..)

    -- * Xgafv
    , Xgafv (..)

    -- * ChromeOSDeviceActiveTimeRangesItem
    , ChromeOSDeviceActiveTimeRangesItem
    , chromeOSDeviceActiveTimeRangesItem
    , codatriDate
    , codatriActiveTime

    -- * DirectoryChromeosDevicesIssueCommandResponse
    , DirectoryChromeosDevicesIssueCommandResponse
    , directoryChromeosDevicesIssueCommandResponse
    , dcdicrCommandId

    -- * UserEmail
    , UserEmail
    , userEmail
    , ueAddress
    , uePrimary
    , ueType
    , ueCustomType

    -- * UserPhone
    , UserPhone
    , userPhone
    , upValue
    , upPrimary
    , upType
    , upCustomType

    -- * UserPhoto
    , UserPhoto
    , userPhoto
    , upPhotoData
    , upEtag
    , upHeight
    , upKind
    , upWidth
    , upMimeType
    , upId
    , upPrimaryEmail

    -- * ChromeOSDeviceSystemRamFreeReportsItem
    , ChromeOSDeviceSystemRamFreeReportsItem
    , chromeOSDeviceSystemRamFreeReportsItem
    , codsrfriReportTime
    , codsrfriSystemRamFreeInfo

    -- * UserPosixAccount
    , UserPosixAccount
    , userPosixAccount
    , upaGecos
    , upaUid
    , upaUsername
    , upaShell
    , upaPrimary
    , upaAccountId
    , upaGid
    , upaOperatingSystemType
    , upaSystemId
    , upaHomeDirectory

    -- * UsersListProjection
    , UsersListProjection (..)

    -- * FeatureInstance
    , FeatureInstance
    , featureInstance
    , fiFeature

    -- * ChromeosDevicesUpdateProjection
    , ChromeosDevicesUpdateProjection (..)

    -- * MobileDevicesGetProjection
    , MobileDevicesGetProjection (..)

    -- * MobileDevice
    , MobileDevice
    , mobileDevice
    , mobEmail
    , mobStatus
    , mobPrivilege
    , mobEtag
    , mobResourceId
    , mobManufacturer
    , mobBuildNumber
    , mobManagedAccountIsOnOwnerProFile
    , mobLastSync
    , mobOtherAccountsInfo
    , mobKind
    , mobAdbStatus
    , mobReleaseVersion
    , mobBrand
    , mobSecurityPatchLevel
    , mobNetworkOperator
    , mobKernelVersion
    , mobOS
    , mobName
    , mobModel
    , mobDeveloperOptionsStatus
    , mobUnknownSourcesStatus
    , mobMeid
    , mobBootLoaderVersion
    , mobDeviceId
    , mobFirstSync
    , mobUserAgent
    , mobImei
    , mobType
    , mobWifiMACAddress
    , mobEncryptionStatus
    , mobSerialNumber
    , mobDevicePasswordStatus
    , mobHardwareId
    , mobBasebandVersion
    , mobSupportsWorkProFile
    , mobHardware
    , mobDeviceCompromisedStatus
    , mobApplications
    , mobDefaultLanguage

    -- * ChromeOSDeviceCPUStatusReportsItem
    , ChromeOSDeviceCPUStatusReportsItem
    , chromeOSDeviceCPUStatusReportsItem
    , codcsriCPUUtilizationPercentageInfo
    , codcsriCPUTemperatureInfo
    , codcsriReportTime

    -- * Member
    , Member
    , member
    , memEmail
    , memStatus
    , memEtag
    , memKind
    , memDeliverySettings
    , memRole
    , memId
    , memType

    -- * UserCustomProperties
    , UserCustomProperties
    , userCustomProperties
    , ucpAddtional

    -- * UserLanguage
    , UserLanguage
    , userLanguage
    , ulLanguageCode
    , ulCustomLanguage

    -- * Domains
    , Domains
    , domains
    , domCreationTime
    , domEtag
    , domKind
    , domDomainAliases
    , domVerified
    , domDomainName
    , domIsPrimary

    -- * BatchDeletePrintersResponse
    , BatchDeletePrintersResponse
    , batchDeletePrintersResponse
    , bPrinterIds
    , bFailedPrinters

    -- * CreatePrinterRequest
    , CreatePrinterRequest
    , createPrinterRequest
    , cprParent
    , cprPrinter

    -- * CalendarResources
    , CalendarResources
    , calendarResources
    , crsEtag
    , crsNextPageToken
    , crsKind
    , crsItems

    -- * ChromeosDevicesListOrderBy
    , ChromeosDevicesListOrderBy (..)

    -- * UsersWatchProjection
    , UsersWatchProjection (..)

    -- * UsersWatchOrderBy
    , UsersWatchOrderBy (..)

    -- * ChromeosDevicesListProjection
    , ChromeosDevicesListProjection (..)

    -- * SchemaFieldSpecNumericIndexingSpec
    , SchemaFieldSpecNumericIndexingSpec
    , schemaFieldSpecNumericIndexingSpec
    , sfsnisMaxValue
    , sfsnisMinValue

    -- * MobileDeviceAction
    , MobileDeviceAction
    , mobileDeviceAction
    , mdaAction

    -- * SchemaFieldSpec
    , SchemaFieldSpec
    , schemaFieldSpec
    , sfsEtag
    , sfsKind
    , sfsNumericIndexingSpec
    , sfsReadAccessType
    , sfsFieldId
    , sfsIndexed
    , sfsFieldType
    , sfsFieldName
    , sfsDisplayName
    , sfsMultiValued

    -- * ChromeOSDeviceScreenshotFilesItem
    , ChromeOSDeviceScreenshotFilesItem
    , chromeOSDeviceScreenshotFilesItem
    , codsfiName
    , codsfiDownloadURL
    , codsfiType
    , codsfiCreateTime

    -- * ChromeOSDevices
    , ChromeOSDevices
    , chromeOSDevices
    , cosdEtag
    , cosdNextPageToken
    , cosdKind
    , cosdChromeosDevices

    -- * MembersHasMember
    , MembersHasMember
    , membersHasMember
    , mhmIsMember

    -- * UserExternalId
    , UserExternalId
    , userExternalId
    , ueiValue
    , ueiType
    , ueiCustomType

    -- * Asps
    , Asps
    , asps
    , aspEtag
    , aspKind
    , aspItems

    -- * ChromeOSDeviceCPUStatusReportsItemCPUTemperatureInfoItem
    , ChromeOSDeviceCPUStatusReportsItemCPUTemperatureInfoItem
    , chromeOSDeviceCPUStatusReportsItemCPUTemperatureInfoItem
    , codcsrictiiTemperature
    , codcsrictiiLabel

    -- * UsersGetViewType
    , UsersGetViewType (..)

    -- * RoleRolePrivilegesItem
    , RoleRolePrivilegesItem
    , roleRolePrivilegesItem
    , rrpiServiceId
    , rrpiPrivilegeName

    -- * Domains2
    , Domains2
    , domains2
    , ddEtag
    , ddKind
    , ddDomains
    ) where

import Network.Google.Directory.Types.Product
import Network.Google.Directory.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'directory_v1' of the Admin SDK API. This contains the host and root path used as a starting point for constructing service requests.
directoryService :: ServiceConfig
directoryService
  = defaultService (ServiceId "admin:directory_v1")
      "admin.googleapis.com"

-- | View delegated admin roles for your domain
adminDirectoryRoleManagementReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.rolemanagement.readonly"]
adminDirectoryRoleManagementReadOnlyScope = Proxy

-- | View groups on your domain
adminDirectoryGroupReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.group.readonly"]
adminDirectoryGroupReadOnlyScope = Proxy

-- | View your Chrome OS devices\' metadata
adminDirectoryDeviceChromeosReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.device.chromeos.readonly"]
adminDirectoryDeviceChromeosReadOnlyScope = Proxy

-- | View and manage your Chrome OS devices\' metadata
adminDirectoryDeviceChromeosScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.device.chromeos"]
adminDirectoryDeviceChromeosScope = Proxy

-- | View and manage the provisioning of users on your domain
adminDirectoryUserScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.user"]
adminDirectoryUserScope = Proxy

-- | View group subscriptions on your domain
adminDirectoryGroupMemberReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.group.member.readonly"]
adminDirectoryGroupMemberReadOnlyScope = Proxy

-- | View and manage user aliases on your domain
adminDirectoryUserAliasScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.user.alias"]
adminDirectoryUserAliasScope = Proxy

-- | View and manage the provisioning of calendar resources on your domain
adminDirectoryResourceCalendarScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
adminDirectoryResourceCalendarScope = Proxy

-- | Manage your mobile devices by performing administrative tasks
adminDirectoryDeviceMobileActionScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.device.mobile.action"]
adminDirectoryDeviceMobileActionScope = Proxy

-- | View calendar resources on your domain
adminDirectoryResourceCalendarReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly"]
adminDirectoryResourceCalendarReadOnlyScope = Proxy

-- | View domains related to your customers
adminDirectoryDomainReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.domain.readonly"]
adminDirectoryDomainReadOnlyScope = Proxy

-- | View and manage the provisioning of user schemas on your domain
adminDirectoryUserschemaScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.userschema"]
adminDirectoryUserschemaScope = Proxy

-- | View user schemas on your domain
adminDirectoryUserschemaReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.userschema.readonly"]
adminDirectoryUserschemaReadOnlyScope = Proxy

-- | View and manage the provisioning of domains for your customers
adminDirectoryDomainScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.domain"]
adminDirectoryDomainScope = Proxy

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

-- | Manage delegated admin roles for your domain
adminDirectoryRoleManagementScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.rolemanagement"]
adminDirectoryRoleManagementScope = Proxy

-- | View and manage the provisioning of groups on your domain
adminDirectoryGroupScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.group"]
adminDirectoryGroupScope = Proxy

-- | View organization units on your domain
adminDirectoryOrgUnitReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.orgunit.readonly"]
adminDirectoryOrgUnitReadOnlyScope = Proxy

-- | View and manage customer related information
adminDirectoryCustomerScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.customer"]
adminDirectoryCustomerScope = Proxy

-- | View customer related information
adminDirectoryCustomerReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.customer.readonly"]
adminDirectoryCustomerReadOnlyScope = Proxy

-- | View and manage organization units on your domain
adminDirectoryOrgUnitScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.orgunit"]
adminDirectoryOrgUnitScope = Proxy

-- | See info about users on your domain
adminDirectoryUserReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.user.readonly"]
adminDirectoryUserReadOnlyScope = Proxy

-- | View user aliases on your domain
adminDirectoryUserAliasReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.user.alias.readonly"]
adminDirectoryUserAliasReadOnlyScope = Proxy

-- | Manage data access permissions for users on your domain
adminDirectoryUserSecurityScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.user.security"]
adminDirectoryUserSecurityScope = Proxy

-- | View and manage group subscriptions on your domain
adminDirectoryGroupMemberScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.group.member"]
adminDirectoryGroupMemberScope = Proxy

-- | View and manage your mobile devices\' metadata
adminDirectoryDeviceMobileScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.device.mobile"]
adminDirectoryDeviceMobileScope = Proxy

-- | View your mobile devices\' metadata
adminDirectoryDeviceMobileReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.device.mobile.readonly"]
adminDirectoryDeviceMobileReadOnlyScope = Proxy

-- | See the printers that your organization can use with Chrome
adminChromePrintersReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.chrome.printers.readonly"]
adminChromePrintersReadOnlyScope = Proxy

-- | See, add, edit, and permanently delete the printers that your
-- organization can use with Chrome
adminChromePrintersScope :: Proxy '["https://www.googleapis.com/auth/admin.chrome.printers"]
adminChromePrintersScope = Proxy
