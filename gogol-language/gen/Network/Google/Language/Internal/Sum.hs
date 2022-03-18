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
-- Module      : Network.Google.Language.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.Language.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AnalyzeEntitiesRequest_EncodingType
    AnalyzeEntitiesRequest_EncodingType
      ( AnalyzeEntitiesRequest_EncodingType_None,
        AnalyzeEntitiesRequest_EncodingType_UTF8,
        AnalyzeEntitiesRequest_EncodingType_UTF16,
        AnalyzeEntitiesRequest_EncodingType_UTF32,
        ..
      ),

    -- * AnalyzeEntitySentimentRequest_EncodingType
    AnalyzeEntitySentimentRequest_EncodingType
      ( AnalyzeEntitySentimentRequest_EncodingType_None,
        AnalyzeEntitySentimentRequest_EncodingType_UTF8,
        AnalyzeEntitySentimentRequest_EncodingType_UTF16,
        AnalyzeEntitySentimentRequest_EncodingType_UTF32,
        ..
      ),

    -- * AnalyzeSentimentRequest_EncodingType
    AnalyzeSentimentRequest_EncodingType
      ( AnalyzeSentimentRequest_EncodingType_None,
        AnalyzeSentimentRequest_EncodingType_UTF8,
        AnalyzeSentimentRequest_EncodingType_UTF16,
        AnalyzeSentimentRequest_EncodingType_UTF32,
        ..
      ),

    -- * AnalyzeSyntaxRequest_EncodingType
    AnalyzeSyntaxRequest_EncodingType
      ( AnalyzeSyntaxRequest_EncodingType_None,
        AnalyzeSyntaxRequest_EncodingType_UTF8,
        AnalyzeSyntaxRequest_EncodingType_UTF16,
        AnalyzeSyntaxRequest_EncodingType_UTF32,
        ..
      ),

    -- * AnnotateTextRequest_EncodingType
    AnnotateTextRequest_EncodingType
      ( AnnotateTextRequest_EncodingType_None,
        AnnotateTextRequest_EncodingType_UTF8,
        AnnotateTextRequest_EncodingType_UTF16,
        AnnotateTextRequest_EncodingType_UTF32,
        ..
      ),

    -- * DependencyEdge_Label
    DependencyEdge_Label
      ( DependencyEdge_Label_Unknown,
        DependencyEdge_Label_Abbrev,
        DependencyEdge_Label_Acomp,
        DependencyEdge_Label_Advcl,
        DependencyEdge_Label_Advmod,
        DependencyEdge_Label_Amod,
        DependencyEdge_Label_Appos,
        DependencyEdge_Label_Attr,
        DependencyEdge_Label_Aux,
        DependencyEdge_Label_Auxpass,
        DependencyEdge_Label_CC,
        DependencyEdge_Label_Ccomp,
        DependencyEdge_Label_Conj,
        DependencyEdge_Label_Csubj,
        DependencyEdge_Label_Csubjpass,
        DependencyEdge_Label_Dep,
        DependencyEdge_Label_Det,
        DependencyEdge_Label_Discourse,
        DependencyEdge_Label_Dobj,
        DependencyEdge_Label_Expl,
        DependencyEdge_Label_Goeswith,
        DependencyEdge_Label_Iobj,
        DependencyEdge_Label_Mark,
        DependencyEdge_Label_Mwe,
        DependencyEdge_Label_Mwv,
        DependencyEdge_Label_Neg,
        DependencyEdge_Label_NN,
        DependencyEdge_Label_Npadvmod,
        DependencyEdge_Label_Nsubj,
        DependencyEdge_Label_Nsubjpass,
        DependencyEdge_Label_Num,
        DependencyEdge_Label_Number,
        DependencyEdge_Label_P,
        DependencyEdge_Label_Parataxis,
        DependencyEdge_Label_Partmod,
        DependencyEdge_Label_Pcomp,
        DependencyEdge_Label_Pobj,
        DependencyEdge_Label_Poss,
        DependencyEdge_Label_Postneg,
        DependencyEdge_Label_Precomp,
        DependencyEdge_Label_Preconj,
        DependencyEdge_Label_Predet,
        DependencyEdge_Label_Pref,
        DependencyEdge_Label_Prep,
        DependencyEdge_Label_Pronl,
        DependencyEdge_Label_Prt,
        DependencyEdge_Label_PS,
        DependencyEdge_Label_Quantmod,
        DependencyEdge_Label_Rcmod,
        DependencyEdge_Label_Rcmodrel,
        DependencyEdge_Label_Rdrop,
        DependencyEdge_Label_Ref,
        DependencyEdge_Label_Remnant,
        DependencyEdge_Label_Reparandum,
        DependencyEdge_Label_Root,
        DependencyEdge_Label_Snum,
        DependencyEdge_Label_Suff,
        DependencyEdge_Label_Tmod,
        DependencyEdge_Label_Topic,
        DependencyEdge_Label_Vmod,
        DependencyEdge_Label_Vocative,
        DependencyEdge_Label_Xcomp,
        DependencyEdge_Label_Suffix,
        DependencyEdge_Label_Title,
        DependencyEdge_Label_Advphmod,
        DependencyEdge_Label_Auxcaus,
        DependencyEdge_Label_Auxvv,
        DependencyEdge_Label_Dtmod,
        DependencyEdge_Label_Foreign,
        DependencyEdge_Label_KW,
        DependencyEdge_Label_List,
        DependencyEdge_Label_Nomc,
        DependencyEdge_Label_Nomcsubj,
        DependencyEdge_Label_Nomcsubjpass,
        DependencyEdge_Label_Numc,
        DependencyEdge_Label_Cop,
        DependencyEdge_Label_Dislocated,
        DependencyEdge_Label_Asp,
        DependencyEdge_Label_Gmod,
        DependencyEdge_Label_Gobj,
        DependencyEdge_Label_Infmod,
        DependencyEdge_Label_Mes,
        DependencyEdge_Label_Ncomp,
        ..
      ),

    -- * Document_Type
    Document_Type
      ( Document_Type_TYPEUNSPECIFIED,
        Document_Type_PLAINTEXT,
        Document_Type_Html,
        ..
      ),

    -- * Entity_Type
    Entity_Type
      ( Entity_Type_Unknown,
        Entity_Type_Person,
        Entity_Type_Location,
        Entity_Type_Organization,
        Entity_Type_Event,
        Entity_Type_WORKOFART,
        Entity_Type_CONSUMERGOOD,
        Entity_Type_Other,
        Entity_Type_PHONENUMBER,
        Entity_Type_Address,
        Entity_Type_Date,
        Entity_Type_Number,
        Entity_Type_Price,
        ..
      ),

    -- * EntityMention_Type
    EntityMention_Type
      ( EntityMention_Type_TYPEUNKNOWN,
        EntityMention_Type_Proper,
        EntityMention_Type_Common,
        ..
      ),

    -- * PartOfSpeech_Aspect
    PartOfSpeech_Aspect
      ( PartOfSpeech_Aspect_ASPECTUNKNOWN,
        PartOfSpeech_Aspect_Perfective,
        PartOfSpeech_Aspect_Imperfective,
        PartOfSpeech_Aspect_Progressive,
        ..
      ),

    -- * PartOfSpeech_Case
    PartOfSpeech_Case
      ( PartOfSpeech_Case_CASEUNKNOWN,
        PartOfSpeech_Case_Accusative,
        PartOfSpeech_Case_Adverbial,
        PartOfSpeech_Case_Complementive,
        PartOfSpeech_Case_Dative,
        PartOfSpeech_Case_Genitive,
        PartOfSpeech_Case_Instrumental,
        PartOfSpeech_Case_Locative,
        PartOfSpeech_Case_Nominative,
        PartOfSpeech_Case_Oblique,
        PartOfSpeech_Case_Partitive,
        PartOfSpeech_Case_Prepositional,
        PartOfSpeech_Case_REFLEXIVECASE,
        PartOfSpeech_Case_RELATIVECASE,
        PartOfSpeech_Case_Vocative,
        ..
      ),

    -- * PartOfSpeech_Form
    PartOfSpeech_Form
      ( PartOfSpeech_Form_FORMUNKNOWN,
        PartOfSpeech_Form_Adnomial,
        PartOfSpeech_Form_Auxiliary,
        PartOfSpeech_Form_Complementizer,
        PartOfSpeech_Form_FINALENDING,
        PartOfSpeech_Form_Gerund,
        PartOfSpeech_Form_Realis,
        PartOfSpeech_Form_Irrealis,
        PartOfSpeech_Form_Short,
        PartOfSpeech_Form_Long,
        PartOfSpeech_Form_Order,
        PartOfSpeech_Form_Specific,
        ..
      ),

    -- * PartOfSpeech_Gender
    PartOfSpeech_Gender
      ( PartOfSpeech_Gender_GENDERUNKNOWN,
        PartOfSpeech_Gender_Feminine,
        PartOfSpeech_Gender_Masculine,
        PartOfSpeech_Gender_Neuter,
        ..
      ),

    -- * PartOfSpeech_Mood
    PartOfSpeech_Mood
      ( PartOfSpeech_Mood_MOODUNKNOWN,
        PartOfSpeech_Mood_CONDITIONALMOOD,
        PartOfSpeech_Mood_Imperative,
        PartOfSpeech_Mood_Indicative,
        PartOfSpeech_Mood_Interrogative,
        PartOfSpeech_Mood_Jussive,
        PartOfSpeech_Mood_Subjunctive,
        ..
      ),

    -- * PartOfSpeech_Number
    PartOfSpeech_Number
      ( PartOfSpeech_Number_NUMBERUNKNOWN,
        PartOfSpeech_Number_Singular,
        PartOfSpeech_Number_Plural,
        PartOfSpeech_Number_Dual,
        ..
      ),

    -- * PartOfSpeech_Person
    PartOfSpeech_Person
      ( PartOfSpeech_Person_PERSONUNKNOWN,
        PartOfSpeech_Person_First,
        PartOfSpeech_Person_Second,
        PartOfSpeech_Person_Third,
        PartOfSpeech_Person_REFLEXIVEPERSON,
        ..
      ),

    -- * PartOfSpeech_Proper
    PartOfSpeech_Proper
      ( PartOfSpeech_Proper_PROPERUNKNOWN,
        PartOfSpeech_Proper_Proper,
        PartOfSpeech_Proper_NOTPROPER,
        ..
      ),

    -- * PartOfSpeech_Reciprocity
    PartOfSpeech_Reciprocity
      ( PartOfSpeech_Reciprocity_RECIPROCITYUNKNOWN,
        PartOfSpeech_Reciprocity_Reciprocal,
        PartOfSpeech_Reciprocity_NONRECIPROCAL,
        ..
      ),

    -- * PartOfSpeech_Tag
    PartOfSpeech_Tag
      ( PartOfSpeech_Tag_Unknown,
        PartOfSpeech_Tag_Adj,
        PartOfSpeech_Tag_Adp,
        PartOfSpeech_Tag_Adv,
        PartOfSpeech_Tag_Conj,
        PartOfSpeech_Tag_Det,
        PartOfSpeech_Tag_Noun,
        PartOfSpeech_Tag_Num,
        PartOfSpeech_Tag_Pron,
        PartOfSpeech_Tag_Prt,
        PartOfSpeech_Tag_Punct,
        PartOfSpeech_Tag_Verb,
        PartOfSpeech_Tag_X,
        PartOfSpeech_Tag_Affix,
        ..
      ),

    -- * PartOfSpeech_Tense
    PartOfSpeech_Tense
      ( PartOfSpeech_Tense_TENSEUNKNOWN,
        PartOfSpeech_Tense_CONDITIONALTENSE,
        PartOfSpeech_Tense_Future,
        PartOfSpeech_Tense_Past,
        PartOfSpeech_Tense_Present,
        PartOfSpeech_Tense_Imperfect,
        PartOfSpeech_Tense_Pluperfect,
        ..
      ),

    -- * PartOfSpeech_Voice
    PartOfSpeech_Voice
      ( PartOfSpeech_Voice_VOICEUNKNOWN,
        PartOfSpeech_Voice_Active,
        PartOfSpeech_Voice_Causative,
        PartOfSpeech_Voice_Passive,
        ..
      ),
  )
where

import qualified Network.Google.Prelude as Core

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

-- | The encoding type used by the API to calculate offsets.
newtype AnalyzeEntitiesRequest_EncodingType = AnalyzeEntitiesRequest_EncodingType {fromAnalyzeEntitiesRequest_EncodingType :: Core.Text}
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

-- | If @EncodingType@ is not specified, encoding-dependent information (such as @begin_offset@) will be set at @-1@.
pattern AnalyzeEntitiesRequest_EncodingType_None :: AnalyzeEntitiesRequest_EncodingType
pattern AnalyzeEntitiesRequest_EncodingType_None = AnalyzeEntitiesRequest_EncodingType "NONE"

-- | Encoding-dependent information (such as @begin_offset@) is calculated based on the UTF-8 encoding of the input. C++ and Go are examples of languages that use this encoding natively.
pattern AnalyzeEntitiesRequest_EncodingType_UTF8 :: AnalyzeEntitiesRequest_EncodingType
pattern AnalyzeEntitiesRequest_EncodingType_UTF8 = AnalyzeEntitiesRequest_EncodingType "UTF8"

-- | Encoding-dependent information (such as @begin_offset@) is calculated based on the UTF-16 encoding of the input. Java and JavaScript are examples of languages that use this encoding natively.
pattern AnalyzeEntitiesRequest_EncodingType_UTF16 :: AnalyzeEntitiesRequest_EncodingType
pattern AnalyzeEntitiesRequest_EncodingType_UTF16 = AnalyzeEntitiesRequest_EncodingType "UTF16"

-- | Encoding-dependent information (such as @begin_offset@) is calculated based on the UTF-32 encoding of the input. Python is an example of a language that uses this encoding natively.
pattern AnalyzeEntitiesRequest_EncodingType_UTF32 :: AnalyzeEntitiesRequest_EncodingType
pattern AnalyzeEntitiesRequest_EncodingType_UTF32 = AnalyzeEntitiesRequest_EncodingType "UTF32"

{-# COMPLETE
  AnalyzeEntitiesRequest_EncodingType_None,
  AnalyzeEntitiesRequest_EncodingType_UTF8,
  AnalyzeEntitiesRequest_EncodingType_UTF16,
  AnalyzeEntitiesRequest_EncodingType_UTF32,
  AnalyzeEntitiesRequest_EncodingType
  #-}

-- | The encoding type used by the API to calculate offsets.
newtype AnalyzeEntitySentimentRequest_EncodingType = AnalyzeEntitySentimentRequest_EncodingType {fromAnalyzeEntitySentimentRequest_EncodingType :: Core.Text}
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

-- | If @EncodingType@ is not specified, encoding-dependent information (such as @begin_offset@) will be set at @-1@.
pattern AnalyzeEntitySentimentRequest_EncodingType_None :: AnalyzeEntitySentimentRequest_EncodingType
pattern AnalyzeEntitySentimentRequest_EncodingType_None = AnalyzeEntitySentimentRequest_EncodingType "NONE"

-- | Encoding-dependent information (such as @begin_offset@) is calculated based on the UTF-8 encoding of the input. C++ and Go are examples of languages that use this encoding natively.
pattern AnalyzeEntitySentimentRequest_EncodingType_UTF8 :: AnalyzeEntitySentimentRequest_EncodingType
pattern AnalyzeEntitySentimentRequest_EncodingType_UTF8 = AnalyzeEntitySentimentRequest_EncodingType "UTF8"

-- | Encoding-dependent information (such as @begin_offset@) is calculated based on the UTF-16 encoding of the input. Java and JavaScript are examples of languages that use this encoding natively.
pattern AnalyzeEntitySentimentRequest_EncodingType_UTF16 :: AnalyzeEntitySentimentRequest_EncodingType
pattern AnalyzeEntitySentimentRequest_EncodingType_UTF16 = AnalyzeEntitySentimentRequest_EncodingType "UTF16"

-- | Encoding-dependent information (such as @begin_offset@) is calculated based on the UTF-32 encoding of the input. Python is an example of a language that uses this encoding natively.
pattern AnalyzeEntitySentimentRequest_EncodingType_UTF32 :: AnalyzeEntitySentimentRequest_EncodingType
pattern AnalyzeEntitySentimentRequest_EncodingType_UTF32 = AnalyzeEntitySentimentRequest_EncodingType "UTF32"

{-# COMPLETE
  AnalyzeEntitySentimentRequest_EncodingType_None,
  AnalyzeEntitySentimentRequest_EncodingType_UTF8,
  AnalyzeEntitySentimentRequest_EncodingType_UTF16,
  AnalyzeEntitySentimentRequest_EncodingType_UTF32,
  AnalyzeEntitySentimentRequest_EncodingType
  #-}

-- | The encoding type used by the API to calculate sentence offsets.
newtype AnalyzeSentimentRequest_EncodingType = AnalyzeSentimentRequest_EncodingType {fromAnalyzeSentimentRequest_EncodingType :: Core.Text}
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

-- | If @EncodingType@ is not specified, encoding-dependent information (such as @begin_offset@) will be set at @-1@.
pattern AnalyzeSentimentRequest_EncodingType_None :: AnalyzeSentimentRequest_EncodingType
pattern AnalyzeSentimentRequest_EncodingType_None = AnalyzeSentimentRequest_EncodingType "NONE"

-- | Encoding-dependent information (such as @begin_offset@) is calculated based on the UTF-8 encoding of the input. C++ and Go are examples of languages that use this encoding natively.
pattern AnalyzeSentimentRequest_EncodingType_UTF8 :: AnalyzeSentimentRequest_EncodingType
pattern AnalyzeSentimentRequest_EncodingType_UTF8 = AnalyzeSentimentRequest_EncodingType "UTF8"

-- | Encoding-dependent information (such as @begin_offset@) is calculated based on the UTF-16 encoding of the input. Java and JavaScript are examples of languages that use this encoding natively.
pattern AnalyzeSentimentRequest_EncodingType_UTF16 :: AnalyzeSentimentRequest_EncodingType
pattern AnalyzeSentimentRequest_EncodingType_UTF16 = AnalyzeSentimentRequest_EncodingType "UTF16"

-- | Encoding-dependent information (such as @begin_offset@) is calculated based on the UTF-32 encoding of the input. Python is an example of a language that uses this encoding natively.
pattern AnalyzeSentimentRequest_EncodingType_UTF32 :: AnalyzeSentimentRequest_EncodingType
pattern AnalyzeSentimentRequest_EncodingType_UTF32 = AnalyzeSentimentRequest_EncodingType "UTF32"

{-# COMPLETE
  AnalyzeSentimentRequest_EncodingType_None,
  AnalyzeSentimentRequest_EncodingType_UTF8,
  AnalyzeSentimentRequest_EncodingType_UTF16,
  AnalyzeSentimentRequest_EncodingType_UTF32,
  AnalyzeSentimentRequest_EncodingType
  #-}

-- | The encoding type used by the API to calculate offsets.
newtype AnalyzeSyntaxRequest_EncodingType = AnalyzeSyntaxRequest_EncodingType {fromAnalyzeSyntaxRequest_EncodingType :: Core.Text}
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

-- | If @EncodingType@ is not specified, encoding-dependent information (such as @begin_offset@) will be set at @-1@.
pattern AnalyzeSyntaxRequest_EncodingType_None :: AnalyzeSyntaxRequest_EncodingType
pattern AnalyzeSyntaxRequest_EncodingType_None = AnalyzeSyntaxRequest_EncodingType "NONE"

-- | Encoding-dependent information (such as @begin_offset@) is calculated based on the UTF-8 encoding of the input. C++ and Go are examples of languages that use this encoding natively.
pattern AnalyzeSyntaxRequest_EncodingType_UTF8 :: AnalyzeSyntaxRequest_EncodingType
pattern AnalyzeSyntaxRequest_EncodingType_UTF8 = AnalyzeSyntaxRequest_EncodingType "UTF8"

-- | Encoding-dependent information (such as @begin_offset@) is calculated based on the UTF-16 encoding of the input. Java and JavaScript are examples of languages that use this encoding natively.
pattern AnalyzeSyntaxRequest_EncodingType_UTF16 :: AnalyzeSyntaxRequest_EncodingType
pattern AnalyzeSyntaxRequest_EncodingType_UTF16 = AnalyzeSyntaxRequest_EncodingType "UTF16"

-- | Encoding-dependent information (such as @begin_offset@) is calculated based on the UTF-32 encoding of the input. Python is an example of a language that uses this encoding natively.
pattern AnalyzeSyntaxRequest_EncodingType_UTF32 :: AnalyzeSyntaxRequest_EncodingType
pattern AnalyzeSyntaxRequest_EncodingType_UTF32 = AnalyzeSyntaxRequest_EncodingType "UTF32"

{-# COMPLETE
  AnalyzeSyntaxRequest_EncodingType_None,
  AnalyzeSyntaxRequest_EncodingType_UTF8,
  AnalyzeSyntaxRequest_EncodingType_UTF16,
  AnalyzeSyntaxRequest_EncodingType_UTF32,
  AnalyzeSyntaxRequest_EncodingType
  #-}

-- | The encoding type used by the API to calculate offsets.
newtype AnnotateTextRequest_EncodingType = AnnotateTextRequest_EncodingType {fromAnnotateTextRequest_EncodingType :: Core.Text}
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

-- | If @EncodingType@ is not specified, encoding-dependent information (such as @begin_offset@) will be set at @-1@.
pattern AnnotateTextRequest_EncodingType_None :: AnnotateTextRequest_EncodingType
pattern AnnotateTextRequest_EncodingType_None = AnnotateTextRequest_EncodingType "NONE"

-- | Encoding-dependent information (such as @begin_offset@) is calculated based on the UTF-8 encoding of the input. C++ and Go are examples of languages that use this encoding natively.
pattern AnnotateTextRequest_EncodingType_UTF8 :: AnnotateTextRequest_EncodingType
pattern AnnotateTextRequest_EncodingType_UTF8 = AnnotateTextRequest_EncodingType "UTF8"

-- | Encoding-dependent information (such as @begin_offset@) is calculated based on the UTF-16 encoding of the input. Java and JavaScript are examples of languages that use this encoding natively.
pattern AnnotateTextRequest_EncodingType_UTF16 :: AnnotateTextRequest_EncodingType
pattern AnnotateTextRequest_EncodingType_UTF16 = AnnotateTextRequest_EncodingType "UTF16"

-- | Encoding-dependent information (such as @begin_offset@) is calculated based on the UTF-32 encoding of the input. Python is an example of a language that uses this encoding natively.
pattern AnnotateTextRequest_EncodingType_UTF32 :: AnnotateTextRequest_EncodingType
pattern AnnotateTextRequest_EncodingType_UTF32 = AnnotateTextRequest_EncodingType "UTF32"

{-# COMPLETE
  AnnotateTextRequest_EncodingType_None,
  AnnotateTextRequest_EncodingType_UTF8,
  AnnotateTextRequest_EncodingType_UTF16,
  AnnotateTextRequest_EncodingType_UTF32,
  AnnotateTextRequest_EncodingType
  #-}

-- | The parse label for the token.
newtype DependencyEdge_Label = DependencyEdge_Label {fromDependencyEdge_Label :: Core.Text}
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

-- | Unknown
pattern DependencyEdge_Label_Unknown :: DependencyEdge_Label
pattern DependencyEdge_Label_Unknown = DependencyEdge_Label "UNKNOWN"

-- | Abbreviation modifier
pattern DependencyEdge_Label_Abbrev :: DependencyEdge_Label
pattern DependencyEdge_Label_Abbrev = DependencyEdge_Label "ABBREV"

-- | Adjectival complement
pattern DependencyEdge_Label_Acomp :: DependencyEdge_Label
pattern DependencyEdge_Label_Acomp = DependencyEdge_Label "ACOMP"

-- | Adverbial clause modifier
pattern DependencyEdge_Label_Advcl :: DependencyEdge_Label
pattern DependencyEdge_Label_Advcl = DependencyEdge_Label "ADVCL"

-- | Adverbial modifier
pattern DependencyEdge_Label_Advmod :: DependencyEdge_Label
pattern DependencyEdge_Label_Advmod = DependencyEdge_Label "ADVMOD"

-- | Adjectival modifier of an NP
pattern DependencyEdge_Label_Amod :: DependencyEdge_Label
pattern DependencyEdge_Label_Amod = DependencyEdge_Label "AMOD"

-- | Appositional modifier of an NP
pattern DependencyEdge_Label_Appos :: DependencyEdge_Label
pattern DependencyEdge_Label_Appos = DependencyEdge_Label "APPOS"

-- | Attribute dependent of a copular verb
pattern DependencyEdge_Label_Attr :: DependencyEdge_Label
pattern DependencyEdge_Label_Attr = DependencyEdge_Label "ATTR"

-- | Auxiliary (non-main) verb
pattern DependencyEdge_Label_Aux :: DependencyEdge_Label
pattern DependencyEdge_Label_Aux = DependencyEdge_Label "AUX"

-- | Passive auxiliary
pattern DependencyEdge_Label_Auxpass :: DependencyEdge_Label
pattern DependencyEdge_Label_Auxpass = DependencyEdge_Label "AUXPASS"

-- | Coordinating conjunction
pattern DependencyEdge_Label_CC :: DependencyEdge_Label
pattern DependencyEdge_Label_CC = DependencyEdge_Label "CC"

-- | Clausal complement of a verb or adjective
pattern DependencyEdge_Label_Ccomp :: DependencyEdge_Label
pattern DependencyEdge_Label_Ccomp = DependencyEdge_Label "CCOMP"

-- | Conjunct
pattern DependencyEdge_Label_Conj :: DependencyEdge_Label
pattern DependencyEdge_Label_Conj = DependencyEdge_Label "CONJ"

-- | Clausal subject
pattern DependencyEdge_Label_Csubj :: DependencyEdge_Label
pattern DependencyEdge_Label_Csubj = DependencyEdge_Label "CSUBJ"

-- | Clausal passive subject
pattern DependencyEdge_Label_Csubjpass :: DependencyEdge_Label
pattern DependencyEdge_Label_Csubjpass = DependencyEdge_Label "CSUBJPASS"

-- | Dependency (unable to determine)
pattern DependencyEdge_Label_Dep :: DependencyEdge_Label
pattern DependencyEdge_Label_Dep = DependencyEdge_Label "DEP"

-- | Determiner
pattern DependencyEdge_Label_Det :: DependencyEdge_Label
pattern DependencyEdge_Label_Det = DependencyEdge_Label "DET"

-- | Discourse
pattern DependencyEdge_Label_Discourse :: DependencyEdge_Label
pattern DependencyEdge_Label_Discourse = DependencyEdge_Label "DISCOURSE"

-- | Direct object
pattern DependencyEdge_Label_Dobj :: DependencyEdge_Label
pattern DependencyEdge_Label_Dobj = DependencyEdge_Label "DOBJ"

-- | Expletive
pattern DependencyEdge_Label_Expl :: DependencyEdge_Label
pattern DependencyEdge_Label_Expl = DependencyEdge_Label "EXPL"

-- | Goes with (part of a word in a text not well edited)
pattern DependencyEdge_Label_Goeswith :: DependencyEdge_Label
pattern DependencyEdge_Label_Goeswith = DependencyEdge_Label "GOESWITH"

-- | Indirect object
pattern DependencyEdge_Label_Iobj :: DependencyEdge_Label
pattern DependencyEdge_Label_Iobj = DependencyEdge_Label "IOBJ"

-- | Marker (word introducing a subordinate clause)
pattern DependencyEdge_Label_Mark :: DependencyEdge_Label
pattern DependencyEdge_Label_Mark = DependencyEdge_Label "MARK"

-- | Multi-word expression
pattern DependencyEdge_Label_Mwe :: DependencyEdge_Label
pattern DependencyEdge_Label_Mwe = DependencyEdge_Label "MWE"

-- | Multi-word verbal expression
pattern DependencyEdge_Label_Mwv :: DependencyEdge_Label
pattern DependencyEdge_Label_Mwv = DependencyEdge_Label "MWV"

-- | Negation modifier
pattern DependencyEdge_Label_Neg :: DependencyEdge_Label
pattern DependencyEdge_Label_Neg = DependencyEdge_Label "NEG"

-- | Noun compound modifier
pattern DependencyEdge_Label_NN :: DependencyEdge_Label
pattern DependencyEdge_Label_NN = DependencyEdge_Label "NN"

-- | Noun phrase used as an adverbial modifier
pattern DependencyEdge_Label_Npadvmod :: DependencyEdge_Label
pattern DependencyEdge_Label_Npadvmod = DependencyEdge_Label "NPADVMOD"

-- | Nominal subject
pattern DependencyEdge_Label_Nsubj :: DependencyEdge_Label
pattern DependencyEdge_Label_Nsubj = DependencyEdge_Label "NSUBJ"

-- | Passive nominal subject
pattern DependencyEdge_Label_Nsubjpass :: DependencyEdge_Label
pattern DependencyEdge_Label_Nsubjpass = DependencyEdge_Label "NSUBJPASS"

-- | Numeric modifier of a noun
pattern DependencyEdge_Label_Num :: DependencyEdge_Label
pattern DependencyEdge_Label_Num = DependencyEdge_Label "NUM"

-- | Element of compound number
pattern DependencyEdge_Label_Number :: DependencyEdge_Label
pattern DependencyEdge_Label_Number = DependencyEdge_Label "NUMBER"

-- | Punctuation mark
pattern DependencyEdge_Label_P :: DependencyEdge_Label
pattern DependencyEdge_Label_P = DependencyEdge_Label "P"

-- | Parataxis relation
pattern DependencyEdge_Label_Parataxis :: DependencyEdge_Label
pattern DependencyEdge_Label_Parataxis = DependencyEdge_Label "PARATAXIS"

-- | Participial modifier
pattern DependencyEdge_Label_Partmod :: DependencyEdge_Label
pattern DependencyEdge_Label_Partmod = DependencyEdge_Label "PARTMOD"

-- | The complement of a preposition is a clause
pattern DependencyEdge_Label_Pcomp :: DependencyEdge_Label
pattern DependencyEdge_Label_Pcomp = DependencyEdge_Label "PCOMP"

-- | Object of a preposition
pattern DependencyEdge_Label_Pobj :: DependencyEdge_Label
pattern DependencyEdge_Label_Pobj = DependencyEdge_Label "POBJ"

-- | Possession modifier
pattern DependencyEdge_Label_Poss :: DependencyEdge_Label
pattern DependencyEdge_Label_Poss = DependencyEdge_Label "POSS"

-- | Postverbal negative particle
pattern DependencyEdge_Label_Postneg :: DependencyEdge_Label
pattern DependencyEdge_Label_Postneg = DependencyEdge_Label "POSTNEG"

-- | Predicate complement
pattern DependencyEdge_Label_Precomp :: DependencyEdge_Label
pattern DependencyEdge_Label_Precomp = DependencyEdge_Label "PRECOMP"

-- | Preconjunt
pattern DependencyEdge_Label_Preconj :: DependencyEdge_Label
pattern DependencyEdge_Label_Preconj = DependencyEdge_Label "PRECONJ"

-- | Predeterminer
pattern DependencyEdge_Label_Predet :: DependencyEdge_Label
pattern DependencyEdge_Label_Predet = DependencyEdge_Label "PREDET"

-- | Prefix
pattern DependencyEdge_Label_Pref :: DependencyEdge_Label
pattern DependencyEdge_Label_Pref = DependencyEdge_Label "PREF"

-- | Prepositional modifier
pattern DependencyEdge_Label_Prep :: DependencyEdge_Label
pattern DependencyEdge_Label_Prep = DependencyEdge_Label "PREP"

-- | The relationship between a verb and verbal morpheme
pattern DependencyEdge_Label_Pronl :: DependencyEdge_Label
pattern DependencyEdge_Label_Pronl = DependencyEdge_Label "PRONL"

-- | Particle
pattern DependencyEdge_Label_Prt :: DependencyEdge_Label
pattern DependencyEdge_Label_Prt = DependencyEdge_Label "PRT"

-- | Associative or possessive marker
pattern DependencyEdge_Label_PS :: DependencyEdge_Label
pattern DependencyEdge_Label_PS = DependencyEdge_Label "PS"

-- | Quantifier phrase modifier
pattern DependencyEdge_Label_Quantmod :: DependencyEdge_Label
pattern DependencyEdge_Label_Quantmod = DependencyEdge_Label "QUANTMOD"

-- | Relative clause modifier
pattern DependencyEdge_Label_Rcmod :: DependencyEdge_Label
pattern DependencyEdge_Label_Rcmod = DependencyEdge_Label "RCMOD"

-- | Complementizer in relative clause
pattern DependencyEdge_Label_Rcmodrel :: DependencyEdge_Label
pattern DependencyEdge_Label_Rcmodrel = DependencyEdge_Label "RCMODREL"

-- | Ellipsis without a preceding predicate
pattern DependencyEdge_Label_Rdrop :: DependencyEdge_Label
pattern DependencyEdge_Label_Rdrop = DependencyEdge_Label "RDROP"

-- | Referent
pattern DependencyEdge_Label_Ref :: DependencyEdge_Label
pattern DependencyEdge_Label_Ref = DependencyEdge_Label "REF"

-- | Remnant
pattern DependencyEdge_Label_Remnant :: DependencyEdge_Label
pattern DependencyEdge_Label_Remnant = DependencyEdge_Label "REMNANT"

-- | Reparandum
pattern DependencyEdge_Label_Reparandum :: DependencyEdge_Label
pattern DependencyEdge_Label_Reparandum = DependencyEdge_Label "REPARANDUM"

-- | Root
pattern DependencyEdge_Label_Root :: DependencyEdge_Label
pattern DependencyEdge_Label_Root = DependencyEdge_Label "ROOT"

-- | Suffix specifying a unit of number
pattern DependencyEdge_Label_Snum :: DependencyEdge_Label
pattern DependencyEdge_Label_Snum = DependencyEdge_Label "SNUM"

-- | Suffix
pattern DependencyEdge_Label_Suff :: DependencyEdge_Label
pattern DependencyEdge_Label_Suff = DependencyEdge_Label "SUFF"

-- | Temporal modifier
pattern DependencyEdge_Label_Tmod :: DependencyEdge_Label
pattern DependencyEdge_Label_Tmod = DependencyEdge_Label "TMOD"

-- | Topic marker
pattern DependencyEdge_Label_Topic :: DependencyEdge_Label
pattern DependencyEdge_Label_Topic = DependencyEdge_Label "TOPIC"

-- | Clause headed by an infinite form of the verb that modifies a noun
pattern DependencyEdge_Label_Vmod :: DependencyEdge_Label
pattern DependencyEdge_Label_Vmod = DependencyEdge_Label "VMOD"

-- | Vocative
pattern DependencyEdge_Label_Vocative :: DependencyEdge_Label
pattern DependencyEdge_Label_Vocative = DependencyEdge_Label "VOCATIVE"

-- | Open clausal complement
pattern DependencyEdge_Label_Xcomp :: DependencyEdge_Label
pattern DependencyEdge_Label_Xcomp = DependencyEdge_Label "XCOMP"

-- | Name suffix
pattern DependencyEdge_Label_Suffix :: DependencyEdge_Label
pattern DependencyEdge_Label_Suffix = DependencyEdge_Label "SUFFIX"

-- | Name title
pattern DependencyEdge_Label_Title :: DependencyEdge_Label
pattern DependencyEdge_Label_Title = DependencyEdge_Label "TITLE"

-- | Adverbial phrase modifier
pattern DependencyEdge_Label_Advphmod :: DependencyEdge_Label
pattern DependencyEdge_Label_Advphmod = DependencyEdge_Label "ADVPHMOD"

-- | Causative auxiliary
pattern DependencyEdge_Label_Auxcaus :: DependencyEdge_Label
pattern DependencyEdge_Label_Auxcaus = DependencyEdge_Label "AUXCAUS"

-- | Helper auxiliary
pattern DependencyEdge_Label_Auxvv :: DependencyEdge_Label
pattern DependencyEdge_Label_Auxvv = DependencyEdge_Label "AUXVV"

-- | Rentaishi (Prenominal modifier)
pattern DependencyEdge_Label_Dtmod :: DependencyEdge_Label
pattern DependencyEdge_Label_Dtmod = DependencyEdge_Label "DTMOD"

-- | Foreign words
pattern DependencyEdge_Label_Foreign :: DependencyEdge_Label
pattern DependencyEdge_Label_Foreign = DependencyEdge_Label "FOREIGN"

-- | Keyword
pattern DependencyEdge_Label_KW :: DependencyEdge_Label
pattern DependencyEdge_Label_KW = DependencyEdge_Label "KW"

-- | List for chains of comparable items
pattern DependencyEdge_Label_List :: DependencyEdge_Label
pattern DependencyEdge_Label_List = DependencyEdge_Label "LIST"

-- | Nominalized clause
pattern DependencyEdge_Label_Nomc :: DependencyEdge_Label
pattern DependencyEdge_Label_Nomc = DependencyEdge_Label "NOMC"

-- | Nominalized clausal subject
pattern DependencyEdge_Label_Nomcsubj :: DependencyEdge_Label
pattern DependencyEdge_Label_Nomcsubj = DependencyEdge_Label "NOMCSUBJ"

-- | Nominalized clausal passive
pattern DependencyEdge_Label_Nomcsubjpass :: DependencyEdge_Label
pattern DependencyEdge_Label_Nomcsubjpass = DependencyEdge_Label "NOMCSUBJPASS"

-- | Compound of numeric modifier
pattern DependencyEdge_Label_Numc :: DependencyEdge_Label
pattern DependencyEdge_Label_Numc = DependencyEdge_Label "NUMC"

-- | Copula
pattern DependencyEdge_Label_Cop :: DependencyEdge_Label
pattern DependencyEdge_Label_Cop = DependencyEdge_Label "COP"

-- | Dislocated relation (for fronted\/topicalized elements)
pattern DependencyEdge_Label_Dislocated :: DependencyEdge_Label
pattern DependencyEdge_Label_Dislocated = DependencyEdge_Label "DISLOCATED"

-- | Aspect marker
pattern DependencyEdge_Label_Asp :: DependencyEdge_Label
pattern DependencyEdge_Label_Asp = DependencyEdge_Label "ASP"

-- | Genitive modifier
pattern DependencyEdge_Label_Gmod :: DependencyEdge_Label
pattern DependencyEdge_Label_Gmod = DependencyEdge_Label "GMOD"

-- | Genitive object
pattern DependencyEdge_Label_Gobj :: DependencyEdge_Label
pattern DependencyEdge_Label_Gobj = DependencyEdge_Label "GOBJ"

-- | Infinitival modifier
pattern DependencyEdge_Label_Infmod :: DependencyEdge_Label
pattern DependencyEdge_Label_Infmod = DependencyEdge_Label "INFMOD"

-- | Measure
pattern DependencyEdge_Label_Mes :: DependencyEdge_Label
pattern DependencyEdge_Label_Mes = DependencyEdge_Label "MES"

-- | Nominal complement of a noun
pattern DependencyEdge_Label_Ncomp :: DependencyEdge_Label
pattern DependencyEdge_Label_Ncomp = DependencyEdge_Label "NCOMP"

{-# COMPLETE
  DependencyEdge_Label_Unknown,
  DependencyEdge_Label_Abbrev,
  DependencyEdge_Label_Acomp,
  DependencyEdge_Label_Advcl,
  DependencyEdge_Label_Advmod,
  DependencyEdge_Label_Amod,
  DependencyEdge_Label_Appos,
  DependencyEdge_Label_Attr,
  DependencyEdge_Label_Aux,
  DependencyEdge_Label_Auxpass,
  DependencyEdge_Label_CC,
  DependencyEdge_Label_Ccomp,
  DependencyEdge_Label_Conj,
  DependencyEdge_Label_Csubj,
  DependencyEdge_Label_Csubjpass,
  DependencyEdge_Label_Dep,
  DependencyEdge_Label_Det,
  DependencyEdge_Label_Discourse,
  DependencyEdge_Label_Dobj,
  DependencyEdge_Label_Expl,
  DependencyEdge_Label_Goeswith,
  DependencyEdge_Label_Iobj,
  DependencyEdge_Label_Mark,
  DependencyEdge_Label_Mwe,
  DependencyEdge_Label_Mwv,
  DependencyEdge_Label_Neg,
  DependencyEdge_Label_NN,
  DependencyEdge_Label_Npadvmod,
  DependencyEdge_Label_Nsubj,
  DependencyEdge_Label_Nsubjpass,
  DependencyEdge_Label_Num,
  DependencyEdge_Label_Number,
  DependencyEdge_Label_P,
  DependencyEdge_Label_Parataxis,
  DependencyEdge_Label_Partmod,
  DependencyEdge_Label_Pcomp,
  DependencyEdge_Label_Pobj,
  DependencyEdge_Label_Poss,
  DependencyEdge_Label_Postneg,
  DependencyEdge_Label_Precomp,
  DependencyEdge_Label_Preconj,
  DependencyEdge_Label_Predet,
  DependencyEdge_Label_Pref,
  DependencyEdge_Label_Prep,
  DependencyEdge_Label_Pronl,
  DependencyEdge_Label_Prt,
  DependencyEdge_Label_PS,
  DependencyEdge_Label_Quantmod,
  DependencyEdge_Label_Rcmod,
  DependencyEdge_Label_Rcmodrel,
  DependencyEdge_Label_Rdrop,
  DependencyEdge_Label_Ref,
  DependencyEdge_Label_Remnant,
  DependencyEdge_Label_Reparandum,
  DependencyEdge_Label_Root,
  DependencyEdge_Label_Snum,
  DependencyEdge_Label_Suff,
  DependencyEdge_Label_Tmod,
  DependencyEdge_Label_Topic,
  DependencyEdge_Label_Vmod,
  DependencyEdge_Label_Vocative,
  DependencyEdge_Label_Xcomp,
  DependencyEdge_Label_Suffix,
  DependencyEdge_Label_Title,
  DependencyEdge_Label_Advphmod,
  DependencyEdge_Label_Auxcaus,
  DependencyEdge_Label_Auxvv,
  DependencyEdge_Label_Dtmod,
  DependencyEdge_Label_Foreign,
  DependencyEdge_Label_KW,
  DependencyEdge_Label_List,
  DependencyEdge_Label_Nomc,
  DependencyEdge_Label_Nomcsubj,
  DependencyEdge_Label_Nomcsubjpass,
  DependencyEdge_Label_Numc,
  DependencyEdge_Label_Cop,
  DependencyEdge_Label_Dislocated,
  DependencyEdge_Label_Asp,
  DependencyEdge_Label_Gmod,
  DependencyEdge_Label_Gobj,
  DependencyEdge_Label_Infmod,
  DependencyEdge_Label_Mes,
  DependencyEdge_Label_Ncomp,
  DependencyEdge_Label
  #-}

-- | Required. If the type is not set or is @TYPE_UNSPECIFIED@, returns an @INVALID_ARGUMENT@ error.
newtype Document_Type = Document_Type {fromDocument_Type :: Core.Text}
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

-- | The content type is not specified.
pattern Document_Type_TYPEUNSPECIFIED :: Document_Type
pattern Document_Type_TYPEUNSPECIFIED = Document_Type "TYPE_UNSPECIFIED"

-- | Plain text
pattern Document_Type_PLAINTEXT :: Document_Type
pattern Document_Type_PLAINTEXT = Document_Type "PLAIN_TEXT"

-- | HTML
pattern Document_Type_Html :: Document_Type
pattern Document_Type_Html = Document_Type "HTML"

{-# COMPLETE
  Document_Type_TYPEUNSPECIFIED,
  Document_Type_PLAINTEXT,
  Document_Type_Html,
  Document_Type
  #-}

-- | The entity type.
newtype Entity_Type = Entity_Type {fromEntity_Type :: Core.Text}
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

-- | Unknown
pattern Entity_Type_Unknown :: Entity_Type
pattern Entity_Type_Unknown = Entity_Type "UNKNOWN"

-- | Person
pattern Entity_Type_Person :: Entity_Type
pattern Entity_Type_Person = Entity_Type "PERSON"

-- | Location
pattern Entity_Type_Location :: Entity_Type
pattern Entity_Type_Location = Entity_Type "LOCATION"

-- | Organization
pattern Entity_Type_Organization :: Entity_Type
pattern Entity_Type_Organization = Entity_Type "ORGANIZATION"

-- | Event
pattern Entity_Type_Event :: Entity_Type
pattern Entity_Type_Event = Entity_Type "EVENT"

-- | Artwork
pattern Entity_Type_WORKOFART :: Entity_Type
pattern Entity_Type_WORKOFART = Entity_Type "WORK_OF_ART"

-- | Consumer product
pattern Entity_Type_CONSUMERGOOD :: Entity_Type
pattern Entity_Type_CONSUMERGOOD = Entity_Type "CONSUMER_GOOD"

-- | Other types of entities
pattern Entity_Type_Other :: Entity_Type
pattern Entity_Type_Other = Entity_Type "OTHER"

-- | Phone number The metadata lists the phone number, formatted according to local convention, plus whichever additional elements appear in the text: * @number@ - the actual number, broken down into sections as per local convention * @national_prefix@ - country code, if detected * @area_code@ - region or area code, if detected * @extension@ - phone extension (to be dialed after connection), if detected
pattern Entity_Type_PHONENUMBER :: Entity_Type
pattern Entity_Type_PHONENUMBER = Entity_Type "PHONE_NUMBER"

-- | Address The metadata identifies the street number and locality plus whichever additional elements appear in the text: * @street_number@ - street number * @locality@ - city or town * @street_name@ - street\/route name, if detected * @postal_code@ - postal code, if detected * @country@ - country, if detected\< * @broad_region@ - administrative area, such as the state, if detected * @narrow_region@ - smaller administrative area, such as county, if detected * @sublocality@ - used in Asian addresses to demark a district within a city, if detected
pattern Entity_Type_Address :: Entity_Type
pattern Entity_Type_Address = Entity_Type "ADDRESS"

-- | Date The metadata identifies the components of the date: * @year@ - four digit year, if detected * @month@ - two digit month number, if detected * @day@ - two digit day number, if detected
pattern Entity_Type_Date :: Entity_Type
pattern Entity_Type_Date = Entity_Type "DATE"

-- | Number The metadata is the number itself.
pattern Entity_Type_Number :: Entity_Type
pattern Entity_Type_Number = Entity_Type "NUMBER"

-- | Price The metadata identifies the @value@ and @currency@.
pattern Entity_Type_Price :: Entity_Type
pattern Entity_Type_Price = Entity_Type "PRICE"

{-# COMPLETE
  Entity_Type_Unknown,
  Entity_Type_Person,
  Entity_Type_Location,
  Entity_Type_Organization,
  Entity_Type_Event,
  Entity_Type_WORKOFART,
  Entity_Type_CONSUMERGOOD,
  Entity_Type_Other,
  Entity_Type_PHONENUMBER,
  Entity_Type_Address,
  Entity_Type_Date,
  Entity_Type_Number,
  Entity_Type_Price,
  Entity_Type
  #-}

-- | The type of the entity mention.
newtype EntityMention_Type = EntityMention_Type {fromEntityMention_Type :: Core.Text}
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

-- | Unknown
pattern EntityMention_Type_TYPEUNKNOWN :: EntityMention_Type
pattern EntityMention_Type_TYPEUNKNOWN = EntityMention_Type "TYPE_UNKNOWN"

-- | Proper name
pattern EntityMention_Type_Proper :: EntityMention_Type
pattern EntityMention_Type_Proper = EntityMention_Type "PROPER"

-- | Common noun (or noun compound)
pattern EntityMention_Type_Common :: EntityMention_Type
pattern EntityMention_Type_Common = EntityMention_Type "COMMON"

{-# COMPLETE
  EntityMention_Type_TYPEUNKNOWN,
  EntityMention_Type_Proper,
  EntityMention_Type_Common,
  EntityMention_Type
  #-}

-- | The grammatical aspect.
newtype PartOfSpeech_Aspect = PartOfSpeech_Aspect {fromPartOfSpeech_Aspect :: Core.Text}
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

-- | Aspect is not applicable in the analyzed language or is not predicted.
pattern PartOfSpeech_Aspect_ASPECTUNKNOWN :: PartOfSpeech_Aspect
pattern PartOfSpeech_Aspect_ASPECTUNKNOWN = PartOfSpeech_Aspect "ASPECT_UNKNOWN"

-- | Perfective
pattern PartOfSpeech_Aspect_Perfective :: PartOfSpeech_Aspect
pattern PartOfSpeech_Aspect_Perfective = PartOfSpeech_Aspect "PERFECTIVE"

-- | Imperfective
pattern PartOfSpeech_Aspect_Imperfective :: PartOfSpeech_Aspect
pattern PartOfSpeech_Aspect_Imperfective = PartOfSpeech_Aspect "IMPERFECTIVE"

-- | Progressive
pattern PartOfSpeech_Aspect_Progressive :: PartOfSpeech_Aspect
pattern PartOfSpeech_Aspect_Progressive = PartOfSpeech_Aspect "PROGRESSIVE"

{-# COMPLETE
  PartOfSpeech_Aspect_ASPECTUNKNOWN,
  PartOfSpeech_Aspect_Perfective,
  PartOfSpeech_Aspect_Imperfective,
  PartOfSpeech_Aspect_Progressive,
  PartOfSpeech_Aspect
  #-}

-- | The grammatical case.
newtype PartOfSpeech_Case = PartOfSpeech_Case {fromPartOfSpeech_Case :: Core.Text}
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

-- | Case is not applicable in the analyzed language or is not predicted.
pattern PartOfSpeech_Case_CASEUNKNOWN :: PartOfSpeech_Case
pattern PartOfSpeech_Case_CASEUNKNOWN = PartOfSpeech_Case "CASE_UNKNOWN"

-- | Accusative
pattern PartOfSpeech_Case_Accusative :: PartOfSpeech_Case
pattern PartOfSpeech_Case_Accusative = PartOfSpeech_Case "ACCUSATIVE"

-- | Adverbial
pattern PartOfSpeech_Case_Adverbial :: PartOfSpeech_Case
pattern PartOfSpeech_Case_Adverbial = PartOfSpeech_Case "ADVERBIAL"

-- | Complementive
pattern PartOfSpeech_Case_Complementive :: PartOfSpeech_Case
pattern PartOfSpeech_Case_Complementive = PartOfSpeech_Case "COMPLEMENTIVE"

-- | Dative
pattern PartOfSpeech_Case_Dative :: PartOfSpeech_Case
pattern PartOfSpeech_Case_Dative = PartOfSpeech_Case "DATIVE"

-- | Genitive
pattern PartOfSpeech_Case_Genitive :: PartOfSpeech_Case
pattern PartOfSpeech_Case_Genitive = PartOfSpeech_Case "GENITIVE"

-- | Instrumental
pattern PartOfSpeech_Case_Instrumental :: PartOfSpeech_Case
pattern PartOfSpeech_Case_Instrumental = PartOfSpeech_Case "INSTRUMENTAL"

-- | Locative
pattern PartOfSpeech_Case_Locative :: PartOfSpeech_Case
pattern PartOfSpeech_Case_Locative = PartOfSpeech_Case "LOCATIVE"

-- | Nominative
pattern PartOfSpeech_Case_Nominative :: PartOfSpeech_Case
pattern PartOfSpeech_Case_Nominative = PartOfSpeech_Case "NOMINATIVE"

-- | Oblique
pattern PartOfSpeech_Case_Oblique :: PartOfSpeech_Case
pattern PartOfSpeech_Case_Oblique = PartOfSpeech_Case "OBLIQUE"

-- | Partitive
pattern PartOfSpeech_Case_Partitive :: PartOfSpeech_Case
pattern PartOfSpeech_Case_Partitive = PartOfSpeech_Case "PARTITIVE"

-- | Prepositional
pattern PartOfSpeech_Case_Prepositional :: PartOfSpeech_Case
pattern PartOfSpeech_Case_Prepositional = PartOfSpeech_Case "PREPOSITIONAL"

-- | Reflexive
pattern PartOfSpeech_Case_REFLEXIVECASE :: PartOfSpeech_Case
pattern PartOfSpeech_Case_REFLEXIVECASE = PartOfSpeech_Case "REFLEXIVE_CASE"

-- | Relative
pattern PartOfSpeech_Case_RELATIVECASE :: PartOfSpeech_Case
pattern PartOfSpeech_Case_RELATIVECASE = PartOfSpeech_Case "RELATIVE_CASE"

-- | Vocative
pattern PartOfSpeech_Case_Vocative :: PartOfSpeech_Case
pattern PartOfSpeech_Case_Vocative = PartOfSpeech_Case "VOCATIVE"

{-# COMPLETE
  PartOfSpeech_Case_CASEUNKNOWN,
  PartOfSpeech_Case_Accusative,
  PartOfSpeech_Case_Adverbial,
  PartOfSpeech_Case_Complementive,
  PartOfSpeech_Case_Dative,
  PartOfSpeech_Case_Genitive,
  PartOfSpeech_Case_Instrumental,
  PartOfSpeech_Case_Locative,
  PartOfSpeech_Case_Nominative,
  PartOfSpeech_Case_Oblique,
  PartOfSpeech_Case_Partitive,
  PartOfSpeech_Case_Prepositional,
  PartOfSpeech_Case_REFLEXIVECASE,
  PartOfSpeech_Case_RELATIVECASE,
  PartOfSpeech_Case_Vocative,
  PartOfSpeech_Case
  #-}

-- | The grammatical form.
newtype PartOfSpeech_Form = PartOfSpeech_Form {fromPartOfSpeech_Form :: Core.Text}
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

-- | Form is not applicable in the analyzed language or is not predicted.
pattern PartOfSpeech_Form_FORMUNKNOWN :: PartOfSpeech_Form
pattern PartOfSpeech_Form_FORMUNKNOWN = PartOfSpeech_Form "FORM_UNKNOWN"

-- | Adnomial
pattern PartOfSpeech_Form_Adnomial :: PartOfSpeech_Form
pattern PartOfSpeech_Form_Adnomial = PartOfSpeech_Form "ADNOMIAL"

-- | Auxiliary
pattern PartOfSpeech_Form_Auxiliary :: PartOfSpeech_Form
pattern PartOfSpeech_Form_Auxiliary = PartOfSpeech_Form "AUXILIARY"

-- | Complementizer
pattern PartOfSpeech_Form_Complementizer :: PartOfSpeech_Form
pattern PartOfSpeech_Form_Complementizer = PartOfSpeech_Form "COMPLEMENTIZER"

-- | Final ending
pattern PartOfSpeech_Form_FINALENDING :: PartOfSpeech_Form
pattern PartOfSpeech_Form_FINALENDING = PartOfSpeech_Form "FINAL_ENDING"

-- | Gerund
pattern PartOfSpeech_Form_Gerund :: PartOfSpeech_Form
pattern PartOfSpeech_Form_Gerund = PartOfSpeech_Form "GERUND"

-- | Realis
pattern PartOfSpeech_Form_Realis :: PartOfSpeech_Form
pattern PartOfSpeech_Form_Realis = PartOfSpeech_Form "REALIS"

-- | Irrealis
pattern PartOfSpeech_Form_Irrealis :: PartOfSpeech_Form
pattern PartOfSpeech_Form_Irrealis = PartOfSpeech_Form "IRREALIS"

-- | Short form
pattern PartOfSpeech_Form_Short :: PartOfSpeech_Form
pattern PartOfSpeech_Form_Short = PartOfSpeech_Form "SHORT"

-- | Long form
pattern PartOfSpeech_Form_Long :: PartOfSpeech_Form
pattern PartOfSpeech_Form_Long = PartOfSpeech_Form "LONG"

-- | Order form
pattern PartOfSpeech_Form_Order :: PartOfSpeech_Form
pattern PartOfSpeech_Form_Order = PartOfSpeech_Form "ORDER"

-- | Specific form
pattern PartOfSpeech_Form_Specific :: PartOfSpeech_Form
pattern PartOfSpeech_Form_Specific = PartOfSpeech_Form "SPECIFIC"

{-# COMPLETE
  PartOfSpeech_Form_FORMUNKNOWN,
  PartOfSpeech_Form_Adnomial,
  PartOfSpeech_Form_Auxiliary,
  PartOfSpeech_Form_Complementizer,
  PartOfSpeech_Form_FINALENDING,
  PartOfSpeech_Form_Gerund,
  PartOfSpeech_Form_Realis,
  PartOfSpeech_Form_Irrealis,
  PartOfSpeech_Form_Short,
  PartOfSpeech_Form_Long,
  PartOfSpeech_Form_Order,
  PartOfSpeech_Form_Specific,
  PartOfSpeech_Form
  #-}

-- | The grammatical gender.
newtype PartOfSpeech_Gender = PartOfSpeech_Gender {fromPartOfSpeech_Gender :: Core.Text}
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

-- | Gender is not applicable in the analyzed language or is not predicted.
pattern PartOfSpeech_Gender_GENDERUNKNOWN :: PartOfSpeech_Gender
pattern PartOfSpeech_Gender_GENDERUNKNOWN = PartOfSpeech_Gender "GENDER_UNKNOWN"

-- | Feminine
pattern PartOfSpeech_Gender_Feminine :: PartOfSpeech_Gender
pattern PartOfSpeech_Gender_Feminine = PartOfSpeech_Gender "FEMININE"

-- | Masculine
pattern PartOfSpeech_Gender_Masculine :: PartOfSpeech_Gender
pattern PartOfSpeech_Gender_Masculine = PartOfSpeech_Gender "MASCULINE"

-- | Neuter
pattern PartOfSpeech_Gender_Neuter :: PartOfSpeech_Gender
pattern PartOfSpeech_Gender_Neuter = PartOfSpeech_Gender "NEUTER"

{-# COMPLETE
  PartOfSpeech_Gender_GENDERUNKNOWN,
  PartOfSpeech_Gender_Feminine,
  PartOfSpeech_Gender_Masculine,
  PartOfSpeech_Gender_Neuter,
  PartOfSpeech_Gender
  #-}

-- | The grammatical mood.
newtype PartOfSpeech_Mood = PartOfSpeech_Mood {fromPartOfSpeech_Mood :: Core.Text}
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

-- | Mood is not applicable in the analyzed language or is not predicted.
pattern PartOfSpeech_Mood_MOODUNKNOWN :: PartOfSpeech_Mood
pattern PartOfSpeech_Mood_MOODUNKNOWN = PartOfSpeech_Mood "MOOD_UNKNOWN"

-- | Conditional
pattern PartOfSpeech_Mood_CONDITIONALMOOD :: PartOfSpeech_Mood
pattern PartOfSpeech_Mood_CONDITIONALMOOD = PartOfSpeech_Mood "CONDITIONAL_MOOD"

-- | Imperative
pattern PartOfSpeech_Mood_Imperative :: PartOfSpeech_Mood
pattern PartOfSpeech_Mood_Imperative = PartOfSpeech_Mood "IMPERATIVE"

-- | Indicative
pattern PartOfSpeech_Mood_Indicative :: PartOfSpeech_Mood
pattern PartOfSpeech_Mood_Indicative = PartOfSpeech_Mood "INDICATIVE"

-- | Interrogative
pattern PartOfSpeech_Mood_Interrogative :: PartOfSpeech_Mood
pattern PartOfSpeech_Mood_Interrogative = PartOfSpeech_Mood "INTERROGATIVE"

-- | Jussive
pattern PartOfSpeech_Mood_Jussive :: PartOfSpeech_Mood
pattern PartOfSpeech_Mood_Jussive = PartOfSpeech_Mood "JUSSIVE"

-- | Subjunctive
pattern PartOfSpeech_Mood_Subjunctive :: PartOfSpeech_Mood
pattern PartOfSpeech_Mood_Subjunctive = PartOfSpeech_Mood "SUBJUNCTIVE"

{-# COMPLETE
  PartOfSpeech_Mood_MOODUNKNOWN,
  PartOfSpeech_Mood_CONDITIONALMOOD,
  PartOfSpeech_Mood_Imperative,
  PartOfSpeech_Mood_Indicative,
  PartOfSpeech_Mood_Interrogative,
  PartOfSpeech_Mood_Jussive,
  PartOfSpeech_Mood_Subjunctive,
  PartOfSpeech_Mood
  #-}

-- | The grammatical number.
newtype PartOfSpeech_Number = PartOfSpeech_Number {fromPartOfSpeech_Number :: Core.Text}
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

-- | Number is not applicable in the analyzed language or is not predicted.
pattern PartOfSpeech_Number_NUMBERUNKNOWN :: PartOfSpeech_Number
pattern PartOfSpeech_Number_NUMBERUNKNOWN = PartOfSpeech_Number "NUMBER_UNKNOWN"

-- | Singular
pattern PartOfSpeech_Number_Singular :: PartOfSpeech_Number
pattern PartOfSpeech_Number_Singular = PartOfSpeech_Number "SINGULAR"

-- | Plural
pattern PartOfSpeech_Number_Plural :: PartOfSpeech_Number
pattern PartOfSpeech_Number_Plural = PartOfSpeech_Number "PLURAL"

-- | Dual
pattern PartOfSpeech_Number_Dual :: PartOfSpeech_Number
pattern PartOfSpeech_Number_Dual = PartOfSpeech_Number "DUAL"

{-# COMPLETE
  PartOfSpeech_Number_NUMBERUNKNOWN,
  PartOfSpeech_Number_Singular,
  PartOfSpeech_Number_Plural,
  PartOfSpeech_Number_Dual,
  PartOfSpeech_Number
  #-}

-- | The grammatical person.
newtype PartOfSpeech_Person = PartOfSpeech_Person {fromPartOfSpeech_Person :: Core.Text}
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

-- | Person is not applicable in the analyzed language or is not predicted.
pattern PartOfSpeech_Person_PERSONUNKNOWN :: PartOfSpeech_Person
pattern PartOfSpeech_Person_PERSONUNKNOWN = PartOfSpeech_Person "PERSON_UNKNOWN"

-- | First
pattern PartOfSpeech_Person_First :: PartOfSpeech_Person
pattern PartOfSpeech_Person_First = PartOfSpeech_Person "FIRST"

-- | Second
pattern PartOfSpeech_Person_Second :: PartOfSpeech_Person
pattern PartOfSpeech_Person_Second = PartOfSpeech_Person "SECOND"

-- | Third
pattern PartOfSpeech_Person_Third :: PartOfSpeech_Person
pattern PartOfSpeech_Person_Third = PartOfSpeech_Person "THIRD"

-- | Reflexive
pattern PartOfSpeech_Person_REFLEXIVEPERSON :: PartOfSpeech_Person
pattern PartOfSpeech_Person_REFLEXIVEPERSON = PartOfSpeech_Person "REFLEXIVE_PERSON"

{-# COMPLETE
  PartOfSpeech_Person_PERSONUNKNOWN,
  PartOfSpeech_Person_First,
  PartOfSpeech_Person_Second,
  PartOfSpeech_Person_Third,
  PartOfSpeech_Person_REFLEXIVEPERSON,
  PartOfSpeech_Person
  #-}

-- | The grammatical properness.
newtype PartOfSpeech_Proper = PartOfSpeech_Proper {fromPartOfSpeech_Proper :: Core.Text}
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

-- | Proper is not applicable in the analyzed language or is not predicted.
pattern PartOfSpeech_Proper_PROPERUNKNOWN :: PartOfSpeech_Proper
pattern PartOfSpeech_Proper_PROPERUNKNOWN = PartOfSpeech_Proper "PROPER_UNKNOWN"

-- | Proper
pattern PartOfSpeech_Proper_Proper :: PartOfSpeech_Proper
pattern PartOfSpeech_Proper_Proper = PartOfSpeech_Proper "PROPER"

-- | Not proper
pattern PartOfSpeech_Proper_NOTPROPER :: PartOfSpeech_Proper
pattern PartOfSpeech_Proper_NOTPROPER = PartOfSpeech_Proper "NOT_PROPER"

{-# COMPLETE
  PartOfSpeech_Proper_PROPERUNKNOWN,
  PartOfSpeech_Proper_Proper,
  PartOfSpeech_Proper_NOTPROPER,
  PartOfSpeech_Proper
  #-}

-- | The grammatical reciprocity.
newtype PartOfSpeech_Reciprocity = PartOfSpeech_Reciprocity {fromPartOfSpeech_Reciprocity :: Core.Text}
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

-- | Reciprocity is not applicable in the analyzed language or is not predicted.
pattern PartOfSpeech_Reciprocity_RECIPROCITYUNKNOWN :: PartOfSpeech_Reciprocity
pattern PartOfSpeech_Reciprocity_RECIPROCITYUNKNOWN = PartOfSpeech_Reciprocity "RECIPROCITY_UNKNOWN"

-- | Reciprocal
pattern PartOfSpeech_Reciprocity_Reciprocal :: PartOfSpeech_Reciprocity
pattern PartOfSpeech_Reciprocity_Reciprocal = PartOfSpeech_Reciprocity "RECIPROCAL"

-- | Non-reciprocal
pattern PartOfSpeech_Reciprocity_NONRECIPROCAL :: PartOfSpeech_Reciprocity
pattern PartOfSpeech_Reciprocity_NONRECIPROCAL = PartOfSpeech_Reciprocity "NON_RECIPROCAL"

{-# COMPLETE
  PartOfSpeech_Reciprocity_RECIPROCITYUNKNOWN,
  PartOfSpeech_Reciprocity_Reciprocal,
  PartOfSpeech_Reciprocity_NONRECIPROCAL,
  PartOfSpeech_Reciprocity
  #-}

-- | The part of speech tag.
newtype PartOfSpeech_Tag = PartOfSpeech_Tag {fromPartOfSpeech_Tag :: Core.Text}
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

-- | Unknown
pattern PartOfSpeech_Tag_Unknown :: PartOfSpeech_Tag
pattern PartOfSpeech_Tag_Unknown = PartOfSpeech_Tag "UNKNOWN"

-- | Adjective
pattern PartOfSpeech_Tag_Adj :: PartOfSpeech_Tag
pattern PartOfSpeech_Tag_Adj = PartOfSpeech_Tag "ADJ"

-- | Adposition (preposition and postposition)
pattern PartOfSpeech_Tag_Adp :: PartOfSpeech_Tag
pattern PartOfSpeech_Tag_Adp = PartOfSpeech_Tag "ADP"

-- | Adverb
pattern PartOfSpeech_Tag_Adv :: PartOfSpeech_Tag
pattern PartOfSpeech_Tag_Adv = PartOfSpeech_Tag "ADV"

-- | Conjunction
pattern PartOfSpeech_Tag_Conj :: PartOfSpeech_Tag
pattern PartOfSpeech_Tag_Conj = PartOfSpeech_Tag "CONJ"

-- | Determiner
pattern PartOfSpeech_Tag_Det :: PartOfSpeech_Tag
pattern PartOfSpeech_Tag_Det = PartOfSpeech_Tag "DET"

-- | Noun (common and proper)
pattern PartOfSpeech_Tag_Noun :: PartOfSpeech_Tag
pattern PartOfSpeech_Tag_Noun = PartOfSpeech_Tag "NOUN"

-- | Cardinal number
pattern PartOfSpeech_Tag_Num :: PartOfSpeech_Tag
pattern PartOfSpeech_Tag_Num = PartOfSpeech_Tag "NUM"

-- | Pronoun
pattern PartOfSpeech_Tag_Pron :: PartOfSpeech_Tag
pattern PartOfSpeech_Tag_Pron = PartOfSpeech_Tag "PRON"

-- | Particle or other function word
pattern PartOfSpeech_Tag_Prt :: PartOfSpeech_Tag
pattern PartOfSpeech_Tag_Prt = PartOfSpeech_Tag "PRT"

-- | Punctuation
pattern PartOfSpeech_Tag_Punct :: PartOfSpeech_Tag
pattern PartOfSpeech_Tag_Punct = PartOfSpeech_Tag "PUNCT"

-- | Verb (all tenses and modes)
pattern PartOfSpeech_Tag_Verb :: PartOfSpeech_Tag
pattern PartOfSpeech_Tag_Verb = PartOfSpeech_Tag "VERB"

-- | Other: foreign words, typos, abbreviations
pattern PartOfSpeech_Tag_X :: PartOfSpeech_Tag
pattern PartOfSpeech_Tag_X = PartOfSpeech_Tag "X"

-- | Affix
pattern PartOfSpeech_Tag_Affix :: PartOfSpeech_Tag
pattern PartOfSpeech_Tag_Affix = PartOfSpeech_Tag "AFFIX"

{-# COMPLETE
  PartOfSpeech_Tag_Unknown,
  PartOfSpeech_Tag_Adj,
  PartOfSpeech_Tag_Adp,
  PartOfSpeech_Tag_Adv,
  PartOfSpeech_Tag_Conj,
  PartOfSpeech_Tag_Det,
  PartOfSpeech_Tag_Noun,
  PartOfSpeech_Tag_Num,
  PartOfSpeech_Tag_Pron,
  PartOfSpeech_Tag_Prt,
  PartOfSpeech_Tag_Punct,
  PartOfSpeech_Tag_Verb,
  PartOfSpeech_Tag_X,
  PartOfSpeech_Tag_Affix,
  PartOfSpeech_Tag
  #-}

-- | The grammatical tense.
newtype PartOfSpeech_Tense = PartOfSpeech_Tense {fromPartOfSpeech_Tense :: Core.Text}
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

-- | Tense is not applicable in the analyzed language or is not predicted.
pattern PartOfSpeech_Tense_TENSEUNKNOWN :: PartOfSpeech_Tense
pattern PartOfSpeech_Tense_TENSEUNKNOWN = PartOfSpeech_Tense "TENSE_UNKNOWN"

-- | Conditional
pattern PartOfSpeech_Tense_CONDITIONALTENSE :: PartOfSpeech_Tense
pattern PartOfSpeech_Tense_CONDITIONALTENSE = PartOfSpeech_Tense "CONDITIONAL_TENSE"

-- | Future
pattern PartOfSpeech_Tense_Future :: PartOfSpeech_Tense
pattern PartOfSpeech_Tense_Future = PartOfSpeech_Tense "FUTURE"

-- | Past
pattern PartOfSpeech_Tense_Past :: PartOfSpeech_Tense
pattern PartOfSpeech_Tense_Past = PartOfSpeech_Tense "PAST"

-- | Present
pattern PartOfSpeech_Tense_Present :: PartOfSpeech_Tense
pattern PartOfSpeech_Tense_Present = PartOfSpeech_Tense "PRESENT"

-- | Imperfect
pattern PartOfSpeech_Tense_Imperfect :: PartOfSpeech_Tense
pattern PartOfSpeech_Tense_Imperfect = PartOfSpeech_Tense "IMPERFECT"

-- | Pluperfect
pattern PartOfSpeech_Tense_Pluperfect :: PartOfSpeech_Tense
pattern PartOfSpeech_Tense_Pluperfect = PartOfSpeech_Tense "PLUPERFECT"

{-# COMPLETE
  PartOfSpeech_Tense_TENSEUNKNOWN,
  PartOfSpeech_Tense_CONDITIONALTENSE,
  PartOfSpeech_Tense_Future,
  PartOfSpeech_Tense_Past,
  PartOfSpeech_Tense_Present,
  PartOfSpeech_Tense_Imperfect,
  PartOfSpeech_Tense_Pluperfect,
  PartOfSpeech_Tense
  #-}

-- | The grammatical voice.
newtype PartOfSpeech_Voice = PartOfSpeech_Voice {fromPartOfSpeech_Voice :: Core.Text}
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

-- | Voice is not applicable in the analyzed language or is not predicted.
pattern PartOfSpeech_Voice_VOICEUNKNOWN :: PartOfSpeech_Voice
pattern PartOfSpeech_Voice_VOICEUNKNOWN = PartOfSpeech_Voice "VOICE_UNKNOWN"

-- | Active
pattern PartOfSpeech_Voice_Active :: PartOfSpeech_Voice
pattern PartOfSpeech_Voice_Active = PartOfSpeech_Voice "ACTIVE"

-- | Causative
pattern PartOfSpeech_Voice_Causative :: PartOfSpeech_Voice
pattern PartOfSpeech_Voice_Causative = PartOfSpeech_Voice "CAUSATIVE"

-- | Passive
pattern PartOfSpeech_Voice_Passive :: PartOfSpeech_Voice
pattern PartOfSpeech_Voice_Passive = PartOfSpeech_Voice "PASSIVE"

{-# COMPLETE
  PartOfSpeech_Voice_VOICEUNKNOWN,
  PartOfSpeech_Voice_Active,
  PartOfSpeech_Voice_Causative,
  PartOfSpeech_Voice_Passive,
  PartOfSpeech_Voice
  #-}
