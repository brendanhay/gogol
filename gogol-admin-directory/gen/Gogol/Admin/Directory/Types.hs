{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Admin.Directory.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Admin.Directory.Types
  ( -- * Configuration
    adminDirectoryService,

    -- * OAuth Scopes
    adminChromePrintersScope,
    adminChromePrintersReadOnlyScope,
    adminDirectoryCustomerScope,
    adminDirectoryCustomerReadOnlyScope,
    adminDirectoryDeviceChromeosScope,
    adminDirectoryDeviceChromeosReadOnlyScope,
    adminDirectoryDeviceMobileScope,
    adminDirectoryDeviceMobileActionScope,
    adminDirectoryDeviceMobileReadOnlyScope,
    adminDirectoryDomainScope,
    adminDirectoryDomainReadOnlyScope,
    adminDirectoryGroupScope,
    adminDirectoryGroupMemberScope,
    adminDirectoryGroupMemberReadOnlyScope,
    adminDirectoryGroupReadOnlyScope,
    adminDirectoryOrgunitScope,
    adminDirectoryOrgunitReadOnlyScope,
    adminDirectoryResourceCalendarScope,
    adminDirectoryResourceCalendarReadOnlyScope,
    adminDirectoryRoleManagementScope,
    adminDirectoryRoleManagementReadOnlyScope,
    adminDirectoryUserScope,
    adminDirectoryUserAliasScope,
    adminDirectoryUserAliasReadOnlyScope,
    adminDirectoryUserReadOnlyScope,
    adminDirectoryUserSecurityScope,
    adminDirectoryUserschemaScope,
    adminDirectoryUserschemaReadOnlyScope,
    cloudPlatformScope,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Alias
    Alias (..),
    newAlias,

    -- ** Aliases
    Aliases (..),
    newAliases,

    -- ** Asp
    Asp (..),
    newAsp,

    -- ** Asps
    Asps (..),
    newAsps,

    -- ** AuxiliaryMessage
    AuxiliaryMessage (..),
    newAuxiliaryMessage,

    -- ** AuxiliaryMessage_Severity
    AuxiliaryMessage_Severity (..),

    -- ** BatchCreatePrintersRequest
    BatchCreatePrintersRequest (..),
    newBatchCreatePrintersRequest,

    -- ** BatchCreatePrintersResponse
    BatchCreatePrintersResponse (..),
    newBatchCreatePrintersResponse,

    -- ** BatchDeletePrintersRequest
    BatchDeletePrintersRequest (..),
    newBatchDeletePrintersRequest,

    -- ** BatchDeletePrintersResponse
    BatchDeletePrintersResponse (..),
    newBatchDeletePrintersResponse,

    -- ** Building
    Building (..),
    newBuilding,

    -- ** BuildingAddress
    BuildingAddress (..),
    newBuildingAddress,

    -- ** BuildingCoordinates
    BuildingCoordinates (..),
    newBuildingCoordinates,

    -- ** Buildings
    Buildings (..),
    newBuildings,

    -- ** CalendarResource
    CalendarResource (..),
    newCalendarResource,

    -- ** CalendarResources
    CalendarResources (..),
    newCalendarResources,

    -- ** Channel
    Channel (..),
    newChannel,

    -- ** Channel_Params
    Channel_Params (..),
    newChannel_Params,

    -- ** ChromeOsDevice
    ChromeOsDevice (..),
    newChromeOsDevice,

    -- ** ChromeOsDevice_ActiveTimeRangesItem
    ChromeOsDevice_ActiveTimeRangesItem (..),
    newChromeOsDevice_ActiveTimeRangesItem,

    -- ** ChromeOsDevice_CpuInfoItem
    ChromeOsDevice_CpuInfoItem (..),
    newChromeOsDevice_CpuInfoItem,

    -- ** ChromeOsDevice_CpuInfoItem_LogicalCpusItem
    ChromeOsDevice_CpuInfoItem_LogicalCpusItem (..),
    newChromeOsDevice_CpuInfoItem_LogicalCpusItem,

    -- ** ChromeOsDevice_CpuInfoItem_LogicalCpusItem_CStatesItem
    ChromeOsDevice_CpuInfoItem_LogicalCpusItem_CStatesItem (..),
    newChromeOsDevice_CpuInfoItem_LogicalCpusItem_CStatesItem,

    -- ** ChromeOsDevice_CpuStatusReportsItem
    ChromeOsDevice_CpuStatusReportsItem (..),
    newChromeOsDevice_CpuStatusReportsItem,

    -- ** ChromeOsDevice_CpuStatusReportsItem_CpuTemperatureInfoItem
    ChromeOsDevice_CpuStatusReportsItem_CpuTemperatureInfoItem (..),
    newChromeOsDevice_CpuStatusReportsItem_CpuTemperatureInfoItem,

    -- ** ChromeOsDevice_DeviceFilesItem
    ChromeOsDevice_DeviceFilesItem (..),
    newChromeOsDevice_DeviceFilesItem,

    -- ** ChromeOsDevice_DiskVolumeReportsItem
    ChromeOsDevice_DiskVolumeReportsItem (..),
    newChromeOsDevice_DiskVolumeReportsItem,

    -- ** ChromeOsDevice_DiskVolumeReportsItem_VolumeInfoItem
    ChromeOsDevice_DiskVolumeReportsItem_VolumeInfoItem (..),
    newChromeOsDevice_DiskVolumeReportsItem_VolumeInfoItem,

    -- ** ChromeOsDevice_LastKnownNetworkItem
    ChromeOsDevice_LastKnownNetworkItem (..),
    newChromeOsDevice_LastKnownNetworkItem,

    -- ** ChromeOsDevice_RecentUsersItem
    ChromeOsDevice_RecentUsersItem (..),
    newChromeOsDevice_RecentUsersItem,

    -- ** ChromeOsDevice_ScreenshotFilesItem
    ChromeOsDevice_ScreenshotFilesItem (..),
    newChromeOsDevice_ScreenshotFilesItem,

    -- ** ChromeOsDevice_SystemRamFreeReportsItem
    ChromeOsDevice_SystemRamFreeReportsItem (..),
    newChromeOsDevice_SystemRamFreeReportsItem,

    -- ** ChromeOsDevice_TpmVersionInfo
    ChromeOsDevice_TpmVersionInfo (..),
    newChromeOsDevice_TpmVersionInfo,

    -- ** ChromeOsDeviceAction
    ChromeOsDeviceAction (..),
    newChromeOsDeviceAction,

    -- ** ChromeOsDevices
    ChromeOsDevices (..),
    newChromeOsDevices,

    -- ** ChromeOsMoveDevicesToOu
    ChromeOsMoveDevicesToOu (..),
    newChromeOsMoveDevicesToOu,

    -- ** CreatePrinterRequest
    CreatePrinterRequest (..),
    newCreatePrinterRequest,

    -- ** Customer
    Customer (..),
    newCustomer,

    -- ** CustomerPostalAddress
    CustomerPostalAddress (..),
    newCustomerPostalAddress,

    -- ** DirectoryChromeosdevicesCommand
    DirectoryChromeosdevicesCommand (..),
    newDirectoryChromeosdevicesCommand,

    -- ** DirectoryChromeosdevicesCommand_State
    DirectoryChromeosdevicesCommand_State (..),

    -- ** DirectoryChromeosdevicesCommand_Type
    DirectoryChromeosdevicesCommand_Type (..),

    -- ** DirectoryChromeosdevicesCommandResult
    DirectoryChromeosdevicesCommandResult (..),
    newDirectoryChromeosdevicesCommandResult,

    -- ** DirectoryChromeosdevicesCommandResult_Result
    DirectoryChromeosdevicesCommandResult_Result (..),

    -- ** DirectoryChromeosdevicesIssueCommandRequest
    DirectoryChromeosdevicesIssueCommandRequest (..),
    newDirectoryChromeosdevicesIssueCommandRequest,

    -- ** DirectoryChromeosdevicesIssueCommandRequest_CommandType
    DirectoryChromeosdevicesIssueCommandRequest_CommandType (..),

    -- ** DirectoryChromeosdevicesIssueCommandResponse
    DirectoryChromeosdevicesIssueCommandResponse (..),
    newDirectoryChromeosdevicesIssueCommandResponse,

    -- ** DomainAlias
    DomainAlias (..),
    newDomainAlias,

    -- ** DomainAliases
    DomainAliases (..),
    newDomainAliases,

    -- ** Domains
    Domains (..),
    newDomains,

    -- ** Domains2
    Domains2 (..),
    newDomains2,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** FailureInfo
    FailureInfo (..),
    newFailureInfo,

    -- ** FailureInfo_ErrorCode
    FailureInfo_ErrorCode (..),

    -- ** Feature
    Feature (..),
    newFeature,

    -- ** FeatureInstance
    FeatureInstance (..),
    newFeatureInstance,

    -- ** FeatureRename
    FeatureRename (..),
    newFeatureRename,

    -- ** Features
    Features (..),
    newFeatures,

    -- ** Group
    Group (..),
    newGroup,

    -- ** Groups
    Groups (..),
    newGroups,

    -- ** ListPrinterModelsResponse
    ListPrinterModelsResponse (..),
    newListPrinterModelsResponse,

    -- ** ListPrintersResponse
    ListPrintersResponse (..),
    newListPrintersResponse,

    -- ** Member
    Member (..),
    newMember,

    -- ** Members
    Members (..),
    newMembers,

    -- ** MembersHasMember
    MembersHasMember (..),
    newMembersHasMember,

    -- ** MobileDevice
    MobileDevice (..),
    newMobileDevice,

    -- ** MobileDevice_ApplicationsItem
    MobileDevice_ApplicationsItem (..),
    newMobileDevice_ApplicationsItem,

    -- ** MobileDeviceAction
    MobileDeviceAction (..),
    newMobileDeviceAction,

    -- ** MobileDevices
    MobileDevices (..),
    newMobileDevices,

    -- ** OrgUnit
    OrgUnit (..),
    newOrgUnit,

    -- ** OrgUnits
    OrgUnits (..),
    newOrgUnits,

    -- ** Printer
    Printer (..),
    newPrinter,

    -- ** PrinterModel
    PrinterModel (..),
    newPrinterModel,

    -- ** Privilege
    Privilege (..),
    newPrivilege,

    -- ** Privileges
    Privileges (..),
    newPrivileges,

    -- ** Role
    Role (..),
    newRole,

    -- ** Role_RolePrivilegesItem
    Role_RolePrivilegesItem (..),
    newRole_RolePrivilegesItem,

    -- ** RoleAssignment
    RoleAssignment (..),
    newRoleAssignment,

    -- ** RoleAssignments
    RoleAssignments (..),
    newRoleAssignments,

    -- ** Roles
    Roles (..),
    newRoles,

    -- ** Schema
    Schema (..),
    newSchema,

    -- ** SchemaFieldSpec
    SchemaFieldSpec (..),
    newSchemaFieldSpec,

    -- ** SchemaFieldSpec_NumericIndexingSpec
    SchemaFieldSpec_NumericIndexingSpec (..),
    newSchemaFieldSpec_NumericIndexingSpec,

    -- ** Schemas
    Schemas (..),
    newSchemas,

    -- ** Token
    Token (..),
    newToken,

    -- ** Tokens
    Tokens (..),
    newTokens,

    -- ** User
    User (..),
    newUser,

    -- ** User_CustomSchemas
    User_CustomSchemas (..),
    newUser_CustomSchemas,

    -- ** UserAbout
    UserAbout (..),
    newUserAbout,

    -- ** UserAddress
    UserAddress (..),
    newUserAddress,

    -- ** UserCustomProperties
    UserCustomProperties (..),
    newUserCustomProperties,

    -- ** UserEmail
    UserEmail (..),
    newUserEmail,

    -- ** UserExternalId
    UserExternalId (..),
    newUserExternalId,

    -- ** UserGender
    UserGender (..),
    newUserGender,

    -- ** UserIm
    UserIm (..),
    newUserIm,

    -- ** UserKeyword
    UserKeyword (..),
    newUserKeyword,

    -- ** UserLanguage
    UserLanguage (..),
    newUserLanguage,

    -- ** UserLocation
    UserLocation (..),
    newUserLocation,

    -- ** UserMakeAdmin
    UserMakeAdmin (..),
    newUserMakeAdmin,

    -- ** UserName
    UserName (..),
    newUserName,

    -- ** UserOrganization
    UserOrganization (..),
    newUserOrganization,

    -- ** UserPhone
    UserPhone (..),
    newUserPhone,

    -- ** UserPhoto
    UserPhoto (..),
    newUserPhoto,

    -- ** UserPosixAccount
    UserPosixAccount (..),
    newUserPosixAccount,

    -- ** UserRelation
    UserRelation (..),
    newUserRelation,

    -- ** UserSshPublicKey
    UserSshPublicKey (..),
    newUserSshPublicKey,

    -- ** UserUndelete
    UserUndelete (..),
    newUserUndelete,

    -- ** UserWebsite
    UserWebsite (..),
    newUserWebsite,

    -- ** Users
    Users (..),
    newUsers,

    -- ** VerificationCode
    VerificationCode (..),
    newVerificationCode,

    -- ** VerificationCodes
    VerificationCodes (..),
    newVerificationCodes,

    -- ** ChromeosdevicesGetProjection
    ChromeosdevicesGetProjection (..),

    -- ** ChromeosdevicesListOrderBy
    ChromeosdevicesListOrderBy (..),

    -- ** ChromeosdevicesListProjection
    ChromeosdevicesListProjection (..),

    -- ** ChromeosdevicesListSortOrder
    ChromeosdevicesListSortOrder (..),

    -- ** ChromeosdevicesPatchProjection
    ChromeosdevicesPatchProjection (..),

    -- ** ChromeosdevicesUpdateProjection
    ChromeosdevicesUpdateProjection (..),

    -- ** GroupsListOrderBy
    GroupsListOrderBy (..),

    -- ** GroupsListSortOrder
    GroupsListSortOrder (..),

    -- ** MobiledevicesGetProjection
    MobiledevicesGetProjection (..),

    -- ** MobiledevicesListOrderBy
    MobiledevicesListOrderBy (..),

    -- ** MobiledevicesListProjection
    MobiledevicesListProjection (..),

    -- ** MobiledevicesListSortOrder
    MobiledevicesListSortOrder (..),

    -- ** OrgunitsListType
    OrgunitsListType (..),

    -- ** ResourcesBuildingsInsertCoordinatesSource
    ResourcesBuildingsInsertCoordinatesSource (..),

    -- ** ResourcesBuildingsPatchCoordinatesSource
    ResourcesBuildingsPatchCoordinatesSource (..),

    -- ** ResourcesBuildingsUpdateCoordinatesSource
    ResourcesBuildingsUpdateCoordinatesSource (..),

    -- ** UsersAliasesListEvent
    UsersAliasesListEvent (..),

    -- ** UsersAliasesWatchEvent
    UsersAliasesWatchEvent (..),

    -- ** UsersGetProjection
    UsersGetProjection (..),

    -- ** UsersGetViewType
    UsersGetViewType (..),

    -- ** UsersListEvent
    UsersListEvent (..),

    -- ** UsersListOrderBy
    UsersListOrderBy (..),

    -- ** UsersListProjection
    UsersListProjection (..),

    -- ** UsersListSortOrder
    UsersListSortOrder (..),

    -- ** UsersListViewType
    UsersListViewType (..),

    -- ** UsersWatchEvent
    UsersWatchEvent (..),

    -- ** UsersWatchOrderBy
    UsersWatchOrderBy (..),

    -- ** UsersWatchProjection
    UsersWatchProjection (..),

    -- ** UsersWatchSortOrder
    UsersWatchSortOrder (..),

    -- ** UsersWatchViewType
    UsersWatchViewType (..),
  )
where

import Gogol.Admin.Directory.Internal.Product
import Gogol.Admin.Directory.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @directory_v1@ of the Admin SDK API. This contains the host and root path used as a starting point for constructing service requests.
adminDirectoryService :: Core.ServiceConfig
adminDirectoryService =
  Core.defaultService
    (Core.ServiceId "admin:directory_v1")
    "admin.googleapis.com"

-- | See, add, edit, and permanently delete the printers that your organization can use with Chrome
adminChromePrintersScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.chrome.printers"]
adminChromePrintersScope = Core.Proxy

-- | See the printers that your organization can use with Chrome
adminChromePrintersReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.chrome.printers.readonly"]
adminChromePrintersReadOnlyScope = Core.Proxy

-- | View and manage customer related information
adminDirectoryCustomerScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.customer"]
adminDirectoryCustomerScope = Core.Proxy

-- | View customer related information
adminDirectoryCustomerReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.customer.readonly"]
adminDirectoryCustomerReadOnlyScope = Core.Proxy

-- | View and manage your Chrome OS devices\' metadata
adminDirectoryDeviceChromeosScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.device.chromeos"]
adminDirectoryDeviceChromeosScope = Core.Proxy

-- | View your Chrome OS devices\' metadata
adminDirectoryDeviceChromeosReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.device.chromeos.readonly"]
adminDirectoryDeviceChromeosReadOnlyScope = Core.Proxy

-- | View and manage your mobile devices\' metadata
adminDirectoryDeviceMobileScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.device.mobile"]
adminDirectoryDeviceMobileScope = Core.Proxy

-- | Manage your mobile devices by performing administrative tasks
adminDirectoryDeviceMobileActionScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.device.mobile.action"]
adminDirectoryDeviceMobileActionScope = Core.Proxy

-- | View your mobile devices\' metadata
adminDirectoryDeviceMobileReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.device.mobile.readonly"]
adminDirectoryDeviceMobileReadOnlyScope = Core.Proxy

-- | View and manage the provisioning of domains for your customers
adminDirectoryDomainScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.domain"]
adminDirectoryDomainScope = Core.Proxy

-- | View domains related to your customers
adminDirectoryDomainReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.domain.readonly"]
adminDirectoryDomainReadOnlyScope = Core.Proxy

-- | View and manage the provisioning of groups on your domain
adminDirectoryGroupScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.group"]
adminDirectoryGroupScope = Core.Proxy

-- | View and manage group subscriptions on your domain
adminDirectoryGroupMemberScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.group.member"]
adminDirectoryGroupMemberScope = Core.Proxy

-- | View group subscriptions on your domain
adminDirectoryGroupMemberReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.group.member.readonly"]
adminDirectoryGroupMemberReadOnlyScope = Core.Proxy

-- | View groups on your domain
adminDirectoryGroupReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.group.readonly"]
adminDirectoryGroupReadOnlyScope = Core.Proxy

-- | View and manage organization units on your domain
adminDirectoryOrgunitScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.orgunit"]
adminDirectoryOrgunitScope = Core.Proxy

-- | View organization units on your domain
adminDirectoryOrgunitReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.orgunit.readonly"]
adminDirectoryOrgunitReadOnlyScope = Core.Proxy

-- | View and manage the provisioning of calendar resources on your domain
adminDirectoryResourceCalendarScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
adminDirectoryResourceCalendarScope = Core.Proxy

-- | View calendar resources on your domain
adminDirectoryResourceCalendarReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly"]
adminDirectoryResourceCalendarReadOnlyScope = Core.Proxy

-- | Manage delegated admin roles for your domain
adminDirectoryRoleManagementScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.rolemanagement"]
adminDirectoryRoleManagementScope = Core.Proxy

-- | View delegated admin roles for your domain
adminDirectoryRoleManagementReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.rolemanagement.readonly"]
adminDirectoryRoleManagementReadOnlyScope = Core.Proxy

-- | View and manage the provisioning of users on your domain
adminDirectoryUserScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.user"]
adminDirectoryUserScope = Core.Proxy

-- | View and manage user aliases on your domain
adminDirectoryUserAliasScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.user.alias"]
adminDirectoryUserAliasScope = Core.Proxy

-- | View user aliases on your domain
adminDirectoryUserAliasReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.user.alias.readonly"]
adminDirectoryUserAliasReadOnlyScope = Core.Proxy

-- | See info about users on your domain
adminDirectoryUserReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.user.readonly"]
adminDirectoryUserReadOnlyScope = Core.Proxy

-- | Manage data access permissions for users on your domain
adminDirectoryUserSecurityScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.user.security"]
adminDirectoryUserSecurityScope = Core.Proxy

-- | View and manage the provisioning of user schemas on your domain
adminDirectoryUserschemaScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.userschema"]
adminDirectoryUserschemaScope = Core.Proxy

-- | View user schemas on your domain
adminDirectoryUserschemaReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/admin.directory.userschema.readonly"]
adminDirectoryUserschemaReadOnlyScope = Core.Proxy

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy
