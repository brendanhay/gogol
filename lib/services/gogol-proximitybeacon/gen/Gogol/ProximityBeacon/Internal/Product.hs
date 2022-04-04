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
-- Module      : Gogol.ProximityBeacon.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.ProximityBeacon.Internal.Product
  ( -- * AdvertisedId
    AdvertisedId (..),
    newAdvertisedId,

    -- * AttachmentInfo
    AttachmentInfo (..),
    newAttachmentInfo,

    -- * Beacon
    Beacon (..),
    newBeacon,

    -- * Beacon_Properties
    Beacon_Properties (..),
    newBeacon_Properties,

    -- * BeaconAttachment
    BeaconAttachment (..),
    newBeaconAttachment,

    -- * BeaconInfo
    BeaconInfo (..),
    newBeaconInfo,

    -- * Date
    Date (..),
    newDate,

    -- * DeleteAttachmentsResponse
    DeleteAttachmentsResponse (..),
    newDeleteAttachmentsResponse,

    -- * Diagnostics
    Diagnostics (..),
    newDiagnostics,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * EphemeralIdRegistration
    EphemeralIdRegistration (..),
    newEphemeralIdRegistration,

    -- * EphemeralIdRegistrationParams
    EphemeralIdRegistrationParams (..),
    newEphemeralIdRegistrationParams,

    -- * GetInfoForObservedBeaconsRequest
    GetInfoForObservedBeaconsRequest (..),
    newGetInfoForObservedBeaconsRequest,

    -- * GetInfoForObservedBeaconsResponse
    GetInfoForObservedBeaconsResponse (..),
    newGetInfoForObservedBeaconsResponse,

    -- * IndoorLevel
    IndoorLevel (..),
    newIndoorLevel,

    -- * LatLng
    LatLng (..),
    newLatLng,

    -- * ListBeaconAttachmentsResponse
    ListBeaconAttachmentsResponse (..),
    newListBeaconAttachmentsResponse,

    -- * ListBeaconsResponse
    ListBeaconsResponse (..),
    newListBeaconsResponse,

    -- * ListDiagnosticsResponse
    ListDiagnosticsResponse (..),
    newListDiagnosticsResponse,

    -- * ListNamespacesResponse
    ListNamespacesResponse (..),
    newListNamespacesResponse,

    -- * Namespace
    Namespace (..),
    newNamespace,

    -- * Observation
    Observation (..),
    newObservation,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ProximityBeacon.Internal.Sum

-- | Defines a unique identifier of a beacon as broadcast by the device.
--
-- /See:/ 'newAdvertisedId' smart constructor.
data AdvertisedId = AdvertisedId
  { -- | The actual beacon identifier, as broadcast by the beacon hardware. Must be <http://tools.ietf.org/html/rfc4648#section-4 base64> encoded in HTTP requests, and will be so encoded (with padding) in responses. The base64 encoding should be of the binary byte-stream and not any textual (such as hex) representation thereof. Required.
    id :: (Core.Maybe Core.Base64),
    -- | Specifies the identifier type. Required.
    type' :: (Core.Maybe AdvertisedId_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdvertisedId' with the minimum fields required to make a request.
newAdvertisedId ::
  AdvertisedId
newAdvertisedId = AdvertisedId {id = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON AdvertisedId where
  parseJSON =
    Core.withObject
      "AdvertisedId"
      ( \o ->
          AdvertisedId
            Core.<$> (o Core..:? "id") Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON AdvertisedId where
  toJSON AdvertisedId {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | A subset of attachment information served via the @beaconinfo.getforobserved@ method, used when your users encounter your beacons.
--
-- /See:/ 'newAttachmentInfo' smart constructor.
data AttachmentInfo = AttachmentInfo
  { -- | An opaque data container for client-provided data.
    data' :: (Core.Maybe Core.Base64),
    -- | The distance away from the beacon at which this attachment should be delivered to a mobile app.
    --
    -- Setting this to a value greater than zero indicates that the app should behave as if the beacon is \"seen\" when the mobile device is less than this distance away from the beacon.
    --
    -- Different attachments on the same beacon can have different max distances.
    --
    -- Note that even though this value is expressed with fractional meter precision, real-world behavior is likley to be much less precise than one meter, due to the nature of current Bluetooth radio technology.
    --
    -- Optional. When not set or zero, the attachment should be delivered at the beacon\'s outer limit of detection.
    maxDistanceMeters :: (Core.Maybe Core.Double),
    -- | Specifies what kind of attachment this is. Tells a client how to interpret the @data@ field. Format is \<var>namespace\/type\<\/var>, for example \<code>scrupulous-wombat-12345\/welcome-message\<\/code>
    namespacedType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AttachmentInfo' with the minimum fields required to make a request.
newAttachmentInfo ::
  AttachmentInfo
newAttachmentInfo =
  AttachmentInfo
    { data' = Core.Nothing,
      maxDistanceMeters = Core.Nothing,
      namespacedType = Core.Nothing
    }

instance Core.FromJSON AttachmentInfo where
  parseJSON =
    Core.withObject
      "AttachmentInfo"
      ( \o ->
          AttachmentInfo
            Core.<$> (o Core..:? "data")
            Core.<*> (o Core..:? "maxDistanceMeters")
            Core.<*> (o Core..:? "namespacedType")
      )

instance Core.ToJSON AttachmentInfo where
  toJSON AttachmentInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("data" Core..=) Core.<$> data',
            ("maxDistanceMeters" Core..=)
              Core.<$> maxDistanceMeters,
            ("namespacedType" Core..=) Core.<$> namespacedType
          ]
      )

-- | Details of a beacon device.
--
-- /See:/ 'newBeacon' smart constructor.
data Beacon = Beacon
  { -- | The identifier of a beacon as advertised by it. This field must be populated when registering. It may be empty when updating a beacon record because it is ignored in updates.
    --
    -- When registering a beacon that broadcasts Eddystone-EID, this field should contain a \"stable\" Eddystone-UID that identifies the beacon and links it to its attachments. The stable Eddystone-UID is only used for administering the beacon.
    advertisedId :: (Core.Maybe AdvertisedId),
    -- | Resource name of this beacon. A beacon name has the format \"beacons\/N!beaconId\" where the beaconId is the base16 ID broadcast by the beacon and N is a code for the beacon\'s type. Possible values are @3@ for Eddystone, @1@ for iBeacon, or @5@ for AltBeacon.
    --
    -- This field must be left empty when registering. After reading a beacon, clients can use the name for future operations.
    beaconName :: (Core.Maybe Core.Text),
    -- | Free text used to identify and describe the beacon. Maximum length 140 characters. Optional.
    description :: (Core.Maybe Core.Text),
    -- | Write-only registration parameters for beacons using Eddystone-EID (remotely resolved ephemeral ID) format. This information will not be populated in API responses. When submitting this data, the @advertised_id@ field must contain an ID of type Eddystone-UID. Any other ID type will result in an error.
    ephemeralIdRegistration :: (Core.Maybe EphemeralIdRegistration),
    -- | Expected location stability. This is set when the beacon is registered or updated, not automatically detected in any way. Optional.
    expectedStability :: (Core.Maybe Beacon_ExpectedStability),
    -- | The indoor level information for this beacon, if known. As returned by the Google Maps API. Optional.
    indoorLevel :: (Core.Maybe IndoorLevel),
    -- | The location of the beacon, expressed as a latitude and longitude pair. This location is given when the beacon is registered or updated. It does not necessarily indicate the actual current location of the beacon. Optional.
    latLng :: (Core.Maybe LatLng),
    -- | The </places/place-id Google Places API> Place ID of the place where the beacon is deployed. This is given when the beacon is registered or updated, not automatically detected in any way. Optional.
    placeId :: (Core.Maybe Core.Text),
    -- | Properties of the beacon device, for example battery type or firmware version. Optional.
    properties :: (Core.Maybe Beacon_Properties),
    -- | Some beacons may require a user to provide an authorization key before changing any of its configuration (e.g. broadcast frames, transmit power). This field provides a place to store and control access to that key. This field is populated in responses to @GET \/v1beta1\/beacons\/3!beaconId@ from users with write access to the given beacon. That is to say: If the user is authorized to write the beacon\'s confidential data in the service, the service considers them authorized to configure the beacon. Note that this key grants nothing on the service, only on the beacon itself.
    provisioningKey :: (Core.Maybe Core.Base64),
    -- | Current status of the beacon. Required.
    status :: (Core.Maybe Beacon_Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Beacon' with the minimum fields required to make a request.
newBeacon ::
  Beacon
newBeacon =
  Beacon
    { advertisedId = Core.Nothing,
      beaconName = Core.Nothing,
      description = Core.Nothing,
      ephemeralIdRegistration = Core.Nothing,
      expectedStability = Core.Nothing,
      indoorLevel = Core.Nothing,
      latLng = Core.Nothing,
      placeId = Core.Nothing,
      properties = Core.Nothing,
      provisioningKey = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON Beacon where
  parseJSON =
    Core.withObject
      "Beacon"
      ( \o ->
          Beacon
            Core.<$> (o Core..:? "advertisedId")
            Core.<*> (o Core..:? "beaconName")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "ephemeralIdRegistration")
            Core.<*> (o Core..:? "expectedStability")
            Core.<*> (o Core..:? "indoorLevel")
            Core.<*> (o Core..:? "latLng")
            Core.<*> (o Core..:? "placeId")
            Core.<*> (o Core..:? "properties")
            Core.<*> (o Core..:? "provisioningKey")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON Beacon where
  toJSON Beacon {..} =
    Core.object
      ( Core.catMaybes
          [ ("advertisedId" Core..=) Core.<$> advertisedId,
            ("beaconName" Core..=) Core.<$> beaconName,
            ("description" Core..=) Core.<$> description,
            ("ephemeralIdRegistration" Core..=)
              Core.<$> ephemeralIdRegistration,
            ("expectedStability" Core..=)
              Core.<$> expectedStability,
            ("indoorLevel" Core..=) Core.<$> indoorLevel,
            ("latLng" Core..=) Core.<$> latLng,
            ("placeId" Core..=) Core.<$> placeId,
            ("properties" Core..=) Core.<$> properties,
            ("provisioningKey" Core..=) Core.<$> provisioningKey,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | Properties of the beacon device, for example battery type or firmware version. Optional.
--
-- /See:/ 'newBeacon_Properties' smart constructor.
newtype Beacon_Properties = Beacon_Properties
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Beacon_Properties' with the minimum fields required to make a request.
newBeacon_Properties ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Beacon_Properties
newBeacon_Properties additional = Beacon_Properties {additional = additional}

instance Core.FromJSON Beacon_Properties where
  parseJSON =
    Core.withObject
      "Beacon_Properties"
      ( \o ->
          Beacon_Properties Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Beacon_Properties where
  toJSON Beacon_Properties {..} = Core.toJSON additional

-- | Project-specific data associated with a beacon.
--
-- /See:/ 'newBeaconAttachment' smart constructor.
data BeaconAttachment = BeaconAttachment
  { -- | Resource name of this attachment. Attachment names have the format: \<code>beacons\/\<var>beacon/id\<\/var>\/attachments\/\<var>attachment/id\<\/var>\<\/code>. Leave this empty on creation.
    attachmentName :: (Core.Maybe Core.Text),
    -- | The UTC time when this attachment was created, in milliseconds since the UNIX epoch.
    creationTimeMs :: (Core.Maybe Core.DateTime),
    -- | An opaque data container for client-provided data. Must be <http://tools.ietf.org/html/rfc4648#section-4 base64> encoded in HTTP requests, and will be so encoded (with padding) in responses. Required.
    data' :: (Core.Maybe Core.Base64),
    -- | The distance away from the beacon at which this attachment should be delivered to a mobile app.
    --
    -- Setting this to a value greater than zero indicates that the app should behave as if the beacon is \"seen\" when the mobile device is less than this distance away from the beacon.
    --
    -- Different attachments on the same beacon can have different max distances.
    --
    -- Note that even though this value is expressed with fractional meter precision, real-world behavior is likley to be much less precise than one meter, due to the nature of current Bluetooth radio technology.
    --
    -- Optional. When not set or zero, the attachment should be delivered at the beacon\'s outer limit of detection.
    --
    -- Negative values are invalid and return an error.
    maxDistanceMeters :: (Core.Maybe Core.Double),
    -- | Specifies what kind of attachment this is. Tells a client how to interpret the @data@ field. Format is \<var>namespace\/type\<\/var>. Namespace provides type separation between clients. Type describes the type of @data@, for use by the client when parsing the @data@ field. Required.
    namespacedType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BeaconAttachment' with the minimum fields required to make a request.
newBeaconAttachment ::
  BeaconAttachment
newBeaconAttachment =
  BeaconAttachment
    { attachmentName = Core.Nothing,
      creationTimeMs = Core.Nothing,
      data' = Core.Nothing,
      maxDistanceMeters = Core.Nothing,
      namespacedType = Core.Nothing
    }

instance Core.FromJSON BeaconAttachment where
  parseJSON =
    Core.withObject
      "BeaconAttachment"
      ( \o ->
          BeaconAttachment
            Core.<$> (o Core..:? "attachmentName")
            Core.<*> (o Core..:? "creationTimeMs")
            Core.<*> (o Core..:? "data")
            Core.<*> (o Core..:? "maxDistanceMeters")
            Core.<*> (o Core..:? "namespacedType")
      )

instance Core.ToJSON BeaconAttachment where
  toJSON BeaconAttachment {..} =
    Core.object
      ( Core.catMaybes
          [ ("attachmentName" Core..=) Core.<$> attachmentName,
            ("creationTimeMs" Core..=) Core.<$> creationTimeMs,
            ("data" Core..=) Core.<$> data',
            ("maxDistanceMeters" Core..=)
              Core.<$> maxDistanceMeters,
            ("namespacedType" Core..=) Core.<$> namespacedType
          ]
      )

-- | A subset of beacon information served via the @beaconinfo.getforobserved@ method, which you call when users of your app encounter your beacons.
--
-- /See:/ 'newBeaconInfo' smart constructor.
data BeaconInfo = BeaconInfo
  { -- | The ID advertised by the beacon.
    advertisedId :: (Core.Maybe AdvertisedId),
    -- | Attachments matching the type(s) requested. May be empty if no attachment types were requested.
    attachments :: (Core.Maybe [AttachmentInfo]),
    -- | The name under which the beacon is registered.
    beaconName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BeaconInfo' with the minimum fields required to make a request.
newBeaconInfo ::
  BeaconInfo
newBeaconInfo =
  BeaconInfo
    { advertisedId = Core.Nothing,
      attachments = Core.Nothing,
      beaconName = Core.Nothing
    }

instance Core.FromJSON BeaconInfo where
  parseJSON =
    Core.withObject
      "BeaconInfo"
      ( \o ->
          BeaconInfo
            Core.<$> (o Core..:? "advertisedId")
            Core.<*> (o Core..:? "attachments" Core..!= Core.mempty)
            Core.<*> (o Core..:? "beaconName")
      )

instance Core.ToJSON BeaconInfo where
  toJSON BeaconInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("advertisedId" Core..=) Core.<$> advertisedId,
            ("attachments" Core..=) Core.<$> attachments,
            ("beaconName" Core..=) Core.<$> beaconName
          ]
      )

-- | Represents a whole or partial calendar date, e.g. a birthday. The time of day and time zone are either specified elsewhere or are not significant. The date is relative to the Proleptic Gregorian Calendar. This can represent:
--
-- -   A full date, with non-zero year, month and day values
-- -   A month and day value, with a zero year, e.g. an anniversary
-- -   A year on its own, with zero month and day values
-- -   A year and month value, with a zero day, e.g. a credit card expiration date
--
-- Related types are google.type.TimeOfDay and @google.protobuf.Timestamp@.
--
-- /See:/ 'newDate' smart constructor.
data Date = Date
  { -- | Day of month. Must be from 1 to 31 and valid for the year and month, or 0 if specifying a year by itself or a year and month where the day is not significant.
    day :: (Core.Maybe Core.Int32),
    -- | Month of year. Must be from 1 to 12, or 0 if specifying a year without a month and day.
    month :: (Core.Maybe Core.Int32),
    -- | Year of date. Must be from 1 to 9999, or 0 if specifying a date without a year.
    year :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Date' with the minimum fields required to make a request.
newDate ::
  Date
newDate = Date {day = Core.Nothing, month = Core.Nothing, year = Core.Nothing}

instance Core.FromJSON Date where
  parseJSON =
    Core.withObject
      "Date"
      ( \o ->
          Date
            Core.<$> (o Core..:? "day")
            Core.<*> (o Core..:? "month")
            Core.<*> (o Core..:? "year")
      )

instance Core.ToJSON Date where
  toJSON Date {..} =
    Core.object
      ( Core.catMaybes
          [ ("day" Core..=) Core.<$> day,
            ("month" Core..=) Core.<$> month,
            ("year" Core..=) Core.<$> year
          ]
      )

-- | Response for a request to delete attachments.
--
-- /See:/ 'newDeleteAttachmentsResponse' smart constructor.
newtype DeleteAttachmentsResponse = DeleteAttachmentsResponse
  { -- | The number of attachments that were deleted.
    numDeleted :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteAttachmentsResponse' with the minimum fields required to make a request.
newDeleteAttachmentsResponse ::
  DeleteAttachmentsResponse
newDeleteAttachmentsResponse =
  DeleteAttachmentsResponse {numDeleted = Core.Nothing}

instance Core.FromJSON DeleteAttachmentsResponse where
  parseJSON =
    Core.withObject
      "DeleteAttachmentsResponse"
      ( \o ->
          DeleteAttachmentsResponse
            Core.<$> (o Core..:? "numDeleted")
      )

instance Core.ToJSON DeleteAttachmentsResponse where
  toJSON DeleteAttachmentsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("numDeleted" Core..=) Core.<$> numDeleted]
      )

-- | Diagnostics for a single beacon.
--
-- /See:/ 'newDiagnostics' smart constructor.
data Diagnostics = Diagnostics
  { -- | An unordered list of Alerts that the beacon has.
    alerts :: (Core.Maybe [Core.Text]),
    -- | Resource name of the beacon. For Eddystone-EID beacons, this may be the beacon\'s current EID, or the beacon\'s \"stable\" Eddystone-UID.
    beaconName :: (Core.Maybe Core.Text),
    -- | The date when the battery is expected to be low. If the value is missing then there is no estimate for when the battery will be low. This value is only an estimate, not an exact date.
    estimatedLowBatteryDate :: (Core.Maybe Date)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Diagnostics' with the minimum fields required to make a request.
newDiagnostics ::
  Diagnostics
newDiagnostics =
  Diagnostics
    { alerts = Core.Nothing,
      beaconName = Core.Nothing,
      estimatedLowBatteryDate = Core.Nothing
    }

instance Core.FromJSON Diagnostics where
  parseJSON =
    Core.withObject
      "Diagnostics"
      ( \o ->
          Diagnostics
            Core.<$> (o Core..:? "alerts" Core..!= Core.mempty)
            Core.<*> (o Core..:? "beaconName")
            Core.<*> (o Core..:? "estimatedLowBatteryDate")
      )

instance Core.ToJSON Diagnostics where
  toJSON Diagnostics {..} =
    Core.object
      ( Core.catMaybes
          [ ("alerts" Core..=) Core.<$> alerts,
            ("beaconName" Core..=) Core.<$> beaconName,
            ("estimatedLowBatteryDate" Core..=)
              Core.<$> estimatedLowBatteryDate
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance:
--
-- > service Foo {
-- >   rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
-- > }
--
-- The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | Write-only registration parameters for beacons using Eddystone-EID format. Two ways of securely registering an Eddystone-EID beacon with the service are supported:
--
-- 1.  Perform an ECDH key exchange via this API, including a previous call to @GET \/v1beta1\/eidparams@. In this case the fields @beacon_ecdh_public_key@ and @service_ecdh_public_key@ should be populated and @beacon_identity_key@ should not be populated. This method ensures that only the two parties in the ECDH key exchange can compute the identity key, which becomes a secret between them.
-- 2.  Derive or obtain the beacon\'s identity key via other secure means (perhaps an ECDH key exchange between the beacon and a mobile device or any other secure method), and then submit the resulting identity key to the service. In this case @beacon_identity_key@ field should be populated, and neither of @beacon_ecdh_public_key@ nor @service_ecdh_public_key@ fields should be. The security of this method depends on how securely the parties involved (in particular the bluetooth client) handle the identity key, and obviously on how securely the identity key was generated.
--
-- See <https://github.com/google/eddystone/tree/master/eddystone-eid the Eddystone specification> at GitHub.
--
-- /See:/ 'newEphemeralIdRegistration' smart constructor.
data EphemeralIdRegistration = EphemeralIdRegistration
  { -- | The beacon\'s public key used for the Elliptic curve Diffie-Hellman key exchange. When this field is populated, @service_ecdh_public_key@ must also be populated, and @beacon_identity_key@ must not be.
    beaconEcdhPublicKey :: (Core.Maybe Core.Base64),
    -- | The private key of the beacon. If this field is populated, @beacon_ecdh_public_key@ and @service_ecdh_public_key@ must not be populated.
    beaconIdentityKey :: (Core.Maybe Core.Base64),
    -- | The initial clock value of the beacon. The beacon\'s clock must have begun counting at this value immediately prior to transmitting this value to the resolving service. Significant delay in transmitting this value to the service risks registration or resolution failures. If a value is not provided, the default is zero.
    initialClockValue :: (Core.Maybe Core.Word64),
    -- | An initial ephemeral ID calculated using the clock value submitted as @initial_clock_value@, and the secret key generated by the Diffie-Hellman key exchange using @service_ecdh_public_key@ and @service_ecdh_public_key@. This initial EID value will be used by the service to confirm that the key exchange process was successful.
    initialEid :: (Core.Maybe Core.Base64),
    -- | Indicates the nominal period between each rotation of the beacon\'s ephemeral ID. \"Nominal\" because the beacon should randomize the actual interval. See <https://github.com/google/eddystone/tree/master/eddystone-eid the spec at github> for details. This value corresponds to a power-of-two scaler on the beacon\'s clock: when the scaler value is K, the beacon will begin broadcasting a new ephemeral ID on average every 2^K seconds.
    rotationPeriodExponent :: (Core.Maybe Core.Word32),
    -- | The service\'s public key used for the Elliptic curve Diffie-Hellman key exchange. When this field is populated, @beacon_ecdh_public_key@ must also be populated, and @beacon_identity_key@ must not be.
    serviceEcdhPublicKey :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EphemeralIdRegistration' with the minimum fields required to make a request.
newEphemeralIdRegistration ::
  EphemeralIdRegistration
newEphemeralIdRegistration =
  EphemeralIdRegistration
    { beaconEcdhPublicKey = Core.Nothing,
      beaconIdentityKey = Core.Nothing,
      initialClockValue = Core.Nothing,
      initialEid = Core.Nothing,
      rotationPeriodExponent = Core.Nothing,
      serviceEcdhPublicKey = Core.Nothing
    }

instance Core.FromJSON EphemeralIdRegistration where
  parseJSON =
    Core.withObject
      "EphemeralIdRegistration"
      ( \o ->
          EphemeralIdRegistration
            Core.<$> (o Core..:? "beaconEcdhPublicKey")
            Core.<*> (o Core..:? "beaconIdentityKey")
            Core.<*> (o Core..:? "initialClockValue")
            Core.<*> (o Core..:? "initialEid")
            Core.<*> (o Core..:? "rotationPeriodExponent")
            Core.<*> (o Core..:? "serviceEcdhPublicKey")
      )

instance Core.ToJSON EphemeralIdRegistration where
  toJSON EphemeralIdRegistration {..} =
    Core.object
      ( Core.catMaybes
          [ ("beaconEcdhPublicKey" Core..=)
              Core.<$> beaconEcdhPublicKey,
            ("beaconIdentityKey" Core..=)
              Core.<$> beaconIdentityKey,
            ("initialClockValue" Core..=) Core.. Core.AsText
              Core.<$> initialClockValue,
            ("initialEid" Core..=) Core.<$> initialEid,
            ("rotationPeriodExponent" Core..=)
              Core.<$> rotationPeriodExponent,
            ("serviceEcdhPublicKey" Core..=)
              Core.<$> serviceEcdhPublicKey
          ]
      )

-- | Information a client needs to provision and register beacons that broadcast Eddystone-EID format beacon IDs, using Elliptic curve Diffie-Hellman key exchange. See <https://github.com/google/eddystone/tree/master/eddystone-eid the Eddystone specification> at GitHub.
--
-- /See:/ 'newEphemeralIdRegistrationParams' smart constructor.
data EphemeralIdRegistrationParams = EphemeralIdRegistrationParams
  { -- | Indicates the maximum rotation period supported by the service. See EddystoneEidRegistration.rotation/period/exponent
    maxRotationPeriodExponent :: (Core.Maybe Core.Word32),
    -- | Indicates the minimum rotation period supported by the service. See EddystoneEidRegistration.rotation/period/exponent
    minRotationPeriodExponent :: (Core.Maybe Core.Word32),
    -- | The beacon service\'s public key for use by a beacon to derive its Identity Key using Elliptic Curve Diffie-Hellman key exchange.
    serviceEcdhPublicKey :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EphemeralIdRegistrationParams' with the minimum fields required to make a request.
newEphemeralIdRegistrationParams ::
  EphemeralIdRegistrationParams
newEphemeralIdRegistrationParams =
  EphemeralIdRegistrationParams
    { maxRotationPeriodExponent = Core.Nothing,
      minRotationPeriodExponent = Core.Nothing,
      serviceEcdhPublicKey = Core.Nothing
    }

instance Core.FromJSON EphemeralIdRegistrationParams where
  parseJSON =
    Core.withObject
      "EphemeralIdRegistrationParams"
      ( \o ->
          EphemeralIdRegistrationParams
            Core.<$> (o Core..:? "maxRotationPeriodExponent")
            Core.<*> (o Core..:? "minRotationPeriodExponent")
            Core.<*> (o Core..:? "serviceEcdhPublicKey")
      )

instance Core.ToJSON EphemeralIdRegistrationParams where
  toJSON EphemeralIdRegistrationParams {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxRotationPeriodExponent" Core..=)
              Core.<$> maxRotationPeriodExponent,
            ("minRotationPeriodExponent" Core..=)
              Core.<$> minRotationPeriodExponent,
            ("serviceEcdhPublicKey" Core..=)
              Core.<$> serviceEcdhPublicKey
          ]
      )

-- | Request for beacon and attachment information about beacons that a mobile client has encountered \"in the wild\".
--
-- /See:/ 'newGetInfoForObservedBeaconsRequest' smart constructor.
data GetInfoForObservedBeaconsRequest = GetInfoForObservedBeaconsRequest
  { -- | Specifies what kind of attachments to include in the response. When given, the response will include only attachments of the given types. When empty, no attachments will be returned. Must be in the format \<var>namespace\/type\<\/var>. Accepts @*@ to specify all types in all namespaces owned by the client. Optional.
    namespacedTypes :: (Core.Maybe [Core.Text]),
    -- | The beacons that the client has encountered. At least one must be given.
    observations :: (Core.Maybe [Observation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetInfoForObservedBeaconsRequest' with the minimum fields required to make a request.
newGetInfoForObservedBeaconsRequest ::
  GetInfoForObservedBeaconsRequest
newGetInfoForObservedBeaconsRequest =
  GetInfoForObservedBeaconsRequest
    { namespacedTypes = Core.Nothing,
      observations = Core.Nothing
    }

instance
  Core.FromJSON
    GetInfoForObservedBeaconsRequest
  where
  parseJSON =
    Core.withObject
      "GetInfoForObservedBeaconsRequest"
      ( \o ->
          GetInfoForObservedBeaconsRequest
            Core.<$> (o Core..:? "namespacedTypes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "observations" Core..!= Core.mempty)
      )

instance Core.ToJSON GetInfoForObservedBeaconsRequest where
  toJSON GetInfoForObservedBeaconsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("namespacedTypes" Core..=)
              Core.<$> namespacedTypes,
            ("observations" Core..=) Core.<$> observations
          ]
      )

-- | Information about the requested beacons, optionally including attachment data.
--
-- /See:/ 'newGetInfoForObservedBeaconsResponse' smart constructor.
newtype GetInfoForObservedBeaconsResponse = GetInfoForObservedBeaconsResponse
  { -- | Public information about beacons. May be empty if the request matched no beacons.
    beacons :: (Core.Maybe [BeaconInfo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetInfoForObservedBeaconsResponse' with the minimum fields required to make a request.
newGetInfoForObservedBeaconsResponse ::
  GetInfoForObservedBeaconsResponse
newGetInfoForObservedBeaconsResponse =
  GetInfoForObservedBeaconsResponse {beacons = Core.Nothing}

instance
  Core.FromJSON
    GetInfoForObservedBeaconsResponse
  where
  parseJSON =
    Core.withObject
      "GetInfoForObservedBeaconsResponse"
      ( \o ->
          GetInfoForObservedBeaconsResponse
            Core.<$> (o Core..:? "beacons" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GetInfoForObservedBeaconsResponse
  where
  toJSON GetInfoForObservedBeaconsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("beacons" Core..=) Core.<$> beacons]
      )

-- | Indoor level, a human-readable string as returned by Google Maps APIs, useful to indicate which floor of a building a beacon is located on.
--
-- /See:/ 'newIndoorLevel' smart constructor.
newtype IndoorLevel = IndoorLevel
  { -- | The name of this level.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IndoorLevel' with the minimum fields required to make a request.
newIndoorLevel ::
  IndoorLevel
newIndoorLevel = IndoorLevel {name = Core.Nothing}

instance Core.FromJSON IndoorLevel where
  parseJSON =
    Core.withObject
      "IndoorLevel"
      (\o -> IndoorLevel Core.<$> (o Core..:? "name"))

instance Core.ToJSON IndoorLevel where
  toJSON IndoorLevel {..} =
    Core.object
      (Core.catMaybes [("name" Core..=) Core.<$> name])

-- | An object representing a latitude\/longitude pair. This is expressed as a pair of doubles representing degrees latitude and degrees longitude. Unless specified otherwise, this must conform to the \<a href=\"http:\/\/www.unoosa.org\/pdf\/icg\/2012\/template\/WGS_84.pdf\">WGS84 standard\<\/a>. Values must be within normalized ranges.
--
-- /See:/ 'newLatLng' smart constructor.
data LatLng = LatLng
  { -- | The latitude in degrees. It must be in the range [-90.0, +90.0].
    latitude :: (Core.Maybe Core.Double),
    -- | The longitude in degrees. It must be in the range [-180.0, +180.0].
    longitude :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LatLng' with the minimum fields required to make a request.
newLatLng ::
  LatLng
newLatLng = LatLng {latitude = Core.Nothing, longitude = Core.Nothing}

instance Core.FromJSON LatLng where
  parseJSON =
    Core.withObject
      "LatLng"
      ( \o ->
          LatLng
            Core.<$> (o Core..:? "latitude")
            Core.<*> (o Core..:? "longitude")
      )

instance Core.ToJSON LatLng where
  toJSON LatLng {..} =
    Core.object
      ( Core.catMaybes
          [ ("latitude" Core..=) Core.<$> latitude,
            ("longitude" Core..=) Core.<$> longitude
          ]
      )

-- | Response to @ListBeaconAttachments@ that contains the requested attachments.
--
-- /See:/ 'newListBeaconAttachmentsResponse' smart constructor.
newtype ListBeaconAttachmentsResponse = ListBeaconAttachmentsResponse
  { -- | The attachments that corresponded to the request params.
    attachments :: (Core.Maybe [BeaconAttachment])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListBeaconAttachmentsResponse' with the minimum fields required to make a request.
newListBeaconAttachmentsResponse ::
  ListBeaconAttachmentsResponse
newListBeaconAttachmentsResponse =
  ListBeaconAttachmentsResponse {attachments = Core.Nothing}

instance Core.FromJSON ListBeaconAttachmentsResponse where
  parseJSON =
    Core.withObject
      "ListBeaconAttachmentsResponse"
      ( \o ->
          ListBeaconAttachmentsResponse
            Core.<$> (o Core..:? "attachments" Core..!= Core.mempty)
      )

instance Core.ToJSON ListBeaconAttachmentsResponse where
  toJSON ListBeaconAttachmentsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("attachments" Core..=) Core.<$> attachments]
      )

-- | Response that contains list beacon results and pagination help.
--
-- /See:/ 'newListBeaconsResponse' smart constructor.
data ListBeaconsResponse = ListBeaconsResponse
  { -- | The beacons that matched the search criteria.
    beacons :: (Core.Maybe [Beacon]),
    -- | An opaque pagination token that the client may provide in their next request to retrieve the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Estimate of the total number of beacons matched by the query. Higher values may be less accurate.
    totalCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListBeaconsResponse' with the minimum fields required to make a request.
newListBeaconsResponse ::
  ListBeaconsResponse
newListBeaconsResponse =
  ListBeaconsResponse
    { beacons = Core.Nothing,
      nextPageToken = Core.Nothing,
      totalCount = Core.Nothing
    }

instance Core.FromJSON ListBeaconsResponse where
  parseJSON =
    Core.withObject
      "ListBeaconsResponse"
      ( \o ->
          ListBeaconsResponse
            Core.<$> (o Core..:? "beacons" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "totalCount")
      )

instance Core.ToJSON ListBeaconsResponse where
  toJSON ListBeaconsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("beacons" Core..=) Core.<$> beacons,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("totalCount" Core..=) Core.. Core.AsText
              Core.<$> totalCount
          ]
      )

-- | Response that contains the requested diagnostics.
--
-- /See:/ 'newListDiagnosticsResponse' smart constructor.
data ListDiagnosticsResponse = ListDiagnosticsResponse
  { -- | The diagnostics matching the given request.
    diagnostics :: (Core.Maybe [Diagnostics]),
    -- | Token that can be used for pagination. Returned only if the request matches more beacons than can be returned in this response.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListDiagnosticsResponse' with the minimum fields required to make a request.
newListDiagnosticsResponse ::
  ListDiagnosticsResponse
newListDiagnosticsResponse =
  ListDiagnosticsResponse
    { diagnostics = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListDiagnosticsResponse where
  parseJSON =
    Core.withObject
      "ListDiagnosticsResponse"
      ( \o ->
          ListDiagnosticsResponse
            Core.<$> (o Core..:? "diagnostics" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListDiagnosticsResponse where
  toJSON ListDiagnosticsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("diagnostics" Core..=) Core.<$> diagnostics,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response to ListNamespacesRequest that contains all the project\'s namespaces.
--
-- /See:/ 'newListNamespacesResponse' smart constructor.
newtype ListNamespacesResponse = ListNamespacesResponse
  { -- | The attachments that corresponded to the request params.
    namespaces :: (Core.Maybe [Namespace])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListNamespacesResponse' with the minimum fields required to make a request.
newListNamespacesResponse ::
  ListNamespacesResponse
newListNamespacesResponse = ListNamespacesResponse {namespaces = Core.Nothing}

instance Core.FromJSON ListNamespacesResponse where
  parseJSON =
    Core.withObject
      "ListNamespacesResponse"
      ( \o ->
          ListNamespacesResponse
            Core.<$> (o Core..:? "namespaces" Core..!= Core.mempty)
      )

instance Core.ToJSON ListNamespacesResponse where
  toJSON ListNamespacesResponse {..} =
    Core.object
      ( Core.catMaybes
          [("namespaces" Core..=) Core.<$> namespaces]
      )

-- | An attachment namespace defines read and write access for all the attachments created under it. Each namespace is globally unique, and owned by one project which is the only project that can create attachments under it.
--
-- /See:/ 'newNamespace' smart constructor.
data Namespace = Namespace
  { -- | Resource name of this namespace. Namespaces names have the format: \<code>namespaces\/\<var>namespace\<\/var>\<\/code>.
    namespaceName :: (Core.Maybe Core.Text),
    -- | Specifies what clients may receive attachments under this namespace via @beaconinfo.getforobserved@.
    servingVisibility :: (Core.Maybe Namespace_ServingVisibility)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Namespace' with the minimum fields required to make a request.
newNamespace ::
  Namespace
newNamespace =
  Namespace {namespaceName = Core.Nothing, servingVisibility = Core.Nothing}

instance Core.FromJSON Namespace where
  parseJSON =
    Core.withObject
      "Namespace"
      ( \o ->
          Namespace
            Core.<$> (o Core..:? "namespaceName")
            Core.<*> (o Core..:? "servingVisibility")
      )

instance Core.ToJSON Namespace where
  toJSON Namespace {..} =
    Core.object
      ( Core.catMaybes
          [ ("namespaceName" Core..=) Core.<$> namespaceName,
            ("servingVisibility" Core..=)
              Core.<$> servingVisibility
          ]
      )

-- | Represents one beacon observed once.
--
-- /See:/ 'newObservation' smart constructor.
data Observation = Observation
  { -- | The ID advertised by the beacon the client has encountered.
    --
    -- If the submitted @advertised_id@ type is Eddystone-EID, then the client must be authorized to resolve the given beacon. Otherwise no data will be returned for that beacon. Required.
    advertisedId :: (Core.Maybe AdvertisedId),
    -- | The array of telemetry bytes received from the beacon. The server is responsible for parsing it. This field may frequently be empty, as with a beacon that transmits telemetry only occasionally.
    telemetry :: (Core.Maybe Core.Base64),
    -- | Time when the beacon was observed.
    timestampMs :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Observation' with the minimum fields required to make a request.
newObservation ::
  Observation
newObservation =
  Observation
    { advertisedId = Core.Nothing,
      telemetry = Core.Nothing,
      timestampMs = Core.Nothing
    }

instance Core.FromJSON Observation where
  parseJSON =
    Core.withObject
      "Observation"
      ( \o ->
          Observation
            Core.<$> (o Core..:? "advertisedId")
            Core.<*> (o Core..:? "telemetry")
            Core.<*> (o Core..:? "timestampMs")
      )

instance Core.ToJSON Observation where
  toJSON Observation {..} =
    Core.object
      ( Core.catMaybes
          [ ("advertisedId" Core..=) Core.<$> advertisedId,
            ("telemetry" Core..=) Core.<$> telemetry,
            ("timestampMs" Core..=) Core.<$> timestampMs
          ]
      )
