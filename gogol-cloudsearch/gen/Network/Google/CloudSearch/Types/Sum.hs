{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudSearch.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudSearch.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

data DriveMimeTypeRestrictType
    = Unspecified
      -- ^ @UNSPECIFIED@
    | Pdf
      -- ^ @PDF@
    | Document
      -- ^ @DOCUMENT@
    | Presentation
      -- ^ @PRESENTATION@
    | Spreadsheet
      -- ^ @SPREADSHEET@
    | Form
      -- ^ @FORM@
    | Drawing
      -- ^ @DRAWING@
    | Script
      -- ^ @SCRIPT@
    | Map
      -- ^ @MAP@
    | Image
      -- ^ @IMAGE@
    | Audio
      -- ^ @AUDIO@
    | Video
      -- ^ @VIDEO@
    | Folder
      -- ^ @FOLDER@
    | Archive
      -- ^ @ARCHIVE@
    | Site
      -- ^ @SITE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DriveMimeTypeRestrictType

instance FromHttpApiData DriveMimeTypeRestrictType where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right Unspecified
        "PDF" -> Right Pdf
        "DOCUMENT" -> Right Document
        "PRESENTATION" -> Right Presentation
        "SPREADSHEET" -> Right Spreadsheet
        "FORM" -> Right Form
        "DRAWING" -> Right Drawing
        "SCRIPT" -> Right Script
        "MAP" -> Right Map
        "IMAGE" -> Right Image
        "AUDIO" -> Right Audio
        "VIDEO" -> Right Video
        "FOLDER" -> Right Folder
        "ARCHIVE" -> Right Archive
        "SITE" -> Right Site
        x -> Left ("Unable to parse DriveMimeTypeRestrictType from: " <> x)

instance ToHttpApiData DriveMimeTypeRestrictType where
    toQueryParam = \case
        Unspecified -> "UNSPECIFIED"
        Pdf -> "PDF"
        Document -> "DOCUMENT"
        Presentation -> "PRESENTATION"
        Spreadsheet -> "SPREADSHEET"
        Form -> "FORM"
        Drawing -> "DRAWING"
        Script -> "SCRIPT"
        Map -> "MAP"
        Image -> "IMAGE"
        Audio -> "AUDIO"
        Video -> "VIDEO"
        Folder -> "FOLDER"
        Archive -> "ARCHIVE"
        Site -> "SITE"

instance FromJSON DriveMimeTypeRestrictType where
    parseJSON = parseJSONText "DriveMimeTypeRestrictType"

instance ToJSON DriveMimeTypeRestrictType where
    toJSON = toJSONText

data DriveFollowUpRestrictType
    = DFURTUnspecified
      -- ^ @UNSPECIFIED@
    | DFURTFollowupSuggestions
      -- ^ @FOLLOWUP_SUGGESTIONS@
    | DFURTFollowupActionItems
      -- ^ @FOLLOWUP_ACTION_ITEMS@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DriveFollowUpRestrictType

instance FromHttpApiData DriveFollowUpRestrictType where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right DFURTUnspecified
        "FOLLOWUP_SUGGESTIONS" -> Right DFURTFollowupSuggestions
        "FOLLOWUP_ACTION_ITEMS" -> Right DFURTFollowupActionItems
        x -> Left ("Unable to parse DriveFollowUpRestrictType from: " <> x)

instance ToHttpApiData DriveFollowUpRestrictType where
    toQueryParam = \case
        DFURTUnspecified -> "UNSPECIFIED"
        DFURTFollowupSuggestions -> "FOLLOWUP_SUGGESTIONS"
        DFURTFollowupActionItems -> "FOLLOWUP_ACTION_ITEMS"

instance FromJSON DriveFollowUpRestrictType where
    parseJSON = parseJSONText "DriveFollowUpRestrictType"

instance ToJSON DriveFollowUpRestrictType where
    toJSON = toJSONText

-- | Status code.
data ItemStatusCode
    = CodeUnspecified
      -- ^ @CODE_UNSPECIFIED@
      -- Input-only value. Used with Items.list to list all items in the queue,
      -- regardless of status.
    | Error'
      -- ^ @ERROR@
      -- Error encountered by Cloud Search while processing this item. Details of
      -- the error are in repositoryError.
    | Modified
      -- ^ @MODIFIED@
      -- Item has been modified in the repository, and is out of date with the
      -- version previously accepted into Cloud Search.
    | NewItem
      -- ^ @NEW_ITEM@
      -- Item is known to exist in the repository, but is not yet accepted by
      -- Cloud Search. An item can be in this state when Items.push has been
      -- called for an item of this name that did not exist previously.
    | Accepted
      -- ^ @ACCEPTED@
      -- API has accepted the up-to-date data of this item.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ItemStatusCode

instance FromHttpApiData ItemStatusCode where
    parseQueryParam = \case
        "CODE_UNSPECIFIED" -> Right CodeUnspecified
        "ERROR" -> Right Error'
        "MODIFIED" -> Right Modified
        "NEW_ITEM" -> Right NewItem
        "ACCEPTED" -> Right Accepted
        x -> Left ("Unable to parse ItemStatusCode from: " <> x)

instance ToHttpApiData ItemStatusCode where
    toQueryParam = \case
        CodeUnspecified -> "CODE_UNSPECIFIED"
        Error' -> "ERROR"
        Modified -> "MODIFIED"
        NewItem -> "NEW_ITEM"
        Accepted -> "ACCEPTED"

instance FromJSON ItemStatusCode where
    parseJSON = parseJSONText "ItemStatusCode"

instance ToJSON ItemStatusCode where
    toJSON = toJSONText

data GmailTimeRestrictType
    = GTRTUnspecified
      -- ^ @UNSPECIFIED@
    | GTRTFromThisWeek
      -- ^ @FROM_THIS_WEEK@
      -- newer_than:7d
    | GTRTOlderThanOneYear
      -- ^ @OLDER_THAN_ONE_YEAR@
      -- older_than:1y
    | GTRTFromToday
      -- ^ @FROM_TODAY@
      -- newer_than:1d
    | GTRTFromYesterday
      -- ^ @FROM_YESTERDAY@
      -- newer_than:2d older_than:1d
    | GTRTFromThisMonth
      -- ^ @FROM_THIS_MONTH@
      -- newer_than:30d
    | GTRTFromCertainMonth
      -- ^ @FROM_CERTAIN_MONTH@
      -- This will read as something like \"From November\" and will have
      -- operator before:X after:Y
    | GTRTOlderThanToday
      -- ^ @OLDER_THAN_TODAY@
      -- older_than:1d
    | GTRTOlderThanYesterday
      -- ^ @OLDER_THAN_YESTERDAY@
      -- older_than:2d
    | GTRTOlderThanAWeek
      -- ^ @OLDER_THAN_A_WEEK@
      -- older_than:7d
    | GTRTOlderThanAMonth
      -- ^ @OLDER_THAN_A_MONTH@
      -- older_than:30d
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GmailTimeRestrictType

instance FromHttpApiData GmailTimeRestrictType where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right GTRTUnspecified
        "FROM_THIS_WEEK" -> Right GTRTFromThisWeek
        "OLDER_THAN_ONE_YEAR" -> Right GTRTOlderThanOneYear
        "FROM_TODAY" -> Right GTRTFromToday
        "FROM_YESTERDAY" -> Right GTRTFromYesterday
        "FROM_THIS_MONTH" -> Right GTRTFromThisMonth
        "FROM_CERTAIN_MONTH" -> Right GTRTFromCertainMonth
        "OLDER_THAN_TODAY" -> Right GTRTOlderThanToday
        "OLDER_THAN_YESTERDAY" -> Right GTRTOlderThanYesterday
        "OLDER_THAN_A_WEEK" -> Right GTRTOlderThanAWeek
        "OLDER_THAN_A_MONTH" -> Right GTRTOlderThanAMonth
        x -> Left ("Unable to parse GmailTimeRestrictType from: " <> x)

instance ToHttpApiData GmailTimeRestrictType where
    toQueryParam = \case
        GTRTUnspecified -> "UNSPECIFIED"
        GTRTFromThisWeek -> "FROM_THIS_WEEK"
        GTRTOlderThanOneYear -> "OLDER_THAN_ONE_YEAR"
        GTRTFromToday -> "FROM_TODAY"
        GTRTFromYesterday -> "FROM_YESTERDAY"
        GTRTFromThisMonth -> "FROM_THIS_MONTH"
        GTRTFromCertainMonth -> "FROM_CERTAIN_MONTH"
        GTRTOlderThanToday -> "OLDER_THAN_TODAY"
        GTRTOlderThanYesterday -> "OLDER_THAN_YESTERDAY"
        GTRTOlderThanAWeek -> "OLDER_THAN_A_WEEK"
        GTRTOlderThanAMonth -> "OLDER_THAN_A_MONTH"

instance FromJSON GmailTimeRestrictType where
    parseJSON = parseJSONText "GmailTimeRestrictType"

instance ToJSON GmailTimeRestrictType where
    toJSON = toJSONText

data QueryInterpretationInterpretationType
    = None
      -- ^ @NONE@
      -- No natural language interpretation or the natural language
      -- interpretation is not used to fetch the search results.
    | Blend
      -- ^ @BLEND@
      -- The natural language results is mixed with results from original query.
    | Replace
      -- ^ @REPLACE@
      -- The results only contain natural language results.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable QueryInterpretationInterpretationType

instance FromHttpApiData QueryInterpretationInterpretationType where
    parseQueryParam = \case
        "NONE" -> Right None
        "BLEND" -> Right Blend
        "REPLACE" -> Right Replace
        x -> Left ("Unable to parse QueryInterpretationInterpretationType from: " <> x)

instance ToHttpApiData QueryInterpretationInterpretationType where
    toQueryParam = \case
        None -> "NONE"
        Blend -> "BLEND"
        Replace -> "REPLACE"

instance FromJSON QueryInterpretationInterpretationType where
    parseJSON = parseJSONText "QueryInterpretationInterpretationType"

instance ToJSON QueryInterpretationInterpretationType where
    toJSON = toJSONText

data InteractionType
    = ITUnspecified
      -- ^ @UNSPECIFIED@
      -- Invalid value.
    | ITView
      -- ^ @VIEW@
      -- This interaction indicates the user viewed the item.
    | ITEdit
      -- ^ @EDIT@
      -- This interaction indicates the user edited the item.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InteractionType

instance FromHttpApiData InteractionType where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right ITUnspecified
        "VIEW" -> Right ITView
        "EDIT" -> Right ITEdit
        x -> Left ("Unable to parse InteractionType from: " <> x)

instance ToHttpApiData InteractionType where
    toQueryParam = \case
        ITUnspecified -> "UNSPECIFIED"
        ITView -> "VIEW"
        ITEdit -> "EDIT"

instance FromJSON InteractionType where
    parseJSON = parseJSONText "InteractionType"

instance ToJSON InteractionType where
    toJSON = toJSONText

-- | Type of the operator.
data QueryOperatorType
    = QOTUnknown
      -- ^ @UNKNOWN@
      -- Invalid value.
    | QOTInteger
      -- ^ @INTEGER@
    | QOTDouble
      -- ^ @DOUBLE@
    | QOTTimestamp
      -- ^ @TIMESTAMP@
    | QOTBoolean
      -- ^ @BOOLEAN@
    | QOTEnum'
      -- ^ @ENUM@
    | QOTDate
      -- ^ @DATE@
    | QOTText
      -- ^ @TEXT@
    | QOTHTML
      -- ^ @HTML@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable QueryOperatorType

instance FromHttpApiData QueryOperatorType where
    parseQueryParam = \case
        "UNKNOWN" -> Right QOTUnknown
        "INTEGER" -> Right QOTInteger
        "DOUBLE" -> Right QOTDouble
        "TIMESTAMP" -> Right QOTTimestamp
        "BOOLEAN" -> Right QOTBoolean
        "ENUM" -> Right QOTEnum'
        "DATE" -> Right QOTDate
        "TEXT" -> Right QOTText
        "HTML" -> Right QOTHTML
        x -> Left ("Unable to parse QueryOperatorType from: " <> x)

instance ToHttpApiData QueryOperatorType where
    toQueryParam = \case
        QOTUnknown -> "UNKNOWN"
        QOTInteger -> "INTEGER"
        QOTDouble -> "DOUBLE"
        QOTTimestamp -> "TIMESTAMP"
        QOTBoolean -> "BOOLEAN"
        QOTEnum' -> "ENUM"
        QOTDate -> "DATE"
        QOTText -> "TEXT"
        QOTHTML -> "HTML"

instance FromJSON QueryOperatorType where
    parseJSON = parseJSONText "QueryOperatorType"

instance ToJSON QueryOperatorType where
    toJSON = toJSONText

data GmailIntelligentRestrictType
    = GIRTUnspecified
      -- ^ @UNSPECIFIED@
    | GIRTSocial
      -- ^ @SOCIAL@
      -- category:social
    | GIRTUpdates
      -- ^ @UPDATES@
      -- category:updates
    | GIRTForums
      -- ^ @FORUMS@
      -- category:forums
    | GIRTPromotions
      -- ^ @PROMOTIONS@
      -- category:promotions
    | GIRTImportant
      -- ^ @IMPORTANT@
      -- is:important
    | GIRTFlightReservation
      -- ^ @FLIGHT_RESERVATION@
      -- label:^cob_sm_flightreservation
    | GIRTLodgingReservation
      -- ^ @LODGING_RESERVATION@
      -- label:^cob_sm_lodgingreservation
    | GIRTCarReservation
      -- ^ @CAR_RESERVATION@
      -- label:^cob_sm_rentalcarreservation
    | GIRTBusReservation
      -- ^ @BUS_RESERVATION@
      -- label:^cob_sm_busreservation
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GmailIntelligentRestrictType

instance FromHttpApiData GmailIntelligentRestrictType where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right GIRTUnspecified
        "SOCIAL" -> Right GIRTSocial
        "UPDATES" -> Right GIRTUpdates
        "FORUMS" -> Right GIRTForums
        "PROMOTIONS" -> Right GIRTPromotions
        "IMPORTANT" -> Right GIRTImportant
        "FLIGHT_RESERVATION" -> Right GIRTFlightReservation
        "LODGING_RESERVATION" -> Right GIRTLodgingReservation
        "CAR_RESERVATION" -> Right GIRTCarReservation
        "BUS_RESERVATION" -> Right GIRTBusReservation
        x -> Left ("Unable to parse GmailIntelligentRestrictType from: " <> x)

instance ToHttpApiData GmailIntelligentRestrictType where
    toQueryParam = \case
        GIRTUnspecified -> "UNSPECIFIED"
        GIRTSocial -> "SOCIAL"
        GIRTUpdates -> "UPDATES"
        GIRTForums -> "FORUMS"
        GIRTPromotions -> "PROMOTIONS"
        GIRTImportant -> "IMPORTANT"
        GIRTFlightReservation -> "FLIGHT_RESERVATION"
        GIRTLodgingReservation -> "LODGING_RESERVATION"
        GIRTCarReservation -> "CAR_RESERVATION"
        GIRTBusReservation -> "BUS_RESERVATION"

instance FromJSON GmailIntelligentRestrictType where
    parseJSON = parseJSONText "GmailIntelligentRestrictType"

instance ToJSON GmailIntelligentRestrictType where
    toJSON = toJSONText

-- | Used to specify the ordered ranking for the enumeration that determines
-- how the integer values provided in the possible EnumValuePairs are used
-- to rank results. If specified, integer values must be provided for all
-- possible EnumValuePair values given for this property. Can only be used
-- if isRepeatable is false.
data EnumPropertyOptionsOrderedRanking
    = NoOrder
      -- ^ @NO_ORDER@
      -- There is no ranking order for the property. Results will not be adjusted
      -- by this property\'s value.
    | Ascending
      -- ^ @ASCENDING@
      -- This property is ranked in ascending order. Lower values indicate lower
      -- ranking.
    | Descending
      -- ^ @DESCENDING@
      -- This property is ranked in descending order. Lower values indicate
      -- higher ranking.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EnumPropertyOptionsOrderedRanking

instance FromHttpApiData EnumPropertyOptionsOrderedRanking where
    parseQueryParam = \case
        "NO_ORDER" -> Right NoOrder
        "ASCENDING" -> Right Ascending
        "DESCENDING" -> Right Descending
        x -> Left ("Unable to parse EnumPropertyOptionsOrderedRanking from: " <> x)

instance ToHttpApiData EnumPropertyOptionsOrderedRanking where
    toQueryParam = \case
        NoOrder -> "NO_ORDER"
        Ascending -> "ASCENDING"
        Descending -> "DESCENDING"

instance FromJSON EnumPropertyOptionsOrderedRanking where
    parseJSON = parseJSONText "EnumPropertyOptionsOrderedRanking"

instance ToJSON EnumPropertyOptionsOrderedRanking where
    toJSON = toJSONText

-- | Used to specify the ordered ranking for the integer. Can only be used if
-- isRepeatable is false.
data IntegerPropertyOptionsOrderedRanking
    = IPOORNoOrder
      -- ^ @NO_ORDER@
      -- There is no ranking order for the property. Results will not be adjusted
      -- by this property\'s value.
    | IPOORAscending
      -- ^ @ASCENDING@
      -- This property is ranked in ascending order. Lower values indicate lower
      -- ranking.
    | IPOORDescending
      -- ^ @DESCENDING@
      -- This property is ranked in descending order. Lower values indicate
      -- higher ranking.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable IntegerPropertyOptionsOrderedRanking

instance FromHttpApiData IntegerPropertyOptionsOrderedRanking where
    parseQueryParam = \case
        "NO_ORDER" -> Right IPOORNoOrder
        "ASCENDING" -> Right IPOORAscending
        "DESCENDING" -> Right IPOORDescending
        x -> Left ("Unable to parse IntegerPropertyOptionsOrderedRanking from: " <> x)

instance ToHttpApiData IntegerPropertyOptionsOrderedRanking where
    toQueryParam = \case
        IPOORNoOrder -> "NO_ORDER"
        IPOORAscending -> "ASCENDING"
        IPOORDescending -> "DESCENDING"

instance FromJSON IntegerPropertyOptionsOrderedRanking where
    parseJSON = parseJSONText "IntegerPropertyOptionsOrderedRanking"

instance ToJSON IntegerPropertyOptionsOrderedRanking where
    toJSON = toJSONText

-- | The type of the push operation that defines the push behavior.
data PushItemType
    = PITUnspecified
      -- ^ @UNSPECIFIED@
      -- Default UNSPECIFIED. Specifies that the push operation should not modify
      -- ItemStatus
    | PITModified
      -- ^ @MODIFIED@
      -- Indicates that the repository document has been modified or updated
      -- since the previous update call. This changes status to MODIFIED state
      -- for an existing item. If this is called on a non existing item, the
      -- status is changed to NEW_ITEM.
    | PITNotModified
      -- ^ @NOT_MODIFIED@
      -- Item in the repository has not been modified since the last update call.
      -- This push operation will set status to ACCEPTED state.
    | PITRepositoryError
      -- ^ @REPOSITORY_ERROR@
      -- Connector is facing a repository error regarding this item. Change
      -- status to REPOSITORY_ERROR state. Item is unreserved and rescheduled at
      -- a future time determined by exponential backoff.
    | PITReQueue
      -- ^ @REQUEUE@
      -- Call push with REQUEUE only for items that have been reserved. This
      -- action unreserves the item and resets its available time to the wall
      -- clock time.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PushItemType

instance FromHttpApiData PushItemType where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right PITUnspecified
        "MODIFIED" -> Right PITModified
        "NOT_MODIFIED" -> Right PITNotModified
        "REPOSITORY_ERROR" -> Right PITRepositoryError
        "REQUEUE" -> Right PITReQueue
        x -> Left ("Unable to parse PushItemType from: " <> x)

instance ToHttpApiData PushItemType where
    toQueryParam = \case
        PITUnspecified -> "UNSPECIFIED"
        PITModified -> "MODIFIED"
        PITNotModified -> "NOT_MODIFIED"
        PITRepositoryError -> "REPOSITORY_ERROR"
        PITReQueue -> "REQUEUE"

instance FromJSON PushItemType where
    parseJSON = parseJSONText "PushItemType"

instance ToJSON PushItemType where
    toJSON = toJSONText

-- | The logic operator of the sub filter.
data CompositeFilterLogicOperator
    = And
      -- ^ @AND@
      -- Logical operators, which can only be applied to sub filters.
    | OR
      -- ^ @OR@
    | Not
      -- ^ @NOT@
      -- NOT can only be applied on a single sub filter.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CompositeFilterLogicOperator

instance FromHttpApiData CompositeFilterLogicOperator where
    parseQueryParam = \case
        "AND" -> Right And
        "OR" -> Right OR
        "NOT" -> Right Not
        x -> Left ("Unable to parse CompositeFilterLogicOperator from: " <> x)

instance ToHttpApiData CompositeFilterLogicOperator where
    toQueryParam = \case
        And -> "AND"
        OR -> "OR"
        Not -> "NOT"

instance FromJSON CompositeFilterLogicOperator where
    parseJSON = parseJSONText "CompositeFilterLogicOperator"

instance ToJSON CompositeFilterLogicOperator where
    toJSON = toJSONText

-- | Importance of the source.
data SourceScoringConfigSourceImportance
    = Default
      -- ^ @DEFAULT@
    | Low
      -- ^ @LOW@
    | High
      -- ^ @HIGH@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SourceScoringConfigSourceImportance

instance FromHttpApiData SourceScoringConfigSourceImportance where
    parseQueryParam = \case
        "DEFAULT" -> Right Default
        "LOW" -> Right Low
        "HIGH" -> Right High
        x -> Left ("Unable to parse SourceScoringConfigSourceImportance from: " <> x)

instance ToHttpApiData SourceScoringConfigSourceImportance where
    toQueryParam = \case
        Default -> "DEFAULT"
        Low -> "LOW"
        High -> "HIGH"

instance FromJSON SourceScoringConfigSourceImportance where
    parseJSON = parseJSONText "SourceScoringConfigSourceImportance"

instance ToJSON SourceScoringConfigSourceImportance where
    toJSON = toJSONText

data GmailAttachmentRestrictType
    = GARTUnspecified
      -- ^ @UNSPECIFIED@
    | GARTHasAttachment
      -- ^ @HAS_ATTACHMENT@
      -- has:attachment
    | GARTHasPhoto
      -- ^ @HAS_PHOTO@
      -- has photos (changes to filename:(jpg OR jpeg OR png) when typed)
    | GARTHasDrive
      -- ^ @HAS_DRIVE@
      -- has:drive
    | GARTHasDocument
      -- ^ @HAS_DOCUMENT@
      -- has:document
    | GARTHasSpreadsheet
      -- ^ @HAS_SPREADSHEET@
      -- has:spreadsheet
    | GARTHasPresentation
      -- ^ @HAS_PRESENTATION@
      -- has:presentation
    | GARTHasYouTube
      -- ^ @HAS_YOUTUBE@
      -- has:youtube
    | GARTHasPdf
      -- ^ @HAS_PDF@
      -- filename:pdf
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GmailAttachmentRestrictType

instance FromHttpApiData GmailAttachmentRestrictType where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right GARTUnspecified
        "HAS_ATTACHMENT" -> Right GARTHasAttachment
        "HAS_PHOTO" -> Right GARTHasPhoto
        "HAS_DRIVE" -> Right GARTHasDrive
        "HAS_DOCUMENT" -> Right GARTHasDocument
        "HAS_SPREADSHEET" -> Right GARTHasSpreadsheet
        "HAS_PRESENTATION" -> Right GARTHasPresentation
        "HAS_YOUTUBE" -> Right GARTHasYouTube
        "HAS_PDF" -> Right GARTHasPdf
        x -> Left ("Unable to parse GmailAttachmentRestrictType from: " <> x)

instance ToHttpApiData GmailAttachmentRestrictType where
    toQueryParam = \case
        GARTUnspecified -> "UNSPECIFIED"
        GARTHasAttachment -> "HAS_ATTACHMENT"
        GARTHasPhoto -> "HAS_PHOTO"
        GARTHasDrive -> "HAS_DRIVE"
        GARTHasDocument -> "HAS_DOCUMENT"
        GARTHasSpreadsheet -> "HAS_SPREADSHEET"
        GARTHasPresentation -> "HAS_PRESENTATION"
        GARTHasYouTube -> "HAS_YOUTUBE"
        GARTHasPdf -> "HAS_PDF"

instance FromJSON GmailAttachmentRestrictType where
    parseJSON = parseJSONText "GmailAttachmentRestrictType"

instance ToJSON GmailAttachmentRestrictType where
    toJSON = toJSONText

-- | Indicates the ranking importance given to property when it is matched
-- during retrieval. Once set, the token importance of a property cannot be
-- changed.
data RetrievalImportanceImportance
    = RIIDefault
      -- ^ @DEFAULT@
      -- Treat the match like a body text match.
    | RIIHighest
      -- ^ @HIGHEST@
      -- Treat the match like a match against title of the item.
    | RIIHigh
      -- ^ @HIGH@
      -- Treat the match with higher importance than body text.
    | RIILow
      -- ^ @LOW@
      -- Treat the match with lower importance than body text.
    | RIINone
      -- ^ @NONE@
      -- Do not match against this field during retrieval. The property can still
      -- be used for operator matching, faceting, and suggest if desired.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RetrievalImportanceImportance

instance FromHttpApiData RetrievalImportanceImportance where
    parseQueryParam = \case
        "DEFAULT" -> Right RIIDefault
        "HIGHEST" -> Right RIIHighest
        "HIGH" -> Right RIIHigh
        "LOW" -> Right RIILow
        "NONE" -> Right RIINone
        x -> Left ("Unable to parse RetrievalImportanceImportance from: " <> x)

instance ToHttpApiData RetrievalImportanceImportance where
    toQueryParam = \case
        RIIDefault -> "DEFAULT"
        RIIHighest -> "HIGHEST"
        RIIHigh -> "HIGH"
        RIILow -> "LOW"
        RIINone -> "NONE"

instance FromJSON RetrievalImportanceImportance where
    parseJSON = parseJSONText "RetrievalImportanceImportance"

instance ToJSON RetrievalImportanceImportance where
    toJSON = toJSONText

-- | Error code indicating the nature of the error.
data ProcessingErrorCode
    = ProcessingErrorCodeUnspecified
      -- ^ @PROCESSING_ERROR_CODE_UNSPECIFIED@
      -- Input only value. Use this value in Items.
    | MalformedRequest
      -- ^ @MALFORMED_REQUEST@
      -- Item\'s ACL, metadata, or content is malformed or in invalid state.
      -- FieldViolations contains more details on where the problem is.
    | UnsupportedContentFormat
      -- ^ @UNSUPPORTED_CONTENT_FORMAT@
      -- Countent format is unsupported.
    | IndirectBrokenACL
      -- ^ @INDIRECT_BROKEN_ACL@
      -- Items with incomplete ACL information due to inheriting other items with
      -- broken ACL or having groups with unmapped descendants.
    | ACLCycle
      -- ^ @ACL_CYCLE@
      -- ACL inheritance graph formed a cycle.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProcessingErrorCode

instance FromHttpApiData ProcessingErrorCode where
    parseQueryParam = \case
        "PROCESSING_ERROR_CODE_UNSPECIFIED" -> Right ProcessingErrorCodeUnspecified
        "MALFORMED_REQUEST" -> Right MalformedRequest
        "UNSUPPORTED_CONTENT_FORMAT" -> Right UnsupportedContentFormat
        "INDIRECT_BROKEN_ACL" -> Right IndirectBrokenACL
        "ACL_CYCLE" -> Right ACLCycle
        x -> Left ("Unable to parse ProcessingErrorCode from: " <> x)

instance ToHttpApiData ProcessingErrorCode where
    toQueryParam = \case
        ProcessingErrorCodeUnspecified -> "PROCESSING_ERROR_CODE_UNSPECIFIED"
        MalformedRequest -> "MALFORMED_REQUEST"
        UnsupportedContentFormat -> "UNSUPPORTED_CONTENT_FORMAT"
        IndirectBrokenACL -> "INDIRECT_BROKEN_ACL"
        ACLCycle -> "ACL_CYCLE"

instance FromJSON ProcessingErrorCode where
    parseJSON = parseJSONText "ProcessingErrorCode"

instance ToJSON ProcessingErrorCode where
    toJSON = toJSONText

-- | Ascending is the default sort order
data SortOptionsSortOrder
    = SOSOAscending
      -- ^ @ASCENDING@
    | SOSODescending
      -- ^ @DESCENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SortOptionsSortOrder

instance FromHttpApiData SortOptionsSortOrder where
    parseQueryParam = \case
        "ASCENDING" -> Right SOSOAscending
        "DESCENDING" -> Right SOSODescending
        x -> Left ("Unable to parse SortOptionsSortOrder from: " <> x)

instance ToHttpApiData SortOptionsSortOrder where
    toQueryParam = \case
        SOSOAscending -> "ASCENDING"
        SOSODescending -> "DESCENDING"

instance FromJSON SortOptionsSortOrder where
    parseJSON = parseJSONText "SortOptionsSortOrder"

instance ToJSON SortOptionsSortOrder where
    toJSON = toJSONText

data GmailActionRestrictType
    = GUnspecified
      -- ^ @UNSPECIFIED@
    | GUnread
      -- ^ @UNREAD@
      -- is:unread
    | GRead'
      -- ^ @READ@
      -- is:read
    | GRepliedTo
      -- ^ @REPLIED_TO@
      -- label:^io_re
    | GMuted
      -- ^ @MUTED@
      -- label:mute
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GmailActionRestrictType

instance FromHttpApiData GmailActionRestrictType where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right GUnspecified
        "UNREAD" -> Right GUnread
        "READ" -> Right GRead'
        "REPLIED_TO" -> Right GRepliedTo
        "MUTED" -> Right GMuted
        x -> Left ("Unable to parse GmailActionRestrictType from: " <> x)

instance ToHttpApiData GmailActionRestrictType where
    toQueryParam = \case
        GUnspecified -> "UNSPECIFIED"
        GUnread -> "UNREAD"
        GRead' -> "READ"
        GRepliedTo -> "REPLIED_TO"
        GMuted -> "MUTED"

instance FromJSON GmailActionRestrictType where
    parseJSON = parseJSONText "GmailActionRestrictType"

instance ToJSON GmailActionRestrictType where
    toJSON = toJSONText

data GmailFolderRestrictType
    = GFRTUnspecified
      -- ^ @UNSPECIFIED@
    | GFRTInSent
      -- ^ @IN_SENT@
      -- in:sent
    | GFRTInDraft
      -- ^ @IN_DRAFT@
      -- in:draft
    | GFRTChats
      -- ^ @CHATS@
      -- label:chats
    | GFRTInTrash
      -- ^ @IN_TRASH@
      -- in:trash
    | GFRTUserGeneratedLabel
      -- ^ @USER_GENERATED_LABEL@
      -- label:
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GmailFolderRestrictType

instance FromHttpApiData GmailFolderRestrictType where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right GFRTUnspecified
        "IN_SENT" -> Right GFRTInSent
        "IN_DRAFT" -> Right GFRTInDraft
        "CHATS" -> Right GFRTChats
        "IN_TRASH" -> Right GFRTInTrash
        "USER_GENERATED_LABEL" -> Right GFRTUserGeneratedLabel
        x -> Left ("Unable to parse GmailFolderRestrictType from: " <> x)

instance ToHttpApiData GmailFolderRestrictType where
    toQueryParam = \case
        GFRTUnspecified -> "UNSPECIFIED"
        GFRTInSent -> "IN_SENT"
        GFRTInDraft -> "IN_DRAFT"
        GFRTChats -> "CHATS"
        GFRTInTrash -> "IN_TRASH"
        GFRTUserGeneratedLabel -> "USER_GENERATED_LABEL"

instance FromJSON GmailFolderRestrictType where
    parseJSON = parseJSONText "GmailFolderRestrictType"

instance ToJSON GmailFolderRestrictType where
    toJSON = toJSONText

-- | The resolution status for the external identity.
data UnmAppedIdentityResolutionStatusCode
    = UAIRSCCodeUnspecified
      -- ^ @CODE_UNSPECIFIED@
      -- Input-only value. Used to list all unmapped identities regardless of
      -- status.
    | UAIRSCNotFound
      -- ^ @NOT_FOUND@
      -- The unmapped identity was not found in IDaaS, and needs to be provided
      -- by the user.
    | UAIRSCIdentitySourceNotFound
      -- ^ @IDENTITY_SOURCE_NOT_FOUND@
      -- The identity source associated with the identity was either not found or
      -- deleted.
    | UAIRSCIdentitySourceMisConfigured
      -- ^ @IDENTITY_SOURCE_MISCONFIGURED@
      -- IDaaS does not understand the identity source, probably because the
      -- schema was modified in a non compatible way.
    | UAIRSCTooManyMAppingsFound
      -- ^ @TOO_MANY_MAPPINGS_FOUND@
      -- The number of users associated with the external identity is too large.
    | UAIRSCInternalError
      -- ^ @INTERNAL_ERROR@
      -- Internal error.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UnmAppedIdentityResolutionStatusCode

instance FromHttpApiData UnmAppedIdentityResolutionStatusCode where
    parseQueryParam = \case
        "CODE_UNSPECIFIED" -> Right UAIRSCCodeUnspecified
        "NOT_FOUND" -> Right UAIRSCNotFound
        "IDENTITY_SOURCE_NOT_FOUND" -> Right UAIRSCIdentitySourceNotFound
        "IDENTITY_SOURCE_MISCONFIGURED" -> Right UAIRSCIdentitySourceMisConfigured
        "TOO_MANY_MAPPINGS_FOUND" -> Right UAIRSCTooManyMAppingsFound
        "INTERNAL_ERROR" -> Right UAIRSCInternalError
        x -> Left ("Unable to parse UnmAppedIdentityResolutionStatusCode from: " <> x)

instance ToHttpApiData UnmAppedIdentityResolutionStatusCode where
    toQueryParam = \case
        UAIRSCCodeUnspecified -> "CODE_UNSPECIFIED"
        UAIRSCNotFound -> "NOT_FOUND"
        UAIRSCIdentitySourceNotFound -> "IDENTITY_SOURCE_NOT_FOUND"
        UAIRSCIdentitySourceMisConfigured -> "IDENTITY_SOURCE_MISCONFIGURED"
        UAIRSCTooManyMAppingsFound -> "TOO_MANY_MAPPINGS_FOUND"
        UAIRSCInternalError -> "INTERNAL_ERROR"

instance FromJSON UnmAppedIdentityResolutionStatusCode where
    parseJSON = parseJSONText "UnmAppedIdentityResolutionStatusCode"

instance ToJSON UnmAppedIdentityResolutionStatusCode where
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

-- | Type of error.
data RepositoryErrorType
    = Unknown
      -- ^ @UNKNOWN@
      -- Unknown error.
    | NetworkError
      -- ^ @NETWORK_ERROR@
      -- Unknown or unreachable host.
    | DNSError
      -- ^ @DNS_ERROR@
      -- DNS problem, such as the DNS server is not responding.
    | ConnectionError
      -- ^ @CONNECTION_ERROR@
      -- Cannot connect to the repository server.
    | AuthenticationError
      -- ^ @AUTHENTICATION_ERROR@
      -- Failed authentication due to incorrect credentials.
    | AuthorizationError
      -- ^ @AUTHORIZATION_ERROR@
      -- Service account is not authorized for the repository.
    | ServerError
      -- ^ @SERVER_ERROR@
      -- Repository server error.
    | QuotaExceeded
      -- ^ @QUOTA_EXCEEDED@
      -- Quota exceeded.
    | ServiceUnavailable
      -- ^ @SERVICE_UNAVAILABLE@
      -- Server temporarily unavailable.
    | ClientError
      -- ^ @CLIENT_ERROR@
      -- Client-related error, such as an invalid request from the connector to
      -- the repository server.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RepositoryErrorType

instance FromHttpApiData RepositoryErrorType where
    parseQueryParam = \case
        "UNKNOWN" -> Right Unknown
        "NETWORK_ERROR" -> Right NetworkError
        "DNS_ERROR" -> Right DNSError
        "CONNECTION_ERROR" -> Right ConnectionError
        "AUTHENTICATION_ERROR" -> Right AuthenticationError
        "AUTHORIZATION_ERROR" -> Right AuthorizationError
        "SERVER_ERROR" -> Right ServerError
        "QUOTA_EXCEEDED" -> Right QuotaExceeded
        "SERVICE_UNAVAILABLE" -> Right ServiceUnavailable
        "CLIENT_ERROR" -> Right ClientError
        x -> Left ("Unable to parse RepositoryErrorType from: " <> x)

instance ToHttpApiData RepositoryErrorType where
    toQueryParam = \case
        Unknown -> "UNKNOWN"
        NetworkError -> "NETWORK_ERROR"
        DNSError -> "DNS_ERROR"
        ConnectionError -> "CONNECTION_ERROR"
        AuthenticationError -> "AUTHENTICATION_ERROR"
        AuthorizationError -> "AUTHORIZATION_ERROR"
        ServerError -> "SERVER_ERROR"
        QuotaExceeded -> "QUOTA_EXCEEDED"
        ServiceUnavailable -> "SERVICE_UNAVAILABLE"
        ClientError -> "CLIENT_ERROR"

instance FromJSON RepositoryErrorType where
    parseJSON = parseJSONText "RepositoryErrorType"

instance ToJSON RepositoryErrorType where
    toJSON = toJSONText

data DriveLocationRestrictType
    = DLRTUnspecified
      -- ^ @UNSPECIFIED@
    | DLRTTrashed
      -- ^ @TRASHED@
    | DLRTStarred
      -- ^ @STARRED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DriveLocationRestrictType

instance FromHttpApiData DriveLocationRestrictType where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right DLRTUnspecified
        "TRASHED" -> Right DLRTTrashed
        "STARRED" -> Right DLRTStarred
        x -> Left ("Unable to parse DriveLocationRestrictType from: " <> x)

instance ToHttpApiData DriveLocationRestrictType where
    toQueryParam = \case
        DLRTUnspecified -> "UNSPECIFIED"
        DLRTTrashed -> "TRASHED"
        DLRTStarred -> "STARRED"

instance FromJSON DriveLocationRestrictType where
    parseJSON = parseJSONText "DriveLocationRestrictType"

instance ToJSON DriveLocationRestrictType where
    toJSON = toJSONText

-- | Type for this item.
data ItemItemType
    = IITUnspecified
      -- ^ @UNSPECIFIED@
    | IITContentItem
      -- ^ @CONTENT_ITEM@
      -- An item that is indexed for the only purpose of serving information.
      -- These items cannot be referred in containerName or inheritAclFrom
      -- fields.
    | IITContainerItem
      -- ^ @CONTAINER_ITEM@
      -- An item that gets indexed and whose purpose is to supply other items
      -- with ACLs and\/or contain other items.
    | IITVirtualContainerItem
      -- ^ @VIRTUAL_CONTAINER_ITEM@
      -- An item that does not get indexed, but otherwise has the same purpose as
      -- CONTAINER_ITEM.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ItemItemType

instance FromHttpApiData ItemItemType where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right IITUnspecified
        "CONTENT_ITEM" -> Right IITContentItem
        "CONTAINER_ITEM" -> Right IITContainerItem
        "VIRTUAL_CONTAINER_ITEM" -> Right IITVirtualContainerItem
        x -> Left ("Unable to parse ItemItemType from: " <> x)

instance ToHttpApiData ItemItemType where
    toQueryParam = \case
        IITUnspecified -> "UNSPECIFIED"
        IITContentItem -> "CONTENT_ITEM"
        IITContainerItem -> "CONTAINER_ITEM"
        IITVirtualContainerItem -> "VIRTUAL_CONTAINER_ITEM"

instance FromJSON ItemItemType where
    parseJSON = parseJSONText "ItemItemType"

instance ToJSON ItemItemType where
    toJSON = toJSONText

-- | Status of the items.
data ItemCountByStatusStatusCode
    = ICBSSCCodeUnspecified
      -- ^ @CODE_UNSPECIFIED@
      -- Input-only value. Used with Items.list to list all items in the queue,
      -- regardless of status.
    | ICBSSCError'
      -- ^ @ERROR@
      -- Error encountered by Cloud Search while processing this item. Details of
      -- the error are in repositoryError.
    | ICBSSCModified
      -- ^ @MODIFIED@
      -- Item has been modified in the repository, and is out of date with the
      -- version previously accepted into Cloud Search.
    | ICBSSCNewItem
      -- ^ @NEW_ITEM@
      -- Item is known to exist in the repository, but is not yet accepted by
      -- Cloud Search. An item can be in this state when Items.push has been
      -- called for an item of this name that did not exist previously.
    | ICBSSCAccepted
      -- ^ @ACCEPTED@
      -- API has accepted the up-to-date data of this item.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ItemCountByStatusStatusCode

instance FromHttpApiData ItemCountByStatusStatusCode where
    parseQueryParam = \case
        "CODE_UNSPECIFIED" -> Right ICBSSCCodeUnspecified
        "ERROR" -> Right ICBSSCError'
        "MODIFIED" -> Right ICBSSCModified
        "NEW_ITEM" -> Right ICBSSCNewItem
        "ACCEPTED" -> Right ICBSSCAccepted
        x -> Left ("Unable to parse ItemCountByStatusStatusCode from: " <> x)

instance ToHttpApiData ItemCountByStatusStatusCode where
    toQueryParam = \case
        ICBSSCCodeUnspecified -> "CODE_UNSPECIFIED"
        ICBSSCError' -> "ERROR"
        ICBSSCModified -> "MODIFIED"
        ICBSSCNewItem -> "NEW_ITEM"
        ICBSSCAccepted -> "ACCEPTED"

instance FromJSON ItemCountByStatusStatusCode where
    parseJSON = parseJSONText "ItemCountByStatusStatusCode"

instance ToJSON ItemCountByStatusStatusCode where
    toJSON = toJSONText

data ItemContentContentFormat
    = ICCFUnspecified
      -- ^ @UNSPECIFIED@
      -- Invalid value.
    | ICCFHTML
      -- ^ @HTML@
      -- contentFormat is HTML.
    | ICCFText
      -- ^ @TEXT@
      -- contentFormat is free text.
    | ICCFRaw
      -- ^ @RAW@
      -- contentFormat is raw bytes.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ItemContentContentFormat

instance FromHttpApiData ItemContentContentFormat where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right ICCFUnspecified
        "HTML" -> Right ICCFHTML
        "TEXT" -> Right ICCFText
        "RAW" -> Right ICCFRaw
        x -> Left ("Unable to parse ItemContentContentFormat from: " <> x)

instance ToHttpApiData ItemContentContentFormat where
    toQueryParam = \case
        ICCFUnspecified -> "UNSPECIFIED"
        ICCFHTML -> "HTML"
        ICCFText -> "TEXT"
        ICCFRaw -> "RAW"

instance FromJSON ItemContentContentFormat where
    parseJSON = parseJSONText "ItemContentContentFormat"

instance ToJSON ItemContentContentFormat where
    toJSON = toJSONText

-- | Predefined content source for Google Apps.
data SourcePredefinedSource
    = SPSNone
      -- ^ @NONE@
    | SPSQueryHistory
      -- ^ @QUERY_HISTORY@
      -- Suggests queries issued by the user in the past. Only valid when used
      -- with the suggest API. Ignored when used in the query API.
    | SPSPerson
      -- ^ @PERSON@
      -- Suggests people in the organization. Only valid when used with the
      -- suggest API. Results in an error when used in the query API.
    | SPSGoogleDrive
      -- ^ @GOOGLE_DRIVE@
    | SPSGoogleGmail
      -- ^ @GOOGLE_GMAIL@
    | SPSGoogleSites
      -- ^ @GOOGLE_SITES@
    | SPSGoogleGroups
      -- ^ @GOOGLE_GROUPS@
    | SPSGoogleCalendar
      -- ^ @GOOGLE_CALENDAR@
    | SPSGoogleKeep
      -- ^ @GOOGLE_KEEP@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SourcePredefinedSource

instance FromHttpApiData SourcePredefinedSource where
    parseQueryParam = \case
        "NONE" -> Right SPSNone
        "QUERY_HISTORY" -> Right SPSQueryHistory
        "PERSON" -> Right SPSPerson
        "GOOGLE_DRIVE" -> Right SPSGoogleDrive
        "GOOGLE_GMAIL" -> Right SPSGoogleGmail
        "GOOGLE_SITES" -> Right SPSGoogleSites
        "GOOGLE_GROUPS" -> Right SPSGoogleGroups
        "GOOGLE_CALENDAR" -> Right SPSGoogleCalendar
        "GOOGLE_KEEP" -> Right SPSGoogleKeep
        x -> Left ("Unable to parse SourcePredefinedSource from: " <> x)

instance ToHttpApiData SourcePredefinedSource where
    toQueryParam = \case
        SPSNone -> "NONE"
        SPSQueryHistory -> "QUERY_HISTORY"
        SPSPerson -> "PERSON"
        SPSGoogleDrive -> "GOOGLE_DRIVE"
        SPSGoogleGmail -> "GOOGLE_GMAIL"
        SPSGoogleSites -> "GOOGLE_SITES"
        SPSGoogleGroups -> "GOOGLE_GROUPS"
        SPSGoogleCalendar -> "GOOGLE_CALENDAR"
        SPSGoogleKeep -> "GOOGLE_KEEP"

instance FromJSON SourcePredefinedSource where
    parseJSON = parseJSONText "SourcePredefinedSource"

instance ToJSON SourcePredefinedSource where
    toJSON = toJSONText

data DriveTimeSpanRestrictType
    = DTSRTUnspecified
      -- ^ @UNSPECIFIED@
    | DTSRTToday
      -- ^ @TODAY@
    | DTSRTYesterday
      -- ^ @YESTERDAY@
    | DTSRTLast7Days
      -- ^ @LAST_7_DAYS@
    | DTSRTLast30Days
      -- ^ @LAST_30_DAYS@
      -- Not Enabled
    | DTSRTLast90Days
      -- ^ @LAST_90_DAYS@
      -- Not Enabled
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DriveTimeSpanRestrictType

instance FromHttpApiData DriveTimeSpanRestrictType where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right DTSRTUnspecified
        "TODAY" -> Right DTSRTToday
        "YESTERDAY" -> Right DTSRTYesterday
        "LAST_7_DAYS" -> Right DTSRTLast7Days
        "LAST_30_DAYS" -> Right DTSRTLast30Days
        "LAST_90_DAYS" -> Right DTSRTLast90Days
        x -> Left ("Unable to parse DriveTimeSpanRestrictType from: " <> x)

instance ToHttpApiData DriveTimeSpanRestrictType where
    toQueryParam = \case
        DTSRTUnspecified -> "UNSPECIFIED"
        DTSRTToday -> "TODAY"
        DTSRTYesterday -> "YESTERDAY"
        DTSRTLast7Days -> "LAST_7_DAYS"
        DTSRTLast30Days -> "LAST_30_DAYS"
        DTSRTLast90Days -> "LAST_90_DAYS"

instance FromJSON DriveTimeSpanRestrictType where
    parseJSON = parseJSONText "DriveTimeSpanRestrictType"

instance ToJSON DriveTimeSpanRestrictType where
    toJSON = toJSONText

-- | Required. The RequestMode for this request.
data IndexItemRequestMode
    = IIRMUnspecified
      -- ^ @UNSPECIFIED@
      -- Priority is not specified in the update request. Leaving priority
      -- unspecified results in an update failure.
    | IIRMSynchronous
      -- ^ @SYNCHRONOUS@
      -- For real-time updates.
    | IIRMAsynchronous
      -- ^ @ASYNCHRONOUS@
      -- For changes that are executed after the response is sent back to the
      -- caller.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable IndexItemRequestMode

instance FromHttpApiData IndexItemRequestMode where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right IIRMUnspecified
        "SYNCHRONOUS" -> Right IIRMSynchronous
        "ASYNCHRONOUS" -> Right IIRMAsynchronous
        x -> Left ("Unable to parse IndexItemRequestMode from: " <> x)

instance ToHttpApiData IndexItemRequestMode where
    toQueryParam = \case
        IIRMUnspecified -> "UNSPECIFIED"
        IIRMSynchronous -> "SYNCHRONOUS"
        IIRMAsynchronous -> "ASYNCHRONOUS"

instance FromJSON IndexItemRequestMode where
    parseJSON = parseJSONText "IndexItemRequestMode"

instance ToJSON IndexItemRequestMode where
    toJSON = toJSONText

-- | Sets the type of access rules to apply when an item inherits its ACL
-- from a parent. This should always be set in tandem with the
-- inheritAclFrom field. Also, when the inheritAclFrom field is set, this
-- field should be set to a valid AclInheritanceType.
data ItemACLACLInheritanceType
    = NotApplicable
      -- ^ @NOT_APPLICABLE@
      -- The default value when this item does not inherit an ACL. Use
      -- NOT_APPLICABLE when inheritAclFrom is empty. An item without ACL
      -- inheritance can still have ACLs supplied by its own readers and
      -- deniedReaders fields.
    | ChildOverride
      -- ^ @CHILD_OVERRIDE@
      -- During an authorization conflict, the ACL of the child item determines
      -- its read access.
    | ParentOverride
      -- ^ @PARENT_OVERRIDE@
      -- During an authorization conflict, the ACL of the parent item specified
      -- in the inheritAclFrom field determines read access.
    | BothPermit
      -- ^ @BOTH_PERMIT@
      -- Access is granted only if this item and the parent item specified in the
      -- inheritAclFrom field both permit read access.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ItemACLACLInheritanceType

instance FromHttpApiData ItemACLACLInheritanceType where
    parseQueryParam = \case
        "NOT_APPLICABLE" -> Right NotApplicable
        "CHILD_OVERRIDE" -> Right ChildOverride
        "PARENT_OVERRIDE" -> Right ParentOverride
        "BOTH_PERMIT" -> Right BothPermit
        x -> Left ("Unable to parse ItemACLACLInheritanceType from: " <> x)

instance ToHttpApiData ItemACLACLInheritanceType where
    toQueryParam = \case
        NotApplicable -> "NOT_APPLICABLE"
        ChildOverride -> "CHILD_OVERRIDE"
        ParentOverride -> "PARENT_OVERRIDE"
        BothPermit -> "BOTH_PERMIT"

instance FromJSON ItemACLACLInheritanceType where
    parseJSON = parseJSONText "ItemACLACLInheritanceType"

instance ToJSON ItemACLACLInheritanceType where
    toJSON = toJSONText
