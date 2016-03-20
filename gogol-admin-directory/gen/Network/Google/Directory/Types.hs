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
    , authAdminDirectoryRolemanagementReadonlyScope
    , authAdminDirectoryGroupReadonlyScope
    , authAdminDirectoryDeviceChromeosReadonlyScope
    , authAdminDirectoryDeviceChromeosScope
    , authAdminDirectoryUserScope
    , authAdminDirectoryGroupMemberReadonlyScope
    , authAdminDirectoryUserAliasScope
    , authAdminDirectoryResourceCalendarScope
    , authAdminDirectoryDeviceMobileActionScope
    , authAdminDirectoryResourceCalendarReadonlyScope
    , authAdminDirectoryDomainReadonlyScope
    , authAdminDirectoryUserschemaScope
    , authAdminDirectoryUserschemaReadonlyScope
    , authAdminDirectoryDomainScope
    , authAdminDirectoryRolemanagementScope
    , authAdminDirectoryGroupScope
    , authAdminDirectoryOrgunitReadonlyScope
    , authAdminDirectoryCustomerScope
    , authAdminDirectoryCustomerReadonlyScope
    , authAdminDirectoryOrgunitScope
    , authAdminDirectoryUserReadonlyScope
    , authAdminDirectoryUserAliasReadonlyScope
    , authAdminDirectoryUserSecurityScope
    , authAdminDirectoryGroupMemberScope
    , authAdminDirectoryNotificationsScope
    , authAdminDirectoryDeviceMobileScope
    , authAdminDirectoryDeviceMobileReadonlyScope

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
    , useId
    , useOrganizations
    , usePrimaryEmail
    , useNotes
    , useIsDelegatedAdmin
    , useIsMailboxSetup
    , useCustomSchemas
    , useSuspensionReason

    -- * MobileDevicesListProjection
    , MobileDevicesListProjection (..)

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
    , mobEtag
    , mobResourceId
    , mobBuildNumber
    , mobManagedAccountIsOnOwnerProFile
    , mobLastSync
    , mobOtherAccountsInfo
    , mobKind
    , mobAdbStatus
    , mobNetworkOperator
    , mobKernelVersion
    , mobOS
    , mobName
    , mobModel
    , mobDeveloperOptionsStatus
    , mobUnknownSourcesStatus
    , mobMeid
    , mobDeviceId
    , mobFirstSync
    , mobUserAgent
    , mobImei
    , mobType
    , mobWifiMACAddress
    , mobSerialNumber
    , mobHardwareId
    , mobBasebandVersion
    , mobSupportsWorkProFile
    , mobDeviceCompromisedStatus
    , mobApplications
    , mobDefaultLanguage

    -- * Member
    , Member
    , member
    , memEmail
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
authAdminDirectoryRolemanagementReadonlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.rolemanagement.readonly"]
authAdminDirectoryRolemanagementReadonlyScope = Proxy;

-- | View groups on your domain
authAdminDirectoryGroupReadonlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.group.readonly"]
authAdminDirectoryGroupReadonlyScope = Proxy;

-- | View your Chrome OS devices\' metadata
authAdminDirectoryDeviceChromeosReadonlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.device.chromeos.readonly"]
authAdminDirectoryDeviceChromeosReadonlyScope = Proxy;

-- | View and manage your Chrome OS devices\' metadata
authAdminDirectoryDeviceChromeosScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.device.chromeos"]
authAdminDirectoryDeviceChromeosScope = Proxy;

-- | View and manage the provisioning of users on your domain
authAdminDirectoryUserScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.user"]
authAdminDirectoryUserScope = Proxy;

-- | View group subscriptions on your domain
authAdminDirectoryGroupMemberReadonlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.group.member.readonly"]
authAdminDirectoryGroupMemberReadonlyScope = Proxy;

-- | View and manage user aliases on your domain
authAdminDirectoryUserAliasScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.user.alias"]
authAdminDirectoryUserAliasScope = Proxy;

-- | View and manage the provisioning of calendar resources on your domain
authAdminDirectoryResourceCalendarScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
authAdminDirectoryResourceCalendarScope = Proxy;

-- | Manage your mobile devices by performing administrative tasks
authAdminDirectoryDeviceMobileActionScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.device.mobile.action"]
authAdminDirectoryDeviceMobileActionScope = Proxy;

-- | View calendar resources on your domain
authAdminDirectoryResourceCalendarReadonlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly"]
authAdminDirectoryResourceCalendarReadonlyScope = Proxy;

-- | View domains related to your customers
authAdminDirectoryDomainReadonlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.domain.readonly"]
authAdminDirectoryDomainReadonlyScope = Proxy;

-- | View and manage the provisioning of user schemas on your domain
authAdminDirectoryUserschemaScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.userschema"]
authAdminDirectoryUserschemaScope = Proxy;

-- | View user schemas on your domain
authAdminDirectoryUserschemaReadonlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.userschema.readonly"]
authAdminDirectoryUserschemaReadonlyScope = Proxy;

-- | View and manage the provisioning of domains for your customers
authAdminDirectoryDomainScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.domain"]
authAdminDirectoryDomainScope = Proxy;

-- | Manage delegated admin roles for your domain
authAdminDirectoryRolemanagementScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.rolemanagement"]
authAdminDirectoryRolemanagementScope = Proxy;

-- | View and manage the provisioning of groups on your domain
authAdminDirectoryGroupScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.group"]
authAdminDirectoryGroupScope = Proxy;

-- | View organization units on your domain
authAdminDirectoryOrgunitReadonlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.orgunit.readonly"]
authAdminDirectoryOrgunitReadonlyScope = Proxy;

-- | View and manage customer related information
authAdminDirectoryCustomerScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.customer"]
authAdminDirectoryCustomerScope = Proxy;

-- | View customer related information
authAdminDirectoryCustomerReadonlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.customer.readonly"]
authAdminDirectoryCustomerReadonlyScope = Proxy;

-- | View and manage organization units on your domain
authAdminDirectoryOrgunitScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.orgunit"]
authAdminDirectoryOrgunitScope = Proxy;

-- | View users on your domain
authAdminDirectoryUserReadonlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.user.readonly"]
authAdminDirectoryUserReadonlyScope = Proxy;

-- | View user aliases on your domain
authAdminDirectoryUserAliasReadonlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.user.alias.readonly"]
authAdminDirectoryUserAliasReadonlyScope = Proxy;

-- | Manage data access permissions for users on your domain
authAdminDirectoryUserSecurityScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.user.security"]
authAdminDirectoryUserSecurityScope = Proxy;

-- | View and manage group subscriptions on your domain
authAdminDirectoryGroupMemberScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.group.member"]
authAdminDirectoryGroupMemberScope = Proxy;

-- | View and manage notifications received on your domain
authAdminDirectoryNotificationsScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.notifications"]
authAdminDirectoryNotificationsScope = Proxy;

-- | View and manage your mobile devices\' metadata
authAdminDirectoryDeviceMobileScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.device.mobile"]
authAdminDirectoryDeviceMobileScope = Proxy;

-- | View your mobile devices\' metadata
authAdminDirectoryDeviceMobileReadonlyScope :: Proxy '["https://www.googleapis.com/auth/admin.directory.device.mobile.readonly"]
authAdminDirectoryDeviceMobileReadonlyScope = Proxy;
