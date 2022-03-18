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
-- Module      : Network.Google.CloudIOT
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers and manages IoT (Internet of Things) devices that connect to the Google Cloud Platform.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference>
module Network.Google.CloudIOT
  ( -- * Configuration
    cloudIOTService,

    -- * OAuth Scopes
    cloudPlatformScope,
    cloudIOTScope,

    -- * Resources

    -- ** cloudiot.projects.locations.registries.bindDeviceToGateway
    CloudIOTProjectsLocationsRegistriesBindDeviceToGatewayResource,
    newCloudIOTProjectsLocationsRegistriesBindDeviceToGateway,
    CloudIOTProjectsLocationsRegistriesBindDeviceToGateway,

    -- ** cloudiot.projects.locations.registries.create
    CloudIOTProjectsLocationsRegistriesCreateResource,
    newCloudIOTProjectsLocationsRegistriesCreate,
    CloudIOTProjectsLocationsRegistriesCreate,

    -- ** cloudiot.projects.locations.registries.delete
    CloudIOTProjectsLocationsRegistriesDeleteResource,
    newCloudIOTProjectsLocationsRegistriesDelete,
    CloudIOTProjectsLocationsRegistriesDelete,

    -- ** cloudiot.projects.locations.registries.devices.configVersions.list
    CloudIOTProjectsLocationsRegistriesDevicesConfigVersionsListResource,
    newCloudIOTProjectsLocationsRegistriesDevicesConfigVersionsList,
    CloudIOTProjectsLocationsRegistriesDevicesConfigVersionsList,

    -- ** cloudiot.projects.locations.registries.devices.create
    CloudIOTProjectsLocationsRegistriesDevicesCreateResource,
    newCloudIOTProjectsLocationsRegistriesDevicesCreate,
    CloudIOTProjectsLocationsRegistriesDevicesCreate,

    -- ** cloudiot.projects.locations.registries.devices.delete
    CloudIOTProjectsLocationsRegistriesDevicesDeleteResource,
    newCloudIOTProjectsLocationsRegistriesDevicesDelete,
    CloudIOTProjectsLocationsRegistriesDevicesDelete,

    -- ** cloudiot.projects.locations.registries.devices.get
    CloudIOTProjectsLocationsRegistriesDevicesGetResource,
    newCloudIOTProjectsLocationsRegistriesDevicesGet,
    CloudIOTProjectsLocationsRegistriesDevicesGet,

    -- ** cloudiot.projects.locations.registries.devices.list
    CloudIOTProjectsLocationsRegistriesDevicesListResource,
    newCloudIOTProjectsLocationsRegistriesDevicesList,
    CloudIOTProjectsLocationsRegistriesDevicesList,

    -- ** cloudiot.projects.locations.registries.devices.modifyCloudToDeviceConfig
    CloudIOTProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfigResource,
    newCloudIOTProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig,
    CloudIOTProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig,

    -- ** cloudiot.projects.locations.registries.devices.patch
    CloudIOTProjectsLocationsRegistriesDevicesPatchResource,
    newCloudIOTProjectsLocationsRegistriesDevicesPatch,
    CloudIOTProjectsLocationsRegistriesDevicesPatch,

    -- ** cloudiot.projects.locations.registries.devices.sendCommandToDevice
    CloudIOTProjectsLocationsRegistriesDevicesSendCommandToDeviceResource,
    newCloudIOTProjectsLocationsRegistriesDevicesSendCommandToDevice,
    CloudIOTProjectsLocationsRegistriesDevicesSendCommandToDevice,

    -- ** cloudiot.projects.locations.registries.devices.states.list
    CloudIOTProjectsLocationsRegistriesDevicesStatesListResource,
    newCloudIOTProjectsLocationsRegistriesDevicesStatesList,
    CloudIOTProjectsLocationsRegistriesDevicesStatesList,

    -- ** cloudiot.projects.locations.registries.get
    CloudIOTProjectsLocationsRegistriesGetResource,
    newCloudIOTProjectsLocationsRegistriesGet,
    CloudIOTProjectsLocationsRegistriesGet,

    -- ** cloudiot.projects.locations.registries.getIamPolicy
    CloudIOTProjectsLocationsRegistriesGetIamPolicyResource,
    newCloudIOTProjectsLocationsRegistriesGetIamPolicy,
    CloudIOTProjectsLocationsRegistriesGetIamPolicy,

    -- ** cloudiot.projects.locations.registries.groups.devices.list
    CloudIOTProjectsLocationsRegistriesGroupsDevicesListResource,
    newCloudIOTProjectsLocationsRegistriesGroupsDevicesList,
    CloudIOTProjectsLocationsRegistriesGroupsDevicesList,

    -- ** cloudiot.projects.locations.registries.groups.getIamPolicy
    CloudIOTProjectsLocationsRegistriesGroupsGetIamPolicyResource,
    newCloudIOTProjectsLocationsRegistriesGroupsGetIamPolicy,
    CloudIOTProjectsLocationsRegistriesGroupsGetIamPolicy,

    -- ** cloudiot.projects.locations.registries.groups.setIamPolicy
    CloudIOTProjectsLocationsRegistriesGroupsSetIamPolicyResource,
    newCloudIOTProjectsLocationsRegistriesGroupsSetIamPolicy,
    CloudIOTProjectsLocationsRegistriesGroupsSetIamPolicy,

    -- ** cloudiot.projects.locations.registries.groups.testIamPermissions
    CloudIOTProjectsLocationsRegistriesGroupsTestIamPermissionsResource,
    newCloudIOTProjectsLocationsRegistriesGroupsTestIamPermissions,
    CloudIOTProjectsLocationsRegistriesGroupsTestIamPermissions,

    -- ** cloudiot.projects.locations.registries.list
    CloudIOTProjectsLocationsRegistriesListResource,
    newCloudIOTProjectsLocationsRegistriesList,
    CloudIOTProjectsLocationsRegistriesList,

    -- ** cloudiot.projects.locations.registries.patch
    CloudIOTProjectsLocationsRegistriesPatchResource,
    newCloudIOTProjectsLocationsRegistriesPatch,
    CloudIOTProjectsLocationsRegistriesPatch,

    -- ** cloudiot.projects.locations.registries.setIamPolicy
    CloudIOTProjectsLocationsRegistriesSetIamPolicyResource,
    newCloudIOTProjectsLocationsRegistriesSetIamPolicy,
    CloudIOTProjectsLocationsRegistriesSetIamPolicy,

    -- ** cloudiot.projects.locations.registries.testIamPermissions
    CloudIOTProjectsLocationsRegistriesTestIamPermissionsResource,
    newCloudIOTProjectsLocationsRegistriesTestIamPermissions,
    CloudIOTProjectsLocationsRegistriesTestIamPermissions,

    -- ** cloudiot.projects.locations.registries.unbindDeviceFromGateway
    CloudIOTProjectsLocationsRegistriesUnbindDeviceFromGatewayResource,
    newCloudIOTProjectsLocationsRegistriesUnbindDeviceFromGateway,
    CloudIOTProjectsLocationsRegistriesUnbindDeviceFromGateway,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** BindDeviceToGatewayRequest
    BindDeviceToGatewayRequest (..),
    newBindDeviceToGatewayRequest,

    -- ** BindDeviceToGatewayResponse
    BindDeviceToGatewayResponse (..),
    newBindDeviceToGatewayResponse,

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** Device
    Device (..),
    newDevice,

    -- ** Device_LogLevel
    Device_LogLevel (..),

    -- ** Device_Metadata
    Device_Metadata (..),
    newDevice_Metadata,

    -- ** DeviceConfig
    DeviceConfig (..),
    newDeviceConfig,

    -- ** DeviceCredential
    DeviceCredential (..),
    newDeviceCredential,

    -- ** DeviceRegistry
    DeviceRegistry (..),
    newDeviceRegistry,

    -- ** DeviceRegistry_LogLevel
    DeviceRegistry_LogLevel (..),

    -- ** DeviceState
    DeviceState (..),
    newDeviceState,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** EventNotificationConfig
    EventNotificationConfig (..),
    newEventNotificationConfig,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** GatewayConfig
    GatewayConfig (..),
    newGatewayConfig,

    -- ** GatewayConfig_GatewayAuthMethod
    GatewayConfig_GatewayAuthMethod (..),

    -- ** GatewayConfig_GatewayType
    GatewayConfig_GatewayType (..),

    -- ** GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- ** GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- ** HttpConfig
    HttpConfig (..),
    newHttpConfig,

    -- ** HttpConfig_HttpEnabledState
    HttpConfig_HttpEnabledState (..),

    -- ** ListDeviceConfigVersionsResponse
    ListDeviceConfigVersionsResponse (..),
    newListDeviceConfigVersionsResponse,

    -- ** ListDeviceRegistriesResponse
    ListDeviceRegistriesResponse (..),
    newListDeviceRegistriesResponse,

    -- ** ListDeviceStatesResponse
    ListDeviceStatesResponse (..),
    newListDeviceStatesResponse,

    -- ** ListDevicesResponse
    ListDevicesResponse (..),
    newListDevicesResponse,

    -- ** ModifyCloudToDeviceConfigRequest
    ModifyCloudToDeviceConfigRequest (..),
    newModifyCloudToDeviceConfigRequest,

    -- ** MqttConfig
    MqttConfig (..),
    newMqttConfig,

    -- ** MqttConfig_MqttEnabledState
    MqttConfig_MqttEnabledState (..),

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** PublicKeyCertificate
    PublicKeyCertificate (..),
    newPublicKeyCertificate,

    -- ** PublicKeyCertificate_Format
    PublicKeyCertificate_Format (..),

    -- ** PublicKeyCredential
    PublicKeyCredential (..),
    newPublicKeyCredential,

    -- ** PublicKeyCredential_Format
    PublicKeyCredential_Format (..),

    -- ** RegistryCredential
    RegistryCredential (..),
    newRegistryCredential,

    -- ** SendCommandToDeviceRequest
    SendCommandToDeviceRequest (..),
    newSendCommandToDeviceRequest,

    -- ** SendCommandToDeviceResponse
    SendCommandToDeviceResponse (..),
    newSendCommandToDeviceResponse,

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** StateNotificationConfig
    StateNotificationConfig (..),
    newStateNotificationConfig,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- ** UnbindDeviceFromGatewayRequest
    UnbindDeviceFromGatewayRequest (..),
    newUnbindDeviceFromGatewayRequest,

    -- ** UnbindDeviceFromGatewayResponse
    UnbindDeviceFromGatewayResponse (..),
    newUnbindDeviceFromGatewayResponse,

    -- ** X509CertificateDetails
    X509CertificateDetails (..),
    newX509CertificateDetails,

    -- ** ProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType
    ProjectsLocationsRegistriesDevicesListGatewayListOptionsGatewayType (..),

    -- ** ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType
    ProjectsLocationsRegistriesGroupsDevicesListGatewayListOptionsGatewayType (..),
  )
where

import Network.Google.CloudIOT.Projects.Locations.Registries.BindDeviceToGateway
import Network.Google.CloudIOT.Projects.Locations.Registries.Create
import Network.Google.CloudIOT.Projects.Locations.Registries.Delete
import Network.Google.CloudIOT.Projects.Locations.Registries.Devices.ConfigVersions.List
import Network.Google.CloudIOT.Projects.Locations.Registries.Devices.Create
import Network.Google.CloudIOT.Projects.Locations.Registries.Devices.Delete
import Network.Google.CloudIOT.Projects.Locations.Registries.Devices.Get
import Network.Google.CloudIOT.Projects.Locations.Registries.Devices.List
import Network.Google.CloudIOT.Projects.Locations.Registries.Devices.ModifyCloudToDeviceConfig
import Network.Google.CloudIOT.Projects.Locations.Registries.Devices.Patch
import Network.Google.CloudIOT.Projects.Locations.Registries.Devices.SendCommandToDevice
import Network.Google.CloudIOT.Projects.Locations.Registries.Devices.States.List
import Network.Google.CloudIOT.Projects.Locations.Registries.Get
import Network.Google.CloudIOT.Projects.Locations.Registries.GetIamPolicy
import Network.Google.CloudIOT.Projects.Locations.Registries.Groups.Devices.List
import Network.Google.CloudIOT.Projects.Locations.Registries.Groups.GetIamPolicy
import Network.Google.CloudIOT.Projects.Locations.Registries.Groups.SetIamPolicy
import Network.Google.CloudIOT.Projects.Locations.Registries.Groups.TestIamPermissions
import Network.Google.CloudIOT.Projects.Locations.Registries.List
import Network.Google.CloudIOT.Projects.Locations.Registries.Patch
import Network.Google.CloudIOT.Projects.Locations.Registries.SetIamPolicy
import Network.Google.CloudIOT.Projects.Locations.Registries.TestIamPermissions
import Network.Google.CloudIOT.Projects.Locations.Registries.UnbindDeviceFromGateway
import Network.Google.CloudIOT.Types
