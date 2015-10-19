{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Directory
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Admin SDK Directory API lets you view and manage enterprise
-- resources such as users and groups, administrative notifications,
-- security features, and more.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference>
module Network.Google.Directory
    (
    -- * Service Configuration
      directoryService

    -- * API Declaration
    , DirectoryAPI

    -- * Resources

    -- ** admin.channels.stop
    , module Network.Google.Resource.Admin.Channels.Stop

    -- ** directory.asps.delete
    , module Network.Google.Resource.Directory.Asps.Delete

    -- ** directory.asps.get
    , module Network.Google.Resource.Directory.Asps.Get

    -- ** directory.asps.list
    , module Network.Google.Resource.Directory.Asps.List

    -- ** directory.chromeosdevices.get
    , module Network.Google.Resource.Directory.ChromeosDevices.Get

    -- ** directory.chromeosdevices.list
    , module Network.Google.Resource.Directory.ChromeosDevices.List

    -- ** directory.chromeosdevices.patch
    , module Network.Google.Resource.Directory.ChromeosDevices.Patch

    -- ** directory.chromeosdevices.update
    , module Network.Google.Resource.Directory.ChromeosDevices.Update

    -- ** directory.customers.get
    , module Network.Google.Resource.Directory.Customers.Get

    -- ** directory.customers.patch
    , module Network.Google.Resource.Directory.Customers.Patch

    -- ** directory.customers.update
    , module Network.Google.Resource.Directory.Customers.Update

    -- ** directory.domainAliases.delete
    , module Network.Google.Resource.Directory.DomainAliases.Delete

    -- ** directory.domainAliases.get
    , module Network.Google.Resource.Directory.DomainAliases.Get

    -- ** directory.domainAliases.insert
    , module Network.Google.Resource.Directory.DomainAliases.Insert

    -- ** directory.domainAliases.list
    , module Network.Google.Resource.Directory.DomainAliases.List

    -- ** directory.domains.delete
    , module Network.Google.Resource.Directory.Domains.Delete

    -- ** directory.domains.get
    , module Network.Google.Resource.Directory.Domains.Get

    -- ** directory.domains.insert
    , module Network.Google.Resource.Directory.Domains.Insert

    -- ** directory.domains.list
    , module Network.Google.Resource.Directory.Domains.List

    -- ** directory.groups.aliases.delete
    , module Network.Google.Resource.Directory.Groups.Aliases.Delete

    -- ** directory.groups.aliases.insert
    , module Network.Google.Resource.Directory.Groups.Aliases.Insert

    -- ** directory.groups.aliases.list
    , module Network.Google.Resource.Directory.Groups.Aliases.List

    -- ** directory.groups.delete
    , module Network.Google.Resource.Directory.Groups.Delete

    -- ** directory.groups.get
    , module Network.Google.Resource.Directory.Groups.Get

    -- ** directory.groups.insert
    , module Network.Google.Resource.Directory.Groups.Insert

    -- ** directory.groups.list
    , module Network.Google.Resource.Directory.Groups.List

    -- ** directory.groups.patch
    , module Network.Google.Resource.Directory.Groups.Patch

    -- ** directory.groups.update
    , module Network.Google.Resource.Directory.Groups.Update

    -- ** directory.members.delete
    , module Network.Google.Resource.Directory.Members.Delete

    -- ** directory.members.get
    , module Network.Google.Resource.Directory.Members.Get

    -- ** directory.members.insert
    , module Network.Google.Resource.Directory.Members.Insert

    -- ** directory.members.list
    , module Network.Google.Resource.Directory.Members.List

    -- ** directory.members.patch
    , module Network.Google.Resource.Directory.Members.Patch

    -- ** directory.members.update
    , module Network.Google.Resource.Directory.Members.Update

    -- ** directory.mobiledevices.action
    , module Network.Google.Resource.Directory.MobileDevices.Action

    -- ** directory.mobiledevices.delete
    , module Network.Google.Resource.Directory.MobileDevices.Delete

    -- ** directory.mobiledevices.get
    , module Network.Google.Resource.Directory.MobileDevices.Get

    -- ** directory.mobiledevices.list
    , module Network.Google.Resource.Directory.MobileDevices.List

    -- ** directory.notifications.delete
    , module Network.Google.Resource.Directory.Notifications.Delete

    -- ** directory.notifications.get
    , module Network.Google.Resource.Directory.Notifications.Get

    -- ** directory.notifications.list
    , module Network.Google.Resource.Directory.Notifications.List

    -- ** directory.notifications.patch
    , module Network.Google.Resource.Directory.Notifications.Patch

    -- ** directory.notifications.update
    , module Network.Google.Resource.Directory.Notifications.Update

    -- ** directory.orgunits.delete
    , module Network.Google.Resource.Directory.OrgUnits.Delete

    -- ** directory.orgunits.get
    , module Network.Google.Resource.Directory.OrgUnits.Get

    -- ** directory.orgunits.insert
    , module Network.Google.Resource.Directory.OrgUnits.Insert

    -- ** directory.orgunits.list
    , module Network.Google.Resource.Directory.OrgUnits.List

    -- ** directory.orgunits.patch
    , module Network.Google.Resource.Directory.OrgUnits.Patch

    -- ** directory.orgunits.update
    , module Network.Google.Resource.Directory.OrgUnits.Update

    -- ** directory.privileges.list
    , module Network.Google.Resource.Directory.Privileges.List

    -- ** directory.roleAssignments.delete
    , module Network.Google.Resource.Directory.RoleAssignments.Delete

    -- ** directory.roleAssignments.get
    , module Network.Google.Resource.Directory.RoleAssignments.Get

    -- ** directory.roleAssignments.insert
    , module Network.Google.Resource.Directory.RoleAssignments.Insert

    -- ** directory.roleAssignments.list
    , module Network.Google.Resource.Directory.RoleAssignments.List

    -- ** directory.roles.delete
    , module Network.Google.Resource.Directory.Roles.Delete

    -- ** directory.roles.get
    , module Network.Google.Resource.Directory.Roles.Get

    -- ** directory.roles.insert
    , module Network.Google.Resource.Directory.Roles.Insert

    -- ** directory.roles.list
    , module Network.Google.Resource.Directory.Roles.List

    -- ** directory.roles.patch
    , module Network.Google.Resource.Directory.Roles.Patch

    -- ** directory.roles.update
    , module Network.Google.Resource.Directory.Roles.Update

    -- ** directory.schemas.delete
    , module Network.Google.Resource.Directory.Schemas.Delete

    -- ** directory.schemas.get
    , module Network.Google.Resource.Directory.Schemas.Get

    -- ** directory.schemas.insert
    , module Network.Google.Resource.Directory.Schemas.Insert

    -- ** directory.schemas.list
    , module Network.Google.Resource.Directory.Schemas.List

    -- ** directory.schemas.patch
    , module Network.Google.Resource.Directory.Schemas.Patch

    -- ** directory.schemas.update
    , module Network.Google.Resource.Directory.Schemas.Update

    -- ** directory.tokens.delete
    , module Network.Google.Resource.Directory.Tokens.Delete

    -- ** directory.tokens.get
    , module Network.Google.Resource.Directory.Tokens.Get

    -- ** directory.tokens.list
    , module Network.Google.Resource.Directory.Tokens.List

    -- ** directory.users.aliases.delete
    , module Network.Google.Resource.Directory.Users.Aliases.Delete

    -- ** directory.users.aliases.insert
    , module Network.Google.Resource.Directory.Users.Aliases.Insert

    -- ** directory.users.aliases.list
    , module Network.Google.Resource.Directory.Users.Aliases.List

    -- ** directory.users.aliases.watch
    , module Network.Google.Resource.Directory.Users.Aliases.Watch

    -- ** directory.users.delete
    , module Network.Google.Resource.Directory.Users.Delete

    -- ** directory.users.get
    , module Network.Google.Resource.Directory.Users.Get

    -- ** directory.users.insert
    , module Network.Google.Resource.Directory.Users.Insert

    -- ** directory.users.list
    , module Network.Google.Resource.Directory.Users.List

    -- ** directory.users.makeAdmin
    , module Network.Google.Resource.Directory.Users.MakeAdmin

    -- ** directory.users.patch
    , module Network.Google.Resource.Directory.Users.Patch

    -- ** directory.users.photos.delete
    , module Network.Google.Resource.Directory.Users.Photos.Delete

    -- ** directory.users.photos.get
    , module Network.Google.Resource.Directory.Users.Photos.Get

    -- ** directory.users.photos.patch
    , module Network.Google.Resource.Directory.Users.Photos.Patch

    -- ** directory.users.photos.update
    , module Network.Google.Resource.Directory.Users.Photos.Update

    -- ** directory.users.undelete
    , module Network.Google.Resource.Directory.Users.Undelete

    -- ** directory.users.update
    , module Network.Google.Resource.Directory.Users.Update

    -- ** directory.users.watch
    , module Network.Google.Resource.Directory.Users.Watch

    -- ** directory.verificationCodes.generate
    , module Network.Google.Resource.Directory.VerificationCodes.Generate

    -- ** directory.verificationCodes.invalidate
    , module Network.Google.Resource.Directory.VerificationCodes.Invalidate

    -- ** directory.verificationCodes.list
    , module Network.Google.Resource.Directory.VerificationCodes.List

    -- * Types

    -- ** VerificationCode
    , VerificationCode
    , verificationCode
    , vcVerificationCode
    , vcEtag
    , vcKind
    , vcUserId

    -- ** OrgUnit
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

    -- ** UserMakeAdmin
    , UserMakeAdmin
    , userMakeAdmin
    , umaStatus

    -- ** UserAbout
    , UserAbout
    , userAbout
    , uaValue
    , uaContentType

    -- ** UsersListEvent
    , UsersListEvent (..)

    -- ** Privileges
    , Privileges
    , privileges
    , pEtag
    , pKind
    , pItems

    -- ** Groups
    , Groups
    , groups
    , gGroups
    , gEtag
    , gNextPageToken
    , gKind

    -- ** UsersAliasesListEvent
    , UsersAliasesListEvent (..)

    -- ** RoleAssignments
    , RoleAssignments
    , roleAssignments
    , raEtag
    , raNextPageToken
    , raKind
    , raItems

    -- ** Privilege
    , Privilege
    , privilege
    , priEtag
    , priIsOuScopable
    , priKind
    , priServiceName
    , priServiceId
    , priPrivilegeName
    , priChildPrivileges

    -- ** UsersAliasesWatchEvent
    , UsersAliasesWatchEvent (..)

    -- ** Roles
    , Roles
    , roles
    , rEtag
    , rNextPageToken
    , rKind
    , rItems

    -- ** UsersWatchEvent
    , UsersWatchEvent (..)

    -- ** UserAddress
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

    -- ** CustomerPostalAddress
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

    -- ** RoleAssignment
    , RoleAssignment
    , roleAssignment
    , rolEtag
    , rolScopeType
    , rolKind
    , rolAssignedTo
    , rolRoleId
    , rolRoleAssignmentId
    , rolOrgUnitId

    -- ** Group
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

    -- ** ChromeOSDevice
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

    -- ** ChromeosDevicesPatchProjection
    , ChromeosDevicesPatchProjection (..)

    -- ** ChromeosDevicesGetProjection
    , ChromeosDevicesGetProjection (..)

    -- ** Users
    , Users
    , users
    , uEtag
    , uNextPageToken
    , uUsers
    , uKind
    , uTriggerEvent

    -- ** Asp
    , Asp
    , asp
    , aCreationTime
    , aEtag
    , aCodeId
    , aKind
    , aName
    , aLastTimeUsed
    , aUserKey

    -- ** Schemas
    , Schemas
    , schemas
    , sEtag
    , sSchemas
    , sKind

    -- ** UsersListViewType
    , UsersListViewType (..)

    -- ** OrgUnitsListType
    , OrgUnitsListType (..)

    -- ** Notification
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

    -- ** MobileDevicesListSortOrder
    , MobileDevicesListSortOrder (..)

    -- ** UserIm
    , UserIm
    , userIm
    , uiIm
    , uiProtocol
    , uiPrimary
    , uiCustomProtocol
    , uiType
    , uiCustomType

    -- ** UsersListOrderBy
    , UsersListOrderBy (..)

    -- ** Tokens
    , Tokens
    , tokens
    , tEtag
    , tKind
    , tItems

    -- ** UserCustomSchemas
    , UserCustomSchemas
    , userCustomSchemas
    , ucsAddtional

    -- ** DomainAliases
    , DomainAliases
    , domainAliases
    , daEtag
    , daKind
    , daDomainAliases

    -- ** Aliases
    , Aliases
    , aliases
    , aliEtag
    , aliKind
    , aliAliases

    -- ** UserUndelete
    , UserUndelete
    , userUndelete
    , uuOrgUnitPath

    -- ** Members
    , Members
    , members
    , mEtag
    , mNextPageToken
    , mKind
    , mMembers

    -- ** Channel
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

    -- ** MobileDevices
    , MobileDevices
    , mobileDevices
    , mdEtag
    , mdNextPageToken
    , mdKind
    , mdMobileDevices

    -- ** Token
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

    -- ** UserName
    , UserName
    , userName
    , unGivenName
    , unFullName
    , unFamilyName

    -- ** UsersWatchViewType
    , UsersWatchViewType (..)

    -- ** ChromeOSDeviceRecentUsersItem
    , ChromeOSDeviceRecentUsersItem
    , chromeOSDeviceRecentUsersItem
    , codruiEmail
    , codruiType

    -- ** DomainAlias
    , DomainAlias
    , domainAlias
    , dCreationTime
    , dEtag
    , dKind
    , dVerified
    , dDomainAliasName
    , dParentDomainName

    -- ** Alias
    , Alias
    , alias
    , aaEtag
    , aaKind
    , aaAlias
    , aaId
    , aaPrimaryEmail

    -- ** UsersGetProjection
    , UsersGetProjection (..)

    -- ** Schema
    , Schema
    , schema
    , schEtag
    , schKind
    , schSchemaName
    , schSchemaId
    , schFields

    -- ** User
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

    -- ** MobileDevicesListProjection
    , MobileDevicesListProjection (..)

    -- ** Role
    , Role
    , role
    , rrEtag
    , rrKind
    , rrRoleName
    , rrIsSystemRole
    , rrRoleId
    , rrRoleDescription
    , rrIsSuperAdminRole
    , rrRolePrivileges

    -- ** Customer
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

    -- ** MobileDeviceApplicationsItem
    , MobileDeviceApplicationsItem
    , mobileDeviceApplicationsItem
    , mdaiVersionCode
    , mdaiVersionName
    , mdaiPackageName
    , mdaiDisplayName
    , mdaiPermission

    -- ** MobileDevicesListOrderBy
    , MobileDevicesListOrderBy (..)

    -- ** UsersListSortOrder
    , UsersListSortOrder (..)

    -- ** OrgUnits
    , OrgUnits
    , orgUnits
    , oEtag
    , oKind
    , oOrganizationUnits

    -- ** VerificationCodes
    , VerificationCodes
    , verificationCodes
    , vEtag
    , vKind
    , vItems

    -- ** ChromeosDevicesListSortOrder
    , ChromeosDevicesListSortOrder (..)

    -- ** UserRelation
    , UserRelation
    , userRelation
    , urValue
    , urType
    , urCustomType

    -- ** UsersWatchSortOrder
    , UsersWatchSortOrder (..)

    -- ** ChannelParams
    , ChannelParams
    , channelParams
    , cpAddtional

    -- ** UserOrganization
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

    -- ** UserWebsite
    , UserWebsite
    , userWebsite
    , uwValue
    , uwPrimary
    , uwType
    , uwCustomType

    -- ** ChromeOSDeviceActiveTimeRangesItem
    , ChromeOSDeviceActiveTimeRangesItem
    , chromeOSDeviceActiveTimeRangesItem
    , codatriDate
    , codatriActiveTime

    -- ** UserEmail
    , UserEmail
    , userEmail
    , ueAddress
    , uePrimary
    , ueType
    , ueCustomType

    -- ** UserPhone
    , UserPhone
    , userPhone
    , upValue
    , upPrimary
    , upType
    , upCustomType

    -- ** UserPhoto
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

    -- ** UsersListProjection
    , UsersListProjection (..)

    -- ** ChromeosDevicesUpdateProjection
    , ChromeosDevicesUpdateProjection (..)

    -- ** MobileDevicesGetProjection
    , MobileDevicesGetProjection (..)

    -- ** MobileDevice
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

    -- ** Member
    , Member
    , member
    , memEmail
    , memEtag
    , memKind
    , memRole
    , memId
    , memType

    -- ** UserCustomProperties
    , UserCustomProperties
    , userCustomProperties
    , ucpAddtional

    -- ** Domains
    , Domains
    , domains
    , domCreationTime
    , domEtag
    , domKind
    , domDomainAliases
    , domVerified
    , domDomainName
    , domIsPrimary

    -- ** ChromeosDevicesListOrderBy
    , ChromeosDevicesListOrderBy (..)

    -- ** UsersWatchProjection
    , UsersWatchProjection (..)

    -- ** UsersWatchOrderBy
    , UsersWatchOrderBy (..)

    -- ** Notifications
    , Notifications
    , notifications
    , notEtag
    , notNextPageToken
    , notKind
    , notItems
    , notUnreadNotificationsCount

    -- ** ChromeosDevicesListProjection
    , ChromeosDevicesListProjection (..)

    -- ** SchemaFieldSpecNumericIndexingSpec
    , SchemaFieldSpecNumericIndexingSpec
    , schemaFieldSpecNumericIndexingSpec
    , sfsnisMaxValue
    , sfsnisMinValue

    -- ** MobileDeviceAction
    , MobileDeviceAction
    , mobileDeviceAction
    , mdaAction

    -- ** SchemaFieldSpec
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

    -- ** ChromeOSDevices
    , ChromeOSDevices
    , chromeOSDevices
    , cosdEtag
    , cosdNextPageToken
    , cosdKind
    , cosdChromeosDevices

    -- ** UserExternalId
    , UserExternalId
    , userExternalId
    , ueiValue
    , ueiType
    , ueiCustomType

    -- ** Asps
    , Asps
    , asps
    , aspEtag
    , aspKind
    , aspItems

    -- ** UsersGetViewType
    , UsersGetViewType (..)

    -- ** RoleRolePrivilegesItem
    , RoleRolePrivilegesItem
    , roleRolePrivilegesItem
    , rrpiServiceId
    , rrpiPrivilegeName

    -- ** Domains2
    , Domains2
    , domains2
    , ddEtag
    , ddKind
    , ddDomains
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Admin.Channels.Stop
import           Network.Google.Resource.Directory.Asps.Delete
import           Network.Google.Resource.Directory.Asps.Get
import           Network.Google.Resource.Directory.Asps.List
import           Network.Google.Resource.Directory.ChromeosDevices.Get
import           Network.Google.Resource.Directory.ChromeosDevices.List
import           Network.Google.Resource.Directory.ChromeosDevices.Patch
import           Network.Google.Resource.Directory.ChromeosDevices.Update
import           Network.Google.Resource.Directory.Customers.Get
import           Network.Google.Resource.Directory.Customers.Patch
import           Network.Google.Resource.Directory.Customers.Update
import           Network.Google.Resource.Directory.DomainAliases.Delete
import           Network.Google.Resource.Directory.DomainAliases.Get
import           Network.Google.Resource.Directory.DomainAliases.Insert
import           Network.Google.Resource.Directory.DomainAliases.List
import           Network.Google.Resource.Directory.Domains.Delete
import           Network.Google.Resource.Directory.Domains.Get
import           Network.Google.Resource.Directory.Domains.Insert
import           Network.Google.Resource.Directory.Domains.List
import           Network.Google.Resource.Directory.Groups.Aliases.Delete
import           Network.Google.Resource.Directory.Groups.Aliases.Insert
import           Network.Google.Resource.Directory.Groups.Aliases.List
import           Network.Google.Resource.Directory.Groups.Delete
import           Network.Google.Resource.Directory.Groups.Get
import           Network.Google.Resource.Directory.Groups.Insert
import           Network.Google.Resource.Directory.Groups.List
import           Network.Google.Resource.Directory.Groups.Patch
import           Network.Google.Resource.Directory.Groups.Update
import           Network.Google.Resource.Directory.Members.Delete
import           Network.Google.Resource.Directory.Members.Get
import           Network.Google.Resource.Directory.Members.Insert
import           Network.Google.Resource.Directory.Members.List
import           Network.Google.Resource.Directory.Members.Patch
import           Network.Google.Resource.Directory.Members.Update
import           Network.Google.Resource.Directory.MobileDevices.Action
import           Network.Google.Resource.Directory.MobileDevices.Delete
import           Network.Google.Resource.Directory.MobileDevices.Get
import           Network.Google.Resource.Directory.MobileDevices.List
import           Network.Google.Resource.Directory.Notifications.Delete
import           Network.Google.Resource.Directory.Notifications.Get
import           Network.Google.Resource.Directory.Notifications.List
import           Network.Google.Resource.Directory.Notifications.Patch
import           Network.Google.Resource.Directory.Notifications.Update
import           Network.Google.Resource.Directory.OrgUnits.Delete
import           Network.Google.Resource.Directory.OrgUnits.Get
import           Network.Google.Resource.Directory.OrgUnits.Insert
import           Network.Google.Resource.Directory.OrgUnits.List
import           Network.Google.Resource.Directory.OrgUnits.Patch
import           Network.Google.Resource.Directory.OrgUnits.Update
import           Network.Google.Resource.Directory.Privileges.List
import           Network.Google.Resource.Directory.RoleAssignments.Delete
import           Network.Google.Resource.Directory.RoleAssignments.Get
import           Network.Google.Resource.Directory.RoleAssignments.Insert
import           Network.Google.Resource.Directory.RoleAssignments.List
import           Network.Google.Resource.Directory.Roles.Delete
import           Network.Google.Resource.Directory.Roles.Get
import           Network.Google.Resource.Directory.Roles.Insert
import           Network.Google.Resource.Directory.Roles.List
import           Network.Google.Resource.Directory.Roles.Patch
import           Network.Google.Resource.Directory.Roles.Update
import           Network.Google.Resource.Directory.Schemas.Delete
import           Network.Google.Resource.Directory.Schemas.Get
import           Network.Google.Resource.Directory.Schemas.Insert
import           Network.Google.Resource.Directory.Schemas.List
import           Network.Google.Resource.Directory.Schemas.Patch
import           Network.Google.Resource.Directory.Schemas.Update
import           Network.Google.Resource.Directory.Tokens.Delete
import           Network.Google.Resource.Directory.Tokens.Get
import           Network.Google.Resource.Directory.Tokens.List
import           Network.Google.Resource.Directory.Users.Aliases.Delete
import           Network.Google.Resource.Directory.Users.Aliases.Insert
import           Network.Google.Resource.Directory.Users.Aliases.List
import           Network.Google.Resource.Directory.Users.Aliases.Watch
import           Network.Google.Resource.Directory.Users.Delete
import           Network.Google.Resource.Directory.Users.Get
import           Network.Google.Resource.Directory.Users.Insert
import           Network.Google.Resource.Directory.Users.List
import           Network.Google.Resource.Directory.Users.MakeAdmin
import           Network.Google.Resource.Directory.Users.Patch
import           Network.Google.Resource.Directory.Users.Photos.Delete
import           Network.Google.Resource.Directory.Users.Photos.Get
import           Network.Google.Resource.Directory.Users.Photos.Patch
import           Network.Google.Resource.Directory.Users.Photos.Update
import           Network.Google.Resource.Directory.Users.Undelete
import           Network.Google.Resource.Directory.Users.Update
import           Network.Google.Resource.Directory.Users.Watch
import           Network.Google.Resource.Directory.VerificationCodes.Generate
import           Network.Google.Resource.Directory.VerificationCodes.Invalidate
import           Network.Google.Resource.Directory.VerificationCodes.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Admin Directory API service.
type DirectoryAPI =
     PrivilegesListResource :<|>
       GroupsAliasesInsertResource
       :<|> GroupsAliasesListResource
       :<|> GroupsAliasesDeleteResource
       :<|> GroupsInsertResource
       :<|> GroupsListResource
       :<|> GroupsPatchResource
       :<|> GroupsGetResource
       :<|> GroupsDeleteResource
       :<|> GroupsUpdateResource
       :<|> RoleAssignmentsInsertResource
       :<|> RoleAssignmentsListResource
       :<|> RoleAssignmentsGetResource
       :<|> RoleAssignmentsDeleteResource
       :<|> RolesInsertResource
       :<|> RolesListResource
       :<|> RolesPatchResource
       :<|> RolesGetResource
       :<|> RolesDeleteResource
       :<|> RolesUpdateResource
       :<|> CustomersPatchResource
       :<|> CustomersGetResource
       :<|> CustomersUpdateResource
       :<|> UsersAliasesInsertResource
       :<|> UsersAliasesListResource
       :<|> UsersAliasesDeleteResource
       :<|> UsersAliasesWatchResource
       :<|> UsersPhotosPatchResource
       :<|> UsersPhotosGetResource
       :<|> UsersPhotosDeleteResource
       :<|> UsersPhotosUpdateResource
       :<|> UsersInsertResource
       :<|> UsersListResource
       :<|> UsersUndeleteResource
       :<|> UsersPatchResource
       :<|> UsersGetResource
       :<|> UsersMakeAdminResource
       :<|> UsersDeleteResource
       :<|> UsersUpdateResource
       :<|> UsersWatchResource
       :<|> SchemasInsertResource
       :<|> SchemasListResource
       :<|> SchemasPatchResource
       :<|> SchemasGetResource
       :<|> SchemasDeleteResource
       :<|> SchemasUpdateResource
       :<|> TokensListResource
       :<|> TokensGetResource
       :<|> TokensDeleteResource
       :<|> DomainAliasesInsertResource
       :<|> DomainAliasesListResource
       :<|> DomainAliasesGetResource
       :<|> DomainAliasesDeleteResource
       :<|> ChannelsStopResource
       :<|> MembersInsertResource
       :<|> MembersListResource
       :<|> MembersPatchResource
       :<|> MembersGetResource
       :<|> MembersDeleteResource
       :<|> MembersUpdateResource
       :<|> MobileDevicesListResource
       :<|> MobileDevicesGetResource
       :<|> MobileDevicesActionResource
       :<|> MobileDevicesDeleteResource
       :<|> OrgUnitsInsertResource
       :<|> OrgUnitsListResource
       :<|> OrgUnitsPatchResource
       :<|> OrgUnitsGetResource
       :<|> OrgUnitsDeleteResource
       :<|> OrgUnitsUpdateResource
       :<|> VerificationCodesListResource
       :<|> VerificationCodesGenerateResource
       :<|> VerificationCodesInvalidateResource
       :<|> DomainsInsertResource
       :<|> DomainsListResource
       :<|> DomainsGetResource
       :<|> DomainsDeleteResource
       :<|> NotificationsListResource
       :<|> NotificationsPatchResource
       :<|> NotificationsGetResource
       :<|> NotificationsDeleteResource
       :<|> NotificationsUpdateResource
       :<|> ChromeosDevicesListResource
       :<|> ChromeosDevicesPatchResource
       :<|> ChromeosDevicesGetResource
       :<|> ChromeosDevicesUpdateResource
       :<|> AspsListResource
       :<|> AspsGetResource
       :<|> AspsDeleteResource
