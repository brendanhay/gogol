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
-- Module      : Gogol.CloudIOT
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers and manages IoT (Internet of Things) devices that connect to the Google Cloud Platform.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference>
module Gogol.CloudIOT
  ( -- * Configuration
    cloudIOTService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Cloudiot'FullControl,

    -- * Resources

    -- ** cloudiot.projects.locations.registries.bindDeviceToGateway
    CloudIOTProjectsLocationsRegistriesBindDeviceToGatewayResource,
    CloudIOTProjectsLocationsRegistriesBindDeviceToGateway (..),
    newCloudIOTProjectsLocationsRegistriesBindDeviceToGateway,

    -- ** cloudiot.projects.locations.registries.create
    CloudIOTProjectsLocationsRegistriesCreateResource,
    CloudIOTProjectsLocationsRegistriesCreate (..),
    newCloudIOTProjectsLocationsRegistriesCreate,

    -- ** cloudiot.projects.locations.registries.delete
    CloudIOTProjectsLocationsRegistriesDeleteResource,
    CloudIOTProjectsLocationsRegistriesDelete (..),
    newCloudIOTProjectsLocationsRegistriesDelete,

    -- ** cloudiot.projects.locations.registries.devices.configVersions.list
    CloudIOTProjectsLocationsRegistriesDevicesConfigVersionsListResource,
    CloudIOTProjectsLocationsRegistriesDevicesConfigVersionsList (..),
    newCloudIOTProjectsLocationsRegistriesDevicesConfigVersionsList,

    -- ** cloudiot.projects.locations.registries.devices.create
    CloudIOTProjectsLocationsRegistriesDevicesCreateResource,
    CloudIOTProjectsLocationsRegistriesDevicesCreate (..),
    newCloudIOTProjectsLocationsRegistriesDevicesCreate,

    -- ** cloudiot.projects.locations.registries.devices.delete
    CloudIOTProjectsLocationsRegistriesDevicesDeleteResource,
    CloudIOTProjectsLocationsRegistriesDevicesDelete (..),
    newCloudIOTProjectsLocationsRegistriesDevicesDelete,

    -- ** cloudiot.projects.locations.registries.devices.get
    CloudIOTProjectsLocationsRegistriesDevicesGetResource,
    CloudIOTProjectsLocationsRegistriesDevicesGet (..),
    newCloudIOTProjectsLocationsRegistriesDevicesGet,

    -- ** cloudiot.projects.locations.registries.devices.list
    CloudIOTProjectsLocationsRegistriesDevicesListResource,
    CloudIOTProjectsLocationsRegistriesDevicesList (..),
    newCloudIOTProjectsLocationsRegistriesDevicesList,

    -- ** cloudiot.projects.locations.registries.devices.modifyCloudToDeviceConfig
    CloudIOTProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfigResource,
    CloudIOTProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig (..),
    newCloudIOTProjectsLocationsRegistriesDevicesModifyCloudToDeviceConfig,

    -- ** cloudiot.projects.locations.registries.devices.patch
    CloudIOTProjectsLocationsRegistriesDevicesPatchResource,
    CloudIOTProjectsLocationsRegistriesDevicesPatch (..),
    newCloudIOTProjectsLocationsRegistriesDevicesPatch,

    -- ** cloudiot.projects.locations.registries.devices.sendCommandToDevice
    CloudIOTProjectsLocationsRegistriesDevicesSendCommandToDeviceResource,
    CloudIOTProjectsLocationsRegistriesDevicesSendCommandToDevice (..),
    newCloudIOTProjectsLocationsRegistriesDevicesSendCommandToDevice,

    -- ** cloudiot.projects.locations.registries.devices.states.list
    CloudIOTProjectsLocationsRegistriesDevicesStatesListResource,
    CloudIOTProjectsLocationsRegistriesDevicesStatesList (..),
    newCloudIOTProjectsLocationsRegistriesDevicesStatesList,

    -- ** cloudiot.projects.locations.registries.get
    CloudIOTProjectsLocationsRegistriesGetResource,
    CloudIOTProjectsLocationsRegistriesGet (..),
    newCloudIOTProjectsLocationsRegistriesGet,

    -- ** cloudiot.projects.locations.registries.getIamPolicy
    CloudIOTProjectsLocationsRegistriesGetIamPolicyResource,
    CloudIOTProjectsLocationsRegistriesGetIamPolicy (..),
    newCloudIOTProjectsLocationsRegistriesGetIamPolicy,

    -- ** cloudiot.projects.locations.registries.groups.devices.list
    CloudIOTProjectsLocationsRegistriesGroupsDevicesListResource,
    CloudIOTProjectsLocationsRegistriesGroupsDevicesList (..),
    newCloudIOTProjectsLocationsRegistriesGroupsDevicesList,

    -- ** cloudiot.projects.locations.registries.groups.getIamPolicy
    CloudIOTProjectsLocationsRegistriesGroupsGetIamPolicyResource,
    CloudIOTProjectsLocationsRegistriesGroupsGetIamPolicy (..),
    newCloudIOTProjectsLocationsRegistriesGroupsGetIamPolicy,

    -- ** cloudiot.projects.locations.registries.groups.setIamPolicy
    CloudIOTProjectsLocationsRegistriesGroupsSetIamPolicyResource,
    CloudIOTProjectsLocationsRegistriesGroupsSetIamPolicy (..),
    newCloudIOTProjectsLocationsRegistriesGroupsSetIamPolicy,

    -- ** cloudiot.projects.locations.registries.groups.testIamPermissions
    CloudIOTProjectsLocationsRegistriesGroupsTestIamPermissionsResource,
    CloudIOTProjectsLocationsRegistriesGroupsTestIamPermissions (..),
    newCloudIOTProjectsLocationsRegistriesGroupsTestIamPermissions,

    -- ** cloudiot.projects.locations.registries.list
    CloudIOTProjectsLocationsRegistriesListResource,
    CloudIOTProjectsLocationsRegistriesList (..),
    newCloudIOTProjectsLocationsRegistriesList,

    -- ** cloudiot.projects.locations.registries.patch
    CloudIOTProjectsLocationsRegistriesPatchResource,
    CloudIOTProjectsLocationsRegistriesPatch (..),
    newCloudIOTProjectsLocationsRegistriesPatch,

    -- ** cloudiot.projects.locations.registries.setIamPolicy
    CloudIOTProjectsLocationsRegistriesSetIamPolicyResource,
    CloudIOTProjectsLocationsRegistriesSetIamPolicy (..),
    newCloudIOTProjectsLocationsRegistriesSetIamPolicy,

    -- ** cloudiot.projects.locations.registries.testIamPermissions
    CloudIOTProjectsLocationsRegistriesTestIamPermissionsResource,
    CloudIOTProjectsLocationsRegistriesTestIamPermissions (..),
    newCloudIOTProjectsLocationsRegistriesTestIamPermissions,

    -- ** cloudiot.projects.locations.registries.unbindDeviceFromGateway
    CloudIOTProjectsLocationsRegistriesUnbindDeviceFromGatewayResource,
    CloudIOTProjectsLocationsRegistriesUnbindDeviceFromGateway (..),
    newCloudIOTProjectsLocationsRegistriesUnbindDeviceFromGateway,

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

import Gogol.CloudIOT.Projects.Locations.Registries.BindDeviceToGateway
import Gogol.CloudIOT.Projects.Locations.Registries.Create
import Gogol.CloudIOT.Projects.Locations.Registries.Delete
import Gogol.CloudIOT.Projects.Locations.Registries.Devices.ConfigVersions.List
import Gogol.CloudIOT.Projects.Locations.Registries.Devices.Create
import Gogol.CloudIOT.Projects.Locations.Registries.Devices.Delete
import Gogol.CloudIOT.Projects.Locations.Registries.Devices.Get
import Gogol.CloudIOT.Projects.Locations.Registries.Devices.List
import Gogol.CloudIOT.Projects.Locations.Registries.Devices.ModifyCloudToDeviceConfig
import Gogol.CloudIOT.Projects.Locations.Registries.Devices.Patch
import Gogol.CloudIOT.Projects.Locations.Registries.Devices.SendCommandToDevice
import Gogol.CloudIOT.Projects.Locations.Registries.Devices.States.List
import Gogol.CloudIOT.Projects.Locations.Registries.Get
import Gogol.CloudIOT.Projects.Locations.Registries.GetIamPolicy
import Gogol.CloudIOT.Projects.Locations.Registries.Groups.Devices.List
import Gogol.CloudIOT.Projects.Locations.Registries.Groups.GetIamPolicy
import Gogol.CloudIOT.Projects.Locations.Registries.Groups.SetIamPolicy
import Gogol.CloudIOT.Projects.Locations.Registries.Groups.TestIamPermissions
import Gogol.CloudIOT.Projects.Locations.Registries.List
import Gogol.CloudIOT.Projects.Locations.Registries.Patch
import Gogol.CloudIOT.Projects.Locations.Registries.SetIamPolicy
import Gogol.CloudIOT.Projects.Locations.Registries.TestIamPermissions
import Gogol.CloudIOT.Projects.Locations.Registries.UnbindDeviceFromGateway
import Gogol.CloudIOT.Types
