{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.FireStore.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.FireStore.Types.Product where

import           Network.Google.FireStore.Types.Sum
import           Network.Google.Prelude

-- | The request for Firestore.Write. The first request creates a stream, or
-- resumes an existing one from a token. When creating a new stream, the
-- server replies with a response containing only an ID and a token, to use
-- in the next request. When resuming a stream, the server first streams
-- any responses later than the given token, then a response containing
-- only an up-to-date token, to use in the next request.
--
-- /See:/ 'writeRequest' smart constructor.
data WriteRequest =
  WriteRequest'
    { _wrStreamToken :: !(Maybe Bytes)
    , _wrLabels      :: !(Maybe WriteRequestLabels)
    , _wrWrites      :: !(Maybe [Write])
    , _wrStreamId    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'WriteRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wrStreamToken'
--
-- * 'wrLabels'
--
-- * 'wrWrites'
--
-- * 'wrStreamId'
writeRequest
    :: WriteRequest
writeRequest =
  WriteRequest'
    { _wrStreamToken = Nothing
    , _wrLabels = Nothing
    , _wrWrites = Nothing
    , _wrStreamId = Nothing
    }

-- | A stream token that was previously sent by the server. The client should
-- set this field to the token from the most recent WriteResponse it has
-- received. This acknowledges that the client has received responses up to
-- this token. After sending this token, earlier tokens may not be used
-- anymore. The server may close the stream if there are too many
-- unacknowledged responses. Leave this field unset when creating a new
-- stream. To resume a stream at a specific point, set this field and the
-- \`stream_id\` field. Leave this field unset when creating a new stream.
wrStreamToken :: Lens' WriteRequest (Maybe ByteString)
wrStreamToken
  = lens _wrStreamToken
      (\ s a -> s{_wrStreamToken = a})
      . mapping _Bytes

-- | Labels associated with this write request.
wrLabels :: Lens' WriteRequest (Maybe WriteRequestLabels)
wrLabels = lens _wrLabels (\ s a -> s{_wrLabels = a})

-- | The writes to apply. Always executed atomically and in order. This must
-- be empty on the first request. This may be empty on the last request.
-- This must not be empty on all other requests.
wrWrites :: Lens' WriteRequest [Write]
wrWrites
  = lens _wrWrites (\ s a -> s{_wrWrites = a}) .
      _Default
      . _Coerce

-- | The ID of the write stream to resume. This may only be set in the first
-- message. When left empty, a new write stream will be created.
wrStreamId :: Lens' WriteRequest (Maybe Text)
wrStreamId
  = lens _wrStreamId (\ s a -> s{_wrStreamId = a})

instance FromJSON WriteRequest where
        parseJSON
          = withObject "WriteRequest"
              (\ o ->
                 WriteRequest' <$>
                   (o .:? "streamToken") <*> (o .:? "labels") <*>
                     (o .:? "writes" .!= mempty)
                     <*> (o .:? "streamId"))

instance ToJSON WriteRequest where
        toJSON WriteRequest'{..}
          = object
              (catMaybes
                 [("streamToken" .=) <$> _wrStreamToken,
                  ("labels" .=) <$> _wrLabels,
                  ("writes" .=) <$> _wrWrites,
                  ("streamId" .=) <$> _wrStreamId])

-- | An object representing a latitude\/longitude pair. This is expressed as
-- a pair of doubles representing degrees latitude and degrees longitude.
-- Unless specified otherwise, this must conform to the
-- <http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf WGS84 standard>.
-- Values must be within normalized ranges.
--
-- /See:/ 'latLng' smart constructor.
data LatLng =
  LatLng'
    { _llLatitude  :: !(Maybe (Textual Double))
    , _llLongitude :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LatLng' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llLatitude'
--
-- * 'llLongitude'
latLng
    :: LatLng
latLng = LatLng' {_llLatitude = Nothing, _llLongitude = Nothing}

-- | The latitude in degrees. It must be in the range [-90.0, +90.0].
llLatitude :: Lens' LatLng (Maybe Double)
llLatitude
  = lens _llLatitude (\ s a -> s{_llLatitude = a}) .
      mapping _Coerce

-- | The longitude in degrees. It must be in the range [-180.0, +180.0].
llLongitude :: Lens' LatLng (Maybe Double)
llLongitude
  = lens _llLongitude (\ s a -> s{_llLongitude = a}) .
      mapping _Coerce

instance FromJSON LatLng where
        parseJSON
          = withObject "LatLng"
              (\ o ->
                 LatLng' <$>
                   (o .:? "latitude") <*> (o .:? "longitude"))

instance ToJSON LatLng where
        toJSON LatLng'{..}
          = object
              (catMaybes
                 [("latitude" .=) <$> _llLatitude,
                  ("longitude" .=) <$> _llLongitude])

-- | The result of applying a write.
--
-- /See:/ 'writeResult' smart constructor.
data WriteResult =
  WriteResult'
    { _wrUpdateTime       :: !(Maybe DateTime')
    , _wrTransformResults :: !(Maybe [Value])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'WriteResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wrUpdateTime'
--
-- * 'wrTransformResults'
writeResult
    :: WriteResult
writeResult =
  WriteResult' {_wrUpdateTime = Nothing, _wrTransformResults = Nothing}

-- | The last update time of the document after applying the write. Not set
-- after a \`delete\`. If the write did not actually change the document,
-- this will be the previous update_time.
wrUpdateTime :: Lens' WriteResult (Maybe UTCTime)
wrUpdateTime
  = lens _wrUpdateTime (\ s a -> s{_wrUpdateTime = a})
      . mapping _DateTime

-- | The results of applying each DocumentTransform.FieldTransform, in the
-- same order.
wrTransformResults :: Lens' WriteResult [Value]
wrTransformResults
  = lens _wrTransformResults
      (\ s a -> s{_wrTransformResults = a})
      . _Default
      . _Coerce

instance FromJSON WriteResult where
        parseJSON
          = withObject "WriteResult"
              (\ o ->
                 WriteResult' <$>
                   (o .:? "updateTime") <*>
                     (o .:? "transformResults" .!= mempty))

instance ToJSON WriteResult where
        toJSON WriteResult'{..}
          = object
              (catMaybes
                 [("updateTime" .=) <$> _wrUpdateTime,
                  ("transformResults" .=) <$> _wrTransformResults])

-- | Represents a single field in the database. Fields are grouped by their
-- \"Collection Group\", which represent all collections in the database
-- with the same id.
--
-- /See:/ 'googleFirestoreAdminV1Field' smart constructor.
data GoogleFirestoreAdminV1Field =
  GoogleFirestoreAdminV1Field'
    { _gfavfIndexConfig :: !(Maybe GoogleFirestoreAdminV1IndexConfig)
    , _gfavfName        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1Field' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfavfIndexConfig'
--
-- * 'gfavfName'
googleFirestoreAdminV1Field
    :: GoogleFirestoreAdminV1Field
googleFirestoreAdminV1Field =
  GoogleFirestoreAdminV1Field'
    {_gfavfIndexConfig = Nothing, _gfavfName = Nothing}

-- | The index configuration for this field. If unset, field indexing will
-- revert to the configuration defined by the \`ancestor_field\`. To
-- explicitly remove all indexes for this field, specify an index config
-- with an empty list of indexes.
gfavfIndexConfig :: Lens' GoogleFirestoreAdminV1Field (Maybe GoogleFirestoreAdminV1IndexConfig)
gfavfIndexConfig
  = lens _gfavfIndexConfig
      (\ s a -> s{_gfavfIndexConfig = a})

-- | A field name of the form
-- \`projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/{collection_id}\/fields\/{field_path}\`
-- A field path may be a simple field name, e.g. \`address\` or a path to
-- fields within map_value , e.g. \`address.city\`, or a special field
-- path. The only valid special field is \`*\`, which represents any field.
-- Field paths may be quoted using \` (backtick). The only character that
-- needs to be escaped within a quoted field path is the backtick character
-- itself, escaped using a backslash. Special characters in field paths
-- that must be quoted include: \`*\`, \`.\`, \`\`\` (backtick), \`[\`,
-- \`]\`, as well as any ascii symbolic characters. Examples: (Note:
-- Comments here are written in markdown syntax, so there is an additional
-- layer of backticks to represent a code block) \`\\\`address.city\\\`\`
-- represents a field named \`address.city\`, not the map key \`city\` in
-- the field \`address\`. \`\\\`*\\\`\` represents a field named \`*\`, not
-- any field. A special \`Field\` contains the default indexing settings
-- for all fields. This field\'s resource name is:
-- \`projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/__default__\/fields\/*\`
-- Indexes defined on this \`Field\` will be applied to all fields which do
-- not have their own \`Field\` index configuration.
gfavfName :: Lens' GoogleFirestoreAdminV1Field (Maybe Text)
gfavfName
  = lens _gfavfName (\ s a -> s{_gfavfName = a})

instance FromJSON GoogleFirestoreAdminV1Field where
        parseJSON
          = withObject "GoogleFirestoreAdminV1Field"
              (\ o ->
                 GoogleFirestoreAdminV1Field' <$>
                   (o .:? "indexConfig") <*> (o .:? "name"))

instance ToJSON GoogleFirestoreAdminV1Field where
        toJSON GoogleFirestoreAdminV1Field'{..}
          = object
              (catMaybes
                 [("indexConfig" .=) <$> _gfavfIndexConfig,
                  ("name" .=) <$> _gfavfName])

-- | Options for creating a new transaction.
--
-- /See:/ 'transactionOptions' smart constructor.
data TransactionOptions =
  TransactionOptions'
    { _toReadWrite :: !(Maybe ReadWrite)
    , _toReadOnly  :: !(Maybe ReadOnly)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TransactionOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'toReadWrite'
--
-- * 'toReadOnly'
transactionOptions
    :: TransactionOptions
transactionOptions =
  TransactionOptions' {_toReadWrite = Nothing, _toReadOnly = Nothing}

-- | The transaction can be used for both read and write operations.
toReadWrite :: Lens' TransactionOptions (Maybe ReadWrite)
toReadWrite
  = lens _toReadWrite (\ s a -> s{_toReadWrite = a})

-- | The transaction can only be used for read operations.
toReadOnly :: Lens' TransactionOptions (Maybe ReadOnly)
toReadOnly
  = lens _toReadOnly (\ s a -> s{_toReadOnly = a})

instance FromJSON TransactionOptions where
        parseJSON
          = withObject "TransactionOptions"
              (\ o ->
                 TransactionOptions' <$>
                   (o .:? "readWrite") <*> (o .:? "readOnly"))

instance ToJSON TransactionOptions where
        toJSON TransactionOptions'{..}
          = object
              (catMaybes
                 [("readWrite" .=) <$> _toReadWrite,
                  ("readOnly" .=) <$> _toReadOnly])

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

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'googleLongrunningOperationMetadata' smart constructor.
newtype GoogleLongrunningOperationMetadata =
  GoogleLongrunningOperationMetadata'
    { _glomAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleLongrunningOperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glomAddtional'
googleLongrunningOperationMetadata
    :: HashMap Text JSONValue -- ^ 'glomAddtional'
    -> GoogleLongrunningOperationMetadata
googleLongrunningOperationMetadata pGlomAddtional_ =
  GoogleLongrunningOperationMetadata'
    {_glomAddtional = _Coerce # pGlomAddtional_}

-- | Properties of the object. Contains field \'type with type URL.
glomAddtional :: Lens' GoogleLongrunningOperationMetadata (HashMap Text JSONValue)
glomAddtional
  = lens _glomAddtional
      (\ s a -> s{_glomAddtional = a})
      . _Coerce

instance FromJSON GoogleLongrunningOperationMetadata
         where
        parseJSON
          = withObject "GoogleLongrunningOperationMetadata"
              (\ o ->
                 GoogleLongrunningOperationMetadata' <$>
                   (parseJSONObject o))

instance ToJSON GoogleLongrunningOperationMetadata
         where
        toJSON = toJSON . _glomAddtional

-- | A precondition on a document, used for conditional operations.
--
-- /See:/ 'precondition' smart constructor.
data Precondition =
  Precondition'
    { _pExists     :: !(Maybe Bool)
    , _pUpdateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Precondition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pExists'
--
-- * 'pUpdateTime'
precondition
    :: Precondition
precondition = Precondition' {_pExists = Nothing, _pUpdateTime = Nothing}

-- | When set to \`true\`, the target document must exist. When set to
-- \`false\`, the target document must not exist.
pExists :: Lens' Precondition (Maybe Bool)
pExists = lens _pExists (\ s a -> s{_pExists = a})

-- | When set, the target document must exist and have been last updated at
-- that time.
pUpdateTime :: Lens' Precondition (Maybe UTCTime)
pUpdateTime
  = lens _pUpdateTime (\ s a -> s{_pUpdateTime = a}) .
      mapping _DateTime

instance FromJSON Precondition where
        parseJSON
          = withObject "Precondition"
              (\ o ->
                 Precondition' <$>
                   (o .:? "exists") <*> (o .:? "updateTime"))

instance ToJSON Precondition where
        toJSON Precondition'{..}
          = object
              (catMaybes
                 [("exists" .=) <$> _pExists,
                  ("updateTime" .=) <$> _pUpdateTime])

-- | Options for a transaction that can be used to read and write documents.
--
-- /See:/ 'readWrite' smart constructor.
newtype ReadWrite =
  ReadWrite'
    { _rwRetryTransaction :: Maybe Bytes
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReadWrite' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rwRetryTransaction'
readWrite
    :: ReadWrite
readWrite = ReadWrite' {_rwRetryTransaction = Nothing}

-- | An optional transaction to retry.
rwRetryTransaction :: Lens' ReadWrite (Maybe ByteString)
rwRetryTransaction
  = lens _rwRetryTransaction
      (\ s a -> s{_rwRetryTransaction = a})
      . mapping _Bytes

instance FromJSON ReadWrite where
        parseJSON
          = withObject "ReadWrite"
              (\ o -> ReadWrite' <$> (o .:? "retryTransaction"))

instance ToJSON ReadWrite where
        toJSON ReadWrite'{..}
          = object
              (catMaybes
                 [("retryTransaction" .=) <$> _rwRetryTransaction])

-- | The request for Firestore.Rollback.
--
-- /See:/ 'rollbackRequest' smart constructor.
newtype RollbackRequest =
  RollbackRequest'
    { _rrTransaction :: Maybe Bytes
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'RollbackRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrTransaction'
rollbackRequest
    :: RollbackRequest
rollbackRequest = RollbackRequest' {_rrTransaction = Nothing}

-- | The transaction to roll back.
rrTransaction :: Lens' RollbackRequest (Maybe ByteString)
rrTransaction
  = lens _rrTransaction
      (\ s a -> s{_rrTransaction = a})
      . mapping _Bytes

instance FromJSON RollbackRequest where
        parseJSON
          = withObject "RollbackRequest"
              (\ o -> RollbackRequest' <$> (o .:? "transaction"))

instance ToJSON RollbackRequest where
        toJSON RollbackRequest'{..}
          = object
              (catMaybes [("transaction" .=) <$> _rrTransaction])

-- | The request for FirestoreAdmin.ExportDocuments.
--
-- /See:/ 'googleFirestoreAdminV1ExportDocumentsRequest' smart constructor.
data GoogleFirestoreAdminV1ExportDocumentsRequest =
  GoogleFirestoreAdminV1ExportDocumentsRequest'
    { _gfavedrCollectionIds   :: !(Maybe [Text])
    , _gfavedrOutputURIPrefix :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1ExportDocumentsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfavedrCollectionIds'
--
-- * 'gfavedrOutputURIPrefix'
googleFirestoreAdminV1ExportDocumentsRequest
    :: GoogleFirestoreAdminV1ExportDocumentsRequest
googleFirestoreAdminV1ExportDocumentsRequest =
  GoogleFirestoreAdminV1ExportDocumentsRequest'
    {_gfavedrCollectionIds = Nothing, _gfavedrOutputURIPrefix = Nothing}

-- | Which collection ids to export. Unspecified means all collections.
gfavedrCollectionIds :: Lens' GoogleFirestoreAdminV1ExportDocumentsRequest [Text]
gfavedrCollectionIds
  = lens _gfavedrCollectionIds
      (\ s a -> s{_gfavedrCollectionIds = a})
      . _Default
      . _Coerce

-- | The output URI. Currently only supports Google Cloud Storage URIs of the
-- form: \`gs:\/\/BUCKET_NAME[\/NAMESPACE_PATH]\`, where \`BUCKET_NAME\` is
-- the name of the Google Cloud Storage bucket and \`NAMESPACE_PATH\` is an
-- optional Google Cloud Storage namespace path. When choosing a name, be
-- sure to consider Google Cloud Storage naming guidelines:
-- https:\/\/cloud.google.com\/storage\/docs\/naming. If the URI is a
-- bucket (without a namespace path), a prefix will be generated based on
-- the start time.
gfavedrOutputURIPrefix :: Lens' GoogleFirestoreAdminV1ExportDocumentsRequest (Maybe Text)
gfavedrOutputURIPrefix
  = lens _gfavedrOutputURIPrefix
      (\ s a -> s{_gfavedrOutputURIPrefix = a})

instance FromJSON
           GoogleFirestoreAdminV1ExportDocumentsRequest
         where
        parseJSON
          = withObject
              "GoogleFirestoreAdminV1ExportDocumentsRequest"
              (\ o ->
                 GoogleFirestoreAdminV1ExportDocumentsRequest' <$>
                   (o .:? "collectionIds" .!= mempty) <*>
                     (o .:? "outputUriPrefix"))

instance ToJSON
           GoogleFirestoreAdminV1ExportDocumentsRequest
         where
        toJSON
          GoogleFirestoreAdminV1ExportDocumentsRequest'{..}
          = object
              (catMaybes
                 [("collectionIds" .=) <$> _gfavedrCollectionIds,
                  ("outputUriPrefix" .=) <$> _gfavedrOutputURIPrefix])

-- | Targets being watched have changed.
--
-- /See:/ 'targetChange' smart constructor.
data TargetChange =
  TargetChange'
    { _tcReadTime         :: !(Maybe DateTime')
    , _tcResumeToken      :: !(Maybe Bytes)
    , _tcCause            :: !(Maybe Status)
    , _tcTargetChangeType :: !(Maybe TargetChangeTargetChangeType)
    , _tcTargetIds        :: !(Maybe [Textual Int32])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TargetChange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcReadTime'
--
-- * 'tcResumeToken'
--
-- * 'tcCause'
--
-- * 'tcTargetChangeType'
--
-- * 'tcTargetIds'
targetChange
    :: TargetChange
targetChange =
  TargetChange'
    { _tcReadTime = Nothing
    , _tcResumeToken = Nothing
    , _tcCause = Nothing
    , _tcTargetChangeType = Nothing
    , _tcTargetIds = Nothing
    }

-- | The consistent \`read_time\` for the given \`target_ids\` (omitted when
-- the target_ids are not at a consistent snapshot). The stream is
-- guaranteed to send a \`read_time\` with \`target_ids\` empty whenever
-- the entire stream reaches a new consistent snapshot. ADD, CURRENT, and
-- RESET messages are guaranteed to (eventually) result in a new consistent
-- snapshot (while NO_CHANGE and REMOVE messages are not). For a given
-- stream, \`read_time\` is guaranteed to be monotonically increasing.
tcReadTime :: Lens' TargetChange (Maybe UTCTime)
tcReadTime
  = lens _tcReadTime (\ s a -> s{_tcReadTime = a}) .
      mapping _DateTime

-- | A token that can be used to resume the stream for the given
-- \`target_ids\`, or all targets if \`target_ids\` is empty. Not set on
-- every target change.
tcResumeToken :: Lens' TargetChange (Maybe ByteString)
tcResumeToken
  = lens _tcResumeToken
      (\ s a -> s{_tcResumeToken = a})
      . mapping _Bytes

-- | The error that resulted in this change, if applicable.
tcCause :: Lens' TargetChange (Maybe Status)
tcCause = lens _tcCause (\ s a -> s{_tcCause = a})

-- | The type of change that occurred.
tcTargetChangeType :: Lens' TargetChange (Maybe TargetChangeTargetChangeType)
tcTargetChangeType
  = lens _tcTargetChangeType
      (\ s a -> s{_tcTargetChangeType = a})

-- | The target IDs of targets that have changed. If empty, the change
-- applies to all targets. For \`target_change_type=ADD\`, the order of the
-- target IDs matches the order of the requests to add the targets. This
-- allows clients to unambiguously associate server-assigned target IDs
-- with added targets. For other states, the order of the target IDs is not
-- defined.
tcTargetIds :: Lens' TargetChange [Int32]
tcTargetIds
  = lens _tcTargetIds (\ s a -> s{_tcTargetIds = a}) .
      _Default
      . _Coerce

instance FromJSON TargetChange where
        parseJSON
          = withObject "TargetChange"
              (\ o ->
                 TargetChange' <$>
                   (o .:? "readTime") <*> (o .:? "resumeToken") <*>
                     (o .:? "cause")
                     <*> (o .:? "targetChangeType")
                     <*> (o .:? "targetIds" .!= mempty))

instance ToJSON TargetChange where
        toJSON TargetChange'{..}
          = object
              (catMaybes
                 [("readTime" .=) <$> _tcReadTime,
                  ("resumeToken" .=) <$> _tcResumeToken,
                  ("cause" .=) <$> _tcCause,
                  ("targetChangeType" .=) <$> _tcTargetChangeType,
                  ("targetIds" .=) <$> _tcTargetIds])

-- | The response message for Locations.ListLocations.
--
-- /See:/ 'listLocationsResponse' smart constructor.
data ListLocationsResponse =
  ListLocationsResponse'
    { _llrNextPageToken :: !(Maybe Text)
    , _llrLocations     :: !(Maybe [Location])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListLocationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llrNextPageToken'
--
-- * 'llrLocations'
listLocationsResponse
    :: ListLocationsResponse
listLocationsResponse =
  ListLocationsResponse' {_llrNextPageToken = Nothing, _llrLocations = Nothing}

-- | The standard List next-page token.
llrNextPageToken :: Lens' ListLocationsResponse (Maybe Text)
llrNextPageToken
  = lens _llrNextPageToken
      (\ s a -> s{_llrNextPageToken = a})

-- | A list of locations that matches the specified filter in the request.
llrLocations :: Lens' ListLocationsResponse [Location]
llrLocations
  = lens _llrLocations (\ s a -> s{_llrLocations = a})
      . _Default
      . _Coerce

instance FromJSON ListLocationsResponse where
        parseJSON
          = withObject "ListLocationsResponse"
              (\ o ->
                 ListLocationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "locations" .!= mempty))

instance ToJSON ListLocationsResponse where
        toJSON ListLocationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _llrNextPageToken,
                  ("locations" .=) <$> _llrLocations])

-- | A position in a query result set.
--
-- /See:/ 'cursor' smart constructor.
data Cursor =
  Cursor'
    { _cValues :: !(Maybe [Value])
    , _cBefore :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Cursor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cValues'
--
-- * 'cBefore'
cursor
    :: Cursor
cursor = Cursor' {_cValues = Nothing, _cBefore = Nothing}

-- | The values that represent a position, in the order they appear in the
-- order by clause of a query. Can contain fewer values than specified in
-- the order by clause.
cValues :: Lens' Cursor [Value]
cValues
  = lens _cValues (\ s a -> s{_cValues = a}) . _Default
      . _Coerce

-- | If the position is just before or just after the given values, relative
-- to the sort order defined by the query.
cBefore :: Lens' Cursor (Maybe Bool)
cBefore = lens _cBefore (\ s a -> s{_cBefore = a})

instance FromJSON Cursor where
        parseJSON
          = withObject "Cursor"
              (\ o ->
                 Cursor' <$>
                   (o .:? "values" .!= mempty) <*> (o .:? "before"))

instance ToJSON Cursor where
        toJSON Cursor'{..}
          = object
              (catMaybes
                 [("values" .=) <$> _cValues,
                  ("before" .=) <$> _cBefore])

-- | Metadata for google.longrunning.Operation results from
-- FirestoreAdmin.ImportDocuments.
--
-- /See:/ 'googleFirestoreAdminV1ImportDocumentsMetadata' smart constructor.
data GoogleFirestoreAdminV1ImportDocumentsMetadata =
  GoogleFirestoreAdminV1ImportDocumentsMetadata'
    { _gfavidmProgressBytes     :: !(Maybe GoogleFirestoreAdminV1Progress)
    , _gfavidmStartTime         :: !(Maybe DateTime')
    , _gfavidmInputURIPrefix    :: !(Maybe Text)
    , _gfavidmCollectionIds     :: !(Maybe [Text])
    , _gfavidmProgressDocuments :: !(Maybe GoogleFirestoreAdminV1Progress)
    , _gfavidmEndTime           :: !(Maybe DateTime')
    , _gfavidmOperationState    :: !(Maybe GoogleFirestoreAdminV1ImportDocumentsMetadataOperationState)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1ImportDocumentsMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfavidmProgressBytes'
--
-- * 'gfavidmStartTime'
--
-- * 'gfavidmInputURIPrefix'
--
-- * 'gfavidmCollectionIds'
--
-- * 'gfavidmProgressDocuments'
--
-- * 'gfavidmEndTime'
--
-- * 'gfavidmOperationState'
googleFirestoreAdminV1ImportDocumentsMetadata
    :: GoogleFirestoreAdminV1ImportDocumentsMetadata
googleFirestoreAdminV1ImportDocumentsMetadata =
  GoogleFirestoreAdminV1ImportDocumentsMetadata'
    { _gfavidmProgressBytes = Nothing
    , _gfavidmStartTime = Nothing
    , _gfavidmInputURIPrefix = Nothing
    , _gfavidmCollectionIds = Nothing
    , _gfavidmProgressDocuments = Nothing
    , _gfavidmEndTime = Nothing
    , _gfavidmOperationState = Nothing
    }

-- | The progress, in bytes, of this operation.
gfavidmProgressBytes :: Lens' GoogleFirestoreAdminV1ImportDocumentsMetadata (Maybe GoogleFirestoreAdminV1Progress)
gfavidmProgressBytes
  = lens _gfavidmProgressBytes
      (\ s a -> s{_gfavidmProgressBytes = a})

-- | The time this operation started.
gfavidmStartTime :: Lens' GoogleFirestoreAdminV1ImportDocumentsMetadata (Maybe UTCTime)
gfavidmStartTime
  = lens _gfavidmStartTime
      (\ s a -> s{_gfavidmStartTime = a})
      . mapping _DateTime

-- | The location of the documents being imported.
gfavidmInputURIPrefix :: Lens' GoogleFirestoreAdminV1ImportDocumentsMetadata (Maybe Text)
gfavidmInputURIPrefix
  = lens _gfavidmInputURIPrefix
      (\ s a -> s{_gfavidmInputURIPrefix = a})

-- | Which collection ids are being imported.
gfavidmCollectionIds :: Lens' GoogleFirestoreAdminV1ImportDocumentsMetadata [Text]
gfavidmCollectionIds
  = lens _gfavidmCollectionIds
      (\ s a -> s{_gfavidmCollectionIds = a})
      . _Default
      . _Coerce

-- | The progress, in documents, of this operation.
gfavidmProgressDocuments :: Lens' GoogleFirestoreAdminV1ImportDocumentsMetadata (Maybe GoogleFirestoreAdminV1Progress)
gfavidmProgressDocuments
  = lens _gfavidmProgressDocuments
      (\ s a -> s{_gfavidmProgressDocuments = a})

-- | The time this operation completed. Will be unset if operation still in
-- progress.
gfavidmEndTime :: Lens' GoogleFirestoreAdminV1ImportDocumentsMetadata (Maybe UTCTime)
gfavidmEndTime
  = lens _gfavidmEndTime
      (\ s a -> s{_gfavidmEndTime = a})
      . mapping _DateTime

-- | The state of the import operation.
gfavidmOperationState :: Lens' GoogleFirestoreAdminV1ImportDocumentsMetadata (Maybe GoogleFirestoreAdminV1ImportDocumentsMetadataOperationState)
gfavidmOperationState
  = lens _gfavidmOperationState
      (\ s a -> s{_gfavidmOperationState = a})

instance FromJSON
           GoogleFirestoreAdminV1ImportDocumentsMetadata
         where
        parseJSON
          = withObject
              "GoogleFirestoreAdminV1ImportDocumentsMetadata"
              (\ o ->
                 GoogleFirestoreAdminV1ImportDocumentsMetadata' <$>
                   (o .:? "progressBytes") <*> (o .:? "startTime") <*>
                     (o .:? "inputUriPrefix")
                     <*> (o .:? "collectionIds" .!= mempty)
                     <*> (o .:? "progressDocuments")
                     <*> (o .:? "endTime")
                     <*> (o .:? "operationState"))

instance ToJSON
           GoogleFirestoreAdminV1ImportDocumentsMetadata
         where
        toJSON
          GoogleFirestoreAdminV1ImportDocumentsMetadata'{..}
          = object
              (catMaybes
                 [("progressBytes" .=) <$> _gfavidmProgressBytes,
                  ("startTime" .=) <$> _gfavidmStartTime,
                  ("inputUriPrefix" .=) <$> _gfavidmInputURIPrefix,
                  ("collectionIds" .=) <$> _gfavidmCollectionIds,
                  ("progressDocuments" .=) <$>
                    _gfavidmProgressDocuments,
                  ("endTime" .=) <$> _gfavidmEndTime,
                  ("operationState" .=) <$> _gfavidmOperationState])

-- | The request for Firestore.BeginTransaction.
--
-- /See:/ 'beginTransactionRequest' smart constructor.
newtype BeginTransactionRequest =
  BeginTransactionRequest'
    { _btrOptions :: Maybe TransactionOptions
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BeginTransactionRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'btrOptions'
beginTransactionRequest
    :: BeginTransactionRequest
beginTransactionRequest = BeginTransactionRequest' {_btrOptions = Nothing}

-- | The options for the transaction. Defaults to a read-write transaction.
btrOptions :: Lens' BeginTransactionRequest (Maybe TransactionOptions)
btrOptions
  = lens _btrOptions (\ s a -> s{_btrOptions = a})

instance FromJSON BeginTransactionRequest where
        parseJSON
          = withObject "BeginTransactionRequest"
              (\ o ->
                 BeginTransactionRequest' <$> (o .:? "options"))

instance ToJSON BeginTransactionRequest where
        toJSON BeginTransactionRequest'{..}
          = object (catMaybes [("options" .=) <$> _btrOptions])

-- | The request for Firestore.RunQuery.
--
-- /See:/ 'runQueryRequest' smart constructor.
data RunQueryRequest =
  RunQueryRequest'
    { _rqrReadTime        :: !(Maybe DateTime')
    , _rqrNewTransaction  :: !(Maybe TransactionOptions)
    , _rqrStructuredQuery :: !(Maybe StructuredQuery)
    , _rqrTransaction     :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'RunQueryRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rqrReadTime'
--
-- * 'rqrNewTransaction'
--
-- * 'rqrStructuredQuery'
--
-- * 'rqrTransaction'
runQueryRequest
    :: RunQueryRequest
runQueryRequest =
  RunQueryRequest'
    { _rqrReadTime = Nothing
    , _rqrNewTransaction = Nothing
    , _rqrStructuredQuery = Nothing
    , _rqrTransaction = Nothing
    }

-- | Reads documents as they were at the given time. This may not be older
-- than 60 seconds.
rqrReadTime :: Lens' RunQueryRequest (Maybe UTCTime)
rqrReadTime
  = lens _rqrReadTime (\ s a -> s{_rqrReadTime = a}) .
      mapping _DateTime

-- | Starts a new transaction and reads the documents. Defaults to a
-- read-only transaction. The new transaction ID will be returned as the
-- first response in the stream.
rqrNewTransaction :: Lens' RunQueryRequest (Maybe TransactionOptions)
rqrNewTransaction
  = lens _rqrNewTransaction
      (\ s a -> s{_rqrNewTransaction = a})

-- | A structured query.
rqrStructuredQuery :: Lens' RunQueryRequest (Maybe StructuredQuery)
rqrStructuredQuery
  = lens _rqrStructuredQuery
      (\ s a -> s{_rqrStructuredQuery = a})

-- | Reads documents in a transaction.
rqrTransaction :: Lens' RunQueryRequest (Maybe ByteString)
rqrTransaction
  = lens _rqrTransaction
      (\ s a -> s{_rqrTransaction = a})
      . mapping _Bytes

instance FromJSON RunQueryRequest where
        parseJSON
          = withObject "RunQueryRequest"
              (\ o ->
                 RunQueryRequest' <$>
                   (o .:? "readTime") <*> (o .:? "newTransaction") <*>
                     (o .:? "structuredQuery")
                     <*> (o .:? "transaction"))

instance ToJSON RunQueryRequest where
        toJSON RunQueryRequest'{..}
          = object
              (catMaybes
                 [("readTime" .=) <$> _rqrReadTime,
                  ("newTransaction" .=) <$> _rqrNewTransaction,
                  ("structuredQuery" .=) <$> _rqrStructuredQuery,
                  ("transaction" .=) <$> _rqrTransaction])

-- | Information about an index configuration change.
--
-- /See:/ 'googleFirestoreAdminV1IndexConfigDelta' smart constructor.
data GoogleFirestoreAdminV1IndexConfigDelta =
  GoogleFirestoreAdminV1IndexConfigDelta'
    { _gfavicdIndex      :: !(Maybe GoogleFirestoreAdminV1Index)
    , _gfavicdChangeType :: !(Maybe GoogleFirestoreAdminV1IndexConfigDeltaChangeType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1IndexConfigDelta' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfavicdIndex'
--
-- * 'gfavicdChangeType'
googleFirestoreAdminV1IndexConfigDelta
    :: GoogleFirestoreAdminV1IndexConfigDelta
googleFirestoreAdminV1IndexConfigDelta =
  GoogleFirestoreAdminV1IndexConfigDelta'
    {_gfavicdIndex = Nothing, _gfavicdChangeType = Nothing}

-- | The index being changed.
gfavicdIndex :: Lens' GoogleFirestoreAdminV1IndexConfigDelta (Maybe GoogleFirestoreAdminV1Index)
gfavicdIndex
  = lens _gfavicdIndex (\ s a -> s{_gfavicdIndex = a})

-- | Specifies how the index is changing.
gfavicdChangeType :: Lens' GoogleFirestoreAdminV1IndexConfigDelta (Maybe GoogleFirestoreAdminV1IndexConfigDeltaChangeType)
gfavicdChangeType
  = lens _gfavicdChangeType
      (\ s a -> s{_gfavicdChangeType = a})

instance FromJSON
           GoogleFirestoreAdminV1IndexConfigDelta
         where
        parseJSON
          = withObject "GoogleFirestoreAdminV1IndexConfigDelta"
              (\ o ->
                 GoogleFirestoreAdminV1IndexConfigDelta' <$>
                   (o .:? "index") <*> (o .:? "changeType"))

instance ToJSON
           GoogleFirestoreAdminV1IndexConfigDelta
         where
        toJSON GoogleFirestoreAdminV1IndexConfigDelta'{..}
          = object
              (catMaybes
                 [("index" .=) <$> _gfavicdIndex,
                  ("changeType" .=) <$> _gfavicdChangeType])

-- | The index configuration for this field.
--
-- /See:/ 'googleFirestoreAdminV1IndexConfig' smart constructor.
data GoogleFirestoreAdminV1IndexConfig =
  GoogleFirestoreAdminV1IndexConfig'
    { _gfavicAncestorField      :: !(Maybe Text)
    , _gfavicReverting          :: !(Maybe Bool)
    , _gfavicIndexes            :: !(Maybe [GoogleFirestoreAdminV1Index])
    , _gfavicUsesAncestorConfig :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1IndexConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfavicAncestorField'
--
-- * 'gfavicReverting'
--
-- * 'gfavicIndexes'
--
-- * 'gfavicUsesAncestorConfig'
googleFirestoreAdminV1IndexConfig
    :: GoogleFirestoreAdminV1IndexConfig
googleFirestoreAdminV1IndexConfig =
  GoogleFirestoreAdminV1IndexConfig'
    { _gfavicAncestorField = Nothing
    , _gfavicReverting = Nothing
    , _gfavicIndexes = Nothing
    , _gfavicUsesAncestorConfig = Nothing
    }

-- | Output only. Specifies the resource name of the \`Field\` from which
-- this field\'s index configuration is set (when \`uses_ancestor_config\`
-- is true), or from which it *would* be set if this field had no index
-- configuration (when \`uses_ancestor_config\` is false).
gfavicAncestorField :: Lens' GoogleFirestoreAdminV1IndexConfig (Maybe Text)
gfavicAncestorField
  = lens _gfavicAncestorField
      (\ s a -> s{_gfavicAncestorField = a})

-- | Output only When true, the \`Field\`\'s index configuration is in the
-- process of being reverted. Once complete, the index config will
-- transition to the same state as the field specified by
-- \`ancestor_field\`, at which point \`uses_ancestor_config\` will be
-- \`true\` and \`reverting\` will be \`false\`.
gfavicReverting :: Lens' GoogleFirestoreAdminV1IndexConfig (Maybe Bool)
gfavicReverting
  = lens _gfavicReverting
      (\ s a -> s{_gfavicReverting = a})

-- | The indexes supported for this field.
gfavicIndexes :: Lens' GoogleFirestoreAdminV1IndexConfig [GoogleFirestoreAdminV1Index]
gfavicIndexes
  = lens _gfavicIndexes
      (\ s a -> s{_gfavicIndexes = a})
      . _Default
      . _Coerce

-- | Output only. When true, the \`Field\`\'s index configuration is set from
-- the configuration specified by the \`ancestor_field\`. When false, the
-- \`Field\`\'s index configuration is defined explicitly.
gfavicUsesAncestorConfig :: Lens' GoogleFirestoreAdminV1IndexConfig (Maybe Bool)
gfavicUsesAncestorConfig
  = lens _gfavicUsesAncestorConfig
      (\ s a -> s{_gfavicUsesAncestorConfig = a})

instance FromJSON GoogleFirestoreAdminV1IndexConfig
         where
        parseJSON
          = withObject "GoogleFirestoreAdminV1IndexConfig"
              (\ o ->
                 GoogleFirestoreAdminV1IndexConfig' <$>
                   (o .:? "ancestorField") <*> (o .:? "reverting") <*>
                     (o .:? "indexes" .!= mempty)
                     <*> (o .:? "usesAncestorConfig"))

instance ToJSON GoogleFirestoreAdminV1IndexConfig
         where
        toJSON GoogleFirestoreAdminV1IndexConfig'{..}
          = object
              (catMaybes
                 [("ancestorField" .=) <$> _gfavicAncestorField,
                  ("reverting" .=) <$> _gfavicReverting,
                  ("indexes" .=) <$> _gfavicIndexes,
                  ("usesAncestorConfig" .=) <$>
                    _gfavicUsesAncestorConfig])

-- | A field in an index. The field_path describes which field is indexed,
-- the value_mode describes how the field value is indexed.
--
-- /See:/ 'googleFirestoreAdminV1IndexField' smart constructor.
data GoogleFirestoreAdminV1IndexField =
  GoogleFirestoreAdminV1IndexField'
    { _gfavifFieldPath   :: !(Maybe Text)
    , _gfavifArrayConfig :: !(Maybe GoogleFirestoreAdminV1IndexFieldArrayConfig)
    , _gfavifOrder       :: !(Maybe GoogleFirestoreAdminV1IndexFieldOrder)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1IndexField' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfavifFieldPath'
--
-- * 'gfavifArrayConfig'
--
-- * 'gfavifOrder'
googleFirestoreAdminV1IndexField
    :: GoogleFirestoreAdminV1IndexField
googleFirestoreAdminV1IndexField =
  GoogleFirestoreAdminV1IndexField'
    { _gfavifFieldPath = Nothing
    , _gfavifArrayConfig = Nothing
    , _gfavifOrder = Nothing
    }

-- | Can be __name__. For single field indexes, this must match the name of
-- the field or may be omitted.
gfavifFieldPath :: Lens' GoogleFirestoreAdminV1IndexField (Maybe Text)
gfavifFieldPath
  = lens _gfavifFieldPath
      (\ s a -> s{_gfavifFieldPath = a})

-- | Indicates that this field supports operations on \`array_value\`s.
gfavifArrayConfig :: Lens' GoogleFirestoreAdminV1IndexField (Maybe GoogleFirestoreAdminV1IndexFieldArrayConfig)
gfavifArrayConfig
  = lens _gfavifArrayConfig
      (\ s a -> s{_gfavifArrayConfig = a})

-- | Indicates that this field supports ordering by the specified order or
-- comparing using =, \<, \<=, >, >=.
gfavifOrder :: Lens' GoogleFirestoreAdminV1IndexField (Maybe GoogleFirestoreAdminV1IndexFieldOrder)
gfavifOrder
  = lens _gfavifOrder (\ s a -> s{_gfavifOrder = a})

instance FromJSON GoogleFirestoreAdminV1IndexField
         where
        parseJSON
          = withObject "GoogleFirestoreAdminV1IndexField"
              (\ o ->
                 GoogleFirestoreAdminV1IndexField' <$>
                   (o .:? "fieldPath") <*> (o .:? "arrayConfig") <*>
                     (o .:? "order"))

instance ToJSON GoogleFirestoreAdminV1IndexField
         where
        toJSON GoogleFirestoreAdminV1IndexField'{..}
          = object
              (catMaybes
                 [("fieldPath" .=) <$> _gfavifFieldPath,
                  ("arrayConfig" .=) <$> _gfavifArrayConfig,
                  ("order" .=) <$> _gfavifOrder])

-- | A write on a document.
--
-- /See:/ 'write' smart constructor.
data Write =
  Write'
    { _wTransform       :: !(Maybe DocumentTransform)
    , _wUpdateMask      :: !(Maybe DocumentMask)
    , _wCurrentDocument :: !(Maybe Precondition)
    , _wDelete          :: !(Maybe Text)
    , _wUpdate          :: !(Maybe Document)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Write' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wTransform'
--
-- * 'wUpdateMask'
--
-- * 'wCurrentDocument'
--
-- * 'wDelete'
--
-- * 'wUpdate'
write
    :: Write
write =
  Write'
    { _wTransform = Nothing
    , _wUpdateMask = Nothing
    , _wCurrentDocument = Nothing
    , _wDelete = Nothing
    , _wUpdate = Nothing
    }

-- | Applies a tranformation to a document. At most one \`transform\` per
-- document is allowed in a given request. An \`update\` cannot follow a
-- \`transform\` on the same document in a given request.
wTransform :: Lens' Write (Maybe DocumentTransform)
wTransform
  = lens _wTransform (\ s a -> s{_wTransform = a})

-- | The fields to update in this write. This field can be set only when the
-- operation is \`update\`. If the mask is not set for an \`update\` and
-- the document exists, any existing data will be overwritten. If the mask
-- is set and the document on the server has fields not covered by the
-- mask, they are left unchanged. Fields referenced in the mask, but not
-- present in the input document, are deleted from the document on the
-- server. The field paths in this mask must not contain a reserved field
-- name.
wUpdateMask :: Lens' Write (Maybe DocumentMask)
wUpdateMask
  = lens _wUpdateMask (\ s a -> s{_wUpdateMask = a})

-- | An optional precondition on the document. The write will fail if this is
-- set and not met by the target document.
wCurrentDocument :: Lens' Write (Maybe Precondition)
wCurrentDocument
  = lens _wCurrentDocument
      (\ s a -> s{_wCurrentDocument = a})

-- | A document name to delete. In the format:
-- \`projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}\`.
wDelete :: Lens' Write (Maybe Text)
wDelete = lens _wDelete (\ s a -> s{_wDelete = a})

-- | A document to write.
wUpdate :: Lens' Write (Maybe Document)
wUpdate = lens _wUpdate (\ s a -> s{_wUpdate = a})

instance FromJSON Write where
        parseJSON
          = withObject "Write"
              (\ o ->
                 Write' <$>
                   (o .:? "transform") <*> (o .:? "updateMask") <*>
                     (o .:? "currentDocument")
                     <*> (o .:? "delete")
                     <*> (o .:? "update"))

instance ToJSON Write where
        toJSON Write'{..}
          = object
              (catMaybes
                 [("transform" .=) <$> _wTransform,
                  ("updateMask" .=) <$> _wUpdateMask,
                  ("currentDocument" .=) <$> _wCurrentDocument,
                  ("delete" .=) <$> _wDelete,
                  ("update" .=) <$> _wUpdate])

-- | A resource that represents Google Cloud Platform location.
--
-- /See:/ 'location' smart constructor.
data Location =
  Location'
    { _lName        :: !(Maybe Text)
    , _lMetadata    :: !(Maybe LocationMetadata)
    , _lDisplayName :: !(Maybe Text)
    , _lLabels      :: !(Maybe LocationLabels)
    , _lLocationId  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lName'
--
-- * 'lMetadata'
--
-- * 'lDisplayName'
--
-- * 'lLabels'
--
-- * 'lLocationId'
location
    :: Location
location =
  Location'
    { _lName = Nothing
    , _lMetadata = Nothing
    , _lDisplayName = Nothing
    , _lLabels = Nothing
    , _lLocationId = Nothing
    }

-- | Resource name for the location, which may vary between implementations.
-- For example: \`\"projects\/example-project\/locations\/us-east1\"\`
lName :: Lens' Location (Maybe Text)
lName = lens _lName (\ s a -> s{_lName = a})

-- | Service-specific metadata. For example the available capacity at the
-- given location.
lMetadata :: Lens' Location (Maybe LocationMetadata)
lMetadata
  = lens _lMetadata (\ s a -> s{_lMetadata = a})

-- | The friendly name for this location, typically a nearby city name. For
-- example, \"Tokyo\".
lDisplayName :: Lens' Location (Maybe Text)
lDisplayName
  = lens _lDisplayName (\ s a -> s{_lDisplayName = a})

-- | Cross-service attributes for the location. For example
-- {\"cloud.googleapis.com\/region\": \"us-east1\"}
lLabels :: Lens' Location (Maybe LocationLabels)
lLabels = lens _lLabels (\ s a -> s{_lLabels = a})

-- | The canonical id for this location. For example: \`\"us-east1\"\`.
lLocationId :: Lens' Location (Maybe Text)
lLocationId
  = lens _lLocationId (\ s a -> s{_lLocationId = a})

instance FromJSON Location where
        parseJSON
          = withObject "Location"
              (\ o ->
                 Location' <$>
                   (o .:? "name") <*> (o .:? "metadata") <*>
                     (o .:? "displayName")
                     <*> (o .:? "labels")
                     <*> (o .:? "locationId"))

instance ToJSON Location where
        toJSON Location'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _lName,
                  ("metadata" .=) <$> _lMetadata,
                  ("displayName" .=) <$> _lDisplayName,
                  ("labels" .=) <$> _lLabels,
                  ("locationId" .=) <$> _lLocationId])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
  Empty'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'

instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | The streamed response for Firestore.BatchGetDocuments.
--
-- /See:/ 'batchGetDocumentsResponse' smart constructor.
data BatchGetDocumentsResponse =
  BatchGetDocumentsResponse'
    { _bgdrReadTime    :: !(Maybe DateTime')
    , _bgdrFound       :: !(Maybe Document)
    , _bgdrTransaction :: !(Maybe Bytes)
    , _bgdrMissing     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchGetDocumentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgdrReadTime'
--
-- * 'bgdrFound'
--
-- * 'bgdrTransaction'
--
-- * 'bgdrMissing'
batchGetDocumentsResponse
    :: BatchGetDocumentsResponse
batchGetDocumentsResponse =
  BatchGetDocumentsResponse'
    { _bgdrReadTime = Nothing
    , _bgdrFound = Nothing
    , _bgdrTransaction = Nothing
    , _bgdrMissing = Nothing
    }

-- | The time at which the document was read. This may be monotically
-- increasing, in this case the previous documents in the result stream are
-- guaranteed not to have changed between their read_time and this one.
bgdrReadTime :: Lens' BatchGetDocumentsResponse (Maybe UTCTime)
bgdrReadTime
  = lens _bgdrReadTime (\ s a -> s{_bgdrReadTime = a})
      . mapping _DateTime

-- | A document that was requested.
bgdrFound :: Lens' BatchGetDocumentsResponse (Maybe Document)
bgdrFound
  = lens _bgdrFound (\ s a -> s{_bgdrFound = a})

-- | The transaction that was started as part of this request. Will only be
-- set in the first response, and only if
-- BatchGetDocumentsRequest.new_transaction was set in the request.
bgdrTransaction :: Lens' BatchGetDocumentsResponse (Maybe ByteString)
bgdrTransaction
  = lens _bgdrTransaction
      (\ s a -> s{_bgdrTransaction = a})
      . mapping _Bytes

-- | A document name that was requested but does not exist. In the format:
-- \`projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}\`.
bgdrMissing :: Lens' BatchGetDocumentsResponse (Maybe Text)
bgdrMissing
  = lens _bgdrMissing (\ s a -> s{_bgdrMissing = a})

instance FromJSON BatchGetDocumentsResponse where
        parseJSON
          = withObject "BatchGetDocumentsResponse"
              (\ o ->
                 BatchGetDocumentsResponse' <$>
                   (o .:? "readTime") <*> (o .:? "found") <*>
                     (o .:? "transaction")
                     <*> (o .:? "missing"))

instance ToJSON BatchGetDocumentsResponse where
        toJSON BatchGetDocumentsResponse'{..}
          = object
              (catMaybes
                 [("readTime" .=) <$> _bgdrReadTime,
                  ("found" .=) <$> _bgdrFound,
                  ("transaction" .=) <$> _bgdrTransaction,
                  ("missing" .=) <$> _bgdrMissing])

-- | A filter that merges multiple other filters using the given operator.
--
-- /See:/ 'compositeFilter' smart constructor.
data CompositeFilter =
  CompositeFilter'
    { _cfOp      :: !(Maybe CompositeFilterOp)
    , _cfFilters :: !(Maybe [Filter])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CompositeFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfOp'
--
-- * 'cfFilters'
compositeFilter
    :: CompositeFilter
compositeFilter = CompositeFilter' {_cfOp = Nothing, _cfFilters = Nothing}

-- | The operator for combining multiple filters.
cfOp :: Lens' CompositeFilter (Maybe CompositeFilterOp)
cfOp = lens _cfOp (\ s a -> s{_cfOp = a})

-- | The list of filters to combine. Must contain at least one filter.
cfFilters :: Lens' CompositeFilter [Filter]
cfFilters
  = lens _cfFilters (\ s a -> s{_cfFilters = a}) .
      _Default
      . _Coerce

instance FromJSON CompositeFilter where
        parseJSON
          = withObject "CompositeFilter"
              (\ o ->
                 CompositeFilter' <$>
                   (o .:? "op") <*> (o .:? "filters" .!= mempty))

instance ToJSON CompositeFilter where
        toJSON CompositeFilter'{..}
          = object
              (catMaybes
                 [("op" .=) <$> _cfOp, ("filters" .=) <$> _cfFilters])

-- | A target specified by a set of documents names.
--
-- /See:/ 'documentsTarget' smart constructor.
newtype DocumentsTarget =
  DocumentsTarget'
    { _dtDocuments :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DocumentsTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtDocuments'
documentsTarget
    :: DocumentsTarget
documentsTarget = DocumentsTarget' {_dtDocuments = Nothing}

-- | The names of the documents to retrieve. In the format:
-- \`projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}\`.
-- The request will fail if any of the document is not a child resource of
-- the given \`database\`. Duplicate names will be elided.
dtDocuments :: Lens' DocumentsTarget [Text]
dtDocuments
  = lens _dtDocuments (\ s a -> s{_dtDocuments = a}) .
      _Default
      . _Coerce

instance FromJSON DocumentsTarget where
        parseJSON
          = withObject "DocumentsTarget"
              (\ o ->
                 DocumentsTarget' <$> (o .:? "documents" .!= mempty))

instance ToJSON DocumentsTarget where
        toJSON DocumentsTarget'{..}
          = object
              (catMaybes [("documents" .=) <$> _dtDocuments])

-- | Labels associated with this target change.
--
-- /See:/ 'listenRequestLabels' smart constructor.
newtype ListenRequestLabels =
  ListenRequestLabels'
    { _lrlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListenRequestLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrlAddtional'
listenRequestLabels
    :: HashMap Text Text -- ^ 'lrlAddtional'
    -> ListenRequestLabels
listenRequestLabels pLrlAddtional_ =
  ListenRequestLabels' {_lrlAddtional = _Coerce # pLrlAddtional_}

lrlAddtional :: Lens' ListenRequestLabels (HashMap Text Text)
lrlAddtional
  = lens _lrlAddtional (\ s a -> s{_lrlAddtional = a})
      . _Coerce

instance FromJSON ListenRequestLabels where
        parseJSON
          = withObject "ListenRequestLabels"
              (\ o -> ListenRequestLabels' <$> (parseJSONObject o))

instance ToJSON ListenRequestLabels where
        toJSON = toJSON . _lrlAddtional

-- | Cloud Firestore indexes enable simple and complex queries against
-- documents in a database.
--
-- /See:/ 'googleFirestoreAdminV1Index' smart constructor.
data GoogleFirestoreAdminV1Index =
  GoogleFirestoreAdminV1Index'
    { _gfaviState      :: !(Maybe GoogleFirestoreAdminV1IndexState)
    , _gfaviQueryScope :: !(Maybe GoogleFirestoreAdminV1IndexQueryScope)
    , _gfaviName       :: !(Maybe Text)
    , _gfaviFields     :: !(Maybe [GoogleFirestoreAdminV1IndexField])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1Index' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfaviState'
--
-- * 'gfaviQueryScope'
--
-- * 'gfaviName'
--
-- * 'gfaviFields'
googleFirestoreAdminV1Index
    :: GoogleFirestoreAdminV1Index
googleFirestoreAdminV1Index =
  GoogleFirestoreAdminV1Index'
    { _gfaviState = Nothing
    , _gfaviQueryScope = Nothing
    , _gfaviName = Nothing
    , _gfaviFields = Nothing
    }

-- | Output only. The serving state of the index.
gfaviState :: Lens' GoogleFirestoreAdminV1Index (Maybe GoogleFirestoreAdminV1IndexState)
gfaviState
  = lens _gfaviState (\ s a -> s{_gfaviState = a})

-- | Indexes with a collection query scope specified allow queries against a
-- collection that is the child of a specific document, specified at query
-- time, and that has the same collection id. Indexes with a collection
-- group query scope specified allow queries against all collections
-- descended from a specific document, specified at query time, and that
-- have the same collection id as this index.
gfaviQueryScope :: Lens' GoogleFirestoreAdminV1Index (Maybe GoogleFirestoreAdminV1IndexQueryScope)
gfaviQueryScope
  = lens _gfaviQueryScope
      (\ s a -> s{_gfaviQueryScope = a})

-- | Output only. A server defined name for this index. The form of this name
-- for composite indexes will be:
-- \`projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/{collection_id}\/indexes\/{composite_index_id}\`
-- For single field indexes, this field will be empty.
gfaviName :: Lens' GoogleFirestoreAdminV1Index (Maybe Text)
gfaviName
  = lens _gfaviName (\ s a -> s{_gfaviName = a})

-- | The fields supported by this index. For composite indexes, this is
-- always 2 or more fields. The last field entry is always for the field
-- path \`__name__\`. If, on creation, \`__name__\` was not specified as
-- the last field, it will be added automatically with the same direction
-- as that of the last field defined. If the final field in a composite
-- index is not directional, the \`__name__\` will be ordered ASCENDING
-- (unless explicitly specified). For single field indexes, this will
-- always be exactly one entry with a field path equal to the field path of
-- the associated field.
gfaviFields :: Lens' GoogleFirestoreAdminV1Index [GoogleFirestoreAdminV1IndexField]
gfaviFields
  = lens _gfaviFields (\ s a -> s{_gfaviFields = a}) .
      _Default
      . _Coerce

instance FromJSON GoogleFirestoreAdminV1Index where
        parseJSON
          = withObject "GoogleFirestoreAdminV1Index"
              (\ o ->
                 GoogleFirestoreAdminV1Index' <$>
                   (o .:? "state") <*> (o .:? "queryScope") <*>
                     (o .:? "name")
                     <*> (o .:? "fields" .!= mempty))

instance ToJSON GoogleFirestoreAdminV1Index where
        toJSON GoogleFirestoreAdminV1Index'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _gfaviState,
                  ("queryScope" .=) <$> _gfaviQueryScope,
                  ("name" .=) <$> _gfaviName,
                  ("fields" .=) <$> _gfaviFields])

-- | The response for Firestore.BeginTransaction.
--
-- /See:/ 'beginTransactionResponse' smart constructor.
newtype BeginTransactionResponse =
  BeginTransactionResponse'
    { _btrTransaction :: Maybe Bytes
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BeginTransactionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'btrTransaction'
beginTransactionResponse
    :: BeginTransactionResponse
beginTransactionResponse = BeginTransactionResponse' {_btrTransaction = Nothing}

-- | The transaction that was started.
btrTransaction :: Lens' BeginTransactionResponse (Maybe ByteString)
btrTransaction
  = lens _btrTransaction
      (\ s a -> s{_btrTransaction = a})
      . mapping _Bytes

instance FromJSON BeginTransactionResponse where
        parseJSON
          = withObject "BeginTransactionResponse"
              (\ o ->
                 BeginTransactionResponse' <$> (o .:? "transaction"))

instance ToJSON BeginTransactionResponse where
        toJSON BeginTransactionResponse'{..}
          = object
              (catMaybes [("transaction" .=) <$> _btrTransaction])

-- | The response for Firestore.RunQuery.
--
-- /See:/ 'runQueryResponse' smart constructor.
data RunQueryResponse =
  RunQueryResponse'
    { _rReadTime       :: !(Maybe DateTime')
    , _rSkippedResults :: !(Maybe (Textual Int32))
    , _rTransaction    :: !(Maybe Bytes)
    , _rDocument       :: !(Maybe Document)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'RunQueryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rReadTime'
--
-- * 'rSkippedResults'
--
-- * 'rTransaction'
--
-- * 'rDocument'
runQueryResponse
    :: RunQueryResponse
runQueryResponse =
  RunQueryResponse'
    { _rReadTime = Nothing
    , _rSkippedResults = Nothing
    , _rTransaction = Nothing
    , _rDocument = Nothing
    }

-- | The time at which the document was read. This may be monotonically
-- increasing; in this case, the previous documents in the result stream
-- are guaranteed not to have changed between their \`read_time\` and this
-- one. If the query returns no results, a response with \`read_time\` and
-- no \`document\` will be sent, and this represents the time at which the
-- query was run.
rReadTime :: Lens' RunQueryResponse (Maybe UTCTime)
rReadTime
  = lens _rReadTime (\ s a -> s{_rReadTime = a}) .
      mapping _DateTime

-- | The number of results that have been skipped due to an offset between
-- the last response and the current response.
rSkippedResults :: Lens' RunQueryResponse (Maybe Int32)
rSkippedResults
  = lens _rSkippedResults
      (\ s a -> s{_rSkippedResults = a})
      . mapping _Coerce

-- | The transaction that was started as part of this request. Can only be
-- set in the first response, and only if RunQueryRequest.new_transaction
-- was set in the request. If set, no other fields will be set in this
-- response.
rTransaction :: Lens' RunQueryResponse (Maybe ByteString)
rTransaction
  = lens _rTransaction (\ s a -> s{_rTransaction = a})
      . mapping _Bytes

-- | A query result. Not set when reporting partial progress.
rDocument :: Lens' RunQueryResponse (Maybe Document)
rDocument
  = lens _rDocument (\ s a -> s{_rDocument = a})

instance FromJSON RunQueryResponse where
        parseJSON
          = withObject "RunQueryResponse"
              (\ o ->
                 RunQueryResponse' <$>
                   (o .:? "readTime") <*> (o .:? "skippedResults") <*>
                     (o .:? "transaction")
                     <*> (o .:? "document"))

instance ToJSON RunQueryResponse where
        toJSON RunQueryResponse'{..}
          = object
              (catMaybes
                 [("readTime" .=) <$> _rReadTime,
                  ("skippedResults" .=) <$> _rSkippedResults,
                  ("transaction" .=) <$> _rTransaction,
                  ("document" .=) <$> _rDocument])

-- | Metadata for google.longrunning.Operation results from
-- FirestoreAdmin.ExportDocuments.
--
-- /See:/ 'googleFirestoreAdminV1ExportDocumentsMetadata' smart constructor.
data GoogleFirestoreAdminV1ExportDocumentsMetadata =
  GoogleFirestoreAdminV1ExportDocumentsMetadata'
    { _gfavedmProgressBytes     :: !(Maybe GoogleFirestoreAdminV1Progress)
    , _gfavedmStartTime         :: !(Maybe DateTime')
    , _gfavedmCollectionIds     :: !(Maybe [Text])
    , _gfavedmProgressDocuments :: !(Maybe GoogleFirestoreAdminV1Progress)
    , _gfavedmEndTime           :: !(Maybe DateTime')
    , _gfavedmOperationState    :: !(Maybe GoogleFirestoreAdminV1ExportDocumentsMetadataOperationState)
    , _gfavedmOutputURIPrefix   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1ExportDocumentsMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfavedmProgressBytes'
--
-- * 'gfavedmStartTime'
--
-- * 'gfavedmCollectionIds'
--
-- * 'gfavedmProgressDocuments'
--
-- * 'gfavedmEndTime'
--
-- * 'gfavedmOperationState'
--
-- * 'gfavedmOutputURIPrefix'
googleFirestoreAdminV1ExportDocumentsMetadata
    :: GoogleFirestoreAdminV1ExportDocumentsMetadata
googleFirestoreAdminV1ExportDocumentsMetadata =
  GoogleFirestoreAdminV1ExportDocumentsMetadata'
    { _gfavedmProgressBytes = Nothing
    , _gfavedmStartTime = Nothing
    , _gfavedmCollectionIds = Nothing
    , _gfavedmProgressDocuments = Nothing
    , _gfavedmEndTime = Nothing
    , _gfavedmOperationState = Nothing
    , _gfavedmOutputURIPrefix = Nothing
    }

-- | The progress, in bytes, of this operation.
gfavedmProgressBytes :: Lens' GoogleFirestoreAdminV1ExportDocumentsMetadata (Maybe GoogleFirestoreAdminV1Progress)
gfavedmProgressBytes
  = lens _gfavedmProgressBytes
      (\ s a -> s{_gfavedmProgressBytes = a})

-- | The time this operation started.
gfavedmStartTime :: Lens' GoogleFirestoreAdminV1ExportDocumentsMetadata (Maybe UTCTime)
gfavedmStartTime
  = lens _gfavedmStartTime
      (\ s a -> s{_gfavedmStartTime = a})
      . mapping _DateTime

-- | Which collection ids are being exported.
gfavedmCollectionIds :: Lens' GoogleFirestoreAdminV1ExportDocumentsMetadata [Text]
gfavedmCollectionIds
  = lens _gfavedmCollectionIds
      (\ s a -> s{_gfavedmCollectionIds = a})
      . _Default
      . _Coerce

-- | The progress, in documents, of this operation.
gfavedmProgressDocuments :: Lens' GoogleFirestoreAdminV1ExportDocumentsMetadata (Maybe GoogleFirestoreAdminV1Progress)
gfavedmProgressDocuments
  = lens _gfavedmProgressDocuments
      (\ s a -> s{_gfavedmProgressDocuments = a})

-- | The time this operation completed. Will be unset if operation still in
-- progress.
gfavedmEndTime :: Lens' GoogleFirestoreAdminV1ExportDocumentsMetadata (Maybe UTCTime)
gfavedmEndTime
  = lens _gfavedmEndTime
      (\ s a -> s{_gfavedmEndTime = a})
      . mapping _DateTime

-- | The state of the export operation.
gfavedmOperationState :: Lens' GoogleFirestoreAdminV1ExportDocumentsMetadata (Maybe GoogleFirestoreAdminV1ExportDocumentsMetadataOperationState)
gfavedmOperationState
  = lens _gfavedmOperationState
      (\ s a -> s{_gfavedmOperationState = a})

-- | Where the entities are being exported to.
gfavedmOutputURIPrefix :: Lens' GoogleFirestoreAdminV1ExportDocumentsMetadata (Maybe Text)
gfavedmOutputURIPrefix
  = lens _gfavedmOutputURIPrefix
      (\ s a -> s{_gfavedmOutputURIPrefix = a})

instance FromJSON
           GoogleFirestoreAdminV1ExportDocumentsMetadata
         where
        parseJSON
          = withObject
              "GoogleFirestoreAdminV1ExportDocumentsMetadata"
              (\ o ->
                 GoogleFirestoreAdminV1ExportDocumentsMetadata' <$>
                   (o .:? "progressBytes") <*> (o .:? "startTime") <*>
                     (o .:? "collectionIds" .!= mempty)
                     <*> (o .:? "progressDocuments")
                     <*> (o .:? "endTime")
                     <*> (o .:? "operationState")
                     <*> (o .:? "outputUriPrefix"))

instance ToJSON
           GoogleFirestoreAdminV1ExportDocumentsMetadata
         where
        toJSON
          GoogleFirestoreAdminV1ExportDocumentsMetadata'{..}
          = object
              (catMaybes
                 [("progressBytes" .=) <$> _gfavedmProgressBytes,
                  ("startTime" .=) <$> _gfavedmStartTime,
                  ("collectionIds" .=) <$> _gfavedmCollectionIds,
                  ("progressDocuments" .=) <$>
                    _gfavedmProgressDocuments,
                  ("endTime" .=) <$> _gfavedmEndTime,
                  ("operationState" .=) <$> _gfavedmOperationState,
                  ("outputUriPrefix" .=) <$> _gfavedmOutputURIPrefix])

-- | Describes the progress of the operation. Unit of work is generic and
-- must be interpreted based on where Progress is used.
--
-- /See:/ 'googleFirestoreAdminV1Progress' smart constructor.
data GoogleFirestoreAdminV1Progress =
  GoogleFirestoreAdminV1Progress'
    { _gfavpCompletedWork :: !(Maybe (Textual Int64))
    , _gfavpEstimatedWork :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1Progress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfavpCompletedWork'
--
-- * 'gfavpEstimatedWork'
googleFirestoreAdminV1Progress
    :: GoogleFirestoreAdminV1Progress
googleFirestoreAdminV1Progress =
  GoogleFirestoreAdminV1Progress'
    {_gfavpCompletedWork = Nothing, _gfavpEstimatedWork = Nothing}

-- | The amount of work completed.
gfavpCompletedWork :: Lens' GoogleFirestoreAdminV1Progress (Maybe Int64)
gfavpCompletedWork
  = lens _gfavpCompletedWork
      (\ s a -> s{_gfavpCompletedWork = a})
      . mapping _Coerce

-- | The amount of work estimated.
gfavpEstimatedWork :: Lens' GoogleFirestoreAdminV1Progress (Maybe Int64)
gfavpEstimatedWork
  = lens _gfavpEstimatedWork
      (\ s a -> s{_gfavpEstimatedWork = a})
      . mapping _Coerce

instance FromJSON GoogleFirestoreAdminV1Progress
         where
        parseJSON
          = withObject "GoogleFirestoreAdminV1Progress"
              (\ o ->
                 GoogleFirestoreAdminV1Progress' <$>
                   (o .:? "completedWork") <*> (o .:? "estimatedWork"))

instance ToJSON GoogleFirestoreAdminV1Progress where
        toJSON GoogleFirestoreAdminV1Progress'{..}
          = object
              (catMaybes
                 [("completedWork" .=) <$> _gfavpCompletedWork,
                  ("estimatedWork" .=) <$> _gfavpEstimatedWork])

-- | A set of field paths on a document. Used to restrict a get or update
-- operation on a document to a subset of its fields. This is different
-- from standard field masks, as this is always scoped to a Document, and
-- takes in account the dynamic nature of Value.
--
-- /See:/ 'documentMask' smart constructor.
newtype DocumentMask =
  DocumentMask'
    { _dmFieldPaths :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DocumentMask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmFieldPaths'
documentMask
    :: DocumentMask
documentMask = DocumentMask' {_dmFieldPaths = Nothing}

-- | The list of field paths in the mask. See Document.fields for a field
-- path syntax reference.
dmFieldPaths :: Lens' DocumentMask [Text]
dmFieldPaths
  = lens _dmFieldPaths (\ s a -> s{_dmFieldPaths = a})
      . _Default
      . _Coerce

instance FromJSON DocumentMask where
        parseJSON
          = withObject "DocumentMask"
              (\ o ->
                 DocumentMask' <$> (o .:? "fieldPaths" .!= mempty))

instance ToJSON DocumentMask where
        toJSON DocumentMask'{..}
          = object
              (catMaybes [("fieldPaths" .=) <$> _dmFieldPaths])

-- | A target specified by a query.
--
-- /See:/ 'queryTarget' smart constructor.
data QueryTarget =
  QueryTarget'
    { _qtParent          :: !(Maybe Text)
    , _qtStructuredQuery :: !(Maybe StructuredQuery)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'QueryTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qtParent'
--
-- * 'qtStructuredQuery'
queryTarget
    :: QueryTarget
queryTarget = QueryTarget' {_qtParent = Nothing, _qtStructuredQuery = Nothing}

-- | The parent resource name. In the format:
-- \`projects\/{project_id}\/databases\/{database_id}\/documents\` or
-- \`projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}\`.
-- For example: \`projects\/my-project\/databases\/my-database\/documents\`
-- or
-- \`projects\/my-project\/databases\/my-database\/documents\/chatrooms\/my-chatroom\`
qtParent :: Lens' QueryTarget (Maybe Text)
qtParent = lens _qtParent (\ s a -> s{_qtParent = a})

-- | A structured query.
qtStructuredQuery :: Lens' QueryTarget (Maybe StructuredQuery)
qtStructuredQuery
  = lens _qtStructuredQuery
      (\ s a -> s{_qtStructuredQuery = a})

instance FromJSON QueryTarget where
        parseJSON
          = withObject "QueryTarget"
              (\ o ->
                 QueryTarget' <$>
                   (o .:? "parent") <*> (o .:? "structuredQuery"))

instance ToJSON QueryTarget where
        toJSON QueryTarget'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _qtParent,
                  ("structuredQuery" .=) <$> _qtStructuredQuery])

-- | A message that can hold any of the supported value types.
--
-- /See:/ 'value' smart constructor.
data Value =
  Value'
    { _vGeoPointValue  :: !(Maybe LatLng)
    , _vBytesValue     :: !(Maybe Bytes)
    , _vIntegerValue   :: !(Maybe (Textual Int64))
    , _vTimestampValue :: !(Maybe DateTime')
    , _vDoubleValue    :: !(Maybe (Textual Double))
    , _vStringValue    :: !(Maybe Text)
    , _vBooleanValue   :: !(Maybe Bool)
    , _vMapValue       :: !(Maybe MapValue)
    , _vArrayValue     :: !(Maybe ArrayValue)
    , _vReferenceValue :: !(Maybe Text)
    , _vNullValue      :: !(Maybe ValueNullValue)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Value' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vGeoPointValue'
--
-- * 'vBytesValue'
--
-- * 'vIntegerValue'
--
-- * 'vTimestampValue'
--
-- * 'vDoubleValue'
--
-- * 'vStringValue'
--
-- * 'vBooleanValue'
--
-- * 'vMapValue'
--
-- * 'vArrayValue'
--
-- * 'vReferenceValue'
--
-- * 'vNullValue'
value
    :: Value
value =
  Value'
    { _vGeoPointValue = Nothing
    , _vBytesValue = Nothing
    , _vIntegerValue = Nothing
    , _vTimestampValue = Nothing
    , _vDoubleValue = Nothing
    , _vStringValue = Nothing
    , _vBooleanValue = Nothing
    , _vMapValue = Nothing
    , _vArrayValue = Nothing
    , _vReferenceValue = Nothing
    , _vNullValue = Nothing
    }

-- | A geo point value representing a point on the surface of Earth.
vGeoPointValue :: Lens' Value (Maybe LatLng)
vGeoPointValue
  = lens _vGeoPointValue
      (\ s a -> s{_vGeoPointValue = a})

-- | A bytes value. Must not exceed 1 MiB - 89 bytes. Only the first 1,500
-- bytes are considered by queries.
vBytesValue :: Lens' Value (Maybe ByteString)
vBytesValue
  = lens _vBytesValue (\ s a -> s{_vBytesValue = a}) .
      mapping _Bytes

-- | An integer value.
vIntegerValue :: Lens' Value (Maybe Int64)
vIntegerValue
  = lens _vIntegerValue
      (\ s a -> s{_vIntegerValue = a})
      . mapping _Coerce

-- | A timestamp value. Precise only to microseconds. When stored, any
-- additional precision is rounded down.
vTimestampValue :: Lens' Value (Maybe UTCTime)
vTimestampValue
  = lens _vTimestampValue
      (\ s a -> s{_vTimestampValue = a})
      . mapping _DateTime

-- | A double value.
vDoubleValue :: Lens' Value (Maybe Double)
vDoubleValue
  = lens _vDoubleValue (\ s a -> s{_vDoubleValue = a})
      . mapping _Coerce

-- | A string value. The string, represented as UTF-8, must not exceed 1 MiB
-- - 89 bytes. Only the first 1,500 bytes of the UTF-8 representation are
-- considered by queries.
vStringValue :: Lens' Value (Maybe Text)
vStringValue
  = lens _vStringValue (\ s a -> s{_vStringValue = a})

-- | A boolean value.
vBooleanValue :: Lens' Value (Maybe Bool)
vBooleanValue
  = lens _vBooleanValue
      (\ s a -> s{_vBooleanValue = a})

-- | A map value.
vMapValue :: Lens' Value (Maybe MapValue)
vMapValue
  = lens _vMapValue (\ s a -> s{_vMapValue = a})

-- | An array value. Cannot directly contain another array value, though can
-- contain an map which contains another array.
vArrayValue :: Lens' Value (Maybe ArrayValue)
vArrayValue
  = lens _vArrayValue (\ s a -> s{_vArrayValue = a})

-- | A reference to a document. For example:
-- \`projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}\`.
vReferenceValue :: Lens' Value (Maybe Text)
vReferenceValue
  = lens _vReferenceValue
      (\ s a -> s{_vReferenceValue = a})

-- | A null value.
vNullValue :: Lens' Value (Maybe ValueNullValue)
vNullValue
  = lens _vNullValue (\ s a -> s{_vNullValue = a})

instance FromJSON Value where
        parseJSON
          = withObject "Value"
              (\ o ->
                 Value' <$>
                   (o .:? "geoPointValue") <*> (o .:? "bytesValue") <*>
                     (o .:? "integerValue")
                     <*> (o .:? "timestampValue")
                     <*> (o .:? "doubleValue")
                     <*> (o .:? "stringValue")
                     <*> (o .:? "booleanValue")
                     <*> (o .:? "mapValue")
                     <*> (o .:? "arrayValue")
                     <*> (o .:? "referenceValue")
                     <*> (o .:? "nullValue"))

instance ToJSON Value where
        toJSON Value'{..}
          = object
              (catMaybes
                 [("geoPointValue" .=) <$> _vGeoPointValue,
                  ("bytesValue" .=) <$> _vBytesValue,
                  ("integerValue" .=) <$> _vIntegerValue,
                  ("timestampValue" .=) <$> _vTimestampValue,
                  ("doubleValue" .=) <$> _vDoubleValue,
                  ("stringValue" .=) <$> _vStringValue,
                  ("booleanValue" .=) <$> _vBooleanValue,
                  ("mapValue" .=) <$> _vMapValue,
                  ("arrayValue" .=) <$> _vArrayValue,
                  ("referenceValue" .=) <$> _vReferenceValue,
                  ("nullValue" .=) <$> _vNullValue])

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

-- | A transformation of a document.
--
-- /See:/ 'documentTransform' smart constructor.
data DocumentTransform =
  DocumentTransform'
    { _dtDocument        :: !(Maybe Text)
    , _dtFieldTransforms :: !(Maybe [FieldTransform])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DocumentTransform' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtDocument'
--
-- * 'dtFieldTransforms'
documentTransform
    :: DocumentTransform
documentTransform =
  DocumentTransform' {_dtDocument = Nothing, _dtFieldTransforms = Nothing}

-- | The name of the document to transform.
dtDocument :: Lens' DocumentTransform (Maybe Text)
dtDocument
  = lens _dtDocument (\ s a -> s{_dtDocument = a})

-- | The list of transformations to apply to the fields of the document, in
-- order. This must not be empty.
dtFieldTransforms :: Lens' DocumentTransform [FieldTransform]
dtFieldTransforms
  = lens _dtFieldTransforms
      (\ s a -> s{_dtFieldTransforms = a})
      . _Default
      . _Coerce

instance FromJSON DocumentTransform where
        parseJSON
          = withObject "DocumentTransform"
              (\ o ->
                 DocumentTransform' <$>
                   (o .:? "document") <*>
                     (o .:? "fieldTransforms" .!= mempty))

instance ToJSON DocumentTransform where
        toJSON DocumentTransform'{..}
          = object
              (catMaybes
                 [("document" .=) <$> _dtDocument,
                  ("fieldTransforms" .=) <$> _dtFieldTransforms])

-- | A Firestore query.
--
-- /See:/ 'structuredQuery' smart constructor.
data StructuredQuery =
  StructuredQuery'
    { _sqWhere   :: !(Maybe Filter)
    , _sqOrderBy :: !(Maybe [Order])
    , _sqStartAt :: !(Maybe Cursor)
    , _sqOffSet  :: !(Maybe (Textual Int32))
    , _sqFrom    :: !(Maybe [CollectionSelector])
    , _sqEndAt   :: !(Maybe Cursor)
    , _sqLimit   :: !(Maybe (Textual Int32))
    , _sqSelect  :: !(Maybe Projection)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'StructuredQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqWhere'
--
-- * 'sqOrderBy'
--
-- * 'sqStartAt'
--
-- * 'sqOffSet'
--
-- * 'sqFrom'
--
-- * 'sqEndAt'
--
-- * 'sqLimit'
--
-- * 'sqSelect'
structuredQuery
    :: StructuredQuery
structuredQuery =
  StructuredQuery'
    { _sqWhere = Nothing
    , _sqOrderBy = Nothing
    , _sqStartAt = Nothing
    , _sqOffSet = Nothing
    , _sqFrom = Nothing
    , _sqEndAt = Nothing
    , _sqLimit = Nothing
    , _sqSelect = Nothing
    }

-- | The filter to apply.
sqWhere :: Lens' StructuredQuery (Maybe Filter)
sqWhere = lens _sqWhere (\ s a -> s{_sqWhere = a})

-- | The order to apply to the query results. Firestore guarantees a stable
-- ordering through the following rules: * Any field required to appear in
-- \`order_by\`, that is not already specified in \`order_by\`, is appended
-- to the order in field name order by default. * If an order on
-- \`__name__\` is not specified, it is appended by default. Fields are
-- appended with the same sort direction as the last order specified, or
-- \'ASCENDING\' if no order was specified. For example: * \`SELECT * FROM
-- Foo ORDER BY A\` becomes \`SELECT * FROM Foo ORDER BY A, __name__\` *
-- \`SELECT * FROM Foo ORDER BY A DESC\` becomes \`SELECT * FROM Foo ORDER
-- BY A DESC, __name__ DESC\` * \`SELECT * FROM Foo WHERE A > 1\` becomes
-- \`SELECT * FROM Foo WHERE A > 1 ORDER BY A, __name__\`
sqOrderBy :: Lens' StructuredQuery [Order]
sqOrderBy
  = lens _sqOrderBy (\ s a -> s{_sqOrderBy = a}) .
      _Default
      . _Coerce

-- | A starting point for the query results.
sqStartAt :: Lens' StructuredQuery (Maybe Cursor)
sqStartAt
  = lens _sqStartAt (\ s a -> s{_sqStartAt = a})

-- | The number of results to skip. Applies before limit, but after all other
-- constraints. Must be >= 0 if specified.
sqOffSet :: Lens' StructuredQuery (Maybe Int32)
sqOffSet
  = lens _sqOffSet (\ s a -> s{_sqOffSet = a}) .
      mapping _Coerce

-- | The collections to query.
sqFrom :: Lens' StructuredQuery [CollectionSelector]
sqFrom
  = lens _sqFrom (\ s a -> s{_sqFrom = a}) . _Default .
      _Coerce

-- | A end point for the query results.
sqEndAt :: Lens' StructuredQuery (Maybe Cursor)
sqEndAt = lens _sqEndAt (\ s a -> s{_sqEndAt = a})

-- | The maximum number of results to return. Applies after all other
-- constraints. Must be >= 0 if specified.
sqLimit :: Lens' StructuredQuery (Maybe Int32)
sqLimit
  = lens _sqLimit (\ s a -> s{_sqLimit = a}) .
      mapping _Coerce

-- | The projection to return.
sqSelect :: Lens' StructuredQuery (Maybe Projection)
sqSelect = lens _sqSelect (\ s a -> s{_sqSelect = a})

instance FromJSON StructuredQuery where
        parseJSON
          = withObject "StructuredQuery"
              (\ o ->
                 StructuredQuery' <$>
                   (o .:? "where") <*> (o .:? "orderBy" .!= mempty) <*>
                     (o .:? "startAt")
                     <*> (o .:? "offset")
                     <*> (o .:? "from" .!= mempty)
                     <*> (o .:? "endAt")
                     <*> (o .:? "limit")
                     <*> (o .:? "select"))

instance ToJSON StructuredQuery where
        toJSON StructuredQuery'{..}
          = object
              (catMaybes
                 [("where" .=) <$> _sqWhere,
                  ("orderBy" .=) <$> _sqOrderBy,
                  ("startAt" .=) <$> _sqStartAt,
                  ("offset" .=) <$> _sqOffSet, ("from" .=) <$> _sqFrom,
                  ("endAt" .=) <$> _sqEndAt, ("limit" .=) <$> _sqLimit,
                  ("select" .=) <$> _sqSelect])

-- | A digest of all the documents that match a given target.
--
-- /See:/ 'existenceFilter' smart constructor.
data ExistenceFilter =
  ExistenceFilter'
    { _efTargetId :: !(Maybe (Textual Int32))
    , _efCount    :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExistenceFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'efTargetId'
--
-- * 'efCount'
existenceFilter
    :: ExistenceFilter
existenceFilter = ExistenceFilter' {_efTargetId = Nothing, _efCount = Nothing}

-- | The target ID to which this filter applies.
efTargetId :: Lens' ExistenceFilter (Maybe Int32)
efTargetId
  = lens _efTargetId (\ s a -> s{_efTargetId = a}) .
      mapping _Coerce

-- | The total count of documents that match target_id. If different from the
-- count of documents in the client that match, the client must manually
-- determine which documents no longer match the target.
efCount :: Lens' ExistenceFilter (Maybe Int32)
efCount
  = lens _efCount (\ s a -> s{_efCount = a}) .
      mapping _Coerce

instance FromJSON ExistenceFilter where
        parseJSON
          = withObject "ExistenceFilter"
              (\ o ->
                 ExistenceFilter' <$>
                   (o .:? "targetId") <*> (o .:? "count"))

instance ToJSON ExistenceFilter where
        toJSON ExistenceFilter'{..}
          = object
              (catMaybes
                 [("targetId" .=) <$> _efTargetId,
                  ("count" .=) <$> _efCount])

-- | The response for FirestoreAdmin.ListFields.
--
-- /See:/ 'googleFirestoreAdminV1ListFieldsResponse' smart constructor.
data GoogleFirestoreAdminV1ListFieldsResponse =
  GoogleFirestoreAdminV1ListFieldsResponse'
    { _gfavlfrNextPageToken :: !(Maybe Text)
    , _gfavlfrFields        :: !(Maybe [GoogleFirestoreAdminV1Field])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1ListFieldsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfavlfrNextPageToken'
--
-- * 'gfavlfrFields'
googleFirestoreAdminV1ListFieldsResponse
    :: GoogleFirestoreAdminV1ListFieldsResponse
googleFirestoreAdminV1ListFieldsResponse =
  GoogleFirestoreAdminV1ListFieldsResponse'
    {_gfavlfrNextPageToken = Nothing, _gfavlfrFields = Nothing}

-- | A page token that may be used to request another page of results. If
-- blank, this is the last page.
gfavlfrNextPageToken :: Lens' GoogleFirestoreAdminV1ListFieldsResponse (Maybe Text)
gfavlfrNextPageToken
  = lens _gfavlfrNextPageToken
      (\ s a -> s{_gfavlfrNextPageToken = a})

-- | The requested fields.
gfavlfrFields :: Lens' GoogleFirestoreAdminV1ListFieldsResponse [GoogleFirestoreAdminV1Field]
gfavlfrFields
  = lens _gfavlfrFields
      (\ s a -> s{_gfavlfrFields = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleFirestoreAdminV1ListFieldsResponse
         where
        parseJSON
          = withObject
              "GoogleFirestoreAdminV1ListFieldsResponse"
              (\ o ->
                 GoogleFirestoreAdminV1ListFieldsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "fields" .!= mempty))

instance ToJSON
           GoogleFirestoreAdminV1ListFieldsResponse
         where
        toJSON GoogleFirestoreAdminV1ListFieldsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gfavlfrNextPageToken,
                  ("fields" .=) <$> _gfavlfrFields])

-- | The request for FirestoreAdmin.ImportDocuments.
--
-- /See:/ 'googleFirestoreAdminV1ImportDocumentsRequest' smart constructor.
data GoogleFirestoreAdminV1ImportDocumentsRequest =
  GoogleFirestoreAdminV1ImportDocumentsRequest'
    { _gfavidrInputURIPrefix :: !(Maybe Text)
    , _gfavidrCollectionIds  :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1ImportDocumentsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfavidrInputURIPrefix'
--
-- * 'gfavidrCollectionIds'
googleFirestoreAdminV1ImportDocumentsRequest
    :: GoogleFirestoreAdminV1ImportDocumentsRequest
googleFirestoreAdminV1ImportDocumentsRequest =
  GoogleFirestoreAdminV1ImportDocumentsRequest'
    {_gfavidrInputURIPrefix = Nothing, _gfavidrCollectionIds = Nothing}

-- | Location of the exported files. This must match the output_uri_prefix of
-- an ExportDocumentsResponse from an export that has completed
-- successfully. See:
-- google.firestore.admin.v1.ExportDocumentsResponse.output_uri_prefix.
gfavidrInputURIPrefix :: Lens' GoogleFirestoreAdminV1ImportDocumentsRequest (Maybe Text)
gfavidrInputURIPrefix
  = lens _gfavidrInputURIPrefix
      (\ s a -> s{_gfavidrInputURIPrefix = a})

-- | Which collection ids to import. Unspecified means all collections
-- included in the import.
gfavidrCollectionIds :: Lens' GoogleFirestoreAdminV1ImportDocumentsRequest [Text]
gfavidrCollectionIds
  = lens _gfavidrCollectionIds
      (\ s a -> s{_gfavidrCollectionIds = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleFirestoreAdminV1ImportDocumentsRequest
         where
        parseJSON
          = withObject
              "GoogleFirestoreAdminV1ImportDocumentsRequest"
              (\ o ->
                 GoogleFirestoreAdminV1ImportDocumentsRequest' <$>
                   (o .:? "inputUriPrefix") <*>
                     (o .:? "collectionIds" .!= mempty))

instance ToJSON
           GoogleFirestoreAdminV1ImportDocumentsRequest
         where
        toJSON
          GoogleFirestoreAdminV1ImportDocumentsRequest'{..}
          = object
              (catMaybes
                 [("inputUriPrefix" .=) <$> _gfavidrInputURIPrefix,
                  ("collectionIds" .=) <$> _gfavidrCollectionIds])

-- | The metadata message for google.cloud.location.Location.metadata.
--
-- /See:/ 'googleFirestoreAdminV1LocationMetadata' smart constructor.
data GoogleFirestoreAdminV1LocationMetadata =
  GoogleFirestoreAdminV1LocationMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1LocationMetadata' with the minimum fields required to make a request.
--
googleFirestoreAdminV1LocationMetadata
    :: GoogleFirestoreAdminV1LocationMetadata
googleFirestoreAdminV1LocationMetadata = GoogleFirestoreAdminV1LocationMetadata'

instance FromJSON
           GoogleFirestoreAdminV1LocationMetadata
         where
        parseJSON
          = withObject "GoogleFirestoreAdminV1LocationMetadata"
              (\ o -> pure GoogleFirestoreAdminV1LocationMetadata')

instance ToJSON
           GoogleFirestoreAdminV1LocationMetadata
         where
        toJSON = const emptyObject

-- | The request message for Operations.CancelOperation.
--
-- /See:/ 'googleLongrunningCancelOperationRequest' smart constructor.
data GoogleLongrunningCancelOperationRequest =
  GoogleLongrunningCancelOperationRequest'
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleLongrunningCancelOperationRequest' with the minimum fields required to make a request.
--
googleLongrunningCancelOperationRequest
    :: GoogleLongrunningCancelOperationRequest
googleLongrunningCancelOperationRequest =
  GoogleLongrunningCancelOperationRequest'

instance FromJSON
           GoogleLongrunningCancelOperationRequest
         where
        parseJSON
          = withObject
              "GoogleLongrunningCancelOperationRequest"
              (\ o ->
                 pure GoogleLongrunningCancelOperationRequest')

instance ToJSON
           GoogleLongrunningCancelOperationRequest
         where
        toJSON = const emptyObject

-- | The response from Firestore.ListCollectionIds.
--
-- /See:/ 'listCollectionIdsResponse' smart constructor.
data ListCollectionIdsResponse =
  ListCollectionIdsResponse'
    { _lcirNextPageToken :: !(Maybe Text)
    , _lcirCollectionIds :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListCollectionIdsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcirNextPageToken'
--
-- * 'lcirCollectionIds'
listCollectionIdsResponse
    :: ListCollectionIdsResponse
listCollectionIdsResponse =
  ListCollectionIdsResponse'
    {_lcirNextPageToken = Nothing, _lcirCollectionIds = Nothing}

-- | A page token that may be used to continue the list.
lcirNextPageToken :: Lens' ListCollectionIdsResponse (Maybe Text)
lcirNextPageToken
  = lens _lcirNextPageToken
      (\ s a -> s{_lcirNextPageToken = a})

-- | The collection ids.
lcirCollectionIds :: Lens' ListCollectionIdsResponse [Text]
lcirCollectionIds
  = lens _lcirCollectionIds
      (\ s a -> s{_lcirCollectionIds = a})
      . _Default
      . _Coerce

instance FromJSON ListCollectionIdsResponse where
        parseJSON
          = withObject "ListCollectionIdsResponse"
              (\ o ->
                 ListCollectionIdsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "collectionIds" .!= mempty))

instance ToJSON ListCollectionIdsResponse where
        toJSON ListCollectionIdsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lcirNextPageToken,
                  ("collectionIds" .=) <$> _lcirCollectionIds])

-- | A reference to a field, such as \`max(messages.time) as max_time\`.
--
-- /See:/ 'fieldReference' smart constructor.
newtype FieldReference =
  FieldReference'
    { _frFieldPath :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'FieldReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frFieldPath'
fieldReference
    :: FieldReference
fieldReference = FieldReference' {_frFieldPath = Nothing}

frFieldPath :: Lens' FieldReference (Maybe Text)
frFieldPath
  = lens _frFieldPath (\ s a -> s{_frFieldPath = a})

instance FromJSON FieldReference where
        parseJSON
          = withObject "FieldReference"
              (\ o -> FieldReference' <$> (o .:? "fieldPath"))

instance ToJSON FieldReference where
        toJSON FieldReference'{..}
          = object
              (catMaybes [("fieldPath" .=) <$> _frFieldPath])

-- | A Document has been removed from the view of the targets. Sent if the
-- document is no longer relevant to a target and is out of view. Can be
-- sent instead of a DocumentDelete or a DocumentChange if the server can
-- not send the new value of the document. Multiple DocumentRemove messages
-- may be returned for the same logical write or delete, if multiple
-- targets are affected.
--
-- /See:/ 'documentRemove' smart constructor.
data DocumentRemove =
  DocumentRemove'
    { _drReadTime         :: !(Maybe DateTime')
    , _drDocument         :: !(Maybe Text)
    , _drRemovedTargetIds :: !(Maybe [Textual Int32])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DocumentRemove' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drReadTime'
--
-- * 'drDocument'
--
-- * 'drRemovedTargetIds'
documentRemove
    :: DocumentRemove
documentRemove =
  DocumentRemove'
    { _drReadTime = Nothing
    , _drDocument = Nothing
    , _drRemovedTargetIds = Nothing
    }

-- | The read timestamp at which the remove was observed. Greater or equal to
-- the \`commit_time\` of the change\/delete\/remove.
drReadTime :: Lens' DocumentRemove (Maybe UTCTime)
drReadTime
  = lens _drReadTime (\ s a -> s{_drReadTime = a}) .
      mapping _DateTime

-- | The resource name of the Document that has gone out of view.
drDocument :: Lens' DocumentRemove (Maybe Text)
drDocument
  = lens _drDocument (\ s a -> s{_drDocument = a})

-- | A set of target IDs for targets that previously matched this document.
drRemovedTargetIds :: Lens' DocumentRemove [Int32]
drRemovedTargetIds
  = lens _drRemovedTargetIds
      (\ s a -> s{_drRemovedTargetIds = a})
      . _Default
      . _Coerce

instance FromJSON DocumentRemove where
        parseJSON
          = withObject "DocumentRemove"
              (\ o ->
                 DocumentRemove' <$>
                   (o .:? "readTime") <*> (o .:? "document") <*>
                     (o .:? "removedTargetIds" .!= mempty))

instance ToJSON DocumentRemove where
        toJSON DocumentRemove'{..}
          = object
              (catMaybes
                 [("readTime" .=) <$> _drReadTime,
                  ("document" .=) <$> _drDocument,
                  ("removedTargetIds" .=) <$> _drRemovedTargetIds])

-- | A Document has changed. May be the result of multiple writes, including
-- deletes, that ultimately resulted in a new value for the Document.
-- Multiple DocumentChange messages may be returned for the same logical
-- change, if multiple targets are affected.
--
-- /See:/ 'documentChange' smart constructor.
data DocumentChange =
  DocumentChange'
    { _dcDocument         :: !(Maybe Document)
    , _dcTargetIds        :: !(Maybe [Textual Int32])
    , _dcRemovedTargetIds :: !(Maybe [Textual Int32])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DocumentChange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcDocument'
--
-- * 'dcTargetIds'
--
-- * 'dcRemovedTargetIds'
documentChange
    :: DocumentChange
documentChange =
  DocumentChange'
    { _dcDocument = Nothing
    , _dcTargetIds = Nothing
    , _dcRemovedTargetIds = Nothing
    }

-- | The new state of the Document. If \`mask\` is set, contains only fields
-- that were updated or added.
dcDocument :: Lens' DocumentChange (Maybe Document)
dcDocument
  = lens _dcDocument (\ s a -> s{_dcDocument = a})

-- | A set of target IDs of targets that match this document.
dcTargetIds :: Lens' DocumentChange [Int32]
dcTargetIds
  = lens _dcTargetIds (\ s a -> s{_dcTargetIds = a}) .
      _Default
      . _Coerce

-- | A set of target IDs for targets that no longer match this document.
dcRemovedTargetIds :: Lens' DocumentChange [Int32]
dcRemovedTargetIds
  = lens _dcRemovedTargetIds
      (\ s a -> s{_dcRemovedTargetIds = a})
      . _Default
      . _Coerce

instance FromJSON DocumentChange where
        parseJSON
          = withObject "DocumentChange"
              (\ o ->
                 DocumentChange' <$>
                   (o .:? "document") <*> (o .:? "targetIds" .!= mempty)
                     <*> (o .:? "removedTargetIds" .!= mempty))

instance ToJSON DocumentChange where
        toJSON DocumentChange'{..}
          = object
              (catMaybes
                 [("document" .=) <$> _dcDocument,
                  ("targetIds" .=) <$> _dcTargetIds,
                  ("removedTargetIds" .=) <$> _dcRemovedTargetIds])

-- | Metadata for google.longrunning.Operation results from
-- FirestoreAdmin.UpdateField.
--
-- /See:/ 'googleFirestoreAdminV1FieldOperationMetadata' smart constructor.
data GoogleFirestoreAdminV1FieldOperationMetadata =
  GoogleFirestoreAdminV1FieldOperationMetadata'
    { _gfavfomProgressBytes     :: !(Maybe GoogleFirestoreAdminV1Progress)
    , _gfavfomState             :: !(Maybe GoogleFirestoreAdminV1FieldOperationMetadataState)
    , _gfavfomField             :: !(Maybe Text)
    , _gfavfomStartTime         :: !(Maybe DateTime')
    , _gfavfomProgressDocuments :: !(Maybe GoogleFirestoreAdminV1Progress)
    , _gfavfomIndexConfigDeltas :: !(Maybe [GoogleFirestoreAdminV1IndexConfigDelta])
    , _gfavfomEndTime           :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1FieldOperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfavfomProgressBytes'
--
-- * 'gfavfomState'
--
-- * 'gfavfomField'
--
-- * 'gfavfomStartTime'
--
-- * 'gfavfomProgressDocuments'
--
-- * 'gfavfomIndexConfigDeltas'
--
-- * 'gfavfomEndTime'
googleFirestoreAdminV1FieldOperationMetadata
    :: GoogleFirestoreAdminV1FieldOperationMetadata
googleFirestoreAdminV1FieldOperationMetadata =
  GoogleFirestoreAdminV1FieldOperationMetadata'
    { _gfavfomProgressBytes = Nothing
    , _gfavfomState = Nothing
    , _gfavfomField = Nothing
    , _gfavfomStartTime = Nothing
    , _gfavfomProgressDocuments = Nothing
    , _gfavfomIndexConfigDeltas = Nothing
    , _gfavfomEndTime = Nothing
    }

-- | The progress, in bytes, of this operation.
gfavfomProgressBytes :: Lens' GoogleFirestoreAdminV1FieldOperationMetadata (Maybe GoogleFirestoreAdminV1Progress)
gfavfomProgressBytes
  = lens _gfavfomProgressBytes
      (\ s a -> s{_gfavfomProgressBytes = a})

-- | The state of the operation.
gfavfomState :: Lens' GoogleFirestoreAdminV1FieldOperationMetadata (Maybe GoogleFirestoreAdminV1FieldOperationMetadataState)
gfavfomState
  = lens _gfavfomState (\ s a -> s{_gfavfomState = a})

-- | The field resource that this operation is acting on. For example:
-- \`projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/{collection_id}\/fields\/{field_path}\`
gfavfomField :: Lens' GoogleFirestoreAdminV1FieldOperationMetadata (Maybe Text)
gfavfomField
  = lens _gfavfomField (\ s a -> s{_gfavfomField = a})

-- | The time this operation started.
gfavfomStartTime :: Lens' GoogleFirestoreAdminV1FieldOperationMetadata (Maybe UTCTime)
gfavfomStartTime
  = lens _gfavfomStartTime
      (\ s a -> s{_gfavfomStartTime = a})
      . mapping _DateTime

-- | The progress, in documents, of this operation.
gfavfomProgressDocuments :: Lens' GoogleFirestoreAdminV1FieldOperationMetadata (Maybe GoogleFirestoreAdminV1Progress)
gfavfomProgressDocuments
  = lens _gfavfomProgressDocuments
      (\ s a -> s{_gfavfomProgressDocuments = a})

-- | A list of IndexConfigDelta, which describe the intent of this operation.
gfavfomIndexConfigDeltas :: Lens' GoogleFirestoreAdminV1FieldOperationMetadata [GoogleFirestoreAdminV1IndexConfigDelta]
gfavfomIndexConfigDeltas
  = lens _gfavfomIndexConfigDeltas
      (\ s a -> s{_gfavfomIndexConfigDeltas = a})
      . _Default
      . _Coerce

-- | The time this operation completed. Will be unset if operation still in
-- progress.
gfavfomEndTime :: Lens' GoogleFirestoreAdminV1FieldOperationMetadata (Maybe UTCTime)
gfavfomEndTime
  = lens _gfavfomEndTime
      (\ s a -> s{_gfavfomEndTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleFirestoreAdminV1FieldOperationMetadata
         where
        parseJSON
          = withObject
              "GoogleFirestoreAdminV1FieldOperationMetadata"
              (\ o ->
                 GoogleFirestoreAdminV1FieldOperationMetadata' <$>
                   (o .:? "progressBytes") <*> (o .:? "state") <*>
                     (o .:? "field")
                     <*> (o .:? "startTime")
                     <*> (o .:? "progressDocuments")
                     <*> (o .:? "indexConfigDeltas" .!= mempty)
                     <*> (o .:? "endTime"))

instance ToJSON
           GoogleFirestoreAdminV1FieldOperationMetadata
         where
        toJSON
          GoogleFirestoreAdminV1FieldOperationMetadata'{..}
          = object
              (catMaybes
                 [("progressBytes" .=) <$> _gfavfomProgressBytes,
                  ("state" .=) <$> _gfavfomState,
                  ("field" .=) <$> _gfavfomField,
                  ("startTime" .=) <$> _gfavfomStartTime,
                  ("progressDocuments" .=) <$>
                    _gfavfomProgressDocuments,
                  ("indexConfigDeltas" .=) <$>
                    _gfavfomIndexConfigDeltas,
                  ("endTime" .=) <$> _gfavfomEndTime])

-- | The response for FirestoreAdmin.ListIndexes.
--
-- /See:/ 'googleFirestoreAdminV1ListIndexesResponse' smart constructor.
data GoogleFirestoreAdminV1ListIndexesResponse =
  GoogleFirestoreAdminV1ListIndexesResponse'
    { _gfavlirNextPageToken :: !(Maybe Text)
    , _gfavlirIndexes       :: !(Maybe [GoogleFirestoreAdminV1Index])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1ListIndexesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfavlirNextPageToken'
--
-- * 'gfavlirIndexes'
googleFirestoreAdminV1ListIndexesResponse
    :: GoogleFirestoreAdminV1ListIndexesResponse
googleFirestoreAdminV1ListIndexesResponse =
  GoogleFirestoreAdminV1ListIndexesResponse'
    {_gfavlirNextPageToken = Nothing, _gfavlirIndexes = Nothing}

-- | A page token that may be used to request another page of results. If
-- blank, this is the last page.
gfavlirNextPageToken :: Lens' GoogleFirestoreAdminV1ListIndexesResponse (Maybe Text)
gfavlirNextPageToken
  = lens _gfavlirNextPageToken
      (\ s a -> s{_gfavlirNextPageToken = a})

-- | The requested indexes.
gfavlirIndexes :: Lens' GoogleFirestoreAdminV1ListIndexesResponse [GoogleFirestoreAdminV1Index]
gfavlirIndexes
  = lens _gfavlirIndexes
      (\ s a -> s{_gfavlirIndexes = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleFirestoreAdminV1ListIndexesResponse
         where
        parseJSON
          = withObject
              "GoogleFirestoreAdminV1ListIndexesResponse"
              (\ o ->
                 GoogleFirestoreAdminV1ListIndexesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "indexes" .!= mempty))

instance ToJSON
           GoogleFirestoreAdminV1ListIndexesResponse
         where
        toJSON GoogleFirestoreAdminV1ListIndexesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gfavlirNextPageToken,
                  ("indexes" .=) <$> _gfavlirIndexes])

-- | A map value.
--
-- /See:/ 'mapValue' smart constructor.
newtype MapValue =
  MapValue'
    { _mvFields :: Maybe MapValueFields
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MapValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvFields'
mapValue
    :: MapValue
mapValue = MapValue' {_mvFields = Nothing}

-- | The map\'s fields. The map keys represent field names. Field names
-- matching the regular expression \`__.*__\` are reserved. Reserved field
-- names are forbidden except in certain documented contexts. The map keys,
-- represented as UTF-8, must not exceed 1,500 bytes and cannot be empty.
mvFields :: Lens' MapValue (Maybe MapValueFields)
mvFields = lens _mvFields (\ s a -> s{_mvFields = a})

instance FromJSON MapValue where
        parseJSON
          = withObject "MapValue"
              (\ o -> MapValue' <$> (o .:? "fields"))

instance ToJSON MapValue where
        toJSON MapValue'{..}
          = object (catMaybes [("fields" .=) <$> _mvFields])

-- | The request for Firestore.BatchGetDocuments.
--
-- /See:/ 'batchGetDocumentsRequest' smart constructor.
data BatchGetDocumentsRequest =
  BatchGetDocumentsRequest'
    { _bReadTime       :: !(Maybe DateTime')
    , _bNewTransaction :: !(Maybe TransactionOptions)
    , _bTransaction    :: !(Maybe Bytes)
    , _bDocuments      :: !(Maybe [Text])
    , _bMask           :: !(Maybe DocumentMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchGetDocumentsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bReadTime'
--
-- * 'bNewTransaction'
--
-- * 'bTransaction'
--
-- * 'bDocuments'
--
-- * 'bMask'
batchGetDocumentsRequest
    :: BatchGetDocumentsRequest
batchGetDocumentsRequest =
  BatchGetDocumentsRequest'
    { _bReadTime = Nothing
    , _bNewTransaction = Nothing
    , _bTransaction = Nothing
    , _bDocuments = Nothing
    , _bMask = Nothing
    }

-- | Reads documents as they were at the given time. This may not be older
-- than 60 seconds.
bReadTime :: Lens' BatchGetDocumentsRequest (Maybe UTCTime)
bReadTime
  = lens _bReadTime (\ s a -> s{_bReadTime = a}) .
      mapping _DateTime

-- | Starts a new transaction and reads the documents. Defaults to a
-- read-only transaction. The new transaction ID will be returned as the
-- first response in the stream.
bNewTransaction :: Lens' BatchGetDocumentsRequest (Maybe TransactionOptions)
bNewTransaction
  = lens _bNewTransaction
      (\ s a -> s{_bNewTransaction = a})

-- | Reads documents in a transaction.
bTransaction :: Lens' BatchGetDocumentsRequest (Maybe ByteString)
bTransaction
  = lens _bTransaction (\ s a -> s{_bTransaction = a})
      . mapping _Bytes

-- | The names of the documents to retrieve. In the format:
-- \`projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}\`.
-- The request will fail if any of the document is not a child resource of
-- the given \`database\`. Duplicate names will be elided.
bDocuments :: Lens' BatchGetDocumentsRequest [Text]
bDocuments
  = lens _bDocuments (\ s a -> s{_bDocuments = a}) .
      _Default
      . _Coerce

-- | The fields to return. If not set, returns all fields. If a document has
-- a field that is not present in this mask, that field will not be
-- returned in the response.
bMask :: Lens' BatchGetDocumentsRequest (Maybe DocumentMask)
bMask = lens _bMask (\ s a -> s{_bMask = a})

instance FromJSON BatchGetDocumentsRequest where
        parseJSON
          = withObject "BatchGetDocumentsRequest"
              (\ o ->
                 BatchGetDocumentsRequest' <$>
                   (o .:? "readTime") <*> (o .:? "newTransaction") <*>
                     (o .:? "transaction")
                     <*> (o .:? "documents" .!= mempty)
                     <*> (o .:? "mask"))

instance ToJSON BatchGetDocumentsRequest where
        toJSON BatchGetDocumentsRequest'{..}
          = object
              (catMaybes
                 [("readTime" .=) <$> _bReadTime,
                  ("newTransaction" .=) <$> _bNewTransaction,
                  ("transaction" .=) <$> _bTransaction,
                  ("documents" .=) <$> _bDocuments,
                  ("mask" .=) <$> _bMask])

-- | A Firestore document. Must not exceed 1 MiB - 4 bytes.
--
-- /See:/ 'document' smart constructor.
data Document =
  Document'
    { _dUpdateTime :: !(Maybe DateTime')
    , _dName       :: !(Maybe Text)
    , _dCreateTime :: !(Maybe DateTime')
    , _dFields     :: !(Maybe DocumentFields)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Document' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dUpdateTime'
--
-- * 'dName'
--
-- * 'dCreateTime'
--
-- * 'dFields'
document
    :: Document
document =
  Document'
    { _dUpdateTime = Nothing
    , _dName = Nothing
    , _dCreateTime = Nothing
    , _dFields = Nothing
    }

-- | Output only. The time at which the document was last changed. This value
-- is initially set to the \`create_time\` then increases monotonically
-- with each change to the document. It can also be compared to values from
-- other documents and the \`read_time\` of a query.
dUpdateTime :: Lens' Document (Maybe UTCTime)
dUpdateTime
  = lens _dUpdateTime (\ s a -> s{_dUpdateTime = a}) .
      mapping _DateTime

-- | The resource name of the document, for example
-- \`projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}\`.
dName :: Lens' Document (Maybe Text)
dName = lens _dName (\ s a -> s{_dName = a})

-- | Output only. The time at which the document was created. This value
-- increases monotonically when a document is deleted then recreated. It
-- can also be compared to values from other documents and the
-- \`read_time\` of a query.
dCreateTime :: Lens' Document (Maybe UTCTime)
dCreateTime
  = lens _dCreateTime (\ s a -> s{_dCreateTime = a}) .
      mapping _DateTime

-- | The document\'s fields. The map keys represent field names. A simple
-- field name contains only characters \`a\` to \`z\`, \`A\` to \`Z\`,
-- \`0\` to \`9\`, or \`_\`, and must not start with \`0\` to \`9\`. For
-- example, \`foo_bar_17\`. Field names matching the regular expression
-- \`__.*__\` are reserved. Reserved field names are forbidden except in
-- certain documented contexts. The map keys, represented as UTF-8, must
-- not exceed 1,500 bytes and cannot be empty. Field paths may be used in
-- other contexts to refer to structured fields defined here. For
-- \`map_value\`, the field path is represented by the simple or quoted
-- field names of the containing fields, delimited by \`.\`. For example,
-- the structured field \`\"foo\" : { map_value: { \"x&y\" : {
-- string_value: \"hello\" }}}\` would be represented by the field path
-- \`foo.x&y\`. Within a field path, a quoted field name starts and ends
-- with \`\` \` \`\` and may contain any character. Some characters,
-- including \`\` \` \`\`, must be escaped using a \`\\\`. For example,
-- \`\` \`x&y\` \`\` represents \`x&y\` and \`\` \`bak\\\`tik\` \`\`
-- represents \`\` bak\`tik \`\`.
dFields :: Lens' Document (Maybe DocumentFields)
dFields = lens _dFields (\ s a -> s{_dFields = a})

instance FromJSON Document where
        parseJSON
          = withObject "Document"
              (\ o ->
                 Document' <$>
                   (o .:? "updateTime") <*> (o .:? "name") <*>
                     (o .:? "createTime")
                     <*> (o .:? "fields"))

instance ToJSON Document where
        toJSON Document'{..}
          = object
              (catMaybes
                 [("updateTime" .=) <$> _dUpdateTime,
                  ("name" .=) <$> _dName,
                  ("createTime" .=) <$> _dCreateTime,
                  ("fields" .=) <$> _dFields])

-- | An array value.
--
-- /See:/ 'arrayValue' smart constructor.
newtype ArrayValue =
  ArrayValue'
    { _avValues :: Maybe [Value]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ArrayValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'avValues'
arrayValue
    :: ArrayValue
arrayValue = ArrayValue' {_avValues = Nothing}

-- | Values in the array.
avValues :: Lens' ArrayValue [Value]
avValues
  = lens _avValues (\ s a -> s{_avValues = a}) .
      _Default
      . _Coerce

instance FromJSON ArrayValue where
        parseJSON
          = withObject "ArrayValue"
              (\ o -> ArrayValue' <$> (o .:? "values" .!= mempty))

instance ToJSON ArrayValue where
        toJSON ArrayValue'{..}
          = object (catMaybes [("values" .=) <$> _avValues])

-- | The response for Firestore.Commit.
--
-- /See:/ 'commitResponse' smart constructor.
data CommitResponse =
  CommitResponse'
    { _crCommitTime   :: !(Maybe DateTime')
    , _crWriteResults :: !(Maybe [WriteResult])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CommitResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crCommitTime'
--
-- * 'crWriteResults'
commitResponse
    :: CommitResponse
commitResponse =
  CommitResponse' {_crCommitTime = Nothing, _crWriteResults = Nothing}

-- | The time at which the commit occurred.
crCommitTime :: Lens' CommitResponse (Maybe UTCTime)
crCommitTime
  = lens _crCommitTime (\ s a -> s{_crCommitTime = a})
      . mapping _DateTime

-- | The result of applying the writes. This i-th write result corresponds to
-- the i-th write in the request.
crWriteResults :: Lens' CommitResponse [WriteResult]
crWriteResults
  = lens _crWriteResults
      (\ s a -> s{_crWriteResults = a})
      . _Default
      . _Coerce

instance FromJSON CommitResponse where
        parseJSON
          = withObject "CommitResponse"
              (\ o ->
                 CommitResponse' <$>
                   (o .:? "commitTime") <*>
                     (o .:? "writeResults" .!= mempty))

instance ToJSON CommitResponse where
        toJSON CommitResponse'{..}
          = object
              (catMaybes
                 [("commitTime" .=) <$> _crCommitTime,
                  ("writeResults" .=) <$> _crWriteResults])

-- | The response for Firestore.Listen.
--
-- /See:/ 'listenResponse' smart constructor.
data ListenResponse =
  ListenResponse'
    { _lrTargetChange   :: !(Maybe TargetChange)
    , _lrDocumentRemove :: !(Maybe DocumentRemove)
    , _lrDocumentChange :: !(Maybe DocumentChange)
    , _lrFilter         :: !(Maybe ExistenceFilter)
    , _lrDocumentDelete :: !(Maybe DocumentDelete)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListenResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrTargetChange'
--
-- * 'lrDocumentRemove'
--
-- * 'lrDocumentChange'
--
-- * 'lrFilter'
--
-- * 'lrDocumentDelete'
listenResponse
    :: ListenResponse
listenResponse =
  ListenResponse'
    { _lrTargetChange = Nothing
    , _lrDocumentRemove = Nothing
    , _lrDocumentChange = Nothing
    , _lrFilter = Nothing
    , _lrDocumentDelete = Nothing
    }

-- | Targets have changed.
lrTargetChange :: Lens' ListenResponse (Maybe TargetChange)
lrTargetChange
  = lens _lrTargetChange
      (\ s a -> s{_lrTargetChange = a})

-- | A Document has been removed from a target (because it is no longer
-- relevant to that target).
lrDocumentRemove :: Lens' ListenResponse (Maybe DocumentRemove)
lrDocumentRemove
  = lens _lrDocumentRemove
      (\ s a -> s{_lrDocumentRemove = a})

-- | A Document has changed.
lrDocumentChange :: Lens' ListenResponse (Maybe DocumentChange)
lrDocumentChange
  = lens _lrDocumentChange
      (\ s a -> s{_lrDocumentChange = a})

-- | A filter to apply to the set of documents previously returned for the
-- given target. Returned when documents may have been removed from the
-- given target, but the exact documents are unknown.
lrFilter :: Lens' ListenResponse (Maybe ExistenceFilter)
lrFilter = lens _lrFilter (\ s a -> s{_lrFilter = a})

-- | A Document has been deleted.
lrDocumentDelete :: Lens' ListenResponse (Maybe DocumentDelete)
lrDocumentDelete
  = lens _lrDocumentDelete
      (\ s a -> s{_lrDocumentDelete = a})

instance FromJSON ListenResponse where
        parseJSON
          = withObject "ListenResponse"
              (\ o ->
                 ListenResponse' <$>
                   (o .:? "targetChange") <*> (o .:? "documentRemove")
                     <*> (o .:? "documentChange")
                     <*> (o .:? "filter")
                     <*> (o .:? "documentDelete"))

instance ToJSON ListenResponse where
        toJSON ListenResponse'{..}
          = object
              (catMaybes
                 [("targetChange" .=) <$> _lrTargetChange,
                  ("documentRemove" .=) <$> _lrDocumentRemove,
                  ("documentChange" .=) <$> _lrDocumentChange,
                  ("filter" .=) <$> _lrFilter,
                  ("documentDelete" .=) <$> _lrDocumentDelete])

-- | A filter on a specific field.
--
-- /See:/ 'fieldFilter' smart constructor.
data FieldFilter =
  FieldFilter'
    { _ffOp    :: !(Maybe FieldFilterOp)
    , _ffField :: !(Maybe FieldReference)
    , _ffValue :: !(Maybe Value)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'FieldFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ffOp'
--
-- * 'ffField'
--
-- * 'ffValue'
fieldFilter
    :: FieldFilter
fieldFilter =
  FieldFilter' {_ffOp = Nothing, _ffField = Nothing, _ffValue = Nothing}

-- | The operator to filter by.
ffOp :: Lens' FieldFilter (Maybe FieldFilterOp)
ffOp = lens _ffOp (\ s a -> s{_ffOp = a})

-- | The field to filter by.
ffField :: Lens' FieldFilter (Maybe FieldReference)
ffField = lens _ffField (\ s a -> s{_ffField = a})

-- | The value to compare to.
ffValue :: Lens' FieldFilter (Maybe Value)
ffValue = lens _ffValue (\ s a -> s{_ffValue = a})

instance FromJSON FieldFilter where
        parseJSON
          = withObject "FieldFilter"
              (\ o ->
                 FieldFilter' <$>
                   (o .:? "op") <*> (o .:? "field") <*> (o .:? "value"))

instance ToJSON FieldFilter where
        toJSON FieldFilter'{..}
          = object
              (catMaybes
                 [("op" .=) <$> _ffOp, ("field" .=) <$> _ffField,
                  ("value" .=) <$> _ffValue])

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
--
-- /See:/ 'googleLongrunningOperationResponse' smart constructor.
newtype GoogleLongrunningOperationResponse =
  GoogleLongrunningOperationResponse'
    { _glorAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleLongrunningOperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glorAddtional'
googleLongrunningOperationResponse
    :: HashMap Text JSONValue -- ^ 'glorAddtional'
    -> GoogleLongrunningOperationResponse
googleLongrunningOperationResponse pGlorAddtional_ =
  GoogleLongrunningOperationResponse'
    {_glorAddtional = _Coerce # pGlorAddtional_}

-- | Properties of the object. Contains field \'type with type URL.
glorAddtional :: Lens' GoogleLongrunningOperationResponse (HashMap Text JSONValue)
glorAddtional
  = lens _glorAddtional
      (\ s a -> s{_glorAddtional = a})
      . _Coerce

instance FromJSON GoogleLongrunningOperationResponse
         where
        parseJSON
          = withObject "GoogleLongrunningOperationResponse"
              (\ o ->
                 GoogleLongrunningOperationResponse' <$>
                   (parseJSONObject o))

instance ToJSON GoogleLongrunningOperationResponse
         where
        toJSON = toJSON . _glorAddtional

-- | The response for Firestore.ListDocuments.
--
-- /See:/ 'listDocumentsResponse' smart constructor.
data ListDocumentsResponse =
  ListDocumentsResponse'
    { _ldrNextPageToken :: !(Maybe Text)
    , _ldrDocuments     :: !(Maybe [Document])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDocumentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldrNextPageToken'
--
-- * 'ldrDocuments'
listDocumentsResponse
    :: ListDocumentsResponse
listDocumentsResponse =
  ListDocumentsResponse' {_ldrNextPageToken = Nothing, _ldrDocuments = Nothing}

-- | The next page token.
ldrNextPageToken :: Lens' ListDocumentsResponse (Maybe Text)
ldrNextPageToken
  = lens _ldrNextPageToken
      (\ s a -> s{_ldrNextPageToken = a})

-- | The Documents found.
ldrDocuments :: Lens' ListDocumentsResponse [Document]
ldrDocuments
  = lens _ldrDocuments (\ s a -> s{_ldrDocuments = a})
      . _Default
      . _Coerce

instance FromJSON ListDocumentsResponse where
        parseJSON
          = withObject "ListDocumentsResponse"
              (\ o ->
                 ListDocumentsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "documents" .!= mempty))

instance ToJSON ListDocumentsResponse where
        toJSON ListDocumentsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ldrNextPageToken,
                  ("documents" .=) <$> _ldrDocuments])

-- | Returned in the google.longrunning.Operation response field.
--
-- /See:/ 'googleFirestoreAdminV1ExportDocumentsResponse' smart constructor.
newtype GoogleFirestoreAdminV1ExportDocumentsResponse =
  GoogleFirestoreAdminV1ExportDocumentsResponse'
    { _gOutputURIPrefix :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1ExportDocumentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gOutputURIPrefix'
googleFirestoreAdminV1ExportDocumentsResponse
    :: GoogleFirestoreAdminV1ExportDocumentsResponse
googleFirestoreAdminV1ExportDocumentsResponse =
  GoogleFirestoreAdminV1ExportDocumentsResponse' {_gOutputURIPrefix = Nothing}

-- | Location of the output files. This can be used to begin an import into
-- Cloud Firestore (this project or another project) after the operation
-- completes successfully.
gOutputURIPrefix :: Lens' GoogleFirestoreAdminV1ExportDocumentsResponse (Maybe Text)
gOutputURIPrefix
  = lens _gOutputURIPrefix
      (\ s a -> s{_gOutputURIPrefix = a})

instance FromJSON
           GoogleFirestoreAdminV1ExportDocumentsResponse
         where
        parseJSON
          = withObject
              "GoogleFirestoreAdminV1ExportDocumentsResponse"
              (\ o ->
                 GoogleFirestoreAdminV1ExportDocumentsResponse' <$>
                   (o .:? "outputUriPrefix"))

instance ToJSON
           GoogleFirestoreAdminV1ExportDocumentsResponse
         where
        toJSON
          GoogleFirestoreAdminV1ExportDocumentsResponse'{..}
          = object
              (catMaybes
                 [("outputUriPrefix" .=) <$> _gOutputURIPrefix])

-- | The projection of document\'s fields to return.
--
-- /See:/ 'projection' smart constructor.
newtype Projection =
  Projection'
    { _pFields :: Maybe [FieldReference]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Projection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pFields'
projection
    :: Projection
projection = Projection' {_pFields = Nothing}

-- | The fields to return. If empty, all fields are returned. To only return
-- the name of the document, use \`[\'__name__\']\`.
pFields :: Lens' Projection [FieldReference]
pFields
  = lens _pFields (\ s a -> s{_pFields = a}) . _Default
      . _Coerce

instance FromJSON Projection where
        parseJSON
          = withObject "Projection"
              (\ o -> Projection' <$> (o .:? "fields" .!= mempty))

instance ToJSON Projection where
        toJSON Projection'{..}
          = object (catMaybes [("fields" .=) <$> _pFields])

-- | A filter.
--
-- /See:/ 'filter'' smart constructor.
data Filter =
  Filter'
    { _fCompositeFilter :: !(Maybe CompositeFilter)
    , _fFieldFilter     :: !(Maybe FieldFilter)
    , _fUnaryFilter     :: !(Maybe UnaryFilter)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Filter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fCompositeFilter'
--
-- * 'fFieldFilter'
--
-- * 'fUnaryFilter'
filter'
    :: Filter
filter' =
  Filter'
    { _fCompositeFilter = Nothing
    , _fFieldFilter = Nothing
    , _fUnaryFilter = Nothing
    }

-- | A composite filter.
fCompositeFilter :: Lens' Filter (Maybe CompositeFilter)
fCompositeFilter
  = lens _fCompositeFilter
      (\ s a -> s{_fCompositeFilter = a})

-- | A filter on a document field.
fFieldFilter :: Lens' Filter (Maybe FieldFilter)
fFieldFilter
  = lens _fFieldFilter (\ s a -> s{_fFieldFilter = a})

-- | A filter that takes exactly one argument.
fUnaryFilter :: Lens' Filter (Maybe UnaryFilter)
fUnaryFilter
  = lens _fUnaryFilter (\ s a -> s{_fUnaryFilter = a})

instance FromJSON Filter where
        parseJSON
          = withObject "Filter"
              (\ o ->
                 Filter' <$>
                   (o .:? "compositeFilter") <*> (o .:? "fieldFilter")
                     <*> (o .:? "unaryFilter"))

instance ToJSON Filter where
        toJSON Filter'{..}
          = object
              (catMaybes
                 [("compositeFilter" .=) <$> _fCompositeFilter,
                  ("fieldFilter" .=) <$> _fFieldFilter,
                  ("unaryFilter" .=) <$> _fUnaryFilter])

-- | Metadata for google.longrunning.Operation results from
-- FirestoreAdmin.CreateIndex.
--
-- /See:/ 'googleFirestoreAdminV1IndexOperationMetadata' smart constructor.
data GoogleFirestoreAdminV1IndexOperationMetadata =
  GoogleFirestoreAdminV1IndexOperationMetadata'
    { _gfaviomProgressBytes     :: !(Maybe GoogleFirestoreAdminV1Progress)
    , _gfaviomState             :: !(Maybe GoogleFirestoreAdminV1IndexOperationMetadataState)
    , _gfaviomStartTime         :: !(Maybe DateTime')
    , _gfaviomProgressDocuments :: !(Maybe GoogleFirestoreAdminV1Progress)
    , _gfaviomEndTime           :: !(Maybe DateTime')
    , _gfaviomIndex             :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleFirestoreAdminV1IndexOperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfaviomProgressBytes'
--
-- * 'gfaviomState'
--
-- * 'gfaviomStartTime'
--
-- * 'gfaviomProgressDocuments'
--
-- * 'gfaviomEndTime'
--
-- * 'gfaviomIndex'
googleFirestoreAdminV1IndexOperationMetadata
    :: GoogleFirestoreAdminV1IndexOperationMetadata
googleFirestoreAdminV1IndexOperationMetadata =
  GoogleFirestoreAdminV1IndexOperationMetadata'
    { _gfaviomProgressBytes = Nothing
    , _gfaviomState = Nothing
    , _gfaviomStartTime = Nothing
    , _gfaviomProgressDocuments = Nothing
    , _gfaviomEndTime = Nothing
    , _gfaviomIndex = Nothing
    }

-- | The progress, in bytes, of this operation.
gfaviomProgressBytes :: Lens' GoogleFirestoreAdminV1IndexOperationMetadata (Maybe GoogleFirestoreAdminV1Progress)
gfaviomProgressBytes
  = lens _gfaviomProgressBytes
      (\ s a -> s{_gfaviomProgressBytes = a})

-- | The state of the operation.
gfaviomState :: Lens' GoogleFirestoreAdminV1IndexOperationMetadata (Maybe GoogleFirestoreAdminV1IndexOperationMetadataState)
gfaviomState
  = lens _gfaviomState (\ s a -> s{_gfaviomState = a})

-- | The time this operation started.
gfaviomStartTime :: Lens' GoogleFirestoreAdminV1IndexOperationMetadata (Maybe UTCTime)
gfaviomStartTime
  = lens _gfaviomStartTime
      (\ s a -> s{_gfaviomStartTime = a})
      . mapping _DateTime

-- | The progress, in documents, of this operation.
gfaviomProgressDocuments :: Lens' GoogleFirestoreAdminV1IndexOperationMetadata (Maybe GoogleFirestoreAdminV1Progress)
gfaviomProgressDocuments
  = lens _gfaviomProgressDocuments
      (\ s a -> s{_gfaviomProgressDocuments = a})

-- | The time this operation completed. Will be unset if operation still in
-- progress.
gfaviomEndTime :: Lens' GoogleFirestoreAdminV1IndexOperationMetadata (Maybe UTCTime)
gfaviomEndTime
  = lens _gfaviomEndTime
      (\ s a -> s{_gfaviomEndTime = a})
      . mapping _DateTime

-- | The index resource that this operation is acting on. For example:
-- \`projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/{collection_id}\/indexes\/{index_id}\`
gfaviomIndex :: Lens' GoogleFirestoreAdminV1IndexOperationMetadata (Maybe Text)
gfaviomIndex
  = lens _gfaviomIndex (\ s a -> s{_gfaviomIndex = a})

instance FromJSON
           GoogleFirestoreAdminV1IndexOperationMetadata
         where
        parseJSON
          = withObject
              "GoogleFirestoreAdminV1IndexOperationMetadata"
              (\ o ->
                 GoogleFirestoreAdminV1IndexOperationMetadata' <$>
                   (o .:? "progressBytes") <*> (o .:? "state") <*>
                     (o .:? "startTime")
                     <*> (o .:? "progressDocuments")
                     <*> (o .:? "endTime")
                     <*> (o .:? "index"))

instance ToJSON
           GoogleFirestoreAdminV1IndexOperationMetadata
         where
        toJSON
          GoogleFirestoreAdminV1IndexOperationMetadata'{..}
          = object
              (catMaybes
                 [("progressBytes" .=) <$> _gfaviomProgressBytes,
                  ("state" .=) <$> _gfaviomState,
                  ("startTime" .=) <$> _gfaviomStartTime,
                  ("progressDocuments" .=) <$>
                    _gfaviomProgressDocuments,
                  ("endTime" .=) <$> _gfaviomEndTime,
                  ("index" .=) <$> _gfaviomIndex])

-- | Cross-service attributes for the location. For example
-- {\"cloud.googleapis.com\/region\": \"us-east1\"}
--
-- /See:/ 'locationLabels' smart constructor.
newtype LocationLabels =
  LocationLabels'
    { _llAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LocationLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llAddtional'
locationLabels
    :: HashMap Text Text -- ^ 'llAddtional'
    -> LocationLabels
locationLabels pLlAddtional_ =
  LocationLabels' {_llAddtional = _Coerce # pLlAddtional_}

llAddtional :: Lens' LocationLabels (HashMap Text Text)
llAddtional
  = lens _llAddtional (\ s a -> s{_llAddtional = a}) .
      _Coerce

instance FromJSON LocationLabels where
        parseJSON
          = withObject "LocationLabels"
              (\ o -> LocationLabels' <$> (parseJSONObject o))

instance ToJSON LocationLabels where
        toJSON = toJSON . _llAddtional

-- | A request for Firestore.Listen
--
-- /See:/ 'listenRequest' smart constructor.
data ListenRequest =
  ListenRequest'
    { _lrRemoveTarget :: !(Maybe (Textual Int32))
    , _lrLabels       :: !(Maybe ListenRequestLabels)
    , _lrAddTarget    :: !(Maybe Target)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListenRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrRemoveTarget'
--
-- * 'lrLabels'
--
-- * 'lrAddTarget'
listenRequest
    :: ListenRequest
listenRequest =
  ListenRequest'
    {_lrRemoveTarget = Nothing, _lrLabels = Nothing, _lrAddTarget = Nothing}

-- | The ID of a target to remove from this stream.
lrRemoveTarget :: Lens' ListenRequest (Maybe Int32)
lrRemoveTarget
  = lens _lrRemoveTarget
      (\ s a -> s{_lrRemoveTarget = a})
      . mapping _Coerce

-- | Labels associated with this target change.
lrLabels :: Lens' ListenRequest (Maybe ListenRequestLabels)
lrLabels = lens _lrLabels (\ s a -> s{_lrLabels = a})

-- | A target to add to this stream.
lrAddTarget :: Lens' ListenRequest (Maybe Target)
lrAddTarget
  = lens _lrAddTarget (\ s a -> s{_lrAddTarget = a})

instance FromJSON ListenRequest where
        parseJSON
          = withObject "ListenRequest"
              (\ o ->
                 ListenRequest' <$>
                   (o .:? "removeTarget") <*> (o .:? "labels") <*>
                     (o .:? "addTarget"))

instance ToJSON ListenRequest where
        toJSON ListenRequest'{..}
          = object
              (catMaybes
                 [("removeTarget" .=) <$> _lrRemoveTarget,
                  ("labels" .=) <$> _lrLabels,
                  ("addTarget" .=) <$> _lrAddTarget])

-- | The request for Firestore.Commit.
--
-- /See:/ 'commitRequest' smart constructor.
data CommitRequest =
  CommitRequest'
    { _crTransaction :: !(Maybe Bytes)
    , _crWrites      :: !(Maybe [Write])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CommitRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crTransaction'
--
-- * 'crWrites'
commitRequest
    :: CommitRequest
commitRequest = CommitRequest' {_crTransaction = Nothing, _crWrites = Nothing}

-- | If set, applies all writes in this transaction, and commits it.
crTransaction :: Lens' CommitRequest (Maybe ByteString)
crTransaction
  = lens _crTransaction
      (\ s a -> s{_crTransaction = a})
      . mapping _Bytes

-- | The writes to apply. Always executed atomically and in order.
crWrites :: Lens' CommitRequest [Write]
crWrites
  = lens _crWrites (\ s a -> s{_crWrites = a}) .
      _Default
      . _Coerce

instance FromJSON CommitRequest where
        parseJSON
          = withObject "CommitRequest"
              (\ o ->
                 CommitRequest' <$>
                   (o .:? "transaction") <*>
                     (o .:? "writes" .!= mempty))

instance ToJSON CommitRequest where
        toJSON CommitRequest'{..}
          = object
              (catMaybes
                 [("transaction" .=) <$> _crTransaction,
                  ("writes" .=) <$> _crWrites])

-- | Service-specific metadata. For example the available capacity at the
-- given location.
--
-- /See:/ 'locationMetadata' smart constructor.
newtype LocationMetadata =
  LocationMetadata'
    { _lmAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LocationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmAddtional'
locationMetadata
    :: HashMap Text JSONValue -- ^ 'lmAddtional'
    -> LocationMetadata
locationMetadata pLmAddtional_ =
  LocationMetadata' {_lmAddtional = _Coerce # pLmAddtional_}

-- | Properties of the object. Contains field \'type with type URL.
lmAddtional :: Lens' LocationMetadata (HashMap Text JSONValue)
lmAddtional
  = lens _lmAddtional (\ s a -> s{_lmAddtional = a}) .
      _Coerce

instance FromJSON LocationMetadata where
        parseJSON
          = withObject "LocationMetadata"
              (\ o -> LocationMetadata' <$> (parseJSONObject o))

instance ToJSON LocationMetadata where
        toJSON = toJSON . _lmAddtional

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'googleLongrunningListOperationsResponse' smart constructor.
data GoogleLongrunningListOperationsResponse =
  GoogleLongrunningListOperationsResponse'
    { _gllorNextPageToken :: !(Maybe Text)
    , _gllorOperations    :: !(Maybe [GoogleLongrunningOperation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleLongrunningListOperationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gllorNextPageToken'
--
-- * 'gllorOperations'
googleLongrunningListOperationsResponse
    :: GoogleLongrunningListOperationsResponse
googleLongrunningListOperationsResponse =
  GoogleLongrunningListOperationsResponse'
    {_gllorNextPageToken = Nothing, _gllorOperations = Nothing}

-- | The standard List next-page token.
gllorNextPageToken :: Lens' GoogleLongrunningListOperationsResponse (Maybe Text)
gllorNextPageToken
  = lens _gllorNextPageToken
      (\ s a -> s{_gllorNextPageToken = a})

-- | A list of operations that matches the specified filter in the request.
gllorOperations :: Lens' GoogleLongrunningListOperationsResponse [GoogleLongrunningOperation]
gllorOperations
  = lens _gllorOperations
      (\ s a -> s{_gllorOperations = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleLongrunningListOperationsResponse
         where
        parseJSON
          = withObject
              "GoogleLongrunningListOperationsResponse"
              (\ o ->
                 GoogleLongrunningListOperationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON
           GoogleLongrunningListOperationsResponse
         where
        toJSON GoogleLongrunningListOperationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gllorNextPageToken,
                  ("operations" .=) <$> _gllorOperations])

-- | A selection of a collection, such as \`messages as m1\`.
--
-- /See:/ 'collectionSelector' smart constructor.
data CollectionSelector =
  CollectionSelector'
    { _csAllDescendants :: !(Maybe Bool)
    , _csCollectionId   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CollectionSelector' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csAllDescendants'
--
-- * 'csCollectionId'
collectionSelector
    :: CollectionSelector
collectionSelector =
  CollectionSelector' {_csAllDescendants = Nothing, _csCollectionId = Nothing}

-- | When false, selects only collections that are immediate children of the
-- \`parent\` specified in the containing \`RunQueryRequest\`. When true,
-- selects all descendant collections.
csAllDescendants :: Lens' CollectionSelector (Maybe Bool)
csAllDescendants
  = lens _csAllDescendants
      (\ s a -> s{_csAllDescendants = a})

-- | The collection ID. When set, selects only collections with this ID.
csCollectionId :: Lens' CollectionSelector (Maybe Text)
csCollectionId
  = lens _csCollectionId
      (\ s a -> s{_csCollectionId = a})

instance FromJSON CollectionSelector where
        parseJSON
          = withObject "CollectionSelector"
              (\ o ->
                 CollectionSelector' <$>
                   (o .:? "allDescendants") <*> (o .:? "collectionId"))

instance ToJSON CollectionSelector where
        toJSON CollectionSelector'{..}
          = object
              (catMaybes
                 [("allDescendants" .=) <$> _csAllDescendants,
                  ("collectionId" .=) <$> _csCollectionId])

-- | The request for Firestore.ListCollectionIds.
--
-- /See:/ 'listCollectionIdsRequest' smart constructor.
data ListCollectionIdsRequest =
  ListCollectionIdsRequest'
    { _lcirPageToken :: !(Maybe Text)
    , _lcirPageSize  :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListCollectionIdsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcirPageToken'
--
-- * 'lcirPageSize'
listCollectionIdsRequest
    :: ListCollectionIdsRequest
listCollectionIdsRequest =
  ListCollectionIdsRequest' {_lcirPageToken = Nothing, _lcirPageSize = Nothing}

-- | A page token. Must be a value from ListCollectionIdsResponse.
lcirPageToken :: Lens' ListCollectionIdsRequest (Maybe Text)
lcirPageToken
  = lens _lcirPageToken
      (\ s a -> s{_lcirPageToken = a})

-- | The maximum number of results to return.
lcirPageSize :: Lens' ListCollectionIdsRequest (Maybe Int32)
lcirPageSize
  = lens _lcirPageSize (\ s a -> s{_lcirPageSize = a})
      . mapping _Coerce

instance FromJSON ListCollectionIdsRequest where
        parseJSON
          = withObject "ListCollectionIdsRequest"
              (\ o ->
                 ListCollectionIdsRequest' <$>
                   (o .:? "pageToken") <*> (o .:? "pageSize"))

instance ToJSON ListCollectionIdsRequest where
        toJSON ListCollectionIdsRequest'{..}
          = object
              (catMaybes
                 [("pageToken" .=) <$> _lcirPageToken,
                  ("pageSize" .=) <$> _lcirPageSize])

-- | The response for Firestore.Write.
--
-- /See:/ 'writeResponse' smart constructor.
data WriteResponse =
  WriteResponse'
    { _wStreamToken  :: !(Maybe Bytes)
    , _wCommitTime   :: !(Maybe DateTime')
    , _wWriteResults :: !(Maybe [WriteResult])
    , _wStreamId     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'WriteResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wStreamToken'
--
-- * 'wCommitTime'
--
-- * 'wWriteResults'
--
-- * 'wStreamId'
writeResponse
    :: WriteResponse
writeResponse =
  WriteResponse'
    { _wStreamToken = Nothing
    , _wCommitTime = Nothing
    , _wWriteResults = Nothing
    , _wStreamId = Nothing
    }

-- | A token that represents the position of this response in the stream.
-- This can be used by a client to resume the stream at this point. This
-- field is always set.
wStreamToken :: Lens' WriteResponse (Maybe ByteString)
wStreamToken
  = lens _wStreamToken (\ s a -> s{_wStreamToken = a})
      . mapping _Bytes

-- | The time at which the commit occurred.
wCommitTime :: Lens' WriteResponse (Maybe UTCTime)
wCommitTime
  = lens _wCommitTime (\ s a -> s{_wCommitTime = a}) .
      mapping _DateTime

-- | The result of applying the writes. This i-th write result corresponds to
-- the i-th write in the request.
wWriteResults :: Lens' WriteResponse [WriteResult]
wWriteResults
  = lens _wWriteResults
      (\ s a -> s{_wWriteResults = a})
      . _Default
      . _Coerce

-- | The ID of the stream. Only set on the first message, when a new stream
-- was created.
wStreamId :: Lens' WriteResponse (Maybe Text)
wStreamId
  = lens _wStreamId (\ s a -> s{_wStreamId = a})

instance FromJSON WriteResponse where
        parseJSON
          = withObject "WriteResponse"
              (\ o ->
                 WriteResponse' <$>
                   (o .:? "streamToken") <*> (o .:? "commitTime") <*>
                     (o .:? "writeResults" .!= mempty)
                     <*> (o .:? "streamId"))

instance ToJSON WriteResponse where
        toJSON WriteResponse'{..}
          = object
              (catMaybes
                 [("streamToken" .=) <$> _wStreamToken,
                  ("commitTime" .=) <$> _wCommitTime,
                  ("writeResults" .=) <$> _wWriteResults,
                  ("streamId" .=) <$> _wStreamId])

-- | An order on a field.
--
-- /See:/ 'order' smart constructor.
data Order =
  Order'
    { _oField     :: !(Maybe FieldReference)
    , _oDirection :: !(Maybe OrderDirection)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Order' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oField'
--
-- * 'oDirection'
order
    :: Order
order = Order' {_oField = Nothing, _oDirection = Nothing}

-- | The field to order by.
oField :: Lens' Order (Maybe FieldReference)
oField = lens _oField (\ s a -> s{_oField = a})

-- | The direction to order by. Defaults to \`ASCENDING\`.
oDirection :: Lens' Order (Maybe OrderDirection)
oDirection
  = lens _oDirection (\ s a -> s{_oDirection = a})

instance FromJSON Order where
        parseJSON
          = withObject "Order"
              (\ o ->
                 Order' <$> (o .:? "field") <*> (o .:? "direction"))

instance ToJSON Order where
        toJSON Order'{..}
          = object
              (catMaybes
                 [("field" .=) <$> _oField,
                  ("direction" .=) <$> _oDirection])

-- | A Document has been deleted. May be the result of multiple writes,
-- including updates, the last of which deleted the Document. Multiple
-- DocumentDelete messages may be returned for the same logical delete, if
-- multiple targets are affected.
--
-- /See:/ 'documentDelete' smart constructor.
data DocumentDelete =
  DocumentDelete'
    { _ddReadTime         :: !(Maybe DateTime')
    , _ddDocument         :: !(Maybe Text)
    , _ddRemovedTargetIds :: !(Maybe [Textual Int32])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DocumentDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddReadTime'
--
-- * 'ddDocument'
--
-- * 'ddRemovedTargetIds'
documentDelete
    :: DocumentDelete
documentDelete =
  DocumentDelete'
    { _ddReadTime = Nothing
    , _ddDocument = Nothing
    , _ddRemovedTargetIds = Nothing
    }

-- | The read timestamp at which the delete was observed. Greater or equal to
-- the \`commit_time\` of the delete.
ddReadTime :: Lens' DocumentDelete (Maybe UTCTime)
ddReadTime
  = lens _ddReadTime (\ s a -> s{_ddReadTime = a}) .
      mapping _DateTime

-- | The resource name of the Document that was deleted.
ddDocument :: Lens' DocumentDelete (Maybe Text)
ddDocument
  = lens _ddDocument (\ s a -> s{_ddDocument = a})

-- | A set of target IDs for targets that previously matched this entity.
ddRemovedTargetIds :: Lens' DocumentDelete [Int32]
ddRemovedTargetIds
  = lens _ddRemovedTargetIds
      (\ s a -> s{_ddRemovedTargetIds = a})
      . _Default
      . _Coerce

instance FromJSON DocumentDelete where
        parseJSON
          = withObject "DocumentDelete"
              (\ o ->
                 DocumentDelete' <$>
                   (o .:? "readTime") <*> (o .:? "document") <*>
                     (o .:? "removedTargetIds" .!= mempty))

instance ToJSON DocumentDelete where
        toJSON DocumentDelete'{..}
          = object
              (catMaybes
                 [("readTime" .=) <$> _ddReadTime,
                  ("document" .=) <$> _ddDocument,
                  ("removedTargetIds" .=) <$> _ddRemovedTargetIds])

-- | A transformation of a field of the document.
--
-- /See:/ 'fieldTransform' smart constructor.
data FieldTransform =
  FieldTransform'
    { _ftFieldPath             :: !(Maybe Text)
    , _ftAppendMissingElements :: !(Maybe ArrayValue)
    , _ftMaximum               :: !(Maybe Value)
    , _ftMinimum               :: !(Maybe Value)
    , _ftSetToServerValue      :: !(Maybe FieldTransformSetToServerValue)
    , _ftRemoveAllFromArray    :: !(Maybe ArrayValue)
    , _ftIncrement             :: !(Maybe Value)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'FieldTransform' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ftFieldPath'
--
-- * 'ftAppendMissingElements'
--
-- * 'ftMaximum'
--
-- * 'ftMinimum'
--
-- * 'ftSetToServerValue'
--
-- * 'ftRemoveAllFromArray'
--
-- * 'ftIncrement'
fieldTransform
    :: FieldTransform
fieldTransform =
  FieldTransform'
    { _ftFieldPath = Nothing
    , _ftAppendMissingElements = Nothing
    , _ftMaximum = Nothing
    , _ftMinimum = Nothing
    , _ftSetToServerValue = Nothing
    , _ftRemoveAllFromArray = Nothing
    , _ftIncrement = Nothing
    }

-- | The path of the field. See Document.fields for the field path syntax
-- reference.
ftFieldPath :: Lens' FieldTransform (Maybe Text)
ftFieldPath
  = lens _ftFieldPath (\ s a -> s{_ftFieldPath = a})

-- | Append the given elements in order if they are not already present in
-- the current field value. If the field is not an array, or if the field
-- does not yet exist, it is first set to the empty array. Equivalent
-- numbers of different types (e.g. 3L and 3.0) are considered equal when
-- checking if a value is missing. NaN is equal to NaN, and Null is equal
-- to Null. If the input contains multiple equivalent values, only the
-- first will be considered. The corresponding transform_result will be the
-- null value.
ftAppendMissingElements :: Lens' FieldTransform (Maybe ArrayValue)
ftAppendMissingElements
  = lens _ftAppendMissingElements
      (\ s a -> s{_ftAppendMissingElements = a})

-- | Sets the field to the maximum of its current value and the given value.
-- This must be an integer or a double value. If the field is not an
-- integer or double, or if the field does not yet exist, the
-- transformation will set the field to the given value. If a maximum
-- operation is applied where the field and the input value are of mixed
-- types (that is - one is an integer and one is a double) the field takes
-- on the type of the larger operand. If the operands are equivalent (e.g.
-- 3 and 3.0), the field does not change. 0, 0.0, and -0.0 are all zero.
-- The maximum of a zero stored value and zero input value is always the
-- stored value. The maximum of any numeric value x and NaN is NaN.
ftMaximum :: Lens' FieldTransform (Maybe Value)
ftMaximum
  = lens _ftMaximum (\ s a -> s{_ftMaximum = a})

-- | Sets the field to the minimum of its current value and the given value.
-- This must be an integer or a double value. If the field is not an
-- integer or double, or if the field does not yet exist, the
-- transformation will set the field to the input value. If a minimum
-- operation is applied where the field and the input value are of mixed
-- types (that is - one is an integer and one is a double) the field takes
-- on the type of the smaller operand. If the operands are equivalent (e.g.
-- 3 and 3.0), the field does not change. 0, 0.0, and -0.0 are all zero.
-- The minimum of a zero stored value and zero input value is always the
-- stored value. The minimum of any numeric value x and NaN is NaN.
ftMinimum :: Lens' FieldTransform (Maybe Value)
ftMinimum
  = lens _ftMinimum (\ s a -> s{_ftMinimum = a})

-- | Sets the field to the given server value.
ftSetToServerValue :: Lens' FieldTransform (Maybe FieldTransformSetToServerValue)
ftSetToServerValue
  = lens _ftSetToServerValue
      (\ s a -> s{_ftSetToServerValue = a})

-- | Remove all of the given elements from the array in the field. If the
-- field is not an array, or if the field does not yet exist, it is set to
-- the empty array. Equivalent numbers of the different types (e.g. 3L and
-- 3.0) are considered equal when deciding whether an element should be
-- removed. NaN is equal to NaN, and Null is equal to Null. This will
-- remove all equivalent values if there are duplicates. The corresponding
-- transform_result will be the null value.
ftRemoveAllFromArray :: Lens' FieldTransform (Maybe ArrayValue)
ftRemoveAllFromArray
  = lens _ftRemoveAllFromArray
      (\ s a -> s{_ftRemoveAllFromArray = a})

-- | Adds the given value to the field\'s current value. This must be an
-- integer or a double value. If the field is not an integer or double, or
-- if the field does not yet exist, the transformation will set the field
-- to the given value. If either of the given value or the current field
-- value are doubles, both values will be interpreted as doubles. Double
-- arithmetic and representation of double values follow IEEE 754
-- semantics. If there is positive\/negative integer overflow, the field is
-- resolved to the largest magnitude positive\/negative integer.
ftIncrement :: Lens' FieldTransform (Maybe Value)
ftIncrement
  = lens _ftIncrement (\ s a -> s{_ftIncrement = a})

instance FromJSON FieldTransform where
        parseJSON
          = withObject "FieldTransform"
              (\ o ->
                 FieldTransform' <$>
                   (o .:? "fieldPath") <*>
                     (o .:? "appendMissingElements")
                     <*> (o .:? "maximum")
                     <*> (o .:? "minimum")
                     <*> (o .:? "setToServerValue")
                     <*> (o .:? "removeAllFromArray")
                     <*> (o .:? "increment"))

instance ToJSON FieldTransform where
        toJSON FieldTransform'{..}
          = object
              (catMaybes
                 [("fieldPath" .=) <$> _ftFieldPath,
                  ("appendMissingElements" .=) <$>
                    _ftAppendMissingElements,
                  ("maximum" .=) <$> _ftMaximum,
                  ("minimum" .=) <$> _ftMinimum,
                  ("setToServerValue" .=) <$> _ftSetToServerValue,
                  ("removeAllFromArray" .=) <$> _ftRemoveAllFromArray,
                  ("increment" .=) <$> _ftIncrement])

-- | The map\'s fields. The map keys represent field names. Field names
-- matching the regular expression \`__.*__\` are reserved. Reserved field
-- names are forbidden except in certain documented contexts. The map keys,
-- represented as UTF-8, must not exceed 1,500 bytes and cannot be empty.
--
-- /See:/ 'mapValueFields' smart constructor.
newtype MapValueFields =
  MapValueFields'
    { _mvfAddtional :: HashMap Text Value
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MapValueFields' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvfAddtional'
mapValueFields
    :: HashMap Text Value -- ^ 'mvfAddtional'
    -> MapValueFields
mapValueFields pMvfAddtional_ =
  MapValueFields' {_mvfAddtional = _Coerce # pMvfAddtional_}

mvfAddtional :: Lens' MapValueFields (HashMap Text Value)
mvfAddtional
  = lens _mvfAddtional (\ s a -> s{_mvfAddtional = a})
      . _Coerce

instance FromJSON MapValueFields where
        parseJSON
          = withObject "MapValueFields"
              (\ o -> MapValueFields' <$> (parseJSONObject o))

instance ToJSON MapValueFields where
        toJSON = toJSON . _mvfAddtional

-- | The document\'s fields. The map keys represent field names. A simple
-- field name contains only characters \`a\` to \`z\`, \`A\` to \`Z\`,
-- \`0\` to \`9\`, or \`_\`, and must not start with \`0\` to \`9\`. For
-- example, \`foo_bar_17\`. Field names matching the regular expression
-- \`__.*__\` are reserved. Reserved field names are forbidden except in
-- certain documented contexts. The map keys, represented as UTF-8, must
-- not exceed 1,500 bytes and cannot be empty. Field paths may be used in
-- other contexts to refer to structured fields defined here. For
-- \`map_value\`, the field path is represented by the simple or quoted
-- field names of the containing fields, delimited by \`.\`. For example,
-- the structured field \`\"foo\" : { map_value: { \"x&y\" : {
-- string_value: \"hello\" }}}\` would be represented by the field path
-- \`foo.x&y\`. Within a field path, a quoted field name starts and ends
-- with \`\` \` \`\` and may contain any character. Some characters,
-- including \`\` \` \`\`, must be escaped using a \`\\\`. For example,
-- \`\` \`x&y\` \`\` represents \`x&y\` and \`\` \`bak\\\`tik\` \`\`
-- represents \`\` bak\`tik \`\`.
--
-- /See:/ 'documentFields' smart constructor.
newtype DocumentFields =
  DocumentFields'
    { _dfAddtional :: HashMap Text Value
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DocumentFields' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfAddtional'
documentFields
    :: HashMap Text Value -- ^ 'dfAddtional'
    -> DocumentFields
documentFields pDfAddtional_ =
  DocumentFields' {_dfAddtional = _Coerce # pDfAddtional_}

dfAddtional :: Lens' DocumentFields (HashMap Text Value)
dfAddtional
  = lens _dfAddtional (\ s a -> s{_dfAddtional = a}) .
      _Coerce

instance FromJSON DocumentFields where
        parseJSON
          = withObject "DocumentFields"
              (\ o -> DocumentFields' <$> (parseJSONObject o))

instance ToJSON DocumentFields where
        toJSON = toJSON . _dfAddtional

-- | Options for a transaction that can only be used to read documents.
--
-- /See:/ 'readOnly' smart constructor.
newtype ReadOnly =
  ReadOnly'
    { _roReadTime :: Maybe DateTime'
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReadOnly' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'roReadTime'
readOnly
    :: ReadOnly
readOnly = ReadOnly' {_roReadTime = Nothing}

-- | Reads documents at the given time. This may not be older than 60
-- seconds.
roReadTime :: Lens' ReadOnly (Maybe UTCTime)
roReadTime
  = lens _roReadTime (\ s a -> s{_roReadTime = a}) .
      mapping _DateTime

instance FromJSON ReadOnly where
        parseJSON
          = withObject "ReadOnly"
              (\ o -> ReadOnly' <$> (o .:? "readTime"))

instance ToJSON ReadOnly where
        toJSON ReadOnly'{..}
          = object
              (catMaybes [("readTime" .=) <$> _roReadTime])

-- | A specification of a set of documents to listen to.
--
-- /See:/ 'target' smart constructor.
data Target =
  Target'
    { _tTargetId    :: !(Maybe (Textual Int32))
    , _tOnce        :: !(Maybe Bool)
    , _tReadTime    :: !(Maybe DateTime')
    , _tResumeToken :: !(Maybe Bytes)
    , _tDocuments   :: !(Maybe DocumentsTarget)
    , _tQuery       :: !(Maybe QueryTarget)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Target' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tTargetId'
--
-- * 'tOnce'
--
-- * 'tReadTime'
--
-- * 'tResumeToken'
--
-- * 'tDocuments'
--
-- * 'tQuery'
target
    :: Target
target =
  Target'
    { _tTargetId = Nothing
    , _tOnce = Nothing
    , _tReadTime = Nothing
    , _tResumeToken = Nothing
    , _tDocuments = Nothing
    , _tQuery = Nothing
    }

-- | A client provided target ID. If not set, the server will assign an ID
-- for the target. Used for resuming a target without changing IDs. The IDs
-- can either be client-assigned or be server-assigned in a previous
-- stream. All targets with client provided IDs must be added before adding
-- a target that needs a server-assigned id.
tTargetId :: Lens' Target (Maybe Int32)
tTargetId
  = lens _tTargetId (\ s a -> s{_tTargetId = a}) .
      mapping _Coerce

-- | If the target should be removed once it is current and consistent.
tOnce :: Lens' Target (Maybe Bool)
tOnce = lens _tOnce (\ s a -> s{_tOnce = a})

-- | Start listening after a specific \`read_time\`. The client must know the
-- state of matching documents at this time.
tReadTime :: Lens' Target (Maybe UTCTime)
tReadTime
  = lens _tReadTime (\ s a -> s{_tReadTime = a}) .
      mapping _DateTime

-- | A resume token from a prior TargetChange for an identical target. Using
-- a resume token with a different target is unsupported and may fail.
tResumeToken :: Lens' Target (Maybe ByteString)
tResumeToken
  = lens _tResumeToken (\ s a -> s{_tResumeToken = a})
      . mapping _Bytes

-- | A target specified by a set of document names.
tDocuments :: Lens' Target (Maybe DocumentsTarget)
tDocuments
  = lens _tDocuments (\ s a -> s{_tDocuments = a})

-- | A target specified by a query.
tQuery :: Lens' Target (Maybe QueryTarget)
tQuery = lens _tQuery (\ s a -> s{_tQuery = a})

instance FromJSON Target where
        parseJSON
          = withObject "Target"
              (\ o ->
                 Target' <$>
                   (o .:? "targetId") <*> (o .:? "once") <*>
                     (o .:? "readTime")
                     <*> (o .:? "resumeToken")
                     <*> (o .:? "documents")
                     <*> (o .:? "query"))

instance ToJSON Target where
        toJSON Target'{..}
          = object
              (catMaybes
                 [("targetId" .=) <$> _tTargetId,
                  ("once" .=) <$> _tOnce,
                  ("readTime" .=) <$> _tReadTime,
                  ("resumeToken" .=) <$> _tResumeToken,
                  ("documents" .=) <$> _tDocuments,
                  ("query" .=) <$> _tQuery])

-- | Labels associated with this write request.
--
-- /See:/ 'writeRequestLabels' smart constructor.
newtype WriteRequestLabels =
  WriteRequestLabels'
    { _wrlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'WriteRequestLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wrlAddtional'
writeRequestLabels
    :: HashMap Text Text -- ^ 'wrlAddtional'
    -> WriteRequestLabels
writeRequestLabels pWrlAddtional_ =
  WriteRequestLabels' {_wrlAddtional = _Coerce # pWrlAddtional_}

wrlAddtional :: Lens' WriteRequestLabels (HashMap Text Text)
wrlAddtional
  = lens _wrlAddtional (\ s a -> s{_wrlAddtional = a})
      . _Coerce

instance FromJSON WriteRequestLabels where
        parseJSON
          = withObject "WriteRequestLabels"
              (\ o -> WriteRequestLabels' <$> (parseJSONObject o))

instance ToJSON WriteRequestLabels where
        toJSON = toJSON . _wrlAddtional

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'googleLongrunningOperation' smart constructor.
data GoogleLongrunningOperation =
  GoogleLongrunningOperation'
    { _gloDone     :: !(Maybe Bool)
    , _gloError    :: !(Maybe Status)
    , _gloResponse :: !(Maybe GoogleLongrunningOperationResponse)
    , _gloName     :: !(Maybe Text)
    , _gloMetadata :: !(Maybe GoogleLongrunningOperationMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GoogleLongrunningOperation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gloDone'
--
-- * 'gloError'
--
-- * 'gloResponse'
--
-- * 'gloName'
--
-- * 'gloMetadata'
googleLongrunningOperation
    :: GoogleLongrunningOperation
googleLongrunningOperation =
  GoogleLongrunningOperation'
    { _gloDone = Nothing
    , _gloError = Nothing
    , _gloResponse = Nothing
    , _gloName = Nothing
    , _gloMetadata = Nothing
    }

-- | If the value is \`false\`, it means the operation is still in progress.
-- If \`true\`, the operation is completed, and either \`error\` or
-- \`response\` is available.
gloDone :: Lens' GoogleLongrunningOperation (Maybe Bool)
gloDone = lens _gloDone (\ s a -> s{_gloDone = a})

-- | The error result of the operation in case of failure or cancellation.
gloError :: Lens' GoogleLongrunningOperation (Maybe Status)
gloError = lens _gloError (\ s a -> s{_gloError = a})

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
gloResponse :: Lens' GoogleLongrunningOperation (Maybe GoogleLongrunningOperationResponse)
gloResponse
  = lens _gloResponse (\ s a -> s{_gloResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. If you use the default HTTP mapping, the
-- \`name\` should have the format of \`operations\/some\/unique\/name\`.
gloName :: Lens' GoogleLongrunningOperation (Maybe Text)
gloName = lens _gloName (\ s a -> s{_gloName = a})

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
gloMetadata :: Lens' GoogleLongrunningOperation (Maybe GoogleLongrunningOperationMetadata)
gloMetadata
  = lens _gloMetadata (\ s a -> s{_gloMetadata = a})

instance FromJSON GoogleLongrunningOperation where
        parseJSON
          = withObject "GoogleLongrunningOperation"
              (\ o ->
                 GoogleLongrunningOperation' <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata"))

instance ToJSON GoogleLongrunningOperation where
        toJSON GoogleLongrunningOperation'{..}
          = object
              (catMaybes
                 [("done" .=) <$> _gloDone,
                  ("error" .=) <$> _gloError,
                  ("response" .=) <$> _gloResponse,
                  ("name" .=) <$> _gloName,
                  ("metadata" .=) <$> _gloMetadata])

-- | A filter with a single operand.
--
-- /See:/ 'unaryFilter' smart constructor.
data UnaryFilter =
  UnaryFilter'
    { _ufOp    :: !(Maybe UnaryFilterOp)
    , _ufField :: !(Maybe FieldReference)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UnaryFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ufOp'
--
-- * 'ufField'
unaryFilter
    :: UnaryFilter
unaryFilter = UnaryFilter' {_ufOp = Nothing, _ufField = Nothing}

-- | The unary operator to apply.
ufOp :: Lens' UnaryFilter (Maybe UnaryFilterOp)
ufOp = lens _ufOp (\ s a -> s{_ufOp = a})

-- | The field to which to apply the operator.
ufField :: Lens' UnaryFilter (Maybe FieldReference)
ufField = lens _ufField (\ s a -> s{_ufField = a})

instance FromJSON UnaryFilter where
        parseJSON
          = withObject "UnaryFilter"
              (\ o ->
                 UnaryFilter' <$> (o .:? "op") <*> (o .:? "field"))

instance ToJSON UnaryFilter where
        toJSON UnaryFilter'{..}
          = object
              (catMaybes
                 [("op" .=) <$> _ufOp, ("field" .=) <$> _ufField])
