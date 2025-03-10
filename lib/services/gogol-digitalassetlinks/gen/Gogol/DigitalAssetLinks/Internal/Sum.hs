{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DigitalAssetLinks.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.DigitalAssetLinks.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * BulkCheckResponse_BulkErrorCode
    BulkCheckResponse_BulkErrorCode
      ( BulkCheckResponse_BulkErrorCode_ERRORCODEUNSPECIFIED,
        BulkCheckResponse_BulkErrorCode_ERRORCODEINVALIDQUERY,
        BulkCheckResponse_BulkErrorCode_ERRORCODEFETCHERROR,
        BulkCheckResponse_BulkErrorCode_ERRORCODEFAILEDSSLVALIDATION,
        BulkCheckResponse_BulkErrorCode_ERRORCODEREDIRECT,
        BulkCheckResponse_BulkErrorCode_ERRORCODETOOLARGE,
        BulkCheckResponse_BulkErrorCode_ERRORCODEMALFORMEDHTTPRESPONSE,
        BulkCheckResponse_BulkErrorCode_ERRORCODEWRONGCONTENTTYPE,
        BulkCheckResponse_BulkErrorCode_ERRORCODEMALFORMEDCONTENT,
        BulkCheckResponse_BulkErrorCode_ERRORCODESECUREASSETINCLUDESINSECURE,
        BulkCheckResponse_BulkErrorCode_ERRORCODEFETCHBUDGETEXHAUSTED,
        ..
      ),

    -- * CheckResponse_ErrorCodeItem
    CheckResponse_ErrorCodeItem
      ( CheckResponse_ErrorCodeItem_ERRORCODEUNSPECIFIED,
        CheckResponse_ErrorCodeItem_ERRORCODEINVALIDQUERY,
        CheckResponse_ErrorCodeItem_ERRORCODEFETCHERROR,
        CheckResponse_ErrorCodeItem_ERRORCODEFAILEDSSLVALIDATION,
        CheckResponse_ErrorCodeItem_ERRORCODEREDIRECT,
        CheckResponse_ErrorCodeItem_ERRORCODETOOLARGE,
        CheckResponse_ErrorCodeItem_ERRORCODEMALFORMEDHTTPRESPONSE,
        CheckResponse_ErrorCodeItem_ERRORCODEWRONGCONTENTTYPE,
        CheckResponse_ErrorCodeItem_ERRORCODEMALFORMEDCONTENT,
        CheckResponse_ErrorCodeItem_ERRORCODESECUREASSETINCLUDESINSECURE,
        CheckResponse_ErrorCodeItem_ERRORCODEFETCHBUDGETEXHAUSTED,
        ..
      ),

    -- * ListResponse_ErrorCodeItem
    ListResponse_ErrorCodeItem
      ( ListResponse_ErrorCodeItem_ERRORCODEUNSPECIFIED,
        ListResponse_ErrorCodeItem_ERRORCODEINVALIDQUERY,
        ListResponse_ErrorCodeItem_ERRORCODEFETCHERROR,
        ListResponse_ErrorCodeItem_ERRORCODEFAILEDSSLVALIDATION,
        ListResponse_ErrorCodeItem_ERRORCODEREDIRECT,
        ListResponse_ErrorCodeItem_ERRORCODETOOLARGE,
        ListResponse_ErrorCodeItem_ERRORCODEMALFORMEDHTTPRESPONSE,
        ListResponse_ErrorCodeItem_ERRORCODEWRONGCONTENTTYPE,
        ListResponse_ErrorCodeItem_ERRORCODEMALFORMEDCONTENT,
        ListResponse_ErrorCodeItem_ERRORCODESECUREASSETINCLUDESINSECURE,
        ListResponse_ErrorCodeItem_ERRORCODEFETCHBUDGETEXHAUSTED,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
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
  Xgafv
  #-}

-- | Error code for the entire request. Present only if the entire request failed. Individual check errors will not trigger the presence of this field.
newtype BulkCheckResponse_BulkErrorCode = BulkCheckResponse_BulkErrorCode {fromBulkCheckResponse_BulkErrorCode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, otherwise unused.
pattern BulkCheckResponse_BulkErrorCode_ERRORCODEUNSPECIFIED :: BulkCheckResponse_BulkErrorCode
pattern BulkCheckResponse_BulkErrorCode_ERRORCODEUNSPECIFIED = BulkCheckResponse_BulkErrorCode "ERROR_CODE_UNSPECIFIED"

-- | Unable to parse query.
pattern BulkCheckResponse_BulkErrorCode_ERRORCODEINVALIDQUERY :: BulkCheckResponse_BulkErrorCode
pattern BulkCheckResponse_BulkErrorCode_ERRORCODEINVALIDQUERY = BulkCheckResponse_BulkErrorCode "ERROR_CODE_INVALID_QUERY"

-- | Unable to fetch the asset links data.
pattern BulkCheckResponse_BulkErrorCode_ERRORCODEFETCHERROR :: BulkCheckResponse_BulkErrorCode
pattern BulkCheckResponse_BulkErrorCode_ERRORCODEFETCHERROR = BulkCheckResponse_BulkErrorCode "ERROR_CODE_FETCH_ERROR"

-- | Invalid HTTPS certificate .
pattern BulkCheckResponse_BulkErrorCode_ERRORCODEFAILEDSSLVALIDATION :: BulkCheckResponse_BulkErrorCode
pattern BulkCheckResponse_BulkErrorCode_ERRORCODEFAILEDSSLVALIDATION = BulkCheckResponse_BulkErrorCode "ERROR_CODE_FAILED_SSL_VALIDATION"

-- | HTTP redirects (e.g, 301) are not allowed.
pattern BulkCheckResponse_BulkErrorCode_ERRORCODEREDIRECT :: BulkCheckResponse_BulkErrorCode
pattern BulkCheckResponse_BulkErrorCode_ERRORCODEREDIRECT = BulkCheckResponse_BulkErrorCode "ERROR_CODE_REDIRECT"

-- | Asset links data exceeds maximum size.
pattern BulkCheckResponse_BulkErrorCode_ERRORCODETOOLARGE :: BulkCheckResponse_BulkErrorCode
pattern BulkCheckResponse_BulkErrorCode_ERRORCODETOOLARGE = BulkCheckResponse_BulkErrorCode "ERROR_CODE_TOO_LARGE"

-- | Can\'t parse HTTP response.
pattern BulkCheckResponse_BulkErrorCode_ERRORCODEMALFORMEDHTTPRESPONSE :: BulkCheckResponse_BulkErrorCode
pattern BulkCheckResponse_BulkErrorCode_ERRORCODEMALFORMEDHTTPRESPONSE = BulkCheckResponse_BulkErrorCode "ERROR_CODE_MALFORMED_HTTP_RESPONSE"

-- | HTTP Content-type should be application\/json.
pattern BulkCheckResponse_BulkErrorCode_ERRORCODEWRONGCONTENTTYPE :: BulkCheckResponse_BulkErrorCode
pattern BulkCheckResponse_BulkErrorCode_ERRORCODEWRONGCONTENTTYPE = BulkCheckResponse_BulkErrorCode "ERROR_CODE_WRONG_CONTENT_TYPE"

-- | JSON content is malformed.
pattern BulkCheckResponse_BulkErrorCode_ERRORCODEMALFORMEDCONTENT :: BulkCheckResponse_BulkErrorCode
pattern BulkCheckResponse_BulkErrorCode_ERRORCODEMALFORMEDCONTENT = BulkCheckResponse_BulkErrorCode "ERROR_CODE_MALFORMED_CONTENT"

-- | A secure asset includes an insecure asset (security downgrade).
pattern BulkCheckResponse_BulkErrorCode_ERRORCODESECUREASSETINCLUDESINSECURE :: BulkCheckResponse_BulkErrorCode
pattern BulkCheckResponse_BulkErrorCode_ERRORCODESECUREASSETINCLUDESINSECURE = BulkCheckResponse_BulkErrorCode "ERROR_CODE_SECURE_ASSET_INCLUDES_INSECURE"

-- | Too many includes (maybe a loop).
pattern BulkCheckResponse_BulkErrorCode_ERRORCODEFETCHBUDGETEXHAUSTED :: BulkCheckResponse_BulkErrorCode
pattern BulkCheckResponse_BulkErrorCode_ERRORCODEFETCHBUDGETEXHAUSTED = BulkCheckResponse_BulkErrorCode "ERROR_CODE_FETCH_BUDGET_EXHAUSTED"

{-# COMPLETE
  BulkCheckResponse_BulkErrorCode_ERRORCODEUNSPECIFIED,
  BulkCheckResponse_BulkErrorCode_ERRORCODEINVALIDQUERY,
  BulkCheckResponse_BulkErrorCode_ERRORCODEFETCHERROR,
  BulkCheckResponse_BulkErrorCode_ERRORCODEFAILEDSSLVALIDATION,
  BulkCheckResponse_BulkErrorCode_ERRORCODEREDIRECT,
  BulkCheckResponse_BulkErrorCode_ERRORCODETOOLARGE,
  BulkCheckResponse_BulkErrorCode_ERRORCODEMALFORMEDHTTPRESPONSE,
  BulkCheckResponse_BulkErrorCode_ERRORCODEWRONGCONTENTTYPE,
  BulkCheckResponse_BulkErrorCode_ERRORCODEMALFORMEDCONTENT,
  BulkCheckResponse_BulkErrorCode_ERRORCODESECUREASSETINCLUDESINSECURE,
  BulkCheckResponse_BulkErrorCode_ERRORCODEFETCHBUDGETEXHAUSTED,
  BulkCheckResponse_BulkErrorCode
  #-}

newtype CheckResponse_ErrorCodeItem = CheckResponse_ErrorCodeItem {fromCheckResponse_ErrorCodeItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, otherwise unused.
pattern CheckResponse_ErrorCodeItem_ERRORCODEUNSPECIFIED :: CheckResponse_ErrorCodeItem
pattern CheckResponse_ErrorCodeItem_ERRORCODEUNSPECIFIED = CheckResponse_ErrorCodeItem "ERROR_CODE_UNSPECIFIED"

-- | Unable to parse query.
pattern CheckResponse_ErrorCodeItem_ERRORCODEINVALIDQUERY :: CheckResponse_ErrorCodeItem
pattern CheckResponse_ErrorCodeItem_ERRORCODEINVALIDQUERY = CheckResponse_ErrorCodeItem "ERROR_CODE_INVALID_QUERY"

-- | Unable to fetch the asset links data.
pattern CheckResponse_ErrorCodeItem_ERRORCODEFETCHERROR :: CheckResponse_ErrorCodeItem
pattern CheckResponse_ErrorCodeItem_ERRORCODEFETCHERROR = CheckResponse_ErrorCodeItem "ERROR_CODE_FETCH_ERROR"

-- | Invalid HTTPS certificate .
pattern CheckResponse_ErrorCodeItem_ERRORCODEFAILEDSSLVALIDATION :: CheckResponse_ErrorCodeItem
pattern CheckResponse_ErrorCodeItem_ERRORCODEFAILEDSSLVALIDATION = CheckResponse_ErrorCodeItem "ERROR_CODE_FAILED_SSL_VALIDATION"

-- | HTTP redirects (e.g, 301) are not allowed.
pattern CheckResponse_ErrorCodeItem_ERRORCODEREDIRECT :: CheckResponse_ErrorCodeItem
pattern CheckResponse_ErrorCodeItem_ERRORCODEREDIRECT = CheckResponse_ErrorCodeItem "ERROR_CODE_REDIRECT"

-- | Asset links data exceeds maximum size.
pattern CheckResponse_ErrorCodeItem_ERRORCODETOOLARGE :: CheckResponse_ErrorCodeItem
pattern CheckResponse_ErrorCodeItem_ERRORCODETOOLARGE = CheckResponse_ErrorCodeItem "ERROR_CODE_TOO_LARGE"

-- | Can\'t parse HTTP response.
pattern CheckResponse_ErrorCodeItem_ERRORCODEMALFORMEDHTTPRESPONSE :: CheckResponse_ErrorCodeItem
pattern CheckResponse_ErrorCodeItem_ERRORCODEMALFORMEDHTTPRESPONSE = CheckResponse_ErrorCodeItem "ERROR_CODE_MALFORMED_HTTP_RESPONSE"

-- | HTTP Content-type should be application\/json.
pattern CheckResponse_ErrorCodeItem_ERRORCODEWRONGCONTENTTYPE :: CheckResponse_ErrorCodeItem
pattern CheckResponse_ErrorCodeItem_ERRORCODEWRONGCONTENTTYPE = CheckResponse_ErrorCodeItem "ERROR_CODE_WRONG_CONTENT_TYPE"

-- | JSON content is malformed.
pattern CheckResponse_ErrorCodeItem_ERRORCODEMALFORMEDCONTENT :: CheckResponse_ErrorCodeItem
pattern CheckResponse_ErrorCodeItem_ERRORCODEMALFORMEDCONTENT = CheckResponse_ErrorCodeItem "ERROR_CODE_MALFORMED_CONTENT"

-- | A secure asset includes an insecure asset (security downgrade).
pattern CheckResponse_ErrorCodeItem_ERRORCODESECUREASSETINCLUDESINSECURE :: CheckResponse_ErrorCodeItem
pattern CheckResponse_ErrorCodeItem_ERRORCODESECUREASSETINCLUDESINSECURE = CheckResponse_ErrorCodeItem "ERROR_CODE_SECURE_ASSET_INCLUDES_INSECURE"

-- | Too many includes (maybe a loop).
pattern CheckResponse_ErrorCodeItem_ERRORCODEFETCHBUDGETEXHAUSTED :: CheckResponse_ErrorCodeItem
pattern CheckResponse_ErrorCodeItem_ERRORCODEFETCHBUDGETEXHAUSTED = CheckResponse_ErrorCodeItem "ERROR_CODE_FETCH_BUDGET_EXHAUSTED"

{-# COMPLETE
  CheckResponse_ErrorCodeItem_ERRORCODEUNSPECIFIED,
  CheckResponse_ErrorCodeItem_ERRORCODEINVALIDQUERY,
  CheckResponse_ErrorCodeItem_ERRORCODEFETCHERROR,
  CheckResponse_ErrorCodeItem_ERRORCODEFAILEDSSLVALIDATION,
  CheckResponse_ErrorCodeItem_ERRORCODEREDIRECT,
  CheckResponse_ErrorCodeItem_ERRORCODETOOLARGE,
  CheckResponse_ErrorCodeItem_ERRORCODEMALFORMEDHTTPRESPONSE,
  CheckResponse_ErrorCodeItem_ERRORCODEWRONGCONTENTTYPE,
  CheckResponse_ErrorCodeItem_ERRORCODEMALFORMEDCONTENT,
  CheckResponse_ErrorCodeItem_ERRORCODESECUREASSETINCLUDESINSECURE,
  CheckResponse_ErrorCodeItem_ERRORCODEFETCHBUDGETEXHAUSTED,
  CheckResponse_ErrorCodeItem
  #-}

newtype ListResponse_ErrorCodeItem = ListResponse_ErrorCodeItem {fromListResponse_ErrorCodeItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value, otherwise unused.
pattern ListResponse_ErrorCodeItem_ERRORCODEUNSPECIFIED :: ListResponse_ErrorCodeItem
pattern ListResponse_ErrorCodeItem_ERRORCODEUNSPECIFIED = ListResponse_ErrorCodeItem "ERROR_CODE_UNSPECIFIED"

-- | Unable to parse query.
pattern ListResponse_ErrorCodeItem_ERRORCODEINVALIDQUERY :: ListResponse_ErrorCodeItem
pattern ListResponse_ErrorCodeItem_ERRORCODEINVALIDQUERY = ListResponse_ErrorCodeItem "ERROR_CODE_INVALID_QUERY"

-- | Unable to fetch the asset links data.
pattern ListResponse_ErrorCodeItem_ERRORCODEFETCHERROR :: ListResponse_ErrorCodeItem
pattern ListResponse_ErrorCodeItem_ERRORCODEFETCHERROR = ListResponse_ErrorCodeItem "ERROR_CODE_FETCH_ERROR"

-- | Invalid HTTPS certificate .
pattern ListResponse_ErrorCodeItem_ERRORCODEFAILEDSSLVALIDATION :: ListResponse_ErrorCodeItem
pattern ListResponse_ErrorCodeItem_ERRORCODEFAILEDSSLVALIDATION = ListResponse_ErrorCodeItem "ERROR_CODE_FAILED_SSL_VALIDATION"

-- | HTTP redirects (e.g, 301) are not allowed.
pattern ListResponse_ErrorCodeItem_ERRORCODEREDIRECT :: ListResponse_ErrorCodeItem
pattern ListResponse_ErrorCodeItem_ERRORCODEREDIRECT = ListResponse_ErrorCodeItem "ERROR_CODE_REDIRECT"

-- | Asset links data exceeds maximum size.
pattern ListResponse_ErrorCodeItem_ERRORCODETOOLARGE :: ListResponse_ErrorCodeItem
pattern ListResponse_ErrorCodeItem_ERRORCODETOOLARGE = ListResponse_ErrorCodeItem "ERROR_CODE_TOO_LARGE"

-- | Can\'t parse HTTP response.
pattern ListResponse_ErrorCodeItem_ERRORCODEMALFORMEDHTTPRESPONSE :: ListResponse_ErrorCodeItem
pattern ListResponse_ErrorCodeItem_ERRORCODEMALFORMEDHTTPRESPONSE = ListResponse_ErrorCodeItem "ERROR_CODE_MALFORMED_HTTP_RESPONSE"

-- | HTTP Content-type should be application\/json.
pattern ListResponse_ErrorCodeItem_ERRORCODEWRONGCONTENTTYPE :: ListResponse_ErrorCodeItem
pattern ListResponse_ErrorCodeItem_ERRORCODEWRONGCONTENTTYPE = ListResponse_ErrorCodeItem "ERROR_CODE_WRONG_CONTENT_TYPE"

-- | JSON content is malformed.
pattern ListResponse_ErrorCodeItem_ERRORCODEMALFORMEDCONTENT :: ListResponse_ErrorCodeItem
pattern ListResponse_ErrorCodeItem_ERRORCODEMALFORMEDCONTENT = ListResponse_ErrorCodeItem "ERROR_CODE_MALFORMED_CONTENT"

-- | A secure asset includes an insecure asset (security downgrade).
pattern ListResponse_ErrorCodeItem_ERRORCODESECUREASSETINCLUDESINSECURE :: ListResponse_ErrorCodeItem
pattern ListResponse_ErrorCodeItem_ERRORCODESECUREASSETINCLUDESINSECURE = ListResponse_ErrorCodeItem "ERROR_CODE_SECURE_ASSET_INCLUDES_INSECURE"

-- | Too many includes (maybe a loop).
pattern ListResponse_ErrorCodeItem_ERRORCODEFETCHBUDGETEXHAUSTED :: ListResponse_ErrorCodeItem
pattern ListResponse_ErrorCodeItem_ERRORCODEFETCHBUDGETEXHAUSTED = ListResponse_ErrorCodeItem "ERROR_CODE_FETCH_BUDGET_EXHAUSTED"

{-# COMPLETE
  ListResponse_ErrorCodeItem_ERRORCODEUNSPECIFIED,
  ListResponse_ErrorCodeItem_ERRORCODEINVALIDQUERY,
  ListResponse_ErrorCodeItem_ERRORCODEFETCHERROR,
  ListResponse_ErrorCodeItem_ERRORCODEFAILEDSSLVALIDATION,
  ListResponse_ErrorCodeItem_ERRORCODEREDIRECT,
  ListResponse_ErrorCodeItem_ERRORCODETOOLARGE,
  ListResponse_ErrorCodeItem_ERRORCODEMALFORMEDHTTPRESPONSE,
  ListResponse_ErrorCodeItem_ERRORCODEWRONGCONTENTTYPE,
  ListResponse_ErrorCodeItem_ERRORCODEMALFORMEDCONTENT,
  ListResponse_ErrorCodeItem_ERRORCODESECUREASSETINCLUDESINSECURE,
  ListResponse_ErrorCodeItem_ERRORCODEFETCHBUDGETEXHAUSTED,
  ListResponse_ErrorCodeItem
  #-}
