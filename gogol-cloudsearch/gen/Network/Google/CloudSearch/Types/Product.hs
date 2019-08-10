{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudSearch.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudSearch.Types.Product where

import           Network.Google.CloudSearch.Types.Sum
import           Network.Google.Prelude

-- | Gmail Folder restricts (i.e. in Drafts\/Sent\/Chats\/User Generated
-- Labels).
--
-- /See:/ 'gmailFolderRestrict' smart constructor.
newtype GmailFolderRestrict =
  GmailFolderRestrict'
    { _gfrType :: Maybe GmailFolderRestrictType
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GmailFolderRestrict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfrType'
gmailFolderRestrict
    :: GmailFolderRestrict
gmailFolderRestrict = GmailFolderRestrict' {_gfrType = Nothing}


gfrType :: Lens' GmailFolderRestrict (Maybe GmailFolderRestrictType)
gfrType = lens _gfrType (\ s a -> s{_gfrType = a})

instance FromJSON GmailFolderRestrict where
        parseJSON
          = withObject "GmailFolderRestrict"
              (\ o -> GmailFolderRestrict' <$> (o .:? "type"))

instance ToJSON GmailFolderRestrict where
        toJSON GmailFolderRestrict'{..}
          = object (catMaybes [("type" .=) <$> _gfrType])

-- | Content of an item to be indexed and surfaced by Cloud Search.
--
-- /See:/ 'itemContent' smart constructor.
data ItemContent =
  ItemContent'
    { _icHash           :: !(Maybe Text)
    , _icContentFormat  :: !(Maybe ItemContentContentFormat)
    , _icContentDataRef :: !(Maybe UploadItemRef)
    , _icInlineContent  :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ItemContent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icHash'
--
-- * 'icContentFormat'
--
-- * 'icContentDataRef'
--
-- * 'icInlineContent'
itemContent
    :: ItemContent
itemContent =
  ItemContent'
    { _icHash = Nothing
    , _icContentFormat = Nothing
    , _icContentDataRef = Nothing
    , _icInlineContent = Nothing
    }


-- | Hashing info calculated and provided by the API client for content. Can
-- be used with the items.push method to calculate modified state. The
-- maximum length is 2048 characters.
icHash :: Lens' ItemContent (Maybe Text)
icHash = lens _icHash (\ s a -> s{_icHash = a})

icContentFormat :: Lens' ItemContent (Maybe ItemContentContentFormat)
icContentFormat
  = lens _icContentFormat
      (\ s a -> s{_icContentFormat = a})

-- | Upload reference ID of a previously uploaded content via write method.
icContentDataRef :: Lens' ItemContent (Maybe UploadItemRef)
icContentDataRef
  = lens _icContentDataRef
      (\ s a -> s{_icContentDataRef = a})

-- | Content that is supplied inlined within the update method. The maximum
-- length is 102400 bytes (100 KiB).
icInlineContent :: Lens' ItemContent (Maybe ByteString)
icInlineContent
  = lens _icInlineContent
      (\ s a -> s{_icInlineContent = a})
      . mapping _Bytes

instance FromJSON ItemContent where
        parseJSON
          = withObject "ItemContent"
              (\ o ->
                 ItemContent' <$>
                   (o .:? "hash") <*> (o .:? "contentFormat") <*>
                     (o .:? "contentDataRef")
                     <*> (o .:? "inlineContent"))

instance ToJSON ItemContent where
        toJSON ItemContent'{..}
          = object
              (catMaybes
                 [("hash" .=) <$> _icHash,
                  ("contentFormat" .=) <$> _icContentFormat,
                  ("contentDataRef" .=) <$> _icContentDataRef,
                  ("inlineContent" .=) <$> _icInlineContent])

-- | A person\'s photo.
--
-- /See:/ 'photo' smart constructor.
newtype Photo =
  Photo'
    { _pURL :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Photo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pURL'
photo
    :: Photo
photo = Photo' {_pURL = Nothing}


-- | The URL of the photo.
pURL :: Lens' Photo (Maybe Text)
pURL = lens _pURL (\ s a -> s{_pURL = a})

instance FromJSON Photo where
        parseJSON
          = withObject "Photo"
              (\ o -> Photo' <$> (o .:? "url"))

instance ToJSON Photo where
        toJSON Photo'{..}
          = object (catMaybes [("url" .=) <$> _pURL])

--
-- /See:/ 'searchItemsByViewURLRequest' smart constructor.
data SearchItemsByViewURLRequest =
  SearchItemsByViewURLRequest'
    { _sibvurDebugOptions :: !(Maybe DebugOptions)
    , _sibvurPageToken    :: !(Maybe Text)
    , _sibvurViewURL      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchItemsByViewURLRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sibvurDebugOptions'
--
-- * 'sibvurPageToken'
--
-- * 'sibvurViewURL'
searchItemsByViewURLRequest
    :: SearchItemsByViewURLRequest
searchItemsByViewURLRequest =
  SearchItemsByViewURLRequest'
    { _sibvurDebugOptions = Nothing
    , _sibvurPageToken = Nothing
    , _sibvurViewURL = Nothing
    }


-- | Common debug options.
sibvurDebugOptions :: Lens' SearchItemsByViewURLRequest (Maybe DebugOptions)
sibvurDebugOptions
  = lens _sibvurDebugOptions
      (\ s a -> s{_sibvurDebugOptions = a})

-- | The next_page_token value returned from a previous request, if any.
sibvurPageToken :: Lens' SearchItemsByViewURLRequest (Maybe Text)
sibvurPageToken
  = lens _sibvurPageToken
      (\ s a -> s{_sibvurPageToken = a})

-- | Specify the full view URL to find the corresponding item. The maximum
-- length is 2048 characters.
sibvurViewURL :: Lens' SearchItemsByViewURLRequest (Maybe Text)
sibvurViewURL
  = lens _sibvurViewURL
      (\ s a -> s{_sibvurViewURL = a})

instance FromJSON SearchItemsByViewURLRequest where
        parseJSON
          = withObject "SearchItemsByViewURLRequest"
              (\ o ->
                 SearchItemsByViewURLRequest' <$>
                   (o .:? "debugOptions") <*> (o .:? "pageToken") <*>
                     (o .:? "viewUrl"))

instance ToJSON SearchItemsByViewURLRequest where
        toJSON SearchItemsByViewURLRequest'{..}
          = object
              (catMaybes
                 [("debugOptions" .=) <$> _sibvurDebugOptions,
                  ("pageToken" .=) <$> _sibvurPageToken,
                  ("viewUrl" .=) <$> _sibvurViewURL])

-- | SearchApplication
--
-- /See:/ 'searchApplication' smart constructor.
data SearchApplication =
  SearchApplication'
    { _saDataSourceRestrictions :: !(Maybe [DataSourceRestriction])
    , _saOperationIds           :: !(Maybe [Text])
    , _saDefaultFacetOptions    :: !(Maybe [FacetOptions])
    , _saScoringConfig          :: !(Maybe ScoringConfig)
    , _saName                   :: !(Maybe Text)
    , _saSourceConfig           :: !(Maybe [SourceConfig])
    , _saDisplayName            :: !(Maybe Text)
    , _saDefaultSortOptions     :: !(Maybe SortOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchApplication' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saDataSourceRestrictions'
--
-- * 'saOperationIds'
--
-- * 'saDefaultFacetOptions'
--
-- * 'saScoringConfig'
--
-- * 'saName'
--
-- * 'saSourceConfig'
--
-- * 'saDisplayName'
--
-- * 'saDefaultSortOptions'
searchApplication
    :: SearchApplication
searchApplication =
  SearchApplication'
    { _saDataSourceRestrictions = Nothing
    , _saOperationIds = Nothing
    , _saDefaultFacetOptions = Nothing
    , _saScoringConfig = Nothing
    , _saName = Nothing
    , _saSourceConfig = Nothing
    , _saDisplayName = Nothing
    , _saDefaultSortOptions = Nothing
    }


-- | Retrictions applied to the configurations. The maximum number of
-- elements is 10.
saDataSourceRestrictions :: Lens' SearchApplication [DataSourceRestriction]
saDataSourceRestrictions
  = lens _saDataSourceRestrictions
      (\ s a -> s{_saDataSourceRestrictions = a})
      . _Default
      . _Coerce

-- | IDs of the Long Running Operations (LROs) currently running for this
-- schema. Output only field.
saOperationIds :: Lens' SearchApplication [Text]
saOperationIds
  = lens _saOperationIds
      (\ s a -> s{_saOperationIds = a})
      . _Default
      . _Coerce

-- | The default fields for returning facet results. The sources specified
-- here also have been included in data_source_restrictions above.
saDefaultFacetOptions :: Lens' SearchApplication [FacetOptions]
saDefaultFacetOptions
  = lens _saDefaultFacetOptions
      (\ s a -> s{_saDefaultFacetOptions = a})
      . _Default
      . _Coerce

-- | Configuration for ranking results.
saScoringConfig :: Lens' SearchApplication (Maybe ScoringConfig)
saScoringConfig
  = lens _saScoringConfig
      (\ s a -> s{_saScoringConfig = a})

-- | Name of the Search Application.
-- Format: searchapplications\/{application_id}.
saName :: Lens' SearchApplication (Maybe Text)
saName = lens _saName (\ s a -> s{_saName = a})

-- | Configuration for a sources specified in data_source_restrictions.
saSourceConfig :: Lens' SearchApplication [SourceConfig]
saSourceConfig
  = lens _saSourceConfig
      (\ s a -> s{_saSourceConfig = a})
      . _Default
      . _Coerce

-- | Display name of the Search Application. The maximum length is 300
-- characters.
saDisplayName :: Lens' SearchApplication (Maybe Text)
saDisplayName
  = lens _saDisplayName
      (\ s a -> s{_saDisplayName = a})

-- | The default options for sorting the search results
saDefaultSortOptions :: Lens' SearchApplication (Maybe SortOptions)
saDefaultSortOptions
  = lens _saDefaultSortOptions
      (\ s a -> s{_saDefaultSortOptions = a})

instance FromJSON SearchApplication where
        parseJSON
          = withObject "SearchApplication"
              (\ o ->
                 SearchApplication' <$>
                   (o .:? "dataSourceRestrictions" .!= mempty) <*>
                     (o .:? "operationIds" .!= mempty)
                     <*> (o .:? "defaultFacetOptions" .!= mempty)
                     <*> (o .:? "scoringConfig")
                     <*> (o .:? "name")
                     <*> (o .:? "sourceConfig" .!= mempty)
                     <*> (o .:? "displayName")
                     <*> (o .:? "defaultSortOptions"))

instance ToJSON SearchApplication where
        toJSON SearchApplication'{..}
          = object
              (catMaybes
                 [("dataSourceRestrictions" .=) <$>
                    _saDataSourceRestrictions,
                  ("operationIds" .=) <$> _saOperationIds,
                  ("defaultFacetOptions" .=) <$>
                    _saDefaultFacetOptions,
                  ("scoringConfig" .=) <$> _saScoringConfig,
                  ("name" .=) <$> _saName,
                  ("sourceConfig" .=) <$> _saSourceConfig,
                  ("displayName" .=) <$> _saDisplayName,
                  ("defaultSortOptions" .=) <$> _saDefaultSortOptions])

-- | Used to provide a search operator for boolean properties. This is
-- optional. Search operators let users restrict the query to specific
-- fields relevant to the type of item being searched.
--
-- /See:/ 'booleanOperatorOptions' smart constructor.
newtype BooleanOperatorOptions =
  BooleanOperatorOptions'
    { _booOperatorName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BooleanOperatorOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'booOperatorName'
booleanOperatorOptions
    :: BooleanOperatorOptions
booleanOperatorOptions = BooleanOperatorOptions' {_booOperatorName = Nothing}


-- | Indicates the operator name required in the query in order to isolate
-- the boolean property. For example, if operatorName is *closed* and the
-- property\'s name is *isClosed*, then queries like *closed:\<value>* will
-- show results only where the value of the property named *isClosed*
-- matches *\<value>*. By contrast, a search that uses the same *\<value>*
-- without an operator will return all items where *\<value>* matches the
-- value of any String properties or text within the content field for the
-- item. The operator name can only contain lowercase letters (a-z). The
-- maximum length is 32 characters.
booOperatorName :: Lens' BooleanOperatorOptions (Maybe Text)
booOperatorName
  = lens _booOperatorName
      (\ s a -> s{_booOperatorName = a})

instance FromJSON BooleanOperatorOptions where
        parseJSON
          = withObject "BooleanOperatorOptions"
              (\ o ->
                 BooleanOperatorOptions' <$> (o .:? "operatorName"))

instance ToJSON BooleanOperatorOptions where
        toJSON BooleanOperatorOptions'{..}
          = object
              (catMaybes
                 [("operatorName" .=) <$> _booOperatorName])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). The error model is
-- designed to be: - Simple to use and understand for most users - Flexible
-- enough to meet unexpected needs # Overview The \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. The error code should be an enum value of google.rpc.Code, but
-- it may accept additional error codes if needed. The error message should
-- be a developer-facing English message that helps developers *understand*
-- and *resolve* the error. If a localized user-facing error message is
-- needed, put the localized message in the error details or localize it in
-- the client. The optional error details may contain arbitrary information
-- about the error. There is a predefined set of error detail types in the
-- package \`google.rpc\` that can be used for common error conditions. #
-- Language mapping The \`Status\` message is the logical representation of
-- the error model, but it is not necessarily the actual wire format. When
-- the \`Status\` message is exposed in different client libraries and
-- different wire protocols, it can be mapped differently. For example, it
-- will likely be mapped to some exceptions in Java, but more likely mapped
-- to some error codes in C. # Other uses The error model and the
-- \`Status\` message can be used in a variety of environments, either with
-- or without APIs, to provide a consistent developer experience across
-- different environments. Example uses of this error model include: -
-- Partial errors. If a service needs to return partial errors to the
-- client, it may embed the \`Status\` in the normal response to indicate
-- the partial errors. - Workflow errors. A typical workflow has multiple
-- steps. Each step may have a \`Status\` message for error reporting. -
-- Batch operations. If a client uses batch request and batch response, the
-- \`Status\` message should be used directly inside batch response, one
-- for each error sub-response. - Asynchronous operations. If an API call
-- embeds asynchronous operation results in its response, the status of
-- those operations should be represented directly using the \`Status\`
-- message. - Logging. If some API errors are stored in logs, the message
-- \`Status\` could be used directly after any stripping needed for
-- security\/privacy reasons.
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDetails'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status = Status' {_sDetails = Nothing, _sCode = Nothing, _sMessage = Nothing}


-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
sDetails :: Lens' Status [StatusDetailsItem]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON Status where
        toJSON Status'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _sDetails,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | Options for enum properties, which allow you to define a restricted set
-- of strings to match user queries, set rankings for those string values,
-- and define an operator name to be paired with those strings so that
-- users can narrow results to only items with a specific value. For
-- example, for items in a request tracking system with priority
-- information, you could define *p0* as an allowable enum value and tie
-- this enum to the operator name *priority* so that search users could add
-- *priority:p0* to their query to restrict the set of results to only
-- those items indexed with the value *p0*.
--
-- /See:/ 'enumPropertyOptions' smart constructor.
data EnumPropertyOptions =
  EnumPropertyOptions'
    { _epoPossibleValues  :: !(Maybe [EnumValuePair])
    , _epoOrderedRanking  :: !(Maybe EnumPropertyOptionsOrderedRanking)
    , _epoOperatorOptions :: !(Maybe EnumOperatorOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnumPropertyOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'epoPossibleValues'
--
-- * 'epoOrderedRanking'
--
-- * 'epoOperatorOptions'
enumPropertyOptions
    :: EnumPropertyOptions
enumPropertyOptions =
  EnumPropertyOptions'
    { _epoPossibleValues = Nothing
    , _epoOrderedRanking = Nothing
    , _epoOperatorOptions = Nothing
    }


-- | The list of possible values for the enumeration property. All
-- EnumValuePairs must provide a string value. If you specify an integer
-- value for one EnumValuePair, then all possible EnumValuePairs must
-- provide an integer value. Both the string value and integer value must
-- be unique over all possible values. Once set, possible values cannot be
-- removed or modified. If you supply an ordered ranking and think you
-- might insert additional enum values in the future, leave gaps in the
-- initial integer values to allow adding a value in between previously
-- registered values. The maximum number of elements is 100.
epoPossibleValues :: Lens' EnumPropertyOptions [EnumValuePair]
epoPossibleValues
  = lens _epoPossibleValues
      (\ s a -> s{_epoPossibleValues = a})
      . _Default
      . _Coerce

-- | Used to specify the ordered ranking for the enumeration that determines
-- how the integer values provided in the possible EnumValuePairs are used
-- to rank results. If specified, integer values must be provided for all
-- possible EnumValuePair values given for this property. Can only be used
-- if isRepeatable is false.
epoOrderedRanking :: Lens' EnumPropertyOptions (Maybe EnumPropertyOptionsOrderedRanking)
epoOrderedRanking
  = lens _epoOrderedRanking
      (\ s a -> s{_epoOrderedRanking = a})

-- | If set, describes how the enum should be used as a search operator.
epoOperatorOptions :: Lens' EnumPropertyOptions (Maybe EnumOperatorOptions)
epoOperatorOptions
  = lens _epoOperatorOptions
      (\ s a -> s{_epoOperatorOptions = a})

instance FromJSON EnumPropertyOptions where
        parseJSON
          = withObject "EnumPropertyOptions"
              (\ o ->
                 EnumPropertyOptions' <$>
                   (o .:? "possibleValues" .!= mempty) <*>
                     (o .:? "orderedRanking")
                     <*> (o .:? "operatorOptions"))

instance ToJSON EnumPropertyOptions where
        toJSON EnumPropertyOptions'{..}
          = object
              (catMaybes
                 [("possibleValues" .=) <$> _epoPossibleValues,
                  ("orderedRanking" .=) <$> _epoOrderedRanking,
                  ("operatorOptions" .=) <$> _epoOperatorOptions])

-- | Gmail Action restricts (i.e. read\/replied\/snoozed).
--
-- /See:/ 'gmailActionRestrict' smart constructor.
newtype GmailActionRestrict =
  GmailActionRestrict'
    { _garType :: Maybe GmailActionRestrictType
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GmailActionRestrict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'garType'
gmailActionRestrict
    :: GmailActionRestrict
gmailActionRestrict = GmailActionRestrict' {_garType = Nothing}


garType :: Lens' GmailActionRestrict (Maybe GmailActionRestrictType)
garType = lens _garType (\ s a -> s{_garType = a})

instance FromJSON GmailActionRestrict where
        parseJSON
          = withObject "GmailActionRestrict"
              (\ o -> GmailActionRestrict' <$> (o .:? "type"))

instance ToJSON GmailActionRestrict where
        toJSON GmailActionRestrict'{..}
          = object (catMaybes [("type" .=) <$> _garType])

--
-- /See:/ 'unreserveItemsRequest' smart constructor.
data UnreserveItemsRequest =
  UnreserveItemsRequest'
    { _uirQueue         :: !(Maybe Text)
    , _uirDebugOptions  :: !(Maybe DebugOptions)
    , _uirConnectorName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UnreserveItemsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uirQueue'
--
-- * 'uirDebugOptions'
--
-- * 'uirConnectorName'
unreserveItemsRequest
    :: UnreserveItemsRequest
unreserveItemsRequest =
  UnreserveItemsRequest'
    { _uirQueue = Nothing
    , _uirDebugOptions = Nothing
    , _uirConnectorName = Nothing
    }


-- | Name of a queue to unreserve items from.
uirQueue :: Lens' UnreserveItemsRequest (Maybe Text)
uirQueue = lens _uirQueue (\ s a -> s{_uirQueue = a})

-- | Common debug options.
uirDebugOptions :: Lens' UnreserveItemsRequest (Maybe DebugOptions)
uirDebugOptions
  = lens _uirDebugOptions
      (\ s a -> s{_uirDebugOptions = a})

-- | Name of connector making this call.
-- Format: datasources\/{source_id}\/connectors\/{ID}
uirConnectorName :: Lens' UnreserveItemsRequest (Maybe Text)
uirConnectorName
  = lens _uirConnectorName
      (\ s a -> s{_uirConnectorName = a})

instance FromJSON UnreserveItemsRequest where
        parseJSON
          = withObject "UnreserveItemsRequest"
              (\ o ->
                 UnreserveItemsRequest' <$>
                   (o .:? "queue") <*> (o .:? "debugOptions") <*>
                     (o .:? "connectorName"))

instance ToJSON UnreserveItemsRequest where
        toJSON UnreserveItemsRequest'{..}
          = object
              (catMaybes
                 [("queue" .=) <$> _uirQueue,
                  ("debugOptions" .=) <$> _uirDebugOptions,
                  ("connectorName" .=) <$> _uirConnectorName])

-- | Optional. Provides a search operator for date properties. Search
-- operators let users restrict the query to specific fields relevant to
-- the type of item being searched.
--
-- /See:/ 'dateOperatorOptions' smart constructor.
data DateOperatorOptions =
  DateOperatorOptions'
    { _dooOperatorName            :: !(Maybe Text)
    , _dooLessThanOperatorName    :: !(Maybe Text)
    , _dooGreaterThanOperatorName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DateOperatorOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dooOperatorName'
--
-- * 'dooLessThanOperatorName'
--
-- * 'dooGreaterThanOperatorName'
dateOperatorOptions
    :: DateOperatorOptions
dateOperatorOptions =
  DateOperatorOptions'
    { _dooOperatorName = Nothing
    , _dooLessThanOperatorName = Nothing
    , _dooGreaterThanOperatorName = Nothing
    }


-- | Indicates the actual string required in the query in order to isolate
-- the date property. For example, suppose an issue tracking schema object
-- has a property named *closeDate* that specifies an operator with an
-- operatorName of *closedon*. For searches on that data, queries like
-- *closedon:\<value>* will show results only where the value of the
-- *closeDate* property matches *\<value>*. By contrast, a search that uses
-- the same *\<value>* without an operator will return all items where
-- *\<value>* matches the value of any String properties or text within the
-- content field for the indexed datasource. The operator name can only
-- contain lowercase letters (a-z). The maximum length is 32 characters.
dooOperatorName :: Lens' DateOperatorOptions (Maybe Text)
dooOperatorName
  = lens _dooOperatorName
      (\ s a -> s{_dooOperatorName = a})

-- | Indicates the operator name required in the query in order to isolate
-- the date property using the less-than operator. For example, if
-- lessThanOperatorName is *closedbefore* and the property\'s name is
-- *closeDate*, then queries like *closedbefore:\<value>* will show results
-- only where the value of the property named *closeDate* is earlier than
-- *\<value>*. The operator name can only contain lowercase letters (a-z).
-- The maximum length is 32 characters.
dooLessThanOperatorName :: Lens' DateOperatorOptions (Maybe Text)
dooLessThanOperatorName
  = lens _dooLessThanOperatorName
      (\ s a -> s{_dooLessThanOperatorName = a})

-- | Indicates the operator name required in the query in order to isolate
-- the date property using the greater-than operator. For example, if
-- greaterThanOperatorName is *closedafter* and the property\'s name is
-- *closeDate*, then queries like *closedafter:\<value>* will show results
-- only where the value of the property named *closeDate* is later than
-- *\<value>*. The operator name can only contain lowercase letters (a-z).
-- The maximum length is 32 characters.
dooGreaterThanOperatorName :: Lens' DateOperatorOptions (Maybe Text)
dooGreaterThanOperatorName
  = lens _dooGreaterThanOperatorName
      (\ s a -> s{_dooGreaterThanOperatorName = a})

instance FromJSON DateOperatorOptions where
        parseJSON
          = withObject "DateOperatorOptions"
              (\ o ->
                 DateOperatorOptions' <$>
                   (o .:? "operatorName") <*>
                     (o .:? "lessThanOperatorName")
                     <*> (o .:? "greaterThanOperatorName"))

instance ToJSON DateOperatorOptions where
        toJSON DateOperatorOptions'{..}
          = object
              (catMaybes
                 [("operatorName" .=) <$> _dooOperatorName,
                  ("lessThanOperatorName" .=) <$>
                    _dooLessThanOperatorName,
                  ("greaterThanOperatorName" .=) <$>
                    _dooGreaterThanOperatorName])

--
-- /See:/ 'getDataSourceIndexStatsResponse' smart constructor.
newtype GetDataSourceIndexStatsResponse =
  GetDataSourceIndexStatsResponse'
    { _gdsisrStats :: Maybe [DataSourceIndexStats]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetDataSourceIndexStatsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdsisrStats'
getDataSourceIndexStatsResponse
    :: GetDataSourceIndexStatsResponse
getDataSourceIndexStatsResponse =
  GetDataSourceIndexStatsResponse' {_gdsisrStats = Nothing}


-- | Summary of indexed item counts, one for each day in the requested range.
gdsisrStats :: Lens' GetDataSourceIndexStatsResponse [DataSourceIndexStats]
gdsisrStats
  = lens _gdsisrStats (\ s a -> s{_gdsisrStats = a}) .
      _Default
      . _Coerce

instance FromJSON GetDataSourceIndexStatsResponse
         where
        parseJSON
          = withObject "GetDataSourceIndexStatsResponse"
              (\ o ->
                 GetDataSourceIndexStatsResponse' <$>
                   (o .:? "stats" .!= mempty))

instance ToJSON GetDataSourceIndexStatsResponse where
        toJSON GetDataSourceIndexStatsResponse'{..}
          = object (catMaybes [("stats" .=) <$> _gdsisrStats])

-- | The display options for an object.
--
-- /See:/ 'objectDisplayOptions' smart constructor.
data ObjectDisplayOptions =
  ObjectDisplayOptions'
    { _odoMetalines          :: !(Maybe [Metaline])
    , _odoObjectDisplayLabel :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ObjectDisplayOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odoMetalines'
--
-- * 'odoObjectDisplayLabel'
objectDisplayOptions
    :: ObjectDisplayOptions
objectDisplayOptions =
  ObjectDisplayOptions'
    {_odoMetalines = Nothing, _odoObjectDisplayLabel = Nothing}


-- | Defines the properties that will be displayed in the metalines of the
-- search results. The property values will be displayed in the order given
-- here. If a property holds multiple values, all of the values will be
-- diplayed before the next properties. For this reason, it is a good
-- practice to specify singular properties before repeated properties in
-- this list. All of the properties must set is_returnable to true. The
-- maximum number of metalines is 3.
odoMetalines :: Lens' ObjectDisplayOptions [Metaline]
odoMetalines
  = lens _odoMetalines (\ s a -> s{_odoMetalines = a})
      . _Default
      . _Coerce

-- | The user friendly label to display in the search result to inidicate the
-- type of the item. This is OPTIONAL; if not given, an object label will
-- not be displayed on the context line of the search results. The maximum
-- length is 32 characters.
odoObjectDisplayLabel :: Lens' ObjectDisplayOptions (Maybe Text)
odoObjectDisplayLabel
  = lens _odoObjectDisplayLabel
      (\ s a -> s{_odoObjectDisplayLabel = a})

instance FromJSON ObjectDisplayOptions where
        parseJSON
          = withObject "ObjectDisplayOptions"
              (\ o ->
                 ObjectDisplayOptions' <$>
                   (o .:? "metalines" .!= mempty) <*>
                     (o .:? "objectDisplayLabel"))

instance ToJSON ObjectDisplayOptions where
        toJSON ObjectDisplayOptions'{..}
          = object
              (catMaybes
                 [("metalines" .=) <$> _odoMetalines,
                  ("objectDisplayLabel" .=) <$>
                    _odoObjectDisplayLabel])

-- | Information relevant only to a query entry.
--
-- /See:/ 'queryItem' smart constructor.
newtype QueryItem =
  QueryItem'
    { _qiIsSynthetic :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qiIsSynthetic'
queryItem
    :: QueryItem
queryItem = QueryItem' {_qiIsSynthetic = Nothing}


-- | True if the text was generated by means other than a previous user
-- search.
qiIsSynthetic :: Lens' QueryItem (Maybe Bool)
qiIsSynthetic
  = lens _qiIsSynthetic
      (\ s a -> s{_qiIsSynthetic = a})

instance FromJSON QueryItem where
        parseJSON
          = withObject "QueryItem"
              (\ o -> QueryItem' <$> (o .:? "isSynthetic"))

instance ToJSON QueryItem where
        toJSON QueryItem'{..}
          = object
              (catMaybes [("isSynthetic" .=) <$> _qiIsSynthetic])

--
-- /See:/ 'listUnmAppedIdentitiesResponse' smart constructor.
data ListUnmAppedIdentitiesResponse =
  ListUnmAppedIdentitiesResponse'
    { _luairNextPageToken      :: !(Maybe Text)
    , _luairUnmAppedIdentities :: !(Maybe [UnmAppedIdentity])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListUnmAppedIdentitiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'luairNextPageToken'
--
-- * 'luairUnmAppedIdentities'
listUnmAppedIdentitiesResponse
    :: ListUnmAppedIdentitiesResponse
listUnmAppedIdentitiesResponse =
  ListUnmAppedIdentitiesResponse'
    {_luairNextPageToken = Nothing, _luairUnmAppedIdentities = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
luairNextPageToken :: Lens' ListUnmAppedIdentitiesResponse (Maybe Text)
luairNextPageToken
  = lens _luairNextPageToken
      (\ s a -> s{_luairNextPageToken = a})

luairUnmAppedIdentities :: Lens' ListUnmAppedIdentitiesResponse [UnmAppedIdentity]
luairUnmAppedIdentities
  = lens _luairUnmAppedIdentities
      (\ s a -> s{_luairUnmAppedIdentities = a})
      . _Default
      . _Coerce

instance FromJSON ListUnmAppedIdentitiesResponse
         where
        parseJSON
          = withObject "ListUnmAppedIdentitiesResponse"
              (\ o ->
                 ListUnmAppedIdentitiesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "unmappedIdentities" .!= mempty))

instance ToJSON ListUnmAppedIdentitiesResponse where
        toJSON ListUnmAppedIdentitiesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _luairNextPageToken,
                  ("unmappedIdentities" .=) <$>
                    _luairUnmAppedIdentities])

--
-- /See:/ 'deleteQueueItemsRequest' smart constructor.
data DeleteQueueItemsRequest =
  DeleteQueueItemsRequest'
    { _dqirQueue         :: !(Maybe Text)
    , _dqirDebugOptions  :: !(Maybe DebugOptions)
    , _dqirConnectorName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteQueueItemsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dqirQueue'
--
-- * 'dqirDebugOptions'
--
-- * 'dqirConnectorName'
deleteQueueItemsRequest
    :: DeleteQueueItemsRequest
deleteQueueItemsRequest =
  DeleteQueueItemsRequest'
    { _dqirQueue = Nothing
    , _dqirDebugOptions = Nothing
    , _dqirConnectorName = Nothing
    }


-- | Name of a queue to delete items from.
dqirQueue :: Lens' DeleteQueueItemsRequest (Maybe Text)
dqirQueue
  = lens _dqirQueue (\ s a -> s{_dqirQueue = a})

-- | Common debug options.
dqirDebugOptions :: Lens' DeleteQueueItemsRequest (Maybe DebugOptions)
dqirDebugOptions
  = lens _dqirDebugOptions
      (\ s a -> s{_dqirDebugOptions = a})

-- | Name of connector making this call.
-- Format: datasources\/{source_id}\/connectors\/{ID}
dqirConnectorName :: Lens' DeleteQueueItemsRequest (Maybe Text)
dqirConnectorName
  = lens _dqirConnectorName
      (\ s a -> s{_dqirConnectorName = a})

instance FromJSON DeleteQueueItemsRequest where
        parseJSON
          = withObject "DeleteQueueItemsRequest"
              (\ o ->
                 DeleteQueueItemsRequest' <$>
                   (o .:? "queue") <*> (o .:? "debugOptions") <*>
                     (o .:? "connectorName"))

instance ToJSON DeleteQueueItemsRequest where
        toJSON DeleteQueueItemsRequest'{..}
          = object
              (catMaybes
                 [("queue" .=) <$> _dqirQueue,
                  ("debugOptions" .=) <$> _dqirDebugOptions,
                  ("connectorName" .=) <$> _dqirConnectorName])

-- | Results containing indexed information for a document.
--
-- /See:/ 'searchResult' smart constructor.
data SearchResult =
  SearchResult'
    { _srDebugInfo        :: !(Maybe ResultDebugInfo)
    , _srSnippet          :: !(Maybe Snippet)
    , _srURL              :: !(Maybe Text)
    , _srClusteredResults :: !(Maybe [SearchResult])
    , _srMetadata         :: !(Maybe Metadata)
    , _srTitle            :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srDebugInfo'
--
-- * 'srSnippet'
--
-- * 'srURL'
--
-- * 'srClusteredResults'
--
-- * 'srMetadata'
--
-- * 'srTitle'
searchResult
    :: SearchResult
searchResult =
  SearchResult'
    { _srDebugInfo = Nothing
    , _srSnippet = Nothing
    , _srURL = Nothing
    , _srClusteredResults = Nothing
    , _srMetadata = Nothing
    , _srTitle = Nothing
    }


-- | Debugging information about this search result.
srDebugInfo :: Lens' SearchResult (Maybe ResultDebugInfo)
srDebugInfo
  = lens _srDebugInfo (\ s a -> s{_srDebugInfo = a})

-- | The concatenation of all snippets (summaries) available for this result.
srSnippet :: Lens' SearchResult (Maybe Snippet)
srSnippet
  = lens _srSnippet (\ s a -> s{_srSnippet = a})

-- | The URL of the search result. The URL contains a Google redirect to the
-- actual item. This URL is signed and shouldn\'t be changed.
srURL :: Lens' SearchResult (Maybe Text)
srURL = lens _srURL (\ s a -> s{_srURL = a})

-- | If source is clustered, provide list of clustered results. There will
-- only be one level of clustered results. If current source is not enabled
-- for clustering, this field will be empty.
srClusteredResults :: Lens' SearchResult [SearchResult]
srClusteredResults
  = lens _srClusteredResults
      (\ s a -> s{_srClusteredResults = a})
      . _Default
      . _Coerce

-- | Metadata of the search result.
srMetadata :: Lens' SearchResult (Maybe Metadata)
srMetadata
  = lens _srMetadata (\ s a -> s{_srMetadata = a})

-- | Title of the search result.
srTitle :: Lens' SearchResult (Maybe Text)
srTitle = lens _srTitle (\ s a -> s{_srTitle = a})

instance FromJSON SearchResult where
        parseJSON
          = withObject "SearchResult"
              (\ o ->
                 SearchResult' <$>
                   (o .:? "debugInfo") <*> (o .:? "snippet") <*>
                     (o .:? "url")
                     <*> (o .:? "clusteredResults" .!= mempty)
                     <*> (o .:? "metadata")
                     <*> (o .:? "title"))

instance ToJSON SearchResult where
        toJSON SearchResult'{..}
          = object
              (catMaybes
                 [("debugInfo" .=) <$> _srDebugInfo,
                  ("snippet" .=) <$> _srSnippet, ("url" .=) <$> _srURL,
                  ("clusteredResults" .=) <$> _srClusteredResults,
                  ("metadata" .=) <$> _srMetadata,
                  ("title" .=) <$> _srTitle])

--
-- /See:/ 'spellResult' smart constructor.
newtype SpellResult =
  SpellResult'
    { _srSuggestedQuery :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpellResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srSuggestedQuery'
spellResult
    :: SpellResult
spellResult = SpellResult' {_srSuggestedQuery = Nothing}


-- | The suggested spelling of the query.
srSuggestedQuery :: Lens' SpellResult (Maybe Text)
srSuggestedQuery
  = lens _srSuggestedQuery
      (\ s a -> s{_srSuggestedQuery = a})

instance FromJSON SpellResult where
        parseJSON
          = withObject "SpellResult"
              (\ o -> SpellResult' <$> (o .:? "suggestedQuery"))

instance ToJSON SpellResult where
        toJSON SpellResult'{..}
          = object
              (catMaybes
                 [("suggestedQuery" .=) <$> _srSuggestedQuery])

-- | This field contains information about the person being suggested.
--
-- /See:/ 'peopleSuggestion' smart constructor.
newtype PeopleSuggestion =
  PeopleSuggestion'
    { _psPerson :: Maybe Person
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PeopleSuggestion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psPerson'
peopleSuggestion
    :: PeopleSuggestion
peopleSuggestion = PeopleSuggestion' {_psPerson = Nothing}


-- | Suggested person. All fields of the person object might not be
-- populated.
psPerson :: Lens' PeopleSuggestion (Maybe Person)
psPerson = lens _psPerson (\ s a -> s{_psPerson = a})

instance FromJSON PeopleSuggestion where
        parseJSON
          = withObject "PeopleSuggestion"
              (\ o -> PeopleSuggestion' <$> (o .:? "person"))

instance ToJSON PeopleSuggestion where
        toJSON PeopleSuggestion'{..}
          = object (catMaybes [("person" .=) <$> _psPerson])

-- | List of sources that the user can search using the query API.
--
-- /See:/ 'querySource' smart constructor.
data QuerySource =
  QuerySource'
    { _qsShortName   :: !(Maybe Text)
    , _qsDisplayName :: !(Maybe Text)
    , _qsSource      :: !(Maybe Source)
    , _qsOperators   :: !(Maybe [QueryOperator])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QuerySource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qsShortName'
--
-- * 'qsDisplayName'
--
-- * 'qsSource'
--
-- * 'qsOperators'
querySource
    :: QuerySource
querySource =
  QuerySource'
    { _qsShortName = Nothing
    , _qsDisplayName = Nothing
    , _qsSource = Nothing
    , _qsOperators = Nothing
    }


-- | A short name or alias for the source. This value can be used with the
-- \'source\' operator.
qsShortName :: Lens' QuerySource (Maybe Text)
qsShortName
  = lens _qsShortName (\ s a -> s{_qsShortName = a})

-- | Display name of the data source.
qsDisplayName :: Lens' QuerySource (Maybe Text)
qsDisplayName
  = lens _qsDisplayName
      (\ s a -> s{_qsDisplayName = a})

-- | Name of the source
qsSource :: Lens' QuerySource (Maybe Source)
qsSource = lens _qsSource (\ s a -> s{_qsSource = a})

-- | List of all operators applicable for this source.
qsOperators :: Lens' QuerySource [QueryOperator]
qsOperators
  = lens _qsOperators (\ s a -> s{_qsOperators = a}) .
      _Default
      . _Coerce

instance FromJSON QuerySource where
        parseJSON
          = withObject "QuerySource"
              (\ o ->
                 QuerySource' <$>
                   (o .:? "shortName") <*> (o .:? "displayName") <*>
                     (o .:? "source")
                     <*> (o .:? "operators" .!= mempty))

instance ToJSON QuerySource where
        toJSON QuerySource'{..}
          = object
              (catMaybes
                 [("shortName" .=) <$> _qsShortName,
                  ("displayName" .=) <$> _qsDisplayName,
                  ("source" .=) <$> _qsSource,
                  ("operators" .=) <$> _qsOperators])

-- | Response of the suggest API.
--
-- /See:/ 'suggestResponse' smart constructor.
newtype SuggestResponse =
  SuggestResponse'
    { _srSuggestResults :: Maybe [SuggestResult]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SuggestResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srSuggestResults'
suggestResponse
    :: SuggestResponse
suggestResponse = SuggestResponse' {_srSuggestResults = Nothing}


-- | List of suggestions.
srSuggestResults :: Lens' SuggestResponse [SuggestResult]
srSuggestResults
  = lens _srSuggestResults
      (\ s a -> s{_srSuggestResults = a})
      . _Default
      . _Coerce

instance FromJSON SuggestResponse where
        parseJSON
          = withObject "SuggestResponse"
              (\ o ->
                 SuggestResponse' <$>
                   (o .:? "suggestResults" .!= mempty))

instance ToJSON SuggestResponse where
        toJSON SuggestResponse'{..}
          = object
              (catMaybes
                 [("suggestResults" .=) <$> _srSuggestResults])

-- | Errors when the connector is communicating to the source repository.
--
-- /See:/ 'repositoryError' smart constructor.
data RepositoryError =
  RepositoryError'
    { _reHTTPStatusCode :: !(Maybe (Textual Int32))
    , _reType           :: !(Maybe RepositoryErrorType)
    , _reErrorMessage   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepositoryError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reHTTPStatusCode'
--
-- * 'reType'
--
-- * 'reErrorMessage'
repositoryError
    :: RepositoryError
repositoryError =
  RepositoryError'
    {_reHTTPStatusCode = Nothing, _reType = Nothing, _reErrorMessage = Nothing}


-- | Error codes. Matches the definition of HTTP status codes.
reHTTPStatusCode :: Lens' RepositoryError (Maybe Int32)
reHTTPStatusCode
  = lens _reHTTPStatusCode
      (\ s a -> s{_reHTTPStatusCode = a})
      . mapping _Coerce

-- | Type of error.
reType :: Lens' RepositoryError (Maybe RepositoryErrorType)
reType = lens _reType (\ s a -> s{_reType = a})

-- | Message that describes the error. The maximum allowable length of the
-- message is 8192 characters.
reErrorMessage :: Lens' RepositoryError (Maybe Text)
reErrorMessage
  = lens _reErrorMessage
      (\ s a -> s{_reErrorMessage = a})

instance FromJSON RepositoryError where
        parseJSON
          = withObject "RepositoryError"
              (\ o ->
                 RepositoryError' <$>
                   (o .:? "httpStatusCode") <*> (o .:? "type") <*>
                     (o .:? "errorMessage"))

instance ToJSON RepositoryError where
        toJSON RepositoryError'{..}
          = object
              (catMaybes
                 [("httpStatusCode" .=) <$> _reHTTPStatusCode,
                  ("type" .=) <$> _reType,
                  ("errorMessage" .=) <$> _reErrorMessage])

-- | Options for html properties.
--
-- /See:/ 'htmlPropertyOptions' smart constructor.
data HTMLPropertyOptions =
  HTMLPropertyOptions'
    { _hpoRetrievalImportance :: !(Maybe RetrievalImportance)
    , _hpoOperatorOptions     :: !(Maybe HTMLOperatorOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTMLPropertyOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hpoRetrievalImportance'
--
-- * 'hpoOperatorOptions'
htmlPropertyOptions
    :: HTMLPropertyOptions
htmlPropertyOptions =
  HTMLPropertyOptions'
    {_hpoRetrievalImportance = Nothing, _hpoOperatorOptions = Nothing}


-- | Indicates the search quality importance of the tokens within the field
-- when used for retrieval. Can only be set to DEFAULT or NONE.
hpoRetrievalImportance :: Lens' HTMLPropertyOptions (Maybe RetrievalImportance)
hpoRetrievalImportance
  = lens _hpoRetrievalImportance
      (\ s a -> s{_hpoRetrievalImportance = a})

-- | If set, describes how the property should be used as a search operator.
hpoOperatorOptions :: Lens' HTMLPropertyOptions (Maybe HTMLOperatorOptions)
hpoOperatorOptions
  = lens _hpoOperatorOptions
      (\ s a -> s{_hpoOperatorOptions = a})

instance FromJSON HTMLPropertyOptions where
        parseJSON
          = withObject "HTMLPropertyOptions"
              (\ o ->
                 HTMLPropertyOptions' <$>
                   (o .:? "retrievalImportance") <*>
                     (o .:? "operatorOptions"))

instance ToJSON HTMLPropertyOptions where
        toJSON HTMLPropertyOptions'{..}
          = object
              (catMaybes
                 [("retrievalImportance" .=) <$>
                    _hpoRetrievalImportance,
                  ("operatorOptions" .=) <$> _hpoOperatorOptions])

-- | The definition of a property within an object.
--
-- /See:/ 'propertyDefinition' smart constructor.
data PropertyDefinition =
  PropertyDefinition'
    { _pdEnumPropertyOptions      :: !(Maybe EnumPropertyOptions)
    , _pdHTMLPropertyOptions      :: !(Maybe HTMLPropertyOptions)
    , _pdObjectPropertyOptions    :: !(Maybe ObjectPropertyOptions)
    , _pdIsReturnable             :: !(Maybe Bool)
    , _pdTimestampPropertyOptions :: !(Maybe TimestampPropertyOptions)
    , _pdIntegerPropertyOptions   :: !(Maybe IntegerPropertyOptions)
    , _pdName                     :: !(Maybe Text)
    , _pdIsRepeatable             :: !(Maybe Bool)
    , _pdDoublePropertyOptions    :: !(Maybe DoublePropertyOptions)
    , _pdDisplayOptions           :: !(Maybe PropertyDisplayOptions)
    , _pdTextPropertyOptions      :: !(Maybe TextPropertyOptions)
    , _pdIsSortable               :: !(Maybe Bool)
    , _pdIsFacetable              :: !(Maybe Bool)
    , _pdBooleanPropertyOptions   :: !(Maybe BooleanPropertyOptions)
    , _pdDatePropertyOptions      :: !(Maybe DatePropertyOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PropertyDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdEnumPropertyOptions'
--
-- * 'pdHTMLPropertyOptions'
--
-- * 'pdObjectPropertyOptions'
--
-- * 'pdIsReturnable'
--
-- * 'pdTimestampPropertyOptions'
--
-- * 'pdIntegerPropertyOptions'
--
-- * 'pdName'
--
-- * 'pdIsRepeatable'
--
-- * 'pdDoublePropertyOptions'
--
-- * 'pdDisplayOptions'
--
-- * 'pdTextPropertyOptions'
--
-- * 'pdIsSortable'
--
-- * 'pdIsFacetable'
--
-- * 'pdBooleanPropertyOptions'
--
-- * 'pdDatePropertyOptions'
propertyDefinition
    :: PropertyDefinition
propertyDefinition =
  PropertyDefinition'
    { _pdEnumPropertyOptions = Nothing
    , _pdHTMLPropertyOptions = Nothing
    , _pdObjectPropertyOptions = Nothing
    , _pdIsReturnable = Nothing
    , _pdTimestampPropertyOptions = Nothing
    , _pdIntegerPropertyOptions = Nothing
    , _pdName = Nothing
    , _pdIsRepeatable = Nothing
    , _pdDoublePropertyOptions = Nothing
    , _pdDisplayOptions = Nothing
    , _pdTextPropertyOptions = Nothing
    , _pdIsSortable = Nothing
    , _pdIsFacetable = Nothing
    , _pdBooleanPropertyOptions = Nothing
    , _pdDatePropertyOptions = Nothing
    }


pdEnumPropertyOptions :: Lens' PropertyDefinition (Maybe EnumPropertyOptions)
pdEnumPropertyOptions
  = lens _pdEnumPropertyOptions
      (\ s a -> s{_pdEnumPropertyOptions = a})

pdHTMLPropertyOptions :: Lens' PropertyDefinition (Maybe HTMLPropertyOptions)
pdHTMLPropertyOptions
  = lens _pdHTMLPropertyOptions
      (\ s a -> s{_pdHTMLPropertyOptions = a})

pdObjectPropertyOptions :: Lens' PropertyDefinition (Maybe ObjectPropertyOptions)
pdObjectPropertyOptions
  = lens _pdObjectPropertyOptions
      (\ s a -> s{_pdObjectPropertyOptions = a})

-- | Indicates that the property identifies data that should be returned in
-- search results via the Query API. If set to *true*, indicates that Query
-- API users can use matching property fields in results. However, storing
-- fields requires more space allocation and uses more bandwidth for search
-- queries, which impacts performance over large datasets. Set to *true*
-- here only if the field is needed for search results. Cannot be true for
-- properties whose type is an object.
pdIsReturnable :: Lens' PropertyDefinition (Maybe Bool)
pdIsReturnable
  = lens _pdIsReturnable
      (\ s a -> s{_pdIsReturnable = a})

pdTimestampPropertyOptions :: Lens' PropertyDefinition (Maybe TimestampPropertyOptions)
pdTimestampPropertyOptions
  = lens _pdTimestampPropertyOptions
      (\ s a -> s{_pdTimestampPropertyOptions = a})

pdIntegerPropertyOptions :: Lens' PropertyDefinition (Maybe IntegerPropertyOptions)
pdIntegerPropertyOptions
  = lens _pdIntegerPropertyOptions
      (\ s a -> s{_pdIntegerPropertyOptions = a})

-- | The name of the property. Item indexing requests sent to the Indexing
-- API should set the property name equal to this value. For example, if
-- name is *subject_line*, then indexing requests for document items with
-- subject fields should set the name for that field equal to
-- *subject_line*. Use the name as the identifier for the object property.
-- Once registered as a property for an object, you cannot re-use this name
-- for another property within that object. The name must start with a
-- letter and can only contain letters (A-Z, a-z) or numbers (0-9). The
-- maximum length is 256 characters.
pdName :: Lens' PropertyDefinition (Maybe Text)
pdName = lens _pdName (\ s a -> s{_pdName = a})

-- | Indicates that multiple values are allowed for the property. For
-- example, a document only has one description but can have multiple
-- comments. Cannot be true for properties whose type is a boolean. If set
-- to false, properties that contain more than one value will cause the
-- indexing request for that item to be rejected.
pdIsRepeatable :: Lens' PropertyDefinition (Maybe Bool)
pdIsRepeatable
  = lens _pdIsRepeatable
      (\ s a -> s{_pdIsRepeatable = a})

pdDoublePropertyOptions :: Lens' PropertyDefinition (Maybe DoublePropertyOptions)
pdDoublePropertyOptions
  = lens _pdDoublePropertyOptions
      (\ s a -> s{_pdDoublePropertyOptions = a})

-- | Options that determine how the property is displayed in the Cloud Search
-- results page if it is specified to be displayed in the object\'s display
-- options .
pdDisplayOptions :: Lens' PropertyDefinition (Maybe PropertyDisplayOptions)
pdDisplayOptions
  = lens _pdDisplayOptions
      (\ s a -> s{_pdDisplayOptions = a})

pdTextPropertyOptions :: Lens' PropertyDefinition (Maybe TextPropertyOptions)
pdTextPropertyOptions
  = lens _pdTextPropertyOptions
      (\ s a -> s{_pdTextPropertyOptions = a})

-- | Indicates that the property can be used for sorting. Cannot be true for
-- properties that are repeatable. Cannot be true for properties whose type
-- is object or user identifier. IsReturnable must be true to set this
-- option. Only supported for Boolean, Date, Double, Integer, and Timestamp
-- properties.
pdIsSortable :: Lens' PropertyDefinition (Maybe Bool)
pdIsSortable
  = lens _pdIsSortable (\ s a -> s{_pdIsSortable = a})

-- | Indicates that the property can be used for generating facets. Cannot be
-- true for properties whose type is object. IsReturnable must be true to
-- set this option. Only supported for Boolean, Enum, and Text properties.
pdIsFacetable :: Lens' PropertyDefinition (Maybe Bool)
pdIsFacetable
  = lens _pdIsFacetable
      (\ s a -> s{_pdIsFacetable = a})

pdBooleanPropertyOptions :: Lens' PropertyDefinition (Maybe BooleanPropertyOptions)
pdBooleanPropertyOptions
  = lens _pdBooleanPropertyOptions
      (\ s a -> s{_pdBooleanPropertyOptions = a})

pdDatePropertyOptions :: Lens' PropertyDefinition (Maybe DatePropertyOptions)
pdDatePropertyOptions
  = lens _pdDatePropertyOptions
      (\ s a -> s{_pdDatePropertyOptions = a})

instance FromJSON PropertyDefinition where
        parseJSON
          = withObject "PropertyDefinition"
              (\ o ->
                 PropertyDefinition' <$>
                   (o .:? "enumPropertyOptions") <*>
                     (o .:? "htmlPropertyOptions")
                     <*> (o .:? "objectPropertyOptions")
                     <*> (o .:? "isReturnable")
                     <*> (o .:? "timestampPropertyOptions")
                     <*> (o .:? "integerPropertyOptions")
                     <*> (o .:? "name")
                     <*> (o .:? "isRepeatable")
                     <*> (o .:? "doublePropertyOptions")
                     <*> (o .:? "displayOptions")
                     <*> (o .:? "textPropertyOptions")
                     <*> (o .:? "isSortable")
                     <*> (o .:? "isFacetable")
                     <*> (o .:? "booleanPropertyOptions")
                     <*> (o .:? "datePropertyOptions"))

instance ToJSON PropertyDefinition where
        toJSON PropertyDefinition'{..}
          = object
              (catMaybes
                 [("enumPropertyOptions" .=) <$>
                    _pdEnumPropertyOptions,
                  ("htmlPropertyOptions" .=) <$>
                    _pdHTMLPropertyOptions,
                  ("objectPropertyOptions" .=) <$>
                    _pdObjectPropertyOptions,
                  ("isReturnable" .=) <$> _pdIsReturnable,
                  ("timestampPropertyOptions" .=) <$>
                    _pdTimestampPropertyOptions,
                  ("integerPropertyOptions" .=) <$>
                    _pdIntegerPropertyOptions,
                  ("name" .=) <$> _pdName,
                  ("isRepeatable" .=) <$> _pdIsRepeatable,
                  ("doublePropertyOptions" .=) <$>
                    _pdDoublePropertyOptions,
                  ("displayOptions" .=) <$> _pdDisplayOptions,
                  ("textPropertyOptions" .=) <$>
                    _pdTextPropertyOptions,
                  ("isSortable" .=) <$> _pdIsSortable,
                  ("isFacetable" .=) <$> _pdIsFacetable,
                  ("booleanPropertyOptions" .=) <$>
                    _pdBooleanPropertyOptions,
                  ("datePropertyOptions" .=) <$>
                    _pdDatePropertyOptions])

--
-- /See:/ 'sortOptions' smart constructor.
data SortOptions =
  SortOptions'
    { _soSortOrder    :: !(Maybe SortOptionsSortOrder)
    , _soOperatorName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SortOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'soSortOrder'
--
-- * 'soOperatorName'
sortOptions
    :: SortOptions
sortOptions = SortOptions' {_soSortOrder = Nothing, _soOperatorName = Nothing}


-- | Ascending is the default sort order
soSortOrder :: Lens' SortOptions (Maybe SortOptionsSortOrder)
soSortOrder
  = lens _soSortOrder (\ s a -> s{_soSortOrder = a})

-- | Name of the operator corresponding to the field to sort on. The
-- corresponding property must be marked as sortable.
soOperatorName :: Lens' SortOptions (Maybe Text)
soOperatorName
  = lens _soOperatorName
      (\ s a -> s{_soOperatorName = a})

instance FromJSON SortOptions where
        parseJSON
          = withObject "SortOptions"
              (\ o ->
                 SortOptions' <$>
                   (o .:? "sortOrder") <*> (o .:? "operatorName"))

instance ToJSON SortOptions where
        toJSON SortOptions'{..}
          = object
              (catMaybes
                 [("sortOrder" .=) <$> _soSortOrder,
                  ("operatorName" .=) <$> _soOperatorName])

-- | Options for object properties.
--
-- /See:/ 'objectPropertyOptions' smart constructor.
newtype ObjectPropertyOptions =
  ObjectPropertyOptions'
    { _opoSubobjectProperties :: Maybe [PropertyDefinition]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ObjectPropertyOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opoSubobjectProperties'
objectPropertyOptions
    :: ObjectPropertyOptions
objectPropertyOptions =
  ObjectPropertyOptions' {_opoSubobjectProperties = Nothing}


-- | The properties of the sub-object. These properties represent a nested
-- object. For example, if this property represents a postal address, the
-- subobjectProperties might be named *street*, *city*, and *state*. The
-- maximum number of elements is 1000.
opoSubobjectProperties :: Lens' ObjectPropertyOptions [PropertyDefinition]
opoSubobjectProperties
  = lens _opoSubobjectProperties
      (\ s a -> s{_opoSubobjectProperties = a})
      . _Default
      . _Coerce

instance FromJSON ObjectPropertyOptions where
        parseJSON
          = withObject "ObjectPropertyOptions"
              (\ o ->
                 ObjectPropertyOptions' <$>
                   (o .:? "subobjectProperties" .!= mempty))

instance ToJSON ObjectPropertyOptions where
        toJSON ObjectPropertyOptions'{..}
          = object
              (catMaybes
                 [("subobjectProperties" .=) <$>
                    _opoSubobjectProperties])

-- | The search API response.
--
-- /See:/ 'searchResponse' smart constructor.
data SearchResponse =
  SearchResponse'
    { _sSpellResults        :: !(Maybe [SpellResult])
    , _sFacetResults        :: !(Maybe [FacetResult])
    , _sDebugInfo           :: !(Maybe ResponseDebugInfo)
    , _sResults             :: !(Maybe [SearchResult])
    , _sHasMoreResults      :: !(Maybe Bool)
    , _sResultCounts        :: !(Maybe ResultCounts)
    , _sResultCountExact    :: !(Maybe (Textual Int64))
    , _sResultCountEstimate :: !(Maybe (Textual Int64))
    , _sQueryInterpretation :: !(Maybe QueryInterpretation)
    , _sStructuredResults   :: !(Maybe [StructuredResult])
    , _sErrorInfo           :: !(Maybe ErrorInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sSpellResults'
--
-- * 'sFacetResults'
--
-- * 'sDebugInfo'
--
-- * 'sResults'
--
-- * 'sHasMoreResults'
--
-- * 'sResultCounts'
--
-- * 'sResultCountExact'
--
-- * 'sResultCountEstimate'
--
-- * 'sQueryInterpretation'
--
-- * 'sStructuredResults'
--
-- * 'sErrorInfo'
searchResponse
    :: SearchResponse
searchResponse =
  SearchResponse'
    { _sSpellResults = Nothing
    , _sFacetResults = Nothing
    , _sDebugInfo = Nothing
    , _sResults = Nothing
    , _sHasMoreResults = Nothing
    , _sResultCounts = Nothing
    , _sResultCountExact = Nothing
    , _sResultCountEstimate = Nothing
    , _sQueryInterpretation = Nothing
    , _sStructuredResults = Nothing
    , _sErrorInfo = Nothing
    }


-- | Suggested spelling for the query.
sSpellResults :: Lens' SearchResponse [SpellResult]
sSpellResults
  = lens _sSpellResults
      (\ s a -> s{_sSpellResults = a})
      . _Default
      . _Coerce

-- | Repeated facet results.
sFacetResults :: Lens' SearchResponse [FacetResult]
sFacetResults
  = lens _sFacetResults
      (\ s a -> s{_sFacetResults = a})
      . _Default
      . _Coerce

-- | Debugging information about the response.
sDebugInfo :: Lens' SearchResponse (Maybe ResponseDebugInfo)
sDebugInfo
  = lens _sDebugInfo (\ s a -> s{_sDebugInfo = a})

-- | Results from a search query.
sResults :: Lens' SearchResponse [SearchResult]
sResults
  = lens _sResults (\ s a -> s{_sResults = a}) .
      _Default
      . _Coerce

-- | Whether there are more search results matching the query.
sHasMoreResults :: Lens' SearchResponse (Maybe Bool)
sHasMoreResults
  = lens _sHasMoreResults
      (\ s a -> s{_sHasMoreResults = a})

-- | Expanded result count information.
sResultCounts :: Lens' SearchResponse (Maybe ResultCounts)
sResultCounts
  = lens _sResultCounts
      (\ s a -> s{_sResultCounts = a})

-- | The exact result count for this query.
sResultCountExact :: Lens' SearchResponse (Maybe Int64)
sResultCountExact
  = lens _sResultCountExact
      (\ s a -> s{_sResultCountExact = a})
      . mapping _Coerce

-- | The estimated result count for this query.
sResultCountEstimate :: Lens' SearchResponse (Maybe Int64)
sResultCountEstimate
  = lens _sResultCountEstimate
      (\ s a -> s{_sResultCountEstimate = a})
      . mapping _Coerce

-- | Query interpretation result for user query. Empty if query
-- interpretation is disabled.
sQueryInterpretation :: Lens' SearchResponse (Maybe QueryInterpretation)
sQueryInterpretation
  = lens _sQueryInterpretation
      (\ s a -> s{_sQueryInterpretation = a})

-- | Structured results for the user query. These results are not counted
-- against the page_size.
sStructuredResults :: Lens' SearchResponse [StructuredResult]
sStructuredResults
  = lens _sStructuredResults
      (\ s a -> s{_sStructuredResults = a})
      . _Default
      . _Coerce

-- | Error information about the response.
sErrorInfo :: Lens' SearchResponse (Maybe ErrorInfo)
sErrorInfo
  = lens _sErrorInfo (\ s a -> s{_sErrorInfo = a})

instance FromJSON SearchResponse where
        parseJSON
          = withObject "SearchResponse"
              (\ o ->
                 SearchResponse' <$>
                   (o .:? "spellResults" .!= mempty) <*>
                     (o .:? "facetResults" .!= mempty)
                     <*> (o .:? "debugInfo")
                     <*> (o .:? "results" .!= mempty)
                     <*> (o .:? "hasMoreResults")
                     <*> (o .:? "resultCounts")
                     <*> (o .:? "resultCountExact")
                     <*> (o .:? "resultCountEstimate")
                     <*> (o .:? "queryInterpretation")
                     <*> (o .:? "structuredResults" .!= mempty)
                     <*> (o .:? "errorInfo"))

instance ToJSON SearchResponse where
        toJSON SearchResponse'{..}
          = object
              (catMaybes
                 [("spellResults" .=) <$> _sSpellResults,
                  ("facetResults" .=) <$> _sFacetResults,
                  ("debugInfo" .=) <$> _sDebugInfo,
                  ("results" .=) <$> _sResults,
                  ("hasMoreResults" .=) <$> _sHasMoreResults,
                  ("resultCounts" .=) <$> _sResultCounts,
                  ("resultCountExact" .=) <$> _sResultCountExact,
                  ("resultCountEstimate" .=) <$> _sResultCountEstimate,
                  ("queryInterpretation" .=) <$> _sQueryInterpretation,
                  ("structuredResults" .=) <$> _sStructuredResults,
                  ("errorInfo" .=) <$> _sErrorInfo])

-- | One suggestion result.
--
-- /See:/ 'suggestResult' smart constructor.
data SuggestResult =
  SuggestResult'
    { _sPeopleSuggestion :: !(Maybe PeopleSuggestion)
    , _sQuerySuggestion  :: !(Maybe QuerySuggestion)
    , _sSuggestedQuery   :: !(Maybe Text)
    , _sSource           :: !(Maybe Source)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SuggestResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sPeopleSuggestion'
--
-- * 'sQuerySuggestion'
--
-- * 'sSuggestedQuery'
--
-- * 'sSource'
suggestResult
    :: SuggestResult
suggestResult =
  SuggestResult'
    { _sPeopleSuggestion = Nothing
    , _sQuerySuggestion = Nothing
    , _sSuggestedQuery = Nothing
    , _sSource = Nothing
    }


-- | This is present when the suggestion indicates a person. It contains more
-- information about the person - like their email ID, name etc.
sPeopleSuggestion :: Lens' SuggestResult (Maybe PeopleSuggestion)
sPeopleSuggestion
  = lens _sPeopleSuggestion
      (\ s a -> s{_sPeopleSuggestion = a})

-- | This field will be present if the suggested query is a word\/phrase
-- completion.
sQuerySuggestion :: Lens' SuggestResult (Maybe QuerySuggestion)
sQuerySuggestion
  = lens _sQuerySuggestion
      (\ s a -> s{_sQuerySuggestion = a})

-- | The suggested query that will be used for search, when the user clicks
-- on the suggestion
sSuggestedQuery :: Lens' SuggestResult (Maybe Text)
sSuggestedQuery
  = lens _sSuggestedQuery
      (\ s a -> s{_sSuggestedQuery = a})

-- | The source of the suggestion.
sSource :: Lens' SuggestResult (Maybe Source)
sSource = lens _sSource (\ s a -> s{_sSource = a})

instance FromJSON SuggestResult where
        parseJSON
          = withObject "SuggestResult"
              (\ o ->
                 SuggestResult' <$>
                   (o .:? "peopleSuggestion") <*>
                     (o .:? "querySuggestion")
                     <*> (o .:? "suggestedQuery")
                     <*> (o .:? "source"))

instance ToJSON SuggestResult where
        toJSON SuggestResult'{..}
          = object
              (catMaybes
                 [("peopleSuggestion" .=) <$> _sPeopleSuggestion,
                  ("querySuggestion" .=) <$> _sQuerySuggestion,
                  ("suggestedQuery" .=) <$> _sSuggestedQuery,
                  ("source" .=) <$> _sSource])

-- | List of text values.
--
-- /See:/ 'textValues' smart constructor.
newtype TextValues =
  TextValues'
    { _tvValues :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TextValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvValues'
textValues
    :: TextValues
textValues = TextValues' {_tvValues = Nothing}


-- | The maximum allowable length for text values is 2048 characters.
tvValues :: Lens' TextValues [Text]
tvValues
  = lens _tvValues (\ s a -> s{_tvValues = a}) .
      _Default
      . _Coerce

instance FromJSON TextValues where
        parseJSON
          = withObject "TextValues"
              (\ o -> TextValues' <$> (o .:? "values" .!= mempty))

instance ToJSON TextValues where
        toJSON TextValues'{..}
          = object (catMaybes [("values" .=) <$> _tvValues])

-- | Drive location search restricts (e.g. \"is:starred\").
--
-- /See:/ 'driveLocationRestrict' smart constructor.
newtype DriveLocationRestrict =
  DriveLocationRestrict'
    { _dlrType :: Maybe DriveLocationRestrictType
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DriveLocationRestrict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlrType'
driveLocationRestrict
    :: DriveLocationRestrict
driveLocationRestrict = DriveLocationRestrict' {_dlrType = Nothing}


dlrType :: Lens' DriveLocationRestrict (Maybe DriveLocationRestrictType)
dlrType = lens _dlrType (\ s a -> s{_dlrType = a})

instance FromJSON DriveLocationRestrict where
        parseJSON
          = withObject "DriveLocationRestrict"
              (\ o -> DriveLocationRestrict' <$> (o .:? "type"))

instance ToJSON DriveLocationRestrict where
        toJSON DriveLocationRestrict'{..}
          = object (catMaybes [("type" .=) <$> _dlrType])

-- | List sources response.
--
-- /See:/ 'listQuerySourcesResponse' smart constructor.
data ListQuerySourcesResponse =
  ListQuerySourcesResponse'
    { _lqsrNextPageToken :: !(Maybe Text)
    , _lqsrSources       :: !(Maybe [QuerySource])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListQuerySourcesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lqsrNextPageToken'
--
-- * 'lqsrSources'
listQuerySourcesResponse
    :: ListQuerySourcesResponse
listQuerySourcesResponse =
  ListQuerySourcesResponse'
    {_lqsrNextPageToken = Nothing, _lqsrSources = Nothing}


lqsrNextPageToken :: Lens' ListQuerySourcesResponse (Maybe Text)
lqsrNextPageToken
  = lens _lqsrNextPageToken
      (\ s a -> s{_lqsrNextPageToken = a})

lqsrSources :: Lens' ListQuerySourcesResponse [QuerySource]
lqsrSources
  = lens _lqsrSources (\ s a -> s{_lqsrSources = a}) .
      _Default
      . _Coerce

instance FromJSON ListQuerySourcesResponse where
        parseJSON
          = withObject "ListQuerySourcesResponse"
              (\ o ->
                 ListQuerySourcesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "sources" .!= mempty))

instance ToJSON ListQuerySourcesResponse where
        toJSON ListQuerySourcesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lqsrNextPageToken,
                  ("sources" .=) <$> _lqsrSources])

-- | Used to provide a search operator for double properties. This is
-- optional. Search operators let users restrict the query to specific
-- fields relevant to the type of item being searched.
--
-- /See:/ 'doubleOperatorOptions' smart constructor.
newtype DoubleOperatorOptions =
  DoubleOperatorOptions'
    { _dOperatorName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DoubleOperatorOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dOperatorName'
doubleOperatorOptions
    :: DoubleOperatorOptions
doubleOperatorOptions = DoubleOperatorOptions' {_dOperatorName = Nothing}


-- | Indicates the operator name required in the query in order to use the
-- double property in sorting or as a facet. The operator name can only
-- contain lowercase letters (a-z). The maximum length is 32 characters.
dOperatorName :: Lens' DoubleOperatorOptions (Maybe Text)
dOperatorName
  = lens _dOperatorName
      (\ s a -> s{_dOperatorName = a})

instance FromJSON DoubleOperatorOptions where
        parseJSON
          = withObject "DoubleOperatorOptions"
              (\ o ->
                 DoubleOperatorOptions' <$> (o .:? "operatorName"))

instance ToJSON DoubleOperatorOptions where
        toJSON DoubleOperatorOptions'{..}
          = object
              (catMaybes [("operatorName" .=) <$> _dOperatorName])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation =
  Operation'
    { _oDone     :: !(Maybe Bool)
    , _oError    :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName     :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oDone'
--
-- * 'oError'
--
-- * 'oResponse'
--
-- * 'oName'
--
-- * 'oMetadata'
operation
    :: Operation
operation =
  Operation'
    { _oDone = Nothing
    , _oError = Nothing
    , _oResponse = Nothing
    , _oName = Nothing
    , _oMetadata = Nothing
    }


-- | If the value is \`false\`, it means the operation is still in progress.
-- If \`true\`, the operation is completed, and either \`error\` or
-- \`response\` is available.
oDone :: Lens' Operation (Maybe Bool)
oDone = lens _oDone (\ s a -> s{_oDone = a})

-- | The error result of the operation in case of failure or cancellation.
oError :: Lens' Operation (Maybe Status)
oError = lens _oError (\ s a -> s{_oError = a})

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
oResponse :: Lens' Operation (Maybe OperationResponse)
oResponse
  = lens _oResponse (\ s a -> s{_oResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. If you use the default HTTP mapping, the
-- \`name\` should have the format of \`operations\/some\/unique\/name\`.
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
oMetadata :: Lens' Operation (Maybe OperationMetadata)
oMetadata
  = lens _oMetadata (\ s a -> s{_oMetadata = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation' <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata"))

instance ToJSON Operation where
        toJSON Operation'{..}
          = object
              (catMaybes
                 [("done" .=) <$> _oDone, ("error" .=) <$> _oError,
                  ("response" .=) <$> _oResponse,
                  ("name" .=) <$> _oName,
                  ("metadata" .=) <$> _oMetadata])

-- | Object to represent a person.
--
-- /See:/ 'person' smart constructor.
data Person =
  Person'
    { _pEmailAddresses :: !(Maybe [EmailAddress])
    , _pPersonNames    :: !(Maybe [Name])
    , _pPhotos         :: !(Maybe [Photo])
    , _pName           :: !(Maybe Text)
    , _pObfuscatedId   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Person' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pEmailAddresses'
--
-- * 'pPersonNames'
--
-- * 'pPhotos'
--
-- * 'pName'
--
-- * 'pObfuscatedId'
person
    :: Person
person =
  Person'
    { _pEmailAddresses = Nothing
    , _pPersonNames = Nothing
    , _pPhotos = Nothing
    , _pName = Nothing
    , _pObfuscatedId = Nothing
    }


-- | The person\'s email addresses
pEmailAddresses :: Lens' Person [EmailAddress]
pEmailAddresses
  = lens _pEmailAddresses
      (\ s a -> s{_pEmailAddresses = a})
      . _Default
      . _Coerce

-- | The person\'s name
pPersonNames :: Lens' Person [Name]
pPersonNames
  = lens _pPersonNames (\ s a -> s{_pPersonNames = a})
      . _Default
      . _Coerce

-- | A person\'s read-only photo. A picture shown next to the person\'s name
-- to help others recognize the person in search results.
pPhotos :: Lens' Person [Photo]
pPhotos
  = lens _pPhotos (\ s a -> s{_pPhotos = a}) . _Default
      . _Coerce

-- | The resource name of the person to provide information about. See
-- <https://developers.google.com/people/api/rest/v1/people/get People.get>
-- from Google People API.
pName :: Lens' Person (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

-- | Obfuscated ID of a person.
pObfuscatedId :: Lens' Person (Maybe Text)
pObfuscatedId
  = lens _pObfuscatedId
      (\ s a -> s{_pObfuscatedId = a})

instance FromJSON Person where
        parseJSON
          = withObject "Person"
              (\ o ->
                 Person' <$>
                   (o .:? "emailAddresses" .!= mempty) <*>
                     (o .:? "personNames" .!= mempty)
                     <*> (o .:? "photos" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "obfuscatedId"))

instance ToJSON Person where
        toJSON Person'{..}
          = object
              (catMaybes
                 [("emailAddresses" .=) <$> _pEmailAddresses,
                  ("personNames" .=) <$> _pPersonNames,
                  ("photos" .=) <$> _pPhotos, ("name" .=) <$> _pName,
                  ("obfuscatedId" .=) <$> _pObfuscatedId])

--
-- /See:/ 'compositeFilter' smart constructor.
data CompositeFilter =
  CompositeFilter'
    { _cfSubFilters    :: !(Maybe [Filter])
    , _cfLogicOperator :: !(Maybe CompositeFilterLogicOperator)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CompositeFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfSubFilters'
--
-- * 'cfLogicOperator'
compositeFilter
    :: CompositeFilter
compositeFilter =
  CompositeFilter' {_cfSubFilters = Nothing, _cfLogicOperator = Nothing}


-- | Sub filters.
cfSubFilters :: Lens' CompositeFilter [Filter]
cfSubFilters
  = lens _cfSubFilters (\ s a -> s{_cfSubFilters = a})
      . _Default
      . _Coerce

-- | The logic operator of the sub filter.
cfLogicOperator :: Lens' CompositeFilter (Maybe CompositeFilterLogicOperator)
cfLogicOperator
  = lens _cfLogicOperator
      (\ s a -> s{_cfLogicOperator = a})

instance FromJSON CompositeFilter where
        parseJSON
          = withObject "CompositeFilter"
              (\ o ->
                 CompositeFilter' <$>
                   (o .:? "subFilters" .!= mempty) <*>
                     (o .:? "logicOperator"))

instance ToJSON CompositeFilter where
        toJSON CompositeFilter'{..}
          = object
              (catMaybes
                 [("subFilters" .=) <$> _cfSubFilters,
                  ("logicOperator" .=) <$> _cfLogicOperator])

-- | The collection of fields that make up a displayed line
--
-- /See:/ 'resultDisplayLine' smart constructor.
newtype ResultDisplayLine =
  ResultDisplayLine'
    { _rdlFields :: Maybe [ResultDisplayField]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResultDisplayLine' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdlFields'
resultDisplayLine
    :: ResultDisplayLine
resultDisplayLine = ResultDisplayLine' {_rdlFields = Nothing}


rdlFields :: Lens' ResultDisplayLine [ResultDisplayField]
rdlFields
  = lens _rdlFields (\ s a -> s{_rdlFields = a}) .
      _Default
      . _Coerce

instance FromJSON ResultDisplayLine where
        parseJSON
          = withObject "ResultDisplayLine"
              (\ o ->
                 ResultDisplayLine' <$> (o .:? "fields" .!= mempty))

instance ToJSON ResultDisplayLine where
        toJSON ResultDisplayLine'{..}
          = object (catMaybes [("fields" .=) <$> _rdlFields])

-- | List of double values.
--
-- /See:/ 'doubleValues' smart constructor.
newtype DoubleValues =
  DoubleValues'
    { _dvValues :: Maybe [Textual Double]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DoubleValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvValues'
doubleValues
    :: DoubleValues
doubleValues = DoubleValues' {_dvValues = Nothing}


dvValues :: Lens' DoubleValues [Double]
dvValues
  = lens _dvValues (\ s a -> s{_dvValues = a}) .
      _Default
      . _Coerce

instance FromJSON DoubleValues where
        parseJSON
          = withObject "DoubleValues"
              (\ o ->
                 DoubleValues' <$> (o .:? "values" .!= mempty))

instance ToJSON DoubleValues where
        toJSON DoubleValues'{..}
          = object (catMaybes [("values" .=) <$> _dvValues])

-- | Snippet of the search result, which summarizes the content of the
-- resulting page.
--
-- /See:/ 'snippet' smart constructor.
data Snippet =
  Snippet'
    { _sMatchRanges :: !(Maybe [MatchRange])
    , _sSnippet     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Snippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sMatchRanges'
--
-- * 'sSnippet'
snippet
    :: Snippet
snippet = Snippet' {_sMatchRanges = Nothing, _sSnippet = Nothing}


-- | The matched ranges in the snippet.
sMatchRanges :: Lens' Snippet [MatchRange]
sMatchRanges
  = lens _sMatchRanges (\ s a -> s{_sMatchRanges = a})
      . _Default
      . _Coerce

-- | The snippet of the document. The snippet of the document. May contain
-- escaped HTML character that should be unescaped prior to rendering.
sSnippet :: Lens' Snippet (Maybe Text)
sSnippet = lens _sSnippet (\ s a -> s{_sSnippet = a})

instance FromJSON Snippet where
        parseJSON
          = withObject "Snippet"
              (\ o ->
                 Snippet' <$>
                   (o .:? "matchRanges" .!= mempty) <*>
                     (o .:? "snippet"))

instance ToJSON Snippet where
        toJSON Snippet'{..}
          = object
              (catMaybes
                 [("matchRanges" .=) <$> _sMatchRanges,
                  ("snippet" .=) <$> _sSnippet])

-- | Used to provide a search operator for text properties. This is optional.
-- Search operators let users restrict the query to specific fields
-- relevant to the type of item being searched.
--
-- /See:/ 'textOperatorOptions' smart constructor.
data TextOperatorOptions =
  TextOperatorOptions'
    { _tooOperatorName           :: !(Maybe Text)
    , _tooExactMatchWithOperator :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TextOperatorOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tooOperatorName'
--
-- * 'tooExactMatchWithOperator'
textOperatorOptions
    :: TextOperatorOptions
textOperatorOptions =
  TextOperatorOptions'
    {_tooOperatorName = Nothing, _tooExactMatchWithOperator = Nothing}


-- | Indicates the operator name required in the query in order to isolate
-- the text property. For example, if operatorName is *subject* and the
-- property\'s name is *subjectLine*, then queries like *subject:\<value>*
-- will show results only where the value of the property named
-- *subjectLine* matches *\<value>*. By contrast, a search that uses the
-- same *\<value>* without an operator will return all items where
-- *\<value>* matches the value of any text properties or text within the
-- content field for the item. The operator name can only contain lowercase
-- letters (a-z). The maximum length is 32 characters.
tooOperatorName :: Lens' TextOperatorOptions (Maybe Text)
tooOperatorName
  = lens _tooOperatorName
      (\ s a -> s{_tooOperatorName = a})

-- | If true, the text value will be tokenized as one atomic value in
-- operator searches and facet matches. For example, if the operator name
-- is \"genre\" and the value is \"science-fiction\" the query restrictions
-- \"genre:science\" and \"genre:fiction\" will not match the item;
-- \"genre:science-fiction\" will. Value matching is case-sensitive and
-- does not remove special characters. If false, the text will be
-- tokenized. For example, if the value is \"science-fiction\" the queries
-- \"genre:science\" and \"genre:fiction\" will match the item.
tooExactMatchWithOperator :: Lens' TextOperatorOptions (Maybe Bool)
tooExactMatchWithOperator
  = lens _tooExactMatchWithOperator
      (\ s a -> s{_tooExactMatchWithOperator = a})

instance FromJSON TextOperatorOptions where
        parseJSON
          = withObject "TextOperatorOptions"
              (\ o ->
                 TextOperatorOptions' <$>
                   (o .:? "operatorName") <*>
                     (o .:? "exactMatchWithOperator"))

instance ToJSON TextOperatorOptions where
        toJSON TextOperatorOptions'{..}
          = object
              (catMaybes
                 [("operatorName" .=) <$> _tooOperatorName,
                  ("exactMatchWithOperator" .=) <$>
                    _tooExactMatchWithOperator])

-- | Options to interpret user query.
--
-- /See:/ 'queryInterpretationOptions' smart constructor.
newtype QueryInterpretationOptions =
  QueryInterpretationOptions'
    { _qioDisableNlInterpretation :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryInterpretationOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qioDisableNlInterpretation'
queryInterpretationOptions
    :: QueryInterpretationOptions
queryInterpretationOptions =
  QueryInterpretationOptions' {_qioDisableNlInterpretation = Nothing}


-- | Flag to disable natural language (NL) interpretation of queries. Default
-- is false, Set to true to disable natural language interpretation. NL
-- interpretation only applies to predefined datasources.
qioDisableNlInterpretation :: Lens' QueryInterpretationOptions (Maybe Bool)
qioDisableNlInterpretation
  = lens _qioDisableNlInterpretation
      (\ s a -> s{_qioDisableNlInterpretation = a})

instance FromJSON QueryInterpretationOptions where
        parseJSON
          = withObject "QueryInterpretationOptions"
              (\ o ->
                 QueryInterpretationOptions' <$>
                   (o .:? "disableNlInterpretation"))

instance ToJSON QueryInterpretationOptions where
        toJSON QueryInterpretationOptions'{..}
          = object
              (catMaybes
                 [("disableNlInterpretation" .=) <$>
                    _qioDisableNlInterpretation])

--
-- /See:/ 'resetSearchApplicationRequest' smart constructor.
newtype ResetSearchApplicationRequest =
  ResetSearchApplicationRequest'
    { _rsarDebugOptions :: Maybe DebugOptions
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResetSearchApplicationRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsarDebugOptions'
resetSearchApplicationRequest
    :: ResetSearchApplicationRequest
resetSearchApplicationRequest =
  ResetSearchApplicationRequest' {_rsarDebugOptions = Nothing}


-- | Common debug options.
rsarDebugOptions :: Lens' ResetSearchApplicationRequest (Maybe DebugOptions)
rsarDebugOptions
  = lens _rsarDebugOptions
      (\ s a -> s{_rsarDebugOptions = a})

instance FromJSON ResetSearchApplicationRequest where
        parseJSON
          = withObject "ResetSearchApplicationRequest"
              (\ o ->
                 ResetSearchApplicationRequest' <$>
                   (o .:? "debugOptions"))

instance ToJSON ResetSearchApplicationRequest where
        toJSON ResetSearchApplicationRequest'{..}
          = object
              (catMaybes
                 [("debugOptions" .=) <$> _rsarDebugOptions])

-- | Available metadata fields for the item.
--
-- /See:/ 'itemMetadata' smart constructor.
data ItemMetadata =
  ItemMetadata'
    { _imSourceRepositoryURL   :: !(Maybe Text)
    , _imHash                  :: !(Maybe Text)
    , _imObjectType            :: !(Maybe Text)
    , _imContainerName         :: !(Maybe Text)
    , _imInteractions          :: !(Maybe [Interaction])
    , _imMimeType              :: !(Maybe Text)
    , _imUpdateTime            :: !(Maybe DateTime')
    , _imKeywords              :: !(Maybe [Text])
    , _imTitle                 :: !(Maybe Text)
    , _imContentLanguage       :: !(Maybe Text)
    , _imSearchQualityMetadata :: !(Maybe SearchQualityMetadata)
    , _imCreateTime            :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ItemMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'imSourceRepositoryURL'
--
-- * 'imHash'
--
-- * 'imObjectType'
--
-- * 'imContainerName'
--
-- * 'imInteractions'
--
-- * 'imMimeType'
--
-- * 'imUpdateTime'
--
-- * 'imKeywords'
--
-- * 'imTitle'
--
-- * 'imContentLanguage'
--
-- * 'imSearchQualityMetadata'
--
-- * 'imCreateTime'
itemMetadata
    :: ItemMetadata
itemMetadata =
  ItemMetadata'
    { _imSourceRepositoryURL = Nothing
    , _imHash = Nothing
    , _imObjectType = Nothing
    , _imContainerName = Nothing
    , _imInteractions = Nothing
    , _imMimeType = Nothing
    , _imUpdateTime = Nothing
    , _imKeywords = Nothing
    , _imTitle = Nothing
    , _imContentLanguage = Nothing
    , _imSearchQualityMetadata = Nothing
    , _imCreateTime = Nothing
    }


-- | Link to the source repository serving the data. Search results apply
-- this link to the title. The maximum length is 2048 characters.
imSourceRepositoryURL :: Lens' ItemMetadata (Maybe Text)
imSourceRepositoryURL
  = lens _imSourceRepositoryURL
      (\ s a -> s{_imSourceRepositoryURL = a})

-- | Hashing value provided by the API caller. This can be used with the
-- items.push method to calculate modified state. The maximum length is
-- 2048 characters.
imHash :: Lens' ItemMetadata (Maybe Text)
imHash = lens _imHash (\ s a -> s{_imHash = a})

-- | The type of the item. This should correspond to the name of an object
-- definition in the schema registered for the data source. For example, if
-- the schema for the data source contains an object definition with name
-- \'document\', then item indexing requests for objects of that type
-- should set objectType to \'document\'. The maximum length is 256
-- characters.
imObjectType :: Lens' ItemMetadata (Maybe Text)
imObjectType
  = lens _imObjectType (\ s a -> s{_imObjectType = a})

-- | The name of the container for this item. Deletion of the container item
-- leads to automatic deletion of this item. Note: ACLs are not inherited
-- from a container item. To provide ACL inheritance for an item, use the
-- inheritAclFrom field. The maximum length is 1536 characters.
imContainerName :: Lens' ItemMetadata (Maybe Text)
imContainerName
  = lens _imContainerName
      (\ s a -> s{_imContainerName = a})

-- | A list of interactions for the item. Interactions are used to improve
-- Search quality, but are not exposed to end users. The maximum number of
-- elements is 1000.
imInteractions :: Lens' ItemMetadata [Interaction]
imInteractions
  = lens _imInteractions
      (\ s a -> s{_imInteractions = a})
      . _Default
      . _Coerce

-- | The original mime-type of ItemContent.content in the source repository.
-- The maximum length is 256 characters.
imMimeType :: Lens' ItemMetadata (Maybe Text)
imMimeType
  = lens _imMimeType (\ s a -> s{_imMimeType = a})

-- | The time when the item was last modified in the source repository.
imUpdateTime :: Lens' ItemMetadata (Maybe UTCTime)
imUpdateTime
  = lens _imUpdateTime (\ s a -> s{_imUpdateTime = a})
      . mapping _DateTime

-- | Additional keywords or phrases that should match the item. Used
-- internally for user generated content. The maximum number of elements is
-- 100. The maximum length is 8192 characters.
imKeywords :: Lens' ItemMetadata [Text]
imKeywords
  = lens _imKeywords (\ s a -> s{_imKeywords = a}) .
      _Default
      . _Coerce

-- | The title of the item. If given, this will be the displayed title of the
-- Search result. The maximum length is 2048 characters.
imTitle :: Lens' ItemMetadata (Maybe Text)
imTitle = lens _imTitle (\ s a -> s{_imTitle = a})

-- | The BCP-47 language code for the item, such as \"en-US\" or \"sr-Latn\".
-- For more information, see
-- http:\/\/www.unicode.org\/reports\/tr35\/#Unicode_locale_identifier. The
-- maximum length is 32 characters.
imContentLanguage :: Lens' ItemMetadata (Maybe Text)
imContentLanguage
  = lens _imContentLanguage
      (\ s a -> s{_imContentLanguage = a})

-- | Additional search quality metadata of the item
imSearchQualityMetadata :: Lens' ItemMetadata (Maybe SearchQualityMetadata)
imSearchQualityMetadata
  = lens _imSearchQualityMetadata
      (\ s a -> s{_imSearchQualityMetadata = a})

-- | The time when the item was created in the source repository.
imCreateTime :: Lens' ItemMetadata (Maybe UTCTime)
imCreateTime
  = lens _imCreateTime (\ s a -> s{_imCreateTime = a})
      . mapping _DateTime

instance FromJSON ItemMetadata where
        parseJSON
          = withObject "ItemMetadata"
              (\ o ->
                 ItemMetadata' <$>
                   (o .:? "sourceRepositoryUrl") <*> (o .:? "hash") <*>
                     (o .:? "objectType")
                     <*> (o .:? "containerName")
                     <*> (o .:? "interactions" .!= mempty)
                     <*> (o .:? "mimeType")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "keywords" .!= mempty)
                     <*> (o .:? "title")
                     <*> (o .:? "contentLanguage")
                     <*> (o .:? "searchQualityMetadata")
                     <*> (o .:? "createTime"))

instance ToJSON ItemMetadata where
        toJSON ItemMetadata'{..}
          = object
              (catMaybes
                 [("sourceRepositoryUrl" .=) <$>
                    _imSourceRepositoryURL,
                  ("hash" .=) <$> _imHash,
                  ("objectType" .=) <$> _imObjectType,
                  ("containerName" .=) <$> _imContainerName,
                  ("interactions" .=) <$> _imInteractions,
                  ("mimeType" .=) <$> _imMimeType,
                  ("updateTime" .=) <$> _imUpdateTime,
                  ("keywords" .=) <$> _imKeywords,
                  ("title" .=) <$> _imTitle,
                  ("contentLanguage" .=) <$> _imContentLanguage,
                  ("searchQualityMetadata" .=) <$>
                    _imSearchQualityMetadata,
                  ("createTime" .=) <$> _imCreateTime])

-- | Filter options to be applied on query.
--
-- /See:/ 'filterOptions' smart constructor.
data FilterOptions =
  FilterOptions'
    { _foObjectType :: !(Maybe Text)
    , _foFilter     :: !(Maybe Filter)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FilterOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'foObjectType'
--
-- * 'foFilter'
filterOptions
    :: FilterOptions
filterOptions = FilterOptions' {_foObjectType = Nothing, _foFilter = Nothing}


-- | If object_type is set, only objects of that type are returned. This
-- should correspond to the name of the object that was registered within
-- the definition of schema. The maximum length is 256 characters.
foObjectType :: Lens' FilterOptions (Maybe Text)
foObjectType
  = lens _foObjectType (\ s a -> s{_foObjectType = a})

-- | Generic filter to restrict the search, such as \`lang:en\`,
-- \`site:xyz\`.
foFilter :: Lens' FilterOptions (Maybe Filter)
foFilter = lens _foFilter (\ s a -> s{_foFilter = a})

instance FromJSON FilterOptions where
        parseJSON
          = withObject "FilterOptions"
              (\ o ->
                 FilterOptions' <$>
                   (o .:? "objectType") <*> (o .:? "filter"))

instance ToJSON FilterOptions where
        toJSON FilterOptions'{..}
          = object
              (catMaybes
                 [("objectType" .=) <$> _foObjectType,
                  ("filter" .=) <$> _foFilter])

-- | Structured results that are returned as part of search request.
--
-- /See:/ 'structuredResult' smart constructor.
newtype StructuredResult =
  StructuredResult'
    { _srPerson :: Maybe Person
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StructuredResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srPerson'
structuredResult
    :: StructuredResult
structuredResult = StructuredResult' {_srPerson = Nothing}


-- | Representation of a person
srPerson :: Lens' StructuredResult (Maybe Person)
srPerson = lens _srPerson (\ s a -> s{_srPerson = a})

instance FromJSON StructuredResult where
        parseJSON
          = withObject "StructuredResult"
              (\ o -> StructuredResult' <$> (o .:? "person"))

instance ToJSON StructuredResult where
        toJSON StructuredResult'{..}
          = object (catMaybes [("person" .=) <$> _srPerson])

--
-- /See:/ 'processingError' smart constructor.
data ProcessingError =
  ProcessingError'
    { _peFieldViolations :: !(Maybe [FieldViolation])
    , _peCode            :: !(Maybe ProcessingErrorCode)
    , _peErrorMessage    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProcessingError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'peFieldViolations'
--
-- * 'peCode'
--
-- * 'peErrorMessage'
processingError
    :: ProcessingError
processingError =
  ProcessingError'
    {_peFieldViolations = Nothing, _peCode = Nothing, _peErrorMessage = Nothing}


-- | In case the item fields are invalid, this field contains the details
-- about the validation errors.
peFieldViolations :: Lens' ProcessingError [FieldViolation]
peFieldViolations
  = lens _peFieldViolations
      (\ s a -> s{_peFieldViolations = a})
      . _Default
      . _Coerce

-- | Error code indicating the nature of the error.
peCode :: Lens' ProcessingError (Maybe ProcessingErrorCode)
peCode = lens _peCode (\ s a -> s{_peCode = a})

-- | Description of the error.
peErrorMessage :: Lens' ProcessingError (Maybe Text)
peErrorMessage
  = lens _peErrorMessage
      (\ s a -> s{_peErrorMessage = a})

instance FromJSON ProcessingError where
        parseJSON
          = withObject "ProcessingError"
              (\ o ->
                 ProcessingError' <$>
                   (o .:? "fieldViolations" .!= mempty) <*>
                     (o .:? "code")
                     <*> (o .:? "errorMessage"))

instance ToJSON ProcessingError where
        toJSON ProcessingError'{..}
          = object
              (catMaybes
                 [("fieldViolations" .=) <$> _peFieldViolations,
                  ("code" .=) <$> _peCode,
                  ("errorMessage" .=) <$> _peErrorMessage])

--
-- /See:/ 'listItemNamesForUnmAppedIdentityResponse' smart constructor.
data ListItemNamesForUnmAppedIdentityResponse =
  ListItemNamesForUnmAppedIdentityResponse'
    { _linfuairNextPageToken :: !(Maybe Text)
    , _linfuairItemNames     :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListItemNamesForUnmAppedIdentityResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'linfuairNextPageToken'
--
-- * 'linfuairItemNames'
listItemNamesForUnmAppedIdentityResponse
    :: ListItemNamesForUnmAppedIdentityResponse
listItemNamesForUnmAppedIdentityResponse =
  ListItemNamesForUnmAppedIdentityResponse'
    {_linfuairNextPageToken = Nothing, _linfuairItemNames = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
linfuairNextPageToken :: Lens' ListItemNamesForUnmAppedIdentityResponse (Maybe Text)
linfuairNextPageToken
  = lens _linfuairNextPageToken
      (\ s a -> s{_linfuairNextPageToken = a})

linfuairItemNames :: Lens' ListItemNamesForUnmAppedIdentityResponse [Text]
linfuairItemNames
  = lens _linfuairItemNames
      (\ s a -> s{_linfuairItemNames = a})
      . _Default
      . _Coerce

instance FromJSON
           ListItemNamesForUnmAppedIdentityResponse
         where
        parseJSON
          = withObject
              "ListItemNamesForUnmAppedIdentityResponse"
              (\ o ->
                 ListItemNamesForUnmAppedIdentityResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "itemNames" .!= mempty))

instance ToJSON
           ListItemNamesForUnmAppedIdentityResponse
         where
        toJSON ListItemNamesForUnmAppedIdentityResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _linfuairNextPageToken,
                  ("itemNames" .=) <$> _linfuairItemNames])

-- | Access control list information for the item. For more information see
-- https:\/\/developers.google.com\/cloud-search\/docs\/guides\/index-your-data#acls
--
-- /See:/ 'itemACL' smart constructor.
data ItemACL =
  ItemACL'
    { _iaOwners             :: !(Maybe [Principal])
    , _iaReaders            :: !(Maybe [Principal])
    , _iaACLInheritanceType :: !(Maybe ItemACLACLInheritanceType)
    , _iaInheritACLFrom     :: !(Maybe Text)
    , _iaDeniedReaders      :: !(Maybe [Principal])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ItemACL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iaOwners'
--
-- * 'iaReaders'
--
-- * 'iaACLInheritanceType'
--
-- * 'iaInheritACLFrom'
--
-- * 'iaDeniedReaders'
itemACL
    :: ItemACL
itemACL =
  ItemACL'
    { _iaOwners = Nothing
    , _iaReaders = Nothing
    , _iaACLInheritanceType = Nothing
    , _iaInheritACLFrom = Nothing
    , _iaDeniedReaders = Nothing
    }


-- | Optional. List of owners for the item. This field has no bearing on
-- document access permissions. It does, however, offer a slight ranking
-- boosts items where the querying user is an owner. The maximum number of
-- elements is 5.
iaOwners :: Lens' ItemACL [Principal]
iaOwners
  = lens _iaOwners (\ s a -> s{_iaOwners = a}) .
      _Default
      . _Coerce

-- | List of principals who are allowed to see the item in search results.
-- Optional if inheriting permissions from another item or if the item is
-- not intended to be visible, such as virtual containers. The maximum
-- number of elements is 1000.
iaReaders :: Lens' ItemACL [Principal]
iaReaders
  = lens _iaReaders (\ s a -> s{_iaReaders = a}) .
      _Default
      . _Coerce

-- | Sets the type of access rules to apply when an item inherits its ACL
-- from a parent. This should always be set in tandem with the
-- inheritAclFrom field. Also, when the inheritAclFrom field is set, this
-- field should be set to a valid AclInheritanceType.
iaACLInheritanceType :: Lens' ItemACL (Maybe ItemACLACLInheritanceType)
iaACLInheritanceType
  = lens _iaACLInheritanceType
      (\ s a -> s{_iaACLInheritanceType = a})

-- | Name of the item to inherit the Access Permission List (ACL) from. Note:
-- ACL inheritance *only* provides access permissions to child items and
-- does not define structural relationships, nor does it provide convenient
-- ways to delete large groups of items. Deleting an ACL parent from the
-- index only alters the access permissions of child items that reference
-- the parent in the inheritAclFrom field. The item is still in the index,
-- but may not visible in search results. By contrast, deletion of a
-- container item also deletes all items that reference the container via
-- the containerName field. The maximum length for this field is 1536
-- characters.
iaInheritACLFrom :: Lens' ItemACL (Maybe Text)
iaInheritACLFrom
  = lens _iaInheritACLFrom
      (\ s a -> s{_iaInheritACLFrom = a})

-- | List of principals who are explicitly denied access to the item in
-- search results. While principals are denied access by default, use
-- denied readers to handle exceptions and override the list allowed
-- readers. The maximum number of elements is 100.
iaDeniedReaders :: Lens' ItemACL [Principal]
iaDeniedReaders
  = lens _iaDeniedReaders
      (\ s a -> s{_iaDeniedReaders = a})
      . _Default
      . _Coerce

instance FromJSON ItemACL where
        parseJSON
          = withObject "ItemACL"
              (\ o ->
                 ItemACL' <$>
                   (o .:? "owners" .!= mempty) <*>
                     (o .:? "readers" .!= mempty)
                     <*> (o .:? "aclInheritanceType")
                     <*> (o .:? "inheritAclFrom")
                     <*> (o .:? "deniedReaders" .!= mempty))

instance ToJSON ItemACL where
        toJSON ItemACL'{..}
          = object
              (catMaybes
                 [("owners" .=) <$> _iaOwners,
                  ("readers" .=) <$> _iaReaders,
                  ("aclInheritanceType" .=) <$> _iaACLInheritanceType,
                  ("inheritAclFrom" .=) <$> _iaInheritACLFrom,
                  ("deniedReaders" .=) <$> _iaDeniedReaders])

-- | Definition of a single value with generic type.
--
-- /See:/ 'value' smart constructor.
data Value =
  Value'
    { _vIntegerValue   :: !(Maybe (Textual Int64))
    , _vTimestampValue :: !(Maybe DateTime')
    , _vDoubleValue    :: !(Maybe (Textual Double))
    , _vStringValue    :: !(Maybe Text)
    , _vDateValue      :: !(Maybe Date)
    , _vBooleanValue   :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Value' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vIntegerValue'
--
-- * 'vTimestampValue'
--
-- * 'vDoubleValue'
--
-- * 'vStringValue'
--
-- * 'vDateValue'
--
-- * 'vBooleanValue'
value
    :: Value
value =
  Value'
    { _vIntegerValue = Nothing
    , _vTimestampValue = Nothing
    , _vDoubleValue = Nothing
    , _vStringValue = Nothing
    , _vDateValue = Nothing
    , _vBooleanValue = Nothing
    }


vIntegerValue :: Lens' Value (Maybe Int64)
vIntegerValue
  = lens _vIntegerValue
      (\ s a -> s{_vIntegerValue = a})
      . mapping _Coerce

vTimestampValue :: Lens' Value (Maybe UTCTime)
vTimestampValue
  = lens _vTimestampValue
      (\ s a -> s{_vTimestampValue = a})
      . mapping _DateTime

vDoubleValue :: Lens' Value (Maybe Double)
vDoubleValue
  = lens _vDoubleValue (\ s a -> s{_vDoubleValue = a})
      . mapping _Coerce

vStringValue :: Lens' Value (Maybe Text)
vStringValue
  = lens _vStringValue (\ s a -> s{_vStringValue = a})

vDateValue :: Lens' Value (Maybe Date)
vDateValue
  = lens _vDateValue (\ s a -> s{_vDateValue = a})

vBooleanValue :: Lens' Value (Maybe Bool)
vBooleanValue
  = lens _vBooleanValue
      (\ s a -> s{_vBooleanValue = a})

instance FromJSON Value where
        parseJSON
          = withObject "Value"
              (\ o ->
                 Value' <$>
                   (o .:? "integerValue") <*> (o .:? "timestampValue")
                     <*> (o .:? "doubleValue")
                     <*> (o .:? "stringValue")
                     <*> (o .:? "dateValue")
                     <*> (o .:? "booleanValue"))

instance ToJSON Value where
        toJSON Value'{..}
          = object
              (catMaybes
                 [("integerValue" .=) <$> _vIntegerValue,
                  ("timestampValue" .=) <$> _vTimestampValue,
                  ("doubleValue" .=) <$> _vDoubleValue,
                  ("stringValue" .=) <$> _vStringValue,
                  ("dateValue" .=) <$> _vDateValue,
                  ("booleanValue" .=) <$> _vBooleanValue])

--
-- /See:/ 'fieldViolation' smart constructor.
data FieldViolation =
  FieldViolation'
    { _fvField       :: !(Maybe Text)
    , _fvDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FieldViolation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fvField'
--
-- * 'fvDescription'
fieldViolation
    :: FieldViolation
fieldViolation = FieldViolation' {_fvField = Nothing, _fvDescription = Nothing}


-- | Path of field with violation.
fvField :: Lens' FieldViolation (Maybe Text)
fvField = lens _fvField (\ s a -> s{_fvField = a})

-- | Description of the error.
fvDescription :: Lens' FieldViolation (Maybe Text)
fvDescription
  = lens _fvDescription
      (\ s a -> s{_fvDescription = a})

instance FromJSON FieldViolation where
        parseJSON
          = withObject "FieldViolation"
              (\ o ->
                 FieldViolation' <$>
                   (o .:? "field") <*> (o .:? "description"))

instance ToJSON FieldViolation where
        toJSON FieldViolation'{..}
          = object
              (catMaybes
                 [("field" .=) <$> _fvField,
                  ("description" .=) <$> _fvDescription])

-- | A metaline is a list of properties that are displayed along with the
-- search result to provide context.
--
-- /See:/ 'metaline' smart constructor.
newtype Metaline =
  Metaline'
    { _mProperties :: Maybe [DisplayedProperty]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Metaline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mProperties'
metaline
    :: Metaline
metaline = Metaline' {_mProperties = Nothing}


-- | The list of displayed properties for the metaline. The maxiumum number
-- of properties is 5.
mProperties :: Lens' Metaline [DisplayedProperty]
mProperties
  = lens _mProperties (\ s a -> s{_mProperties = a}) .
      _Default
      . _Coerce

instance FromJSON Metaline where
        parseJSON
          = withObject "Metaline"
              (\ o ->
                 Metaline' <$> (o .:? "properties" .!= mempty))

instance ToJSON Metaline where
        toJSON Metaline'{..}
          = object
              (catMaybes [("properties" .=) <$> _mProperties])

-- | A bucket in a facet is the basic unit of operation. A bucket can
-- comprise either a single value OR a contiguous range of values,
-- depending on the type of the field bucketed. FacetBucket is currently
-- used only for returning the response object.
--
-- /See:/ 'facetBucket' smart constructor.
data FacetBucket =
  FacetBucket'
    { _fbValue      :: !(Maybe Value)
    , _fbCount      :: !(Maybe (Textual Int32))
    , _fbPercentage :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FacetBucket' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fbValue'
--
-- * 'fbCount'
--
-- * 'fbPercentage'
facetBucket
    :: FacetBucket
facetBucket =
  FacetBucket' {_fbValue = Nothing, _fbCount = Nothing, _fbPercentage = Nothing}


fbValue :: Lens' FacetBucket (Maybe Value)
fbValue = lens _fbValue (\ s a -> s{_fbValue = a})

-- | Number of results that match the bucket value. Counts are only returned
-- for searches when count accuracy is ensured. Can be empty.
fbCount :: Lens' FacetBucket (Maybe Int32)
fbCount
  = lens _fbCount (\ s a -> s{_fbCount = a}) .
      mapping _Coerce

-- | Percent of results that match the bucket value. This value is between
-- (0-100]. Percentages are returned for all searches, but are an estimate.
-- Because percentages are always returned, you should render percentages
-- instead of counts.
fbPercentage :: Lens' FacetBucket (Maybe Int32)
fbPercentage
  = lens _fbPercentage (\ s a -> s{_fbPercentage = a})
      . mapping _Coerce

instance FromJSON FacetBucket where
        parseJSON
          = withObject "FacetBucket"
              (\ o ->
                 FacetBucket' <$>
                   (o .:? "value") <*> (o .:? "count") <*>
                     (o .:? "percentage"))

instance ToJSON FacetBucket where
        toJSON FacetBucket'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _fbValue,
                  ("count" .=) <$> _fbCount,
                  ("percentage" .=) <$> _fbPercentage])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem =
  StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
  StatusDetailsItem' {_sdiAddtional = _Coerce # pSdiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
sdiAddtional :: Lens' StatusDetailsItem (HashMap Text JSONValue)
sdiAddtional
  = lens _sdiAddtional (\ s a -> s{_sdiAddtional = a})
      . _Coerce

instance FromJSON StatusDetailsItem where
        parseJSON
          = withObject "StatusDetailsItem"
              (\ o -> StatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON StatusDetailsItem where
        toJSON = toJSON . _sdiAddtional

-- | Used to provide a search operator for timestamp properties. This is
-- optional. Search operators let users restrict the query to specific
-- fields relevant to the type of item being searched.
--
-- /See:/ 'timestampOperatorOptions' smart constructor.
data TimestampOperatorOptions =
  TimestampOperatorOptions'
    { _tOperatorName            :: !(Maybe Text)
    , _tLessThanOperatorName    :: !(Maybe Text)
    , _tGreaterThanOperatorName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimestampOperatorOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tOperatorName'
--
-- * 'tLessThanOperatorName'
--
-- * 'tGreaterThanOperatorName'
timestampOperatorOptions
    :: TimestampOperatorOptions
timestampOperatorOptions =
  TimestampOperatorOptions'
    { _tOperatorName = Nothing
    , _tLessThanOperatorName = Nothing
    , _tGreaterThanOperatorName = Nothing
    }


-- | Indicates the operator name required in the query in order to isolate
-- the timestamp property. For example, if operatorName is *closedon* and
-- the property\'s name is *closeDate*, then queries like
-- *closedon:\<value>* will show results only where the value of the
-- property named *closeDate* matches *\<value>*. By contrast, a search
-- that uses the same *\<value>* without an operator will return all items
-- where *\<value>* matches the value of any String properties or text
-- within the content field for the item. The operator name can only
-- contain lowercase letters (a-z). The maximum length is 32 characters.
tOperatorName :: Lens' TimestampOperatorOptions (Maybe Text)
tOperatorName
  = lens _tOperatorName
      (\ s a -> s{_tOperatorName = a})

-- | Indicates the operator name required in the query in order to isolate
-- the timestamp property using the less-than operator. For example, if
-- lessThanOperatorName is *closedbefore* and the property\'s name is
-- *closeDate*, then queries like *closedbefore:\<value>* will show results
-- only where the value of the property named *closeDate* is earlier than
-- *\<value>*. The operator name can only contain lowercase letters (a-z).
-- The maximum length is 32 characters.
tLessThanOperatorName :: Lens' TimestampOperatorOptions (Maybe Text)
tLessThanOperatorName
  = lens _tLessThanOperatorName
      (\ s a -> s{_tLessThanOperatorName = a})

-- | Indicates the operator name required in the query in order to isolate
-- the timestamp property using the greater-than operator. For example, if
-- greaterThanOperatorName is *closedafter* and the property\'s name is
-- *closeDate*, then queries like *closedafter:\<value>* will show results
-- only where the value of the property named *closeDate* is later than
-- *\<value>*. The operator name can only contain lowercase letters (a-z).
-- The maximum length is 32 characters.
tGreaterThanOperatorName :: Lens' TimestampOperatorOptions (Maybe Text)
tGreaterThanOperatorName
  = lens _tGreaterThanOperatorName
      (\ s a -> s{_tGreaterThanOperatorName = a})

instance FromJSON TimestampOperatorOptions where
        parseJSON
          = withObject "TimestampOperatorOptions"
              (\ o ->
                 TimestampOperatorOptions' <$>
                   (o .:? "operatorName") <*>
                     (o .:? "lessThanOperatorName")
                     <*> (o .:? "greaterThanOperatorName"))

instance ToJSON TimestampOperatorOptions where
        toJSON TimestampOperatorOptions'{..}
          = object
              (catMaybes
                 [("operatorName" .=) <$> _tOperatorName,
                  ("lessThanOperatorName" .=) <$>
                    _tLessThanOperatorName,
                  ("greaterThanOperatorName" .=) <$>
                    _tGreaterThanOperatorName])

-- | Used to provide a search operator for integer properties. This is
-- optional. Search operators let users restrict the query to specific
-- fields relevant to the type of item being searched.
--
-- /See:/ 'integerOperatorOptions' smart constructor.
data IntegerOperatorOptions =
  IntegerOperatorOptions'
    { _iooOperatorName            :: !(Maybe Text)
    , _iooLessThanOperatorName    :: !(Maybe Text)
    , _iooGreaterThanOperatorName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IntegerOperatorOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iooOperatorName'
--
-- * 'iooLessThanOperatorName'
--
-- * 'iooGreaterThanOperatorName'
integerOperatorOptions
    :: IntegerOperatorOptions
integerOperatorOptions =
  IntegerOperatorOptions'
    { _iooOperatorName = Nothing
    , _iooLessThanOperatorName = Nothing
    , _iooGreaterThanOperatorName = Nothing
    }


-- | Indicates the operator name required in the query in order to isolate
-- the integer property. For example, if operatorName is *priority* and the
-- property\'s name is *priorityVal*, then queries like *priority:\<value>*
-- will show results only where the value of the property named
-- *priorityVal* matches *\<value>*. By contrast, a search that uses the
-- same *\<value>* without an operator will return all items where
-- *\<value>* matches the value of any String properties or text within the
-- content field for the item. The operator name can only contain lowercase
-- letters (a-z). The maximum length is 32 characters.
iooOperatorName :: Lens' IntegerOperatorOptions (Maybe Text)
iooOperatorName
  = lens _iooOperatorName
      (\ s a -> s{_iooOperatorName = a})

-- | Indicates the operator name required in the query in order to isolate
-- the integer property using the less-than operator. For example, if
-- lessThanOperatorName is *prioritybelow* and the property\'s name is
-- *priorityVal*, then queries like *prioritybelow:\<value>* will show
-- results only where the value of the property named *priorityVal* is less
-- than *\<value>*. The operator name can only contain lowercase letters
-- (a-z). The maximum length is 32 characters.
iooLessThanOperatorName :: Lens' IntegerOperatorOptions (Maybe Text)
iooLessThanOperatorName
  = lens _iooLessThanOperatorName
      (\ s a -> s{_iooLessThanOperatorName = a})

-- | Indicates the operator name required in the query in order to isolate
-- the integer property using the greater-than operator. For example, if
-- greaterThanOperatorName is *priorityabove* and the property\'s name is
-- *priorityVal*, then queries like *priorityabove:\<value>* will show
-- results only where the value of the property named *priorityVal* is
-- greater than *\<value>*. The operator name can only contain lowercase
-- letters (a-z). The maximum length is 32 characters.
iooGreaterThanOperatorName :: Lens' IntegerOperatorOptions (Maybe Text)
iooGreaterThanOperatorName
  = lens _iooGreaterThanOperatorName
      (\ s a -> s{_iooGreaterThanOperatorName = a})

instance FromJSON IntegerOperatorOptions where
        parseJSON
          = withObject "IntegerOperatorOptions"
              (\ o ->
                 IntegerOperatorOptions' <$>
                   (o .:? "operatorName") <*>
                     (o .:? "lessThanOperatorName")
                     <*> (o .:? "greaterThanOperatorName"))

instance ToJSON IntegerOperatorOptions where
        toJSON IntegerOperatorOptions'{..}
          = object
              (catMaybes
                 [("operatorName" .=) <$> _iooOperatorName,
                  ("lessThanOperatorName" .=) <$>
                    _iooLessThanOperatorName,
                  ("greaterThanOperatorName" .=) <$>
                    _iooGreaterThanOperatorName])

-- | This field does not contain anything as of now and is just used as an
-- indicator that the suggest result was a phrase completion.
--
-- /See:/ 'querySuggestion' smart constructor.
data QuerySuggestion =
  QuerySuggestion'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QuerySuggestion' with the minimum fields required to make a request.
--
querySuggestion
    :: QuerySuggestion
querySuggestion = QuerySuggestion'


instance FromJSON QuerySuggestion where
        parseJSON
          = withObject "QuerySuggestion"
              (\ o -> pure QuerySuggestion')

instance ToJSON QuerySuggestion where
        toJSON = const emptyObject

--
-- /See:/ 'listSearchApplicationsResponse' smart constructor.
data ListSearchApplicationsResponse =
  ListSearchApplicationsResponse'
    { _lsarNextPageToken      :: !(Maybe Text)
    , _lsarSearchApplications :: !(Maybe [SearchApplication])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListSearchApplicationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsarNextPageToken'
--
-- * 'lsarSearchApplications'
listSearchApplicationsResponse
    :: ListSearchApplicationsResponse
listSearchApplicationsResponse =
  ListSearchApplicationsResponse'
    {_lsarNextPageToken = Nothing, _lsarSearchApplications = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
lsarNextPageToken :: Lens' ListSearchApplicationsResponse (Maybe Text)
lsarNextPageToken
  = lens _lsarNextPageToken
      (\ s a -> s{_lsarNextPageToken = a})

lsarSearchApplications :: Lens' ListSearchApplicationsResponse [SearchApplication]
lsarSearchApplications
  = lens _lsarSearchApplications
      (\ s a -> s{_lsarSearchApplications = a})
      . _Default
      . _Coerce

instance FromJSON ListSearchApplicationsResponse
         where
        parseJSON
          = withObject "ListSearchApplicationsResponse"
              (\ o ->
                 ListSearchApplicationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "searchApplications" .!= mempty))

instance ToJSON ListSearchApplicationsResponse where
        toJSON ListSearchApplicationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsarNextPageToken,
                  ("searchApplications" .=) <$>
                    _lsarSearchApplications])

-- | Debugging information about the result.
--
-- /See:/ 'resultDebugInfo' smart constructor.
newtype ResultDebugInfo =
  ResultDebugInfo'
    { _rdiFormattedDebugInfo :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResultDebugInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdiFormattedDebugInfo'
resultDebugInfo
    :: ResultDebugInfo
resultDebugInfo = ResultDebugInfo' {_rdiFormattedDebugInfo = Nothing}


-- | General debug info formatted for display.
rdiFormattedDebugInfo :: Lens' ResultDebugInfo (Maybe Text)
rdiFormattedDebugInfo
  = lens _rdiFormattedDebugInfo
      (\ s a -> s{_rdiFormattedDebugInfo = a})

instance FromJSON ResultDebugInfo where
        parseJSON
          = withObject "ResultDebugInfo"
              (\ o ->
                 ResultDebugInfo' <$> (o .:? "formattedDebugInfo"))

instance ToJSON ResultDebugInfo where
        toJSON ResultDebugInfo'{..}
          = object
              (catMaybes
                 [("formattedDebugInfo" .=) <$>
                    _rdiFormattedDebugInfo])

--
-- /See:/ 'itemCountByStatus' smart constructor.
data ItemCountByStatus =
  ItemCountByStatus'
    { _icbsCount      :: !(Maybe (Textual Int64))
    , _icbsStatusCode :: !(Maybe ItemCountByStatusStatusCode)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ItemCountByStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icbsCount'
--
-- * 'icbsStatusCode'
itemCountByStatus
    :: ItemCountByStatus
itemCountByStatus =
  ItemCountByStatus' {_icbsCount = Nothing, _icbsStatusCode = Nothing}


-- | Number of items matching the status code.
icbsCount :: Lens' ItemCountByStatus (Maybe Int64)
icbsCount
  = lens _icbsCount (\ s a -> s{_icbsCount = a}) .
      mapping _Coerce

-- | Status of the items.
icbsStatusCode :: Lens' ItemCountByStatus (Maybe ItemCountByStatusStatusCode)
icbsStatusCode
  = lens _icbsStatusCode
      (\ s a -> s{_icbsStatusCode = a})

instance FromJSON ItemCountByStatus where
        parseJSON
          = withObject "ItemCountByStatus"
              (\ o ->
                 ItemCountByStatus' <$>
                   (o .:? "count") <*> (o .:? "statusCode"))

instance ToJSON ItemCountByStatus where
        toJSON ItemCountByStatus'{..}
          = object
              (catMaybes
                 [("count" .=) <$> _icbsCount,
                  ("statusCode" .=) <$> _icbsStatusCode])

-- | Options for timestamp properties.
--
-- /See:/ 'timestampPropertyOptions' smart constructor.
newtype TimestampPropertyOptions =
  TimestampPropertyOptions'
    { _tpoOperatorOptions :: Maybe TimestampOperatorOptions
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimestampPropertyOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpoOperatorOptions'
timestampPropertyOptions
    :: TimestampPropertyOptions
timestampPropertyOptions =
  TimestampPropertyOptions' {_tpoOperatorOptions = Nothing}


-- | If set, describes how the timestamp should be used as a search operator.
tpoOperatorOptions :: Lens' TimestampPropertyOptions (Maybe TimestampOperatorOptions)
tpoOperatorOptions
  = lens _tpoOperatorOptions
      (\ s a -> s{_tpoOperatorOptions = a})

instance FromJSON TimestampPropertyOptions where
        parseJSON
          = withObject "TimestampPropertyOptions"
              (\ o ->
                 TimestampPropertyOptions' <$>
                   (o .:? "operatorOptions"))

instance ToJSON TimestampPropertyOptions where
        toJSON TimestampPropertyOptions'{..}
          = object
              (catMaybes
                 [("operatorOptions" .=) <$> _tpoOperatorOptions])

-- | Result count information
--
-- /See:/ 'resultCounts' smart constructor.
newtype ResultCounts =
  ResultCounts'
    { _rcSourceResultCounts :: Maybe [SourceResultCount]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResultCounts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcSourceResultCounts'
resultCounts
    :: ResultCounts
resultCounts = ResultCounts' {_rcSourceResultCounts = Nothing}


-- | Result count information for each source with results.
rcSourceResultCounts :: Lens' ResultCounts [SourceResultCount]
rcSourceResultCounts
  = lens _rcSourceResultCounts
      (\ s a -> s{_rcSourceResultCounts = a})
      . _Default
      . _Coerce

instance FromJSON ResultCounts where
        parseJSON
          = withObject "ResultCounts"
              (\ o ->
                 ResultCounts' <$>
                   (o .:? "sourceResultCounts" .!= mempty))

instance ToJSON ResultCounts where
        toJSON ResultCounts'{..}
          = object
              (catMaybes
                 [("sourceResultCounts" .=) <$>
                    _rcSourceResultCounts])

-- | Indicates which freshness property to use when adjusting search ranking
-- for an item. Fresher, more recent dates indicate higher quality. Use the
-- freshness option property that best works with your data. For fileshare
-- documents, last modified time is most relevant. For calendar event data,
-- the time when the event occurs is a more relevant freshness indicator.
-- In this way, calendar events that occur closer to the time of the search
-- query are considered higher quality and ranked accordingly.
--
-- /See:/ 'freshnessOptions' smart constructor.
data FreshnessOptions =
  FreshnessOptions'
    { _foFreshnessDuration :: !(Maybe GDuration)
    , _foFreshnessProperty :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FreshnessOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'foFreshnessDuration'
--
-- * 'foFreshnessProperty'
freshnessOptions
    :: FreshnessOptions
freshnessOptions =
  FreshnessOptions'
    {_foFreshnessDuration = Nothing, _foFreshnessProperty = Nothing}


-- | The duration after which an object should be considered stale. The
-- default value is 180 days (in seconds).
foFreshnessDuration :: Lens' FreshnessOptions (Maybe Scientific)
foFreshnessDuration
  = lens _foFreshnessDuration
      (\ s a -> s{_foFreshnessDuration = a})
      . mapping _GDuration

-- | This property indicates the freshness level of the object in the index.
-- If set, this property must be a top-level property within the property
-- definitions and it must be a timestamp type or date type. Otherwise, the
-- Indexing API uses updateTime as the freshness indicator. The maximum
-- length is 256 characters. When a property is used to calculate
-- fresheness, the value defaults to 2 years from the current time.
foFreshnessProperty :: Lens' FreshnessOptions (Maybe Text)
foFreshnessProperty
  = lens _foFreshnessProperty
      (\ s a -> s{_foFreshnessProperty = a})

instance FromJSON FreshnessOptions where
        parseJSON
          = withObject "FreshnessOptions"
              (\ o ->
                 FreshnessOptions' <$>
                   (o .:? "freshnessDuration") <*>
                     (o .:? "freshnessProperty"))

instance ToJSON FreshnessOptions where
        toJSON FreshnessOptions'{..}
          = object
              (catMaybes
                 [("freshnessDuration" .=) <$> _foFreshnessDuration,
                  ("freshnessProperty" .=) <$> _foFreshnessProperty])

-- | Shared request debug options for all cloudsearch RPC methods.
--
-- /See:/ 'debugOptions' smart constructor.
newtype DebugOptions =
  DebugOptions'
    { _doEnableDebugging :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DebugOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doEnableDebugging'
debugOptions
    :: DebugOptions
debugOptions = DebugOptions' {_doEnableDebugging = Nothing}


-- | If you are asked by Google to help with debugging, set this field.
-- Otherwise, ignore this field.
doEnableDebugging :: Lens' DebugOptions (Maybe Bool)
doEnableDebugging
  = lens _doEnableDebugging
      (\ s a -> s{_doEnableDebugging = a})

instance FromJSON DebugOptions where
        parseJSON
          = withObject "DebugOptions"
              (\ o -> DebugOptions' <$> (o .:? "enableDebugging"))

instance ToJSON DebugOptions where
        toJSON DebugOptions'{..}
          = object
              (catMaybes
                 [("enableDebugging" .=) <$> _doEnableDebugging])

-- | Options for integer properties.
--
-- /See:/ 'integerPropertyOptions' smart constructor.
data IntegerPropertyOptions =
  IntegerPropertyOptions'
    { _ipoMaximumValue    :: !(Maybe (Textual Int64))
    , _ipoOrderedRanking  :: !(Maybe IntegerPropertyOptionsOrderedRanking)
    , _ipoMinimumValue    :: !(Maybe (Textual Int64))
    , _ipoOperatorOptions :: !(Maybe IntegerOperatorOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IntegerPropertyOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipoMaximumValue'
--
-- * 'ipoOrderedRanking'
--
-- * 'ipoMinimumValue'
--
-- * 'ipoOperatorOptions'
integerPropertyOptions
    :: IntegerPropertyOptions
integerPropertyOptions =
  IntegerPropertyOptions'
    { _ipoMaximumValue = Nothing
    , _ipoOrderedRanking = Nothing
    , _ipoMinimumValue = Nothing
    , _ipoOperatorOptions = Nothing
    }


-- | The maximum value of the property. The minimum and maximum values for
-- the property are used to rank results according to the ordered ranking.
-- Indexing requests with values greater than the maximum are accepted and
-- ranked with the same weight as items indexed with the maximum value.
ipoMaximumValue :: Lens' IntegerPropertyOptions (Maybe Int64)
ipoMaximumValue
  = lens _ipoMaximumValue
      (\ s a -> s{_ipoMaximumValue = a})
      . mapping _Coerce

-- | Used to specify the ordered ranking for the integer. Can only be used if
-- isRepeatable is false.
ipoOrderedRanking :: Lens' IntegerPropertyOptions (Maybe IntegerPropertyOptionsOrderedRanking)
ipoOrderedRanking
  = lens _ipoOrderedRanking
      (\ s a -> s{_ipoOrderedRanking = a})

-- | The minimum value of the property. The minimum and maximum values for
-- the property are used to rank results according to the ordered ranking.
-- Indexing requests with values less than the minimum are accepted and
-- ranked with the same weight as items indexed with the minimum value.
ipoMinimumValue :: Lens' IntegerPropertyOptions (Maybe Int64)
ipoMinimumValue
  = lens _ipoMinimumValue
      (\ s a -> s{_ipoMinimumValue = a})
      . mapping _Coerce

-- | If set, describes how the integer should be used as a search operator.
ipoOperatorOptions :: Lens' IntegerPropertyOptions (Maybe IntegerOperatorOptions)
ipoOperatorOptions
  = lens _ipoOperatorOptions
      (\ s a -> s{_ipoOperatorOptions = a})

instance FromJSON IntegerPropertyOptions where
        parseJSON
          = withObject "IntegerPropertyOptions"
              (\ o ->
                 IntegerPropertyOptions' <$>
                   (o .:? "maximumValue") <*> (o .:? "orderedRanking")
                     <*> (o .:? "minimumValue")
                     <*> (o .:? "operatorOptions"))

instance ToJSON IntegerPropertyOptions where
        toJSON IntegerPropertyOptions'{..}
          = object
              (catMaybes
                 [("maximumValue" .=) <$> _ipoMaximumValue,
                  ("orderedRanking" .=) <$> _ipoOrderedRanking,
                  ("minimumValue" .=) <$> _ipoMinimumValue,
                  ("operatorOptions" .=) <$> _ipoOperatorOptions])

-- | Restriction on Datasource.
--
-- /See:/ 'dataSourceRestriction' smart constructor.
data DataSourceRestriction =
  DataSourceRestriction'
    { _dsrFilterOptions :: !(Maybe [FilterOptions])
    , _dsrSource        :: !(Maybe Source)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataSourceRestriction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrFilterOptions'
--
-- * 'dsrSource'
dataSourceRestriction
    :: DataSourceRestriction
dataSourceRestriction =
  DataSourceRestriction' {_dsrFilterOptions = Nothing, _dsrSource = Nothing}


-- | Filter options restricting the results. If multiple filters are present,
-- they are grouped by object type before joining. Filters with the same
-- object type are joined conjunctively, then the resulting expressions are
-- joined disjunctively. The maximum number of elements is 20. NOTE:
-- Suggest API supports only few filters at the moment: \"objecttype\",
-- \"type\" and \"mimetype\". For now, schema specific filters cannot be
-- used to filter suggestions.
dsrFilterOptions :: Lens' DataSourceRestriction [FilterOptions]
dsrFilterOptions
  = lens _dsrFilterOptions
      (\ s a -> s{_dsrFilterOptions = a})
      . _Default
      . _Coerce

-- | The source of restriction.
dsrSource :: Lens' DataSourceRestriction (Maybe Source)
dsrSource
  = lens _dsrSource (\ s a -> s{_dsrSource = a})

instance FromJSON DataSourceRestriction where
        parseJSON
          = withObject "DataSourceRestriction"
              (\ o ->
                 DataSourceRestriction' <$>
                   (o .:? "filterOptions" .!= mempty) <*>
                     (o .:? "source"))

instance ToJSON DataSourceRestriction where
        toJSON DataSourceRestriction'{..}
          = object
              (catMaybes
                 [("filterOptions" .=) <$> _dsrFilterOptions,
                  ("source" .=) <$> _dsrSource])

-- | The schema definition for a data source.
--
-- /See:/ 'schema' smart constructor.
data Schema =
  Schema'
    { _sObjectDefinitions :: !(Maybe [ObjectDefinition])
    , _sOperationIds      :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Schema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sObjectDefinitions'
--
-- * 'sOperationIds'
schema
    :: Schema
schema = Schema' {_sObjectDefinitions = Nothing, _sOperationIds = Nothing}


-- | The list of top-level objects for the data source. The maximum number of
-- elements is 10.
sObjectDefinitions :: Lens' Schema [ObjectDefinition]
sObjectDefinitions
  = lens _sObjectDefinitions
      (\ s a -> s{_sObjectDefinitions = a})
      . _Default
      . _Coerce

-- | IDs of the Long Running Operations (LROs) currently running for this
-- schema. After modifying the schema, wait for operations to complete
-- before indexing additional content.
sOperationIds :: Lens' Schema [Text]
sOperationIds
  = lens _sOperationIds
      (\ s a -> s{_sOperationIds = a})
      . _Default
      . _Coerce

instance FromJSON Schema where
        parseJSON
          = withObject "Schema"
              (\ o ->
                 Schema' <$>
                   (o .:? "objectDefinitions" .!= mempty) <*>
                     (o .:? "operationIds" .!= mempty))

instance ToJSON Schema where
        toJSON Schema'{..}
          = object
              (catMaybes
                 [("objectDefinitions" .=) <$> _sObjectDefinitions,
                  ("operationIds" .=) <$> _sOperationIds])

-- | The time span search restrict (e.g. \"after:2017-09-11
-- before:2017-09-12\").
--
-- /See:/ 'driveTimeSpanRestrict' smart constructor.
newtype DriveTimeSpanRestrict =
  DriveTimeSpanRestrict'
    { _dtsrType :: Maybe DriveTimeSpanRestrictType
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DriveTimeSpanRestrict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtsrType'
driveTimeSpanRestrict
    :: DriveTimeSpanRestrict
driveTimeSpanRestrict = DriveTimeSpanRestrict' {_dtsrType = Nothing}


dtsrType :: Lens' DriveTimeSpanRestrict (Maybe DriveTimeSpanRestrictType)
dtsrType = lens _dtsrType (\ s a -> s{_dtsrType = a})

instance FromJSON DriveTimeSpanRestrict where
        parseJSON
          = withObject "DriveTimeSpanRestrict"
              (\ o -> DriveTimeSpanRestrict' <$> (o .:? "type"))

instance ToJSON DriveTimeSpanRestrict where
        toJSON DriveTimeSpanRestrict'{..}
          = object (catMaybes [("type" .=) <$> _dtsrType])

-- | Display Fields for Search Results
--
-- /See:/ 'resultDisplayField' smart constructor.
data ResultDisplayField =
  ResultDisplayField'
    { _rdfProperty     :: !(Maybe NamedProperty)
    , _rdfOperatorName :: !(Maybe Text)
    , _rdfLabel        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResultDisplayField' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdfProperty'
--
-- * 'rdfOperatorName'
--
-- * 'rdfLabel'
resultDisplayField
    :: ResultDisplayField
resultDisplayField =
  ResultDisplayField'
    {_rdfProperty = Nothing, _rdfOperatorName = Nothing, _rdfLabel = Nothing}


-- | The name value pair for the property.
rdfProperty :: Lens' ResultDisplayField (Maybe NamedProperty)
rdfProperty
  = lens _rdfProperty (\ s a -> s{_rdfProperty = a})

-- | The operator name of the property.
rdfOperatorName :: Lens' ResultDisplayField (Maybe Text)
rdfOperatorName
  = lens _rdfOperatorName
      (\ s a -> s{_rdfOperatorName = a})

-- | The display label for the property.
rdfLabel :: Lens' ResultDisplayField (Maybe Text)
rdfLabel = lens _rdfLabel (\ s a -> s{_rdfLabel = a})

instance FromJSON ResultDisplayField where
        parseJSON
          = withObject "ResultDisplayField"
              (\ o ->
                 ResultDisplayField' <$>
                   (o .:? "property") <*> (o .:? "operatorName") <*>
                     (o .:? "label"))

instance ToJSON ResultDisplayField where
        toJSON ResultDisplayField'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _rdfProperty,
                  ("operatorName" .=) <$> _rdfOperatorName,
                  ("label" .=) <$> _rdfLabel])

--
-- /See:/ 'updateSchemaRequest' smart constructor.
data UpdateSchemaRequest =
  UpdateSchemaRequest'
    { _usrValidateOnly :: !(Maybe Bool)
    , _usrSchema       :: !(Maybe Schema)
    , _usrDebugOptions :: !(Maybe DebugOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateSchemaRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usrValidateOnly'
--
-- * 'usrSchema'
--
-- * 'usrDebugOptions'
updateSchemaRequest
    :: UpdateSchemaRequest
updateSchemaRequest =
  UpdateSchemaRequest'
    { _usrValidateOnly = Nothing
    , _usrSchema = Nothing
    , _usrDebugOptions = Nothing
    }


-- | If true, the request will be validated without side effects.
usrValidateOnly :: Lens' UpdateSchemaRequest (Maybe Bool)
usrValidateOnly
  = lens _usrValidateOnly
      (\ s a -> s{_usrValidateOnly = a})

-- | The new schema for the source.
usrSchema :: Lens' UpdateSchemaRequest (Maybe Schema)
usrSchema
  = lens _usrSchema (\ s a -> s{_usrSchema = a})

-- | Common debug options.
usrDebugOptions :: Lens' UpdateSchemaRequest (Maybe DebugOptions)
usrDebugOptions
  = lens _usrDebugOptions
      (\ s a -> s{_usrDebugOptions = a})

instance FromJSON UpdateSchemaRequest where
        parseJSON
          = withObject "UpdateSchemaRequest"
              (\ o ->
                 UpdateSchemaRequest' <$>
                   (o .:? "validateOnly") <*> (o .:? "schema") <*>
                     (o .:? "debugOptions"))

instance ToJSON UpdateSchemaRequest where
        toJSON UpdateSchemaRequest'{..}
          = object
              (catMaybes
                 [("validateOnly" .=) <$> _usrValidateOnly,
                  ("schema" .=) <$> _usrSchema,
                  ("debugOptions" .=) <$> _usrDebugOptions])

-- | Represents a whole calendar date, for example a date of birth. The time
-- of day and time zone are either specified elsewhere or are not
-- significant. The date is relative to the [Proleptic Gregorian
-- Calendar](https:\/\/en.wikipedia.org\/wiki\/Proleptic_Gregorian_calendar).
-- The date must be a valid calendar date between the year 1 and 9999.
--
-- /See:/ 'date' smart constructor.
data Date =
  Date'
    { _dDay   :: !(Maybe (Textual Int32))
    , _dYear  :: !(Maybe (Textual Int32))
    , _dMonth :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Date' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDay'
--
-- * 'dYear'
--
-- * 'dMonth'
date
    :: Date
date = Date' {_dDay = Nothing, _dYear = Nothing, _dMonth = Nothing}


-- | Day of month. Must be from 1 to 31 and valid for the year and month.
dDay :: Lens' Date (Maybe Int32)
dDay
  = lens _dDay (\ s a -> s{_dDay = a}) .
      mapping _Coerce

-- | Year of date. Must be from 1 to 9999.
dYear :: Lens' Date (Maybe Int32)
dYear
  = lens _dYear (\ s a -> s{_dYear = a}) .
      mapping _Coerce

-- | Month of date. Must be from 1 to 12.
dMonth :: Lens' Date (Maybe Int32)
dMonth
  = lens _dMonth (\ s a -> s{_dMonth = a}) .
      mapping _Coerce

instance FromJSON Date where
        parseJSON
          = withObject "Date"
              (\ o ->
                 Date' <$>
                   (o .:? "day") <*> (o .:? "year") <*> (o .:? "month"))

instance ToJSON Date where
        toJSON Date'{..}
          = object
              (catMaybes
                 [("day" .=) <$> _dDay, ("year" .=) <$> _dYear,
                  ("month" .=) <$> _dMonth])

-- | A reference to a top-level property within the object that should be
-- displayed in search results. The values of the chosen properties will be
-- displayed in the search results along with the dislpay label for that
-- property if one is specified. If a display label is not specified, only
-- the values will be shown.
--
-- /See:/ 'displayedProperty' smart constructor.
newtype DisplayedProperty =
  DisplayedProperty'
    { _dpPropertyName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DisplayedProperty' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpPropertyName'
displayedProperty
    :: DisplayedProperty
displayedProperty = DisplayedProperty' {_dpPropertyName = Nothing}


-- | The name of the top-level property as defined in a property definition
-- for the object. If the name is not a defined property in the schema, an
-- error will be given when attempting to update the schema.
dpPropertyName :: Lens' DisplayedProperty (Maybe Text)
dpPropertyName
  = lens _dpPropertyName
      (\ s a -> s{_dpPropertyName = a})

instance FromJSON DisplayedProperty where
        parseJSON
          = withObject "DisplayedProperty"
              (\ o ->
                 DisplayedProperty' <$> (o .:? "propertyName"))

instance ToJSON DisplayedProperty where
        toJSON DisplayedProperty'{..}
          = object
              (catMaybes [("propertyName" .=) <$> _dpPropertyName])

-- | Source specific facet response
--
-- /See:/ 'facetResult' smart constructor.
data FacetResult =
  FacetResult'
    { _frSourceName   :: !(Maybe Text)
    , _frBuckets      :: !(Maybe [FacetBucket])
    , _frObjectType   :: !(Maybe Text)
    , _frOperatorName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FacetResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frSourceName'
--
-- * 'frBuckets'
--
-- * 'frObjectType'
--
-- * 'frOperatorName'
facetResult
    :: FacetResult
facetResult =
  FacetResult'
    { _frSourceName = Nothing
    , _frBuckets = Nothing
    , _frObjectType = Nothing
    , _frOperatorName = Nothing
    }


-- | Source name for which facet results are returned. Will not be empty.
frSourceName :: Lens' FacetResult (Maybe Text)
frSourceName
  = lens _frSourceName (\ s a -> s{_frSourceName = a})

-- | FacetBuckets for values in response containing at least a single result.
frBuckets :: Lens' FacetResult [FacetBucket]
frBuckets
  = lens _frBuckets (\ s a -> s{_frBuckets = a}) .
      _Default
      . _Coerce

-- | Object type for which facet results are returned. Can be empty.
frObjectType :: Lens' FacetResult (Maybe Text)
frObjectType
  = lens _frObjectType (\ s a -> s{_frObjectType = a})

-- | Name of the operator chosen for faceting. \'see
-- cloudsearch.SchemaPropertyOptions
frOperatorName :: Lens' FacetResult (Maybe Text)
frOperatorName
  = lens _frOperatorName
      (\ s a -> s{_frOperatorName = a})

instance FromJSON FacetResult where
        parseJSON
          = withObject "FacetResult"
              (\ o ->
                 FacetResult' <$>
                   (o .:? "sourceName") <*> (o .:? "buckets" .!= mempty)
                     <*> (o .:? "objectType")
                     <*> (o .:? "operatorName"))

instance ToJSON FacetResult where
        toJSON FacetResult'{..}
          = object
              (catMaybes
                 [("sourceName" .=) <$> _frSourceName,
                  ("buckets" .=) <$> _frBuckets,
                  ("objectType" .=) <$> _frObjectType,
                  ("operatorName" .=) <$> _frOperatorName])

-- | Drive mime-type search restricts (e.g. \"type:pdf\").
--
-- /See:/ 'driveMimeTypeRestrict' smart constructor.
newtype DriveMimeTypeRestrict =
  DriveMimeTypeRestrict'
    { _dmtrType :: Maybe DriveMimeTypeRestrictType
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DriveMimeTypeRestrict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmtrType'
driveMimeTypeRestrict
    :: DriveMimeTypeRestrict
driveMimeTypeRestrict = DriveMimeTypeRestrict' {_dmtrType = Nothing}


dmtrType :: Lens' DriveMimeTypeRestrict (Maybe DriveMimeTypeRestrictType)
dmtrType = lens _dmtrType (\ s a -> s{_dmtrType = a})

instance FromJSON DriveMimeTypeRestrict where
        parseJSON
          = withObject "DriveMimeTypeRestrict"
              (\ o -> DriveMimeTypeRestrict' <$> (o .:? "type"))

instance ToJSON DriveMimeTypeRestrict where
        toJSON DriveMimeTypeRestrict'{..}
          = object (catMaybes [("type" .=) <$> _dmtrType])

-- | A structured data object consisting of named properties.
--
-- /See:/ 'structuredDataObject' smart constructor.
newtype StructuredDataObject =
  StructuredDataObject'
    { _sdoProperties :: Maybe [NamedProperty]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StructuredDataObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdoProperties'
structuredDataObject
    :: StructuredDataObject
structuredDataObject = StructuredDataObject' {_sdoProperties = Nothing}


-- | The properties for the object. The maximum number of elements is 1000.
sdoProperties :: Lens' StructuredDataObject [NamedProperty]
sdoProperties
  = lens _sdoProperties
      (\ s a -> s{_sdoProperties = a})
      . _Default
      . _Coerce

instance FromJSON StructuredDataObject where
        parseJSON
          = withObject "StructuredDataObject"
              (\ o ->
                 StructuredDataObject' <$>
                   (o .:? "properties" .!= mempty))

instance ToJSON StructuredDataObject where
        toJSON StructuredDataObject'{..}
          = object
              (catMaybes [("properties" .=) <$> _sdoProperties])

-- | Media resource.
--
-- /See:/ 'media' smart constructor.
newtype Media =
  Media'
    { _mResourceName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Media' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mResourceName'
media
    :: Media
media = Media' {_mResourceName = Nothing}


-- | Name of the media resource.
mResourceName :: Lens' Media (Maybe Text)
mResourceName
  = lens _mResourceName
      (\ s a -> s{_mResourceName = a})

instance FromJSON Media where
        parseJSON
          = withObject "Media"
              (\ o -> Media' <$> (o .:? "resourceName"))

instance ToJSON Media where
        toJSON Media'{..}
          = object
              (catMaybes [("resourceName" .=) <$> _mResourceName])

-- | Available structured data fields for the item.
--
-- /See:/ 'itemStructuredData' smart constructor.
data ItemStructuredData =
  ItemStructuredData'
    { _isdHash   :: !(Maybe Text)
    , _isdObject :: !(Maybe StructuredDataObject)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ItemStructuredData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isdHash'
--
-- * 'isdObject'
itemStructuredData
    :: ItemStructuredData
itemStructuredData =
  ItemStructuredData' {_isdHash = Nothing, _isdObject = Nothing}


-- | Hashing value provided by the API caller. This can be used with the
-- items.push method to calculate modified state. The maximum length is
-- 2048 characters.
isdHash :: Lens' ItemStructuredData (Maybe Text)
isdHash = lens _isdHash (\ s a -> s{_isdHash = a})

-- | The structured data object that should conform to a registered object
-- definition in the schema for the data source.
isdObject :: Lens' ItemStructuredData (Maybe StructuredDataObject)
isdObject
  = lens _isdObject (\ s a -> s{_isdObject = a})

instance FromJSON ItemStructuredData where
        parseJSON
          = withObject "ItemStructuredData"
              (\ o ->
                 ItemStructuredData' <$>
                   (o .:? "hash") <*> (o .:? "object"))

instance ToJSON ItemStructuredData where
        toJSON ItemStructuredData'{..}
          = object
              (catMaybes
                 [("hash" .=) <$> _isdHash,
                  ("object" .=) <$> _isdObject])

-- | Drive follow-up search restricts (e.g. \"followup:suggestions\").
--
-- /See:/ 'driveFollowUpRestrict' smart constructor.
newtype DriveFollowUpRestrict =
  DriveFollowUpRestrict'
    { _dfurType :: Maybe DriveFollowUpRestrictType
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DriveFollowUpRestrict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfurType'
driveFollowUpRestrict
    :: DriveFollowUpRestrict
driveFollowUpRestrict = DriveFollowUpRestrict' {_dfurType = Nothing}


dfurType :: Lens' DriveFollowUpRestrict (Maybe DriveFollowUpRestrictType)
dfurType = lens _dfurType (\ s a -> s{_dfurType = a})

instance FromJSON DriveFollowUpRestrict where
        parseJSON
          = withObject "DriveFollowUpRestrict"
              (\ o -> DriveFollowUpRestrict' <$> (o .:? "type"))

instance ToJSON DriveFollowUpRestrict where
        toJSON DriveFollowUpRestrict'{..}
          = object (catMaybes [("type" .=) <$> _dfurType])

-- | List of date values.
--
-- /See:/ 'dateValues' smart constructor.
newtype DateValues =
  DateValues'
    { _dValues :: Maybe [Date]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DateValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dValues'
dateValues
    :: DateValues
dateValues = DateValues' {_dValues = Nothing}


dValues :: Lens' DateValues [Date]
dValues
  = lens _dValues (\ s a -> s{_dValues = a}) . _Default
      . _Coerce

instance FromJSON DateValues where
        parseJSON
          = withObject "DateValues"
              (\ o -> DateValues' <$> (o .:? "values" .!= mempty))

instance ToJSON DateValues where
        toJSON DateValues'{..}
          = object (catMaybes [("values" .=) <$> _dValues])

-- | A typed name-value pair for structured data. The type of the value
-- should be the same as the registered type for the \`name\` property in
-- the object definition of \`objectType\`.
--
-- /See:/ 'namedProperty' smart constructor.
data NamedProperty =
  NamedProperty'
    { _npDoubleValues    :: !(Maybe DoubleValues)
    , _npTextValues      :: !(Maybe TextValues)
    , _npDateValues      :: !(Maybe DateValues)
    , _npName            :: !(Maybe Text)
    , _npBooleanValue    :: !(Maybe Bool)
    , _npObjectValues    :: !(Maybe ObjectValues)
    , _npHTMLValues      :: !(Maybe HTMLValues)
    , _npEnumValues      :: !(Maybe EnumValues)
    , _npTimestampValues :: !(Maybe TimestampValues)
    , _npIntegerValues   :: !(Maybe IntegerValues)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamedProperty' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'npDoubleValues'
--
-- * 'npTextValues'
--
-- * 'npDateValues'
--
-- * 'npName'
--
-- * 'npBooleanValue'
--
-- * 'npObjectValues'
--
-- * 'npHTMLValues'
--
-- * 'npEnumValues'
--
-- * 'npTimestampValues'
--
-- * 'npIntegerValues'
namedProperty
    :: NamedProperty
namedProperty =
  NamedProperty'
    { _npDoubleValues = Nothing
    , _npTextValues = Nothing
    , _npDateValues = Nothing
    , _npName = Nothing
    , _npBooleanValue = Nothing
    , _npObjectValues = Nothing
    , _npHTMLValues = Nothing
    , _npEnumValues = Nothing
    , _npTimestampValues = Nothing
    , _npIntegerValues = Nothing
    }


npDoubleValues :: Lens' NamedProperty (Maybe DoubleValues)
npDoubleValues
  = lens _npDoubleValues
      (\ s a -> s{_npDoubleValues = a})

npTextValues :: Lens' NamedProperty (Maybe TextValues)
npTextValues
  = lens _npTextValues (\ s a -> s{_npTextValues = a})

npDateValues :: Lens' NamedProperty (Maybe DateValues)
npDateValues
  = lens _npDateValues (\ s a -> s{_npDateValues = a})

-- | The name of the property. This name should correspond to the name of the
-- property that was registered for object definition in the schema. The
-- maximum allowable length for this property is 256 characters.
npName :: Lens' NamedProperty (Maybe Text)
npName = lens _npName (\ s a -> s{_npName = a})

npBooleanValue :: Lens' NamedProperty (Maybe Bool)
npBooleanValue
  = lens _npBooleanValue
      (\ s a -> s{_npBooleanValue = a})

npObjectValues :: Lens' NamedProperty (Maybe ObjectValues)
npObjectValues
  = lens _npObjectValues
      (\ s a -> s{_npObjectValues = a})

npHTMLValues :: Lens' NamedProperty (Maybe HTMLValues)
npHTMLValues
  = lens _npHTMLValues (\ s a -> s{_npHTMLValues = a})

npEnumValues :: Lens' NamedProperty (Maybe EnumValues)
npEnumValues
  = lens _npEnumValues (\ s a -> s{_npEnumValues = a})

npTimestampValues :: Lens' NamedProperty (Maybe TimestampValues)
npTimestampValues
  = lens _npTimestampValues
      (\ s a -> s{_npTimestampValues = a})

npIntegerValues :: Lens' NamedProperty (Maybe IntegerValues)
npIntegerValues
  = lens _npIntegerValues
      (\ s a -> s{_npIntegerValues = a})

instance FromJSON NamedProperty where
        parseJSON
          = withObject "NamedProperty"
              (\ o ->
                 NamedProperty' <$>
                   (o .:? "doubleValues") <*> (o .:? "textValues") <*>
                     (o .:? "dateValues")
                     <*> (o .:? "name")
                     <*> (o .:? "booleanValue")
                     <*> (o .:? "objectValues")
                     <*> (o .:? "htmlValues")
                     <*> (o .:? "enumValues")
                     <*> (o .:? "timestampValues")
                     <*> (o .:? "integerValues"))

instance ToJSON NamedProperty where
        toJSON NamedProperty'{..}
          = object
              (catMaybes
                 [("doubleValues" .=) <$> _npDoubleValues,
                  ("textValues" .=) <$> _npTextValues,
                  ("dateValues" .=) <$> _npDateValues,
                  ("name" .=) <$> _npName,
                  ("booleanValue" .=) <$> _npBooleanValue,
                  ("objectValues" .=) <$> _npObjectValues,
                  ("htmlValues" .=) <$> _npHTMLValues,
                  ("enumValues" .=) <$> _npEnumValues,
                  ("timestampValues" .=) <$> _npTimestampValues,
                  ("integerValues" .=) <$> _npIntegerValues])

-- | Matched range of a snippet [start, end).
--
-- /See:/ 'matchRange' smart constructor.
data MatchRange =
  MatchRange'
    { _mrStart :: !(Maybe (Textual Int32))
    , _mrEnd   :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MatchRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrStart'
--
-- * 'mrEnd'
matchRange
    :: MatchRange
matchRange = MatchRange' {_mrStart = Nothing, _mrEnd = Nothing}


-- | Starting position of the match in the snippet.
mrStart :: Lens' MatchRange (Maybe Int32)
mrStart
  = lens _mrStart (\ s a -> s{_mrStart = a}) .
      mapping _Coerce

-- | End of the match in the snippet.
mrEnd :: Lens' MatchRange (Maybe Int32)
mrEnd
  = lens _mrEnd (\ s a -> s{_mrEnd = a}) .
      mapping _Coerce

instance FromJSON MatchRange where
        parseJSON
          = withObject "MatchRange"
              (\ o ->
                 MatchRange' <$> (o .:? "start") <*> (o .:? "end"))

instance ToJSON MatchRange where
        toJSON MatchRange'{..}
          = object
              (catMaybes
                 [("start" .=) <$> _mrStart, ("end" .=) <$> _mrEnd])

-- | Debugging information about the response.
--
-- /See:/ 'responseDebugInfo' smart constructor.
newtype ResponseDebugInfo =
  ResponseDebugInfo'
    { _rFormattedDebugInfo :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResponseDebugInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rFormattedDebugInfo'
responseDebugInfo
    :: ResponseDebugInfo
responseDebugInfo = ResponseDebugInfo' {_rFormattedDebugInfo = Nothing}


-- | General debug info formatted for display.
rFormattedDebugInfo :: Lens' ResponseDebugInfo (Maybe Text)
rFormattedDebugInfo
  = lens _rFormattedDebugInfo
      (\ s a -> s{_rFormattedDebugInfo = a})

instance FromJSON ResponseDebugInfo where
        parseJSON
          = withObject "ResponseDebugInfo"
              (\ o ->
                 ResponseDebugInfo' <$> (o .:? "formattedDebugInfo"))

instance ToJSON ResponseDebugInfo where
        toJSON ResponseDebugInfo'{..}
          = object
              (catMaybes
                 [("formattedDebugInfo" .=) <$> _rFormattedDebugInfo])

--
-- /See:/ 'listDataSourceResponse' smart constructor.
data ListDataSourceResponse =
  ListDataSourceResponse'
    { _ldsrNextPageToken :: !(Maybe Text)
    , _ldsrSources       :: !(Maybe [DataSource])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListDataSourceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldsrNextPageToken'
--
-- * 'ldsrSources'
listDataSourceResponse
    :: ListDataSourceResponse
listDataSourceResponse =
  ListDataSourceResponse' {_ldsrNextPageToken = Nothing, _ldsrSources = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
ldsrNextPageToken :: Lens' ListDataSourceResponse (Maybe Text)
ldsrNextPageToken
  = lens _ldsrNextPageToken
      (\ s a -> s{_ldsrNextPageToken = a})

ldsrSources :: Lens' ListDataSourceResponse [DataSource]
ldsrSources
  = lens _ldsrSources (\ s a -> s{_ldsrSources = a}) .
      _Default
      . _Coerce

instance FromJSON ListDataSourceResponse where
        parseJSON
          = withObject "ListDataSourceResponse"
              (\ o ->
                 ListDataSourceResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "sources" .!= mempty))

instance ToJSON ListDataSourceResponse where
        toJSON ListDataSourceResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ldsrNextPageToken,
                  ("sources" .=) <$> _ldsrSources])

-- | The search API request.
--
-- /See:/ 'searchRequest' smart constructor.
data SearchRequest =
  SearchRequest'
    { _srSortOptions                :: !(Maybe SortOptions)
    , _srDataSourceRestrictions     :: !(Maybe [DataSourceRestriction])
    , _srQueryInterpretationOptions :: !(Maybe QueryInterpretationOptions)
    , _srStart                      :: !(Maybe (Textual Int32))
    , _srQuery                      :: !(Maybe Text)
    , _srFacetOptions               :: !(Maybe [FacetOptions])
    , _srPageSize                   :: !(Maybe (Textual Int32))
    , _srRequestOptions             :: !(Maybe RequestOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srSortOptions'
--
-- * 'srDataSourceRestrictions'
--
-- * 'srQueryInterpretationOptions'
--
-- * 'srStart'
--
-- * 'srQuery'
--
-- * 'srFacetOptions'
--
-- * 'srPageSize'
--
-- * 'srRequestOptions'
searchRequest
    :: SearchRequest
searchRequest =
  SearchRequest'
    { _srSortOptions = Nothing
    , _srDataSourceRestrictions = Nothing
    , _srQueryInterpretationOptions = Nothing
    , _srStart = Nothing
    , _srQuery = Nothing
    , _srFacetOptions = Nothing
    , _srPageSize = Nothing
    , _srRequestOptions = Nothing
    }


-- | The options for sorting the search results
srSortOptions :: Lens' SearchRequest (Maybe SortOptions)
srSortOptions
  = lens _srSortOptions
      (\ s a -> s{_srSortOptions = a})

-- | The sources to use for querying. If not specified, all data sources from
-- the current search application are used.
srDataSourceRestrictions :: Lens' SearchRequest [DataSourceRestriction]
srDataSourceRestrictions
  = lens _srDataSourceRestrictions
      (\ s a -> s{_srDataSourceRestrictions = a})
      . _Default
      . _Coerce

-- | Options to interpret the user query.
srQueryInterpretationOptions :: Lens' SearchRequest (Maybe QueryInterpretationOptions)
srQueryInterpretationOptions
  = lens _srQueryInterpretationOptions
      (\ s a -> s{_srQueryInterpretationOptions = a})

-- | Starting index of the results.
srStart :: Lens' SearchRequest (Maybe Int32)
srStart
  = lens _srStart (\ s a -> s{_srStart = a}) .
      mapping _Coerce

-- | The raw query string. See supported search operators in the [Cloud
-- search Cheat
-- Sheet](https:\/\/gsuite.google.com\/learning-center\/products\/cloudsearch\/cheat-sheet\/)
srQuery :: Lens' SearchRequest (Maybe Text)
srQuery = lens _srQuery (\ s a -> s{_srQuery = a})

srFacetOptions :: Lens' SearchRequest [FacetOptions]
srFacetOptions
  = lens _srFacetOptions
      (\ s a -> s{_srFacetOptions = a})
      . _Default
      . _Coerce

-- | Maximum number of search results to return in one page. Valid values are
-- between 1 and 100, inclusive. Default value is 10.
srPageSize :: Lens' SearchRequest (Maybe Int32)
srPageSize
  = lens _srPageSize (\ s a -> s{_srPageSize = a}) .
      mapping _Coerce

-- | Request options, such as the search application and user timezone.
srRequestOptions :: Lens' SearchRequest (Maybe RequestOptions)
srRequestOptions
  = lens _srRequestOptions
      (\ s a -> s{_srRequestOptions = a})

instance FromJSON SearchRequest where
        parseJSON
          = withObject "SearchRequest"
              (\ o ->
                 SearchRequest' <$>
                   (o .:? "sortOptions") <*>
                     (o .:? "dataSourceRestrictions" .!= mempty)
                     <*> (o .:? "queryInterpretationOptions")
                     <*> (o .:? "start")
                     <*> (o .:? "query")
                     <*> (o .:? "facetOptions" .!= mempty)
                     <*> (o .:? "pageSize")
                     <*> (o .:? "requestOptions"))

instance ToJSON SearchRequest where
        toJSON SearchRequest'{..}
          = object
              (catMaybes
                 [("sortOptions" .=) <$> _srSortOptions,
                  ("dataSourceRestrictions" .=) <$>
                    _srDataSourceRestrictions,
                  ("queryInterpretationOptions" .=) <$>
                    _srQueryInterpretationOptions,
                  ("start" .=) <$> _srStart, ("query" .=) <$> _srQuery,
                  ("facetOptions" .=) <$> _srFacetOptions,
                  ("pageSize" .=) <$> _srPageSize,
                  ("requestOptions" .=) <$> _srRequestOptions])

-- | A person\'s name.
--
-- /See:/ 'name' smart constructor.
newtype Name =
  Name'
    { _nDisplayName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Name' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nDisplayName'
name
    :: Name
name = Name' {_nDisplayName = Nothing}


-- | The read-only display name formatted according to the locale specified
-- by the viewer\'s account or the 'Accept-Language' HTTP header.
nDisplayName :: Lens' Name (Maybe Text)
nDisplayName
  = lens _nDisplayName (\ s a -> s{_nDisplayName = a})

instance FromJSON Name where
        parseJSON
          = withObject "Name"
              (\ o -> Name' <$> (o .:? "displayName"))

instance ToJSON Name where
        toJSON Name'{..}
          = object
              (catMaybes [("displayName" .=) <$> _nDisplayName])

-- | Per source result count information.
--
-- /See:/ 'sourceResultCount' smart constructor.
data SourceResultCount =
  SourceResultCount'
    { _srcHasMoreResults      :: !(Maybe Bool)
    , _srcResultCountExact    :: !(Maybe (Textual Int64))
    , _srcResultCountEstimate :: !(Maybe (Textual Int64))
    , _srcSource              :: !(Maybe Source)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceResultCount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srcHasMoreResults'
--
-- * 'srcResultCountExact'
--
-- * 'srcResultCountEstimate'
--
-- * 'srcSource'
sourceResultCount
    :: SourceResultCount
sourceResultCount =
  SourceResultCount'
    { _srcHasMoreResults = Nothing
    , _srcResultCountExact = Nothing
    , _srcResultCountEstimate = Nothing
    , _srcSource = Nothing
    }


-- | Whether there are more search results for this source.
srcHasMoreResults :: Lens' SourceResultCount (Maybe Bool)
srcHasMoreResults
  = lens _srcHasMoreResults
      (\ s a -> s{_srcHasMoreResults = a})

-- | The exact result count for this source.
srcResultCountExact :: Lens' SourceResultCount (Maybe Int64)
srcResultCountExact
  = lens _srcResultCountExact
      (\ s a -> s{_srcResultCountExact = a})
      . mapping _Coerce

-- | The estimated result count for this source.
srcResultCountEstimate :: Lens' SourceResultCount (Maybe Int64)
srcResultCountEstimate
  = lens _srcResultCountEstimate
      (\ s a -> s{_srcResultCountEstimate = a})
      . mapping _Coerce

-- | The source the result count information is associated with.
srcSource :: Lens' SourceResultCount (Maybe Source)
srcSource
  = lens _srcSource (\ s a -> s{_srcSource = a})

instance FromJSON SourceResultCount where
        parseJSON
          = withObject "SourceResultCount"
              (\ o ->
                 SourceResultCount' <$>
                   (o .:? "hasMoreResults") <*>
                     (o .:? "resultCountExact")
                     <*> (o .:? "resultCountEstimate")
                     <*> (o .:? "source"))

instance ToJSON SourceResultCount where
        toJSON SourceResultCount'{..}
          = object
              (catMaybes
                 [("hasMoreResults" .=) <$> _srcHasMoreResults,
                  ("resultCountExact" .=) <$> _srcResultCountExact,
                  ("resultCountEstimate" .=) <$>
                    _srcResultCountEstimate,
                  ("source" .=) <$> _srcSource])

-- | Configurations for a source while processing a Search or Suggest
-- request.
--
-- /See:/ 'sourceConfig' smart constructor.
data SourceConfig =
  SourceConfig'
    { _scCrowdingConfig :: !(Maybe SourceCrowdingConfig)
    , _scScoringConfig  :: !(Maybe SourceScoringConfig)
    , _scSource         :: !(Maybe Source)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scCrowdingConfig'
--
-- * 'scScoringConfig'
--
-- * 'scSource'
sourceConfig
    :: SourceConfig
sourceConfig =
  SourceConfig'
    { _scCrowdingConfig = Nothing
    , _scScoringConfig = Nothing
    , _scSource = Nothing
    }


-- | The crowding configuration for the source.
scCrowdingConfig :: Lens' SourceConfig (Maybe SourceCrowdingConfig)
scCrowdingConfig
  = lens _scCrowdingConfig
      (\ s a -> s{_scCrowdingConfig = a})

-- | The scoring configuration for the source.
scScoringConfig :: Lens' SourceConfig (Maybe SourceScoringConfig)
scScoringConfig
  = lens _scScoringConfig
      (\ s a -> s{_scScoringConfig = a})

-- | The source for which this configuration is to be used.
scSource :: Lens' SourceConfig (Maybe Source)
scSource = lens _scSource (\ s a -> s{_scSource = a})

instance FromJSON SourceConfig where
        parseJSON
          = withObject "SourceConfig"
              (\ o ->
                 SourceConfig' <$>
                   (o .:? "crowdingConfig") <*> (o .:? "scoringConfig")
                     <*> (o .:? "source"))

instance ToJSON SourceConfig where
        toJSON SourceConfig'{..}
          = object
              (catMaybes
                 [("crowdingConfig" .=) <$> _scCrowdingConfig,
                  ("scoringConfig" .=) <$> _scScoringConfig,
                  ("source" .=) <$> _scSource])

--
-- /See:/ 'listItemsResponse' smart constructor.
data ListItemsResponse =
  ListItemsResponse'
    { _lirNextPageToken :: !(Maybe Text)
    , _lirItems         :: !(Maybe [Item])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListItemsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lirNextPageToken'
--
-- * 'lirItems'
listItemsResponse
    :: ListItemsResponse
listItemsResponse =
  ListItemsResponse' {_lirNextPageToken = Nothing, _lirItems = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
lirNextPageToken :: Lens' ListItemsResponse (Maybe Text)
lirNextPageToken
  = lens _lirNextPageToken
      (\ s a -> s{_lirNextPageToken = a})

lirItems :: Lens' ListItemsResponse [Item]
lirItems
  = lens _lirItems (\ s a -> s{_lirItems = a}) .
      _Default
      . _Coerce

instance FromJSON ListItemsResponse where
        parseJSON
          = withObject "ListItemsResponse"
              (\ o ->
                 ListItemsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON ListItemsResponse where
        toJSON ListItemsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lirNextPageToken,
                  ("items" .=) <$> _lirItems])

-- | Scoring configurations for a source while processing a Search or Suggest
-- request.
--
-- /See:/ 'scoringConfig' smart constructor.
data ScoringConfig =
  ScoringConfig'
    { _scDisablePersonalization :: !(Maybe Bool)
    , _scDisableFreshness       :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScoringConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scDisablePersonalization'
--
-- * 'scDisableFreshness'
scoringConfig
    :: ScoringConfig
scoringConfig =
  ScoringConfig'
    {_scDisablePersonalization = Nothing, _scDisableFreshness = Nothing}


-- | Whether to personalize the results. By default, personal signals will be
-- used to boost results.
scDisablePersonalization :: Lens' ScoringConfig (Maybe Bool)
scDisablePersonalization
  = lens _scDisablePersonalization
      (\ s a -> s{_scDisablePersonalization = a})

-- | Whether to use freshness as a ranking signal. By default, freshness is
-- used as a ranking signal. Note that this setting is not available in the
-- Admin UI.
scDisableFreshness :: Lens' ScoringConfig (Maybe Bool)
scDisableFreshness
  = lens _scDisableFreshness
      (\ s a -> s{_scDisableFreshness = a})

instance FromJSON ScoringConfig where
        parseJSON
          = withObject "ScoringConfig"
              (\ o ->
                 ScoringConfig' <$>
                   (o .:? "disablePersonalization") <*>
                     (o .:? "disableFreshness"))

instance ToJSON ScoringConfig where
        toJSON ScoringConfig'{..}
          = object
              (catMaybes
                 [("disablePersonalization" .=) <$>
                    _scDisablePersonalization,
                  ("disableFreshness" .=) <$> _scDisableFreshness])

-- | Start upload file request.
--
-- /See:/ 'startUploadItemRequest' smart constructor.
data StartUploadItemRequest =
  StartUploadItemRequest'
    { _suirDebugOptions  :: !(Maybe DebugOptions)
    , _suirConnectorName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StartUploadItemRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suirDebugOptions'
--
-- * 'suirConnectorName'
startUploadItemRequest
    :: StartUploadItemRequest
startUploadItemRequest =
  StartUploadItemRequest'
    {_suirDebugOptions = Nothing, _suirConnectorName = Nothing}


-- | Common debug options.
suirDebugOptions :: Lens' StartUploadItemRequest (Maybe DebugOptions)
suirDebugOptions
  = lens _suirDebugOptions
      (\ s a -> s{_suirDebugOptions = a})

-- | Name of connector making this call.
-- Format: datasources\/{source_id}\/connectors\/{ID}
suirConnectorName :: Lens' StartUploadItemRequest (Maybe Text)
suirConnectorName
  = lens _suirConnectorName
      (\ s a -> s{_suirConnectorName = a})

instance FromJSON StartUploadItemRequest where
        parseJSON
          = withObject "StartUploadItemRequest"
              (\ o ->
                 StartUploadItemRequest' <$>
                   (o .:? "debugOptions") <*> (o .:? "connectorName"))

instance ToJSON StartUploadItemRequest where
        toJSON StartUploadItemRequest'{..}
          = object
              (catMaybes
                 [("debugOptions" .=) <$> _suirDebugOptions,
                  ("connectorName" .=) <$> _suirConnectorName])

-- | Represents an upload session reference. This reference is created via
-- upload method. Updating of item content may refer to this uploaded
-- content via contentDataRef.
--
-- /See:/ 'uploadItemRef' smart constructor.
newtype UploadItemRef =
  UploadItemRef'
    { _uirName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UploadItemRef' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uirName'
uploadItemRef
    :: UploadItemRef
uploadItemRef = UploadItemRef' {_uirName = Nothing}


-- | Name of the content reference. The maximum length is 2048 characters.
uirName :: Lens' UploadItemRef (Maybe Text)
uirName = lens _uirName (\ s a -> s{_uirName = a})

instance FromJSON UploadItemRef where
        parseJSON
          = withObject "UploadItemRef"
              (\ o -> UploadItemRef' <$> (o .:? "name"))

instance ToJSON UploadItemRef where
        toJSON UploadItemRef'{..}
          = object (catMaybes [("name" .=) <$> _uirName])

-- | Gmail Time restricts (i.e. received today, this week).
--
-- /See:/ 'gmailTimeRestrict' smart constructor.
newtype GmailTimeRestrict =
  GmailTimeRestrict'
    { _gtrType :: Maybe GmailTimeRestrictType
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GmailTimeRestrict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtrType'
gmailTimeRestrict
    :: GmailTimeRestrict
gmailTimeRestrict = GmailTimeRestrict' {_gtrType = Nothing}


gtrType :: Lens' GmailTimeRestrict (Maybe GmailTimeRestrictType)
gtrType = lens _gtrType (\ s a -> s{_gtrType = a})

instance FromJSON GmailTimeRestrict where
        parseJSON
          = withObject "GmailTimeRestrict"
              (\ o -> GmailTimeRestrict' <$> (o .:? "type"))

instance ToJSON GmailTimeRestrict where
        toJSON GmailTimeRestrict'{..}
          = object (catMaybes [("type" .=) <$> _gtrType])

--
-- /See:/ 'pushItemRequest' smart constructor.
data PushItemRequest =
  PushItemRequest'
    { _pirDebugOptions  :: !(Maybe DebugOptions)
    , _pirConnectorName :: !(Maybe Text)
    , _pirItem          :: !(Maybe PushItem)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PushItemRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pirDebugOptions'
--
-- * 'pirConnectorName'
--
-- * 'pirItem'
pushItemRequest
    :: PushItemRequest
pushItemRequest =
  PushItemRequest'
    { _pirDebugOptions = Nothing
    , _pirConnectorName = Nothing
    , _pirItem = Nothing
    }


-- | Common debug options.
pirDebugOptions :: Lens' PushItemRequest (Maybe DebugOptions)
pirDebugOptions
  = lens _pirDebugOptions
      (\ s a -> s{_pirDebugOptions = a})

-- | Name of connector making this call.
-- Format: datasources\/{source_id}\/connectors\/{ID}
pirConnectorName :: Lens' PushItemRequest (Maybe Text)
pirConnectorName
  = lens _pirConnectorName
      (\ s a -> s{_pirConnectorName = a})

-- | Item to push onto the queue.
pirItem :: Lens' PushItemRequest (Maybe PushItem)
pirItem = lens _pirItem (\ s a -> s{_pirItem = a})

instance FromJSON PushItemRequest where
        parseJSON
          = withObject "PushItemRequest"
              (\ o ->
                 PushItemRequest' <$>
                   (o .:? "debugOptions") <*> (o .:? "connectorName")
                     <*> (o .:? "item"))

instance ToJSON PushItemRequest where
        toJSON PushItemRequest'{..}
          = object
              (catMaybes
                 [("debugOptions" .=) <$> _pirDebugOptions,
                  ("connectorName" .=) <$> _pirConnectorName,
                  ("item" .=) <$> _pirItem])

-- | Options for double properties.
--
-- /See:/ 'doublePropertyOptions' smart constructor.
newtype DoublePropertyOptions =
  DoublePropertyOptions'
    { _dpoOperatorOptions :: Maybe DoubleOperatorOptions
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DoublePropertyOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpoOperatorOptions'
doublePropertyOptions
    :: DoublePropertyOptions
doublePropertyOptions = DoublePropertyOptions' {_dpoOperatorOptions = Nothing}


-- | If set, describes how the double should be used as a search operator.
dpoOperatorOptions :: Lens' DoublePropertyOptions (Maybe DoubleOperatorOptions)
dpoOperatorOptions
  = lens _dpoOperatorOptions
      (\ s a -> s{_dpoOperatorOptions = a})

instance FromJSON DoublePropertyOptions where
        parseJSON
          = withObject "DoublePropertyOptions"
              (\ o ->
                 DoublePropertyOptions' <$> (o .:? "operatorOptions"))

instance ToJSON DoublePropertyOptions where
        toJSON DoublePropertyOptions'{..}
          = object
              (catMaybes
                 [("operatorOptions" .=) <$> _dpoOperatorOptions])

-- | The definition of a operator that can be used in a Search\/Suggest
-- request.
--
-- /See:/ 'queryOperator' smart constructor.
data QueryOperator =
  QueryOperator'
    { _qoIsSuggestable           :: !(Maybe Bool)
    , _qoIsReturnable            :: !(Maybe Bool)
    , _qoIsRepeatable            :: !(Maybe Bool)
    , _qoOperatorName            :: !(Maybe Text)
    , _qoIsSortable              :: !(Maybe Bool)
    , _qoIsFacetable             :: !(Maybe Bool)
    , _qoDisplayName             :: !(Maybe Text)
    , _qoLessThanOperatorName    :: !(Maybe Text)
    , _qoType                    :: !(Maybe QueryOperatorType)
    , _qoEnumValues              :: !(Maybe [Text])
    , _qoGreaterThanOperatorName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryOperator' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qoIsSuggestable'
--
-- * 'qoIsReturnable'
--
-- * 'qoIsRepeatable'
--
-- * 'qoOperatorName'
--
-- * 'qoIsSortable'
--
-- * 'qoIsFacetable'
--
-- * 'qoDisplayName'
--
-- * 'qoLessThanOperatorName'
--
-- * 'qoType'
--
-- * 'qoEnumValues'
--
-- * 'qoGreaterThanOperatorName'
queryOperator
    :: QueryOperator
queryOperator =
  QueryOperator'
    { _qoIsSuggestable = Nothing
    , _qoIsReturnable = Nothing
    , _qoIsRepeatable = Nothing
    , _qoOperatorName = Nothing
    , _qoIsSortable = Nothing
    , _qoIsFacetable = Nothing
    , _qoDisplayName = Nothing
    , _qoLessThanOperatorName = Nothing
    , _qoType = Nothing
    , _qoEnumValues = Nothing
    , _qoGreaterThanOperatorName = Nothing
    }


-- | Can get suggestions for this field.
qoIsSuggestable :: Lens' QueryOperator (Maybe Bool)
qoIsSuggestable
  = lens _qoIsSuggestable
      (\ s a -> s{_qoIsSuggestable = a})

-- | Will the property associated with this facet be returned as part of
-- search results.
qoIsReturnable :: Lens' QueryOperator (Maybe Bool)
qoIsReturnable
  = lens _qoIsReturnable
      (\ s a -> s{_qoIsReturnable = a})

-- | Indicates if multiple values can be set for this property.
qoIsRepeatable :: Lens' QueryOperator (Maybe Bool)
qoIsRepeatable
  = lens _qoIsRepeatable
      (\ s a -> s{_qoIsRepeatable = a})

-- | The name of the operator.
qoOperatorName :: Lens' QueryOperator (Maybe Text)
qoOperatorName
  = lens _qoOperatorName
      (\ s a -> s{_qoOperatorName = a})

-- | Can this operator be used to sort results.
qoIsSortable :: Lens' QueryOperator (Maybe Bool)
qoIsSortable
  = lens _qoIsSortable (\ s a -> s{_qoIsSortable = a})

-- | Can this operator be used to get facets.
qoIsFacetable :: Lens' QueryOperator (Maybe Bool)
qoIsFacetable
  = lens _qoIsFacetable
      (\ s a -> s{_qoIsFacetable = a})

-- | Display name of the operator
qoDisplayName :: Lens' QueryOperator (Maybe Text)
qoDisplayName
  = lens _qoDisplayName
      (\ s a -> s{_qoDisplayName = a})

-- | Indicates the operator name that can be used to isolate the property
-- using the less-than operator.
qoLessThanOperatorName :: Lens' QueryOperator (Maybe Text)
qoLessThanOperatorName
  = lens _qoLessThanOperatorName
      (\ s a -> s{_qoLessThanOperatorName = a})

-- | Type of the operator.
qoType :: Lens' QueryOperator (Maybe QueryOperatorType)
qoType = lens _qoType (\ s a -> s{_qoType = a})

-- | Potential list of values for the opeatror field. This field is only
-- filled when we can safely enumerate all the possible values of this
-- operator.
qoEnumValues :: Lens' QueryOperator [Text]
qoEnumValues
  = lens _qoEnumValues (\ s a -> s{_qoEnumValues = a})
      . _Default
      . _Coerce

-- | Indicates the operator name that can be used to isolate the property
-- using the greater-than operator.
qoGreaterThanOperatorName :: Lens' QueryOperator (Maybe Text)
qoGreaterThanOperatorName
  = lens _qoGreaterThanOperatorName
      (\ s a -> s{_qoGreaterThanOperatorName = a})

instance FromJSON QueryOperator where
        parseJSON
          = withObject "QueryOperator"
              (\ o ->
                 QueryOperator' <$>
                   (o .:? "isSuggestable") <*> (o .:? "isReturnable")
                     <*> (o .:? "isRepeatable")
                     <*> (o .:? "operatorName")
                     <*> (o .:? "isSortable")
                     <*> (o .:? "isFacetable")
                     <*> (o .:? "displayName")
                     <*> (o .:? "lessThanOperatorName")
                     <*> (o .:? "type")
                     <*> (o .:? "enumValues" .!= mempty)
                     <*> (o .:? "greaterThanOperatorName"))

instance ToJSON QueryOperator where
        toJSON QueryOperator'{..}
          = object
              (catMaybes
                 [("isSuggestable" .=) <$> _qoIsSuggestable,
                  ("isReturnable" .=) <$> _qoIsReturnable,
                  ("isRepeatable" .=) <$> _qoIsRepeatable,
                  ("operatorName" .=) <$> _qoOperatorName,
                  ("isSortable" .=) <$> _qoIsSortable,
                  ("isFacetable" .=) <$> _qoIsFacetable,
                  ("displayName" .=) <$> _qoDisplayName,
                  ("lessThanOperatorName" .=) <$>
                    _qoLessThanOperatorName,
                  ("type" .=) <$> _qoType,
                  ("enumValues" .=) <$> _qoEnumValues,
                  ("greaterThanOperatorName" .=) <$>
                    _qoGreaterThanOperatorName])

--
-- /See:/ 'pollItemsResponse' smart constructor.
newtype PollItemsResponse =
  PollItemsResponse'
    { _pirItems :: Maybe [Item]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PollItemsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pirItems'
pollItemsResponse
    :: PollItemsResponse
pollItemsResponse = PollItemsResponse' {_pirItems = Nothing}


-- | Set of items from the queue available for connector to process.
-- These items have the following subset of fields populated:
-- version
-- metadata.hash
-- structured_data.hash
-- content.hash
-- payload
-- status
-- queue
pirItems :: Lens' PollItemsResponse [Item]
pirItems
  = lens _pirItems (\ s a -> s{_pirItems = a}) .
      _Default
      . _Coerce

instance FromJSON PollItemsResponse where
        parseJSON
          = withObject "PollItemsResponse"
              (\ o ->
                 PollItemsResponse' <$> (o .:? "items" .!= mempty))

instance ToJSON PollItemsResponse where
        toJSON PollItemsResponse'{..}
          = object (catMaybes [("items" .=) <$> _pirItems])

-- | Set the scoring configuration. This allows modifying the ranking of
-- results for a source.
--
-- /See:/ 'sourceScoringConfig' smart constructor.
newtype SourceScoringConfig =
  SourceScoringConfig'
    { _sscSourceImportance :: Maybe SourceScoringConfigSourceImportance
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceScoringConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sscSourceImportance'
sourceScoringConfig
    :: SourceScoringConfig
sourceScoringConfig = SourceScoringConfig' {_sscSourceImportance = Nothing}


-- | Importance of the source.
sscSourceImportance :: Lens' SourceScoringConfig (Maybe SourceScoringConfigSourceImportance)
sscSourceImportance
  = lens _sscSourceImportance
      (\ s a -> s{_sscSourceImportance = a})

instance FromJSON SourceScoringConfig where
        parseJSON
          = withObject "SourceScoringConfig"
              (\ o ->
                 SourceScoringConfig' <$> (o .:? "sourceImportance"))

instance ToJSON SourceScoringConfig where
        toJSON SourceScoringConfig'{..}
          = object
              (catMaybes
                 [("sourceImportance" .=) <$> _sscSourceImportance])

-- | A person\'s email address.
--
-- /See:/ 'emailAddress' smart constructor.
newtype EmailAddress =
  EmailAddress'
    { _eaEmailAddress :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EmailAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eaEmailAddress'
emailAddress
    :: EmailAddress
emailAddress = EmailAddress' {_eaEmailAddress = Nothing}


-- | The email address.
eaEmailAddress :: Lens' EmailAddress (Maybe Text)
eaEmailAddress
  = lens _eaEmailAddress
      (\ s a -> s{_eaEmailAddress = a})

instance FromJSON EmailAddress where
        parseJSON
          = withObject "EmailAddress"
              (\ o -> EmailAddress' <$> (o .:? "emailAddress"))

instance ToJSON EmailAddress where
        toJSON EmailAddress'{..}
          = object
              (catMaybes [("emailAddress" .=) <$> _eaEmailAddress])

--
-- /See:/ 'retrievalImportance' smart constructor.
newtype RetrievalImportance =
  RetrievalImportance'
    { _riImportance :: Maybe RetrievalImportanceImportance
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RetrievalImportance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riImportance'
retrievalImportance
    :: RetrievalImportance
retrievalImportance = RetrievalImportance' {_riImportance = Nothing}


-- | Indicates the ranking importance given to property when it is matched
-- during retrieval. Once set, the token importance of a property cannot be
-- changed.
riImportance :: Lens' RetrievalImportance (Maybe RetrievalImportanceImportance)
riImportance
  = lens _riImportance (\ s a -> s{_riImportance = a})

instance FromJSON RetrievalImportance where
        parseJSON
          = withObject "RetrievalImportance"
              (\ o ->
                 RetrievalImportance' <$> (o .:? "importance"))

instance ToJSON RetrievalImportance where
        toJSON RetrievalImportance'{..}
          = object
              (catMaybes [("importance" .=) <$> _riImportance])

-- | Aggregation of items by status code as of the specified date.
--
-- /See:/ 'dataSourceIndexStats' smart constructor.
data DataSourceIndexStats =
  DataSourceIndexStats'
    { _dsisItemCountByStatus :: !(Maybe [ItemCountByStatus])
    , _dsisDate              :: !(Maybe Date)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataSourceIndexStats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsisItemCountByStatus'
--
-- * 'dsisDate'
dataSourceIndexStats
    :: DataSourceIndexStats
dataSourceIndexStats =
  DataSourceIndexStats' {_dsisItemCountByStatus = Nothing, _dsisDate = Nothing}


-- | Number of items aggregrated by status code.
dsisItemCountByStatus :: Lens' DataSourceIndexStats [ItemCountByStatus]
dsisItemCountByStatus
  = lens _dsisItemCountByStatus
      (\ s a -> s{_dsisItemCountByStatus = a})
      . _Default
      . _Coerce

-- | Date for which index stats were calculated. If the date of request is
-- not the current date then stats calculated on the next day are returned.
-- Stats are calculated close to mid night in this case. If date of request
-- is current date, then real time stats are returned.
dsisDate :: Lens' DataSourceIndexStats (Maybe Date)
dsisDate = lens _dsisDate (\ s a -> s{_dsisDate = a})

instance FromJSON DataSourceIndexStats where
        parseJSON
          = withObject "DataSourceIndexStats"
              (\ o ->
                 DataSourceIndexStats' <$>
                   (o .:? "itemCountByStatus" .!= mempty) <*>
                     (o .:? "date"))

instance ToJSON DataSourceIndexStats where
        toJSON DataSourceIndexStats'{..}
          = object
              (catMaybes
                 [("itemCountByStatus" .=) <$> _dsisItemCountByStatus,
                  ("date" .=) <$> _dsisDate])

-- | Set search results crowding limits. Crowding is a situation in which
-- multiple results from the same source or host \"crowd out\" other
-- results, diminishing the quality of search for users. To foster better
-- search quality and source diversity in search results, you can set a
-- condition to reduce repetitive results by source.
--
-- /See:/ 'sourceCrowdingConfig' smart constructor.
data SourceCrowdingConfig =
  SourceCrowdingConfig'
    { _sccField          :: !(Maybe Text)
    , _sccNumSuggestions :: !(Maybe (Textual Int32))
    , _sccNumResults     :: !(Maybe (Textual Int32))
    , _sccSource         :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceCrowdingConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sccField'
--
-- * 'sccNumSuggestions'
--
-- * 'sccNumResults'
--
-- * 'sccSource'
sourceCrowdingConfig
    :: SourceCrowdingConfig
sourceCrowdingConfig =
  SourceCrowdingConfig'
    { _sccField = Nothing
    , _sccNumSuggestions = Nothing
    , _sccNumResults = Nothing
    , _sccSource = Nothing
    }


-- | Use a field to control results crowding. For example, if you want to
-- control overly similar results from Gmail topics, use \`thread_id\`. For
-- similar pages from Google Sites, you can use \`webspace_id\`. When
-- matching query results contain the same field value in
-- \`GenericMetadata\`, crowding limits are set on those records.
sccField :: Lens' SourceCrowdingConfig (Maybe Text)
sccField = lens _sccField (\ s a -> s{_sccField = a})

-- | Maximum number of suggestions allowed from a source. No limits will be
-- set on results if this value is less than or equal to 0.
sccNumSuggestions :: Lens' SourceCrowdingConfig (Maybe Int32)
sccNumSuggestions
  = lens _sccNumSuggestions
      (\ s a -> s{_sccNumSuggestions = a})
      . mapping _Coerce

-- | Maximum number of results allowed from a source. No limits will be set
-- on results if this value is less than or equal to 0.
sccNumResults :: Lens' SourceCrowdingConfig (Maybe Int32)
sccNumResults
  = lens _sccNumResults
      (\ s a -> s{_sccNumResults = a})
      . mapping _Coerce

-- | Control results by content source. This option limits the total number
-- of results from a given source and ignores field-based crowding control.
sccSource :: Lens' SourceCrowdingConfig (Maybe Bool)
sccSource
  = lens _sccSource (\ s a -> s{_sccSource = a})

instance FromJSON SourceCrowdingConfig where
        parseJSON
          = withObject "SourceCrowdingConfig"
              (\ o ->
                 SourceCrowdingConfig' <$>
                   (o .:? "field") <*> (o .:? "numSuggestions") <*>
                     (o .:? "numResults")
                     <*> (o .:? "source"))

instance ToJSON SourceCrowdingConfig where
        toJSON SourceCrowdingConfig'{..}
          = object
              (catMaybes
                 [("field" .=) <$> _sccField,
                  ("numSuggestions" .=) <$> _sccNumSuggestions,
                  ("numResults" .=) <$> _sccNumResults,
                  ("source" .=) <$> _sccSource])

-- | Represents an interaction between a user and an item.
--
-- /See:/ 'interaction' smart constructor.
data Interaction =
  Interaction'
    { _iInteractionTime :: !(Maybe DateTime')
    , _iPrincipal       :: !(Maybe Principal)
    , _iType            :: !(Maybe InteractionType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Interaction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iInteractionTime'
--
-- * 'iPrincipal'
--
-- * 'iType'
interaction
    :: Interaction
interaction =
  Interaction'
    {_iInteractionTime = Nothing, _iPrincipal = Nothing, _iType = Nothing}


-- | The time when the user acted on the item. If multiple actions of the
-- same type exist for a single user, only the most recent action is
-- recorded.
iInteractionTime :: Lens' Interaction (Maybe UTCTime)
iInteractionTime
  = lens _iInteractionTime
      (\ s a -> s{_iInteractionTime = a})
      . mapping _DateTime

-- | The user that acted on the item.
iPrincipal :: Lens' Interaction (Maybe Principal)
iPrincipal
  = lens _iPrincipal (\ s a -> s{_iPrincipal = a})

iType :: Lens' Interaction (Maybe InteractionType)
iType = lens _iType (\ s a -> s{_iType = a})

instance FromJSON Interaction where
        parseJSON
          = withObject "Interaction"
              (\ o ->
                 Interaction' <$>
                   (o .:? "interactionTime") <*> (o .:? "principal") <*>
                     (o .:? "type"))

instance ToJSON Interaction where
        toJSON Interaction'{..}
          = object
              (catMaybes
                 [("interactionTime" .=) <$> _iInteractionTime,
                  ("principal" .=) <$> _iPrincipal,
                  ("type" .=) <$> _iType])

-- | Reference to a user, group, or domain.
--
-- /See:/ 'principal' smart constructor.
data Principal =
  Principal'
    { _pUserResourceName  :: !(Maybe Text)
    , _pGroupResourceName :: !(Maybe Text)
    , _pGsuitePrincipal   :: !(Maybe GSuitePrincipal)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Principal' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pUserResourceName'
--
-- * 'pGroupResourceName'
--
-- * 'pGsuitePrincipal'
principal
    :: Principal
principal =
  Principal'
    { _pUserResourceName = Nothing
    , _pGroupResourceName = Nothing
    , _pGsuitePrincipal = Nothing
    }


-- | This principal is a user identified using an external identity. The name
-- field must specify the user resource name with this format:
-- identitysources\/{source_id}\/users\/{ID}
pUserResourceName :: Lens' Principal (Maybe Text)
pUserResourceName
  = lens _pUserResourceName
      (\ s a -> s{_pUserResourceName = a})

-- | This principal is a group identified using an external identity. The
-- name field must specify the group resource name with this format:
-- identitysources\/{source_id}\/groups\/{ID}
pGroupResourceName :: Lens' Principal (Maybe Text)
pGroupResourceName
  = lens _pGroupResourceName
      (\ s a -> s{_pGroupResourceName = a})

-- | This principal is a GSuite user, group or domain.
pGsuitePrincipal :: Lens' Principal (Maybe GSuitePrincipal)
pGsuitePrincipal
  = lens _pGsuitePrincipal
      (\ s a -> s{_pGsuitePrincipal = a})

instance FromJSON Principal where
        parseJSON
          = withObject "Principal"
              (\ o ->
                 Principal' <$>
                   (o .:? "userResourceName") <*>
                     (o .:? "groupResourceName")
                     <*> (o .:? "gsuitePrincipal"))

instance ToJSON Principal where
        toJSON Principal'{..}
          = object
              (catMaybes
                 [("userResourceName" .=) <$> _pUserResourceName,
                  ("groupResourceName" .=) <$> _pGroupResourceName,
                  ("gsuitePrincipal" .=) <$> _pGsuitePrincipal])

--
-- /See:/ 'indexItemRequest' smart constructor.
data IndexItemRequest =
  IndexItemRequest'
    { _iirMode             :: !(Maybe IndexItemRequestMode)
    , _iirDebugOptions     :: !(Maybe DebugOptions)
    , _iirConnectorName    :: !(Maybe Text)
    , _iirItem             :: !(Maybe Item)
    , _iirIndexItemOptions :: !(Maybe IndexItemOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IndexItemRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iirMode'
--
-- * 'iirDebugOptions'
--
-- * 'iirConnectorName'
--
-- * 'iirItem'
--
-- * 'iirIndexItemOptions'
indexItemRequest
    :: IndexItemRequest
indexItemRequest =
  IndexItemRequest'
    { _iirMode = Nothing
    , _iirDebugOptions = Nothing
    , _iirConnectorName = Nothing
    , _iirItem = Nothing
    , _iirIndexItemOptions = Nothing
    }


-- | Required. The RequestMode for this request.
iirMode :: Lens' IndexItemRequest (Maybe IndexItemRequestMode)
iirMode = lens _iirMode (\ s a -> s{_iirMode = a})

-- | Common debug options.
iirDebugOptions :: Lens' IndexItemRequest (Maybe DebugOptions)
iirDebugOptions
  = lens _iirDebugOptions
      (\ s a -> s{_iirDebugOptions = a})

-- | Name of connector making this call.
-- Format: datasources\/{source_id}\/connectors\/{ID}
iirConnectorName :: Lens' IndexItemRequest (Maybe Text)
iirConnectorName
  = lens _iirConnectorName
      (\ s a -> s{_iirConnectorName = a})

-- | Name of the item. Format: datasources\/{source_id}\/items\/{item_id}
iirItem :: Lens' IndexItemRequest (Maybe Item)
iirItem = lens _iirItem (\ s a -> s{_iirItem = a})

iirIndexItemOptions :: Lens' IndexItemRequest (Maybe IndexItemOptions)
iirIndexItemOptions
  = lens _iirIndexItemOptions
      (\ s a -> s{_iirIndexItemOptions = a})

instance FromJSON IndexItemRequest where
        parseJSON
          = withObject "IndexItemRequest"
              (\ o ->
                 IndexItemRequest' <$>
                   (o .:? "mode") <*> (o .:? "debugOptions") <*>
                     (o .:? "connectorName")
                     <*> (o .:? "item")
                     <*> (o .:? "indexItemOptions"))

instance ToJSON IndexItemRequest where
        toJSON IndexItemRequest'{..}
          = object
              (catMaybes
                 [("mode" .=) <$> _iirMode,
                  ("debugOptions" .=) <$> _iirDebugOptions,
                  ("connectorName" .=) <$> _iirConnectorName,
                  ("item" .=) <$> _iirItem,
                  ("indexItemOptions" .=) <$> _iirIndexItemOptions])

-- | Options for text properties.
--
-- /See:/ 'textPropertyOptions' smart constructor.
data TextPropertyOptions =
  TextPropertyOptions'
    { _tRetrievalImportance :: !(Maybe RetrievalImportance)
    , _tOperatorOptions     :: !(Maybe TextOperatorOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TextPropertyOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tRetrievalImportance'
--
-- * 'tOperatorOptions'
textPropertyOptions
    :: TextPropertyOptions
textPropertyOptions =
  TextPropertyOptions'
    {_tRetrievalImportance = Nothing, _tOperatorOptions = Nothing}


-- | Indicates the search quality importance of the tokens within the field
-- when used for retrieval.
tRetrievalImportance :: Lens' TextPropertyOptions (Maybe RetrievalImportance)
tRetrievalImportance
  = lens _tRetrievalImportance
      (\ s a -> s{_tRetrievalImportance = a})

-- | If set, describes how the property should be used as a search operator.
tOperatorOptions :: Lens' TextPropertyOptions (Maybe TextOperatorOptions)
tOperatorOptions
  = lens _tOperatorOptions
      (\ s a -> s{_tOperatorOptions = a})

instance FromJSON TextPropertyOptions where
        parseJSON
          = withObject "TextPropertyOptions"
              (\ o ->
                 TextPropertyOptions' <$>
                   (o .:? "retrievalImportance") <*>
                     (o .:? "operatorOptions"))

instance ToJSON TextPropertyOptions where
        toJSON TextPropertyOptions'{..}
          = object
              (catMaybes
                 [("retrievalImportance" .=) <$>
                    _tRetrievalImportance,
                  ("operatorOptions" .=) <$> _tOperatorOptions])

-- | The enumeration value pair defines two things: a required string value
-- and an optional integer value. The string value defines the necessary
-- query term required to retrieve that item, such as *p0* for a priority
-- item. The integer value determines the ranking of that string value
-- relative to other enumerated values for the same property. For example,
-- you might associate *p0* with *0* and define another enum pair such as
-- *p1* and *1*. You must use the integer value in combination with ordered
-- ranking to set the ranking of a given value relative to other enumerated
-- values for the same property name. Here, a ranking order of DESCENDING
-- for *priority* properties results in a ranking boost for items indexed
-- with a value of *p0* compared to items indexed with a value of *p1*.
-- Without a specified ranking order, the integer value has no effect on
-- item ranking.
--
-- /See:/ 'enumValuePair' smart constructor.
data EnumValuePair =
  EnumValuePair'
    { _evpIntegerValue :: !(Maybe (Textual Int32))
    , _evpStringValue  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnumValuePair' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'evpIntegerValue'
--
-- * 'evpStringValue'
enumValuePair
    :: EnumValuePair
enumValuePair =
  EnumValuePair' {_evpIntegerValue = Nothing, _evpStringValue = Nothing}


-- | The integer value of the EnumValuePair which must be non-negative.
-- Optional.
evpIntegerValue :: Lens' EnumValuePair (Maybe Int32)
evpIntegerValue
  = lens _evpIntegerValue
      (\ s a -> s{_evpIntegerValue = a})
      . mapping _Coerce

-- | The string value of the EnumValuePair. The maximum length is 32
-- characters.
evpStringValue :: Lens' EnumValuePair (Maybe Text)
evpStringValue
  = lens _evpStringValue
      (\ s a -> s{_evpStringValue = a})

instance FromJSON EnumValuePair where
        parseJSON
          = withObject "EnumValuePair"
              (\ o ->
                 EnumValuePair' <$>
                   (o .:? "integerValue") <*> (o .:? "stringValue"))

instance ToJSON EnumValuePair where
        toJSON EnumValuePair'{..}
          = object
              (catMaybes
                 [("integerValue" .=) <$> _evpIntegerValue,
                  ("stringValue" .=) <$> _evpStringValue])

-- | Metadata of a matched search result.
--
-- /See:/ 'metadata' smart constructor.
data Metadata =
  Metadata'
    { _mObjectType     :: !(Maybe Text)
    , _mOwner          :: !(Maybe Person)
    , _mMimeType       :: !(Maybe Text)
    , _mUpdateTime     :: !(Maybe DateTime')
    , _mDisplayOptions :: !(Maybe ResultDisplayMetadata)
    , _mSource         :: !(Maybe Source)
    , _mCreateTime     :: !(Maybe DateTime')
    , _mFields         :: !(Maybe [NamedProperty])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Metadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mObjectType'
--
-- * 'mOwner'
--
-- * 'mMimeType'
--
-- * 'mUpdateTime'
--
-- * 'mDisplayOptions'
--
-- * 'mSource'
--
-- * 'mCreateTime'
--
-- * 'mFields'
metadata
    :: Metadata
metadata =
  Metadata'
    { _mObjectType = Nothing
    , _mOwner = Nothing
    , _mMimeType = Nothing
    , _mUpdateTime = Nothing
    , _mDisplayOptions = Nothing
    , _mSource = Nothing
    , _mCreateTime = Nothing
    , _mFields = Nothing
    }


-- | Object type of the search result.
mObjectType :: Lens' Metadata (Maybe Text)
mObjectType
  = lens _mObjectType (\ s a -> s{_mObjectType = a})

-- | Owner (usually creator) of the document or object of the search result.
mOwner :: Lens' Metadata (Maybe Person)
mOwner = lens _mOwner (\ s a -> s{_mOwner = a})

-- | Mime type of the search result.
mMimeType :: Lens' Metadata (Maybe Text)
mMimeType
  = lens _mMimeType (\ s a -> s{_mMimeType = a})

-- | The last modified date for the object in the search result. If not set
-- in the item, the value returned here is empty. When \`updateTime\` is
-- used for calculating freshness and is not set, this value defaults to 2
-- years from the current time.
mUpdateTime :: Lens' Metadata (Maybe UTCTime)
mUpdateTime
  = lens _mUpdateTime (\ s a -> s{_mUpdateTime = a}) .
      mapping _DateTime

-- | Options that specify how to display a structured data search result.
mDisplayOptions :: Lens' Metadata (Maybe ResultDisplayMetadata)
mDisplayOptions
  = lens _mDisplayOptions
      (\ s a -> s{_mDisplayOptions = a})

-- | The named source for the result, such as Gmail.
mSource :: Lens' Metadata (Maybe Source)
mSource = lens _mSource (\ s a -> s{_mSource = a})

-- | The creation time for this document or object in the search result.
mCreateTime :: Lens' Metadata (Maybe UTCTime)
mCreateTime
  = lens _mCreateTime (\ s a -> s{_mCreateTime = a}) .
      mapping _DateTime

-- | Indexed fields in structured data, returned as a generic named property.
mFields :: Lens' Metadata [NamedProperty]
mFields
  = lens _mFields (\ s a -> s{_mFields = a}) . _Default
      . _Coerce

instance FromJSON Metadata where
        parseJSON
          = withObject "Metadata"
              (\ o ->
                 Metadata' <$>
                   (o .:? "objectType") <*> (o .:? "owner") <*>
                     (o .:? "mimeType")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "displayOptions")
                     <*> (o .:? "source")
                     <*> (o .:? "createTime")
                     <*> (o .:? "fields" .!= mempty))

instance ToJSON Metadata where
        toJSON Metadata'{..}
          = object
              (catMaybes
                 [("objectType" .=) <$> _mObjectType,
                  ("owner" .=) <$> _mOwner,
                  ("mimeType" .=) <$> _mMimeType,
                  ("updateTime" .=) <$> _mUpdateTime,
                  ("displayOptions" .=) <$> _mDisplayOptions,
                  ("source" .=) <$> _mSource,
                  ("createTime" .=) <$> _mCreateTime,
                  ("fields" .=) <$> _mFields])

--
-- /See:/ 'updateDataSourceRequest' smart constructor.
data UpdateDataSourceRequest =
  UpdateDataSourceRequest'
    { _udsrDebugOptions :: !(Maybe DebugOptions)
    , _udsrSource       :: !(Maybe DataSource)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateDataSourceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsrDebugOptions'
--
-- * 'udsrSource'
updateDataSourceRequest
    :: UpdateDataSourceRequest
updateDataSourceRequest =
  UpdateDataSourceRequest' {_udsrDebugOptions = Nothing, _udsrSource = Nothing}


-- | Common debug options.
udsrDebugOptions :: Lens' UpdateDataSourceRequest (Maybe DebugOptions)
udsrDebugOptions
  = lens _udsrDebugOptions
      (\ s a -> s{_udsrDebugOptions = a})

udsrSource :: Lens' UpdateDataSourceRequest (Maybe DataSource)
udsrSource
  = lens _udsrSource (\ s a -> s{_udsrSource = a})

instance FromJSON UpdateDataSourceRequest where
        parseJSON
          = withObject "UpdateDataSourceRequest"
              (\ o ->
                 UpdateDataSourceRequest' <$>
                   (o .:? "debugOptions") <*> (o .:? "source"))

instance ToJSON UpdateDataSourceRequest where
        toJSON UpdateDataSourceRequest'{..}
          = object
              (catMaybes
                 [("debugOptions" .=) <$> _udsrDebugOptions,
                  ("source" .=) <$> _udsrSource])

-- | Datasource is a logical namespace for items to be indexed. All items
-- must belong to a datasource. This is the prerequisite before items can
-- be indexed into Cloud Search.
--
-- /See:/ 'dataSource' smart constructor.
data DataSource =
  DataSource'
    { _dsShortName               :: !(Maybe Text)
    , _dsItemsVisibility         :: !(Maybe [GSuitePrincipal])
    , _dsOperationIds            :: !(Maybe [Text])
    , _dsDisableServing          :: !(Maybe Bool)
    , _dsIndexingServiceAccounts :: !(Maybe [Text])
    , _dsDisableModifications    :: !(Maybe Bool)
    , _dsName                    :: !(Maybe Text)
    , _dsDisplayName             :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsShortName'
--
-- * 'dsItemsVisibility'
--
-- * 'dsOperationIds'
--
-- * 'dsDisableServing'
--
-- * 'dsIndexingServiceAccounts'
--
-- * 'dsDisableModifications'
--
-- * 'dsName'
--
-- * 'dsDisplayName'
dataSource
    :: DataSource
dataSource =
  DataSource'
    { _dsShortName = Nothing
    , _dsItemsVisibility = Nothing
    , _dsOperationIds = Nothing
    , _dsDisableServing = Nothing
    , _dsIndexingServiceAccounts = Nothing
    , _dsDisableModifications = Nothing
    , _dsName = Nothing
    , _dsDisplayName = Nothing
    }


-- | A short name or alias for the source. This value will be used to match
-- the \'source\' operator. For example, if the short name is *\<value>*
-- then queries like *source:\<value>* will only return results for this
-- source. The value must be unique across all datasources. The value must
-- only contain alphanumeric characters (a-zA-Z0-9). The value cannot start
-- with \'google\' and cannot be one of the following: mail, gmail, docs,
-- drive, groups, sites, calendar, hangouts, gplus, keep, people, teams.
-- Its maximum length is 32 characters.
dsShortName :: Lens' DataSource (Maybe Text)
dsShortName
  = lens _dsShortName (\ s a -> s{_dsShortName = a})

-- | This field restricts visibility to items at the datasource level. Items
-- within the datasource are restricted to the union of users and groups
-- included in this field. Note that, this does not ensure access to a
-- specific item, as users need to have ACL permissions on the contained
-- items. This ensures a high level access on the entire datasource, and
-- that the individual items are not shared outside this visibility.
dsItemsVisibility :: Lens' DataSource [GSuitePrincipal]
dsItemsVisibility
  = lens _dsItemsVisibility
      (\ s a -> s{_dsItemsVisibility = a})
      . _Default
      . _Coerce

-- | IDs of the Long Running Operations (LROs) currently running for this
-- schema.
dsOperationIds :: Lens' DataSource [Text]
dsOperationIds
  = lens _dsOperationIds
      (\ s a -> s{_dsOperationIds = a})
      . _Default
      . _Coerce

-- | Disable serving any search or assist results.
dsDisableServing :: Lens' DataSource (Maybe Bool)
dsDisableServing
  = lens _dsDisableServing
      (\ s a -> s{_dsDisableServing = a})

-- | List of service accounts that have indexing access.
dsIndexingServiceAccounts :: Lens' DataSource [Text]
dsIndexingServiceAccounts
  = lens _dsIndexingServiceAccounts
      (\ s a -> s{_dsIndexingServiceAccounts = a})
      . _Default
      . _Coerce

-- | If true, Indexing API rejects any modification calls to this datasource
-- such as create, update, and delete. Disabling this does not imply
-- halting process of previously accepted data.
dsDisableModifications :: Lens' DataSource (Maybe Bool)
dsDisableModifications
  = lens _dsDisableModifications
      (\ s a -> s{_dsDisableModifications = a})

-- | Name of the datasource resource. Format: datasources\/{source_id}.
-- The name is ignored when creating a datasource.
dsName :: Lens' DataSource (Maybe Text)
dsName = lens _dsName (\ s a -> s{_dsName = a})

-- | Required. Display name of the datasource The maximum length is 300
-- characters.
dsDisplayName :: Lens' DataSource (Maybe Text)
dsDisplayName
  = lens _dsDisplayName
      (\ s a -> s{_dsDisplayName = a})

instance FromJSON DataSource where
        parseJSON
          = withObject "DataSource"
              (\ o ->
                 DataSource' <$>
                   (o .:? "shortName") <*>
                     (o .:? "itemsVisibility" .!= mempty)
                     <*> (o .:? "operationIds" .!= mempty)
                     <*> (o .:? "disableServing")
                     <*> (o .:? "indexingServiceAccounts" .!= mempty)
                     <*> (o .:? "disableModifications")
                     <*> (o .:? "name")
                     <*> (o .:? "displayName"))

instance ToJSON DataSource where
        toJSON DataSource'{..}
          = object
              (catMaybes
                 [("shortName" .=) <$> _dsShortName,
                  ("itemsVisibility" .=) <$> _dsItemsVisibility,
                  ("operationIds" .=) <$> _dsOperationIds,
                  ("disableServing" .=) <$> _dsDisableServing,
                  ("indexingServiceAccounts" .=) <$>
                    _dsIndexingServiceAccounts,
                  ("disableModifications" .=) <$>
                    _dsDisableModifications,
                  ("name" .=) <$> _dsName,
                  ("displayName" .=) <$> _dsDisplayName])

-- | List of html values.
--
-- /See:/ 'htmlValues' smart constructor.
newtype HTMLValues =
  HTMLValues'
    { _hvValues :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTMLValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hvValues'
htmlValues
    :: HTMLValues
htmlValues = HTMLValues' {_hvValues = Nothing}


-- | The maximum allowable length for html values is 2048 characters.
hvValues :: Lens' HTMLValues [Text]
hvValues
  = lens _hvValues (\ s a -> s{_hvValues = a}) .
      _Default
      . _Coerce

instance FromJSON HTMLValues where
        parseJSON
          = withObject "HTMLValues"
              (\ o -> HTMLValues' <$> (o .:? "values" .!= mempty))

instance ToJSON HTMLValues where
        toJSON HTMLValues'{..}
          = object (catMaybes [("values" .=) <$> _hvValues])

-- | Gmail Intelligent restricts (i.e. smartlabels, important).
--
-- /See:/ 'gmailIntelligentRestrict' smart constructor.
newtype GmailIntelligentRestrict =
  GmailIntelligentRestrict'
    { _girType :: Maybe GmailIntelligentRestrictType
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GmailIntelligentRestrict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'girType'
gmailIntelligentRestrict
    :: GmailIntelligentRestrict
gmailIntelligentRestrict = GmailIntelligentRestrict' {_girType = Nothing}


girType :: Lens' GmailIntelligentRestrict (Maybe GmailIntelligentRestrictType)
girType = lens _girType (\ s a -> s{_girType = a})

instance FromJSON GmailIntelligentRestrict where
        parseJSON
          = withObject "GmailIntelligentRestrict"
              (\ o -> GmailIntelligentRestrict' <$> (o .:? "type"))

instance ToJSON GmailIntelligentRestrict where
        toJSON GmailIntelligentRestrict'{..}
          = object (catMaybes [("type" .=) <$> _girType])

-- | Used to provide a search operator for html properties. This is optional.
-- Search operators let users restrict the query to specific fields
-- relevant to the type of item being searched.
--
-- /See:/ 'htmlOperatorOptions' smart constructor.
newtype HTMLOperatorOptions =
  HTMLOperatorOptions'
    { _hooOperatorName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTMLOperatorOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hooOperatorName'
htmlOperatorOptions
    :: HTMLOperatorOptions
htmlOperatorOptions = HTMLOperatorOptions' {_hooOperatorName = Nothing}


-- | Indicates the operator name required in the query in order to isolate
-- the html property. For example, if operatorName is *subject* and the
-- property\'s name is *subjectLine*, then queries like *subject:\<value>*
-- will show results only where the value of the property named
-- *subjectLine* matches *\<value>*. By contrast, a search that uses the
-- same *\<value>* without an operator will return all items where
-- *\<value>* matches the value of any html properties or text within the
-- content field for the item. The operator name can only contain lowercase
-- letters (a-z). The maximum length is 32 characters.
hooOperatorName :: Lens' HTMLOperatorOptions (Maybe Text)
hooOperatorName
  = lens _hooOperatorName
      (\ s a -> s{_hooOperatorName = a})

instance FromJSON HTMLOperatorOptions where
        parseJSON
          = withObject "HTMLOperatorOptions"
              (\ o ->
                 HTMLOperatorOptions' <$> (o .:? "operatorName"))

instance ToJSON HTMLOperatorOptions where
        toJSON HTMLOperatorOptions'{..}
          = object
              (catMaybes
                 [("operatorName" .=) <$> _hooOperatorName])

-- | Represents a single object that is an item in the search index, such as
-- a file, folder, or a database record.
--
-- /See:/ 'item' smart constructor.
data Item =
  Item'
    { _iStatus         :: !(Maybe ItemStatus)
    , _iItemType       :: !(Maybe ItemItemType)
    , _iPayload        :: !(Maybe Bytes)
    , _iStructuredData :: !(Maybe ItemStructuredData)
    , _iQueue          :: !(Maybe Text)
    , _iContent        :: !(Maybe ItemContent)
    , _iName           :: !(Maybe Text)
    , _iVersion        :: !(Maybe Bytes)
    , _iMetadata       :: !(Maybe ItemMetadata)
    , _iACL            :: !(Maybe ItemACL)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Item' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iStatus'
--
-- * 'iItemType'
--
-- * 'iPayload'
--
-- * 'iStructuredData'
--
-- * 'iQueue'
--
-- * 'iContent'
--
-- * 'iName'
--
-- * 'iVersion'
--
-- * 'iMetadata'
--
-- * 'iACL'
item
    :: Item
item =
  Item'
    { _iStatus = Nothing
    , _iItemType = Nothing
    , _iPayload = Nothing
    , _iStructuredData = Nothing
    , _iQueue = Nothing
    , _iContent = Nothing
    , _iName = Nothing
    , _iVersion = Nothing
    , _iMetadata = Nothing
    , _iACL = Nothing
    }


-- | Status of the item. Output only field.
iStatus :: Lens' Item (Maybe ItemStatus)
iStatus = lens _iStatus (\ s a -> s{_iStatus = a})

-- | Type for this item.
iItemType :: Lens' Item (Maybe ItemItemType)
iItemType
  = lens _iItemType (\ s a -> s{_iItemType = a})

-- | Additional state connector can store for this item. The maximum length
-- is 10000 bytes.
iPayload :: Lens' Item (Maybe ByteString)
iPayload
  = lens _iPayload (\ s a -> s{_iPayload = a}) .
      mapping _Bytes

-- | The structured data for the item that should conform to a registered
-- object definition in the schema for the data source.
iStructuredData :: Lens' Item (Maybe ItemStructuredData)
iStructuredData
  = lens _iStructuredData
      (\ s a -> s{_iStructuredData = a})

-- | Queue this item belongs to. The maximum length is 100 characters.
iQueue :: Lens' Item (Maybe Text)
iQueue = lens _iQueue (\ s a -> s{_iQueue = a})

-- | Item content to be indexed and made text searchable.
iContent :: Lens' Item (Maybe ItemContent)
iContent = lens _iContent (\ s a -> s{_iContent = a})

-- | Name of the Item. Format: datasources\/{source_id}\/items\/{item_id}
-- This is a required field. The maximum length is 1536 characters.
iName :: Lens' Item (Maybe Text)
iName = lens _iName (\ s a -> s{_iName = a})

-- | Required. The indexing system stores the version from the datasource as
-- a byte string and compares the Item version in the index to the version
-- of the queued Item using lexical ordering.
-- Cloud Search Indexing won\'t index or delete any queued item with a
-- version value that is less than or equal to the version of the currently
-- indexed item. The maximum length for this field is 1024 bytes.
iVersion :: Lens' Item (Maybe ByteString)
iVersion
  = lens _iVersion (\ s a -> s{_iVersion = a}) .
      mapping _Bytes

-- | Metadata information.
iMetadata :: Lens' Item (Maybe ItemMetadata)
iMetadata
  = lens _iMetadata (\ s a -> s{_iMetadata = a})

-- | Access control list for this item.
iACL :: Lens' Item (Maybe ItemACL)
iACL = lens _iACL (\ s a -> s{_iACL = a})

instance FromJSON Item where
        parseJSON
          = withObject "Item"
              (\ o ->
                 Item' <$>
                   (o .:? "status") <*> (o .:? "itemType") <*>
                     (o .:? "payload")
                     <*> (o .:? "structuredData")
                     <*> (o .:? "queue")
                     <*> (o .:? "content")
                     <*> (o .:? "name")
                     <*> (o .:? "version")
                     <*> (o .:? "metadata")
                     <*> (o .:? "acl"))

instance ToJSON Item where
        toJSON Item'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _iStatus,
                  ("itemType" .=) <$> _iItemType,
                  ("payload" .=) <$> _iPayload,
                  ("structuredData" .=) <$> _iStructuredData,
                  ("queue" .=) <$> _iQueue,
                  ("content" .=) <$> _iContent, ("name" .=) <$> _iName,
                  ("version" .=) <$> _iVersion,
                  ("metadata" .=) <$> _iMetadata,
                  ("acl" .=) <$> _iACL])

-- | Defines sources for the suggest\/search APIs.
--
-- /See:/ 'source' smart constructor.
data Source =
  Source'
    { _sName             :: !(Maybe Text)
    , _sPredefinedSource :: !(Maybe SourcePredefinedSource)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Source' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sName'
--
-- * 'sPredefinedSource'
source
    :: Source
source = Source' {_sName = Nothing, _sPredefinedSource = Nothing}


-- | Source name for content indexed by the Indexing API.
sName :: Lens' Source (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | Predefined content source for Google Apps.
sPredefinedSource :: Lens' Source (Maybe SourcePredefinedSource)
sPredefinedSource
  = lens _sPredefinedSource
      (\ s a -> s{_sPredefinedSource = a})

instance FromJSON Source where
        parseJSON
          = withObject "Source"
              (\ o ->
                 Source' <$>
                   (o .:? "name") <*> (o .:? "predefinedSource"))

instance ToJSON Source where
        toJSON Source'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _sName,
                  ("predefinedSource" .=) <$> _sPredefinedSource])

-- | The display options for a property.
--
-- /See:/ 'propertyDisplayOptions' smart constructor.
newtype PropertyDisplayOptions =
  PropertyDisplayOptions'
    { _pdoDisplayLabel :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PropertyDisplayOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdoDisplayLabel'
propertyDisplayOptions
    :: PropertyDisplayOptions
propertyDisplayOptions = PropertyDisplayOptions' {_pdoDisplayLabel = Nothing}


-- | The user friendly label for the property that will be used if the
-- property is specified to be displayed in ObjectDisplayOptions. If given,
-- the display label will be shown in front of the property values when the
-- property is part of the object display options. For example, if the
-- property value is \'1\', the value by itself may not be useful context
-- for the user. If the display name given was \'priority\', then the user
-- will see \'priority : 1\' in the search results which provides clear
-- conext to search users. This is OPTIONAL; if not given, only the
-- property values will be displayed. The maximum length is 32 characters.
pdoDisplayLabel :: Lens' PropertyDisplayOptions (Maybe Text)
pdoDisplayLabel
  = lens _pdoDisplayLabel
      (\ s a -> s{_pdoDisplayLabel = a})

instance FromJSON PropertyDisplayOptions where
        parseJSON
          = withObject "PropertyDisplayOptions"
              (\ o ->
                 PropertyDisplayOptions' <$> (o .:? "displayLabel"))

instance ToJSON PropertyDisplayOptions where
        toJSON PropertyDisplayOptions'{..}
          = object
              (catMaybes
                 [("displayLabel" .=) <$> _pdoDisplayLabel])

-- | List of object values.
--
-- /See:/ 'objectValues' smart constructor.
newtype ObjectValues =
  ObjectValues'
    { _ovValues :: Maybe [StructuredDataObject]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ObjectValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ovValues'
objectValues
    :: ObjectValues
objectValues = ObjectValues' {_ovValues = Nothing}


ovValues :: Lens' ObjectValues [StructuredDataObject]
ovValues
  = lens _ovValues (\ s a -> s{_ovValues = a}) .
      _Default
      . _Coerce

instance FromJSON ObjectValues where
        parseJSON
          = withObject "ObjectValues"
              (\ o ->
                 ObjectValues' <$> (o .:? "values" .!= mempty))

instance ToJSON ObjectValues where
        toJSON ObjectValues'{..}
          = object (catMaybes [("values" .=) <$> _ovValues])

-- | The options for an object.
--
-- /See:/ 'objectOptions' smart constructor.
data ObjectOptions =
  ObjectOptions'
    { _ooFreshnessOptions :: !(Maybe FreshnessOptions)
    , _ooDisplayOptions   :: !(Maybe ObjectDisplayOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ObjectOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ooFreshnessOptions'
--
-- * 'ooDisplayOptions'
objectOptions
    :: ObjectOptions
objectOptions =
  ObjectOptions' {_ooFreshnessOptions = Nothing, _ooDisplayOptions = Nothing}


-- | The freshness options for an object.
ooFreshnessOptions :: Lens' ObjectOptions (Maybe FreshnessOptions)
ooFreshnessOptions
  = lens _ooFreshnessOptions
      (\ s a -> s{_ooFreshnessOptions = a})

-- | Options that determine how the object is displayed in the Cloud Search
-- results page.
ooDisplayOptions :: Lens' ObjectOptions (Maybe ObjectDisplayOptions)
ooDisplayOptions
  = lens _ooDisplayOptions
      (\ s a -> s{_ooDisplayOptions = a})

instance FromJSON ObjectOptions where
        parseJSON
          = withObject "ObjectOptions"
              (\ o ->
                 ObjectOptions' <$>
                   (o .:? "freshnessOptions") <*>
                     (o .:? "displayOptions"))

instance ToJSON ObjectOptions where
        toJSON ObjectOptions'{..}
          = object
              (catMaybes
                 [("freshnessOptions" .=) <$> _ooFreshnessOptions,
                  ("displayOptions" .=) <$> _ooDisplayOptions])

-- | Specifies operators to return facet results for. There will be one
-- FacetResult for every source_name\/object_type\/operator_name
-- combination.
--
-- /See:/ 'facetOptions' smart constructor.
data FacetOptions =
  FacetOptions'
    { _fSourceName      :: !(Maybe Text)
    , _fObjectType      :: !(Maybe Text)
    , _fNumFacetBuckets :: !(Maybe (Textual Int32))
    , _fOperatorName    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FacetOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fSourceName'
--
-- * 'fObjectType'
--
-- * 'fNumFacetBuckets'
--
-- * 'fOperatorName'
facetOptions
    :: FacetOptions
facetOptions =
  FacetOptions'
    { _fSourceName = Nothing
    , _fObjectType = Nothing
    , _fNumFacetBuckets = Nothing
    , _fOperatorName = Nothing
    }


-- | Source name to facet on. Format: datasources\/{source_id} If empty, all
-- data sources will be used.
fSourceName :: Lens' FacetOptions (Maybe Text)
fSourceName
  = lens _fSourceName (\ s a -> s{_fSourceName = a})

-- | If object_type is set, only those objects of that type will be used to
-- compute facets. If empty, then all objects will be used to compute
-- facets.
fObjectType :: Lens' FacetOptions (Maybe Text)
fObjectType
  = lens _fObjectType (\ s a -> s{_fObjectType = a})

-- | Maximum number of facet buckets that should be returned for this facet.
-- Defaults to 10. Maximum value is 100.
fNumFacetBuckets :: Lens' FacetOptions (Maybe Int32)
fNumFacetBuckets
  = lens _fNumFacetBuckets
      (\ s a -> s{_fNumFacetBuckets = a})
      . mapping _Coerce

-- | Name of the operator chosen for faceting. \'see
-- cloudsearch.SchemaPropertyOptions
fOperatorName :: Lens' FacetOptions (Maybe Text)
fOperatorName
  = lens _fOperatorName
      (\ s a -> s{_fOperatorName = a})

instance FromJSON FacetOptions where
        parseJSON
          = withObject "FacetOptions"
              (\ o ->
                 FacetOptions' <$>
                   (o .:? "sourceName") <*> (o .:? "objectType") <*>
                     (o .:? "numFacetBuckets")
                     <*> (o .:? "operatorName"))

instance ToJSON FacetOptions where
        toJSON FacetOptions'{..}
          = object
              (catMaybes
                 [("sourceName" .=) <$> _fSourceName,
                  ("objectType" .=) <$> _fObjectType,
                  ("numFacetBuckets" .=) <$> _fNumFacetBuckets,
                  ("operatorName" .=) <$> _fOperatorName])

-- | Request of suggest API.
--
-- /See:/ 'suggestRequest' smart constructor.
data SuggestRequest =
  SuggestRequest'
    { _sDataSourceRestrictions :: !(Maybe [DataSourceRestriction])
    , _sQuery                  :: !(Maybe Text)
    , _sRequestOptions         :: !(Maybe RequestOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SuggestRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDataSourceRestrictions'
--
-- * 'sQuery'
--
-- * 'sRequestOptions'
suggestRequest
    :: SuggestRequest
suggestRequest =
  SuggestRequest'
    { _sDataSourceRestrictions = Nothing
    , _sQuery = Nothing
    , _sRequestOptions = Nothing
    }


-- | The sources to use for suggestions. If not specified, all data sources
-- from the current search application are used. Suggestions are based on
-- Gmail titles. Suggestions from third party sources are not available.
sDataSourceRestrictions :: Lens' SuggestRequest [DataSourceRestriction]
sDataSourceRestrictions
  = lens _sDataSourceRestrictions
      (\ s a -> s{_sDataSourceRestrictions = a})
      . _Default
      . _Coerce

-- | Partial query for which autocomplete suggestions will be shown. For
-- example, if the query is \"sea\", then the server might return
-- \"season\", \"search\", \"seagull\" and so on.
sQuery :: Lens' SuggestRequest (Maybe Text)
sQuery = lens _sQuery (\ s a -> s{_sQuery = a})

-- | Request options, such as the search application and user timezone.
sRequestOptions :: Lens' SuggestRequest (Maybe RequestOptions)
sRequestOptions
  = lens _sRequestOptions
      (\ s a -> s{_sRequestOptions = a})

instance FromJSON SuggestRequest where
        parseJSON
          = withObject "SuggestRequest"
              (\ o ->
                 SuggestRequest' <$>
                   (o .:? "dataSourceRestrictions" .!= mempty) <*>
                     (o .:? "query")
                     <*> (o .:? "requestOptions"))

instance ToJSON SuggestRequest where
        toJSON SuggestRequest'{..}
          = object
              (catMaybes
                 [("dataSourceRestrictions" .=) <$>
                    _sDataSourceRestrictions,
                  ("query" .=) <$> _sQuery,
                  ("requestOptions" .=) <$> _sRequestOptions])

-- | A generic way of expressing filters in a query, which supports two
-- approaches:
-- **1. Setting a ValueFilter.** The name must match an operator_name
-- defined in the schema for your data source.
-- **2. Setting a CompositeFilter.** The filters are evaluated using the
-- logical operator. The top-level operators can only be either an AND or a
-- NOT. AND can appear only at the top-most level. OR can appear only under
-- a top-level AND.
--
-- /See:/ 'filter'' smart constructor.
data Filter =
  Filter'
    { _fCompositeFilter :: !(Maybe CompositeFilter)
    , _fValueFilter     :: !(Maybe ValueFilter)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Filter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fCompositeFilter'
--
-- * 'fValueFilter'
filter'
    :: Filter
filter' = Filter' {_fCompositeFilter = Nothing, _fValueFilter = Nothing}


fCompositeFilter :: Lens' Filter (Maybe CompositeFilter)
fCompositeFilter
  = lens _fCompositeFilter
      (\ s a -> s{_fCompositeFilter = a})

fValueFilter :: Lens' Filter (Maybe ValueFilter)
fValueFilter
  = lens _fValueFilter (\ s a -> s{_fValueFilter = a})

instance FromJSON Filter where
        parseJSON
          = withObject "Filter"
              (\ o ->
                 Filter' <$>
                   (o .:? "compositeFilter") <*> (o .:? "valueFilter"))

instance ToJSON Filter where
        toJSON Filter'{..}
          = object
              (catMaybes
                 [("compositeFilter" .=) <$> _fCompositeFilter,
                  ("valueFilter" .=) <$> _fValueFilter])

-- | The definition for an object within a data source.
--
-- /See:/ 'objectDefinition' smart constructor.
data ObjectDefinition =
  ObjectDefinition'
    { _odName                :: !(Maybe Text)
    , _odOptions             :: !(Maybe ObjectOptions)
    , _odPropertyDefinitions :: !(Maybe [PropertyDefinition])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ObjectDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odName'
--
-- * 'odOptions'
--
-- * 'odPropertyDefinitions'
objectDefinition
    :: ObjectDefinition
objectDefinition =
  ObjectDefinition'
    {_odName = Nothing, _odOptions = Nothing, _odPropertyDefinitions = Nothing}


-- | Name for the object, which then defines its type. Item indexing requests
-- should set the objectType field equal to this value. For example, if
-- *name* is *Document*, then indexing requests for items of type Document
-- should set objectType equal to *Document*. Each object definition must
-- be uniquely named within a schema. The name must start with a letter and
-- can only contain letters (A-Z, a-z) or numbers (0-9). The maximum length
-- is 256 characters.
odName :: Lens' ObjectDefinition (Maybe Text)
odName = lens _odName (\ s a -> s{_odName = a})

-- | The optional object-specific options.
odOptions :: Lens' ObjectDefinition (Maybe ObjectOptions)
odOptions
  = lens _odOptions (\ s a -> s{_odOptions = a})

-- | The property definitions for the object. The maximum number of elements
-- is 1000.
odPropertyDefinitions :: Lens' ObjectDefinition [PropertyDefinition]
odPropertyDefinitions
  = lens _odPropertyDefinitions
      (\ s a -> s{_odPropertyDefinitions = a})
      . _Default
      . _Coerce

instance FromJSON ObjectDefinition where
        parseJSON
          = withObject "ObjectDefinition"
              (\ o ->
                 ObjectDefinition' <$>
                   (o .:? "name") <*> (o .:? "options") <*>
                     (o .:? "propertyDefinitions" .!= mempty))

instance ToJSON ObjectDefinition where
        toJSON ObjectDefinition'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _odName,
                  ("options" .=) <$> _odOptions,
                  ("propertyDefinitions" .=) <$>
                    _odPropertyDefinitions])

--
-- /See:/ 'pollItemsRequest' smart constructor.
data PollItemsRequest =
  PollItemsRequest'
    { _pQueue         :: !(Maybe Text)
    , _pDebugOptions  :: !(Maybe DebugOptions)
    , _pConnectorName :: !(Maybe Text)
    , _pStatusCodes   :: !(Maybe [Text])
    , _pLimit         :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PollItemsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pQueue'
--
-- * 'pDebugOptions'
--
-- * 'pConnectorName'
--
-- * 'pStatusCodes'
--
-- * 'pLimit'
pollItemsRequest
    :: PollItemsRequest
pollItemsRequest =
  PollItemsRequest'
    { _pQueue = Nothing
    , _pDebugOptions = Nothing
    , _pConnectorName = Nothing
    , _pStatusCodes = Nothing
    , _pLimit = Nothing
    }


-- | Queue name to fetch items from. If unspecified, PollItems will fetch
-- from \'default\' queue. The maximum length is 100 characters.
pQueue :: Lens' PollItemsRequest (Maybe Text)
pQueue = lens _pQueue (\ s a -> s{_pQueue = a})

-- | Common debug options.
pDebugOptions :: Lens' PollItemsRequest (Maybe DebugOptions)
pDebugOptions
  = lens _pDebugOptions
      (\ s a -> s{_pDebugOptions = a})

-- | Name of connector making this call.
-- Format: datasources\/{source_id}\/connectors\/{ID}
pConnectorName :: Lens' PollItemsRequest (Maybe Text)
pConnectorName
  = lens _pConnectorName
      (\ s a -> s{_pConnectorName = a})

-- | Limit the items polled to the ones with these statuses.
pStatusCodes :: Lens' PollItemsRequest [Text]
pStatusCodes
  = lens _pStatusCodes (\ s a -> s{_pStatusCodes = a})
      . _Default
      . _Coerce

-- | Maximum number of items to return.
-- The maximum and the default value is 1000
pLimit :: Lens' PollItemsRequest (Maybe Int32)
pLimit
  = lens _pLimit (\ s a -> s{_pLimit = a}) .
      mapping _Coerce

instance FromJSON PollItemsRequest where
        parseJSON
          = withObject "PollItemsRequest"
              (\ o ->
                 PollItemsRequest' <$>
                   (o .:? "queue") <*> (o .:? "debugOptions") <*>
                     (o .:? "connectorName")
                     <*> (o .:? "statusCodes" .!= mempty)
                     <*> (o .:? "limit"))

instance ToJSON PollItemsRequest where
        toJSON PollItemsRequest'{..}
          = object
              (catMaybes
                 [("queue" .=) <$> _pQueue,
                  ("debugOptions" .=) <$> _pDebugOptions,
                  ("connectorName" .=) <$> _pConnectorName,
                  ("statusCodes" .=) <$> _pStatusCodes,
                  ("limit" .=) <$> _pLimit])

--
-- /See:/ 'queryInterpretation' smart constructor.
data QueryInterpretation =
  QueryInterpretation'
    { _qiInterpretedQuery   :: !(Maybe Text)
    , _qiInterpretationType :: !(Maybe QueryInterpretationInterpretationType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryInterpretation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qiInterpretedQuery'
--
-- * 'qiInterpretationType'
queryInterpretation
    :: QueryInterpretation
queryInterpretation =
  QueryInterpretation'
    {_qiInterpretedQuery = Nothing, _qiInterpretationType = Nothing}


-- | The interpretation of the query used in search. For example, query
-- \"email from john\" will be interpreted as \"from:john source:mail\"
qiInterpretedQuery :: Lens' QueryInterpretation (Maybe Text)
qiInterpretedQuery
  = lens _qiInterpretedQuery
      (\ s a -> s{_qiInterpretedQuery = a})

qiInterpretationType :: Lens' QueryInterpretation (Maybe QueryInterpretationInterpretationType)
qiInterpretationType
  = lens _qiInterpretationType
      (\ s a -> s{_qiInterpretationType = a})

instance FromJSON QueryInterpretation where
        parseJSON
          = withObject "QueryInterpretation"
              (\ o ->
                 QueryInterpretation' <$>
                   (o .:? "interpretedQuery") <*>
                     (o .:? "interpretationType"))

instance ToJSON QueryInterpretation where
        toJSON QueryInterpretation'{..}
          = object
              (catMaybes
                 [("interpretedQuery" .=) <$> _qiInterpretedQuery,
                  ("interpretationType" .=) <$> _qiInterpretationType])

--
-- /See:/ 'unmAppedIdentity' smart constructor.
data UnmAppedIdentity =
  UnmAppedIdentity'
    { _uaiResolutionStatusCode :: !(Maybe UnmAppedIdentityResolutionStatusCode)
    , _uaiExternalIdentity     :: !(Maybe Principal)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UnmAppedIdentity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uaiResolutionStatusCode'
--
-- * 'uaiExternalIdentity'
unmAppedIdentity
    :: UnmAppedIdentity
unmAppedIdentity =
  UnmAppedIdentity'
    {_uaiResolutionStatusCode = Nothing, _uaiExternalIdentity = Nothing}


-- | The resolution status for the external identity.
uaiResolutionStatusCode :: Lens' UnmAppedIdentity (Maybe UnmAppedIdentityResolutionStatusCode)
uaiResolutionStatusCode
  = lens _uaiResolutionStatusCode
      (\ s a -> s{_uaiResolutionStatusCode = a})

-- | The resource name for an external user.
uaiExternalIdentity :: Lens' UnmAppedIdentity (Maybe Principal)
uaiExternalIdentity
  = lens _uaiExternalIdentity
      (\ s a -> s{_uaiExternalIdentity = a})

instance FromJSON UnmAppedIdentity where
        parseJSON
          = withObject "UnmAppedIdentity"
              (\ o ->
                 UnmAppedIdentity' <$>
                   (o .:? "resolutionStatusCode") <*>
                     (o .:? "externalIdentity"))

instance ToJSON UnmAppedIdentity where
        toJSON UnmAppedIdentity'{..}
          = object
              (catMaybes
                 [("resolutionStatusCode" .=) <$>
                    _uaiResolutionStatusCode,
                  ("externalIdentity" .=) <$> _uaiExternalIdentity])

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'operationMetadata' smart constructor.
newtype OperationMetadata =
  OperationMetadata'
    { _omAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omAddtional'
operationMetadata
    :: HashMap Text JSONValue -- ^ 'omAddtional'
    -> OperationMetadata
operationMetadata pOmAddtional_ =
  OperationMetadata' {_omAddtional = _Coerce # pOmAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
omAddtional :: Lens' OperationMetadata (HashMap Text JSONValue)
omAddtional
  = lens _omAddtional (\ s a -> s{_omAddtional = a}) .
      _Coerce

instance FromJSON OperationMetadata where
        parseJSON
          = withObject "OperationMetadata"
              (\ o -> OperationMetadata' <$> (parseJSONObject o))

instance ToJSON OperationMetadata where
        toJSON = toJSON . _omAddtional

-- | Aggregation of items by status code as of the specified date.
--
-- /See:/ 'customerIndexStats' smart constructor.
data CustomerIndexStats =
  CustomerIndexStats'
    { _cisItemCountByStatus :: !(Maybe [ItemCountByStatus])
    , _cisDate              :: !(Maybe Date)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomerIndexStats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cisItemCountByStatus'
--
-- * 'cisDate'
customerIndexStats
    :: CustomerIndexStats
customerIndexStats =
  CustomerIndexStats' {_cisItemCountByStatus = Nothing, _cisDate = Nothing}


-- | Number of items aggregrated by status code.
cisItemCountByStatus :: Lens' CustomerIndexStats [ItemCountByStatus]
cisItemCountByStatus
  = lens _cisItemCountByStatus
      (\ s a -> s{_cisItemCountByStatus = a})
      . _Default
      . _Coerce

-- | Date for which statistics were calculated.
cisDate :: Lens' CustomerIndexStats (Maybe Date)
cisDate = lens _cisDate (\ s a -> s{_cisDate = a})

instance FromJSON CustomerIndexStats where
        parseJSON
          = withObject "CustomerIndexStats"
              (\ o ->
                 CustomerIndexStats' <$>
                   (o .:? "itemCountByStatus" .!= mempty) <*>
                     (o .:? "date"))

instance ToJSON CustomerIndexStats where
        toJSON CustomerIndexStats'{..}
          = object
              (catMaybes
                 [("itemCountByStatus" .=) <$> _cisItemCountByStatus,
                  ("date" .=) <$> _cisDate])

-- | Represents an item to be pushed to the indexing queue.
--
-- /See:/ 'pushItem' smart constructor.
data PushItem =
  PushItem'
    { _piRepositoryError    :: !(Maybe RepositoryError)
    , _piContentHash        :: !(Maybe Text)
    , _piStructuredDataHash :: !(Maybe Text)
    , _piPayload            :: !(Maybe Bytes)
    , _piQueue              :: !(Maybe Text)
    , _piMetadataHash       :: !(Maybe Text)
    , _piType               :: !(Maybe PushItemType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PushItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piRepositoryError'
--
-- * 'piContentHash'
--
-- * 'piStructuredDataHash'
--
-- * 'piPayload'
--
-- * 'piQueue'
--
-- * 'piMetadataHash'
--
-- * 'piType'
pushItem
    :: PushItem
pushItem =
  PushItem'
    { _piRepositoryError = Nothing
    , _piContentHash = Nothing
    , _piStructuredDataHash = Nothing
    , _piPayload = Nothing
    , _piQueue = Nothing
    , _piMetadataHash = Nothing
    , _piType = Nothing
    }


-- | Populate this field to store Connector or repository error details. This
-- information is displayed in the Admin Console. This field may only be
-- populated when the Type is REPOSITORY_ERROR.
piRepositoryError :: Lens' PushItem (Maybe RepositoryError)
piRepositoryError
  = lens _piRepositoryError
      (\ s a -> s{_piRepositoryError = a})

-- | Content hash of the item according to the repository. If specified, this
-- is used to determine how to modify this item\'s status. Setting this
-- field and the type field results in argument error. The maximum length
-- is 2048 characters.
piContentHash :: Lens' PushItem (Maybe Text)
piContentHash
  = lens _piContentHash
      (\ s a -> s{_piContentHash = a})

-- | Structured data hash of the item according to the repository. If
-- specified, this is used to determine how to modify this item\'s status.
-- Setting this field and the type field results in argument error. The
-- maximum length is 2048 characters.
piStructuredDataHash :: Lens' PushItem (Maybe Text)
piStructuredDataHash
  = lens _piStructuredDataHash
      (\ s a -> s{_piStructuredDataHash = a})

-- | Provides additional document state information for the connector, such
-- as an alternate repository ID and other metadata. The maximum length is
-- 8192 bytes.
piPayload :: Lens' PushItem (Maybe ByteString)
piPayload
  = lens _piPayload (\ s a -> s{_piPayload = a}) .
      mapping _Bytes

-- | Queue to which this item belongs to. The 'default' queue is chosen if
-- this field is not specified. The maximum length is 512 characters.
piQueue :: Lens' PushItem (Maybe Text)
piQueue = lens _piQueue (\ s a -> s{_piQueue = a})

-- | Metadata hash of the item according to the repository. If specified,
-- this is used to determine how to modify this item\'s status. Setting
-- this field and the type field results in argument error. The maximum
-- length is 2048 characters.
piMetadataHash :: Lens' PushItem (Maybe Text)
piMetadataHash
  = lens _piMetadataHash
      (\ s a -> s{_piMetadataHash = a})

-- | The type of the push operation that defines the push behavior.
piType :: Lens' PushItem (Maybe PushItemType)
piType = lens _piType (\ s a -> s{_piType = a})

instance FromJSON PushItem where
        parseJSON
          = withObject "PushItem"
              (\ o ->
                 PushItem' <$>
                   (o .:? "repositoryError") <*> (o .:? "contentHash")
                     <*> (o .:? "structuredDataHash")
                     <*> (o .:? "payload")
                     <*> (o .:? "queue")
                     <*> (o .:? "metadataHash")
                     <*> (o .:? "type"))

instance ToJSON PushItem where
        toJSON PushItem'{..}
          = object
              (catMaybes
                 [("repositoryError" .=) <$> _piRepositoryError,
                  ("contentHash" .=) <$> _piContentHash,
                  ("structuredDataHash" .=) <$> _piStructuredDataHash,
                  ("payload" .=) <$> _piPayload,
                  ("queue" .=) <$> _piQueue,
                  ("metadataHash" .=) <$> _piMetadataHash,
                  ("type" .=) <$> _piType])

-- | Error message per source response.
--
-- /See:/ 'errorMessage' smart constructor.
data ErrorMessage =
  ErrorMessage'
    { _emSource       :: !(Maybe Source)
    , _emErrorMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ErrorMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'emSource'
--
-- * 'emErrorMessage'
errorMessage
    :: ErrorMessage
errorMessage = ErrorMessage' {_emSource = Nothing, _emErrorMessage = Nothing}


emSource :: Lens' ErrorMessage (Maybe Source)
emSource = lens _emSource (\ s a -> s{_emSource = a})

emErrorMessage :: Lens' ErrorMessage (Maybe Text)
emErrorMessage
  = lens _emErrorMessage
      (\ s a -> s{_emErrorMessage = a})

instance FromJSON ErrorMessage where
        parseJSON
          = withObject "ErrorMessage"
              (\ o ->
                 ErrorMessage' <$>
                   (o .:? "source") <*> (o .:? "errorMessage"))

instance ToJSON ErrorMessage where
        toJSON ErrorMessage'{..}
          = object
              (catMaybes
                 [("source" .=) <$> _emSource,
                  ("errorMessage" .=) <$> _emErrorMessage])

-- | Options for boolean properties.
--
-- /See:/ 'booleanPropertyOptions' smart constructor.
newtype BooleanPropertyOptions =
  BooleanPropertyOptions'
    { _bpoOperatorOptions :: Maybe BooleanOperatorOptions
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BooleanPropertyOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bpoOperatorOptions'
booleanPropertyOptions
    :: BooleanPropertyOptions
booleanPropertyOptions = BooleanPropertyOptions' {_bpoOperatorOptions = Nothing}


-- | If set, describes how the boolean should be used as a search operator.
bpoOperatorOptions :: Lens' BooleanPropertyOptions (Maybe BooleanOperatorOptions)
bpoOperatorOptions
  = lens _bpoOperatorOptions
      (\ s a -> s{_bpoOperatorOptions = a})

instance FromJSON BooleanPropertyOptions where
        parseJSON
          = withObject "BooleanPropertyOptions"
              (\ o ->
                 BooleanPropertyOptions' <$>
                   (o .:? "operatorOptions"))

instance ToJSON BooleanPropertyOptions where
        toJSON BooleanPropertyOptions'{..}
          = object
              (catMaybes
                 [("operatorOptions" .=) <$> _bpoOperatorOptions])

--
-- /See:/ 'valueFilter' smart constructor.
data ValueFilter =
  ValueFilter'
    { _vfValue        :: !(Maybe Value)
    , _vfOperatorName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ValueFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vfValue'
--
-- * 'vfOperatorName'
valueFilter
    :: ValueFilter
valueFilter = ValueFilter' {_vfValue = Nothing, _vfOperatorName = Nothing}


-- | The value to be compared with.
vfValue :: Lens' ValueFilter (Maybe Value)
vfValue = lens _vfValue (\ s a -> s{_vfValue = a})

-- | The \`operator_name\` applied to the query, such as
-- *price_greater_than*. The filter can work against both types of filters
-- defined in the schema for your data source:
-- 1. \`operator_name\`, where the query filters results by the property
-- that matches the value.
-- 2. \`greater_than_operator_name\` or \`less_than_operator_name\` in your
-- schema. The query filters the results for the property values that are
-- greater than or less than the supplied value in the query.
vfOperatorName :: Lens' ValueFilter (Maybe Text)
vfOperatorName
  = lens _vfOperatorName
      (\ s a -> s{_vfOperatorName = a})

instance FromJSON ValueFilter where
        parseJSON
          = withObject "ValueFilter"
              (\ o ->
                 ValueFilter' <$>
                   (o .:? "value") <*> (o .:? "operatorName"))

instance ToJSON ValueFilter where
        toJSON ValueFilter'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _vfValue,
                  ("operatorName" .=) <$> _vfOperatorName])

-- | Used to provide a search operator for enum properties. This is optional.
-- Search operators let users restrict the query to specific fields
-- relevant to the type of item being searched. For example, if you provide
-- no operator for a *priority* enum property with possible values *p0* and
-- *p1*, a query that contains the term *p0* will return items that have
-- *p0* as the value of the *priority* property, as well as any items that
-- contain the string *p0* in other fields. If you provide an operator name
-- for the enum, such as *priority*, then search users can use that
-- operator to refine results to only items that have *p0* as this
-- property\'s value, with the query *priority:p0*.
--
-- /See:/ 'enumOperatorOptions' smart constructor.
newtype EnumOperatorOptions =
  EnumOperatorOptions'
    { _eooOperatorName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnumOperatorOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eooOperatorName'
enumOperatorOptions
    :: EnumOperatorOptions
enumOperatorOptions = EnumOperatorOptions' {_eooOperatorName = Nothing}


-- | Indicates the operator name required in the query in order to isolate
-- the enum property. For example, if operatorName is *priority* and the
-- property\'s name is *priorityVal*, then queries like *priority:\<value>*
-- will show results only where the value of the property named
-- *priorityVal* matches *\<value>*. By contrast, a search that uses the
-- same *\<value>* without an operator will return all items where
-- *\<value>* matches the value of any String properties or text within the
-- content field for the item. The operator name can only contain lowercase
-- letters (a-z). The maximum length is 32 characters.
eooOperatorName :: Lens' EnumOperatorOptions (Maybe Text)
eooOperatorName
  = lens _eooOperatorName
      (\ s a -> s{_eooOperatorName = a})

instance FromJSON EnumOperatorOptions where
        parseJSON
          = withObject "EnumOperatorOptions"
              (\ o ->
                 EnumOperatorOptions' <$> (o .:? "operatorName"))

instance ToJSON EnumOperatorOptions where
        toJSON EnumOperatorOptions'{..}
          = object
              (catMaybes
                 [("operatorName" .=) <$> _eooOperatorName])

-- | Gmail Attachment restricts (i.e. has:attachment, has:drive,
-- filename:pdf).
--
-- /See:/ 'gmailAttachmentRestrict' smart constructor.
newtype GmailAttachmentRestrict =
  GmailAttachmentRestrict'
    { _gType :: Maybe GmailAttachmentRestrictType
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GmailAttachmentRestrict' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gType'
gmailAttachmentRestrict
    :: GmailAttachmentRestrict
gmailAttachmentRestrict = GmailAttachmentRestrict' {_gType = Nothing}


gType :: Lens' GmailAttachmentRestrict (Maybe GmailAttachmentRestrictType)
gType = lens _gType (\ s a -> s{_gType = a})

instance FromJSON GmailAttachmentRestrict where
        parseJSON
          = withObject "GmailAttachmentRestrict"
              (\ o -> GmailAttachmentRestrict' <$> (o .:? "type"))

instance ToJSON GmailAttachmentRestrict where
        toJSON GmailAttachmentRestrict'{..}
          = object (catMaybes [("type" .=) <$> _gType])

-- | Options for date properties.
--
-- /See:/ 'datePropertyOptions' smart constructor.
newtype DatePropertyOptions =
  DatePropertyOptions'
    { _dOperatorOptions :: Maybe DateOperatorOptions
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatePropertyOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dOperatorOptions'
datePropertyOptions
    :: DatePropertyOptions
datePropertyOptions = DatePropertyOptions' {_dOperatorOptions = Nothing}


-- | If set, describes how the date should be used as a search operator.
dOperatorOptions :: Lens' DatePropertyOptions (Maybe DateOperatorOptions)
dOperatorOptions
  = lens _dOperatorOptions
      (\ s a -> s{_dOperatorOptions = a})

instance FromJSON DatePropertyOptions where
        parseJSON
          = withObject "DatePropertyOptions"
              (\ o ->
                 DatePropertyOptions' <$> (o .:? "operatorOptions"))

instance ToJSON DatePropertyOptions where
        toJSON DatePropertyOptions'{..}
          = object
              (catMaybes
                 [("operatorOptions" .=) <$> _dOperatorOptions])

-- | List of enum values.
--
-- /See:/ 'enumValues' smart constructor.
newtype EnumValues =
  EnumValues'
    { _evValues :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnumValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'evValues'
enumValues
    :: EnumValues
enumValues = EnumValues' {_evValues = Nothing}


-- | The maximum allowable length for string values is 32 characters.
evValues :: Lens' EnumValues [Text]
evValues
  = lens _evValues (\ s a -> s{_evValues = a}) .
      _Default
      . _Coerce

instance FromJSON EnumValues where
        parseJSON
          = withObject "EnumValues"
              (\ o -> EnumValues' <$> (o .:? "values" .!= mempty))

instance ToJSON EnumValues where
        toJSON EnumValues'{..}
          = object (catMaybes [("values" .=) <$> _evValues])

--
-- /See:/ 'gSuitePrincipal' smart constructor.
data GSuitePrincipal =
  GSuitePrincipal'
    { _gspGsuiteGroupEmail :: !(Maybe Text)
    , _gspGsuiteUserEmail  :: !(Maybe Text)
    , _gspGsuiteDomain     :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GSuitePrincipal' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gspGsuiteGroupEmail'
--
-- * 'gspGsuiteUserEmail'
--
-- * 'gspGsuiteDomain'
gSuitePrincipal
    :: GSuitePrincipal
gSuitePrincipal =
  GSuitePrincipal'
    { _gspGsuiteGroupEmail = Nothing
    , _gspGsuiteUserEmail = Nothing
    , _gspGsuiteDomain = Nothing
    }


-- | This principal references a G Suite group account
gspGsuiteGroupEmail :: Lens' GSuitePrincipal (Maybe Text)
gspGsuiteGroupEmail
  = lens _gspGsuiteGroupEmail
      (\ s a -> s{_gspGsuiteGroupEmail = a})

-- | This principal references a G Suite user account
gspGsuiteUserEmail :: Lens' GSuitePrincipal (Maybe Text)
gspGsuiteUserEmail
  = lens _gspGsuiteUserEmail
      (\ s a -> s{_gspGsuiteUserEmail = a})

-- | This principal represents all users of the G Suite domain of the
-- customer.
gspGsuiteDomain :: Lens' GSuitePrincipal (Maybe Bool)
gspGsuiteDomain
  = lens _gspGsuiteDomain
      (\ s a -> s{_gspGsuiteDomain = a})

instance FromJSON GSuitePrincipal where
        parseJSON
          = withObject "GSuitePrincipal"
              (\ o ->
                 GSuitePrincipal' <$>
                   (o .:? "gsuiteGroupEmail") <*>
                     (o .:? "gsuiteUserEmail")
                     <*> (o .:? "gsuiteDomain"))

instance ToJSON GSuitePrincipal where
        toJSON GSuitePrincipal'{..}
          = object
              (catMaybes
                 [("gsuiteGroupEmail" .=) <$> _gspGsuiteGroupEmail,
                  ("gsuiteUserEmail" .=) <$> _gspGsuiteUserEmail,
                  ("gsuiteDomain" .=) <$> _gspGsuiteDomain])

--
-- /See:/ 'indexItemOptions' smart constructor.
newtype IndexItemOptions =
  IndexItemOptions'
    { _iioAllowUnknownGsuitePrincipals :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IndexItemOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iioAllowUnknownGsuitePrincipals'
indexItemOptions
    :: IndexItemOptions
indexItemOptions =
  IndexItemOptions' {_iioAllowUnknownGsuitePrincipals = Nothing}


-- | Specifies if the index request should allow gsuite principals that do
-- not exist or are deleted in the index request.
iioAllowUnknownGsuitePrincipals :: Lens' IndexItemOptions (Maybe Bool)
iioAllowUnknownGsuitePrincipals
  = lens _iioAllowUnknownGsuitePrincipals
      (\ s a -> s{_iioAllowUnknownGsuitePrincipals = a})

instance FromJSON IndexItemOptions where
        parseJSON
          = withObject "IndexItemOptions"
              (\ o ->
                 IndexItemOptions' <$>
                   (o .:? "allowUnknownGsuitePrincipals"))

instance ToJSON IndexItemOptions where
        toJSON IndexItemOptions'{..}
          = object
              (catMaybes
                 [("allowUnknownGsuitePrincipals" .=) <$>
                    _iioAllowUnknownGsuitePrincipals])

-- | Additional search quality metadata of the item.
--
-- /See:/ 'searchQualityMetadata' smart constructor.
newtype SearchQualityMetadata =
  SearchQualityMetadata'
    { _sqmQuality :: Maybe (Textual Double)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchQualityMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqmQuality'
searchQualityMetadata
    :: SearchQualityMetadata
searchQualityMetadata = SearchQualityMetadata' {_sqmQuality = Nothing}


-- | An indication of the quality of the item, used to influence search
-- quality. Value should be between 0.0 (lowest quality) and 1.0 (highest
-- quality). The default value is 0.0.
sqmQuality :: Lens' SearchQualityMetadata (Maybe Double)
sqmQuality
  = lens _sqmQuality (\ s a -> s{_sqmQuality = a}) .
      mapping _Coerce

instance FromJSON SearchQualityMetadata where
        parseJSON
          = withObject "SearchQualityMetadata"
              (\ o -> SearchQualityMetadata' <$> (o .:? "quality"))

instance ToJSON SearchQualityMetadata where
        toJSON SearchQualityMetadata'{..}
          = object (catMaybes [("quality" .=) <$> _sqmQuality])

-- | List of timestamp values.
--
-- /See:/ 'timestampValues' smart constructor.
newtype TimestampValues =
  TimestampValues'
    { _tValues :: Maybe [DateTime']
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimestampValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tValues'
timestampValues
    :: TimestampValues
timestampValues = TimestampValues' {_tValues = Nothing}


tValues :: Lens' TimestampValues [UTCTime]
tValues
  = lens _tValues (\ s a -> s{_tValues = a}) . _Default
      . _Coerce

instance FromJSON TimestampValues where
        parseJSON
          = withObject "TimestampValues"
              (\ o ->
                 TimestampValues' <$> (o .:? "values" .!= mempty))

instance ToJSON TimestampValues where
        toJSON TimestampValues'{..}
          = object (catMaybes [("values" .=) <$> _tValues])

-- | Error information about the response.
--
-- /See:/ 'errorInfo' smart constructor.
newtype ErrorInfo =
  ErrorInfo'
    { _eiErrorMessages :: Maybe [ErrorMessage]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ErrorInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiErrorMessages'
errorInfo
    :: ErrorInfo
errorInfo = ErrorInfo' {_eiErrorMessages = Nothing}


eiErrorMessages :: Lens' ErrorInfo [ErrorMessage]
eiErrorMessages
  = lens _eiErrorMessages
      (\ s a -> s{_eiErrorMessages = a})
      . _Default
      . _Coerce

instance FromJSON ErrorInfo where
        parseJSON
          = withObject "ErrorInfo"
              (\ o ->
                 ErrorInfo' <$> (o .:? "errorMessages" .!= mempty))

instance ToJSON ErrorInfo where
        toJSON ErrorInfo'{..}
          = object
              (catMaybes
                 [("errorMessages" .=) <$> _eiErrorMessages])

--
-- /See:/ 'resultDisplayMetadata' smart constructor.
data ResultDisplayMetadata =
  ResultDisplayMetadata'
    { _rdmMetalines       :: !(Maybe [ResultDisplayLine])
    , _rdmObjectTypeLabel :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResultDisplayMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdmMetalines'
--
-- * 'rdmObjectTypeLabel'
resultDisplayMetadata
    :: ResultDisplayMetadata
resultDisplayMetadata =
  ResultDisplayMetadata'
    {_rdmMetalines = Nothing, _rdmObjectTypeLabel = Nothing}


-- | The metalines content to be displayed with the result.
rdmMetalines :: Lens' ResultDisplayMetadata [ResultDisplayLine]
rdmMetalines
  = lens _rdmMetalines (\ s a -> s{_rdmMetalines = a})
      . _Default
      . _Coerce

-- | The display label for the object.
rdmObjectTypeLabel :: Lens' ResultDisplayMetadata (Maybe Text)
rdmObjectTypeLabel
  = lens _rdmObjectTypeLabel
      (\ s a -> s{_rdmObjectTypeLabel = a})

instance FromJSON ResultDisplayMetadata where
        parseJSON
          = withObject "ResultDisplayMetadata"
              (\ o ->
                 ResultDisplayMetadata' <$>
                   (o .:? "metalines" .!= mempty) <*>
                     (o .:? "objectTypeLabel"))

instance ToJSON ResultDisplayMetadata where
        toJSON ResultDisplayMetadata'{..}
          = object
              (catMaybes
                 [("metalines" .=) <$> _rdmMetalines,
                  ("objectTypeLabel" .=) <$> _rdmObjectTypeLabel])

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
--
-- /See:/ 'operationResponse' smart constructor.
newtype OperationResponse =
  OperationResponse'
    { _orAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orAddtional'
operationResponse
    :: HashMap Text JSONValue -- ^ 'orAddtional'
    -> OperationResponse
operationResponse pOrAddtional_ =
  OperationResponse' {_orAddtional = _Coerce # pOrAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
orAddtional :: Lens' OperationResponse (HashMap Text JSONValue)
orAddtional
  = lens _orAddtional (\ s a -> s{_orAddtional = a}) .
      _Coerce

instance FromJSON OperationResponse where
        parseJSON
          = withObject "OperationResponse"
              (\ o -> OperationResponse' <$> (parseJSONObject o))

instance ToJSON OperationResponse where
        toJSON = toJSON . _orAddtional

-- | List of integer values.
--
-- /See:/ 'integerValues' smart constructor.
newtype IntegerValues =
  IntegerValues'
    { _ivValues :: Maybe [Textual Int64]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IntegerValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ivValues'
integerValues
    :: IntegerValues
integerValues = IntegerValues' {_ivValues = Nothing}


ivValues :: Lens' IntegerValues [Int64]
ivValues
  = lens _ivValues (\ s a -> s{_ivValues = a}) .
      _Default
      . _Coerce

instance FromJSON IntegerValues where
        parseJSON
          = withObject "IntegerValues"
              (\ o ->
                 IntegerValues' <$> (o .:? "values" .!= mempty))

instance ToJSON IntegerValues where
        toJSON IntegerValues'{..}
          = object (catMaybes [("values" .=) <$> _ivValues])

--
-- /See:/ 'searchItemsByViewURLResponse' smart constructor.
data SearchItemsByViewURLResponse =
  SearchItemsByViewURLResponse'
    { _sibvurNextPageToken :: !(Maybe Text)
    , _sibvurItems         :: !(Maybe [Item])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchItemsByViewURLResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sibvurNextPageToken'
--
-- * 'sibvurItems'
searchItemsByViewURLResponse
    :: SearchItemsByViewURLResponse
searchItemsByViewURLResponse =
  SearchItemsByViewURLResponse'
    {_sibvurNextPageToken = Nothing, _sibvurItems = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
sibvurNextPageToken :: Lens' SearchItemsByViewURLResponse (Maybe Text)
sibvurNextPageToken
  = lens _sibvurNextPageToken
      (\ s a -> s{_sibvurNextPageToken = a})

sibvurItems :: Lens' SearchItemsByViewURLResponse [Item]
sibvurItems
  = lens _sibvurItems (\ s a -> s{_sibvurItems = a}) .
      _Default
      . _Coerce

instance FromJSON SearchItemsByViewURLResponse where
        parseJSON
          = withObject "SearchItemsByViewURLResponse"
              (\ o ->
                 SearchItemsByViewURLResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON SearchItemsByViewURLResponse where
        toJSON SearchItemsByViewURLResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _sibvurNextPageToken,
                  ("items" .=) <$> _sibvurItems])

--
-- /See:/ 'getCustomerIndexStatsResponse' smart constructor.
newtype GetCustomerIndexStatsResponse =
  GetCustomerIndexStatsResponse'
    { _gcisrStats :: Maybe [CustomerIndexStats]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetCustomerIndexStatsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcisrStats'
getCustomerIndexStatsResponse
    :: GetCustomerIndexStatsResponse
getCustomerIndexStatsResponse =
  GetCustomerIndexStatsResponse' {_gcisrStats = Nothing}


-- | Summary of indexed item counts, one for each day in the requested range.
gcisrStats :: Lens' GetCustomerIndexStatsResponse [CustomerIndexStats]
gcisrStats
  = lens _gcisrStats (\ s a -> s{_gcisrStats = a}) .
      _Default
      . _Coerce

instance FromJSON GetCustomerIndexStatsResponse where
        parseJSON
          = withObject "GetCustomerIndexStatsResponse"
              (\ o ->
                 GetCustomerIndexStatsResponse' <$>
                   (o .:? "stats" .!= mempty))

instance ToJSON GetCustomerIndexStatsResponse where
        toJSON GetCustomerIndexStatsResponse'{..}
          = object (catMaybes [("stats" .=) <$> _gcisrStats])

-- | Information relevant only to a restrict entry. NextId: 12
--
-- /See:/ 'restrictItem' smart constructor.
data RestrictItem =
  RestrictItem'
    { _riGmailFolderRestrict      :: !(Maybe GmailFolderRestrict)
    , _riGmailActionRestrict      :: !(Maybe GmailActionRestrict)
    , _riDriveLocationRestrict    :: !(Maybe DriveLocationRestrict)
    , _riDriveTimeSpanRestrict    :: !(Maybe DriveTimeSpanRestrict)
    , _riDriveMimeTypeRestrict    :: !(Maybe DriveMimeTypeRestrict)
    , _riDriveFollowUpRestrict    :: !(Maybe DriveFollowUpRestrict)
    , _riGmailTimeRestrict        :: !(Maybe GmailTimeRestrict)
    , _riGmailIntelligentRestrict :: !(Maybe GmailIntelligentRestrict)
    , _riGmailAttachmentRestrict  :: !(Maybe GmailAttachmentRestrict)
    , _riSearchOperator           :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RestrictItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riGmailFolderRestrict'
--
-- * 'riGmailActionRestrict'
--
-- * 'riDriveLocationRestrict'
--
-- * 'riDriveTimeSpanRestrict'
--
-- * 'riDriveMimeTypeRestrict'
--
-- * 'riDriveFollowUpRestrict'
--
-- * 'riGmailTimeRestrict'
--
-- * 'riGmailIntelligentRestrict'
--
-- * 'riGmailAttachmentRestrict'
--
-- * 'riSearchOperator'
restrictItem
    :: RestrictItem
restrictItem =
  RestrictItem'
    { _riGmailFolderRestrict = Nothing
    , _riGmailActionRestrict = Nothing
    , _riDriveLocationRestrict = Nothing
    , _riDriveTimeSpanRestrict = Nothing
    , _riDriveMimeTypeRestrict = Nothing
    , _riDriveFollowUpRestrict = Nothing
    , _riGmailTimeRestrict = Nothing
    , _riGmailIntelligentRestrict = Nothing
    , _riGmailAttachmentRestrict = Nothing
    , _riSearchOperator = Nothing
    }


-- | Gmail Types.
riGmailFolderRestrict :: Lens' RestrictItem (Maybe GmailFolderRestrict)
riGmailFolderRestrict
  = lens _riGmailFolderRestrict
      (\ s a -> s{_riGmailFolderRestrict = a})

riGmailActionRestrict :: Lens' RestrictItem (Maybe GmailActionRestrict)
riGmailActionRestrict
  = lens _riGmailActionRestrict
      (\ s a -> s{_riGmailActionRestrict = a})

riDriveLocationRestrict :: Lens' RestrictItem (Maybe DriveLocationRestrict)
riDriveLocationRestrict
  = lens _riDriveLocationRestrict
      (\ s a -> s{_riDriveLocationRestrict = a})

riDriveTimeSpanRestrict :: Lens' RestrictItem (Maybe DriveTimeSpanRestrict)
riDriveTimeSpanRestrict
  = lens _riDriveTimeSpanRestrict
      (\ s a -> s{_riDriveTimeSpanRestrict = a})

-- | LINT.IfChange Drive Types.
riDriveMimeTypeRestrict :: Lens' RestrictItem (Maybe DriveMimeTypeRestrict)
riDriveMimeTypeRestrict
  = lens _riDriveMimeTypeRestrict
      (\ s a -> s{_riDriveMimeTypeRestrict = a})

-- | LINT.ThenChange(\/\/depot\/google3\/java\/com\/google\/apps\/search\/quality\/itemsuggest\/utils\/SubtypeRerankingUtils.java)
riDriveFollowUpRestrict :: Lens' RestrictItem (Maybe DriveFollowUpRestrict)
riDriveFollowUpRestrict
  = lens _riDriveFollowUpRestrict
      (\ s a -> s{_riDriveFollowUpRestrict = a})

riGmailTimeRestrict :: Lens' RestrictItem (Maybe GmailTimeRestrict)
riGmailTimeRestrict
  = lens _riGmailTimeRestrict
      (\ s a -> s{_riGmailTimeRestrict = a})

riGmailIntelligentRestrict :: Lens' RestrictItem (Maybe GmailIntelligentRestrict)
riGmailIntelligentRestrict
  = lens _riGmailIntelligentRestrict
      (\ s a -> s{_riGmailIntelligentRestrict = a})

riGmailAttachmentRestrict :: Lens' RestrictItem (Maybe GmailAttachmentRestrict)
riGmailAttachmentRestrict
  = lens _riGmailAttachmentRestrict
      (\ s a -> s{_riGmailAttachmentRestrict = a})

-- | The search restrict (e.g. \"after:2017-09-11 before:2017-09-12\").
riSearchOperator :: Lens' RestrictItem (Maybe Text)
riSearchOperator
  = lens _riSearchOperator
      (\ s a -> s{_riSearchOperator = a})

instance FromJSON RestrictItem where
        parseJSON
          = withObject "RestrictItem"
              (\ o ->
                 RestrictItem' <$>
                   (o .:? "gmailFolderRestrict") <*>
                     (o .:? "gmailActionRestrict")
                     <*> (o .:? "driveLocationRestrict")
                     <*> (o .:? "driveTimeSpanRestrict")
                     <*> (o .:? "driveMimeTypeRestrict")
                     <*> (o .:? "driveFollowUpRestrict")
                     <*> (o .:? "gmailTimeRestrict")
                     <*> (o .:? "gmailIntelligentRestrict")
                     <*> (o .:? "gmailAttachmentRestrict")
                     <*> (o .:? "searchOperator"))

instance ToJSON RestrictItem where
        toJSON RestrictItem'{..}
          = object
              (catMaybes
                 [("gmailFolderRestrict" .=) <$>
                    _riGmailFolderRestrict,
                  ("gmailActionRestrict" .=) <$>
                    _riGmailActionRestrict,
                  ("driveLocationRestrict" .=) <$>
                    _riDriveLocationRestrict,
                  ("driveTimeSpanRestrict" .=) <$>
                    _riDriveTimeSpanRestrict,
                  ("driveMimeTypeRestrict" .=) <$>
                    _riDriveMimeTypeRestrict,
                  ("driveFollowUpRestrict" .=) <$>
                    _riDriveFollowUpRestrict,
                  ("gmailTimeRestrict" .=) <$> _riGmailTimeRestrict,
                  ("gmailIntelligentRestrict" .=) <$>
                    _riGmailIntelligentRestrict,
                  ("gmailAttachmentRestrict" .=) <$>
                    _riGmailAttachmentRestrict,
                  ("searchOperator" .=) <$> _riSearchOperator])

--
-- /See:/ 'checkAccessResponse' smart constructor.
newtype CheckAccessResponse =
  CheckAccessResponse'
    { _carHasAccess :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CheckAccessResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'carHasAccess'
checkAccessResponse
    :: CheckAccessResponse
checkAccessResponse = CheckAccessResponse' {_carHasAccess = Nothing}


-- | Returns true if principal has access. Returns false otherwise.
carHasAccess :: Lens' CheckAccessResponse (Maybe Bool)
carHasAccess
  = lens _carHasAccess (\ s a -> s{_carHasAccess = a})

instance FromJSON CheckAccessResponse where
        parseJSON
          = withObject "CheckAccessResponse"
              (\ o -> CheckAccessResponse' <$> (o .:? "hasAccess"))

instance ToJSON CheckAccessResponse where
        toJSON CheckAccessResponse'{..}
          = object
              (catMaybes [("hasAccess" .=) <$> _carHasAccess])

-- | Shared request options for all RPC methods.
--
-- /See:/ 'requestOptions' smart constructor.
data RequestOptions =
  RequestOptions'
    { _roLanguageCode        :: !(Maybe Text)
    , _roDebugOptions        :: !(Maybe DebugOptions)
    , _roTimeZone            :: !(Maybe Text)
    , _roSearchApplicationId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RequestOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'roLanguageCode'
--
-- * 'roDebugOptions'
--
-- * 'roTimeZone'
--
-- * 'roSearchApplicationId'
requestOptions
    :: RequestOptions
requestOptions =
  RequestOptions'
    { _roLanguageCode = Nothing
    , _roDebugOptions = Nothing
    , _roTimeZone = Nothing
    , _roSearchApplicationId = Nothing
    }


-- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more
-- information, see
-- http:\/\/www.unicode.org\/reports\/tr35\/#Unicode_locale_identifier. For
-- translations. When specified, the documents in search results are biased
-- towards the specified language. Suggest API does not use this parameter.
-- It autocompletes only based on characters in the query.
roLanguageCode :: Lens' RequestOptions (Maybe Text)
roLanguageCode
  = lens _roLanguageCode
      (\ s a -> s{_roLanguageCode = a})

-- | Debug options of the request
roDebugOptions :: Lens' RequestOptions (Maybe DebugOptions)
roDebugOptions
  = lens _roDebugOptions
      (\ s a -> s{_roDebugOptions = a})

-- | Current user\'s time zone id, such as \"America\/Los_Angeles\" or
-- \"Australia\/Sydney\". These IDs are defined by [Unicode Common Locale
-- Data Repository (CLDR)](http:\/\/cldr.unicode.org\/) project, and
-- currently available in the file
-- [timezone.xml](http:\/\/unicode.org\/repos\/cldr\/trunk\/common\/bcp47\/timezone.xml)
roTimeZone :: Lens' RequestOptions (Maybe Text)
roTimeZone
  = lens _roTimeZone (\ s a -> s{_roTimeZone = a})

-- | Id of the application created using SearchApplicationsService.
roSearchApplicationId :: Lens' RequestOptions (Maybe Text)
roSearchApplicationId
  = lens _roSearchApplicationId
      (\ s a -> s{_roSearchApplicationId = a})

instance FromJSON RequestOptions where
        parseJSON
          = withObject "RequestOptions"
              (\ o ->
                 RequestOptions' <$>
                   (o .:? "languageCode") <*> (o .:? "debugOptions") <*>
                     (o .:? "timeZone")
                     <*> (o .:? "searchApplicationId"))

instance ToJSON RequestOptions where
        toJSON RequestOptions'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _roLanguageCode,
                  ("debugOptions" .=) <$> _roDebugOptions,
                  ("timeZone" .=) <$> _roTimeZone,
                  ("searchApplicationId" .=) <$>
                    _roSearchApplicationId])

-- | This contains item\'s status and any errors.
--
-- /See:/ 'itemStatus' smart constructor.
data ItemStatus =
  ItemStatus'
    { _isProcessingErrors :: !(Maybe [ProcessingError])
    , _isCode             :: !(Maybe ItemStatusCode)
    , _isRepositoryErrors :: !(Maybe [RepositoryError])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ItemStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isProcessingErrors'
--
-- * 'isCode'
--
-- * 'isRepositoryErrors'
itemStatus
    :: ItemStatus
itemStatus =
  ItemStatus'
    { _isProcessingErrors = Nothing
    , _isCode = Nothing
    , _isRepositoryErrors = Nothing
    }


-- | Error details in case the item is in ERROR state.
isProcessingErrors :: Lens' ItemStatus [ProcessingError]
isProcessingErrors
  = lens _isProcessingErrors
      (\ s a -> s{_isProcessingErrors = a})
      . _Default
      . _Coerce

-- | Status code.
isCode :: Lens' ItemStatus (Maybe ItemStatusCode)
isCode = lens _isCode (\ s a -> s{_isCode = a})

-- | Repository error reported by connector.
isRepositoryErrors :: Lens' ItemStatus [RepositoryError]
isRepositoryErrors
  = lens _isRepositoryErrors
      (\ s a -> s{_isRepositoryErrors = a})
      . _Default
      . _Coerce

instance FromJSON ItemStatus where
        parseJSON
          = withObject "ItemStatus"
              (\ o ->
                 ItemStatus' <$>
                   (o .:? "processingErrors" .!= mempty) <*>
                     (o .:? "code")
                     <*> (o .:? "repositoryErrors" .!= mempty))

instance ToJSON ItemStatus where
        toJSON ItemStatus'{..}
          = object
              (catMaybes
                 [("processingErrors" .=) <$> _isProcessingErrors,
                  ("code" .=) <$> _isCode,
                  ("repositoryErrors" .=) <$> _isRepositoryErrors])
