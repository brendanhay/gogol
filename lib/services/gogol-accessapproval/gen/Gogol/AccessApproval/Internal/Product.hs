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
-- Module      : Gogol.AccessApproval.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AccessApproval.Internal.Product
  ( -- * AccessApprovalServiceAccount
    AccessApprovalServiceAccount (..),
    newAccessApprovalServiceAccount,

    -- * AccessApprovalSettings
    AccessApprovalSettings (..),
    newAccessApprovalSettings,

    -- * AccessLocations
    AccessLocations (..),
    newAccessLocations,

    -- * AccessReason
    AccessReason (..),
    newAccessReason,

    -- * ApprovalRequest
    ApprovalRequest (..),
    newApprovalRequest,

    -- * ApproveApprovalRequestMessage
    ApproveApprovalRequestMessage (..),
    newApproveApprovalRequestMessage,

    -- * ApproveDecision
    ApproveDecision (..),
    newApproveDecision,

    -- * DismissApprovalRequestMessage
    DismissApprovalRequestMessage (..),
    newDismissApprovalRequestMessage,

    -- * DismissDecision
    DismissDecision (..),
    newDismissDecision,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * EnrolledService
    EnrolledService (..),
    newEnrolledService,

    -- * InvalidateApprovalRequestMessage
    InvalidateApprovalRequestMessage (..),
    newInvalidateApprovalRequestMessage,

    -- * ListApprovalRequestsResponse
    ListApprovalRequestsResponse (..),
    newListApprovalRequestsResponse,

    -- * ResourceProperties
    ResourceProperties (..),
    newResourceProperties,

    -- * SignatureInfo
    SignatureInfo (..),
    newSignatureInfo,
  )
where

import Gogol.AccessApproval.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Access Approval service account related to a project\/folder\/organization.
--
-- /See:/ 'newAccessApprovalServiceAccount' smart constructor.
data AccessApprovalServiceAccount = AccessApprovalServiceAccount
  { -- | Email address of the service account.
    accountEmail :: (Core.Maybe Core.Text),
    -- | The resource name of the Access Approval service account. Format is one of: * \"projects\/{project}\/serviceAccount\" * \"folders\/{folder}\/serviceAccount\" * \"organizations\/{organization}\/serviceAccount\"
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessApprovalServiceAccount' with the minimum fields required to make a request.
newAccessApprovalServiceAccount ::
  AccessApprovalServiceAccount
newAccessApprovalServiceAccount =
  AccessApprovalServiceAccount
    { accountEmail = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON AccessApprovalServiceAccount where
  parseJSON =
    Core.withObject
      "AccessApprovalServiceAccount"
      ( \o ->
          AccessApprovalServiceAccount
            Core.<$> (o Core..:? "accountEmail")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON AccessApprovalServiceAccount where
  toJSON AccessApprovalServiceAccount {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountEmail" Core..=) Core.<$> accountEmail,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Settings on a Project\/Folder\/Organization related to Access Approval.
--
-- /See:/ 'newAccessApprovalSettings' smart constructor.
data AccessApprovalSettings = AccessApprovalSettings
  { -- | The asymmetric crypto key version to use for signing approval requests. Empty active/key/version indicates that a Google-managed key should be used for signing. This property will be ignored if set by an ancestor of this resource, and new non-empty values may not be set.
    activeKeyVersion :: (Core.Maybe Core.Text),
    -- | Output only. This field is read only (not settable via UpdateAccessApprovalSettings method). If the field is true, that indicates that an ancestor of this Project or Folder has set active/key/version (this field will always be unset for the organization since organizations do not have ancestors).
    ancestorHasActiveKeyVersion :: (Core.Maybe Core.Bool),
    -- | Output only. This field is read only (not settable via UpdateAccessApprovalSettings method). If the field is true, that indicates that at least one service is enrolled for Access Approval in one or more ancestors of the Project or Folder (this field will always be unset for the organization since organizations do not have ancestors).
    enrolledAncestor :: (Core.Maybe Core.Bool),
    -- | A list of Google Cloud Services for which the given resource has Access Approval enrolled. Access requests for the resource given by name against any of these services contained here will be required to have explicit approval. If name refers to an organization, enrollment can be done for individual services. If name refers to a folder or project, enrollment can only be done on an all or nothing basis. If a cloud_product is repeated in this list, the first entry will be honored and all following entries will be discarded. A maximum of 10 enrolled services will be enforced, to be expanded as the set of supported services is expanded.
    enrolledServices :: (Core.Maybe [EnrolledService]),
    -- | Output only. This field is read only (not settable via UpdateAccessApprovalSettings method). If the field is true, that indicates that there is some configuration issue with the active/key/version configured at this level in the resource hierarchy (e.g. it doesn\'t exist or the Access Approval service account doesn\'t have the correct permissions on it, etc.) This key version is not necessarily the effective key version at this level, as key versions are inherited top-down.
    invalidKeyVersion :: (Core.Maybe Core.Bool),
    -- | The resource name of the settings. Format is one of: * \"projects\/{project}\/accessApprovalSettings\" * \"folders\/{folder}\/accessApprovalSettings\" * \"organizations\/{organization}\/accessApprovalSettings\"
    name :: (Core.Maybe Core.Text),
    -- | A list of email addresses to which notifications relating to approval requests should be sent. Notifications relating to a resource will be sent to all emails in the settings of ancestor resources of that resource. A maximum of 50 email addresses are allowed.
    notificationEmails :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessApprovalSettings' with the minimum fields required to make a request.
newAccessApprovalSettings ::
  AccessApprovalSettings
newAccessApprovalSettings =
  AccessApprovalSettings
    { activeKeyVersion = Core.Nothing,
      ancestorHasActiveKeyVersion = Core.Nothing,
      enrolledAncestor = Core.Nothing,
      enrolledServices = Core.Nothing,
      invalidKeyVersion = Core.Nothing,
      name = Core.Nothing,
      notificationEmails = Core.Nothing
    }

instance Core.FromJSON AccessApprovalSettings where
  parseJSON =
    Core.withObject
      "AccessApprovalSettings"
      ( \o ->
          AccessApprovalSettings
            Core.<$> (o Core..:? "activeKeyVersion")
            Core.<*> (o Core..:? "ancestorHasActiveKeyVersion")
            Core.<*> (o Core..:? "enrolledAncestor")
            Core.<*> (o Core..:? "enrolledServices")
            Core.<*> (o Core..:? "invalidKeyVersion")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "notificationEmails")
      )

instance Core.ToJSON AccessApprovalSettings where
  toJSON AccessApprovalSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("activeKeyVersion" Core..=)
              Core.<$> activeKeyVersion,
            ("ancestorHasActiveKeyVersion" Core..=)
              Core.<$> ancestorHasActiveKeyVersion,
            ("enrolledAncestor" Core..=)
              Core.<$> enrolledAncestor,
            ("enrolledServices" Core..=)
              Core.<$> enrolledServices,
            ("invalidKeyVersion" Core..=)
              Core.<$> invalidKeyVersion,
            ("name" Core..=) Core.<$> name,
            ("notificationEmails" Core..=)
              Core.<$> notificationEmails
          ]
      )

-- | Home office and physical location of the principal.
--
-- /See:/ 'newAccessLocations' smart constructor.
data AccessLocations = AccessLocations
  { -- | The \"home office\" location of the principal. A two-letter country code (ISO 3166-1 alpha-2), such as \"US\", \"DE\" or \"GB\" or a region code. In some limited situations Google systems may refer refer to a region code instead of a country code. Possible Region Codes: * ASI: Asia * EUR: Europe * OCE: Oceania * AFR: Africa * NAM: North America * SAM: South America * ANT: Antarctica * ANY: Any location
    principalOfficeCountry :: (Core.Maybe Core.Text),
    -- | Physical location of the principal at the time of the access. A two-letter country code (ISO 3166-1 alpha-2), such as \"US\", \"DE\" or \"GB\" or a region code. In some limited situations Google systems may refer refer to a region code instead of a country code. Possible Region Codes: * ASI: Asia * EUR: Europe * OCE: Oceania * AFR: Africa * NAM: North America * SAM: South America * ANT: Antarctica * ANY: Any location
    principalPhysicalLocationCountry :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessLocations' with the minimum fields required to make a request.
newAccessLocations ::
  AccessLocations
newAccessLocations =
  AccessLocations
    { principalOfficeCountry = Core.Nothing,
      principalPhysicalLocationCountry = Core.Nothing
    }

instance Core.FromJSON AccessLocations where
  parseJSON =
    Core.withObject
      "AccessLocations"
      ( \o ->
          AccessLocations
            Core.<$> (o Core..:? "principalOfficeCountry")
            Core.<*> (o Core..:? "principalPhysicalLocationCountry")
      )

instance Core.ToJSON AccessLocations where
  toJSON AccessLocations {..} =
    Core.object
      ( Core.catMaybes
          [ ("principalOfficeCountry" Core..=)
              Core.<$> principalOfficeCountry,
            ("principalPhysicalLocationCountry" Core..=)
              Core.<$> principalPhysicalLocationCountry
          ]
      )

--
-- /See:/ 'newAccessReason' smart constructor.
data AccessReason = AccessReason
  { -- | More detail about certain reason types. See comments for each type above.
    detail :: (Core.Maybe Core.Text),
    -- | Type of access justification.
    type' :: (Core.Maybe AccessReason_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessReason' with the minimum fields required to make a request.
newAccessReason ::
  AccessReason
newAccessReason = AccessReason {detail = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON AccessReason where
  parseJSON =
    Core.withObject
      "AccessReason"
      ( \o ->
          AccessReason
            Core.<$> (o Core..:? "detail") Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON AccessReason where
  toJSON AccessReason {..} =
    Core.object
      ( Core.catMaybes
          [ ("detail" Core..=) Core.<$> detail,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | A request for the customer to approve access to a resource.
--
-- /See:/ 'newApprovalRequest' smart constructor.
data ApprovalRequest = ApprovalRequest
  { -- | Access was approved.
    approve :: (Core.Maybe ApproveDecision),
    -- | The request was dismissed.
    dismiss :: (Core.Maybe DismissDecision),
    -- | The resource name of the request. Format is \"{projects|folders|organizations}\/{id}\/approvalRequests\/{approval_request}\".
    name :: (Core.Maybe Core.Text),
    -- | The time at which approval was requested.
    requestTime :: (Core.Maybe Core.DateTime),
    -- | The requested expiration for the approval. If the request is approved, access will be granted from the time of approval until the expiration time.
    requestedExpiration :: (Core.Maybe Core.DateTime),
    -- | The locations for which approval is being requested.
    requestedLocations :: (Core.Maybe AccessLocations),
    -- | The justification for which approval is being requested.
    requestedReason :: (Core.Maybe AccessReason),
    -- | The resource for which approval is being requested. The format of the resource name is defined at https:\/\/cloud.google.com\/apis\/design\/resource_names. The resource name here may either be a \"full\" resource name (e.g. \"\/\/library.googleapis.com\/shelves\/shelf1\/books\/book2\") or a \"relative\" resource name (e.g. \"shelves\/shelf1\/books\/book2\") as described in the resource name specification.
    requestedResourceName :: (Core.Maybe Core.Text),
    -- | Properties related to the resource represented by requested/resource/name.
    requestedResourceProperties :: (Core.Maybe ResourceProperties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApprovalRequest' with the minimum fields required to make a request.
newApprovalRequest ::
  ApprovalRequest
newApprovalRequest =
  ApprovalRequest
    { approve = Core.Nothing,
      dismiss = Core.Nothing,
      name = Core.Nothing,
      requestTime = Core.Nothing,
      requestedExpiration = Core.Nothing,
      requestedLocations = Core.Nothing,
      requestedReason = Core.Nothing,
      requestedResourceName = Core.Nothing,
      requestedResourceProperties = Core.Nothing
    }

instance Core.FromJSON ApprovalRequest where
  parseJSON =
    Core.withObject
      "ApprovalRequest"
      ( \o ->
          ApprovalRequest
            Core.<$> (o Core..:? "approve")
            Core.<*> (o Core..:? "dismiss")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "requestTime")
            Core.<*> (o Core..:? "requestedExpiration")
            Core.<*> (o Core..:? "requestedLocations")
            Core.<*> (o Core..:? "requestedReason")
            Core.<*> (o Core..:? "requestedResourceName")
            Core.<*> (o Core..:? "requestedResourceProperties")
      )

instance Core.ToJSON ApprovalRequest where
  toJSON ApprovalRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("approve" Core..=) Core.<$> approve,
            ("dismiss" Core..=) Core.<$> dismiss,
            ("name" Core..=) Core.<$> name,
            ("requestTime" Core..=) Core.<$> requestTime,
            ("requestedExpiration" Core..=)
              Core.<$> requestedExpiration,
            ("requestedLocations" Core..=)
              Core.<$> requestedLocations,
            ("requestedReason" Core..=) Core.<$> requestedReason,
            ("requestedResourceName" Core..=)
              Core.<$> requestedResourceName,
            ("requestedResourceProperties" Core..=)
              Core.<$> requestedResourceProperties
          ]
      )

-- | Request to approve an ApprovalRequest.
--
-- /See:/ 'newApproveApprovalRequestMessage' smart constructor.
newtype ApproveApprovalRequestMessage = ApproveApprovalRequestMessage
  { -- | The expiration time of this approval.
    expireTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApproveApprovalRequestMessage' with the minimum fields required to make a request.
newApproveApprovalRequestMessage ::
  ApproveApprovalRequestMessage
newApproveApprovalRequestMessage =
  ApproveApprovalRequestMessage {expireTime = Core.Nothing}

instance Core.FromJSON ApproveApprovalRequestMessage where
  parseJSON =
    Core.withObject
      "ApproveApprovalRequestMessage"
      ( \o ->
          ApproveApprovalRequestMessage
            Core.<$> (o Core..:? "expireTime")
      )

instance Core.ToJSON ApproveApprovalRequestMessage where
  toJSON ApproveApprovalRequestMessage {..} =
    Core.object
      ( Core.catMaybes
          [("expireTime" Core..=) Core.<$> expireTime]
      )

-- | A decision that has been made to approve access to a resource.
--
-- /See:/ 'newApproveDecision' smart constructor.
data ApproveDecision = ApproveDecision
  { -- | The time at which approval was granted.
    approveTime :: (Core.Maybe Core.DateTime),
    -- | True when the request has been auto-approved.
    autoApproved :: (Core.Maybe Core.Bool),
    -- | The time at which the approval expires.
    expireTime :: (Core.Maybe Core.DateTime),
    -- | If set, denotes the timestamp at which the approval is invalidated.
    invalidateTime :: (Core.Maybe Core.DateTime),
    -- | The signature for the ApprovalRequest and details on how it was signed.
    signatureInfo :: (Core.Maybe SignatureInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApproveDecision' with the minimum fields required to make a request.
newApproveDecision ::
  ApproveDecision
newApproveDecision =
  ApproveDecision
    { approveTime = Core.Nothing,
      autoApproved = Core.Nothing,
      expireTime = Core.Nothing,
      invalidateTime = Core.Nothing,
      signatureInfo = Core.Nothing
    }

instance Core.FromJSON ApproveDecision where
  parseJSON =
    Core.withObject
      "ApproveDecision"
      ( \o ->
          ApproveDecision
            Core.<$> (o Core..:? "approveTime")
            Core.<*> (o Core..:? "autoApproved")
            Core.<*> (o Core..:? "expireTime")
            Core.<*> (o Core..:? "invalidateTime")
            Core.<*> (o Core..:? "signatureInfo")
      )

instance Core.ToJSON ApproveDecision where
  toJSON ApproveDecision {..} =
    Core.object
      ( Core.catMaybes
          [ ("approveTime" Core..=) Core.<$> approveTime,
            ("autoApproved" Core..=) Core.<$> autoApproved,
            ("expireTime" Core..=) Core.<$> expireTime,
            ("invalidateTime" Core..=) Core.<$> invalidateTime,
            ("signatureInfo" Core..=) Core.<$> signatureInfo
          ]
      )

-- | Request to dismiss an approval request.
--
-- /See:/ 'newDismissApprovalRequestMessage' smart constructor.
data DismissApprovalRequestMessage = DismissApprovalRequestMessage
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DismissApprovalRequestMessage' with the minimum fields required to make a request.
newDismissApprovalRequestMessage ::
  DismissApprovalRequestMessage
newDismissApprovalRequestMessage = DismissApprovalRequestMessage

instance Core.FromJSON DismissApprovalRequestMessage where
  parseJSON =
    Core.withObject
      "DismissApprovalRequestMessage"
      (\o -> Core.pure DismissApprovalRequestMessage)

instance Core.ToJSON DismissApprovalRequestMessage where
  toJSON = Core.const Core.emptyObject

-- | A decision that has been made to dismiss an approval request.
--
-- /See:/ 'newDismissDecision' smart constructor.
data DismissDecision = DismissDecision
  { -- | The time at which the approval request was dismissed.
    dismissTime :: (Core.Maybe Core.DateTime),
    -- | This field will be true if the ApprovalRequest was implicitly dismissed due to inaction by the access approval approvers (the request is not acted on by the approvers before the exiration time).
    implicit :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DismissDecision' with the minimum fields required to make a request.
newDismissDecision ::
  DismissDecision
newDismissDecision =
  DismissDecision {dismissTime = Core.Nothing, implicit = Core.Nothing}

instance Core.FromJSON DismissDecision where
  parseJSON =
    Core.withObject
      "DismissDecision"
      ( \o ->
          DismissDecision
            Core.<$> (o Core..:? "dismissTime")
            Core.<*> (o Core..:? "implicit")
      )

instance Core.ToJSON DismissDecision where
  toJSON DismissDecision {..} =
    Core.object
      ( Core.catMaybes
          [ ("dismissTime" Core..=) Core.<$> dismissTime,
            ("implicit" Core..=) Core.<$> implicit
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
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

-- | Represents the enrollment of a cloud resource into a specific service.
--
-- /See:/ 'newEnrolledService' smart constructor.
data EnrolledService = EnrolledService
  { -- | The product for which Access Approval will be enrolled. Allowed values are listed below (case-sensitive): * all * GA * App Engine * Artifact Registry * BigQuery * Certificate Authority Service * Cloud Bigtable * Cloud Key Management Service * Compute Engine * Cloud Composer * Cloud Dataflow * Cloud Dataproc * Cloud DLP * Cloud EKM * Cloud Firestore * Cloud HSM * Cloud Identity and Access Management * Cloud Logging * Cloud NAT * Cloud Pub\/Sub * Cloud Spanner * Cloud SQL * Cloud Storage * Google Kubernetes Engine * Organization Policy Serivice * Persistent Disk * Resource Manager * Secret Manager * Speaker ID Note: These values are supported as input for legacy purposes, but will not be returned from the API. * all * ga-only * appengine.googleapis.com * artifactregistry.googleapis.com * bigquery.googleapis.com * bigtable.googleapis.com * container.googleapis.com * cloudkms.googleapis.com * cloudresourcemanager.googleapis.com * cloudsql.googleapis.com * compute.googleapis.com * dataflow.googleapis.com *
    -- dataproc.googleapis.com * dlp.googleapis.com * iam.googleapis.com * logging.googleapis.com * orgpolicy.googleapis.com * pubsub.googleapis.com * spanner.googleapis.com * secretmanager.googleapis.com * speakerid.googleapis.com * storage.googleapis.com Calls to UpdateAccessApprovalSettings using \'all\' or any of the XXX.googleapis.com will be translated to the associated product name (\'all\', \'App Engine\', etc.). Note: \'all\' will enroll the resource in all products supported at both \'GA\' and \'Preview\' levels. More information about levels of support is available at https:\/\/cloud.google.com\/access-approval\/docs\/supported-services
    cloudProduct :: (Core.Maybe Core.Text),
    -- | The enrollment level of the service.
    enrollmentLevel :: (Core.Maybe EnrolledService_EnrollmentLevel)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EnrolledService' with the minimum fields required to make a request.
newEnrolledService ::
  EnrolledService
newEnrolledService =
  EnrolledService {cloudProduct = Core.Nothing, enrollmentLevel = Core.Nothing}

instance Core.FromJSON EnrolledService where
  parseJSON =
    Core.withObject
      "EnrolledService"
      ( \o ->
          EnrolledService
            Core.<$> (o Core..:? "cloudProduct")
            Core.<*> (o Core..:? "enrollmentLevel")
      )

instance Core.ToJSON EnrolledService where
  toJSON EnrolledService {..} =
    Core.object
      ( Core.catMaybes
          [ ("cloudProduct" Core..=) Core.<$> cloudProduct,
            ("enrollmentLevel" Core..=)
              Core.<$> enrollmentLevel
          ]
      )

-- | Request to invalidate an existing approval.
--
-- /See:/ 'newInvalidateApprovalRequestMessage' smart constructor.
data InvalidateApprovalRequestMessage = InvalidateApprovalRequestMessage
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InvalidateApprovalRequestMessage' with the minimum fields required to make a request.
newInvalidateApprovalRequestMessage ::
  InvalidateApprovalRequestMessage
newInvalidateApprovalRequestMessage = InvalidateApprovalRequestMessage

instance
  Core.FromJSON
    InvalidateApprovalRequestMessage
  where
  parseJSON =
    Core.withObject
      "InvalidateApprovalRequestMessage"
      (\o -> Core.pure InvalidateApprovalRequestMessage)

instance Core.ToJSON InvalidateApprovalRequestMessage where
  toJSON = Core.const Core.emptyObject

-- | Response to listing of ApprovalRequest objects.
--
-- /See:/ 'newListApprovalRequestsResponse' smart constructor.
data ListApprovalRequestsResponse = ListApprovalRequestsResponse
  { -- | Approval request details.
    approvalRequests :: (Core.Maybe [ApprovalRequest]),
    -- | Token to retrieve the next page of results, or empty if there are no more.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListApprovalRequestsResponse' with the minimum fields required to make a request.
newListApprovalRequestsResponse ::
  ListApprovalRequestsResponse
newListApprovalRequestsResponse =
  ListApprovalRequestsResponse
    { approvalRequests = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListApprovalRequestsResponse where
  parseJSON =
    Core.withObject
      "ListApprovalRequestsResponse"
      ( \o ->
          ListApprovalRequestsResponse
            Core.<$> (o Core..:? "approvalRequests")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListApprovalRequestsResponse where
  toJSON ListApprovalRequestsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("approvalRequests" Core..=)
              Core.<$> approvalRequests,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The properties associated with the resource of the request.
--
-- /See:/ 'newResourceProperties' smart constructor.
newtype ResourceProperties = ResourceProperties
  { -- | Whether an approval will exclude the descendants of the resource being requested.
    excludesDescendants :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResourceProperties' with the minimum fields required to make a request.
newResourceProperties ::
  ResourceProperties
newResourceProperties = ResourceProperties {excludesDescendants = Core.Nothing}

instance Core.FromJSON ResourceProperties where
  parseJSON =
    Core.withObject
      "ResourceProperties"
      ( \o ->
          ResourceProperties
            Core.<$> (o Core..:? "excludesDescendants")
      )

instance Core.ToJSON ResourceProperties where
  toJSON ResourceProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("excludesDescendants" Core..=)
              Core.<$> excludesDescendants
          ]
      )

-- | Information about the digital signature of the resource.
--
-- /See:/ 'newSignatureInfo' smart constructor.
data SignatureInfo = SignatureInfo
  { -- | The resource name of the customer CryptoKeyVersion used for signing.
    customerKmsKeyVersion :: (Core.Maybe Core.Text),
    -- | The public key for the Google default signing, encoded in PEM format. The signature was created using a private key which may be verified using this public key.
    googlePublicKeyPem :: (Core.Maybe Core.Text),
    -- | The digital signature.
    signature :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SignatureInfo' with the minimum fields required to make a request.
newSignatureInfo ::
  SignatureInfo
newSignatureInfo =
  SignatureInfo
    { customerKmsKeyVersion = Core.Nothing,
      googlePublicKeyPem = Core.Nothing,
      signature = Core.Nothing
    }

instance Core.FromJSON SignatureInfo where
  parseJSON =
    Core.withObject
      "SignatureInfo"
      ( \o ->
          SignatureInfo
            Core.<$> (o Core..:? "customerKmsKeyVersion")
            Core.<*> (o Core..:? "googlePublicKeyPem")
            Core.<*> (o Core..:? "signature")
      )

instance Core.ToJSON SignatureInfo where
  toJSON SignatureInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("customerKmsKeyVersion" Core..=)
              Core.<$> customerKmsKeyVersion,
            ("googlePublicKeyPem" Core..=)
              Core.<$> googlePublicKeyPem,
            ("signature" Core..=) Core.<$> signature
          ]
      )
