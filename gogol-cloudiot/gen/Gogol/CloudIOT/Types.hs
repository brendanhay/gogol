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
-- Module      : Gogol.CloudIOT.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudIOT.Types
  ( -- * Configuration
    cloudIOTService,

    -- * OAuth Scopes
    cloudPlatformScope,
    cloudIOTScope,

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

import Gogol.CloudIOT.Internal.Product
import Gogol.CloudIOT.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v1@ of the Cloud IoT API. This contains the host and root path used as a starting point for constructing service requests.
cloudIOTService :: Core.ServiceConfig
cloudIOTService =
  Core.defaultService
    (Core.ServiceId "cloudiot:v1")
    "cloudiot.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy

-- | Register and manage devices in the Google Cloud IoT service
cloudIOTScope :: Core.Proxy '["https://www.googleapis.com/auth/cloudiot"]
cloudIOTScope = Core.Proxy
