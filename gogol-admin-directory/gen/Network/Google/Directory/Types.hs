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
authAdminDirectoryRolemanagementReadonlyScope :: OAuthScope
authAdminDirectoryRolemanagementReadonlyScope = "https://www.googleapis.com/auth/admin.directory.rolemanagement.readonly";

-- | View groups on your domain
authAdminDirectoryGroupReadonlyScope :: OAuthScope
authAdminDirectoryGroupReadonlyScope = "https://www.googleapis.com/auth/admin.directory.group.readonly";

-- | View your Chrome OS devices\' metadata
authAdminDirectoryDeviceChromeosReadonlyScope :: OAuthScope
authAdminDirectoryDeviceChromeosReadonlyScope = "https://www.googleapis.com/auth/admin.directory.device.chromeos.readonly";

-- | View and manage your Chrome OS devices\' metadata
authAdminDirectoryDeviceChromeosScope :: OAuthScope
authAdminDirectoryDeviceChromeosScope = "https://www.googleapis.com/auth/admin.directory.device.chromeos";

-- | View and manage the provisioning of users on your domain
authAdminDirectoryUserScope :: OAuthScope
authAdminDirectoryUserScope = "https://www.googleapis.com/auth/admin.directory.user";

-- | View group subscriptions on your domain
authAdminDirectoryGroupMemberReadonlyScope :: OAuthScope
authAdminDirectoryGroupMemberReadonlyScope = "https://www.googleapis.com/auth/admin.directory.group.member.readonly";

-- | View and manage user aliases on your domain
authAdminDirectoryUserAliasScope :: OAuthScope
authAdminDirectoryUserAliasScope = "https://www.googleapis.com/auth/admin.directory.user.alias";

-- | View and manage the provisioning of calendar resources on your domain
authAdminDirectoryResourceCalendarScope :: OAuthScope
authAdminDirectoryResourceCalendarScope = "https://www.googleapis.com/auth/admin.directory.resource.calendar";

-- | Manage your mobile devices by performing administrative tasks
authAdminDirectoryDeviceMobileActionScope :: OAuthScope
authAdminDirectoryDeviceMobileActionScope = "https://www.googleapis.com/auth/admin.directory.device.mobile.action";

-- | View calendar resources on your domain
authAdminDirectoryResourceCalendarReadonlyScope :: OAuthScope
authAdminDirectoryResourceCalendarReadonlyScope = "https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly";

-- | View domains related to your customers
authAdminDirectoryDomainReadonlyScope :: OAuthScope
authAdminDirectoryDomainReadonlyScope = "https://www.googleapis.com/auth/admin.directory.domain.readonly";

-- | View and manage the provisioning of user schemas on your domain
authAdminDirectoryUserschemaScope :: OAuthScope
authAdminDirectoryUserschemaScope = "https://www.googleapis.com/auth/admin.directory.userschema";

-- | View user schemas on your domain
authAdminDirectoryUserschemaReadonlyScope :: OAuthScope
authAdminDirectoryUserschemaReadonlyScope = "https://www.googleapis.com/auth/admin.directory.userschema.readonly";

-- | View and manage the provisioning of domains for your customers
authAdminDirectoryDomainScope :: OAuthScope
authAdminDirectoryDomainScope = "https://www.googleapis.com/auth/admin.directory.domain";

-- | Manage delegated admin roles for your domain
authAdminDirectoryRolemanagementScope :: OAuthScope
authAdminDirectoryRolemanagementScope = "https://www.googleapis.com/auth/admin.directory.rolemanagement";

-- | View and manage the provisioning of groups on your domain
authAdminDirectoryGroupScope :: OAuthScope
authAdminDirectoryGroupScope = "https://www.googleapis.com/auth/admin.directory.group";

-- | View organization units on your domain
authAdminDirectoryOrgunitReadonlyScope :: OAuthScope
authAdminDirectoryOrgunitReadonlyScope = "https://www.googleapis.com/auth/admin.directory.orgunit.readonly";

-- | View and manage customer related information
authAdminDirectoryCustomerScope :: OAuthScope
authAdminDirectoryCustomerScope = "https://www.googleapis.com/auth/admin.directory.customer";

-- | View customer related information
authAdminDirectoryCustomerReadonlyScope :: OAuthScope
authAdminDirectoryCustomerReadonlyScope = "https://www.googleapis.com/auth/admin.directory.customer.readonly";

-- | View and manage organization units on your domain
authAdminDirectoryOrgunitScope :: OAuthScope
authAdminDirectoryOrgunitScope = "https://www.googleapis.com/auth/admin.directory.orgunit";

-- | View users on your domain
authAdminDirectoryUserReadonlyScope :: OAuthScope
authAdminDirectoryUserReadonlyScope = "https://www.googleapis.com/auth/admin.directory.user.readonly";

-- | View user aliases on your domain
authAdminDirectoryUserAliasReadonlyScope :: OAuthScope
authAdminDirectoryUserAliasReadonlyScope = "https://www.googleapis.com/auth/admin.directory.user.alias.readonly";

-- | Manage data access permissions for users on your domain
authAdminDirectoryUserSecurityScope :: OAuthScope
authAdminDirectoryUserSecurityScope = "https://www.googleapis.com/auth/admin.directory.user.security";

-- | View and manage group subscriptions on your domain
authAdminDirectoryGroupMemberScope :: OAuthScope
authAdminDirectoryGroupMemberScope = "https://www.googleapis.com/auth/admin.directory.group.member";

-- | View and manage notifications received on your domain
authAdminDirectoryNotificationsScope :: OAuthScope
authAdminDirectoryNotificationsScope = "https://www.googleapis.com/auth/admin.directory.notifications";

-- | View and manage your mobile devices\' metadata
authAdminDirectoryDeviceMobileScope :: OAuthScope
authAdminDirectoryDeviceMobileScope = "https://www.googleapis.com/auth/admin.directory.device.mobile";

-- | View your mobile devices\' metadata
authAdminDirectoryDeviceMobileReadonlyScope :: OAuthScope
authAdminDirectoryDeviceMobileReadonlyScope = "https://www.googleapis.com/auth/admin.directory.device.mobile.readonly";
