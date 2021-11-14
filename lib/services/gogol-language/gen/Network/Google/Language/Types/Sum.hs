{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Language.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Language.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The grammatical properness.
data PartOfSpeechProper
    = ProperUnknown
      -- ^ @PROPER_UNKNOWN@
      -- Proper is not applicable in the analyzed language or is not predicted.
    | Proper
      -- ^ @PROPER@
      -- Proper
    | NotProper
      -- ^ @NOT_PROPER@
      -- Not proper
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PartOfSpeechProper

instance FromHttpApiData PartOfSpeechProper where
    parseQueryParam = \case
        "PROPER_UNKNOWN" -> Right ProperUnknown
        "PROPER" -> Right Proper
        "NOT_PROPER" -> Right NotProper
        x -> Left ("Unable to parse PartOfSpeechProper from: " <> x)

instance ToHttpApiData PartOfSpeechProper where
    toQueryParam = \case
        ProperUnknown -> "PROPER_UNKNOWN"
        Proper -> "PROPER"
        NotProper -> "NOT_PROPER"

instance FromJSON PartOfSpeechProper where
    parseJSON = parseJSONText "PartOfSpeechProper"

instance ToJSON PartOfSpeechProper where
    toJSON = toJSONText

-- | The part of speech tag.
data PartOfSpeechTag
    = Unknown
      -- ^ @UNKNOWN@
      -- Unknown
    | Adj
      -- ^ @ADJ@
      -- Adjective
    | Adp
      -- ^ @ADP@
      -- Adposition (preposition and postposition)
    | Adv
      -- ^ @ADV@
      -- Adverb
    | Conj
      -- ^ @CONJ@
      -- Conjunction
    | Det
      -- ^ @DET@
      -- Determiner
    | Noun
      -- ^ @NOUN@
      -- Noun (common and proper)
    | Num
      -- ^ @NUM@
      -- Cardinal number
    | Pron
      -- ^ @PRON@
      -- Pronoun
    | Prt
      -- ^ @PRT@
      -- Particle or other function word
    | Punct
      -- ^ @PUNCT@
      -- Punctuation
    | Verb
      -- ^ @VERB@
      -- Verb (all tenses and modes)
    | X
      -- ^ @X@
      -- Other: foreign words, typos, abbreviations
    | Affix
      -- ^ @AFFIX@
      -- Affix
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PartOfSpeechTag

instance FromHttpApiData PartOfSpeechTag where
    parseQueryParam = \case
        "UNKNOWN" -> Right Unknown
        "ADJ" -> Right Adj
        "ADP" -> Right Adp
        "ADV" -> Right Adv
        "CONJ" -> Right Conj
        "DET" -> Right Det
        "NOUN" -> Right Noun
        "NUM" -> Right Num
        "PRON" -> Right Pron
        "PRT" -> Right Prt
        "PUNCT" -> Right Punct
        "VERB" -> Right Verb
        "X" -> Right X
        "AFFIX" -> Right Affix
        x -> Left ("Unable to parse PartOfSpeechTag from: " <> x)

instance ToHttpApiData PartOfSpeechTag where
    toQueryParam = \case
        Unknown -> "UNKNOWN"
        Adj -> "ADJ"
        Adp -> "ADP"
        Adv -> "ADV"
        Conj -> "CONJ"
        Det -> "DET"
        Noun -> "NOUN"
        Num -> "NUM"
        Pron -> "PRON"
        Prt -> "PRT"
        Punct -> "PUNCT"
        Verb -> "VERB"
        X -> "X"
        Affix -> "AFFIX"

instance FromJSON PartOfSpeechTag where
    parseJSON = parseJSONText "PartOfSpeechTag"

instance ToJSON PartOfSpeechTag where
    toJSON = toJSONText

-- | Required. If the type is not set or is \`TYPE_UNSPECIFIED\`, returns an
-- \`INVALID_ARGUMENT\` error.
data DocumentType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- The content type is not specified.
    | PlainText
      -- ^ @PLAIN_TEXT@
      -- Plain text
    | HTML
      -- ^ @HTML@
      -- HTML
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DocumentType

instance FromHttpApiData DocumentType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "PLAIN_TEXT" -> Right PlainText
        "HTML" -> Right HTML
        x -> Left ("Unable to parse DocumentType from: " <> x)

instance ToHttpApiData DocumentType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        PlainText -> "PLAIN_TEXT"
        HTML -> "HTML"

instance FromJSON DocumentType where
    parseJSON = parseJSONText "DocumentType"

instance ToJSON DocumentType where
    toJSON = toJSONText

-- | The encoding type used by the API to calculate offsets.
data AnalyzeSyntaxRequestEncodingType
    = None
      -- ^ @NONE@
      -- If \`EncodingType\` is not specified, encoding-dependent information
      -- (such as \`begin_offset\`) will be set at \`-1\`.
    | UTF8
      -- ^ @UTF8@
      -- Encoding-dependent information (such as \`begin_offset\`) is calculated
      -- based on the UTF-8 encoding of the input. C++ and Go are examples of
      -- languages that use this encoding natively.
    | UTF16
      -- ^ @UTF16@
      -- Encoding-dependent information (such as \`begin_offset\`) is calculated
      -- based on the UTF-16 encoding of the input. Java and JavaScript are
      -- examples of languages that use this encoding natively.
    | UTF32
      -- ^ @UTF32@
      -- Encoding-dependent information (such as \`begin_offset\`) is calculated
      -- based on the UTF-32 encoding of the input. Python is an example of a
      -- language that uses this encoding natively.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AnalyzeSyntaxRequestEncodingType

instance FromHttpApiData AnalyzeSyntaxRequestEncodingType where
    parseQueryParam = \case
        "NONE" -> Right None
        "UTF8" -> Right UTF8
        "UTF16" -> Right UTF16
        "UTF32" -> Right UTF32
        x -> Left ("Unable to parse AnalyzeSyntaxRequestEncodingType from: " <> x)

instance ToHttpApiData AnalyzeSyntaxRequestEncodingType where
    toQueryParam = \case
        None -> "NONE"
        UTF8 -> "UTF8"
        UTF16 -> "UTF16"
        UTF32 -> "UTF32"

instance FromJSON AnalyzeSyntaxRequestEncodingType where
    parseJSON = parseJSONText "AnalyzeSyntaxRequestEncodingType"

instance ToJSON AnalyzeSyntaxRequestEncodingType where
    toJSON = toJSONText

-- | The encoding type used by the API to calculate offsets.
data AnalyzeEntitySentimentRequestEncodingType
    = AESRETNone
      -- ^ @NONE@
      -- If \`EncodingType\` is not specified, encoding-dependent information
      -- (such as \`begin_offset\`) will be set at \`-1\`.
    | AESRETUTF8
      -- ^ @UTF8@
      -- Encoding-dependent information (such as \`begin_offset\`) is calculated
      -- based on the UTF-8 encoding of the input. C++ and Go are examples of
      -- languages that use this encoding natively.
    | AESRETUTF16
      -- ^ @UTF16@
      -- Encoding-dependent information (such as \`begin_offset\`) is calculated
      -- based on the UTF-16 encoding of the input. Java and JavaScript are
      -- examples of languages that use this encoding natively.
    | AESRETUTF32
      -- ^ @UTF32@
      -- Encoding-dependent information (such as \`begin_offset\`) is calculated
      -- based on the UTF-32 encoding of the input. Python is an example of a
      -- language that uses this encoding natively.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AnalyzeEntitySentimentRequestEncodingType

instance FromHttpApiData AnalyzeEntitySentimentRequestEncodingType where
    parseQueryParam = \case
        "NONE" -> Right AESRETNone
        "UTF8" -> Right AESRETUTF8
        "UTF16" -> Right AESRETUTF16
        "UTF32" -> Right AESRETUTF32
        x -> Left ("Unable to parse AnalyzeEntitySentimentRequestEncodingType from: " <> x)

instance ToHttpApiData AnalyzeEntitySentimentRequestEncodingType where
    toQueryParam = \case
        AESRETNone -> "NONE"
        AESRETUTF8 -> "UTF8"
        AESRETUTF16 -> "UTF16"
        AESRETUTF32 -> "UTF32"

instance FromJSON AnalyzeEntitySentimentRequestEncodingType where
    parseJSON = parseJSONText "AnalyzeEntitySentimentRequestEncodingType"

instance ToJSON AnalyzeEntitySentimentRequestEncodingType where
    toJSON = toJSONText

-- | The parse label for the token.
data DependencyEdgeLabel
    = DELUnknown
      -- ^ @UNKNOWN@
      -- Unknown
    | DELAbbrev
      -- ^ @ABBREV@
      -- Abbreviation modifier
    | DELAcomp
      -- ^ @ACOMP@
      -- Adjectival complement
    | DELAdvcl
      -- ^ @ADVCL@
      -- Adverbial clause modifier
    | DELAdvmod
      -- ^ @ADVMOD@
      -- Adverbial modifier
    | DELAmod
      -- ^ @AMOD@
      -- Adjectival modifier of an NP
    | DELAppos
      -- ^ @APPOS@
      -- Appositional modifier of an NP
    | DELAttr
      -- ^ @ATTR@
      -- Attribute dependent of a copular verb
    | DELAux
      -- ^ @AUX@
      -- Auxiliary (non-main) verb
    | DELAuxpass
      -- ^ @AUXPASS@
      -- Passive auxiliary
    | DELCC
      -- ^ @CC@
      -- Coordinating conjunction
    | DELCcomp
      -- ^ @CCOMP@
      -- Clausal complement of a verb or adjective
    | DELConj
      -- ^ @CONJ@
      -- Conjunct
    | DELCsubj
      -- ^ @CSUBJ@
      -- Clausal subject
    | DELCsubjpass
      -- ^ @CSUBJPASS@
      -- Clausal passive subject
    | DELDep
      -- ^ @DEP@
      -- Dependency (unable to determine)
    | DELDet
      -- ^ @DET@
      -- Determiner
    | DELDiscourse
      -- ^ @DISCOURSE@
      -- Discourse
    | DELDobj
      -- ^ @DOBJ@
      -- Direct object
    | DELExpl
      -- ^ @EXPL@
      -- Expletive
    | DELGoeswith
      -- ^ @GOESWITH@
      -- Goes with (part of a word in a text not well edited)
    | DELIobj
      -- ^ @IOBJ@
      -- Indirect object
    | DELMark
      -- ^ @MARK@
      -- Marker (word introducing a subordinate clause)
    | DELMwe
      -- ^ @MWE@
      -- Multi-word expression
    | DELMwv
      -- ^ @MWV@
      -- Multi-word verbal expression
    | DELNeg
      -- ^ @NEG@
      -- Negation modifier
    | DELNN
      -- ^ @NN@
      -- Noun compound modifier
    | DELNpadvmod
      -- ^ @NPADVMOD@
      -- Noun phrase used as an adverbial modifier
    | DELNsubj
      -- ^ @NSUBJ@
      -- Nominal subject
    | DELNsubjpass
      -- ^ @NSUBJPASS@
      -- Passive nominal subject
    | DELNum
      -- ^ @NUM@
      -- Numeric modifier of a noun
    | DELNumber
      -- ^ @NUMBER@
      -- Element of compound number
    | DELP
      -- ^ @P@
      -- Punctuation mark
    | DELParataxis
      -- ^ @PARATAXIS@
      -- Parataxis relation
    | DELPartmod
      -- ^ @PARTMOD@
      -- Participial modifier
    | DELPcomp
      -- ^ @PCOMP@
      -- The complement of a preposition is a clause
    | DELPobj
      -- ^ @POBJ@
      -- Object of a preposition
    | DELPoss
      -- ^ @POSS@
      -- Possession modifier
    | DELPostneg
      -- ^ @POSTNEG@
      -- Postverbal negative particle
    | DELPrecomp
      -- ^ @PRECOMP@
      -- Predicate complement
    | DELPreconj
      -- ^ @PRECONJ@
      -- Preconjunt
    | DELPredet
      -- ^ @PREDET@
      -- Predeterminer
    | DELPref
      -- ^ @PREF@
      -- Prefix
    | DELPrep
      -- ^ @PREP@
      -- Prepositional modifier
    | DELPronl
      -- ^ @PRONL@
      -- The relationship between a verb and verbal morpheme
    | DELPrt
      -- ^ @PRT@
      -- Particle
    | DELPS
      -- ^ @PS@
      -- Associative or possessive marker
    | DELQuantmod
      -- ^ @QUANTMOD@
      -- Quantifier phrase modifier
    | DELRcmod
      -- ^ @RCMOD@
      -- Relative clause modifier
    | DELRcmodrel
      -- ^ @RCMODREL@
      -- Complementizer in relative clause
    | DELRdrop
      -- ^ @RDROP@
      -- Ellipsis without a preceding predicate
    | DELRef
      -- ^ @REF@
      -- Referent
    | DELRemnant
      -- ^ @REMNANT@
      -- Remnant
    | DELReparandum
      -- ^ @REPARANDUM@
      -- Reparandum
    | DELRoot
      -- ^ @ROOT@
      -- Root
    | DELSnum
      -- ^ @SNUM@
      -- Suffix specifying a unit of number
    | DELSuff
      -- ^ @SUFF@
      -- Suffix
    | DELTmod
      -- ^ @TMOD@
      -- Temporal modifier
    | DELTopic
      -- ^ @TOPIC@
      -- Topic marker
    | DELVMod
      -- ^ @VMOD@
      -- Clause headed by an infinite form of the verb that modifies a noun
    | DELVocative
      -- ^ @VOCATIVE@
      -- Vocative
    | DELXcomp
      -- ^ @XCOMP@
      -- Open clausal complement
    | DELSuffix
      -- ^ @SUFFIX@
      -- Name suffix
    | DELTitle
      -- ^ @TITLE@
      -- Name title
    | DELAdvphmod
      -- ^ @ADVPHMOD@
      -- Adverbial phrase modifier
    | DELAuxcaus
      -- ^ @AUXCAUS@
      -- Causative auxiliary
    | DELAuxvv
      -- ^ @AUXVV@
      -- Helper auxiliary
    | DELDtmod
      -- ^ @DTMOD@
      -- Rentaishi (Prenominal modifier)
    | DELForeign
      -- ^ @FOREIGN@
      -- Foreign words
    | DELKW
      -- ^ @KW@
      -- Keyword
    | DELList
      -- ^ @LIST@
      -- List for chains of comparable items
    | DELNomc
      -- ^ @NOMC@
      -- Nominalized clause
    | DELNomcsubj
      -- ^ @NOMCSUBJ@
      -- Nominalized clausal subject
    | DELNomcsubjpass
      -- ^ @NOMCSUBJPASS@
      -- Nominalized clausal passive
    | DELNumc
      -- ^ @NUMC@
      -- Compound of numeric modifier
    | DELCop
      -- ^ @COP@
      -- Copula
    | DELDislocated
      -- ^ @DISLOCATED@
      -- Dislocated relation (for fronted\/topicalized elements)
    | DELAsp
      -- ^ @ASP@
      -- Aspect marker
    | DELGmod
      -- ^ @GMOD@
      -- Genitive modifier
    | DELGobj
      -- ^ @GOBJ@
      -- Genitive object
    | DELInfmod
      -- ^ @INFMOD@
      -- Infinitival modifier
    | DELMes
      -- ^ @MES@
      -- Measure
    | DELNcomp
      -- ^ @NCOMP@
      -- Nominal complement of a noun
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DependencyEdgeLabel

instance FromHttpApiData DependencyEdgeLabel where
    parseQueryParam = \case
        "UNKNOWN" -> Right DELUnknown
        "ABBREV" -> Right DELAbbrev
        "ACOMP" -> Right DELAcomp
        "ADVCL" -> Right DELAdvcl
        "ADVMOD" -> Right DELAdvmod
        "AMOD" -> Right DELAmod
        "APPOS" -> Right DELAppos
        "ATTR" -> Right DELAttr
        "AUX" -> Right DELAux
        "AUXPASS" -> Right DELAuxpass
        "CC" -> Right DELCC
        "CCOMP" -> Right DELCcomp
        "CONJ" -> Right DELConj
        "CSUBJ" -> Right DELCsubj
        "CSUBJPASS" -> Right DELCsubjpass
        "DEP" -> Right DELDep
        "DET" -> Right DELDet
        "DISCOURSE" -> Right DELDiscourse
        "DOBJ" -> Right DELDobj
        "EXPL" -> Right DELExpl
        "GOESWITH" -> Right DELGoeswith
        "IOBJ" -> Right DELIobj
        "MARK" -> Right DELMark
        "MWE" -> Right DELMwe
        "MWV" -> Right DELMwv
        "NEG" -> Right DELNeg
        "NN" -> Right DELNN
        "NPADVMOD" -> Right DELNpadvmod
        "NSUBJ" -> Right DELNsubj
        "NSUBJPASS" -> Right DELNsubjpass
        "NUM" -> Right DELNum
        "NUMBER" -> Right DELNumber
        "P" -> Right DELP
        "PARATAXIS" -> Right DELParataxis
        "PARTMOD" -> Right DELPartmod
        "PCOMP" -> Right DELPcomp
        "POBJ" -> Right DELPobj
        "POSS" -> Right DELPoss
        "POSTNEG" -> Right DELPostneg
        "PRECOMP" -> Right DELPrecomp
        "PRECONJ" -> Right DELPreconj
        "PREDET" -> Right DELPredet
        "PREF" -> Right DELPref
        "PREP" -> Right DELPrep
        "PRONL" -> Right DELPronl
        "PRT" -> Right DELPrt
        "PS" -> Right DELPS
        "QUANTMOD" -> Right DELQuantmod
        "RCMOD" -> Right DELRcmod
        "RCMODREL" -> Right DELRcmodrel
        "RDROP" -> Right DELRdrop
        "REF" -> Right DELRef
        "REMNANT" -> Right DELRemnant
        "REPARANDUM" -> Right DELReparandum
        "ROOT" -> Right DELRoot
        "SNUM" -> Right DELSnum
        "SUFF" -> Right DELSuff
        "TMOD" -> Right DELTmod
        "TOPIC" -> Right DELTopic
        "VMOD" -> Right DELVMod
        "VOCATIVE" -> Right DELVocative
        "XCOMP" -> Right DELXcomp
        "SUFFIX" -> Right DELSuffix
        "TITLE" -> Right DELTitle
        "ADVPHMOD" -> Right DELAdvphmod
        "AUXCAUS" -> Right DELAuxcaus
        "AUXVV" -> Right DELAuxvv
        "DTMOD" -> Right DELDtmod
        "FOREIGN" -> Right DELForeign
        "KW" -> Right DELKW
        "LIST" -> Right DELList
        "NOMC" -> Right DELNomc
        "NOMCSUBJ" -> Right DELNomcsubj
        "NOMCSUBJPASS" -> Right DELNomcsubjpass
        "NUMC" -> Right DELNumc
        "COP" -> Right DELCop
        "DISLOCATED" -> Right DELDislocated
        "ASP" -> Right DELAsp
        "GMOD" -> Right DELGmod
        "GOBJ" -> Right DELGobj
        "INFMOD" -> Right DELInfmod
        "MES" -> Right DELMes
        "NCOMP" -> Right DELNcomp
        x -> Left ("Unable to parse DependencyEdgeLabel from: " <> x)

instance ToHttpApiData DependencyEdgeLabel where
    toQueryParam = \case
        DELUnknown -> "UNKNOWN"
        DELAbbrev -> "ABBREV"
        DELAcomp -> "ACOMP"
        DELAdvcl -> "ADVCL"
        DELAdvmod -> "ADVMOD"
        DELAmod -> "AMOD"
        DELAppos -> "APPOS"
        DELAttr -> "ATTR"
        DELAux -> "AUX"
        DELAuxpass -> "AUXPASS"
        DELCC -> "CC"
        DELCcomp -> "CCOMP"
        DELConj -> "CONJ"
        DELCsubj -> "CSUBJ"
        DELCsubjpass -> "CSUBJPASS"
        DELDep -> "DEP"
        DELDet -> "DET"
        DELDiscourse -> "DISCOURSE"
        DELDobj -> "DOBJ"
        DELExpl -> "EXPL"
        DELGoeswith -> "GOESWITH"
        DELIobj -> "IOBJ"
        DELMark -> "MARK"
        DELMwe -> "MWE"
        DELMwv -> "MWV"
        DELNeg -> "NEG"
        DELNN -> "NN"
        DELNpadvmod -> "NPADVMOD"
        DELNsubj -> "NSUBJ"
        DELNsubjpass -> "NSUBJPASS"
        DELNum -> "NUM"
        DELNumber -> "NUMBER"
        DELP -> "P"
        DELParataxis -> "PARATAXIS"
        DELPartmod -> "PARTMOD"
        DELPcomp -> "PCOMP"
        DELPobj -> "POBJ"
        DELPoss -> "POSS"
        DELPostneg -> "POSTNEG"
        DELPrecomp -> "PRECOMP"
        DELPreconj -> "PRECONJ"
        DELPredet -> "PREDET"
        DELPref -> "PREF"
        DELPrep -> "PREP"
        DELPronl -> "PRONL"
        DELPrt -> "PRT"
        DELPS -> "PS"
        DELQuantmod -> "QUANTMOD"
        DELRcmod -> "RCMOD"
        DELRcmodrel -> "RCMODREL"
        DELRdrop -> "RDROP"
        DELRef -> "REF"
        DELRemnant -> "REMNANT"
        DELReparandum -> "REPARANDUM"
        DELRoot -> "ROOT"
        DELSnum -> "SNUM"
        DELSuff -> "SUFF"
        DELTmod -> "TMOD"
        DELTopic -> "TOPIC"
        DELVMod -> "VMOD"
        DELVocative -> "VOCATIVE"
        DELXcomp -> "XCOMP"
        DELSuffix -> "SUFFIX"
        DELTitle -> "TITLE"
        DELAdvphmod -> "ADVPHMOD"
        DELAuxcaus -> "AUXCAUS"
        DELAuxvv -> "AUXVV"
        DELDtmod -> "DTMOD"
        DELForeign -> "FOREIGN"
        DELKW -> "KW"
        DELList -> "LIST"
        DELNomc -> "NOMC"
        DELNomcsubj -> "NOMCSUBJ"
        DELNomcsubjpass -> "NOMCSUBJPASS"
        DELNumc -> "NUMC"
        DELCop -> "COP"
        DELDislocated -> "DISLOCATED"
        DELAsp -> "ASP"
        DELGmod -> "GMOD"
        DELGobj -> "GOBJ"
        DELInfmod -> "INFMOD"
        DELMes -> "MES"
        DELNcomp -> "NCOMP"

instance FromJSON DependencyEdgeLabel where
    parseJSON = parseJSONText "DependencyEdgeLabel"

instance ToJSON DependencyEdgeLabel where
    toJSON = toJSONText

-- | The grammatical voice.
data PartOfSpeechVoice
    = VoiceUnknown
      -- ^ @VOICE_UNKNOWN@
      -- Voice is not applicable in the analyzed language or is not predicted.
    | Active
      -- ^ @ACTIVE@
      -- Active
    | Causative
      -- ^ @CAUSATIVE@
      -- Causative
    | Passive
      -- ^ @PASSIVE@
      -- Passive
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PartOfSpeechVoice

instance FromHttpApiData PartOfSpeechVoice where
    parseQueryParam = \case
        "VOICE_UNKNOWN" -> Right VoiceUnknown
        "ACTIVE" -> Right Active
        "CAUSATIVE" -> Right Causative
        "PASSIVE" -> Right Passive
        x -> Left ("Unable to parse PartOfSpeechVoice from: " <> x)

instance ToHttpApiData PartOfSpeechVoice where
    toQueryParam = \case
        VoiceUnknown -> "VOICE_UNKNOWN"
        Active -> "ACTIVE"
        Causative -> "CAUSATIVE"
        Passive -> "PASSIVE"

instance FromJSON PartOfSpeechVoice where
    parseJSON = parseJSONText "PartOfSpeechVoice"

instance ToJSON PartOfSpeechVoice where
    toJSON = toJSONText

-- | The grammatical form.
data PartOfSpeechForm
    = FormUnknown
      -- ^ @FORM_UNKNOWN@
      -- Form is not applicable in the analyzed language or is not predicted.
    | Adnomial
      -- ^ @ADNOMIAL@
      -- Adnomial
    | Auxiliary
      -- ^ @AUXILIARY@
      -- Auxiliary
    | Complementizer
      -- ^ @COMPLEMENTIZER@
      -- Complementizer
    | FinalEnding
      -- ^ @FINAL_ENDING@
      -- Final ending
    | Gerund
      -- ^ @GERUND@
      -- Gerund
    | Realis
      -- ^ @REALIS@
      -- Realis
    | Irrealis
      -- ^ @IRREALIS@
      -- Irrealis
    | Short
      -- ^ @SHORT@
      -- Short form
    | Long
      -- ^ @LONG@
      -- Long form
    | Order
      -- ^ @ORDER@
      -- Order form
    | Specific
      -- ^ @SPECIFIC@
      -- Specific form
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PartOfSpeechForm

instance FromHttpApiData PartOfSpeechForm where
    parseQueryParam = \case
        "FORM_UNKNOWN" -> Right FormUnknown
        "ADNOMIAL" -> Right Adnomial
        "AUXILIARY" -> Right Auxiliary
        "COMPLEMENTIZER" -> Right Complementizer
        "FINAL_ENDING" -> Right FinalEnding
        "GERUND" -> Right Gerund
        "REALIS" -> Right Realis
        "IRREALIS" -> Right Irrealis
        "SHORT" -> Right Short
        "LONG" -> Right Long
        "ORDER" -> Right Order
        "SPECIFIC" -> Right Specific
        x -> Left ("Unable to parse PartOfSpeechForm from: " <> x)

instance ToHttpApiData PartOfSpeechForm where
    toQueryParam = \case
        FormUnknown -> "FORM_UNKNOWN"
        Adnomial -> "ADNOMIAL"
        Auxiliary -> "AUXILIARY"
        Complementizer -> "COMPLEMENTIZER"
        FinalEnding -> "FINAL_ENDING"
        Gerund -> "GERUND"
        Realis -> "REALIS"
        Irrealis -> "IRREALIS"
        Short -> "SHORT"
        Long -> "LONG"
        Order -> "ORDER"
        Specific -> "SPECIFIC"

instance FromJSON PartOfSpeechForm where
    parseJSON = parseJSONText "PartOfSpeechForm"

instance ToJSON PartOfSpeechForm where
    toJSON = toJSONText

-- | The grammatical person.
data PartOfSpeechPerson
    = PersonUnknown
      -- ^ @PERSON_UNKNOWN@
      -- Person is not applicable in the analyzed language or is not predicted.
    | First
      -- ^ @FIRST@
      -- First
    | Second
      -- ^ @SECOND@
      -- Second
    | Third
      -- ^ @THIRD@
      -- Third
    | ReflexivePerson
      -- ^ @REFLEXIVE_PERSON@
      -- Reflexive
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PartOfSpeechPerson

instance FromHttpApiData PartOfSpeechPerson where
    parseQueryParam = \case
        "PERSON_UNKNOWN" -> Right PersonUnknown
        "FIRST" -> Right First
        "SECOND" -> Right Second
        "THIRD" -> Right Third
        "REFLEXIVE_PERSON" -> Right ReflexivePerson
        x -> Left ("Unable to parse PartOfSpeechPerson from: " <> x)

instance ToHttpApiData PartOfSpeechPerson where
    toQueryParam = \case
        PersonUnknown -> "PERSON_UNKNOWN"
        First -> "FIRST"
        Second -> "SECOND"
        Third -> "THIRD"
        ReflexivePerson -> "REFLEXIVE_PERSON"

instance FromJSON PartOfSpeechPerson where
    parseJSON = parseJSONText "PartOfSpeechPerson"

instance ToJSON PartOfSpeechPerson where
    toJSON = toJSONText

-- | The entity type.
data EntityType
    = ETUnknown
      -- ^ @UNKNOWN@
      -- Unknown
    | ETPerson
      -- ^ @PERSON@
      -- Person
    | ETLocation
      -- ^ @LOCATION@
      -- Location
    | ETOrganization
      -- ^ @ORGANIZATION@
      -- Organization
    | ETEvent
      -- ^ @EVENT@
      -- Event
    | ETWorkOfArt
      -- ^ @WORK_OF_ART@
      -- Artwork
    | ETConsumerGood
      -- ^ @CONSUMER_GOOD@
      -- Consumer product
    | ETOther
      -- ^ @OTHER@
      -- Other types of entities
    | ETPhoneNumber
      -- ^ @PHONE_NUMBER@
      -- Phone number The metadata lists the phone number, formatted according to
      -- local convention, plus whichever additional elements appear in the text:
      -- * \`number\` - the actual number, broken down into sections as per local
      -- convention * \`national_prefix\` - country code, if detected *
      -- \`area_code\` - region or area code, if detected * \`extension\` - phone
      -- extension (to be dialed after connection), if detected
    | ETAddress
      -- ^ @ADDRESS@
      -- Address The metadata identifies the street number and locality plus
      -- whichever additional elements appear in the text: * \`street_number\` -
      -- street number * \`locality\` - city or town * \`street_name\` -
      -- street\/route name, if detected * \`postal_code\` - postal code, if
      -- detected * \`country\` - country, if detected\< * \`broad_region\` -
      -- administrative area, such as the state, if detected * \`narrow_region\`
      -- - smaller administrative area, such as county, if detected *
      -- \`sublocality\` - used in Asian addresses to demark a district within a
      -- city, if detected
    | ETDate
      -- ^ @DATE@
      -- Date The metadata identifies the components of the date: * \`year\` -
      -- four digit year, if detected * \`month\` - two digit month number, if
      -- detected * \`day\` - two digit day number, if detected
    | ETNumber
      -- ^ @NUMBER@
      -- Number The metadata is the number itself.
    | ETPrice
      -- ^ @PRICE@
      -- Price The metadata identifies the \`value\` and \`currency\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EntityType

instance FromHttpApiData EntityType where
    parseQueryParam = \case
        "UNKNOWN" -> Right ETUnknown
        "PERSON" -> Right ETPerson
        "LOCATION" -> Right ETLocation
        "ORGANIZATION" -> Right ETOrganization
        "EVENT" -> Right ETEvent
        "WORK_OF_ART" -> Right ETWorkOfArt
        "CONSUMER_GOOD" -> Right ETConsumerGood
        "OTHER" -> Right ETOther
        "PHONE_NUMBER" -> Right ETPhoneNumber
        "ADDRESS" -> Right ETAddress
        "DATE" -> Right ETDate
        "NUMBER" -> Right ETNumber
        "PRICE" -> Right ETPrice
        x -> Left ("Unable to parse EntityType from: " <> x)

instance ToHttpApiData EntityType where
    toQueryParam = \case
        ETUnknown -> "UNKNOWN"
        ETPerson -> "PERSON"
        ETLocation -> "LOCATION"
        ETOrganization -> "ORGANIZATION"
        ETEvent -> "EVENT"
        ETWorkOfArt -> "WORK_OF_ART"
        ETConsumerGood -> "CONSUMER_GOOD"
        ETOther -> "OTHER"
        ETPhoneNumber -> "PHONE_NUMBER"
        ETAddress -> "ADDRESS"
        ETDate -> "DATE"
        ETNumber -> "NUMBER"
        ETPrice -> "PRICE"

instance FromJSON EntityType where
    parseJSON = parseJSONText "EntityType"

instance ToJSON EntityType where
    toJSON = toJSONText

-- | The grammatical tense.
data PartOfSpeechTense
    = TenseUnknown
      -- ^ @TENSE_UNKNOWN@
      -- Tense is not applicable in the analyzed language or is not predicted.
    | ConditionalTense
      -- ^ @CONDITIONAL_TENSE@
      -- Conditional
    | Future
      -- ^ @FUTURE@
      -- Future
    | Past
      -- ^ @PAST@
      -- Past
    | Present
      -- ^ @PRESENT@
      -- Present
    | Imperfect
      -- ^ @IMPERFECT@
      -- Imperfect
    | Pluperfect
      -- ^ @PLUPERFECT@
      -- Pluperfect
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PartOfSpeechTense

instance FromHttpApiData PartOfSpeechTense where
    parseQueryParam = \case
        "TENSE_UNKNOWN" -> Right TenseUnknown
        "CONDITIONAL_TENSE" -> Right ConditionalTense
        "FUTURE" -> Right Future
        "PAST" -> Right Past
        "PRESENT" -> Right Present
        "IMPERFECT" -> Right Imperfect
        "PLUPERFECT" -> Right Pluperfect
        x -> Left ("Unable to parse PartOfSpeechTense from: " <> x)

instance ToHttpApiData PartOfSpeechTense where
    toQueryParam = \case
        TenseUnknown -> "TENSE_UNKNOWN"
        ConditionalTense -> "CONDITIONAL_TENSE"
        Future -> "FUTURE"
        Past -> "PAST"
        Present -> "PRESENT"
        Imperfect -> "IMPERFECT"
        Pluperfect -> "PLUPERFECT"

instance FromJSON PartOfSpeechTense where
    parseJSON = parseJSONText "PartOfSpeechTense"

instance ToJSON PartOfSpeechTense where
    toJSON = toJSONText

-- | The grammatical mood.
data PartOfSpeechMood
    = MoodUnknown
      -- ^ @MOOD_UNKNOWN@
      -- Mood is not applicable in the analyzed language or is not predicted.
    | ConditionalMood
      -- ^ @CONDITIONAL_MOOD@
      -- Conditional
    | Imperative
      -- ^ @IMPERATIVE@
      -- Imperative
    | Indicative
      -- ^ @INDICATIVE@
      -- Indicative
    | Interrogative
      -- ^ @INTERROGATIVE@
      -- Interrogative
    | Jussive
      -- ^ @JUSSIVE@
      -- Jussive
    | Subjunctive
      -- ^ @SUBJUNCTIVE@
      -- Subjunctive
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PartOfSpeechMood

instance FromHttpApiData PartOfSpeechMood where
    parseQueryParam = \case
        "MOOD_UNKNOWN" -> Right MoodUnknown
        "CONDITIONAL_MOOD" -> Right ConditionalMood
        "IMPERATIVE" -> Right Imperative
        "INDICATIVE" -> Right Indicative
        "INTERROGATIVE" -> Right Interrogative
        "JUSSIVE" -> Right Jussive
        "SUBJUNCTIVE" -> Right Subjunctive
        x -> Left ("Unable to parse PartOfSpeechMood from: " <> x)

instance ToHttpApiData PartOfSpeechMood where
    toQueryParam = \case
        MoodUnknown -> "MOOD_UNKNOWN"
        ConditionalMood -> "CONDITIONAL_MOOD"
        Imperative -> "IMPERATIVE"
        Indicative -> "INDICATIVE"
        Interrogative -> "INTERROGATIVE"
        Jussive -> "JUSSIVE"
        Subjunctive -> "SUBJUNCTIVE"

instance FromJSON PartOfSpeechMood where
    parseJSON = parseJSONText "PartOfSpeechMood"

instance ToJSON PartOfSpeechMood where
    toJSON = toJSONText

-- | The grammatical case.
data PartOfSpeechCase
    = CaseUnknown
      -- ^ @CASE_UNKNOWN@
      -- Case is not applicable in the analyzed language or is not predicted.
    | Accusative
      -- ^ @ACCUSATIVE@
      -- Accusative
    | Adverbial
      -- ^ @ADVERBIAL@
      -- Adverbial
    | Complementive
      -- ^ @COMPLEMENTIVE@
      -- Complementive
    | Dative
      -- ^ @DATIVE@
      -- Dative
    | Genitive
      -- ^ @GENITIVE@
      -- Genitive
    | Instrumental
      -- ^ @INSTRUMENTAL@
      -- Instrumental
    | Locative
      -- ^ @LOCATIVE@
      -- Locative
    | Nominative
      -- ^ @NOMINATIVE@
      -- Nominative
    | Oblique
      -- ^ @OBLIQUE@
      -- Oblique
    | Partitive
      -- ^ @PARTITIVE@
      -- Partitive
    | PrePositional
      -- ^ @PREPOSITIONAL@
      -- Prepositional
    | ReflexiveCase
      -- ^ @REFLEXIVE_CASE@
      -- Reflexive
    | RelativeCase
      -- ^ @RELATIVE_CASE@
      -- Relative
    | Vocative
      -- ^ @VOCATIVE@
      -- Vocative
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PartOfSpeechCase

instance FromHttpApiData PartOfSpeechCase where
    parseQueryParam = \case
        "CASE_UNKNOWN" -> Right CaseUnknown
        "ACCUSATIVE" -> Right Accusative
        "ADVERBIAL" -> Right Adverbial
        "COMPLEMENTIVE" -> Right Complementive
        "DATIVE" -> Right Dative
        "GENITIVE" -> Right Genitive
        "INSTRUMENTAL" -> Right Instrumental
        "LOCATIVE" -> Right Locative
        "NOMINATIVE" -> Right Nominative
        "OBLIQUE" -> Right Oblique
        "PARTITIVE" -> Right Partitive
        "PREPOSITIONAL" -> Right PrePositional
        "REFLEXIVE_CASE" -> Right ReflexiveCase
        "RELATIVE_CASE" -> Right RelativeCase
        "VOCATIVE" -> Right Vocative
        x -> Left ("Unable to parse PartOfSpeechCase from: " <> x)

instance ToHttpApiData PartOfSpeechCase where
    toQueryParam = \case
        CaseUnknown -> "CASE_UNKNOWN"
        Accusative -> "ACCUSATIVE"
        Adverbial -> "ADVERBIAL"
        Complementive -> "COMPLEMENTIVE"
        Dative -> "DATIVE"
        Genitive -> "GENITIVE"
        Instrumental -> "INSTRUMENTAL"
        Locative -> "LOCATIVE"
        Nominative -> "NOMINATIVE"
        Oblique -> "OBLIQUE"
        Partitive -> "PARTITIVE"
        PrePositional -> "PREPOSITIONAL"
        ReflexiveCase -> "REFLEXIVE_CASE"
        RelativeCase -> "RELATIVE_CASE"
        Vocative -> "VOCATIVE"

instance FromJSON PartOfSpeechCase where
    parseJSON = parseJSONText "PartOfSpeechCase"

instance ToJSON PartOfSpeechCase where
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

-- | The encoding type used by the API to calculate offsets.
data AnnotateTextRequestEncodingType
    = ATRETNone
      -- ^ @NONE@
      -- If \`EncodingType\` is not specified, encoding-dependent information
      -- (such as \`begin_offset\`) will be set at \`-1\`.
    | ATRETUTF8
      -- ^ @UTF8@
      -- Encoding-dependent information (such as \`begin_offset\`) is calculated
      -- based on the UTF-8 encoding of the input. C++ and Go are examples of
      -- languages that use this encoding natively.
    | ATRETUTF16
      -- ^ @UTF16@
      -- Encoding-dependent information (such as \`begin_offset\`) is calculated
      -- based on the UTF-16 encoding of the input. Java and JavaScript are
      -- examples of languages that use this encoding natively.
    | ATRETUTF32
      -- ^ @UTF32@
      -- Encoding-dependent information (such as \`begin_offset\`) is calculated
      -- based on the UTF-32 encoding of the input. Python is an example of a
      -- language that uses this encoding natively.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AnnotateTextRequestEncodingType

instance FromHttpApiData AnnotateTextRequestEncodingType where
    parseQueryParam = \case
        "NONE" -> Right ATRETNone
        "UTF8" -> Right ATRETUTF8
        "UTF16" -> Right ATRETUTF16
        "UTF32" -> Right ATRETUTF32
        x -> Left ("Unable to parse AnnotateTextRequestEncodingType from: " <> x)

instance ToHttpApiData AnnotateTextRequestEncodingType where
    toQueryParam = \case
        ATRETNone -> "NONE"
        ATRETUTF8 -> "UTF8"
        ATRETUTF16 -> "UTF16"
        ATRETUTF32 -> "UTF32"

instance FromJSON AnnotateTextRequestEncodingType where
    parseJSON = parseJSONText "AnnotateTextRequestEncodingType"

instance ToJSON AnnotateTextRequestEncodingType where
    toJSON = toJSONText

-- | The grammatical number.
data PartOfSpeechNumber
    = NumberUnknown
      -- ^ @NUMBER_UNKNOWN@
      -- Number is not applicable in the analyzed language or is not predicted.
    | Singular
      -- ^ @SINGULAR@
      -- Singular
    | Plural
      -- ^ @PLURAL@
      -- Plural
    | Dual
      -- ^ @DUAL@
      -- Dual
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PartOfSpeechNumber

instance FromHttpApiData PartOfSpeechNumber where
    parseQueryParam = \case
        "NUMBER_UNKNOWN" -> Right NumberUnknown
        "SINGULAR" -> Right Singular
        "PLURAL" -> Right Plural
        "DUAL" -> Right Dual
        x -> Left ("Unable to parse PartOfSpeechNumber from: " <> x)

instance ToHttpApiData PartOfSpeechNumber where
    toQueryParam = \case
        NumberUnknown -> "NUMBER_UNKNOWN"
        Singular -> "SINGULAR"
        Plural -> "PLURAL"
        Dual -> "DUAL"

instance FromJSON PartOfSpeechNumber where
    parseJSON = parseJSONText "PartOfSpeechNumber"

instance ToJSON PartOfSpeechNumber where
    toJSON = toJSONText

-- | The encoding type used by the API to calculate offsets.
data AnalyzeEntitiesRequestEncodingType
    = AERETNone
      -- ^ @NONE@
      -- If \`EncodingType\` is not specified, encoding-dependent information
      -- (such as \`begin_offset\`) will be set at \`-1\`.
    | AERETUTF8
      -- ^ @UTF8@
      -- Encoding-dependent information (such as \`begin_offset\`) is calculated
      -- based on the UTF-8 encoding of the input. C++ and Go are examples of
      -- languages that use this encoding natively.
    | AERETUTF16
      -- ^ @UTF16@
      -- Encoding-dependent information (such as \`begin_offset\`) is calculated
      -- based on the UTF-16 encoding of the input. Java and JavaScript are
      -- examples of languages that use this encoding natively.
    | AERETUTF32
      -- ^ @UTF32@
      -- Encoding-dependent information (such as \`begin_offset\`) is calculated
      -- based on the UTF-32 encoding of the input. Python is an example of a
      -- language that uses this encoding natively.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AnalyzeEntitiesRequestEncodingType

instance FromHttpApiData AnalyzeEntitiesRequestEncodingType where
    parseQueryParam = \case
        "NONE" -> Right AERETNone
        "UTF8" -> Right AERETUTF8
        "UTF16" -> Right AERETUTF16
        "UTF32" -> Right AERETUTF32
        x -> Left ("Unable to parse AnalyzeEntitiesRequestEncodingType from: " <> x)

instance ToHttpApiData AnalyzeEntitiesRequestEncodingType where
    toQueryParam = \case
        AERETNone -> "NONE"
        AERETUTF8 -> "UTF8"
        AERETUTF16 -> "UTF16"
        AERETUTF32 -> "UTF32"

instance FromJSON AnalyzeEntitiesRequestEncodingType where
    parseJSON = parseJSONText "AnalyzeEntitiesRequestEncodingType"

instance ToJSON AnalyzeEntitiesRequestEncodingType where
    toJSON = toJSONText

-- | The grammatical aspect.
data PartOfSpeechAspect
    = AspectUnknown
      -- ^ @ASPECT_UNKNOWN@
      -- Aspect is not applicable in the analyzed language or is not predicted.
    | Perfective
      -- ^ @PERFECTIVE@
      -- Perfective
    | Imperfective
      -- ^ @IMPERFECTIVE@
      -- Imperfective
    | Progressive
      -- ^ @PROGRESSIVE@
      -- Progressive
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PartOfSpeechAspect

instance FromHttpApiData PartOfSpeechAspect where
    parseQueryParam = \case
        "ASPECT_UNKNOWN" -> Right AspectUnknown
        "PERFECTIVE" -> Right Perfective
        "IMPERFECTIVE" -> Right Imperfective
        "PROGRESSIVE" -> Right Progressive
        x -> Left ("Unable to parse PartOfSpeechAspect from: " <> x)

instance ToHttpApiData PartOfSpeechAspect where
    toQueryParam = \case
        AspectUnknown -> "ASPECT_UNKNOWN"
        Perfective -> "PERFECTIVE"
        Imperfective -> "IMPERFECTIVE"
        Progressive -> "PROGRESSIVE"

instance FromJSON PartOfSpeechAspect where
    parseJSON = parseJSONText "PartOfSpeechAspect"

instance ToJSON PartOfSpeechAspect where
    toJSON = toJSONText

-- | The grammatical reciprocity.
data PartOfSpeechReciprocity
    = ReciprocityUnknown
      -- ^ @RECIPROCITY_UNKNOWN@
      -- Reciprocity is not applicable in the analyzed language or is not
      -- predicted.
    | Reciprocal
      -- ^ @RECIPROCAL@
      -- Reciprocal
    | NonReciprocal
      -- ^ @NON_RECIPROCAL@
      -- Non-reciprocal
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PartOfSpeechReciprocity

instance FromHttpApiData PartOfSpeechReciprocity where
    parseQueryParam = \case
        "RECIPROCITY_UNKNOWN" -> Right ReciprocityUnknown
        "RECIPROCAL" -> Right Reciprocal
        "NON_RECIPROCAL" -> Right NonReciprocal
        x -> Left ("Unable to parse PartOfSpeechReciprocity from: " <> x)

instance ToHttpApiData PartOfSpeechReciprocity where
    toQueryParam = \case
        ReciprocityUnknown -> "RECIPROCITY_UNKNOWN"
        Reciprocal -> "RECIPROCAL"
        NonReciprocal -> "NON_RECIPROCAL"

instance FromJSON PartOfSpeechReciprocity where
    parseJSON = parseJSONText "PartOfSpeechReciprocity"

instance ToJSON PartOfSpeechReciprocity where
    toJSON = toJSONText

-- | The grammatical gender.
data PartOfSpeechGender
    = GenderUnknown
      -- ^ @GENDER_UNKNOWN@
      -- Gender is not applicable in the analyzed language or is not predicted.
    | Feminine
      -- ^ @FEMININE@
      -- Feminine
    | Masculine
      -- ^ @MASCULINE@
      -- Masculine
    | Neuter
      -- ^ @NEUTER@
      -- Neuter
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PartOfSpeechGender

instance FromHttpApiData PartOfSpeechGender where
    parseQueryParam = \case
        "GENDER_UNKNOWN" -> Right GenderUnknown
        "FEMININE" -> Right Feminine
        "MASCULINE" -> Right Masculine
        "NEUTER" -> Right Neuter
        x -> Left ("Unable to parse PartOfSpeechGender from: " <> x)

instance ToHttpApiData PartOfSpeechGender where
    toQueryParam = \case
        GenderUnknown -> "GENDER_UNKNOWN"
        Feminine -> "FEMININE"
        Masculine -> "MASCULINE"
        Neuter -> "NEUTER"

instance FromJSON PartOfSpeechGender where
    parseJSON = parseJSONText "PartOfSpeechGender"

instance ToJSON PartOfSpeechGender where
    toJSON = toJSONText

-- | The encoding type used by the API to calculate sentence offsets.
data AnalyzeSentimentRequestEncodingType
    = ASRETNone
      -- ^ @NONE@
      -- If \`EncodingType\` is not specified, encoding-dependent information
      -- (such as \`begin_offset\`) will be set at \`-1\`.
    | ASRETUTF8
      -- ^ @UTF8@
      -- Encoding-dependent information (such as \`begin_offset\`) is calculated
      -- based on the UTF-8 encoding of the input. C++ and Go are examples of
      -- languages that use this encoding natively.
    | ASRETUTF16
      -- ^ @UTF16@
      -- Encoding-dependent information (such as \`begin_offset\`) is calculated
      -- based on the UTF-16 encoding of the input. Java and JavaScript are
      -- examples of languages that use this encoding natively.
    | ASRETUTF32
      -- ^ @UTF32@
      -- Encoding-dependent information (such as \`begin_offset\`) is calculated
      -- based on the UTF-32 encoding of the input. Python is an example of a
      -- language that uses this encoding natively.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AnalyzeSentimentRequestEncodingType

instance FromHttpApiData AnalyzeSentimentRequestEncodingType where
    parseQueryParam = \case
        "NONE" -> Right ASRETNone
        "UTF8" -> Right ASRETUTF8
        "UTF16" -> Right ASRETUTF16
        "UTF32" -> Right ASRETUTF32
        x -> Left ("Unable to parse AnalyzeSentimentRequestEncodingType from: " <> x)

instance ToHttpApiData AnalyzeSentimentRequestEncodingType where
    toQueryParam = \case
        ASRETNone -> "NONE"
        ASRETUTF8 -> "UTF8"
        ASRETUTF16 -> "UTF16"
        ASRETUTF32 -> "UTF32"

instance FromJSON AnalyzeSentimentRequestEncodingType where
    parseJSON = parseJSONText "AnalyzeSentimentRequestEncodingType"

instance ToJSON AnalyzeSentimentRequestEncodingType where
    toJSON = toJSONText

-- | The type of the entity mention.
data EntityMentionType
    = EMTTypeUnknown
      -- ^ @TYPE_UNKNOWN@
      -- Unknown
    | EMTProper
      -- ^ @PROPER@
      -- Proper name
    | EMTCommon
      -- ^ @COMMON@
      -- Common noun (or noun compound)
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EntityMentionType

instance FromHttpApiData EntityMentionType where
    parseQueryParam = \case
        "TYPE_UNKNOWN" -> Right EMTTypeUnknown
        "PROPER" -> Right EMTProper
        "COMMON" -> Right EMTCommon
        x -> Left ("Unable to parse EntityMentionType from: " <> x)

instance ToHttpApiData EntityMentionType where
    toQueryParam = \case
        EMTTypeUnknown -> "TYPE_UNKNOWN"
        EMTProper -> "PROPER"
        EMTCommon -> "COMMON"

instance FromJSON EntityMentionType where
    parseJSON = parseJSONText "EntityMentionType"

instance ToJSON EntityMentionType where
    toJSON = toJSONText
