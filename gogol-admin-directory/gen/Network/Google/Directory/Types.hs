{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
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
    , adminDirectoryNotificationsScope
    , adminDirectoryDeviceMobileScope
    , adminDirectoryDeviceMobileReadOnlyScope

    -- * VerificationCode
    , VerificationCode
    , verificationCode
    , vcVerificationCode
    , vcEtag
    , vcKind
    , vcUserId

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

    -- * ChromeOSDevice
    , ChromeOSDevice
    , chromeOSDevice
    , codStatus
    , codEtag
    , codAnnotatedUser
    , codPlatformVersion
    , codLastSync
    , codActiveTimeRanges
    , codKind
    , codEthernetMACAddress
    , codLastEnrollmentTime
    , codAnnotatedLocation
    , codMACAddress
    , codOrgUnitPath
    , codRecentUsers
    , codSupportEndDate
    , codModel
    , codWillAutoRenew
    , codMeid
    , codDeviceId
    , codBootMode
    , codOrderNumber
    , codAnnotatedAssetId
    , codNotes
    , codSerialNumber
    , codFirmwareVersion
    , codOSVersion

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

    -- * Schemas
    , Schemas
    , schemas
    , sEtag
    , sSchemas
    , sKind

    -- * UsersListViewType
    , UsersListViewType (..)

    -- * OrgUnitsListType
    , OrgUnitsListType (..)

    -- * Notification
    , Notification
    , notification
    , nSubject
    , nEtag
    , nKind
    , nBody
    , nFromAddress
    , nIsUnread
    , nNotificationId
    , nSendTime

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

    -- * DomainAliases
    , DomainAliases
    , domainAliases
    , daEtag
    , daKind
    , daDomainAliases

    -- * Aliases
    , Aliases
    , aliases
    , aliEtag
    , aliKind
    , aliAliases

    -- * CalendarResource
    , CalendarResource
    , calendarResource
    , crEtags
    , crResourceId
    , crResourceType
    , crResourceName
    , crKind
    , crResourceEmail
    , crResourceDescription

    -- * UserUndelete
    , UserUndelete
    , userUndelete
    , uuOrgUnitPath

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

    -- * UserName
    , UserName
    , userName
    , unGivenName
    , unFullName
    , unFamilyName

    -- * UsersWatchViewType
    , UsersWatchViewType (..)

    -- * ChromeOSDeviceRecentUsersItem
    , ChromeOSDeviceRecentUsersItem
    , chromeOSDeviceRecentUsersItem
    , codruiEmail
    , codruiType

    -- * DomainAlias
    , DomainAlias
    , domainAlias
    , dCreationTime
    , dEtag
    , dKind
    , dVerified
    , dDomainAliasName
    , dParentDomainName

    -- * Alias
    , Alias
    , alias
    , aaEtag
    , aaKind
    , aaAlias
    , aaId
    , aaPrimaryEmail

    -- * UsersGetProjection
    , UsersGetProjection (..)

    -- * Schema
    , Schema
    , schema
    , schEtag
    , schKind
    , schSchemaName
    , schSchemaId
    , schFields

    -- * User
    , User
    , user
    , useCreationTime
    , useLastLoginTime
    , useThumbnailPhotoEtag
    , useEtag
    , useIPWhiteListed
    , useRelations
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
    , useIncludeInGlobalAddressList
    , usePhones
    , useName
    , usePassword
    , useEmails
    , useIms
    , useIsAdmin
    , useIsEnrolledIn2Sv
    , useId
    , useOrganizations
    , usePrimaryEmail
    , useIsEnforcedIn2Sv
    , useNotes
    , useIsDelegatedAdmin
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

    -- * MobileDevicesListOrderBy
    , MobileDevicesListOrderBy (..)

    -- * UsersListSortOrder
    , UsersListSortOrder (..)

    -- * OrgUnits
    , OrgUnits
    , orgUnits
    , oEtag
    , oKind
    , oOrganizationUnits

    -- * VerificationCodes
    , VerificationCodes
    , verificationCodes
    , vEtag
    , vKind
    , vItems

    -- * ChromeosDevicesListSortOrder
    , ChromeosDevicesListSortOrder (..)

    -- * UserRelation
    , UserRelation
    , userRelation
    , urValue
    , urType
    , urCustomType

    -- * UsersWatchSortOrder
    , UsersWatchSortOrder (..)

    -- * ChannelParams
    , ChannelParams
    , channelParams
    , cpAddtional

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

    -- * ChromeOSDeviceActiveTimeRangesItem
    , ChromeOSDeviceActiveTimeRangesItem
    , chromeOSDeviceActiveTimeRangesItem
    , codatriDate
    , codatriActiveTime

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

    -- * UsersListProjection
    , UsersListProjection (..)

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

    -- * Member
    , Member
    , member
    , memEmail
    , memStatus
    , memEtag
    , memKind
    , memRole
    , memId
    , memType

    -- * UserCustomProperties
    , UserCustomProperties
    , userCustomProperties
    , ucpAddtional

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

    -- * Notifications
    , Notifications
    , notifications
    , notEtag
    , notNextPageToken
    , notKind
    , notItems
    , notUnreadNotificationsCount

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
    , sfsMultiValued

    -- * ChromeOSDevices
    , ChromeOSDevices
    , chromeOSDevices
    , cosdEtag
    , cosdNextPageToken
    , cosdKind
    , cosdChromeosDevices

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

import           Network.Google.Directory.Types.Product
import           Network.Google.Directory.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'directory_v1' of the Admin Directory API. This contains the host and root path used as a starting point for constructing service requests.
directoryService :: ServiceConfig
directoryService
  = defaultService (ServiceId "admin:directory_v1")
      "www.googleapis.com"

-- | View delegated admin roles for your domain
adminDirectoryRoleManagementReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.rolemanagement.readonly"]
adminDirectoryRoleManagementReadOnlyScope = Proxy;

-- | View groups on your domain
adminDirectoryGroupReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.group.readonly"]
adminDirectoryGroupReadOnlyScope = Proxy;

-- | View your Chrome OS devices\' metadata
adminDirectoryDeviceChromeosReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.device.chromeos.readonly"]
adminDirectoryDeviceChromeosReadOnlyScope = Proxy;

-- | View and manage your Chrome OS devices\' metadata
adminDirectoryDeviceChromeosScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.device.chromeos"]
adminDirectoryDeviceChromeosScope = Proxy;

-- | View and manage the provisioning of users on your domain
adminDirectoryUserScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.user"]
adminDirectoryUserScope = Proxy;

-- | View group subscriptions on your domain
adminDirectoryGroupMemberReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.group.member.readonly"]
adminDirectoryGroupMemberReadOnlyScope = Proxy;

-- | View and manage user aliases on your domain
adminDirectoryUserAliasScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.user.alias"]
adminDirectoryUserAliasScope = Proxy;

-- | View and manage the provisioning of calendar resources on your domain
adminDirectoryResourceCalendarScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
adminDirectoryResourceCalendarScope = Proxy;

-- | Manage your mobile devices by performing administrative tasks
adminDirectoryDeviceMobileActionScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.device.mobile.action"]
adminDirectoryDeviceMobileActionScope = Proxy;

-- | View calendar resources on your domain
adminDirectoryResourceCalendarReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly"]
adminDirectoryResourceCalendarReadOnlyScope = Proxy;

-- | View domains related to your customers
adminDirectoryDomainReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.domain.readonly"]
adminDirectoryDomainReadOnlyScope = Proxy;

-- | View and manage the provisioning of user schemas on your domain
adminDirectoryUserschemaScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.userschema"]
adminDirectoryUserschemaScope = Proxy;

-- | View user schemas on your domain
adminDirectoryUserschemaReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.userschema.readonly"]
adminDirectoryUserschemaReadOnlyScope = Proxy;

-- | View and manage the provisioning of domains for your customers
adminDirectoryDomainScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.domain"]
adminDirectoryDomainScope = Proxy;

-- | Manage delegated admin roles for your domain
adminDirectoryRoleManagementScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.rolemanagement"]
adminDirectoryRoleManagementScope = Proxy;

-- | View and manage the provisioning of groups on your domain
adminDirectoryGroupScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.group"]
adminDirectoryGroupScope = Proxy;

-- | View organization units on your domain
adminDirectoryOrgUnitReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.orgunit.readonly"]
adminDirectoryOrgUnitReadOnlyScope = Proxy;

-- | View and manage customer related information
adminDirectoryCustomerScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.customer"]
adminDirectoryCustomerScope = Proxy;

-- | View customer related information
adminDirectoryCustomerReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.customer.readonly"]
adminDirectoryCustomerReadOnlyScope = Proxy;

-- | View and manage organization units on your domain
adminDirectoryOrgUnitScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.orgunit"]
adminDirectoryOrgUnitScope = Proxy;

-- | View users on your domain
adminDirectoryUserReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.user.readonly"]
adminDirectoryUserReadOnlyScope = Proxy;

-- | View user aliases on your domain
adminDirectoryUserAliasReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.user.alias.readonly"]
adminDirectoryUserAliasReadOnlyScope = Proxy;

-- | Manage data access permissions for users on your domain
adminDirectoryUserSecurityScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.user.security"]
adminDirectoryUserSecurityScope = Proxy;

-- | View and manage group subscriptions on your domain
adminDirectoryGroupMemberScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.group.member"]
adminDirectoryGroupMemberScope = Proxy;

-- | View and manage notifications received on your domain
adminDirectoryNotificationsScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.notifications"]
adminDirectoryNotificationsScope = Proxy;

-- | View and manage your mobile devices\' metadata
adminDirectoryDeviceMobileScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.device.mobile"]
adminDirectoryDeviceMobileScope = Proxy;

-- | View your mobile devices\' metadata
adminDirectoryDeviceMobileReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.device.mobile.readonly"]
adminDirectoryDeviceMobileReadOnlyScope = Proxy;
