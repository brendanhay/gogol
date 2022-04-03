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
-- Module      : Gogol.Admin.Directory
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Admin SDK lets administrators of enterprise domains to view and manage resources like user, groups etc. It also provides audit and usage reports of domain.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference>
module Gogol.Admin.Directory
  ( -- * Configuration
    adminDirectoryService,

    -- * OAuth Scopes
    Admin'Chrome'Printers,
    Admin'Chrome'Printers'Readonly,
    Admin'Directory'Customer,
    Admin'Directory'Customer'Readonly,
    Admin'Directory'Device'Chromeos,
    Admin'Directory'Device'Chromeos'Readonly,
    Admin'Directory'Device'Mobile,
    Admin'Directory'Device'Mobile'Action,
    Admin'Directory'Device'Mobile'Readonly,
    Admin'Directory'Domain,
    Admin'Directory'Domain'Readonly,
    Admin'Directory'Group,
    Admin'Directory'Group'Member,
    Admin'Directory'Group'Member'Readonly,
    Admin'Directory'Group'Readonly,
    Admin'Directory'Orgunit,
    Admin'Directory'Orgunit'Readonly,
    Admin'Directory'Resource'Calendar,
    Admin'Directory'Resource'Calendar'Readonly,
    Admin'Directory'Rolemanagement,
    Admin'Directory'Rolemanagement'Readonly,
    Admin'Directory'User,
    Admin'Directory'User'Alias,
    Admin'Directory'User'Alias'Readonly,
    Admin'Directory'User'Readonly,
    Admin'Directory'User'Security,
    Admin'Directory'Userschema,
    Admin'Directory'Userschema'Readonly,
    CloudPlatform'FullControl,

    -- * Resources

    -- ** admin.channels.stop
    AdminChannelsStopResource,
    AdminChannelsStop (..),
    newAdminChannelsStop,

    -- ** admin.customer.devices.chromeos.commands.get
    AdminCustomerDevicesChromeosCommandsGetResource,
    AdminCustomerDevicesChromeosCommandsGet (..),
    newAdminCustomerDevicesChromeosCommandsGet,

    -- ** admin.customer.devices.chromeos.issueCommand
    AdminCustomerDevicesChromeosIssueCommandResource,
    AdminCustomerDevicesChromeosIssueCommand (..),
    newAdminCustomerDevicesChromeosIssueCommand,

    -- ** admin.customers.chrome.printers.batchCreatePrinters
    AdminCustomersChromePrintersBatchCreatePrintersResource,
    AdminCustomersChromePrintersBatchCreatePrinters (..),
    newAdminCustomersChromePrintersBatchCreatePrinters,

    -- ** admin.customers.chrome.printers.batchDeletePrinters
    AdminCustomersChromePrintersBatchDeletePrintersResource,
    AdminCustomersChromePrintersBatchDeletePrinters (..),
    newAdminCustomersChromePrintersBatchDeletePrinters,

    -- ** admin.customers.chrome.printers.create
    AdminCustomersChromePrintersCreateResource,
    AdminCustomersChromePrintersCreate (..),
    newAdminCustomersChromePrintersCreate,

    -- ** admin.customers.chrome.printers.delete
    AdminCustomersChromePrintersDeleteResource,
    AdminCustomersChromePrintersDelete (..),
    newAdminCustomersChromePrintersDelete,

    -- ** admin.customers.chrome.printers.get
    AdminCustomersChromePrintersGetResource,
    AdminCustomersChromePrintersGet (..),
    newAdminCustomersChromePrintersGet,

    -- ** admin.customers.chrome.printers.list
    AdminCustomersChromePrintersListResource,
    AdminCustomersChromePrintersList (..),
    newAdminCustomersChromePrintersList,

    -- ** admin.customers.chrome.printers.listPrinterModels
    AdminCustomersChromePrintersListPrinterModelsResource,
    AdminCustomersChromePrintersListPrinterModels (..),
    newAdminCustomersChromePrintersListPrinterModels,

    -- ** admin.customers.chrome.printers.patch
    AdminCustomersChromePrintersPatchResource,
    AdminCustomersChromePrintersPatch (..),
    newAdminCustomersChromePrintersPatch,

    -- ** directory.asps.delete
    DirectoryAspsDeleteResource,
    DirectoryAspsDelete (..),
    newDirectoryAspsDelete,

    -- ** directory.asps.get
    DirectoryAspsGetResource,
    DirectoryAspsGet (..),
    newDirectoryAspsGet,

    -- ** directory.asps.list
    DirectoryAspsListResource,
    DirectoryAspsList (..),
    newDirectoryAspsList,

    -- ** directory.chromeosdevices.action
    DirectoryChromeosdevicesActionResource,
    DirectoryChromeosdevicesAction (..),
    newDirectoryChromeosdevicesAction,

    -- ** directory.chromeosdevices.get
    DirectoryChromeosdevicesGetResource,
    DirectoryChromeosdevicesGet (..),
    newDirectoryChromeosdevicesGet,

    -- ** directory.chromeosdevices.list
    DirectoryChromeosdevicesListResource,
    DirectoryChromeosdevicesList (..),
    newDirectoryChromeosdevicesList,

    -- ** directory.chromeosdevices.moveDevicesToOu
    DirectoryChromeosdevicesMoveDevicesToOuResource,
    DirectoryChromeosdevicesMoveDevicesToOu (..),
    newDirectoryChromeosdevicesMoveDevicesToOu,

    -- ** directory.chromeosdevices.patch
    DirectoryChromeosdevicesPatchResource,
    DirectoryChromeosdevicesPatch (..),
    newDirectoryChromeosdevicesPatch,

    -- ** directory.chromeosdevices.update
    DirectoryChromeosdevicesUpdateResource,
    DirectoryChromeosdevicesUpdate (..),
    newDirectoryChromeosdevicesUpdate,

    -- ** directory.customers.get
    DirectoryCustomersGetResource,
    DirectoryCustomersGet (..),
    newDirectoryCustomersGet,

    -- ** directory.customers.patch
    DirectoryCustomersPatchResource,
    DirectoryCustomersPatch (..),
    newDirectoryCustomersPatch,

    -- ** directory.customers.update
    DirectoryCustomersUpdateResource,
    DirectoryCustomersUpdate (..),
    newDirectoryCustomersUpdate,

    -- ** directory.domainAliases.delete
    DirectoryDomainAliasesDeleteResource,
    DirectoryDomainAliasesDelete (..),
    newDirectoryDomainAliasesDelete,

    -- ** directory.domainAliases.get
    DirectoryDomainAliasesGetResource,
    DirectoryDomainAliasesGet (..),
    newDirectoryDomainAliasesGet,

    -- ** directory.domainAliases.insert
    DirectoryDomainAliasesInsertResource,
    DirectoryDomainAliasesInsert (..),
    newDirectoryDomainAliasesInsert,

    -- ** directory.domainAliases.list
    DirectoryDomainAliasesListResource,
    DirectoryDomainAliasesList (..),
    newDirectoryDomainAliasesList,

    -- ** directory.domains.delete
    DirectoryDomainsDeleteResource,
    DirectoryDomainsDelete (..),
    newDirectoryDomainsDelete,

    -- ** directory.domains.get
    DirectoryDomainsGetResource,
    DirectoryDomainsGet (..),
    newDirectoryDomainsGet,

    -- ** directory.domains.insert
    DirectoryDomainsInsertResource,
    DirectoryDomainsInsert (..),
    newDirectoryDomainsInsert,

    -- ** directory.domains.list
    DirectoryDomainsListResource,
    DirectoryDomainsList (..),
    newDirectoryDomainsList,

    -- ** directory.groups.aliases.delete
    DirectoryGroupsAliasesDeleteResource,
    DirectoryGroupsAliasesDelete (..),
    newDirectoryGroupsAliasesDelete,

    -- ** directory.groups.aliases.insert
    DirectoryGroupsAliasesInsertResource,
    DirectoryGroupsAliasesInsert (..),
    newDirectoryGroupsAliasesInsert,

    -- ** directory.groups.aliases.list
    DirectoryGroupsAliasesListResource,
    DirectoryGroupsAliasesList (..),
    newDirectoryGroupsAliasesList,

    -- ** directory.groups.delete
    DirectoryGroupsDeleteResource,
    DirectoryGroupsDelete (..),
    newDirectoryGroupsDelete,

    -- ** directory.groups.get
    DirectoryGroupsGetResource,
    DirectoryGroupsGet (..),
    newDirectoryGroupsGet,

    -- ** directory.groups.insert
    DirectoryGroupsInsertResource,
    DirectoryGroupsInsert (..),
    newDirectoryGroupsInsert,

    -- ** directory.groups.list
    DirectoryGroupsListResource,
    DirectoryGroupsList (..),
    newDirectoryGroupsList,

    -- ** directory.groups.patch
    DirectoryGroupsPatchResource,
    DirectoryGroupsPatch (..),
    newDirectoryGroupsPatch,

    -- ** directory.groups.update
    DirectoryGroupsUpdateResource,
    DirectoryGroupsUpdate (..),
    newDirectoryGroupsUpdate,

    -- ** directory.members.delete
    DirectoryMembersDeleteResource,
    DirectoryMembersDelete (..),
    newDirectoryMembersDelete,

    -- ** directory.members.get
    DirectoryMembersGetResource,
    DirectoryMembersGet (..),
    newDirectoryMembersGet,

    -- ** directory.members.hasMember
    DirectoryMembersHasMemberResource,
    DirectoryMembersHasMember (..),
    newDirectoryMembersHasMember,

    -- ** directory.members.insert
    DirectoryMembersInsertResource,
    DirectoryMembersInsert (..),
    newDirectoryMembersInsert,

    -- ** directory.members.list
    DirectoryMembersListResource,
    DirectoryMembersList (..),
    newDirectoryMembersList,

    -- ** directory.members.patch
    DirectoryMembersPatchResource,
    DirectoryMembersPatch (..),
    newDirectoryMembersPatch,

    -- ** directory.members.update
    DirectoryMembersUpdateResource,
    DirectoryMembersUpdate (..),
    newDirectoryMembersUpdate,

    -- ** directory.mobiledevices.action
    DirectoryMobiledevicesActionResource,
    DirectoryMobiledevicesAction (..),
    newDirectoryMobiledevicesAction,

    -- ** directory.mobiledevices.delete
    DirectoryMobiledevicesDeleteResource,
    DirectoryMobiledevicesDelete (..),
    newDirectoryMobiledevicesDelete,

    -- ** directory.mobiledevices.get
    DirectoryMobiledevicesGetResource,
    DirectoryMobiledevicesGet (..),
    newDirectoryMobiledevicesGet,

    -- ** directory.mobiledevices.list
    DirectoryMobiledevicesListResource,
    DirectoryMobiledevicesList (..),
    newDirectoryMobiledevicesList,

    -- ** directory.orgunits.delete
    DirectoryOrgunitsDeleteResource,
    DirectoryOrgunitsDelete (..),
    newDirectoryOrgunitsDelete,

    -- ** directory.orgunits.get
    DirectoryOrgunitsGetResource,
    DirectoryOrgunitsGet (..),
    newDirectoryOrgunitsGet,

    -- ** directory.orgunits.insert
    DirectoryOrgunitsInsertResource,
    DirectoryOrgunitsInsert (..),
    newDirectoryOrgunitsInsert,

    -- ** directory.orgunits.list
    DirectoryOrgunitsListResource,
    DirectoryOrgunitsList (..),
    newDirectoryOrgunitsList,

    -- ** directory.orgunits.patch
    DirectoryOrgunitsPatchResource,
    DirectoryOrgunitsPatch (..),
    newDirectoryOrgunitsPatch,

    -- ** directory.orgunits.update
    DirectoryOrgunitsUpdateResource,
    DirectoryOrgunitsUpdate (..),
    newDirectoryOrgunitsUpdate,

    -- ** directory.privileges.list
    DirectoryPrivilegesListResource,
    DirectoryPrivilegesList (..),
    newDirectoryPrivilegesList,

    -- ** directory.resources.buildings.delete
    DirectoryResourcesBuildingsDeleteResource,
    DirectoryResourcesBuildingsDelete (..),
    newDirectoryResourcesBuildingsDelete,

    -- ** directory.resources.buildings.get
    DirectoryResourcesBuildingsGetResource,
    DirectoryResourcesBuildingsGet (..),
    newDirectoryResourcesBuildingsGet,

    -- ** directory.resources.buildings.insert
    DirectoryResourcesBuildingsInsertResource,
    DirectoryResourcesBuildingsInsert (..),
    newDirectoryResourcesBuildingsInsert,

    -- ** directory.resources.buildings.list
    DirectoryResourcesBuildingsListResource,
    DirectoryResourcesBuildingsList (..),
    newDirectoryResourcesBuildingsList,

    -- ** directory.resources.buildings.patch
    DirectoryResourcesBuildingsPatchResource,
    DirectoryResourcesBuildingsPatch (..),
    newDirectoryResourcesBuildingsPatch,

    -- ** directory.resources.buildings.update
    DirectoryResourcesBuildingsUpdateResource,
    DirectoryResourcesBuildingsUpdate (..),
    newDirectoryResourcesBuildingsUpdate,

    -- ** directory.resources.calendars.delete
    DirectoryResourcesCalendarsDeleteResource,
    DirectoryResourcesCalendarsDelete (..),
    newDirectoryResourcesCalendarsDelete,

    -- ** directory.resources.calendars.get
    DirectoryResourcesCalendarsGetResource,
    DirectoryResourcesCalendarsGet (..),
    newDirectoryResourcesCalendarsGet,

    -- ** directory.resources.calendars.insert
    DirectoryResourcesCalendarsInsertResource,
    DirectoryResourcesCalendarsInsert (..),
    newDirectoryResourcesCalendarsInsert,

    -- ** directory.resources.calendars.list
    DirectoryResourcesCalendarsListResource,
    DirectoryResourcesCalendarsList (..),
    newDirectoryResourcesCalendarsList,

    -- ** directory.resources.calendars.patch
    DirectoryResourcesCalendarsPatchResource,
    DirectoryResourcesCalendarsPatch (..),
    newDirectoryResourcesCalendarsPatch,

    -- ** directory.resources.calendars.update
    DirectoryResourcesCalendarsUpdateResource,
    DirectoryResourcesCalendarsUpdate (..),
    newDirectoryResourcesCalendarsUpdate,

    -- ** directory.resources.features.delete
    DirectoryResourcesFeaturesDeleteResource,
    DirectoryResourcesFeaturesDelete (..),
    newDirectoryResourcesFeaturesDelete,

    -- ** directory.resources.features.get
    DirectoryResourcesFeaturesGetResource,
    DirectoryResourcesFeaturesGet (..),
    newDirectoryResourcesFeaturesGet,

    -- ** directory.resources.features.insert
    DirectoryResourcesFeaturesInsertResource,
    DirectoryResourcesFeaturesInsert (..),
    newDirectoryResourcesFeaturesInsert,

    -- ** directory.resources.features.list
    DirectoryResourcesFeaturesListResource,
    DirectoryResourcesFeaturesList (..),
    newDirectoryResourcesFeaturesList,

    -- ** directory.resources.features.patch
    DirectoryResourcesFeaturesPatchResource,
    DirectoryResourcesFeaturesPatch (..),
    newDirectoryResourcesFeaturesPatch,

    -- ** directory.resources.features.rename
    DirectoryResourcesFeaturesRenameResource,
    DirectoryResourcesFeaturesRename (..),
    newDirectoryResourcesFeaturesRename,

    -- ** directory.resources.features.update
    DirectoryResourcesFeaturesUpdateResource,
    DirectoryResourcesFeaturesUpdate (..),
    newDirectoryResourcesFeaturesUpdate,

    -- ** directory.roleAssignments.delete
    DirectoryRoleAssignmentsDeleteResource,
    DirectoryRoleAssignmentsDelete (..),
    newDirectoryRoleAssignmentsDelete,

    -- ** directory.roleAssignments.get
    DirectoryRoleAssignmentsGetResource,
    DirectoryRoleAssignmentsGet (..),
    newDirectoryRoleAssignmentsGet,

    -- ** directory.roleAssignments.insert
    DirectoryRoleAssignmentsInsertResource,
    DirectoryRoleAssignmentsInsert (..),
    newDirectoryRoleAssignmentsInsert,

    -- ** directory.roleAssignments.list
    DirectoryRoleAssignmentsListResource,
    DirectoryRoleAssignmentsList (..),
    newDirectoryRoleAssignmentsList,

    -- ** directory.roles.delete
    DirectoryRolesDeleteResource,
    DirectoryRolesDelete (..),
    newDirectoryRolesDelete,

    -- ** directory.roles.get
    DirectoryRolesGetResource,
    DirectoryRolesGet (..),
    newDirectoryRolesGet,

    -- ** directory.roles.insert
    DirectoryRolesInsertResource,
    DirectoryRolesInsert (..),
    newDirectoryRolesInsert,

    -- ** directory.roles.list
    DirectoryRolesListResource,
    DirectoryRolesList (..),
    newDirectoryRolesList,

    -- ** directory.roles.patch
    DirectoryRolesPatchResource,
    DirectoryRolesPatch (..),
    newDirectoryRolesPatch,

    -- ** directory.roles.update
    DirectoryRolesUpdateResource,
    DirectoryRolesUpdate (..),
    newDirectoryRolesUpdate,

    -- ** directory.schemas.delete
    DirectorySchemasDeleteResource,
    DirectorySchemasDelete (..),
    newDirectorySchemasDelete,

    -- ** directory.schemas.get
    DirectorySchemasGetResource,
    DirectorySchemasGet (..),
    newDirectorySchemasGet,

    -- ** directory.schemas.insert
    DirectorySchemasInsertResource,
    DirectorySchemasInsert (..),
    newDirectorySchemasInsert,

    -- ** directory.schemas.list
    DirectorySchemasListResource,
    DirectorySchemasList (..),
    newDirectorySchemasList,

    -- ** directory.schemas.patch
    DirectorySchemasPatchResource,
    DirectorySchemasPatch (..),
    newDirectorySchemasPatch,

    -- ** directory.schemas.update
    DirectorySchemasUpdateResource,
    DirectorySchemasUpdate (..),
    newDirectorySchemasUpdate,

    -- ** directory.tokens.delete
    DirectoryTokensDeleteResource,
    DirectoryTokensDelete (..),
    newDirectoryTokensDelete,

    -- ** directory.tokens.get
    DirectoryTokensGetResource,
    DirectoryTokensGet (..),
    newDirectoryTokensGet,

    -- ** directory.tokens.list
    DirectoryTokensListResource,
    DirectoryTokensList (..),
    newDirectoryTokensList,

    -- ** directory.twoStepVerification.turnOff
    DirectoryTwoStepVerificationTurnOffResource,
    DirectoryTwoStepVerificationTurnOff (..),
    newDirectoryTwoStepVerificationTurnOff,

    -- ** directory.users.aliases.delete
    DirectoryUsersAliasesDeleteResource,
    DirectoryUsersAliasesDelete (..),
    newDirectoryUsersAliasesDelete,

    -- ** directory.users.aliases.insert
    DirectoryUsersAliasesInsertResource,
    DirectoryUsersAliasesInsert (..),
    newDirectoryUsersAliasesInsert,

    -- ** directory.users.aliases.list
    DirectoryUsersAliasesListResource,
    DirectoryUsersAliasesList (..),
    newDirectoryUsersAliasesList,

    -- ** directory.users.aliases.watch
    DirectoryUsersAliasesWatchResource,
    DirectoryUsersAliasesWatch (..),
    newDirectoryUsersAliasesWatch,

    -- ** directory.users.delete
    DirectoryUsersDeleteResource,
    DirectoryUsersDelete (..),
    newDirectoryUsersDelete,

    -- ** directory.users.get
    DirectoryUsersGetResource,
    DirectoryUsersGet (..),
    newDirectoryUsersGet,

    -- ** directory.users.insert
    DirectoryUsersInsertResource,
    DirectoryUsersInsert (..),
    newDirectoryUsersInsert,

    -- ** directory.users.list
    DirectoryUsersListResource,
    DirectoryUsersList (..),
    newDirectoryUsersList,

    -- ** directory.users.makeAdmin
    DirectoryUsersMakeAdminResource,
    DirectoryUsersMakeAdmin (..),
    newDirectoryUsersMakeAdmin,

    -- ** directory.users.patch
    DirectoryUsersPatchResource,
    DirectoryUsersPatch (..),
    newDirectoryUsersPatch,

    -- ** directory.users.photos.delete
    DirectoryUsersPhotosDeleteResource,
    DirectoryUsersPhotosDelete (..),
    newDirectoryUsersPhotosDelete,

    -- ** directory.users.photos.get
    DirectoryUsersPhotosGetResource,
    DirectoryUsersPhotosGet (..),
    newDirectoryUsersPhotosGet,

    -- ** directory.users.photos.patch
    DirectoryUsersPhotosPatchResource,
    DirectoryUsersPhotosPatch (..),
    newDirectoryUsersPhotosPatch,

    -- ** directory.users.photos.update
    DirectoryUsersPhotosUpdateResource,
    DirectoryUsersPhotosUpdate (..),
    newDirectoryUsersPhotosUpdate,

    -- ** directory.users.signOut
    DirectoryUsersSignOutResource,
    DirectoryUsersSignOut (..),
    newDirectoryUsersSignOut,

    -- ** directory.users.undelete
    DirectoryUsersUndeleteResource,
    DirectoryUsersUndelete (..),
    newDirectoryUsersUndelete,

    -- ** directory.users.update
    DirectoryUsersUpdateResource,
    DirectoryUsersUpdate (..),
    newDirectoryUsersUpdate,

    -- ** directory.users.watch
    DirectoryUsersWatchResource,
    DirectoryUsersWatch (..),
    newDirectoryUsersWatch,

    -- ** directory.verificationCodes.generate
    DirectoryVerificationCodesGenerateResource,
    DirectoryVerificationCodesGenerate (..),
    newDirectoryVerificationCodesGenerate,

    -- ** directory.verificationCodes.invalidate
    DirectoryVerificationCodesInvalidateResource,
    DirectoryVerificationCodesInvalidate (..),
    newDirectoryVerificationCodesInvalidate,

    -- ** directory.verificationCodes.list
    DirectoryVerificationCodesListResource,
    DirectoryVerificationCodesList (..),
    newDirectoryVerificationCodesList,

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

import Gogol.Admin.Directory.Admin.Channels.Stop
import Gogol.Admin.Directory.Admin.Customer.Devices.Chromeos.Commands.Get
import Gogol.Admin.Directory.Admin.Customer.Devices.Chromeos.IssueCommand
import Gogol.Admin.Directory.Admin.Customers.Chrome.Printers.BatchCreatePrinters
import Gogol.Admin.Directory.Admin.Customers.Chrome.Printers.BatchDeletePrinters
import Gogol.Admin.Directory.Admin.Customers.Chrome.Printers.Create
import Gogol.Admin.Directory.Admin.Customers.Chrome.Printers.Delete
import Gogol.Admin.Directory.Admin.Customers.Chrome.Printers.Get
import Gogol.Admin.Directory.Admin.Customers.Chrome.Printers.List
import Gogol.Admin.Directory.Admin.Customers.Chrome.Printers.ListPrinterModels
import Gogol.Admin.Directory.Admin.Customers.Chrome.Printers.Patch
import Gogol.Admin.Directory.Asps.Delete
import Gogol.Admin.Directory.Asps.Get
import Gogol.Admin.Directory.Asps.List
import Gogol.Admin.Directory.Chromeosdevices.Action
import Gogol.Admin.Directory.Chromeosdevices.Get
import Gogol.Admin.Directory.Chromeosdevices.List
import Gogol.Admin.Directory.Chromeosdevices.MoveDevicesToOu
import Gogol.Admin.Directory.Chromeosdevices.Patch
import Gogol.Admin.Directory.Chromeosdevices.Update
import Gogol.Admin.Directory.Customers.Get
import Gogol.Admin.Directory.Customers.Patch
import Gogol.Admin.Directory.Customers.Update
import Gogol.Admin.Directory.DomainAliases.Delete
import Gogol.Admin.Directory.DomainAliases.Get
import Gogol.Admin.Directory.DomainAliases.Insert
import Gogol.Admin.Directory.DomainAliases.List
import Gogol.Admin.Directory.Domains.Delete
import Gogol.Admin.Directory.Domains.Get
import Gogol.Admin.Directory.Domains.Insert
import Gogol.Admin.Directory.Domains.List
import Gogol.Admin.Directory.Groups.Aliases.Delete
import Gogol.Admin.Directory.Groups.Aliases.Insert
import Gogol.Admin.Directory.Groups.Aliases.List
import Gogol.Admin.Directory.Groups.Delete
import Gogol.Admin.Directory.Groups.Get
import Gogol.Admin.Directory.Groups.Insert
import Gogol.Admin.Directory.Groups.List
import Gogol.Admin.Directory.Groups.Patch
import Gogol.Admin.Directory.Groups.Update
import Gogol.Admin.Directory.Members.Delete
import Gogol.Admin.Directory.Members.Get
import Gogol.Admin.Directory.Members.HasMember
import Gogol.Admin.Directory.Members.Insert
import Gogol.Admin.Directory.Members.List
import Gogol.Admin.Directory.Members.Patch
import Gogol.Admin.Directory.Members.Update
import Gogol.Admin.Directory.Mobiledevices.Action
import Gogol.Admin.Directory.Mobiledevices.Delete
import Gogol.Admin.Directory.Mobiledevices.Get
import Gogol.Admin.Directory.Mobiledevices.List
import Gogol.Admin.Directory.Orgunits.Delete
import Gogol.Admin.Directory.Orgunits.Get
import Gogol.Admin.Directory.Orgunits.Insert
import Gogol.Admin.Directory.Orgunits.List
import Gogol.Admin.Directory.Orgunits.Patch
import Gogol.Admin.Directory.Orgunits.Update
import Gogol.Admin.Directory.Privileges.List
import Gogol.Admin.Directory.Resources.Buildings.Delete
import Gogol.Admin.Directory.Resources.Buildings.Get
import Gogol.Admin.Directory.Resources.Buildings.Insert
import Gogol.Admin.Directory.Resources.Buildings.List
import Gogol.Admin.Directory.Resources.Buildings.Patch
import Gogol.Admin.Directory.Resources.Buildings.Update
import Gogol.Admin.Directory.Resources.Calendars.Delete
import Gogol.Admin.Directory.Resources.Calendars.Get
import Gogol.Admin.Directory.Resources.Calendars.Insert
import Gogol.Admin.Directory.Resources.Calendars.List
import Gogol.Admin.Directory.Resources.Calendars.Patch
import Gogol.Admin.Directory.Resources.Calendars.Update
import Gogol.Admin.Directory.Resources.Features.Delete
import Gogol.Admin.Directory.Resources.Features.Get
import Gogol.Admin.Directory.Resources.Features.Insert
import Gogol.Admin.Directory.Resources.Features.List
import Gogol.Admin.Directory.Resources.Features.Patch
import Gogol.Admin.Directory.Resources.Features.Rename
import Gogol.Admin.Directory.Resources.Features.Update
import Gogol.Admin.Directory.RoleAssignments.Delete
import Gogol.Admin.Directory.RoleAssignments.Get
import Gogol.Admin.Directory.RoleAssignments.Insert
import Gogol.Admin.Directory.RoleAssignments.List
import Gogol.Admin.Directory.Roles.Delete
import Gogol.Admin.Directory.Roles.Get
import Gogol.Admin.Directory.Roles.Insert
import Gogol.Admin.Directory.Roles.List
import Gogol.Admin.Directory.Roles.Patch
import Gogol.Admin.Directory.Roles.Update
import Gogol.Admin.Directory.Schemas.Delete
import Gogol.Admin.Directory.Schemas.Get
import Gogol.Admin.Directory.Schemas.Insert
import Gogol.Admin.Directory.Schemas.List
import Gogol.Admin.Directory.Schemas.Patch
import Gogol.Admin.Directory.Schemas.Update
import Gogol.Admin.Directory.Tokens.Delete
import Gogol.Admin.Directory.Tokens.Get
import Gogol.Admin.Directory.Tokens.List
import Gogol.Admin.Directory.TwoStepVerification.TurnOff
import Gogol.Admin.Directory.Types
import Gogol.Admin.Directory.Users.Aliases.Delete
import Gogol.Admin.Directory.Users.Aliases.Insert
import Gogol.Admin.Directory.Users.Aliases.List
import Gogol.Admin.Directory.Users.Aliases.Watch
import Gogol.Admin.Directory.Users.Delete
import Gogol.Admin.Directory.Users.Get
import Gogol.Admin.Directory.Users.Insert
import Gogol.Admin.Directory.Users.List
import Gogol.Admin.Directory.Users.MakeAdmin
import Gogol.Admin.Directory.Users.Patch
import Gogol.Admin.Directory.Users.Photos.Delete
import Gogol.Admin.Directory.Users.Photos.Get
import Gogol.Admin.Directory.Users.Photos.Patch
import Gogol.Admin.Directory.Users.Photos.Update
import Gogol.Admin.Directory.Users.SignOut
import Gogol.Admin.Directory.Users.Undelete
import Gogol.Admin.Directory.Users.Update
import Gogol.Admin.Directory.Users.Watch
import Gogol.Admin.Directory.VerificationCodes.Generate
import Gogol.Admin.Directory.VerificationCodes.Invalidate
import Gogol.Admin.Directory.VerificationCodes.List
