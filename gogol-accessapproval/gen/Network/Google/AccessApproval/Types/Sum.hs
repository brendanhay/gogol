{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AccessApproval.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AccessApproval.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Type of access justification.
data AccessReasonType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Default value for proto, shouldn\'t be used.
    | CustomerInitiatedSupport
      -- ^ @CUSTOMER_INITIATED_SUPPORT@
      -- Customer made a request or raised an issue that required the principal
      -- to access customer data. \`detail\` is of the form (\"#####\" is the
      -- issue ID):
      --
      -- 1.  \"Feedback Report: #####\"
      -- 2.  \"Case Number: #####\"
      -- 3.  \"Case ID: #####\"
      -- 4.  \"E-PIN Reference: #####\"
      -- 5.  \"Google-#####\"
      -- 6.  \"T-#####\"
    | GoogleInitiatedService
      -- ^ @GOOGLE_INITIATED_SERVICE@
      -- The principal accessed customer data in order to diagnose or resolve a
      -- suspected issue in services or a known outage. Often this access is used
      -- to confirm that customers are not affected by a suspected service issue
      -- or to remediate a reversible system issue.
    | GoogleInitiatedReview
      -- ^ @GOOGLE_INITIATED_REVIEW@
      -- Google initiated service for security, fraud, abuse, or compliance
      -- purposes.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccessReasonType

instance FromHttpApiData AccessReasonType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "CUSTOMER_INITIATED_SUPPORT" -> Right CustomerInitiatedSupport
        "GOOGLE_INITIATED_SERVICE" -> Right GoogleInitiatedService
        "GOOGLE_INITIATED_REVIEW" -> Right GoogleInitiatedReview
        x -> Left ("Unable to parse AccessReasonType from: " <> x)

instance ToHttpApiData AccessReasonType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        CustomerInitiatedSupport -> "CUSTOMER_INITIATED_SUPPORT"
        GoogleInitiatedService -> "GOOGLE_INITIATED_SERVICE"
        GoogleInitiatedReview -> "GOOGLE_INITIATED_REVIEW"

instance FromJSON AccessReasonType where
    parseJSON = parseJSONText "AccessReasonType"

instance ToJSON AccessReasonType where
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
