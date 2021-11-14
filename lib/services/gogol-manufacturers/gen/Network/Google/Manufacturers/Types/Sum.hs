{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Manufacturers.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Manufacturers.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The status of the destination.
data DestinationStatusStatus
    = Unknown
      -- ^ @UNKNOWN@
      -- Unspecified status, never used.
    | Active
      -- ^ @ACTIVE@
      -- The product is used for this destination.
    | Pending
      -- ^ @PENDING@
      -- The decision is still pending.
    | DisApproved
      -- ^ @DISAPPROVED@
      -- The product is disapproved. Please look at the issues.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DestinationStatusStatus

instance FromHttpApiData DestinationStatusStatus where
    parseQueryParam = \case
        "UNKNOWN" -> Right Unknown
        "ACTIVE" -> Right Active
        "PENDING" -> Right Pending
        "DISAPPROVED" -> Right DisApproved
        x -> Left ("Unable to parse DestinationStatusStatus from: " <> x)

instance ToHttpApiData DestinationStatusStatus where
    toQueryParam = \case
        Unknown -> "UNKNOWN"
        Active -> "ACTIVE"
        Pending -> "PENDING"
        DisApproved -> "DISAPPROVED"

instance FromJSON DestinationStatusStatus where
    parseJSON = parseJSONText "DestinationStatusStatus"

instance ToJSON DestinationStatusStatus where
    toJSON = toJSONText

-- | What needs to happen to resolve the issue.
data IssueResolution
    = ResolutionUnspecified
      -- ^ @RESOLUTION_UNSPECIFIED@
      -- Unspecified resolution, never used.
    | UserAction
      -- ^ @USER_ACTION@
      -- The user who provided the data must act in order to resolve the issue
      -- (for example by correcting some data).
    | PendingProcessing
      -- ^ @PENDING_PROCESSING@
      -- The issue will be resolved automatically (for example image crawl or
      -- Google review). No action is required now. Resolution might lead to
      -- another issue (for example if crawl fails).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable IssueResolution

instance FromHttpApiData IssueResolution where
    parseQueryParam = \case
        "RESOLUTION_UNSPECIFIED" -> Right ResolutionUnspecified
        "USER_ACTION" -> Right UserAction
        "PENDING_PROCESSING" -> Right PendingProcessing
        x -> Left ("Unable to parse IssueResolution from: " <> x)

instance ToHttpApiData IssueResolution where
    toQueryParam = \case
        ResolutionUnspecified -> "RESOLUTION_UNSPECIFIED"
        UserAction -> "USER_ACTION"
        PendingProcessing -> "PENDING_PROCESSING"

instance FromJSON IssueResolution where
    parseJSON = parseJSONText "IssueResolution"

instance ToJSON IssueResolution where
    toJSON = toJSONText

-- | The information to be included in the response. Only sections listed
-- here will be returned.
data AccountsProductsGetInclude
    = APGIUnknown
      -- ^ @UNKNOWN@
      -- Unknown, never used.
    | APGIAttributes
      -- ^ @ATTRIBUTES@
      -- Include the attributes of the product.
    | APGIIssues
      -- ^ @ISSUES@
      -- Include the issues of the product.
    | APGIDestinationStatuses
      -- ^ @DESTINATION_STATUSES@
      -- Include the destination statuses of the product.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountsProductsGetInclude

instance FromHttpApiData AccountsProductsGetInclude where
    parseQueryParam = \case
        "UNKNOWN" -> Right APGIUnknown
        "ATTRIBUTES" -> Right APGIAttributes
        "ISSUES" -> Right APGIIssues
        "DESTINATION_STATUSES" -> Right APGIDestinationStatuses
        x -> Left ("Unable to parse AccountsProductsGetInclude from: " <> x)

instance ToHttpApiData AccountsProductsGetInclude where
    toQueryParam = \case
        APGIUnknown -> "UNKNOWN"
        APGIAttributes -> "ATTRIBUTES"
        APGIIssues -> "ISSUES"
        APGIDestinationStatuses -> "DESTINATION_STATUSES"

instance FromJSON AccountsProductsGetInclude where
    parseJSON = parseJSONText "AccountsProductsGetInclude"

instance ToJSON AccountsProductsGetInclude where
    toJSON = toJSONText

-- | The status of the image. \'OutputOnly
data ImageStatus
    = ISStatusUnspecified
      -- ^ @STATUS_UNSPECIFIED@
      -- The image status is unspecified. Should not be used.
    | ISPendingProcessing
      -- ^ @PENDING_PROCESSING@
      -- The image was uploaded and is being processed.
    | ISPendingCrawl
      -- ^ @PENDING_CRAWL@
      -- The image crawl is still pending.
    | ISOK
      -- ^ @OK@
      -- The image was processed and it meets the requirements.
    | ISRoboted
      -- ^ @ROBOTED@
      -- The image URL is protected by robots.txt file and cannot be crawled.
    | ISXroboted
      -- ^ @XROBOTED@
      -- The image URL is protected by X-Robots-Tag and cannot be crawled.
    | ISCrawlError
      -- ^ @CRAWL_ERROR@
      -- There was an error while crawling the image.
    | ISProcessingError
      -- ^ @PROCESSING_ERROR@
      -- The image cannot be processed.
    | ISDecodingError
      -- ^ @DECODING_ERROR@
      -- The image cannot be decoded.
    | ISTooBig
      -- ^ @TOO_BIG@
      -- The image is too big.
    | ISCrawlSkipped
      -- ^ @CRAWL_SKIPPED@
      -- The image was manually overridden and will not be crawled.
    | ISHostLoaded
      -- ^ @HOSTLOADED@
      -- The image crawl was postponed to avoid overloading the host.
    | ISHTTP404
      -- ^ @HTTP_404@
      -- The image URL returned a \"404 Not Found\" error.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ImageStatus

instance FromHttpApiData ImageStatus where
    parseQueryParam = \case
        "STATUS_UNSPECIFIED" -> Right ISStatusUnspecified
        "PENDING_PROCESSING" -> Right ISPendingProcessing
        "PENDING_CRAWL" -> Right ISPendingCrawl
        "OK" -> Right ISOK
        "ROBOTED" -> Right ISRoboted
        "XROBOTED" -> Right ISXroboted
        "CRAWL_ERROR" -> Right ISCrawlError
        "PROCESSING_ERROR" -> Right ISProcessingError
        "DECODING_ERROR" -> Right ISDecodingError
        "TOO_BIG" -> Right ISTooBig
        "CRAWL_SKIPPED" -> Right ISCrawlSkipped
        "HOSTLOADED" -> Right ISHostLoaded
        "HTTP_404" -> Right ISHTTP404
        x -> Left ("Unable to parse ImageStatus from: " <> x)

instance ToHttpApiData ImageStatus where
    toQueryParam = \case
        ISStatusUnspecified -> "STATUS_UNSPECIFIED"
        ISPendingProcessing -> "PENDING_PROCESSING"
        ISPendingCrawl -> "PENDING_CRAWL"
        ISOK -> "OK"
        ISRoboted -> "ROBOTED"
        ISXroboted -> "XROBOTED"
        ISCrawlError -> "CRAWL_ERROR"
        ISProcessingError -> "PROCESSING_ERROR"
        ISDecodingError -> "DECODING_ERROR"
        ISTooBig -> "TOO_BIG"
        ISCrawlSkipped -> "CRAWL_SKIPPED"
        ISHostLoaded -> "HOSTLOADED"
        ISHTTP404 -> "HTTP_404"

instance FromJSON ImageStatus where
    parseJSON = parseJSONText "ImageStatus"

instance ToJSON ImageStatus where
    toJSON = toJSONText

-- | The information to be included in the response. Only sections listed
-- here will be returned.
data AccountsProductsListInclude
    = APLIUnknown
      -- ^ @UNKNOWN@
      -- Unknown, never used.
    | APLIAttributes
      -- ^ @ATTRIBUTES@
      -- Include the attributes of the product.
    | APLIIssues
      -- ^ @ISSUES@
      -- Include the issues of the product.
    | APLIDestinationStatuses
      -- ^ @DESTINATION_STATUSES@
      -- Include the destination statuses of the product.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountsProductsListInclude

instance FromHttpApiData AccountsProductsListInclude where
    parseQueryParam = \case
        "UNKNOWN" -> Right APLIUnknown
        "ATTRIBUTES" -> Right APLIAttributes
        "ISSUES" -> Right APLIIssues
        "DESTINATION_STATUSES" -> Right APLIDestinationStatuses
        x -> Left ("Unable to parse AccountsProductsListInclude from: " <> x)

instance ToHttpApiData AccountsProductsListInclude where
    toQueryParam = \case
        APLIUnknown -> "UNKNOWN"
        APLIAttributes -> "ATTRIBUTES"
        APLIIssues -> "ISSUES"
        APLIDestinationStatuses -> "DESTINATION_STATUSES"

instance FromJSON AccountsProductsListInclude where
    parseJSON = parseJSONText "AccountsProductsListInclude"

instance ToJSON AccountsProductsListInclude where
    toJSON = toJSONText

-- | The type of the image, i.e., crawled or uploaded. \'OutputOnly
data ImageType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Type is unspecified. Should not be used.
    | Crawled
      -- ^ @CRAWLED@
      -- The image was crawled from a provided URL.
    | Uploaded
      -- ^ @UPLOADED@
      -- The image was uploaded.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ImageType

instance FromHttpApiData ImageType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "CRAWLED" -> Right Crawled
        "UPLOADED" -> Right Uploaded
        x -> Left ("Unable to parse ImageType from: " <> x)

instance ToHttpApiData ImageType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        Crawled -> "CRAWLED"
        Uploaded -> "UPLOADED"

instance FromJSON ImageType where
    parseJSON = parseJSONText "ImageType"

instance ToJSON ImageType where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | The severity of the issue.
data IssueSeverity
    = SeverityUnspecified
      -- ^ @SEVERITY_UNSPECIFIED@
      -- Unspecified severity, never used.
    | Error'
      -- ^ @ERROR@
      -- Error severity. The issue prevents the usage of the whole item.
    | Warning
      -- ^ @WARNING@
      -- Warning severity. The issue is either one that prevents the usage of the
      -- attribute that triggered it or one that will soon prevent the usage of
      -- the whole item.
    | Info
      -- ^ @INFO@
      -- Info severity. The issue is one that doesn\'t require immediate
      -- attention. It is, for example, used to communicate which attributes are
      -- still pending review.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable IssueSeverity

instance FromHttpApiData IssueSeverity where
    parseQueryParam = \case
        "SEVERITY_UNSPECIFIED" -> Right SeverityUnspecified
        "ERROR" -> Right Error'
        "WARNING" -> Right Warning
        "INFO" -> Right Info
        x -> Left ("Unable to parse IssueSeverity from: " <> x)

instance ToHttpApiData IssueSeverity where
    toQueryParam = \case
        SeverityUnspecified -> "SEVERITY_UNSPECIFIED"
        Error' -> "ERROR"
        Warning -> "WARNING"
        Info -> "INFO"

instance FromJSON IssueSeverity where
    parseJSON = parseJSONText "IssueSeverity"

instance ToJSON IssueSeverity where
    toJSON = toJSONText
