{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

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
    (
    -- * Configuration
      adminDirectoryService

    -- * OAuth Scopes
    , adminChromePrintersScope
    , adminChromePrintersReadOnlyScope
    , adminDirectoryCustomerScope
    , adminDirectoryCustomerReadOnlyScope
    , adminDirectoryDeviceChromeosScope
    , adminDirectoryDeviceChromeosReadOnlyScope
    , adminDirectoryDeviceMobileScope
    , adminDirectoryDeviceMobileActionScope
    , adminDirectoryDeviceMobileReadOnlyScope
    , adminDirectoryDomainScope
    , adminDirectoryDomainReadOnlyScope
    , adminDirectoryGroupScope
    , adminDirectoryGroupMemberScope
    , adminDirectoryGroupMemberReadOnlyScope
    , adminDirectoryGroupReadOnlyScope
    , adminDirectoryOrgunitScope
    , adminDirectoryOrgunitReadOnlyScope
    , adminDirectoryResourceCalendarScope
    , adminDirectoryResourceCalendarReadOnlyScope
    , adminDirectoryRoleManagementScope
    , adminDirectoryRoleManagementReadOnlyScope
    , adminDirectoryUserScope
    , adminDirectoryUserAliasScope
    , adminDirectoryUserAliasReadOnlyScope
    , adminDirectoryUserReadOnlyScope
    , adminDirectoryUserSecurityScope
    , adminDirectoryUserschemaScope
    , adminDirectoryUserschemaReadOnlyScope
    , cloudPlatformScope

    -- * Resources

    -- ** admin.channels.stop
    , AdminChannelsStopResource
    , newAdminChannelsStop
    , AdminChannelsStop

    -- ** admin.customer.devices.chromeos.commands.get
    , AdminCustomerDevicesChromeosCommandsGetResource
    , newAdminCustomerDevicesChromeosCommandsGet
    , AdminCustomerDevicesChromeosCommandsGet

    -- ** admin.customer.devices.chromeos.issueCommand
    , AdminCustomerDevicesChromeosIssueCommandResource
    , newAdminCustomerDevicesChromeosIssueCommand
    , AdminCustomerDevicesChromeosIssueCommand

    -- ** admin.customers.chrome.printers.batchCreatePrinters
    , AdminCustomersChromePrintersBatchCreatePrintersResource
    , newAdminCustomersChromePrintersBatchCreatePrinters
    , AdminCustomersChromePrintersBatchCreatePrinters

    -- ** admin.customers.chrome.printers.batchDeletePrinters
    , AdminCustomersChromePrintersBatchDeletePrintersResource
    , newAdminCustomersChromePrintersBatchDeletePrinters
    , AdminCustomersChromePrintersBatchDeletePrinters

    -- ** admin.customers.chrome.printers.create
    , AdminCustomersChromePrintersCreateResource
    , newAdminCustomersChromePrintersCreate
    , AdminCustomersChromePrintersCreate

    -- ** admin.customers.chrome.printers.delete
    , AdminCustomersChromePrintersDeleteResource
    , newAdminCustomersChromePrintersDelete
    , AdminCustomersChromePrintersDelete

    -- ** admin.customers.chrome.printers.get
    , AdminCustomersChromePrintersGetResource
    , newAdminCustomersChromePrintersGet
    , AdminCustomersChromePrintersGet

    -- ** admin.customers.chrome.printers.list
    , AdminCustomersChromePrintersListResource
    , newAdminCustomersChromePrintersList
    , AdminCustomersChromePrintersList

    -- ** admin.customers.chrome.printers.listPrinterModels
    , AdminCustomersChromePrintersListPrinterModelsResource
    , newAdminCustomersChromePrintersListPrinterModels
    , AdminCustomersChromePrintersListPrinterModels

    -- ** admin.customers.chrome.printers.patch
    , AdminCustomersChromePrintersPatchResource
    , newAdminCustomersChromePrintersPatch
    , AdminCustomersChromePrintersPatch

    -- ** directory.asps.delete
    , DirectoryAspsDeleteResource
    , newDirectoryAspsDelete
    , DirectoryAspsDelete

    -- ** directory.asps.get
    , DirectoryAspsGetResource
    , newDirectoryAspsGet
    , DirectoryAspsGet

    -- ** directory.asps.list
    , DirectoryAspsListResource
    , newDirectoryAspsList
    , DirectoryAspsList

    -- ** directory.chromeosdevices.action
    , DirectoryChromeosdevicesActionResource
    , newDirectoryChromeosdevicesAction
    , DirectoryChromeosdevicesAction

    -- ** directory.chromeosdevices.get
    , DirectoryChromeosdevicesGetResource
    , newDirectoryChromeosdevicesGet
    , DirectoryChromeosdevicesGet

    -- ** directory.chromeosdevices.list
    , DirectoryChromeosdevicesListResource
    , newDirectoryChromeosdevicesList
    , DirectoryChromeosdevicesList

    -- ** directory.chromeosdevices.moveDevicesToOu
    , DirectoryChromeosdevicesMoveDevicesToOuResource
    , newDirectoryChromeosdevicesMoveDevicesToOu
    , DirectoryChromeosdevicesMoveDevicesToOu

    -- ** directory.chromeosdevices.patch
    , DirectoryChromeosdevicesPatchResource
    , newDirectoryChromeosdevicesPatch
    , DirectoryChromeosdevicesPatch

    -- ** directory.chromeosdevices.update
    , DirectoryChromeosdevicesUpdateResource
    , newDirectoryChromeosdevicesUpdate
    , DirectoryChromeosdevicesUpdate

    -- ** directory.customers.get
    , DirectoryCustomersGetResource
    , newDirectoryCustomersGet
    , DirectoryCustomersGet

    -- ** directory.customers.patch
    , DirectoryCustomersPatchResource
    , newDirectoryCustomersPatch
    , DirectoryCustomersPatch

    -- ** directory.customers.update
    , DirectoryCustomersUpdateResource
    , newDirectoryCustomersUpdate
    , DirectoryCustomersUpdate

    -- ** directory.domainAliases.delete
    , DirectoryDomainAliasesDeleteResource
    , newDirectoryDomainAliasesDelete
    , DirectoryDomainAliasesDelete

    -- ** directory.domainAliases.get
    , DirectoryDomainAliasesGetResource
    , newDirectoryDomainAliasesGet
    , DirectoryDomainAliasesGet

    -- ** directory.domainAliases.insert
    , DirectoryDomainAliasesInsertResource
    , newDirectoryDomainAliasesInsert
    , DirectoryDomainAliasesInsert

    -- ** directory.domainAliases.list
    , DirectoryDomainAliasesListResource
    , newDirectoryDomainAliasesList
    , DirectoryDomainAliasesList

    -- ** directory.domains.delete
    , DirectoryDomainsDeleteResource
    , newDirectoryDomainsDelete
    , DirectoryDomainsDelete

    -- ** directory.domains.get
    , DirectoryDomainsGetResource
    , newDirectoryDomainsGet
    , DirectoryDomainsGet

    -- ** directory.domains.insert
    , DirectoryDomainsInsertResource
    , newDirectoryDomainsInsert
    , DirectoryDomainsInsert

    -- ** directory.domains.list
    , DirectoryDomainsListResource
    , newDirectoryDomainsList
    , DirectoryDomainsList

    -- ** directory.groups.aliases.delete
    , DirectoryGroupsAliasesDeleteResource
    , newDirectoryGroupsAliasesDelete
    , DirectoryGroupsAliasesDelete

    -- ** directory.groups.aliases.insert
    , DirectoryGroupsAliasesInsertResource
    , newDirectoryGroupsAliasesInsert
    , DirectoryGroupsAliasesInsert

    -- ** directory.groups.aliases.list
    , DirectoryGroupsAliasesListResource
    , newDirectoryGroupsAliasesList
    , DirectoryGroupsAliasesList

    -- ** directory.groups.delete
    , DirectoryGroupsDeleteResource
    , newDirectoryGroupsDelete
    , DirectoryGroupsDelete

    -- ** directory.groups.get
    , DirectoryGroupsGetResource
    , newDirectoryGroupsGet
    , DirectoryGroupsGet

    -- ** directory.groups.insert
    , DirectoryGroupsInsertResource
    , newDirectoryGroupsInsert
    , DirectoryGroupsInsert

    -- ** directory.groups.list
    , DirectoryGroupsListResource
    , newDirectoryGroupsList
    , DirectoryGroupsList

    -- ** directory.groups.patch
    , DirectoryGroupsPatchResource
    , newDirectoryGroupsPatch
    , DirectoryGroupsPatch

    -- ** directory.groups.update
    , DirectoryGroupsUpdateResource
    , newDirectoryGroupsUpdate
    , DirectoryGroupsUpdate

    -- ** directory.members.delete
    , DirectoryMembersDeleteResource
    , newDirectoryMembersDelete
    , DirectoryMembersDelete

    -- ** directory.members.get
    , DirectoryMembersGetResource
    , newDirectoryMembersGet
    , DirectoryMembersGet

    -- ** directory.members.hasMember
    , DirectoryMembersHasMemberResource
    , newDirectoryMembersHasMember
    , DirectoryMembersHasMember

    -- ** directory.members.insert
    , DirectoryMembersInsertResource
    , newDirectoryMembersInsert
    , DirectoryMembersInsert

    -- ** directory.members.list
    , DirectoryMembersListResource
    , newDirectoryMembersList
    , DirectoryMembersList

    -- ** directory.members.patch
    , DirectoryMembersPatchResource
    , newDirectoryMembersPatch
    , DirectoryMembersPatch

    -- ** directory.members.update
    , DirectoryMembersUpdateResource
    , newDirectoryMembersUpdate
    , DirectoryMembersUpdate

    -- ** directory.mobiledevices.action
    , DirectoryMobiledevicesActionResource
    , newDirectoryMobiledevicesAction
    , DirectoryMobiledevicesAction

    -- ** directory.mobiledevices.delete
    , DirectoryMobiledevicesDeleteResource
    , newDirectoryMobiledevicesDelete
    , DirectoryMobiledevicesDelete

    -- ** directory.mobiledevices.get
    , DirectoryMobiledevicesGetResource
    , newDirectoryMobiledevicesGet
    , DirectoryMobiledevicesGet

    -- ** directory.mobiledevices.list
    , DirectoryMobiledevicesListResource
    , newDirectoryMobiledevicesList
    , DirectoryMobiledevicesList

    -- ** directory.orgunits.delete
    , DirectoryOrgunitsDeleteResource
    , newDirectoryOrgunitsDelete
    , DirectoryOrgunitsDelete

    -- ** directory.orgunits.get
    , DirectoryOrgunitsGetResource
    , newDirectoryOrgunitsGet
    , DirectoryOrgunitsGet

    -- ** directory.orgunits.insert
    , DirectoryOrgunitsInsertResource
    , newDirectoryOrgunitsInsert
    , DirectoryOrgunitsInsert

    -- ** directory.orgunits.list
    , DirectoryOrgunitsListResource
    , newDirectoryOrgunitsList
    , DirectoryOrgunitsList

    -- ** directory.orgunits.patch
    , DirectoryOrgunitsPatchResource
    , newDirectoryOrgunitsPatch
    , DirectoryOrgunitsPatch

    -- ** directory.orgunits.update
    , DirectoryOrgunitsUpdateResource
    , newDirectoryOrgunitsUpdate
    , DirectoryOrgunitsUpdate

    -- ** directory.privileges.list
    , DirectoryPrivilegesListResource
    , newDirectoryPrivilegesList
    , DirectoryPrivilegesList

    -- ** directory.resources.buildings.delete
    , DirectoryResourcesBuildingsDeleteResource
    , newDirectoryResourcesBuildingsDelete
    , DirectoryResourcesBuildingsDelete

    -- ** directory.resources.buildings.get
    , DirectoryResourcesBuildingsGetResource
    , newDirectoryResourcesBuildingsGet
    , DirectoryResourcesBuildingsGet

    -- ** directory.resources.buildings.insert
    , DirectoryResourcesBuildingsInsertResource
    , newDirectoryResourcesBuildingsInsert
    , DirectoryResourcesBuildingsInsert

    -- ** directory.resources.buildings.list
    , DirectoryResourcesBuildingsListResource
    , newDirectoryResourcesBuildingsList
    , DirectoryResourcesBuildingsList

    -- ** directory.resources.buildings.patch
    , DirectoryResourcesBuildingsPatchResource
    , newDirectoryResourcesBuildingsPatch
    , DirectoryResourcesBuildingsPatch

    -- ** directory.resources.buildings.update
    , DirectoryResourcesBuildingsUpdateResource
    , newDirectoryResourcesBuildingsUpdate
    , DirectoryResourcesBuildingsUpdate

    -- ** directory.resources.calendars.delete
    , DirectoryResourcesCalendarsDeleteResource
    , newDirectoryResourcesCalendarsDelete
    , DirectoryResourcesCalendarsDelete

    -- ** directory.resources.calendars.get
    , DirectoryResourcesCalendarsGetResource
    , newDirectoryResourcesCalendarsGet
    , DirectoryResourcesCalendarsGet

    -- ** directory.resources.calendars.insert
    , DirectoryResourcesCalendarsInsertResource
    , newDirectoryResourcesCalendarsInsert
    , DirectoryResourcesCalendarsInsert

    -- ** directory.resources.calendars.list
    , DirectoryResourcesCalendarsListResource
    , newDirectoryResourcesCalendarsList
    , DirectoryResourcesCalendarsList

    -- ** directory.resources.calendars.patch
    , DirectoryResourcesCalendarsPatchResource
    , newDirectoryResourcesCalendarsPatch
    , DirectoryResourcesCalendarsPatch

    -- ** directory.resources.calendars.update
    , DirectoryResourcesCalendarsUpdateResource
    , newDirectoryResourcesCalendarsUpdate
    , DirectoryResourcesCalendarsUpdate

    -- ** directory.resources.features.delete
    , DirectoryResourcesFeaturesDeleteResource
    , newDirectoryResourcesFeaturesDelete
    , DirectoryResourcesFeaturesDelete

    -- ** directory.resources.features.get
    , DirectoryResourcesFeaturesGetResource
    , newDirectoryResourcesFeaturesGet
    , DirectoryResourcesFeaturesGet

    -- ** directory.resources.features.insert
    , DirectoryResourcesFeaturesInsertResource
    , newDirectoryResourcesFeaturesInsert
    , DirectoryResourcesFeaturesInsert

    -- ** directory.resources.features.list
    , DirectoryResourcesFeaturesListResource
    , newDirectoryResourcesFeaturesList
    , DirectoryResourcesFeaturesList

    -- ** directory.resources.features.patch
    , DirectoryResourcesFeaturesPatchResource
    , newDirectoryResourcesFeaturesPatch
    , DirectoryResourcesFeaturesPatch

    -- ** directory.resources.features.rename
    , DirectoryResourcesFeaturesRenameResource
    , newDirectoryResourcesFeaturesRename
    , DirectoryResourcesFeaturesRename

    -- ** directory.resources.features.update
    , DirectoryResourcesFeaturesUpdateResource
    , newDirectoryResourcesFeaturesUpdate
    , DirectoryResourcesFeaturesUpdate

    -- ** directory.roleAssignments.delete
    , DirectoryRoleAssignmentsDeleteResource
    , newDirectoryRoleAssignmentsDelete
    , DirectoryRoleAssignmentsDelete

    -- ** directory.roleAssignments.get
    , DirectoryRoleAssignmentsGetResource
    , newDirectoryRoleAssignmentsGet
    , DirectoryRoleAssignmentsGet

    -- ** directory.roleAssignments.insert
    , DirectoryRoleAssignmentsInsertResource
    , newDirectoryRoleAssignmentsInsert
    , DirectoryRoleAssignmentsInsert

    -- ** directory.roleAssignments.list
    , DirectoryRoleAssignmentsListResource
    , newDirectoryRoleAssignmentsList
    , DirectoryRoleAssignmentsList

    -- ** directory.roles.delete
    , DirectoryRolesDeleteResource
    , newDirectoryRolesDelete
    , DirectoryRolesDelete

    -- ** directory.roles.get
    , DirectoryRolesGetResource
    , newDirectoryRolesGet
    , DirectoryRolesGet

    -- ** directory.roles.insert
    , DirectoryRolesInsertResource
    , newDirectoryRolesInsert
    , DirectoryRolesInsert

    -- ** directory.roles.list
    , DirectoryRolesListResource
    , newDirectoryRolesList
    , DirectoryRolesList

    -- ** directory.roles.patch
    , DirectoryRolesPatchResource
    , newDirectoryRolesPatch
    , DirectoryRolesPatch

    -- ** directory.roles.update
    , DirectoryRolesUpdateResource
    , newDirectoryRolesUpdate
    , DirectoryRolesUpdate

    -- ** directory.schemas.delete
    , DirectorySchemasDeleteResource
    , newDirectorySchemasDelete
    , DirectorySchemasDelete

    -- ** directory.schemas.get
    , DirectorySchemasGetResource
    , newDirectorySchemasGet
    , DirectorySchemasGet

    -- ** directory.schemas.insert
    , DirectorySchemasInsertResource
    , newDirectorySchemasInsert
    , DirectorySchemasInsert

    -- ** directory.schemas.list
    , DirectorySchemasListResource
    , newDirectorySchemasList
    , DirectorySchemasList

    -- ** directory.schemas.patch
    , DirectorySchemasPatchResource
    , newDirectorySchemasPatch
    , DirectorySchemasPatch

    -- ** directory.schemas.update
    , DirectorySchemasUpdateResource
    , newDirectorySchemasUpdate
    , DirectorySchemasUpdate

    -- ** directory.tokens.delete
    , DirectoryTokensDeleteResource
    , newDirectoryTokensDelete
    , DirectoryTokensDelete

    -- ** directory.tokens.get
    , DirectoryTokensGetResource
    , newDirectoryTokensGet
    , DirectoryTokensGet

    -- ** directory.tokens.list
    , DirectoryTokensListResource
    , newDirectoryTokensList
    , DirectoryTokensList

    -- ** directory.twoStepVerification.turnOff
    , DirectoryTwoStepVerificationTurnOffResource
    , newDirectoryTwoStepVerificationTurnOff
    , DirectoryTwoStepVerificationTurnOff

    -- ** directory.users.aliases.delete
    , DirectoryUsersAliasesDeleteResource
    , newDirectoryUsersAliasesDelete
    , DirectoryUsersAliasesDelete

    -- ** directory.users.aliases.insert
    , DirectoryUsersAliasesInsertResource
    , newDirectoryUsersAliasesInsert
    , DirectoryUsersAliasesInsert

    -- ** directory.users.aliases.list
    , DirectoryUsersAliasesListResource
    , newDirectoryUsersAliasesList
    , DirectoryUsersAliasesList

    -- ** directory.users.aliases.watch
    , DirectoryUsersAliasesWatchResource
    , newDirectoryUsersAliasesWatch
    , DirectoryUsersAliasesWatch

    -- ** directory.users.delete
    , DirectoryUsersDeleteResource
    , newDirectoryUsersDelete
    , DirectoryUsersDelete

    -- ** directory.users.get
    , DirectoryUsersGetResource
    , newDirectoryUsersGet
    , DirectoryUsersGet

    -- ** directory.users.insert
    , DirectoryUsersInsertResource
    , newDirectoryUsersInsert
    , DirectoryUsersInsert

    -- ** directory.users.list
    , DirectoryUsersListResource
    , newDirectoryUsersList
    , DirectoryUsersList

    -- ** directory.users.makeAdmin
    , DirectoryUsersMakeAdminResource
    , newDirectoryUsersMakeAdmin
    , DirectoryUsersMakeAdmin

    -- ** directory.users.patch
    , DirectoryUsersPatchResource
    , newDirectoryUsersPatch
    , DirectoryUsersPatch

    -- ** directory.users.photos.delete
    , DirectoryUsersPhotosDeleteResource
    , newDirectoryUsersPhotosDelete
    , DirectoryUsersPhotosDelete

    -- ** directory.users.photos.get
    , DirectoryUsersPhotosGetResource
    , newDirectoryUsersPhotosGet
    , DirectoryUsersPhotosGet

    -- ** directory.users.photos.patch
    , DirectoryUsersPhotosPatchResource
    , newDirectoryUsersPhotosPatch
    , DirectoryUsersPhotosPatch

    -- ** directory.users.photos.update
    , DirectoryUsersPhotosUpdateResource
    , newDirectoryUsersPhotosUpdate
    , DirectoryUsersPhotosUpdate

    -- ** directory.users.signOut
    , DirectoryUsersSignOutResource
    , newDirectoryUsersSignOut
    , DirectoryUsersSignOut

    -- ** directory.users.undelete
    , DirectoryUsersUndeleteResource
    , newDirectoryUsersUndelete
    , DirectoryUsersUndelete

    -- ** directory.users.update
    , DirectoryUsersUpdateResource
    , newDirectoryUsersUpdate
    , DirectoryUsersUpdate

    -- ** directory.users.watch
    , DirectoryUsersWatchResource
    , newDirectoryUsersWatch
    , DirectoryUsersWatch

    -- ** directory.verificationCodes.generate
    , DirectoryVerificationCodesGenerateResource
    , newDirectoryVerificationCodesGenerate
    , DirectoryVerificationCodesGenerate

    -- ** directory.verificationCodes.invalidate
    , DirectoryVerificationCodesInvalidateResource
    , newDirectoryVerificationCodesInvalidate
    , DirectoryVerificationCodesInvalidate

    -- ** directory.verificationCodes.list
    , DirectoryVerificationCodesListResource
    , newDirectoryVerificationCodesList
    , DirectoryVerificationCodesList

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

    -- ** BatchCreatePrintersRequest
    , BatchCreatePrintersRequest (..)
    , newBatchCreatePrintersRequest

    -- ** BatchCreatePrintersResponse
    , BatchCreatePrintersResponse (..)
    , newBatchCreatePrintersResponse

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

    -- ** CalendarResource
    , CalendarResource (..)
    , newCalendarResource

    -- ** CalendarResources
    , CalendarResources (..)
    , newCalendarResources

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

    -- ** ChromeOsDevice_DeviceFilesItem
    , ChromeOsDevice_DeviceFilesItem (..)
    , newChromeOsDevice_DeviceFilesItem

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

    -- ** Groups
    , Groups (..)
    , newGroups

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

    -- ** UserCustomProperties
    , UserCustomProperties (..)
    , newUserCustomProperties

    -- ** UserEmail
    , UserEmail (..)
    , newUserEmail

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
