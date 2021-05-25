{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.YouTubeAnalytics.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.YouTubeAnalytics.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

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

data ErrorProtoLocationType
    = Path
      -- ^ @PATH@
      -- location is an xpath-like path pointing to the request field that caused
      -- the error.
    | Other
      -- ^ @OTHER@
      -- other location type which can safely be shared externally.
    | Parameter
      -- ^ @PARAMETER@
      -- Location is request parameter. This maps to the {\@link PARAMETERS} in
      -- {\@link MessageLocation}.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ErrorProtoLocationType

instance FromHttpApiData ErrorProtoLocationType where
    parseQueryParam = \case
        "PATH" -> Right Path
        "OTHER" -> Right Other
        "PARAMETER" -> Right Parameter
        x -> Left ("Unable to parse ErrorProtoLocationType from: " <> x)

instance ToHttpApiData ErrorProtoLocationType where
    toQueryParam = \case
        Path -> "PATH"
        Other -> "OTHER"
        Parameter -> "PARAMETER"

instance FromJSON ErrorProtoLocationType where
    parseJSON = parseJSONText "ErrorProtoLocationType"

instance ToJSON ErrorProtoLocationType where
    toJSON = toJSONText

-- | Global error code. Deprecated and ignored. Set custom error codes in
-- ErrorProto.domain and ErrorProto.code instead.
data ErrorsCode
    = BadRequest
      -- ^ @BAD_REQUEST@
    | ForBidden
      -- ^ @FORBIDDEN@
    | NotFound
      -- ^ @NOT_FOUND@
    | Conflict
      -- ^ @CONFLICT@
    | Gone
      -- ^ @GONE@
    | PreconditionFailed
      -- ^ @PRECONDITION_FAILED@
    | InternalError
      -- ^ @INTERNAL_ERROR@
    | ServiceUnavailable
      -- ^ @SERVICE_UNAVAILABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ErrorsCode

instance FromHttpApiData ErrorsCode where
    parseQueryParam = \case
        "BAD_REQUEST" -> Right BadRequest
        "FORBIDDEN" -> Right ForBidden
        "NOT_FOUND" -> Right NotFound
        "CONFLICT" -> Right Conflict
        "GONE" -> Right Gone
        "PRECONDITION_FAILED" -> Right PreconditionFailed
        "INTERNAL_ERROR" -> Right InternalError
        "SERVICE_UNAVAILABLE" -> Right ServiceUnavailable
        x -> Left ("Unable to parse ErrorsCode from: " <> x)

instance ToHttpApiData ErrorsCode where
    toQueryParam = \case
        BadRequest -> "BAD_REQUEST"
        ForBidden -> "FORBIDDEN"
        NotFound -> "NOT_FOUND"
        Conflict -> "CONFLICT"
        Gone -> "GONE"
        PreconditionFailed -> "PRECONDITION_FAILED"
        InternalError -> "INTERNAL_ERROR"
        ServiceUnavailable -> "SERVICE_UNAVAILABLE"

instance FromJSON ErrorsCode where
    parseJSON = parseJSONText "ErrorsCode"

instance ToJSON ErrorsCode where
    toJSON = toJSONText
