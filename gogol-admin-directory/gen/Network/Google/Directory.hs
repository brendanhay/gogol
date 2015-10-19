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
-- | The Admin SDK Directory API lets you view and manage enterprise
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

    -- ** AdminChannelsStop
    , module Network.Google.Resource.Admin.Channels.Stop

    -- ** DirectoryAspsDelete
    , module Network.Google.Resource.Directory.Asps.Delete

    -- ** DirectoryAspsGet
    , module Network.Google.Resource.Directory.Asps.Get

    -- ** DirectoryAspsList
    , module Network.Google.Resource.Directory.Asps.List

    -- ** DirectoryChromeosDevicesGet
    , module Network.Google.Resource.Directory.ChromeosDevices.Get

    -- ** DirectoryChromeosDevicesList
    , module Network.Google.Resource.Directory.ChromeosDevices.List

    -- ** DirectoryChromeosDevicesPatch
    , module Network.Google.Resource.Directory.ChromeosDevices.Patch

    -- ** DirectoryChromeosDevicesUpdate
    , module Network.Google.Resource.Directory.ChromeosDevices.Update

    -- ** DirectoryCustomersGet
    , module Network.Google.Resource.Directory.Customers.Get

    -- ** DirectoryCustomersPatch
    , module Network.Google.Resource.Directory.Customers.Patch

    -- ** DirectoryCustomersUpdate
    , module Network.Google.Resource.Directory.Customers.Update

    -- ** DirectoryDomainAliasesDelete
    , module Network.Google.Resource.Directory.DomainAliases.Delete

    -- ** DirectoryDomainAliasesGet
    , module Network.Google.Resource.Directory.DomainAliases.Get

    -- ** DirectoryDomainAliasesInsert
    , module Network.Google.Resource.Directory.DomainAliases.Insert

    -- ** DirectoryDomainAliasesList
    , module Network.Google.Resource.Directory.DomainAliases.List

    -- ** DirectoryDomainsDelete
    , module Network.Google.Resource.Directory.Domains.Delete

    -- ** DirectoryDomainsGet
    , module Network.Google.Resource.Directory.Domains.Get

    -- ** DirectoryDomainsInsert
    , module Network.Google.Resource.Directory.Domains.Insert

    -- ** DirectoryDomainsList
    , module Network.Google.Resource.Directory.Domains.List

    -- ** DirectoryGroupsAliasesDelete
    , module Network.Google.Resource.Directory.Groups.Aliases.Delete

    -- ** DirectoryGroupsAliasesInsert
    , module Network.Google.Resource.Directory.Groups.Aliases.Insert

    -- ** DirectoryGroupsAliasesList
    , module Network.Google.Resource.Directory.Groups.Aliases.List

    -- ** DirectoryGroupsDelete
    , module Network.Google.Resource.Directory.Groups.Delete

    -- ** DirectoryGroupsGet
    , module Network.Google.Resource.Directory.Groups.Get

    -- ** DirectoryGroupsInsert
    , module Network.Google.Resource.Directory.Groups.Insert

    -- ** DirectoryGroupsList
    , module Network.Google.Resource.Directory.Groups.List

    -- ** DirectoryGroupsPatch
    , module Network.Google.Resource.Directory.Groups.Patch

    -- ** DirectoryGroupsUpdate
    , module Network.Google.Resource.Directory.Groups.Update

    -- ** DirectoryMembersDelete
    , module Network.Google.Resource.Directory.Members.Delete

    -- ** DirectoryMembersGet
    , module Network.Google.Resource.Directory.Members.Get

    -- ** DirectoryMembersInsert
    , module Network.Google.Resource.Directory.Members.Insert

    -- ** DirectoryMembersList
    , module Network.Google.Resource.Directory.Members.List

    -- ** DirectoryMembersPatch
    , module Network.Google.Resource.Directory.Members.Patch

    -- ** DirectoryMembersUpdate
    , module Network.Google.Resource.Directory.Members.Update

    -- ** DirectoryMobileDevicesAction
    , module Network.Google.Resource.Directory.MobileDevices.Action

    -- ** DirectoryMobileDevicesDelete
    , module Network.Google.Resource.Directory.MobileDevices.Delete

    -- ** DirectoryMobileDevicesGet
    , module Network.Google.Resource.Directory.MobileDevices.Get

    -- ** DirectoryMobileDevicesList
    , module Network.Google.Resource.Directory.MobileDevices.List

    -- ** DirectoryNotificationsDelete
    , module Network.Google.Resource.Directory.Notifications.Delete

    -- ** DirectoryNotificationsGet
    , module Network.Google.Resource.Directory.Notifications.Get

    -- ** DirectoryNotificationsList
    , module Network.Google.Resource.Directory.Notifications.List

    -- ** DirectoryNotificationsPatch
    , module Network.Google.Resource.Directory.Notifications.Patch

    -- ** DirectoryNotificationsUpdate
    , module Network.Google.Resource.Directory.Notifications.Update

    -- ** DirectoryOrgUnitsDelete
    , module Network.Google.Resource.Directory.OrgUnits.Delete

    -- ** DirectoryOrgUnitsGet
    , module Network.Google.Resource.Directory.OrgUnits.Get

    -- ** DirectoryOrgUnitsInsert
    , module Network.Google.Resource.Directory.OrgUnits.Insert

    -- ** DirectoryOrgUnitsList
    , module Network.Google.Resource.Directory.OrgUnits.List

    -- ** DirectoryOrgUnitsPatch
    , module Network.Google.Resource.Directory.OrgUnits.Patch

    -- ** DirectoryOrgUnitsUpdate
    , module Network.Google.Resource.Directory.OrgUnits.Update

    -- ** DirectoryPrivilegesList
    , module Network.Google.Resource.Directory.Privileges.List

    -- ** DirectoryRoleAssignmentsDelete
    , module Network.Google.Resource.Directory.RoleAssignments.Delete

    -- ** DirectoryRoleAssignmentsGet
    , module Network.Google.Resource.Directory.RoleAssignments.Get

    -- ** DirectoryRoleAssignmentsInsert
    , module Network.Google.Resource.Directory.RoleAssignments.Insert

    -- ** DirectoryRoleAssignmentsList
    , module Network.Google.Resource.Directory.RoleAssignments.List

    -- ** DirectoryRolesDelete
    , module Network.Google.Resource.Directory.Roles.Delete

    -- ** DirectoryRolesGet
    , module Network.Google.Resource.Directory.Roles.Get

    -- ** DirectoryRolesInsert
    , module Network.Google.Resource.Directory.Roles.Insert

    -- ** DirectoryRolesList
    , module Network.Google.Resource.Directory.Roles.List

    -- ** DirectoryRolesPatch
    , module Network.Google.Resource.Directory.Roles.Patch

    -- ** DirectoryRolesUpdate
    , module Network.Google.Resource.Directory.Roles.Update

    -- ** DirectorySchemasDelete
    , module Network.Google.Resource.Directory.Schemas.Delete

    -- ** DirectorySchemasGet
    , module Network.Google.Resource.Directory.Schemas.Get

    -- ** DirectorySchemasInsert
    , module Network.Google.Resource.Directory.Schemas.Insert

    -- ** DirectorySchemasList
    , module Network.Google.Resource.Directory.Schemas.List

    -- ** DirectorySchemasPatch
    , module Network.Google.Resource.Directory.Schemas.Patch

    -- ** DirectorySchemasUpdate
    , module Network.Google.Resource.Directory.Schemas.Update

    -- ** DirectoryTokensDelete
    , module Network.Google.Resource.Directory.Tokens.Delete

    -- ** DirectoryTokensGet
    , module Network.Google.Resource.Directory.Tokens.Get

    -- ** DirectoryTokensList
    , module Network.Google.Resource.Directory.Tokens.List

    -- ** DirectoryUsersAliasesDelete
    , module Network.Google.Resource.Directory.Users.Aliases.Delete

    -- ** DirectoryUsersAliasesInsert
    , module Network.Google.Resource.Directory.Users.Aliases.Insert

    -- ** DirectoryUsersAliasesList
    , module Network.Google.Resource.Directory.Users.Aliases.List

    -- ** DirectoryUsersAliasesWatch
    , module Network.Google.Resource.Directory.Users.Aliases.Watch

    -- ** DirectoryUsersDelete
    , module Network.Google.Resource.Directory.Users.Delete

    -- ** DirectoryUsersGet
    , module Network.Google.Resource.Directory.Users.Get

    -- ** DirectoryUsersInsert
    , module Network.Google.Resource.Directory.Users.Insert

    -- ** DirectoryUsersList
    , module Network.Google.Resource.Directory.Users.List

    -- ** DirectoryUsersMakeAdmin
    , module Network.Google.Resource.Directory.Users.MakeAdmin

    -- ** DirectoryUsersPatch
    , module Network.Google.Resource.Directory.Users.Patch

    -- ** DirectoryUsersPhotosDelete
    , module Network.Google.Resource.Directory.Users.Photos.Delete

    -- ** DirectoryUsersPhotosGet
    , module Network.Google.Resource.Directory.Users.Photos.Get

    -- ** DirectoryUsersPhotosPatch
    , module Network.Google.Resource.Directory.Users.Photos.Patch

    -- ** DirectoryUsersPhotosUpdate
    , module Network.Google.Resource.Directory.Users.Photos.Update

    -- ** DirectoryUsersUndelete
    , module Network.Google.Resource.Directory.Users.Undelete

    -- ** DirectoryUsersUpdate
    , module Network.Google.Resource.Directory.Users.Update

    -- ** DirectoryUsersWatch
    , module Network.Google.Resource.Directory.Users.Watch

    -- ** DirectoryVerificationCodesGenerate
    , module Network.Google.Resource.Directory.VerificationCodes.Generate

    -- ** DirectoryVerificationCodesInvalidate
    , module Network.Google.Resource.Directory.VerificationCodes.Invalidate

    -- ** DirectoryVerificationCodesList
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
