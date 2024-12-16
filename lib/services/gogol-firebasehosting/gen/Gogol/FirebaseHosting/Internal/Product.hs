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
-- Module      : Gogol.FirebaseHosting.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.FirebaseHosting.Internal.Product
  (

    -- * CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- * CertVerification
    CertVerification (..),
    newCertVerification,

    -- * CustomDomainMetadata
    CustomDomainMetadata (..),
    newCustomDomainMetadata,

    -- * DnsRecord
    DnsRecord (..),
    newDnsRecord,

    -- * DnsRecordSet
    DnsRecordSet (..),
    newDnsRecordSet,

    -- * DnsUpdates
    DnsUpdates (..),
    newDnsUpdates,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * HttpUpdate
    HttpUpdate (..),
    newHttpUpdate,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * LiveMigrationStep
    LiveMigrationStep (..),
    newLiveMigrationStep,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.FirebaseHosting.Internal.Sum

-- | The request message for Operations.CancelOperation.
--
-- /See:/ 'newCancelOperationRequest' smart constructor.
data CancelOperationRequest = CancelOperationRequest
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CancelOperationRequest' with the minimum fields required to make a request.
newCancelOperationRequest 
    ::  CancelOperationRequest
newCancelOperationRequest = CancelOperationRequest

instance Core.FromJSON CancelOperationRequest where
        parseJSON
          = Core.withObject "CancelOperationRequest"
              (\ o -> Core.pure CancelOperationRequest)

instance Core.ToJSON CancelOperationRequest where
        toJSON = Core.const Core.emptyObject


-- | A set of ACME challenges you can use to allow Hosting to create an SSL certificate for your domain name before directing traffic to Hosting servers. Use either the DNS or HTTP challenge; it\'s not necessary to provide both.
--
-- /See:/ 'newCertVerification' smart constructor.
data CertVerification = CertVerification
    {
      -- | Output only. A @TXT@ record to add to your DNS records that confirms your intent to let Hosting create an SSL cert for your domain name.
      dns :: (Core.Maybe DnsUpdates)
      -- | Output only. A file to add to your existing, non-Hosting hosting service that confirms your intent to let Hosting create an SSL cert for your domain name.
    , http :: (Core.Maybe HttpUpdate)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CertVerification' with the minimum fields required to make a request.
newCertVerification 
    ::  CertVerification
newCertVerification = CertVerification {dns = Core.Nothing, http = Core.Nothing}

instance Core.FromJSON CertVerification where
        parseJSON
          = Core.withObject "CertVerification"
              (\ o ->
                 CertVerification Core.<$>
                   (o Core..:? "dns") Core.<*> (o Core..:? "http"))

instance Core.ToJSON CertVerification where
        toJSON CertVerification{..}
          = Core.object
              (Core.catMaybes
                 [("dns" Core..=) Core.<$> dns,
                  ("http" Core..=) Core.<$> http])


-- | Metadata associated with a@CustomDomain@ operation.
--
-- /See:/ 'newCustomDomainMetadata' smart constructor.
data CustomDomainMetadata = CustomDomainMetadata
    {
      -- | The @CertState@ of the domain name\'s SSL certificate.
      certState :: (Core.Maybe CustomDomainMetadata_CertState)
      -- | The @HostState@ of the domain name this @CustomDomain@ refers to.
    , hostState :: (Core.Maybe CustomDomainMetadata_HostState)
      -- | A list of issues that are currently preventing Hosting from completing the operation. These are generally DNS-related issues that Hosting encounters when querying a domain name\'s records or attempting to mint an SSL certificate.
    , issues :: (Core.Maybe [Status])
      -- | A set of DNS record updates and ACME challenges that allow you to transition domain names to Firebase Hosting with zero downtime. These updates allow Hosting to create an SSL certificate and establish ownership for your custom domain before Hosting begins serving traffic on it. If your domain name is already in active use with another provider, add one of the challenges and make the recommended DNS updates. After adding challenges and adjusting DNS records as necessary, wait for the @ownershipState@ to be @OWNERSHIP_ACTIVE@ and the @certState@ to be @CERT_ACTIVE@ before sending traffic to Hosting.
    , liveMigrationSteps :: (Core.Maybe [LiveMigrationStep])
      -- | The @OwnershipState@ of the domain name this @CustomDomain@ refers to.
    , ownershipState :: (Core.Maybe CustomDomainMetadata_OwnershipState)
      -- | A set of DNS record updates that allow Hosting to serve secure content on your domain name. The record type determines the update\'s purpose: - @A@ and @AAAA@: Updates your domain name\'s IP addresses so that they direct traffic to Hosting servers. - @TXT@: Updates ownership permissions on your domain name, letting Hosting know that your custom domain\'s project has permission to perform actions for that domain name. - @CAA@: Updates your domain name\'s list of authorized Certificate Authorities (CAs). Only present if you have existing @CAA@ records that prohibit Hosting\'s CA from minting certs for your domain name. These updates include all DNS changes you\'ll need to get started with Hosting, but, if made all at once, can result in a brief period of downtime for your domain name--while Hosting creates and uploads an SSL cert, for example. If you\'d like to add your domain name to Hosting without downtime, complete the @liveMigrationSteps@ first, before making the remaining updates in this field.
    , quickSetupUpdates :: (Core.Maybe DnsUpdates)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomDomainMetadata' with the minimum fields required to make a request.
newCustomDomainMetadata 
    ::  CustomDomainMetadata
newCustomDomainMetadata =
  CustomDomainMetadata
    { certState = Core.Nothing
    , hostState = Core.Nothing
    , issues = Core.Nothing
    , liveMigrationSteps = Core.Nothing
    , ownershipState = Core.Nothing
    , quickSetupUpdates = Core.Nothing
    }

instance Core.FromJSON CustomDomainMetadata where
        parseJSON
          = Core.withObject "CustomDomainMetadata"
              (\ o ->
                 CustomDomainMetadata Core.<$>
                   (o Core..:? "certState") Core.<*>
                     (o Core..:? "hostState")
                     Core.<*> (o Core..:? "issues")
                     Core.<*> (o Core..:? "liveMigrationSteps")
                     Core.<*> (o Core..:? "ownershipState")
                     Core.<*> (o Core..:? "quickSetupUpdates"))

instance Core.ToJSON CustomDomainMetadata where
        toJSON CustomDomainMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("certState" Core..=) Core.<$> certState,
                  ("hostState" Core..=) Core.<$> hostState,
                  ("issues" Core..=) Core.<$> issues,
                  ("liveMigrationSteps" Core..=) Core.<$>
                    liveMigrationSteps,
                  ("ownershipState" Core..=) Core.<$> ownershipState,
                  ("quickSetupUpdates" Core..=) Core.<$>
                    quickSetupUpdates])


-- | DNS records are resource records that define how systems and services should behave when handling requests for a domain name. For example, when you add @A@ records to your domain name\'s DNS records, you\'re informing other systems (such as your users\' web browsers) to contact those IPv4 addresses to retrieve resources relevant to your domain name (such as your Hosting site files).
--
-- /See:/ 'newDnsRecord' smart constructor.
data DnsRecord = DnsRecord
    {
      -- | Output only. The domain name the record pertains to, e.g. @foo.bar.com.@.
      domainName :: (Core.Maybe Core.Text)
      -- | Output only. The data of the record. The meaning of the value depends on record type: - A and AAAA: IP addresses for the domain name. - CNAME: Another domain to check for records. - TXT: Arbitrary text strings associated with the domain name. Hosting uses TXT records to determine which Firebase projects have permission to act on the domain name\'s behalf. - CAA: The record\'s flags, tag, and value, e.g. @0 issue \"pki.goog\"@.
    , rdata :: (Core.Maybe Core.Text)
      -- | Output only. An enum that indicates the a required action for this record.
    , requiredAction :: (Core.Maybe DnsRecord_RequiredAction)
      -- | Output only. The record\'s type, which determines what data the record contains.
    , type' :: (Core.Maybe DnsRecord_Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DnsRecord' with the minimum fields required to make a request.
newDnsRecord 
    ::  DnsRecord
newDnsRecord =
  DnsRecord
    { domainName = Core.Nothing
    , rdata = Core.Nothing
    , requiredAction = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON DnsRecord where
        parseJSON
          = Core.withObject "DnsRecord"
              (\ o ->
                 DnsRecord Core.<$>
                   (o Core..:? "domainName") Core.<*>
                     (o Core..:? "rdata")
                     Core.<*> (o Core..:? "requiredAction")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON DnsRecord where
        toJSON DnsRecord{..}
          = Core.object
              (Core.catMaybes
                 [("domainName" Core..=) Core.<$> domainName,
                  ("rdata" Core..=) Core.<$> rdata,
                  ("requiredAction" Core..=) Core.<$> requiredAction,
                  ("type" Core..=) Core.<$> type'])


-- | A set of DNS records relevant to the setup and maintenance of a custom domain in Firebase Hosting.
--
-- /See:/ 'newDnsRecordSet' smart constructor.
data DnsRecordSet = DnsRecordSet
    {
      -- | Output only. An error Hosting services encountered when querying your domain name\'s DNS records. Note: Hosting ignores @NXDOMAIN@ errors, as those generally just mean that a domain name hasn\'t been set up yet.
      checkError :: (Core.Maybe Status)
      -- | Output only. The domain name the record set pertains to.
    , domainName :: (Core.Maybe Core.Text)
      -- | Output only. Records on the domain.
    , records :: (Core.Maybe [DnsRecord])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DnsRecordSet' with the minimum fields required to make a request.
newDnsRecordSet 
    ::  DnsRecordSet
newDnsRecordSet =
  DnsRecordSet
    { checkError = Core.Nothing
    , domainName = Core.Nothing
    , records = Core.Nothing
    }

instance Core.FromJSON DnsRecordSet where
        parseJSON
          = Core.withObject "DnsRecordSet"
              (\ o ->
                 DnsRecordSet Core.<$>
                   (o Core..:? "checkError") Core.<*>
                     (o Core..:? "domainName")
                     Core.<*> (o Core..:? "records"))

instance Core.ToJSON DnsRecordSet where
        toJSON DnsRecordSet{..}
          = Core.object
              (Core.catMaybes
                 [("checkError" Core..=) Core.<$> checkError,
                  ("domainName" Core..=) Core.<$> domainName,
                  ("records" Core..=) Core.<$> records])


-- | A set of DNS record updates that you should make to allow Hosting to serve secure content in response to requests against your domain name. These updates present the current state of your domain name\'s DNS records when Hosting last queried them, and the desired set of records that Hosting needs to see before your custom domain can be fully active.
--
-- /See:/ 'newDnsUpdates' smart constructor.
data DnsUpdates = DnsUpdates
    {
      -- | The last time Hosting checked your custom domain\'s DNS records.
      checkTime :: (Core.Maybe Core.DateTime)
      -- | The set of DNS records Hosting needs to serve secure content on the domain.
    , desired :: (Core.Maybe [DnsRecordSet])
      -- | The set of DNS records Hosting discovered when inspecting a domain.
    , discovered :: (Core.Maybe [DnsRecordSet])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DnsUpdates' with the minimum fields required to make a request.
newDnsUpdates 
    ::  DnsUpdates
newDnsUpdates =
  DnsUpdates
    { checkTime = Core.Nothing
    , desired = Core.Nothing
    , discovered = Core.Nothing
    }

instance Core.FromJSON DnsUpdates where
        parseJSON
          = Core.withObject "DnsUpdates"
              (\ o ->
                 DnsUpdates Core.<$>
                   (o Core..:? "checkTime") Core.<*>
                     (o Core..:? "desired")
                     Core.<*> (o Core..:? "discovered"))

instance Core.ToJSON DnsUpdates where
        toJSON DnsUpdates{..}
          = Core.object
              (Core.catMaybes
                 [("checkTime" Core..=) Core.<$> checkTime,
                  ("desired" Core..=) Core.<$> desired,
                  ("discovered" Core..=) Core.<$> discovered])


-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty 
    ::  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
        parseJSON
          = Core.withObject "Empty" (\ o -> Core.pure Empty)

instance Core.ToJSON Empty where
        toJSON = Core.const Core.emptyObject


-- | A file you can add to your existing, non-Hosting hosting service that confirms your intent to allow Hosting\'s Certificate Authorities to create an SSL certificate for your domain.
--
-- /See:/ 'newHttpUpdate' smart constructor.
data HttpUpdate = HttpUpdate
    {
      -- | Output only. An error encountered during the last contents check. If null, the check completed successfully.
      checkError :: (Core.Maybe Status)
      -- | Output only. A text string to serve at the path.
    , desired :: (Core.Maybe Core.Text)
      -- | Output only. Whether Hosting was able to find the required file contents on the specified path during its last check.
    , discovered :: (Core.Maybe Core.Text)
      -- | Output only. The last time Hosting systems checked for the file contents.
    , lastCheckTime :: (Core.Maybe Core.DateTime)
      -- | Output only. The path to the file.
    , path :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HttpUpdate' with the minimum fields required to make a request.
newHttpUpdate 
    ::  HttpUpdate
newHttpUpdate =
  HttpUpdate
    { checkError = Core.Nothing
    , desired = Core.Nothing
    , discovered = Core.Nothing
    , lastCheckTime = Core.Nothing
    , path = Core.Nothing
    }

instance Core.FromJSON HttpUpdate where
        parseJSON
          = Core.withObject "HttpUpdate"
              (\ o ->
                 HttpUpdate Core.<$>
                   (o Core..:? "checkError") Core.<*>
                     (o Core..:? "desired")
                     Core.<*> (o Core..:? "discovered")
                     Core.<*> (o Core..:? "lastCheckTime")
                     Core.<*> (o Core..:? "path"))

instance Core.ToJSON HttpUpdate where
        toJSON HttpUpdate{..}
          = Core.object
              (Core.catMaybes
                 [("checkError" Core..=) Core.<$> checkError,
                  ("desired" Core..=) Core.<$> desired,
                  ("discovered" Core..=) Core.<$> discovered,
                  ("lastCheckTime" Core..=) Core.<$> lastCheckTime,
                  ("path" Core..=) Core.<$> path])


-- | The response message for Operations.ListOperations.
--
-- /See:/ 'newListOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse
    {
      -- | The standard List next-page token.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | A list of operations that matches the specified filter in the request.
    , operations :: (Core.Maybe [Operation])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
newListOperationsResponse 
    ::  ListOperationsResponse
newListOperationsResponse =
  ListOperationsResponse
    {nextPageToken = Core.Nothing, operations = Core.Nothing}

instance Core.FromJSON ListOperationsResponse where
        parseJSON
          = Core.withObject "ListOperationsResponse"
              (\ o ->
                 ListOperationsResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "operations"))

instance Core.ToJSON ListOperationsResponse where
        toJSON ListOperationsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("operations" Core..=) Core.<$> operations])


-- | A set of updates including ACME challenges and DNS records that allow Hosting to create an SSL certificate and establish project ownership for your domain name before you direct traffic to Hosting servers. Use these updates to facilitate zero downtime migrations to Hosting from other services. After you\'ve made the recommended updates, check your custom domain\'s @ownershipState@ and @certState@. To avoid downtime, they should be @OWNERSHIP_ACTIVE@ and @CERT_ACTIVE@, respectively, before you update your @A@ and @AAAA@ records.
--
-- /See:/ 'newLiveMigrationStep' smart constructor.
data LiveMigrationStep = LiveMigrationStep
    {
      -- | Output only. A pair of ACME challenges that Hosting\'s Certificate Authority (CA) can use to create an SSL cert for your domain name. Use either the DNS or HTTP challenge; it\'s not necessary to provide both.
      certVerification :: (Core.Maybe CertVerification)
      -- | Output only. DNS updates to facilitate your domain\'s zero-downtime migration to Hosting.
    , dnsUpdates :: (Core.Maybe DnsUpdates)
      -- | Output only. Issues that prevent the current step from completing.
    , issues :: (Core.Maybe [Status])
      -- | Output only. The state of the live migration step, indicates whether you should work to complete the step now, in the future, or have already completed it.
    , state :: (Core.Maybe LiveMigrationStep_State)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LiveMigrationStep' with the minimum fields required to make a request.
newLiveMigrationStep 
    ::  LiveMigrationStep
newLiveMigrationStep =
  LiveMigrationStep
    { certVerification = Core.Nothing
    , dnsUpdates = Core.Nothing
    , issues = Core.Nothing
    , state = Core.Nothing
    }

instance Core.FromJSON LiveMigrationStep where
        parseJSON
          = Core.withObject "LiveMigrationStep"
              (\ o ->
                 LiveMigrationStep Core.<$>
                   (o Core..:? "certVerification") Core.<*>
                     (o Core..:? "dnsUpdates")
                     Core.<*> (o Core..:? "issues")
                     Core.<*> (o Core..:? "state"))

instance Core.ToJSON LiveMigrationStep where
        toJSON LiveMigrationStep{..}
          = Core.object
              (Core.catMaybes
                 [("certVerification" Core..=) Core.<$>
                    certVerification,
                  ("dnsUpdates" Core..=) Core.<$> dnsUpdates,
                  ("issues" Core..=) Core.<$> issues,
                  ("state" Core..=) Core.<$> state])


-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
    {
      -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
      done :: (Core.Maybe Core.Bool)
      -- | The error result of the operation in case of failure or cancellation.
    , error :: (Core.Maybe Status)
      -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    , metadata :: (Core.Maybe Operation_Metadata)
      -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    , name :: (Core.Maybe Core.Text)
      -- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    , response :: (Core.Maybe Operation_Response)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation 
    ::  Operation
newOperation =
  Operation
    { done = Core.Nothing
    , error = Core.Nothing
    , metadata = Core.Nothing
    , name = Core.Nothing
    , response = Core.Nothing
    }

instance Core.FromJSON Operation where
        parseJSON
          = Core.withObject "Operation"
              (\ o ->
                 Operation Core.<$>
                   (o Core..:? "done") Core.<*> (o Core..:? "error")
                     Core.<*> (o Core..:? "metadata")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "response"))

instance Core.ToJSON Operation where
        toJSON Operation{..}
          = Core.object
              (Core.catMaybes
                 [("done" Core..=) Core.<$> done,
                  ("error" Core..=) Core.<$> error,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("name" Core..=) Core.<$> name,
                  ("response" Core..=) Core.<$> response])


-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Operation_Metadata
newOperation_Metadata additional = Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
        parseJSON
          = Core.withObject "Operation_Metadata"
              (\ o ->
                 Operation_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Metadata where
        toJSON Operation_Metadata{..}
          = Core.toJSON additional


-- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Operation_Response
newOperation_Response additional = Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
        parseJSON
          = Core.withObject "Operation_Response"
              (\ o ->
                 Operation_Response Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Response where
        toJSON Operation_Response{..}
          = Core.toJSON additional


-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
    {
      -- | The status code, which should be an enum value of google.rpc.Code.
      code :: (Core.Maybe Core.Int32)
      -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    , details :: (Core.Maybe [Status_DetailsItem])
      -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    , message :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus 
    ::  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
        parseJSON
          = Core.withObject "Status"
              (\ o ->
                 Status Core.<$>
                   (o Core..:? "code") Core.<*> (o Core..:? "details")
                     Core.<*> (o Core..:? "message"))

instance Core.ToJSON Status where
        toJSON Status{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("details" Core..=) Core.<$> details,
                  ("message" Core..=) Core.<$> message])


--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
        parseJSON
          = Core.withObject "Status_DetailsItem"
              (\ o ->
                 Status_DetailsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Status_DetailsItem where
        toJSON Status_DetailsItem{..}
          = Core.toJSON additional

