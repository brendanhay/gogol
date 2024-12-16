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
-- Module      : Gogol.YouTubeAnalytics.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.YouTubeAnalytics.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * ErrorProto_LocationType
    ErrorProto_LocationType
      (
        ErrorProto_LocationType_Path,
        ErrorProto_LocationType_Other,
        ErrorProto_LocationType_Parameter,
        ..
      ),

    -- * Errors_Code
    Errors_Code
      (
        Errors_Code_BADREQUEST,
        Errors_Code_Forbidden,
        Errors_Code_NOTFOUND,
        Errors_Code_Conflict,
        Errors_Code_Gone,
        Errors_Code_PRECONDITIONFAILED,
        Errors_Code_INTERNALERROR,
        Errors_Code_SERVICEUNAVAILABLE,
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

newtype ErrorProto_LocationType = ErrorProto_LocationType { fromErrorProto_LocationType :: Core.Text }
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

-- | location is an xpath-like path pointing to the request field that caused the error.
pattern ErrorProto_LocationType_Path :: ErrorProto_LocationType
pattern ErrorProto_LocationType_Path = ErrorProto_LocationType "PATH"

-- | other location type which can safely be shared externally.
pattern ErrorProto_LocationType_Other :: ErrorProto_LocationType
pattern ErrorProto_LocationType_Other = ErrorProto_LocationType "OTHER"

-- | Location is request parameter. This maps to the {\@link PARAMETERS} in {\@link MessageLocation}.
pattern ErrorProto_LocationType_Parameter :: ErrorProto_LocationType
pattern ErrorProto_LocationType_Parameter = ErrorProto_LocationType "PARAMETER"

{-# COMPLETE
  ErrorProto_LocationType_Path,
  ErrorProto_LocationType_Other,
  ErrorProto_LocationType_Parameter,
  ErrorProto_LocationType #-}

-- | Global error code. Deprecated and ignored. Set custom error codes in ErrorProto.domain and ErrorProto.code instead.
newtype Errors_Code = Errors_Code { fromErrors_Code :: Core.Text }
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

-- | 
pattern Errors_Code_BADREQUEST :: Errors_Code
pattern Errors_Code_BADREQUEST = Errors_Code "BAD_REQUEST"

-- | 
pattern Errors_Code_Forbidden :: Errors_Code
pattern Errors_Code_Forbidden = Errors_Code "FORBIDDEN"

-- | 
pattern Errors_Code_NOTFOUND :: Errors_Code
pattern Errors_Code_NOTFOUND = Errors_Code "NOT_FOUND"

-- | 
pattern Errors_Code_Conflict :: Errors_Code
pattern Errors_Code_Conflict = Errors_Code "CONFLICT"

-- | 
pattern Errors_Code_Gone :: Errors_Code
pattern Errors_Code_Gone = Errors_Code "GONE"

-- | 
pattern Errors_Code_PRECONDITIONFAILED :: Errors_Code
pattern Errors_Code_PRECONDITIONFAILED = Errors_Code "PRECONDITION_FAILED"

-- | 
pattern Errors_Code_INTERNALERROR :: Errors_Code
pattern Errors_Code_INTERNALERROR = Errors_Code "INTERNAL_ERROR"

-- | 
pattern Errors_Code_SERVICEUNAVAILABLE :: Errors_Code
pattern Errors_Code_SERVICEUNAVAILABLE = Errors_Code "SERVICE_UNAVAILABLE"

{-# COMPLETE
  Errors_Code_BADREQUEST,
  Errors_Code_Forbidden,
  Errors_Code_NOTFOUND,
  Errors_Code_Conflict,
  Errors_Code_Gone,
  Errors_Code_PRECONDITIONFAILED,
  Errors_Code_INTERNALERROR,
  Errors_Code_SERVICEUNAVAILABLE,
  Errors_Code #-}
