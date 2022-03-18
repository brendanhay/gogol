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
-- Module      : Gogol.CommentAnalyzer.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.CommentAnalyzer.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AttributeParameters_ScoreType
    AttributeParameters_ScoreType
      (
        AttributeParameters_ScoreType_SCORETYPEUNSPECIFIED,
        AttributeParameters_ScoreType_Probability,
        AttributeParameters_ScoreType_STDDEVSCORE,
        AttributeParameters_ScoreType_Percentile,
        AttributeParameters_ScoreType_Raw,
        ..
      ),

    -- * Score_Type
    Score_Type
      (
        Score_Type_SCORETYPEUNSPECIFIED,
        Score_Type_Probability,
        Score_Type_STDDEVSCORE,
        Score_Type_Percentile,
        Score_Type_Raw,
        ..
      ),

    -- * TextEntry_Type
    TextEntry_Type
      (
        TextEntry_Type_TEXTTYPEUNSPECIFIED,
        TextEntry_Type_PLAINTEXT,
        TextEntry_Type_Html,
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

-- | What type of scores to return. If unset, defaults to probability scores.
newtype AttributeParameters_ScoreType = AttributeParameters_ScoreType { fromAttributeParameters_ScoreType :: Core.Text }
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

-- | Unspecified. Defaults to PROBABILITY scores if available, and otherwise RAW. Every model has a RAW score.
pattern AttributeParameters_ScoreType_SCORETYPEUNSPECIFIED :: AttributeParameters_ScoreType
pattern AttributeParameters_ScoreType_SCORETYPEUNSPECIFIED = AttributeParameters_ScoreType "SCORE_TYPE_UNSPECIFIED"

-- | Probability scores are in the range [0, 1] and indicate level of confidence in the attribute label.
pattern AttributeParameters_ScoreType_Probability :: AttributeParameters_ScoreType
pattern AttributeParameters_ScoreType_Probability = AttributeParameters_ScoreType "PROBABILITY"

-- | Standard deviation scores are in the range (-inf, +inf).
pattern AttributeParameters_ScoreType_STDDEVSCORE :: AttributeParameters_ScoreType
pattern AttributeParameters_ScoreType_STDDEVSCORE = AttributeParameters_ScoreType "STD_DEV_SCORE"

-- | Percentile scores are in the range [0, 1] and indicate the percentile of the raw score, normalized with a test dataset. This is not generally recommended, as the normalization is dependent on the dataset used, which may not match other usecases.
pattern AttributeParameters_ScoreType_Percentile :: AttributeParameters_ScoreType
pattern AttributeParameters_ScoreType_Percentile = AttributeParameters_ScoreType "PERCENTILE"

-- | Raw scores are the raw values from the model, and may take any value. This is primarily for debugging\/testing, and not generally recommended.
pattern AttributeParameters_ScoreType_Raw :: AttributeParameters_ScoreType
pattern AttributeParameters_ScoreType_Raw = AttributeParameters_ScoreType "RAW"

{-# COMPLETE
  AttributeParameters_ScoreType_SCORETYPEUNSPECIFIED,
  AttributeParameters_ScoreType_Probability,
  AttributeParameters_ScoreType_STDDEVSCORE,
  AttributeParameters_ScoreType_Percentile,
  AttributeParameters_ScoreType_Raw,
  AttributeParameters_ScoreType #-}

-- | The type of the above value.
newtype Score_Type = Score_Type { fromScore_Type :: Core.Text }
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

-- | Unspecified. Defaults to PROBABILITY scores if available, and otherwise RAW. Every model has a RAW score.
pattern Score_Type_SCORETYPEUNSPECIFIED :: Score_Type
pattern Score_Type_SCORETYPEUNSPECIFIED = Score_Type "SCORE_TYPE_UNSPECIFIED"

-- | Probability scores are in the range [0, 1] and indicate level of confidence in the attribute label.
pattern Score_Type_Probability :: Score_Type
pattern Score_Type_Probability = Score_Type "PROBABILITY"

-- | Standard deviation scores are in the range (-inf, +inf).
pattern Score_Type_STDDEVSCORE :: Score_Type
pattern Score_Type_STDDEVSCORE = Score_Type "STD_DEV_SCORE"

-- | Percentile scores are in the range [0, 1] and indicate the percentile of the raw score, normalized with a test dataset. This is not generally recommended, as the normalization is dependent on the dataset used, which may not match other usecases.
pattern Score_Type_Percentile :: Score_Type
pattern Score_Type_Percentile = Score_Type "PERCENTILE"

-- | Raw scores are the raw values from the model, and may take any value. This is primarily for debugging\/testing, and not generally recommended.
pattern Score_Type_Raw :: Score_Type
pattern Score_Type_Raw = Score_Type "RAW"

{-# COMPLETE
  Score_Type_SCORETYPEUNSPECIFIED,
  Score_Type_Probability,
  Score_Type_STDDEVSCORE,
  Score_Type_Percentile,
  Score_Type_Raw,
  Score_Type #-}

-- | Type of the text field.
newtype TextEntry_Type = TextEntry_Type { fromTextEntry_Type :: Core.Text }
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

-- | The content type is not specified. Text will be interpreted as plain text by default.
pattern TextEntry_Type_TEXTTYPEUNSPECIFIED :: TextEntry_Type
pattern TextEntry_Type_TEXTTYPEUNSPECIFIED = TextEntry_Type "TEXT_TYPE_UNSPECIFIED"

-- | Plain text.
pattern TextEntry_Type_PLAINTEXT :: TextEntry_Type
pattern TextEntry_Type_PLAINTEXT = TextEntry_Type "PLAIN_TEXT"

-- | HTML.
pattern TextEntry_Type_Html :: TextEntry_Type
pattern TextEntry_Type_Html = TextEntry_Type "HTML"

{-# COMPLETE
  TextEntry_Type_TEXTTYPEUNSPECIFIED,
  TextEntry_Type_PLAINTEXT,
  TextEntry_Type_Html,
  TextEntry_Type #-}
