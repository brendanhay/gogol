{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.YouTubeReporting.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.YouTubeReporting.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * GdataCompositeMedia_ReferenceType
    GdataCompositeMedia_ReferenceType
      (
        GdataCompositeMedia_ReferenceType_Path,
        GdataCompositeMedia_ReferenceType_BLOBREF,
        GdataCompositeMedia_ReferenceType_Inline,
        GdataCompositeMedia_ReferenceType_BIGSTOREREF,
        GdataCompositeMedia_ReferenceType_COSMOBINARYREFERENCE,
        ..
      ),

    -- * GdataMedia_ReferenceType
    GdataMedia_ReferenceType
      (
        GdataMedia_ReferenceType_Path,
        GdataMedia_ReferenceType_BLOBREF,
        GdataMedia_ReferenceType_Inline,
        GdataMedia_ReferenceType_GETMEDIA,
        GdataMedia_ReferenceType_COMPOSITEMEDIA,
        GdataMedia_ReferenceType_BIGSTOREREF,
        GdataMedia_ReferenceType_DIFFVERSIONRESPONSE,
        GdataMedia_ReferenceType_DIFFCHECKSUMSRESPONSE,
        GdataMedia_ReferenceType_DIFFDOWNLOADRESPONSE,
        GdataMedia_ReferenceType_DIFFUPLOADREQUEST,
        GdataMedia_ReferenceType_DIFFUPLOADRESPONSE,
        GdataMedia_ReferenceType_COSMOBINARYREFERENCE,
        GdataMedia_ReferenceType_ARBITRARYBYTES,
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

-- | gdata
newtype GdataCompositeMedia_ReferenceType = GdataCompositeMedia_ReferenceType { fromGdataCompositeMedia_ReferenceType :: Core.Text }
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

-- | gdata
pattern GdataCompositeMedia_ReferenceType_Path :: GdataCompositeMedia_ReferenceType
pattern GdataCompositeMedia_ReferenceType_Path = GdataCompositeMedia_ReferenceType "PATH"

-- | gdata
pattern GdataCompositeMedia_ReferenceType_BLOBREF :: GdataCompositeMedia_ReferenceType
pattern GdataCompositeMedia_ReferenceType_BLOBREF = GdataCompositeMedia_ReferenceType "BLOB_REF"

-- | gdata
pattern GdataCompositeMedia_ReferenceType_Inline :: GdataCompositeMedia_ReferenceType
pattern GdataCompositeMedia_ReferenceType_Inline = GdataCompositeMedia_ReferenceType "INLINE"

-- | gdata
pattern GdataCompositeMedia_ReferenceType_BIGSTOREREF :: GdataCompositeMedia_ReferenceType
pattern GdataCompositeMedia_ReferenceType_BIGSTOREREF = GdataCompositeMedia_ReferenceType "BIGSTORE_REF"

-- | gdata
pattern GdataCompositeMedia_ReferenceType_COSMOBINARYREFERENCE :: GdataCompositeMedia_ReferenceType
pattern GdataCompositeMedia_ReferenceType_COSMOBINARYREFERENCE = GdataCompositeMedia_ReferenceType "COSMO_BINARY_REFERENCE"

{-# COMPLETE
  GdataCompositeMedia_ReferenceType_Path,
  GdataCompositeMedia_ReferenceType_BLOBREF,
  GdataCompositeMedia_ReferenceType_Inline,
  GdataCompositeMedia_ReferenceType_BIGSTOREREF,
  GdataCompositeMedia_ReferenceType_COSMOBINARYREFERENCE,
  GdataCompositeMedia_ReferenceType #-}

-- | gdata
newtype GdataMedia_ReferenceType = GdataMedia_ReferenceType { fromGdataMedia_ReferenceType :: Core.Text }
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

-- | gdata
pattern GdataMedia_ReferenceType_Path :: GdataMedia_ReferenceType
pattern GdataMedia_ReferenceType_Path = GdataMedia_ReferenceType "PATH"

-- | gdata
pattern GdataMedia_ReferenceType_BLOBREF :: GdataMedia_ReferenceType
pattern GdataMedia_ReferenceType_BLOBREF = GdataMedia_ReferenceType "BLOB_REF"

-- | gdata
pattern GdataMedia_ReferenceType_Inline :: GdataMedia_ReferenceType
pattern GdataMedia_ReferenceType_Inline = GdataMedia_ReferenceType "INLINE"

-- | gdata
pattern GdataMedia_ReferenceType_GETMEDIA :: GdataMedia_ReferenceType
pattern GdataMedia_ReferenceType_GETMEDIA = GdataMedia_ReferenceType "GET_MEDIA"

-- | gdata
pattern GdataMedia_ReferenceType_COMPOSITEMEDIA :: GdataMedia_ReferenceType
pattern GdataMedia_ReferenceType_COMPOSITEMEDIA = GdataMedia_ReferenceType "COMPOSITE_MEDIA"

-- | gdata
pattern GdataMedia_ReferenceType_BIGSTOREREF :: GdataMedia_ReferenceType
pattern GdataMedia_ReferenceType_BIGSTOREREF = GdataMedia_ReferenceType "BIGSTORE_REF"

-- | gdata
pattern GdataMedia_ReferenceType_DIFFVERSIONRESPONSE :: GdataMedia_ReferenceType
pattern GdataMedia_ReferenceType_DIFFVERSIONRESPONSE = GdataMedia_ReferenceType "DIFF_VERSION_RESPONSE"

-- | gdata
pattern GdataMedia_ReferenceType_DIFFCHECKSUMSRESPONSE :: GdataMedia_ReferenceType
pattern GdataMedia_ReferenceType_DIFFCHECKSUMSRESPONSE = GdataMedia_ReferenceType "DIFF_CHECKSUMS_RESPONSE"

-- | gdata
pattern GdataMedia_ReferenceType_DIFFDOWNLOADRESPONSE :: GdataMedia_ReferenceType
pattern GdataMedia_ReferenceType_DIFFDOWNLOADRESPONSE = GdataMedia_ReferenceType "DIFF_DOWNLOAD_RESPONSE"

-- | gdata
pattern GdataMedia_ReferenceType_DIFFUPLOADREQUEST :: GdataMedia_ReferenceType
pattern GdataMedia_ReferenceType_DIFFUPLOADREQUEST = GdataMedia_ReferenceType "DIFF_UPLOAD_REQUEST"

-- | gdata
pattern GdataMedia_ReferenceType_DIFFUPLOADRESPONSE :: GdataMedia_ReferenceType
pattern GdataMedia_ReferenceType_DIFFUPLOADRESPONSE = GdataMedia_ReferenceType "DIFF_UPLOAD_RESPONSE"

-- | gdata
pattern GdataMedia_ReferenceType_COSMOBINARYREFERENCE :: GdataMedia_ReferenceType
pattern GdataMedia_ReferenceType_COSMOBINARYREFERENCE = GdataMedia_ReferenceType "COSMO_BINARY_REFERENCE"

-- | gdata
pattern GdataMedia_ReferenceType_ARBITRARYBYTES :: GdataMedia_ReferenceType
pattern GdataMedia_ReferenceType_ARBITRARYBYTES = GdataMedia_ReferenceType "ARBITRARY_BYTES"

{-# COMPLETE
  GdataMedia_ReferenceType_Path,
  GdataMedia_ReferenceType_BLOBREF,
  GdataMedia_ReferenceType_Inline,
  GdataMedia_ReferenceType_GETMEDIA,
  GdataMedia_ReferenceType_COMPOSITEMEDIA,
  GdataMedia_ReferenceType_BIGSTOREREF,
  GdataMedia_ReferenceType_DIFFVERSIONRESPONSE,
  GdataMedia_ReferenceType_DIFFCHECKSUMSRESPONSE,
  GdataMedia_ReferenceType_DIFFDOWNLOADRESPONSE,
  GdataMedia_ReferenceType_DIFFUPLOADREQUEST,
  GdataMedia_ReferenceType_DIFFUPLOADRESPONSE,
  GdataMedia_ReferenceType_COSMOBINARYREFERENCE,
  GdataMedia_ReferenceType_ARBITRARYBYTES,
  GdataMedia_ReferenceType #-}
