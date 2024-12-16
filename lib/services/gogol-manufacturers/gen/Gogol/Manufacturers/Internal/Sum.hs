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
-- Module      : Gogol.Manufacturers.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Manufacturers.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * DestinationStatus_Status
    DestinationStatus_Status
      (
        DestinationStatus_Status_Unknown,
        DestinationStatus_Status_Active,
        DestinationStatus_Status_Pending,
        DestinationStatus_Status_Disapproved,
        ..
      ),

    -- * Image_Status
    Image_Status
      (
        Image_Status_STATUSUNSPECIFIED,
        Image_Status_PENDINGPROCESSING,
        Image_Status_PENDINGCRAWL,
        Image_Status_OK,
        Image_Status_Roboted,
        Image_Status_Xroboted,
        Image_Status_CRAWLERROR,
        Image_Status_PROCESSINGERROR,
        Image_Status_DECODINGERROR,
        Image_Status_TOOBIG,
        Image_Status_CRAWLSKIPPED,
        Image_Status_Hostloaded,
        Image_Status_HTTP_404,
        ..
      ),

    -- * Image_Type
    Image_Type
      (
        Image_Type_TYPEUNSPECIFIED,
        Image_Type_Crawled,
        Image_Type_Uploaded,
        ..
      ),

    -- * Issue_Resolution
    Issue_Resolution
      (
        Issue_Resolution_RESOLUTIONUNSPECIFIED,
        Issue_Resolution_USERACTION,
        Issue_Resolution_PENDINGPROCESSING,
        ..
      ),

    -- * Issue_Severity
    Issue_Severity
      (
        Issue_Severity_SEVERITYUNSPECIFIED,
        Issue_Severity_Error',
        Issue_Severity_Warning,
        Issue_Severity_Info,
        ..
      ),

    -- * AccountsProductsGetInclude
    AccountsProductsGetInclude
      (
        AccountsProductsGetInclude_Unknown,
        AccountsProductsGetInclude_Attributes,
        AccountsProductsGetInclude_Issues,
        AccountsProductsGetInclude_DESTINATIONSTATUSES,
        ..
      ),

    -- * AccountsProductsListInclude
    AccountsProductsListInclude
      (
        AccountsProductsListInclude_Unknown,
        AccountsProductsListInclude_Attributes,
        AccountsProductsListInclude_Issues,
        AccountsProductsListInclude_DESTINATIONSTATUSES,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv #-}

-- | The status of the destination.
newtype DestinationStatus_Status = DestinationStatus_Status { fromDestinationStatus_Status :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified status, never used.
pattern DestinationStatus_Status_Unknown :: DestinationStatus_Status
pattern DestinationStatus_Status_Unknown = DestinationStatus_Status "UNKNOWN"

-- | The product is used for this destination.
pattern DestinationStatus_Status_Active :: DestinationStatus_Status
pattern DestinationStatus_Status_Active = DestinationStatus_Status "ACTIVE"

-- | The decision is still pending.
pattern DestinationStatus_Status_Pending :: DestinationStatus_Status
pattern DestinationStatus_Status_Pending = DestinationStatus_Status "PENDING"

-- | The product is disapproved. Please look at the issues.
pattern DestinationStatus_Status_Disapproved :: DestinationStatus_Status
pattern DestinationStatus_Status_Disapproved = DestinationStatus_Status "DISAPPROVED"

{-# COMPLETE
  DestinationStatus_Status_Unknown,
  DestinationStatus_Status_Active,
  DestinationStatus_Status_Pending,
  DestinationStatus_Status_Disapproved,
  DestinationStatus_Status #-}

-- | The status of the image. \@OutputOnly
newtype Image_Status = Image_Status { fromImage_Status :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The image status is unspecified. Should not be used.
pattern Image_Status_STATUSUNSPECIFIED :: Image_Status
pattern Image_Status_STATUSUNSPECIFIED = Image_Status "STATUS_UNSPECIFIED"

-- | The image was uploaded and is being processed.
pattern Image_Status_PENDINGPROCESSING :: Image_Status
pattern Image_Status_PENDINGPROCESSING = Image_Status "PENDING_PROCESSING"

-- | The image crawl is still pending.
pattern Image_Status_PENDINGCRAWL :: Image_Status
pattern Image_Status_PENDINGCRAWL = Image_Status "PENDING_CRAWL"

-- | The image was processed and it meets the requirements.
pattern Image_Status_OK :: Image_Status
pattern Image_Status_OK = Image_Status "OK"

-- | The image URL is protected by robots.txt file and cannot be crawled.
pattern Image_Status_Roboted :: Image_Status
pattern Image_Status_Roboted = Image_Status "ROBOTED"

-- | The image URL is protected by X-Robots-Tag and cannot be crawled.
pattern Image_Status_Xroboted :: Image_Status
pattern Image_Status_Xroboted = Image_Status "XROBOTED"

-- | There was an error while crawling the image.
pattern Image_Status_CRAWLERROR :: Image_Status
pattern Image_Status_CRAWLERROR = Image_Status "CRAWL_ERROR"

-- | The image cannot be processed.
pattern Image_Status_PROCESSINGERROR :: Image_Status
pattern Image_Status_PROCESSINGERROR = Image_Status "PROCESSING_ERROR"

-- | The image cannot be decoded.
pattern Image_Status_DECODINGERROR :: Image_Status
pattern Image_Status_DECODINGERROR = Image_Status "DECODING_ERROR"

-- | The image is too big.
pattern Image_Status_TOOBIG :: Image_Status
pattern Image_Status_TOOBIG = Image_Status "TOO_BIG"

-- | The image was manually overridden and will not be crawled.
pattern Image_Status_CRAWLSKIPPED :: Image_Status
pattern Image_Status_CRAWLSKIPPED = Image_Status "CRAWL_SKIPPED"

-- | The image crawl was postponed to avoid overloading the host.
pattern Image_Status_Hostloaded :: Image_Status
pattern Image_Status_Hostloaded = Image_Status "HOSTLOADED"

-- | The image URL returned a \"404 Not Found\" error.
pattern Image_Status_HTTP_404 :: Image_Status
pattern Image_Status_HTTP_404 = Image_Status "HTTP_404"

{-# COMPLETE
  Image_Status_STATUSUNSPECIFIED,
  Image_Status_PENDINGPROCESSING,
  Image_Status_PENDINGCRAWL,
  Image_Status_OK,
  Image_Status_Roboted,
  Image_Status_Xroboted,
  Image_Status_CRAWLERROR,
  Image_Status_PROCESSINGERROR,
  Image_Status_DECODINGERROR,
  Image_Status_TOOBIG,
  Image_Status_CRAWLSKIPPED,
  Image_Status_Hostloaded,
  Image_Status_HTTP_404,
  Image_Status #-}

-- | The type of the image, i.e., crawled or uploaded. \@OutputOnly
newtype Image_Type = Image_Type { fromImage_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Type is unspecified. Should not be used.
pattern Image_Type_TYPEUNSPECIFIED :: Image_Type
pattern Image_Type_TYPEUNSPECIFIED = Image_Type "TYPE_UNSPECIFIED"

-- | The image was crawled from a provided URL.
pattern Image_Type_Crawled :: Image_Type
pattern Image_Type_Crawled = Image_Type "CRAWLED"

-- | The image was uploaded.
pattern Image_Type_Uploaded :: Image_Type
pattern Image_Type_Uploaded = Image_Type "UPLOADED"

{-# COMPLETE
  Image_Type_TYPEUNSPECIFIED,
  Image_Type_Crawled,
  Image_Type_Uploaded,
  Image_Type #-}

-- | What needs to happen to resolve the issue.
newtype Issue_Resolution = Issue_Resolution { fromIssue_Resolution :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified resolution, never used.
pattern Issue_Resolution_RESOLUTIONUNSPECIFIED :: Issue_Resolution
pattern Issue_Resolution_RESOLUTIONUNSPECIFIED = Issue_Resolution "RESOLUTION_UNSPECIFIED"

-- | The user who provided the data must act in order to resolve the issue (for example by correcting some data).
pattern Issue_Resolution_USERACTION :: Issue_Resolution
pattern Issue_Resolution_USERACTION = Issue_Resolution "USER_ACTION"

-- | The issue will be resolved automatically (for example image crawl or Google review). No action is required now. Resolution might lead to another issue (for example if crawl fails).
pattern Issue_Resolution_PENDINGPROCESSING :: Issue_Resolution
pattern Issue_Resolution_PENDINGPROCESSING = Issue_Resolution "PENDING_PROCESSING"

{-# COMPLETE
  Issue_Resolution_RESOLUTIONUNSPECIFIED,
  Issue_Resolution_USERACTION,
  Issue_Resolution_PENDINGPROCESSING,
  Issue_Resolution #-}

-- | The severity of the issue.
newtype Issue_Severity = Issue_Severity { fromIssue_Severity :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified severity, never used.
pattern Issue_Severity_SEVERITYUNSPECIFIED :: Issue_Severity
pattern Issue_Severity_SEVERITYUNSPECIFIED = Issue_Severity "SEVERITY_UNSPECIFIED"

-- | Error severity. The issue prevents the usage of the whole item.
pattern Issue_Severity_Error' :: Issue_Severity
pattern Issue_Severity_Error' = Issue_Severity "ERROR"

-- | Warning severity. The issue is either one that prevents the usage of the attribute that triggered it or one that will soon prevent the usage of the whole item.
pattern Issue_Severity_Warning :: Issue_Severity
pattern Issue_Severity_Warning = Issue_Severity "WARNING"

-- | Info severity. The issue is one that doesn\'t require immediate attention. It is, for example, used to communicate which attributes are still pending review.
pattern Issue_Severity_Info :: Issue_Severity
pattern Issue_Severity_Info = Issue_Severity "INFO"

{-# COMPLETE
  Issue_Severity_SEVERITYUNSPECIFIED,
  Issue_Severity_Error',
  Issue_Severity_Warning,
  Issue_Severity_Info,
  Issue_Severity #-}

-- | The information to be included in the response. Only sections listed here will be returned.
newtype AccountsProductsGetInclude = AccountsProductsGetInclude { fromAccountsProductsGetInclude :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unknown, never used.
pattern AccountsProductsGetInclude_Unknown :: AccountsProductsGetInclude
pattern AccountsProductsGetInclude_Unknown = AccountsProductsGetInclude "UNKNOWN"

-- | Include the attributes of the product.
pattern AccountsProductsGetInclude_Attributes :: AccountsProductsGetInclude
pattern AccountsProductsGetInclude_Attributes = AccountsProductsGetInclude "ATTRIBUTES"

-- | Include the issues of the product.
pattern AccountsProductsGetInclude_Issues :: AccountsProductsGetInclude
pattern AccountsProductsGetInclude_Issues = AccountsProductsGetInclude "ISSUES"

-- | Include the destination statuses of the product.
pattern AccountsProductsGetInclude_DESTINATIONSTATUSES :: AccountsProductsGetInclude
pattern AccountsProductsGetInclude_DESTINATIONSTATUSES = AccountsProductsGetInclude "DESTINATION_STATUSES"

{-# COMPLETE
  AccountsProductsGetInclude_Unknown,
  AccountsProductsGetInclude_Attributes,
  AccountsProductsGetInclude_Issues,
  AccountsProductsGetInclude_DESTINATIONSTATUSES,
  AccountsProductsGetInclude #-}

-- | The information to be included in the response. Only sections listed here will be returned.
newtype AccountsProductsListInclude = AccountsProductsListInclude { fromAccountsProductsListInclude :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unknown, never used.
pattern AccountsProductsListInclude_Unknown :: AccountsProductsListInclude
pattern AccountsProductsListInclude_Unknown = AccountsProductsListInclude "UNKNOWN"

-- | Include the attributes of the product.
pattern AccountsProductsListInclude_Attributes :: AccountsProductsListInclude
pattern AccountsProductsListInclude_Attributes = AccountsProductsListInclude "ATTRIBUTES"

-- | Include the issues of the product.
pattern AccountsProductsListInclude_Issues :: AccountsProductsListInclude
pattern AccountsProductsListInclude_Issues = AccountsProductsListInclude "ISSUES"

-- | Include the destination statuses of the product.
pattern AccountsProductsListInclude_DESTINATIONSTATUSES :: AccountsProductsListInclude
pattern AccountsProductsListInclude_DESTINATIONSTATUSES = AccountsProductsListInclude "DESTINATION_STATUSES"

{-# COMPLETE
  AccountsProductsListInclude_Unknown,
  AccountsProductsListInclude_Attributes,
  AccountsProductsListInclude_Issues,
  AccountsProductsListInclude_DESTINATIONSTATUSES,
  AccountsProductsListInclude #-}
