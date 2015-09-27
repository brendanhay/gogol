{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ProximityBeacon
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | This API provides services to register, manage, index, and search
-- beacons.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference>
module Network.Google.ProximityBeacon
    (
    -- * Resources
      ProximityBeacon
    , BeaconsAPI
    , AttachmentsAPI
    , AttachmentsList
    , AttachmentsCreate
    , AttachmentsBatchDelete
    , AttachmentsDelete
    , DiagnosticsAPI
    , DiagnosticsList
    , NamespacesAPI
    , NamespacesList
    , BeaconinfoAPI
    , BeaconinfoGetforobserved

    -- * Types

    -- ** AdvertisedId
    , AdvertisedId
    , advertisedId
    , aiId
    , aiType

    -- ** AttachmentInfo
    , AttachmentInfo
    , attachmentInfo
    , aiData
    , aiNamespacedType

    -- ** Beacon
    , Beacon
    , beacon
    , bLatLng
    , bStatus
    , bBeaconName
    , bIndoorLevel
    , bExpectedStability
    , bDescription
    , bPlaceId
    , bAdvertisedId
    , bProperties

    -- ** BeaconAttachment
    , BeaconAttachment
    , beaconAttachment
    , baData
    , baAttachmentName
    , baNamespacedType

    -- ** BeaconInfo
    , BeaconInfo
    , beaconInfo
    , biAttachments
    , biBeaconName
    , biDescription
    , biAdvertisedId

    -- ** BeaconProperties
    , BeaconProperties
    , beaconProperties

    -- ** Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- ** DeleteAttachmentsResponse
    , DeleteAttachmentsResponse
    , deleteAttachmentsResponse
    , darNumDeleted

    -- ** Diagnostics
    , Diagnostics
    , diagnostics
    , dAlerts
    , dBeaconName
    , dEstimatedLowBatteryDate

    -- ** Empty
    , Empty
    , empty

    -- ** GetInfoForObservedBeaconsRequest
    , GetInfoForObservedBeaconsRequest
    , getInfoForObservedBeaconsRequest
    , gifobrObservations
    , gifobrNamespacedTypes

    -- ** GetInfoForObservedBeaconsResponse
    , GetInfoForObservedBeaconsResponse
    , getInfoForObservedBeaconsResponse
    , gifobrBeacons

    -- ** IndoorLevel
    , IndoorLevel
    , indoorLevel
    , ilName

    -- ** LatLng
    , LatLng
    , latLng
    , llLatitude
    , llLongitude

    -- ** ListBeaconAttachmentsResponse
    , ListBeaconAttachmentsResponse
    , listBeaconAttachmentsResponse
    , lbarAttachments

    -- ** ListBeaconsResponse
    , ListBeaconsResponse
    , listBeaconsResponse
    , lbrNextPageToken
    , lbrBeacons
    , lbrTotalCount

    -- ** ListDiagnosticsResponse
    , ListDiagnosticsResponse
    , listDiagnosticsResponse
    , ldrNextPageToken
    , ldrDiagnostics

    -- ** ListNamespacesResponse
    , ListNamespacesResponse
    , listNamespacesResponse
    , lnrNamespaces

    -- ** Namespace
    , Namespace
    , namespace
    , nServingVisibility
    , nNamespaceName

    -- ** Observation
    , Observation
    , observation
    , oTelemetry
    , oTimestampMs
    , oAdvertisedId
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

{- $resources
TODO
-}

type ProximityBeacon =
     BeaconsAPI :<|> NamespacesAPI :<|> BeaconinfoAPI

type BeaconsAPI = AttachmentsAPI :<|> DiagnosticsAPI

type AttachmentsAPI =
     AttachmentsList :<|> AttachmentsCreate :<|>
       AttachmentsBatchDelete
       :<|> AttachmentsDelete

-- | Returns the attachments for the specified beacon that match the
-- specified namespaced-type pattern. To control which namespaced types are
-- returned, you add the \`namespacedType\` query parameter to the request.
-- You must either use \`*\/*\`, to return all attachments, or the
-- namespace must be one of the ones returned from the \`namespaces\`
-- endpoint.
type AttachmentsList =
     "v1beta1" :>
       "{+beaconName}" :>
         "attachments" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "namespacedType" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" Text :>
                                       Get '[JSON] ListBeaconAttachmentsResponse

-- | Associates the given data with the specified beacon. Attachment data
-- must contain two parts: - A namespaced type. - The actual attachment
-- data itself. The namespaced type consists of two parts, the namespace
-- and the type. The namespace must be one of the values returned by the
-- \`namespaces\` endpoint, while the type can be a string of any
-- characters except for the forward slash (\`\/\`) up to 100 characters in
-- length. Attachment data can be up to 1024 bytes long.
type AttachmentsCreate =
     "v1beta1" :>
       "{+beaconName}" :>
         "attachments" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] BeaconAttachment

-- | Deletes multiple attachments on a given beacon. This operation is
-- permanent and cannot be undone. You can optionally specify
-- \`namespacedType\` to choose which attachments should be deleted. If you
-- do not specify \`namespacedType\`, all your attachments on the given
-- beacon will be deleted. You also may explicitly specify \`*\/*\` to
-- delete all.
type AttachmentsBatchDelete =
     "v1beta1" :>
       "{+beaconName}" :>
         "attachments:batchDelete" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "namespacedType" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" Text :>
                                       Post '[JSON] DeleteAttachmentsResponse

-- | Deletes the specified attachment for the given beacon. Each attachment
-- has a unique attachment name (\`attachmentName\`) which is returned when
-- you fetch the attachment data via this API. You specify this with the
-- delete request to control which attachment is removed. This operation
-- cannot be undone.
type AttachmentsDelete =
     "v1beta1" :>
       "{+attachmentName}" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" Text :> Delete '[JSON] Empty

type DiagnosticsAPI = DiagnosticsList

-- | List the diagnostics for a single beacon. You can also list diagnostics
-- for all the beacons owned by your Google Developers Console project by
-- using the beacon name \`beacons\/-\`.
type DiagnosticsList =
     "v1beta1" :>
       "{+beaconName}" :>
         "diagnostics" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "key" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "pageSize" Int32 :>
                                   QueryParam "alertFilter" Text :>
                                     QueryParam "fields" Text :>
                                       QueryParam "callback" Text :>
                                         QueryParam "alt" Text :>
                                           Get '[JSON] ListDiagnosticsResponse

type NamespacesAPI = NamespacesList

-- | Lists all attachment namespaces owned by your Google Developers Console
-- project. Attachment data associated with a beacon must include a
-- namespaced type, and the namespace must be owned by your project.
type NamespacesList =
     "v1beta1" :>
       "namespaces" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" Text :>
                                   Get '[JSON] ListNamespacesResponse

type BeaconinfoAPI = BeaconinfoGetforobserved

-- | Given one or more beacon observations, returns any beacon information
-- and attachments accessible to your application.
type BeaconinfoGetforobserved =
     "v1beta1" :>
       "beaconinfo:getforobserved" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" Text :>
                                   Post '[JSON]
                                     GetInfoForObservedBeaconsResponse
