{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

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
--
module Gogol.Admin.Directory.Types
    (
    -- * Configuration
      adminDirectoryService

    -- * OAuth Scopes
    , Admin'Chrome'Printers
    , Admin'Chrome'Printers'Readonly
    , Admin'Directory'Customer
    , Admin'Directory'Customer'Readonly
    , Admin'Directory'Device'Chromeos
    , Admin'Directory'Device'Chromeos'Readonly
    , Admin'Directory'Device'Mobile
    , Admin'Directory'Device'Mobile'Action
    , Admin'Directory'Device'Mobile'Readonly
    , Admin'Directory'Domain
    , Admin'Directory'Domain'Readonly
    , Admin'Directory'Group
    , Admin'Directory'Group'Member
    , Admin'Directory'Group'Member'Readonly
    , Admin'Directory'Group'Readonly
    , Admin'Directory'Orgunit
    , Admin'Directory'Orgunit'Readonly
    , Admin'Directory'Resource'Calendar
    , Admin'Directory'Resource'Calendar'Readonly
    , Admin'Directory'Rolemanagement
    , Admin'Directory'Rolemanagement'Readonly
    , Admin'Directory'User
    , Admin'Directory'User'Alias
    , Admin'Directory'User'Alias'Readonly
    , Admin'Directory'User'Readonly
    , Admin'Directory'User'Security
    , Admin'Directory'Userschema
    , Admin'Directory'Userschema'Readonly
    , CloudPlatform'FullControl

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** Alias
    , Alias (..)
    , newAlias

    -- ** Aliases
    , Aliases (..)
    , newAliases

    -- ** Asp
    , Asp (..)
    , newAsp

    -- ** Asps
    , Asps (..)
    , newAsps

    -- ** AuxiliaryMessage
    , AuxiliaryMessage (..)
    , newAuxiliaryMessage

    -- ** AuxiliaryMessage_Severity
    , AuxiliaryMessage_Severity (..)

    -- ** BacklightInfo
    , BacklightInfo (..)
    , newBacklightInfo

    -- ** BatchChangeChromeOsDeviceStatusRequest
    , BatchChangeChromeOsDeviceStatusRequest (..)
    , newBatchChangeChromeOsDeviceStatusRequest

    -- ** BatchChangeChromeOsDeviceStatusRequest_ChangeChromeOsDeviceStatusAction
    , BatchChangeChromeOsDeviceStatusRequest_ChangeChromeOsDeviceStatusAction (..)

    -- ** BatchChangeChromeOsDeviceStatusRequest_DeprovisionReason
    , BatchChangeChromeOsDeviceStatusRequest_DeprovisionReason (..)

    -- ** BatchChangeChromeOsDeviceStatusResponse
    , BatchChangeChromeOsDeviceStatusResponse (..)
    , newBatchChangeChromeOsDeviceStatusResponse

    -- ** BatchCreatePrintServersRequest
    , BatchCreatePrintServersRequest (..)
    , newBatchCreatePrintServersRequest

    -- ** BatchCreatePrintServersResponse
    , BatchCreatePrintServersResponse (..)
    , newBatchCreatePrintServersResponse

    -- ** BatchCreatePrintersRequest
    , BatchCreatePrintersRequest (..)
    , newBatchCreatePrintersRequest

    -- ** BatchCreatePrintersResponse
    , BatchCreatePrintersResponse (..)
    , newBatchCreatePrintersResponse

    -- ** BatchDeletePrintServersRequest
    , BatchDeletePrintServersRequest (..)
    , newBatchDeletePrintServersRequest

    -- ** BatchDeletePrintServersResponse
    , BatchDeletePrintServersResponse (..)
    , newBatchDeletePrintServersResponse

    -- ** BatchDeletePrintersRequest
    , BatchDeletePrintersRequest (..)
    , newBatchDeletePrintersRequest

    -- ** BatchDeletePrintersResponse
    , BatchDeletePrintersResponse (..)
    , newBatchDeletePrintersResponse

    -- ** Building
    , Building (..)
    , newBuilding

    -- ** BuildingAddress
    , BuildingAddress (..)
    , newBuildingAddress

    -- ** BuildingCoordinates
    , BuildingCoordinates (..)
    , newBuildingCoordinates

    -- ** Buildings
    , Buildings (..)
    , newBuildings

    -- ** ByteUsage
    , ByteUsage (..)
    , newByteUsage

    -- ** CalendarResource
    , CalendarResource (..)
    , newCalendarResource

    -- ** CalendarResources
    , CalendarResources (..)
    , newCalendarResources

    -- ** ChangeChromeOsDeviceStatusResult
    , ChangeChromeOsDeviceStatusResult (..)
    , newChangeChromeOsDeviceStatusResult

    -- ** ChangeChromeOsDeviceStatusSucceeded
    , ChangeChromeOsDeviceStatusSucceeded (..)
    , newChangeChromeOsDeviceStatusSucceeded

    -- ** Channel
    , Channel (..)
    , newChannel

    -- ** Channel_Params
    , Channel_Params (..)
    , newChannel_Params

    -- ** ChromeOsDevice
    , ChromeOsDevice (..)
    , newChromeOsDevice

    -- ** ChromeOsDevice_ActiveTimeRangesItem
    , ChromeOsDevice_ActiveTimeRangesItem (..)
    , newChromeOsDevice_ActiveTimeRangesItem

    -- ** ChromeOsDevice_ChromeOsType
    , ChromeOsDevice_ChromeOsType (..)

    -- ** ChromeOsDevice_CpuInfoItem
    , ChromeOsDevice_CpuInfoItem (..)
    , newChromeOsDevice_CpuInfoItem

    -- ** ChromeOsDevice_CpuInfoItem_LogicalCpusItem
    , ChromeOsDevice_CpuInfoItem_LogicalCpusItem (..)
    , newChromeOsDevice_CpuInfoItem_LogicalCpusItem

    -- ** ChromeOsDevice_CpuInfoItem_LogicalCpusItem_CStatesItem
    , ChromeOsDevice_CpuInfoItem_LogicalCpusItem_CStatesItem (..)
    , newChromeOsDevice_CpuInfoItem_LogicalCpusItem_CStatesItem

    -- ** ChromeOsDevice_CpuStatusReportsItem
    , ChromeOsDevice_CpuStatusReportsItem (..)
    , newChromeOsDevice_CpuStatusReportsItem

    -- ** ChromeOsDevice_CpuStatusReportsItem_CpuTemperatureInfoItem
    , ChromeOsDevice_CpuStatusReportsItem_CpuTemperatureInfoItem (..)
    , newChromeOsDevice_CpuStatusReportsItem_CpuTemperatureInfoItem

    -- ** ChromeOsDevice_DeprovisionReason
    , ChromeOsDevice_DeprovisionReason (..)

    -- ** ChromeOsDevice_DeviceFilesItem
    , ChromeOsDevice_DeviceFilesItem (..)
    , newChromeOsDevice_DeviceFilesItem

    -- ** ChromeOsDevice_DeviceLicenseType
    , ChromeOsDevice_DeviceLicenseType (..)

    -- ** ChromeOsDevice_DiskVolumeReportsItem
    , ChromeOsDevice_DiskVolumeReportsItem (..)
    , newChromeOsDevice_DiskVolumeReportsItem

    -- ** ChromeOsDevice_DiskVolumeReportsItem_VolumeInfoItem
    , ChromeOsDevice_DiskVolumeReportsItem_VolumeInfoItem (..)
    , newChromeOsDevice_DiskVolumeReportsItem_VolumeInfoItem

    -- ** ChromeOsDevice_LastKnownNetworkItem
    , ChromeOsDevice_LastKnownNetworkItem (..)
    , newChromeOsDevice_LastKnownNetworkItem

    -- ** ChromeOsDevice_RecentUsersItem
    , ChromeOsDevice_RecentUsersItem (..)
    , newChromeOsDevice_RecentUsersItem

    -- ** ChromeOsDevice_ScreenshotFilesItem
    , ChromeOsDevice_ScreenshotFilesItem (..)
    , newChromeOsDevice_ScreenshotFilesItem

    -- ** ChromeOsDevice_SystemRamFreeReportsItem
    , ChromeOsDevice_SystemRamFreeReportsItem (..)
    , newChromeOsDevice_SystemRamFreeReportsItem

    -- ** ChromeOsDevice_TpmVersionInfo
    , ChromeOsDevice_TpmVersionInfo (..)
    , newChromeOsDevice_TpmVersionInfo

    -- ** ChromeOsDeviceAction
    , ChromeOsDeviceAction (..)
    , newChromeOsDeviceAction

    -- ** ChromeOsDevices
    , ChromeOsDevices (..)
    , newChromeOsDevices

    -- ** ChromeOsMoveDevicesToOu
    , ChromeOsMoveDevicesToOu (..)
    , newChromeOsMoveDevicesToOu

    -- ** CreatePrintServerRequest
    , CreatePrintServerRequest (..)
    , newCreatePrintServerRequest

    -- ** CreatePrinterRequest
    , CreatePrinterRequest (..)
    , newCreatePrinterRequest

    -- ** Customer
    , Customer (..)
    , newCustomer

    -- ** CustomerPostalAddress
    , CustomerPostalAddress (..)
    , newCustomerPostalAddress

    -- ** DirectoryChromeosdevicesCommand
    , DirectoryChromeosdevicesCommand (..)
    , newDirectoryChromeosdevicesCommand

    -- ** DirectoryChromeosdevicesCommand_State
    , DirectoryChromeosdevicesCommand_State (..)

    -- ** DirectoryChromeosdevicesCommand_Type
    , DirectoryChromeosdevicesCommand_Type (..)

    -- ** DirectoryChromeosdevicesCommandResult
    , DirectoryChromeosdevicesCommandResult (..)
    , newDirectoryChromeosdevicesCommandResult

    -- ** DirectoryChromeosdevicesCommandResult_Result
    , DirectoryChromeosdevicesCommandResult_Result (..)

    -- ** DirectoryChromeosdevicesIssueCommandRequest
    , DirectoryChromeosdevicesIssueCommandRequest (..)
    , newDirectoryChromeosdevicesIssueCommandRequest

    -- ** DirectoryChromeosdevicesIssueCommandRequest_CommandType
    , DirectoryChromeosdevicesIssueCommandRequest_CommandType (..)

    -- ** DirectoryChromeosdevicesIssueCommandResponse
    , DirectoryChromeosdevicesIssueCommandResponse (..)
    , newDirectoryChromeosdevicesIssueCommandResponse

    -- ** DomainAlias
    , DomainAlias (..)
    , newDomainAlias

    -- ** DomainAliases
    , DomainAliases (..)
    , newDomainAliases

    -- ** Domains
    , Domains (..)
    , newDomains

    -- ** Domains2
    , Domains2 (..)
    , newDomains2

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** FailureInfo
    , FailureInfo (..)
    , newFailureInfo

    -- ** FailureInfo_ErrorCode
    , FailureInfo_ErrorCode (..)

    -- ** FanInfo
    , FanInfo (..)
    , newFanInfo

    -- ** Feature
    , Feature (..)
    , newFeature

    -- ** FeatureInstance
    , FeatureInstance (..)
    , newFeatureInstance

    -- ** FeatureRename
    , FeatureRename (..)
    , newFeatureRename

    -- ** Features
    , Features (..)
    , newFeatures

    -- ** Group
    , Group (..)
    , newGroup

    -- ** GroupAlias
    , GroupAlias (..)
    , newGroupAlias

    -- ** Groups
    , Groups (..)
    , newGroups

    -- ** ListPrintServersResponse
    , ListPrintServersResponse (..)
    , newListPrintServersResponse

    -- ** ListPrinterModelsResponse
    , ListPrinterModelsResponse (..)
    , newListPrinterModelsResponse

    -- ** ListPrintersResponse
    , ListPrintersResponse (..)
    , newListPrintersResponse

    -- ** Member
    , Member (..)
    , newMember

    -- ** Members
    , Members (..)
    , newMembers

    -- ** MembersHasMember
    , MembersHasMember (..)
    , newMembersHasMember

    -- ** MobileDevice
    , MobileDevice (..)
    , newMobileDevice

    -- ** MobileDevice_ApplicationsItem
    , MobileDevice_ApplicationsItem (..)
    , newMobileDevice_ApplicationsItem

    -- ** MobileDeviceAction
    , MobileDeviceAction (..)
    , newMobileDeviceAction

    -- ** MobileDevices
    , MobileDevices (..)
    , newMobileDevices

    -- ** OrgUnit
    , OrgUnit (..)
    , newOrgUnit

    -- ** OrgUnits
    , OrgUnits (..)
    , newOrgUnits

    -- ** OsUpdateStatus
    , OsUpdateStatus (..)
    , newOsUpdateStatus

    -- ** OsUpdateStatus_State
    , OsUpdateStatus_State (..)

    -- ** PrintServer
    , PrintServer (..)
    , newPrintServer

    -- ** PrintServerFailureInfo
    , PrintServerFailureInfo (..)
    , newPrintServerFailureInfo

    -- ** PrintServerFailureInfo_ErrorCode
    , PrintServerFailureInfo_ErrorCode (..)

    -- ** Printer
    , Printer (..)
    , newPrinter

    -- ** PrinterModel
    , PrinterModel (..)
    , newPrinterModel

    -- ** Privilege
    , Privilege (..)
    , newPrivilege

    -- ** Privileges
    , Privileges (..)
    , newPrivileges

    -- ** Role
    , Role (..)
    , newRole

    -- ** Role_RolePrivilegesItem
    , Role_RolePrivilegesItem (..)
    , newRole_RolePrivilegesItem

    -- ** RoleAssignment
    , RoleAssignment (..)
    , newRoleAssignment

    -- ** RoleAssignment_AssigneeType
    , RoleAssignment_AssigneeType (..)

    -- ** RoleAssignments
    , RoleAssignments (..)
    , newRoleAssignments

    -- ** Roles
    , Roles (..)
    , newRoles

    -- ** Schema
    , Schema (..)
    , newSchema

    -- ** SchemaFieldSpec
    , SchemaFieldSpec (..)
    , newSchemaFieldSpec

    -- ** SchemaFieldSpec_NumericIndexingSpec
    , SchemaFieldSpec_NumericIndexingSpec (..)
    , newSchemaFieldSpec_NumericIndexingSpec

    -- ** Schemas
    , Schemas (..)
    , newSchemas

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** Token
    , Token (..)
    , newToken

    -- ** Tokens
    , Tokens (..)
    , newTokens

    -- ** User
    , User (..)
    , newUser

    -- ** User_CustomSchemas
    , User_CustomSchemas (..)
    , newUser_CustomSchemas

    -- ** UserAbout
    , UserAbout (..)
    , newUserAbout

    -- ** UserAddress
    , UserAddress (..)
    , newUserAddress

    -- ** UserAlias
    , UserAlias (..)
    , newUserAlias

    -- ** UserCustomProperties
    , UserCustomProperties (..)
    , newUserCustomProperties

    -- ** UserEmail
    , UserEmail (..)
    , newUserEmail

    -- ** UserEmail_Public_key_encryption_certificates
    , UserEmail_Public_key_encryption_certificates (..)
    , newUserEmail_Public_key_encryption_certificates

    -- ** UserExternalId
    , UserExternalId (..)
    , newUserExternalId

    -- ** UserGender
    , UserGender (..)
    , newUserGender

    -- ** UserIm
    , UserIm (..)
    , newUserIm

    -- ** UserKeyword
    , UserKeyword (..)
    , newUserKeyword

    -- ** UserLanguage
    , UserLanguage (..)
    , newUserLanguage

    -- ** UserLocation
    , UserLocation (..)
    , newUserLocation

    -- ** UserMakeAdmin
    , UserMakeAdmin (..)
    , newUserMakeAdmin

    -- ** UserName
    , UserName (..)
    , newUserName

    -- ** UserOrganization
    , UserOrganization (..)
    , newUserOrganization

    -- ** UserPhone
    , UserPhone (..)
    , newUserPhone

    -- ** UserPhoto
    , UserPhoto (..)
    , newUserPhoto

    -- ** UserPosixAccount
    , UserPosixAccount (..)
    , newUserPosixAccount

    -- ** UserRelation
    , UserRelation (..)
    , newUserRelation

    -- ** UserSshPublicKey
    , UserSshPublicKey (..)
    , newUserSshPublicKey

    -- ** UserUndelete
    , UserUndelete (..)
    , newUserUndelete

    -- ** UserWebsite
    , UserWebsite (..)
    , newUserWebsite

    -- ** Users
    , Users (..)
    , newUsers

    -- ** VerificationCode
    , VerificationCode (..)
    , newVerificationCode

    -- ** VerificationCodes
    , VerificationCodes (..)
    , newVerificationCodes

    -- ** ChromeosdevicesGetProjection
    , ChromeosdevicesGetProjection (..)

    -- ** ChromeosdevicesListOrderBy
    , ChromeosdevicesListOrderBy (..)

    -- ** ChromeosdevicesListProjection
    , ChromeosdevicesListProjection (..)

    -- ** ChromeosdevicesListSortOrder
    , ChromeosdevicesListSortOrder (..)

    -- ** ChromeosdevicesPatchProjection
    , ChromeosdevicesPatchProjection (..)

    -- ** ChromeosdevicesUpdateProjection
    , ChromeosdevicesUpdateProjection (..)

    -- ** GroupsListOrderBy
    , GroupsListOrderBy (..)

    -- ** GroupsListSortOrder
    , GroupsListSortOrder (..)

    -- ** MobiledevicesGetProjection
    , MobiledevicesGetProjection (..)

    -- ** MobiledevicesListOrderBy
    , MobiledevicesListOrderBy (..)

    -- ** MobiledevicesListProjection
    , MobiledevicesListProjection (..)

    -- ** MobiledevicesListSortOrder
    , MobiledevicesListSortOrder (..)

    -- ** OrgunitsListType
    , OrgunitsListType (..)

    -- ** ResourcesBuildingsInsertCoordinatesSource
    , ResourcesBuildingsInsertCoordinatesSource (..)

    -- ** ResourcesBuildingsPatchCoordinatesSource
    , ResourcesBuildingsPatchCoordinatesSource (..)

    -- ** ResourcesBuildingsUpdateCoordinatesSource
    , ResourcesBuildingsUpdateCoordinatesSource (..)

    -- ** UsersAliasesListEvent
    , UsersAliasesListEvent (..)

    -- ** UsersAliasesWatchEvent
    , UsersAliasesWatchEvent (..)

    -- ** UsersGetProjection
    , UsersGetProjection (..)

    -- ** UsersGetViewType
    , UsersGetViewType (..)

    -- ** UsersListEvent
    , UsersListEvent (..)

    -- ** UsersListOrderBy
    , UsersListOrderBy (..)

    -- ** UsersListProjection
    , UsersListProjection (..)

    -- ** UsersListSortOrder
    , UsersListSortOrder (..)

    -- ** UsersListViewType
    , UsersListViewType (..)

    -- ** UsersWatchEvent
    , UsersWatchEvent (..)

    -- ** UsersWatchOrderBy
    , UsersWatchOrderBy (..)

    -- ** UsersWatchProjection
    , UsersWatchProjection (..)

    -- ** UsersWatchSortOrder
    , UsersWatchSortOrder (..)

    -- ** UsersWatchViewType
    , UsersWatchViewType (..)
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.Directory.Internal.Product
import Gogol.Admin.Directory.Internal.Sum

-- | Default request referring to version @directory_v1@ of the Admin SDK API. This contains the host and root path used as a starting point for constructing service requests.
adminDirectoryService :: Core.ServiceConfig
adminDirectoryService
  = Core.defaultService
      (Core.ServiceId "admin:directory_v1")
      "admin.googleapis.com"

-- | See, add, edit, and permanently delete the printers that your organization can use with Chrome
type Admin'Chrome'Printers = "https://www.googleapis.com/auth/admin.chrome.printers"

-- | See the printers that your organization can use with Chrome
type Admin'Chrome'Printers'Readonly = "https://www.googleapis.com/auth/admin.chrome.printers.readonly"

-- | View and manage customer related information
type Admin'Directory'Customer = "https://www.googleapis.com/auth/admin.directory.customer"

-- | View customer related information
type Admin'Directory'Customer'Readonly = "https://www.googleapis.com/auth/admin.directory.customer.readonly"

-- | View and manage your ChromeOS devices\' metadata
type Admin'Directory'Device'Chromeos = "https://www.googleapis.com/auth/admin.directory.device.chromeos"

-- | View your ChromeOS devices\' metadata
type Admin'Directory'Device'Chromeos'Readonly = "https://www.googleapis.com/auth/admin.directory.device.chromeos.readonly"

-- | View and manage your mobile devices\' metadata
type Admin'Directory'Device'Mobile = "https://www.googleapis.com/auth/admin.directory.device.mobile"

-- | Manage your mobile devices by performing administrative tasks
type Admin'Directory'Device'Mobile'Action = "https://www.googleapis.com/auth/admin.directory.device.mobile.action"

-- | View your mobile devices\' metadata
type Admin'Directory'Device'Mobile'Readonly = "https://www.googleapis.com/auth/admin.directory.device.mobile.readonly"

-- | View and manage the provisioning of domains for your customers
type Admin'Directory'Domain = "https://www.googleapis.com/auth/admin.directory.domain"

-- | View domains related to your customers
type Admin'Directory'Domain'Readonly = "https://www.googleapis.com/auth/admin.directory.domain.readonly"

-- | View and manage the provisioning of groups on your domain
type Admin'Directory'Group = "https://www.googleapis.com/auth/admin.directory.group"

-- | View and manage group subscriptions on your domain
type Admin'Directory'Group'Member = "https://www.googleapis.com/auth/admin.directory.group.member"

-- | View group subscriptions on your domain
type Admin'Directory'Group'Member'Readonly = "https://www.googleapis.com/auth/admin.directory.group.member.readonly"

-- | View groups on your domain
type Admin'Directory'Group'Readonly = "https://www.googleapis.com/auth/admin.directory.group.readonly"

-- | View and manage organization units on your domain
type Admin'Directory'Orgunit = "https://www.googleapis.com/auth/admin.directory.orgunit"

-- | View organization units on your domain
type Admin'Directory'Orgunit'Readonly = "https://www.googleapis.com/auth/admin.directory.orgunit.readonly"

-- | View and manage the provisioning of calendar resources on your domain
type Admin'Directory'Resource'Calendar = "https://www.googleapis.com/auth/admin.directory.resource.calendar"

-- | View calendar resources on your domain
type Admin'Directory'Resource'Calendar'Readonly = "https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly"

-- | Manage delegated admin roles for your domain
type Admin'Directory'Rolemanagement = "https://www.googleapis.com/auth/admin.directory.rolemanagement"

-- | View delegated admin roles for your domain
type Admin'Directory'Rolemanagement'Readonly = "https://www.googleapis.com/auth/admin.directory.rolemanagement.readonly"

-- | View and manage the provisioning of users on your domain
type Admin'Directory'User = "https://www.googleapis.com/auth/admin.directory.user"

-- | View and manage user aliases on your domain
type Admin'Directory'User'Alias = "https://www.googleapis.com/auth/admin.directory.user.alias"

-- | View user aliases on your domain
type Admin'Directory'User'Alias'Readonly = "https://www.googleapis.com/auth/admin.directory.user.alias.readonly"

-- | See info about users on your domain
type Admin'Directory'User'Readonly = "https://www.googleapis.com/auth/admin.directory.user.readonly"

-- | Manage data access permissions for users on your domain
type Admin'Directory'User'Security = "https://www.googleapis.com/auth/admin.directory.user.security"

-- | View and manage the provisioning of user schemas on your domain
type Admin'Directory'Userschema = "https://www.googleapis.com/auth/admin.directory.userschema"

-- | View user schemas on your domain
type Admin'Directory'Userschema'Readonly = "https://www.googleapis.com/auth/admin.directory.userschema.readonly"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl = "https://www.googleapis.com/auth/cloud-platform"
