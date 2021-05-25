{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Directory
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Admin SDK lets administrators of enterprise domains to view and manage
-- resources like user, groups etc. It also provides audit and usage
-- reports of domain.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference>
module Network.Google.Directory
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

    -- * API Declaration
    , DirectoryAPI

    -- * Resources

    -- ** admin.channels.stop
    , module Network.Google.Resource.Admin.Channels.Stop

    -- ** admin.customer.devices.chromeos.commands.get
    , module Network.Google.Resource.Admin.Customer.Devices.Chromeos.Commands.Get

    -- ** admin.customer.devices.chromeos.issueCommand
    , module Network.Google.Resource.Admin.Customer.Devices.Chromeos.IssueCommand

    -- ** admin.customers.chrome.printers.batchCreatePrinters
    , module Network.Google.Resource.Admin.Customers.Chrome.Printers.BatchCreatePrinters

    -- ** admin.customers.chrome.printers.batchDeletePrinters
    , module Network.Google.Resource.Admin.Customers.Chrome.Printers.BatchDeletePrinters

    -- ** admin.customers.chrome.printers.create
    , module Network.Google.Resource.Admin.Customers.Chrome.Printers.Create

    -- ** admin.customers.chrome.printers.delete
    , module Network.Google.Resource.Admin.Customers.Chrome.Printers.Delete

    -- ** admin.customers.chrome.printers.get
    , module Network.Google.Resource.Admin.Customers.Chrome.Printers.Get

    -- ** admin.customers.chrome.printers.list
    , module Network.Google.Resource.Admin.Customers.Chrome.Printers.List

    -- ** admin.customers.chrome.printers.listPrinterModels
    , module Network.Google.Resource.Admin.Customers.Chrome.Printers.ListPrinterModels

    -- ** admin.customers.chrome.printers.patch
    , module Network.Google.Resource.Admin.Customers.Chrome.Printers.Patch

    -- ** directory.asps.delete
    , module Network.Google.Resource.Directory.Asps.Delete

    -- ** directory.asps.get
    , module Network.Google.Resource.Directory.Asps.Get

    -- ** directory.asps.list
    , module Network.Google.Resource.Directory.Asps.List

    -- ** directory.chromeosdevices.action
    , module Network.Google.Resource.Directory.ChromeosDevices.Action

    -- ** directory.chromeosdevices.get
    , module Network.Google.Resource.Directory.ChromeosDevices.Get

    -- ** directory.chromeosdevices.list
    , module Network.Google.Resource.Directory.ChromeosDevices.List

    -- ** directory.chromeosdevices.moveDevicesToOu
    , module Network.Google.Resource.Directory.ChromeosDevices.MoveDevicesToOu

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

    -- ** directory.members.hasMember
    , module Network.Google.Resource.Directory.Members.HasMember

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

    -- ** directory.resources.buildings.delete
    , module Network.Google.Resource.Directory.Resources.Buildings.Delete

    -- ** directory.resources.buildings.get
    , module Network.Google.Resource.Directory.Resources.Buildings.Get

    -- ** directory.resources.buildings.insert
    , module Network.Google.Resource.Directory.Resources.Buildings.Insert

    -- ** directory.resources.buildings.list
    , module Network.Google.Resource.Directory.Resources.Buildings.List

    -- ** directory.resources.buildings.patch
    , module Network.Google.Resource.Directory.Resources.Buildings.Patch

    -- ** directory.resources.buildings.update
    , module Network.Google.Resource.Directory.Resources.Buildings.Update

    -- ** directory.resources.calendars.delete
    , module Network.Google.Resource.Directory.Resources.Calendars.Delete

    -- ** directory.resources.calendars.get
    , module Network.Google.Resource.Directory.Resources.Calendars.Get

    -- ** directory.resources.calendars.insert
    , module Network.Google.Resource.Directory.Resources.Calendars.Insert

    -- ** directory.resources.calendars.list
    , module Network.Google.Resource.Directory.Resources.Calendars.List

    -- ** directory.resources.calendars.patch
    , module Network.Google.Resource.Directory.Resources.Calendars.Patch

    -- ** directory.resources.calendars.update
    , module Network.Google.Resource.Directory.Resources.Calendars.Update

    -- ** directory.resources.features.delete
    , module Network.Google.Resource.Directory.Resources.Features.Delete

    -- ** directory.resources.features.get
    , module Network.Google.Resource.Directory.Resources.Features.Get

    -- ** directory.resources.features.insert
    , module Network.Google.Resource.Directory.Resources.Features.Insert

    -- ** directory.resources.features.list
    , module Network.Google.Resource.Directory.Resources.Features.List

    -- ** directory.resources.features.patch
    , module Network.Google.Resource.Directory.Resources.Features.Patch

    -- ** directory.resources.features.rename
    , module Network.Google.Resource.Directory.Resources.Features.Rename

    -- ** directory.resources.features.update
    , module Network.Google.Resource.Directory.Resources.Features.Update

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

    -- ** directory.twoStepVerification.turnOff
    , module Network.Google.Resource.Directory.TwoStepVerification.TurnOff

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

    -- ** directory.users.signOut
    , module Network.Google.Resource.Directory.Users.SignOut

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

    -- ** UserLocation
    , UserLocation
    , userLocation
    , ulArea
    , ulBuildingId
    , ulDeskCode
    , ulFloorName
    , ulType
    , ulCustomType
    , ulFloorSection

    -- ** VerificationCode
    , VerificationCode
    , verificationCode
    , vcVerificationCode
    , vcEtag
    , vcKind
    , vcUserId

    -- ** Feature
    , Feature
    , feature
    , fEtags
    , fKind
    , fName

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

    -- ** ListPrintersResponse
    , ListPrintersResponse
    , listPrintersResponse
    , lprNextPageToken
    , lprPrinters

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

    -- ** ChromeOSDeviceDiskVolumeReportsItem
    , ChromeOSDeviceDiskVolumeReportsItem
    , chromeOSDeviceDiskVolumeReportsItem
    , coddvriVolumeInfo

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

    -- ** DirectoryChromeosDevicesIssueCommandRequest
    , DirectoryChromeosDevicesIssueCommandRequest
    , directoryChromeosDevicesIssueCommandRequest
    , dcdicrPayload
    , dcdicrCommandType

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

    -- ** DirectoryChromeosDevicesCommandType
    , DirectoryChromeosDevicesCommandType (..)

    -- ** ChromeOSDevice
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

    -- ** AuxiliaryMessageSeverity
    , AuxiliaryMessageSeverity (..)

    -- ** Schemas
    , Schemas
    , schemas
    , sEtag
    , sSchemas
    , sKind

    -- ** ChromeOSDeviceDeviceFilesItem
    , ChromeOSDeviceDeviceFilesItem
    , chromeOSDeviceDeviceFilesItem
    , coddfiName
    , coddfiDownloadURL
    , coddfiType
    , coddfiCreateTime

    -- ** UsersListViewType
    , UsersListViewType (..)

    -- ** Buildings
    , Buildings
    , buildings
    , bEtag
    , bNextPageToken
    , bBuildings
    , bKind

    -- ** OrgUnitsListType
    , OrgUnitsListType (..)

    -- ** Empty
    , Empty
    , empty

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

    -- ** DirectoryChromeosDevicesIssueCommandRequestCommandType
    , DirectoryChromeosDevicesIssueCommandRequestCommandType (..)

    -- ** BuildingAddress
    , BuildingAddress
    , buildingAddress
    , baLanguageCode
    , baRegionCode
    , baSublocality
    , baPostalCode
    , baLocality
    , baAdministrativeArea
    , baAddressLines

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

    -- ** UserKeyword
    , UserKeyword
    , userKeyword
    , ukValue
    , ukType
    , ukCustomType

    -- ** DomainAliases
    , DomainAliases
    , domainAliases
    , daEtag
    , daKind
    , daDomainAliases

    -- ** ChromeOSDeviceLastKnownNetworkItem
    , ChromeOSDeviceLastKnownNetworkItem
    , chromeOSDeviceLastKnownNetworkItem
    , codlkniWanIPAddress
    , codlkniIPAddress

    -- ** Aliases
    , Aliases
    , aliases
    , aliEtag
    , aliKind
    , aliAliases

    -- ** DirectoryChromeosDevicesCommandState
    , DirectoryChromeosDevicesCommandState (..)

    -- ** CalendarResource
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

    -- ** GroupsListOrderBy
    , GroupsListOrderBy (..)

    -- ** UserUndelete
    , UserUndelete
    , userUndelete
    , uuOrgUnitPath

    -- ** FailureInfoErrorCode
    , FailureInfoErrorCode (..)

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

    -- ** ListPrinterModelsResponse
    , ListPrinterModelsResponse
    , listPrinterModelsResponse
    , lpmrNextPageToken
    , lpmrPrinterModels

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

    -- ** ResourcesBuildingsPatchCoordinatesSource
    , ResourcesBuildingsPatchCoordinatesSource (..)

    -- ** UserName
    , UserName
    , userName
    , unGivenName
    , unFullName
    , unFamilyName

    -- ** UsersWatchViewType
    , UsersWatchViewType (..)

    -- ** Building
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

    -- ** ChromeOSDeviceRecentUsersItem
    , ChromeOSDeviceRecentUsersItem
    , chromeOSDeviceRecentUsersItem
    , codruiEmail
    , codruiType

    -- ** FailureInfo
    , FailureInfo
    , failureInfo
    , fiPrinterId
    , fiPrinter
    , fiErrorCode
    , fiErrorMessage

    -- ** DomainAlias
    , DomainAlias
    , domainAlias
    , dCreationTime
    , dEtag
    , dKind
    , dVerified
    , dDomainAliasName
    , dParentDomainName

    -- ** DirectoryChromeosDevicesCommandResult
    , DirectoryChromeosDevicesCommandResult
    , directoryChromeosDevicesCommandResult
    , dcdcrExecuteTime
    , dcdcrResult
    , dcdcrErrorMessage

    -- ** BatchCreatePrintersResponse
    , BatchCreatePrintersResponse
    , batchCreatePrintersResponse
    , bcprPrinters
    , bcprFailures

    -- ** UserGender
    , UserGender
    , userGender
    , ugAddressMeAs
    , ugCustomGender
    , ugType

    -- ** Alias
    , Alias
    , alias
    , aaEtag
    , aaKind
    , aaAlias
    , aaId
    , aaPrimaryEmail

    -- ** Printer
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

    -- ** UsersGetProjection
    , UsersGetProjection (..)

    -- ** Schema
    , Schema
    , schema
    , schEtag
    , schKind
    , schSchemaName
    , schSchemaId
    , schDisplayName
    , schFields

    -- ** PrinterModel
    , PrinterModel
    , printerModel
    , pmManufacturer
    , pmMakeAndModel
    , pmDisplayName

    -- ** BatchDeletePrintersRequest
    , BatchDeletePrintersRequest
    , batchDeletePrintersRequest
    , bdprPrinterIds

    -- ** ChromeOSMoveDevicesToOu
    , ChromeOSMoveDevicesToOu
    , chromeOSMoveDevicesToOu
    , comdtoDeviceIds

    -- ** ResourcesBuildingsUpdateCoordinatesSource
    , ResourcesBuildingsUpdateCoordinatesSource (..)

    -- ** AuxiliaryMessage
    , AuxiliaryMessage
    , auxiliaryMessage
    , amSeverity
    , amFieldMask
    , amAuxiliaryMessage

    -- ** User
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

    -- ** MobileDevicesListProjection
    , MobileDevicesListProjection (..)

    -- ** ChromeOSDeviceAction
    , ChromeOSDeviceAction
    , chromeOSDeviceAction
    , codaAction
    , codaDeprovisionReason

    -- ** FeatureRename
    , FeatureRename
    , featureRename
    , frNewName

    -- ** Role
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

    -- ** BatchCreatePrintersRequest
    , BatchCreatePrintersRequest
    , batchCreatePrintersRequest
    , bcprRequests

    -- ** ChromeOSDeviceDiskVolumeReportsItemVolumeInfoItem
    , ChromeOSDeviceDiskVolumeReportsItemVolumeInfoItem
    , chromeOSDeviceDiskVolumeReportsItemVolumeInfoItem
    , coddvriviiStorageFree
    , coddvriviiStorageTotal
    , coddvriviiVolumeId

    -- ** MobileDevicesListOrderBy
    , MobileDevicesListOrderBy (..)

    -- ** UsersListSortOrder
    , UsersListSortOrder (..)

    -- ** ResourcesBuildingsInsertCoordinatesSource
    , ResourcesBuildingsInsertCoordinatesSource (..)

    -- ** OrgUnits
    , OrgUnits
    , orgUnits
    , oEtag
    , oKind
    , oOrganizationUnits

    -- ** UserSSHPublicKey
    , UserSSHPublicKey
    , userSSHPublicKey
    , uspkFingerprint
    , uspkKey
    , uspkExpirationTimeUsec

    -- ** DirectoryChromeosDevicesCommand
    , DirectoryChromeosDevicesCommand
    , directoryChromeosDevicesCommand
    , dcdcState
    , dcdcPayload
    , dcdcCommandExpireTime
    , dcdcIssueTime
    , dcdcCommandId
    , dcdcType
    , dcdcCommandResult

    -- ** VerificationCodes
    , VerificationCodes
    , verificationCodes
    , vEtag
    , vKind
    , vItems

    -- ** BuildingCoordinates
    , BuildingCoordinates
    , buildingCoordinates
    , bcLatitude
    , bcLongitude

    -- ** ChromeosDevicesListSortOrder
    , ChromeosDevicesListSortOrder (..)

    -- ** UserRelation
    , UserRelation
    , userRelation
    , urValue
    , urType
    , urCustomType

    -- ** DirectoryChromeosDevicesCommandResultResult
    , DirectoryChromeosDevicesCommandResultResult (..)

    -- ** UsersWatchSortOrder
    , UsersWatchSortOrder (..)

    -- ** Features
    , Features
    , features
    , feaEtag
    , feaNextPageToken
    , feaKind
    , feaFeatures

    -- ** ChannelParams
    , ChannelParams
    , channelParams
    , cpAddtional

    -- ** ChromeOSDeviceTpmVersionInfo
    , ChromeOSDeviceTpmVersionInfo
    , chromeOSDeviceTpmVersionInfo
    , codtviVendorSpecific
    , codtviManufacturer
    , codtviSpecLevel
    , codtviTpmModel
    , codtviFamily
    , codtviFirmwareVersion

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
    , uoFullTimeEquivalent
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

    -- ** GroupsListSortOrder
    , GroupsListSortOrder (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** ChromeOSDeviceActiveTimeRangesItem
    , ChromeOSDeviceActiveTimeRangesItem
    , chromeOSDeviceActiveTimeRangesItem
    , codatriDate
    , codatriActiveTime

    -- ** DirectoryChromeosDevicesIssueCommandResponse
    , DirectoryChromeosDevicesIssueCommandResponse
    , directoryChromeosDevicesIssueCommandResponse
    , dcdicrCommandId

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

    -- ** ChromeOSDeviceSystemRamFreeReportsItem
    , ChromeOSDeviceSystemRamFreeReportsItem
    , chromeOSDeviceSystemRamFreeReportsItem
    , codsrfriReportTime
    , codsrfriSystemRamFreeInfo

    -- ** UserPosixAccount
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

    -- ** UsersListProjection
    , UsersListProjection (..)

    -- ** FeatureInstance
    , FeatureInstance
    , featureInstance
    , fiFeature

    -- ** ChromeosDevicesUpdateProjection
    , ChromeosDevicesUpdateProjection (..)

    -- ** MobileDevicesGetProjection
    , MobileDevicesGetProjection (..)

    -- ** MobileDevice
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

    -- ** ChromeOSDeviceCPUStatusReportsItem
    , ChromeOSDeviceCPUStatusReportsItem
    , chromeOSDeviceCPUStatusReportsItem
    , codcsriCPUUtilizationPercentageInfo
    , codcsriCPUTemperatureInfo
    , codcsriReportTime

    -- ** Member
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

    -- ** UserCustomProperties
    , UserCustomProperties
    , userCustomProperties
    , ucpAddtional

    -- ** UserLanguage
    , UserLanguage
    , userLanguage
    , ulLanguageCode
    , ulCustomLanguage

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

    -- ** BatchDeletePrintersResponse
    , BatchDeletePrintersResponse
    , batchDeletePrintersResponse
    , bPrinterIds
    , bFailedPrinters

    -- ** CreatePrinterRequest
    , CreatePrinterRequest
    , createPrinterRequest
    , cprParent
    , cprPrinter

    -- ** CalendarResources
    , CalendarResources
    , calendarResources
    , crsEtag
    , crsNextPageToken
    , crsKind
    , crsItems

    -- ** ChromeosDevicesListOrderBy
    , ChromeosDevicesListOrderBy (..)

    -- ** UsersWatchProjection
    , UsersWatchProjection (..)

    -- ** UsersWatchOrderBy
    , UsersWatchOrderBy (..)

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
    , sfsDisplayName
    , sfsMultiValued

    -- ** ChromeOSDeviceScreenshotFilesItem
    , ChromeOSDeviceScreenshotFilesItem
    , chromeOSDeviceScreenshotFilesItem
    , codsfiName
    , codsfiDownloadURL
    , codsfiType
    , codsfiCreateTime

    -- ** ChromeOSDevices
    , ChromeOSDevices
    , chromeOSDevices
    , cosdEtag
    , cosdNextPageToken
    , cosdKind
    , cosdChromeosDevices

    -- ** MembersHasMember
    , MembersHasMember
    , membersHasMember
    , mhmIsMember

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

    -- ** ChromeOSDeviceCPUStatusReportsItemCPUTemperatureInfoItem
    , ChromeOSDeviceCPUStatusReportsItemCPUTemperatureInfoItem
    , chromeOSDeviceCPUStatusReportsItemCPUTemperatureInfoItem
    , codcsrictiiTemperature
    , codcsrictiiLabel

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

import Network.Google.Prelude
import Network.Google.Directory.Types
import Network.Google.Resource.Admin.Channels.Stop
import Network.Google.Resource.Admin.Customer.Devices.Chromeos.Commands.Get
import Network.Google.Resource.Admin.Customer.Devices.Chromeos.IssueCommand
import Network.Google.Resource.Admin.Customers.Chrome.Printers.BatchCreatePrinters
import Network.Google.Resource.Admin.Customers.Chrome.Printers.BatchDeletePrinters
import Network.Google.Resource.Admin.Customers.Chrome.Printers.Create
import Network.Google.Resource.Admin.Customers.Chrome.Printers.Delete
import Network.Google.Resource.Admin.Customers.Chrome.Printers.Get
import Network.Google.Resource.Admin.Customers.Chrome.Printers.List
import Network.Google.Resource.Admin.Customers.Chrome.Printers.ListPrinterModels
import Network.Google.Resource.Admin.Customers.Chrome.Printers.Patch
import Network.Google.Resource.Directory.Asps.Delete
import Network.Google.Resource.Directory.Asps.Get
import Network.Google.Resource.Directory.Asps.List
import Network.Google.Resource.Directory.ChromeosDevices.Action
import Network.Google.Resource.Directory.ChromeosDevices.Get
import Network.Google.Resource.Directory.ChromeosDevices.List
import Network.Google.Resource.Directory.ChromeosDevices.MoveDevicesToOu
import Network.Google.Resource.Directory.ChromeosDevices.Patch
import Network.Google.Resource.Directory.ChromeosDevices.Update
import Network.Google.Resource.Directory.Customers.Get
import Network.Google.Resource.Directory.Customers.Patch
import Network.Google.Resource.Directory.Customers.Update
import Network.Google.Resource.Directory.DomainAliases.Delete
import Network.Google.Resource.Directory.DomainAliases.Get
import Network.Google.Resource.Directory.DomainAliases.Insert
import Network.Google.Resource.Directory.DomainAliases.List
import Network.Google.Resource.Directory.Domains.Delete
import Network.Google.Resource.Directory.Domains.Get
import Network.Google.Resource.Directory.Domains.Insert
import Network.Google.Resource.Directory.Domains.List
import Network.Google.Resource.Directory.Groups.Aliases.Delete
import Network.Google.Resource.Directory.Groups.Aliases.Insert
import Network.Google.Resource.Directory.Groups.Aliases.List
import Network.Google.Resource.Directory.Groups.Delete
import Network.Google.Resource.Directory.Groups.Get
import Network.Google.Resource.Directory.Groups.Insert
import Network.Google.Resource.Directory.Groups.List
import Network.Google.Resource.Directory.Groups.Patch
import Network.Google.Resource.Directory.Groups.Update
import Network.Google.Resource.Directory.Members.Delete
import Network.Google.Resource.Directory.Members.Get
import Network.Google.Resource.Directory.Members.HasMember
import Network.Google.Resource.Directory.Members.Insert
import Network.Google.Resource.Directory.Members.List
import Network.Google.Resource.Directory.Members.Patch
import Network.Google.Resource.Directory.Members.Update
import Network.Google.Resource.Directory.MobileDevices.Action
import Network.Google.Resource.Directory.MobileDevices.Delete
import Network.Google.Resource.Directory.MobileDevices.Get
import Network.Google.Resource.Directory.MobileDevices.List
import Network.Google.Resource.Directory.OrgUnits.Delete
import Network.Google.Resource.Directory.OrgUnits.Get
import Network.Google.Resource.Directory.OrgUnits.Insert
import Network.Google.Resource.Directory.OrgUnits.List
import Network.Google.Resource.Directory.OrgUnits.Patch
import Network.Google.Resource.Directory.OrgUnits.Update
import Network.Google.Resource.Directory.Privileges.List
import Network.Google.Resource.Directory.Resources.Buildings.Delete
import Network.Google.Resource.Directory.Resources.Buildings.Get
import Network.Google.Resource.Directory.Resources.Buildings.Insert
import Network.Google.Resource.Directory.Resources.Buildings.List
import Network.Google.Resource.Directory.Resources.Buildings.Patch
import Network.Google.Resource.Directory.Resources.Buildings.Update
import Network.Google.Resource.Directory.Resources.Calendars.Delete
import Network.Google.Resource.Directory.Resources.Calendars.Get
import Network.Google.Resource.Directory.Resources.Calendars.Insert
import Network.Google.Resource.Directory.Resources.Calendars.List
import Network.Google.Resource.Directory.Resources.Calendars.Patch
import Network.Google.Resource.Directory.Resources.Calendars.Update
import Network.Google.Resource.Directory.Resources.Features.Delete
import Network.Google.Resource.Directory.Resources.Features.Get
import Network.Google.Resource.Directory.Resources.Features.Insert
import Network.Google.Resource.Directory.Resources.Features.List
import Network.Google.Resource.Directory.Resources.Features.Patch
import Network.Google.Resource.Directory.Resources.Features.Rename
import Network.Google.Resource.Directory.Resources.Features.Update
import Network.Google.Resource.Directory.RoleAssignments.Delete
import Network.Google.Resource.Directory.RoleAssignments.Get
import Network.Google.Resource.Directory.RoleAssignments.Insert
import Network.Google.Resource.Directory.RoleAssignments.List
import Network.Google.Resource.Directory.Roles.Delete
import Network.Google.Resource.Directory.Roles.Get
import Network.Google.Resource.Directory.Roles.Insert
import Network.Google.Resource.Directory.Roles.List
import Network.Google.Resource.Directory.Roles.Patch
import Network.Google.Resource.Directory.Roles.Update
import Network.Google.Resource.Directory.Schemas.Delete
import Network.Google.Resource.Directory.Schemas.Get
import Network.Google.Resource.Directory.Schemas.Insert
import Network.Google.Resource.Directory.Schemas.List
import Network.Google.Resource.Directory.Schemas.Patch
import Network.Google.Resource.Directory.Schemas.Update
import Network.Google.Resource.Directory.Tokens.Delete
import Network.Google.Resource.Directory.Tokens.Get
import Network.Google.Resource.Directory.Tokens.List
import Network.Google.Resource.Directory.TwoStepVerification.TurnOff
import Network.Google.Resource.Directory.Users.Aliases.Delete
import Network.Google.Resource.Directory.Users.Aliases.Insert
import Network.Google.Resource.Directory.Users.Aliases.List
import Network.Google.Resource.Directory.Users.Aliases.Watch
import Network.Google.Resource.Directory.Users.Delete
import Network.Google.Resource.Directory.Users.Get
import Network.Google.Resource.Directory.Users.Insert
import Network.Google.Resource.Directory.Users.List
import Network.Google.Resource.Directory.Users.MakeAdmin
import Network.Google.Resource.Directory.Users.Patch
import Network.Google.Resource.Directory.Users.Photos.Delete
import Network.Google.Resource.Directory.Users.Photos.Get
import Network.Google.Resource.Directory.Users.Photos.Patch
import Network.Google.Resource.Directory.Users.Photos.Update
import Network.Google.Resource.Directory.Users.SignOut
import Network.Google.Resource.Directory.Users.Undelete
import Network.Google.Resource.Directory.Users.Update
import Network.Google.Resource.Directory.Users.Watch
import Network.Google.Resource.Directory.VerificationCodes.Generate
import Network.Google.Resource.Directory.VerificationCodes.Invalidate
import Network.Google.Resource.Directory.VerificationCodes.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Admin SDK API service.
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
       :<|> CustomersChromePrintersListResource
       :<|> CustomersChromePrintersListPrinterModelsResource
       :<|> CustomersChromePrintersPatchResource
       :<|> CustomersChromePrintersGetResource
       :<|> CustomersChromePrintersCreateResource
       :<|>
       CustomersChromePrintersBatchCreatePrintersResource
       :<|>
       CustomersChromePrintersBatchDeletePrintersResource
       :<|> CustomersChromePrintersDeleteResource
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
       :<|> UsersSignOutResource
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
       :<|> MembersHasMemberResource
       :<|> MembersPatchResource
       :<|> MembersGetResource
       :<|> MembersDeleteResource
       :<|> MembersUpdateResource
       :<|> MobileDevicesListResource
       :<|> MobileDevicesGetResource
       :<|> MobileDevicesActionResource
       :<|> MobileDevicesDeleteResource
       :<|> ResourcesBuildingsInsertResource
       :<|> ResourcesBuildingsListResource
       :<|> ResourcesBuildingsPatchResource
       :<|> ResourcesBuildingsGetResource
       :<|> ResourcesBuildingsDeleteResource
       :<|> ResourcesBuildingsUpdateResource
       :<|> ResourcesCalendarsInsertResource
       :<|> ResourcesCalendarsListResource
       :<|> ResourcesCalendarsPatchResource
       :<|> ResourcesCalendarsGetResource
       :<|> ResourcesCalendarsDeleteResource
       :<|> ResourcesCalendarsUpdateResource
       :<|> ResourcesFeaturesInsertResource
       :<|> ResourcesFeaturesListResource
       :<|> ResourcesFeaturesPatchResource
       :<|> ResourcesFeaturesGetResource
       :<|> ResourcesFeaturesRenameResource
       :<|> ResourcesFeaturesDeleteResource
       :<|> ResourcesFeaturesUpdateResource
       :<|> CustomerDevicesChromeosCommandsGetResource
       :<|> CustomerDevicesChromeosIssueCommandResource
       :<|> TwoStepVerificationTurnOffResource
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
       :<|> ChromeosDevicesListResource
       :<|> ChromeosDevicesMoveDevicesToOuResource
       :<|> ChromeosDevicesPatchResource
       :<|> ChromeosDevicesGetResource
       :<|> ChromeosDevicesActionResource
       :<|> ChromeosDevicesUpdateResource
       :<|> AspsListResource
       :<|> AspsGetResource
       :<|> AspsDeleteResource
