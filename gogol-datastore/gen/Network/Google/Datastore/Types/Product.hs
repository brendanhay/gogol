{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Datastore.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Datastore.Types.Product where

import           Network.Google.Datastore.Types.Sum
import           Network.Google.Prelude

-- | An object representing a latitude\/longitude pair. This is expressed as
-- a pair of doubles representing degrees latitude and degrees longitude.
-- Unless specified otherwise, this must conform to the
-- <http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf WGS84 standard>.
-- Values must be within normalized ranges. Example of normalization code
-- in Python: def NormalizeLongitude(longitude): \"\"\"Wraps decimal
-- degrees longitude to [-180.0, 180.0].\"\"\" q, r = divmod(longitude,
-- 360.0) if r > 180.0 or (r == 180.0 and q \<= -1.0): return r - 360.0
-- return r def NormalizeLatLng(latitude, longitude): \"\"\"Wraps decimal
-- degrees latitude and longitude to [-180.0, 180.0] and [-90.0, 90.0],
-- respectively.\"\"\" r = latitude % 360.0 if r \<= 90.0: return r,
-- NormalizeLongitude(longitude) elif r >= 270.0: return r - 360,
-- NormalizeLongitude(longitude) else: return 180 - r,
-- NormalizeLongitude(longitude + 180.0) assert 180.0 ==
-- NormalizeLongitude(180.0) assert -180.0 == NormalizeLongitude(-180.0)
-- assert -179.0 == NormalizeLongitude(181.0) assert (0.0, 0.0) ==
-- NormalizeLatLng(360.0, 0.0) assert (0.0, 0.0) == NormalizeLatLng(-360.0,
-- 0.0) assert (85.0, 180.0) == NormalizeLatLng(95.0, 0.0) assert (-85.0,
-- -170.0) == NormalizeLatLng(-95.0, 10.0) assert (90.0, 10.0) ==
-- NormalizeLatLng(90.0, 10.0) assert (-90.0, -10.0) ==
-- NormalizeLatLng(-90.0, -10.0) assert (0.0, -170.0) ==
-- NormalizeLatLng(-180.0, 10.0) assert (0.0, -170.0) ==
-- NormalizeLatLng(180.0, 10.0) assert (-90.0, 10.0) ==
-- NormalizeLatLng(270.0, 10.0) assert (90.0, 10.0) ==
-- NormalizeLatLng(-270.0, 10.0)
--
-- /See:/ 'latLng' smart constructor.
data LatLng = LatLng'
    { _llLatitude  :: !(Maybe (Textual Double))
    , _llLongitude :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LatLng' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llLatitude'
--
-- * 'llLongitude'
latLng
    :: LatLng
latLng =
    LatLng'
    { _llLatitude = Nothing
    , _llLongitude = Nothing
    }

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

-- | The request for google.datastore.v1beta3.Datastore.Rollback.
--
-- /See:/ 'rollbackRequest' smart constructor.
newtype RollbackRequest = RollbackRequest'
    { _rrTransaction :: Maybe Base64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RollbackRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrTransaction'
rollbackRequest
    :: RollbackRequest
rollbackRequest =
    RollbackRequest'
    { _rrTransaction = Nothing
    }

-- | The transaction identifier, returned by a call to
-- google.datastore.v1beta3.Datastore.BeginTransaction.
rrTransaction :: Lens' RollbackRequest (Maybe ByteString)
rrTransaction
  = lens _rrTransaction
      (\ s a -> s{_rrTransaction = a})
      . mapping _Base64

instance FromJSON RollbackRequest where
        parseJSON
          = withObject "RollbackRequest"
              (\ o -> RollbackRequest' <$> (o .:? "transaction"))

instance ToJSON RollbackRequest where
        toJSON RollbackRequest'{..}
          = object
              (catMaybes [("transaction" .=) <$> _rrTransaction])

-- | A partition ID identifies a grouping of entities. The grouping is always
-- by project and namespace, however the namespace ID may be empty. A
-- partition ID contains several dimensions: project ID and namespace ID.
-- Partition dimensions: - May be \`\"\"\`. - Must be valid UTF-8 bytes. -
-- Must have values that match regex \`[A-Za-z\\d\\.\\-_]{1,100}\` If the
-- value of any dimension matches regex \`__.*__\`, the partition is
-- reserved\/read-only. A reserved\/read-only partition ID is forbidden in
-- certain documented contexts. Foreign partition IDs (in which the project
-- ID does not match the context project ID ) are discouraged. Reads and
-- writes of foreign partition IDs may fail if the project is not in an
-- active state.
--
-- /See:/ 'partitionId' smart constructor.
data PartitionId = PartitionId'
    { _piNamespaceId :: !(Maybe Text)
    , _piProjectId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PartitionId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piNamespaceId'
--
-- * 'piProjectId'
partitionId
    :: PartitionId
partitionId =
    PartitionId'
    { _piNamespaceId = Nothing
    , _piProjectId = Nothing
    }

-- | If not empty, the ID of the namespace to which the entities belong.
piNamespaceId :: Lens' PartitionId (Maybe Text)
piNamespaceId
  = lens _piNamespaceId
      (\ s a -> s{_piNamespaceId = a})

-- | The ID of the project to which the entities belong.
piProjectId :: Lens' PartitionId (Maybe Text)
piProjectId
  = lens _piProjectId (\ s a -> s{_piProjectId = a})

instance FromJSON PartitionId where
        parseJSON
          = withObject "PartitionId"
              (\ o ->
                 PartitionId' <$>
                   (o .:? "namespaceId") <*> (o .:? "projectId"))

instance ToJSON PartitionId where
        toJSON PartitionId'{..}
          = object
              (catMaybes
                 [("namespaceId" .=) <$> _piNamespaceId,
                  ("projectId" .=) <$> _piProjectId])

-- | A batch of results produced by a query.
--
-- /See:/ 'queryResultBatch' smart constructor.
data QueryResultBatch = QueryResultBatch'
    { _qrbSkippedResults   :: !(Maybe (Textual Int32))
    , _qrbSkippedCursor    :: !(Maybe Base64)
    , _qrbEntityResultType :: !(Maybe QueryResultBatchEntityResultType)
    , _qrbEntityResults    :: !(Maybe [EntityResult])
    , _qrbMoreResults      :: !(Maybe QueryResultBatchMoreResults)
    , _qrbEndCursor        :: !(Maybe Base64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QueryResultBatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qrbSkippedResults'
--
-- * 'qrbSkippedCursor'
--
-- * 'qrbEntityResultType'
--
-- * 'qrbEntityResults'
--
-- * 'qrbMoreResults'
--
-- * 'qrbEndCursor'
queryResultBatch
    :: QueryResultBatch
queryResultBatch =
    QueryResultBatch'
    { _qrbSkippedResults = Nothing
    , _qrbSkippedCursor = Nothing
    , _qrbEntityResultType = Nothing
    , _qrbEntityResults = Nothing
    , _qrbMoreResults = Nothing
    , _qrbEndCursor = Nothing
    }

-- | The number of results skipped, typically because of an offset.
qrbSkippedResults :: Lens' QueryResultBatch (Maybe Int32)
qrbSkippedResults
  = lens _qrbSkippedResults
      (\ s a -> s{_qrbSkippedResults = a})
      . mapping _Coerce

-- | A cursor that points to the position after the last skipped result. Will
-- be set when \`skipped_results\` != 0.
qrbSkippedCursor :: Lens' QueryResultBatch (Maybe ByteString)
qrbSkippedCursor
  = lens _qrbSkippedCursor
      (\ s a -> s{_qrbSkippedCursor = a})
      . mapping _Base64

-- | The result type for every entity in \`entity_results\`.
qrbEntityResultType :: Lens' QueryResultBatch (Maybe QueryResultBatchEntityResultType)
qrbEntityResultType
  = lens _qrbEntityResultType
      (\ s a -> s{_qrbEntityResultType = a})

-- | The results for this batch.
qrbEntityResults :: Lens' QueryResultBatch [EntityResult]
qrbEntityResults
  = lens _qrbEntityResults
      (\ s a -> s{_qrbEntityResults = a})
      . _Default
      . _Coerce

-- | The state of the query after the current batch.
qrbMoreResults :: Lens' QueryResultBatch (Maybe QueryResultBatchMoreResults)
qrbMoreResults
  = lens _qrbMoreResults
      (\ s a -> s{_qrbMoreResults = a})

-- | A cursor that points to the position after the last result in the batch.
qrbEndCursor :: Lens' QueryResultBatch (Maybe ByteString)
qrbEndCursor
  = lens _qrbEndCursor (\ s a -> s{_qrbEndCursor = a})
      . mapping _Base64

instance FromJSON QueryResultBatch where
        parseJSON
          = withObject "QueryResultBatch"
              (\ o ->
                 QueryResultBatch' <$>
                   (o .:? "skippedResults") <*> (o .:? "skippedCursor")
                     <*> (o .:? "entityResultType")
                     <*> (o .:? "entityResults" .!= mempty)
                     <*> (o .:? "moreResults")
                     <*> (o .:? "endCursor"))

instance ToJSON QueryResultBatch where
        toJSON QueryResultBatch'{..}
          = object
              (catMaybes
                 [("skippedResults" .=) <$> _qrbSkippedResults,
                  ("skippedCursor" .=) <$> _qrbSkippedCursor,
                  ("entityResultType" .=) <$> _qrbEntityResultType,
                  ("entityResults" .=) <$> _qrbEntityResults,
                  ("moreResults" .=) <$> _qrbMoreResults,
                  ("endCursor" .=) <$> _qrbEndCursor])

-- | The entity\'s properties. The map\'s keys are property names. A property
-- name matching regex \`__.*__\` is reserved. A reserved property name is
-- forbidden in certain documented contexts. The name must not contain more
-- than 500 characters. The name cannot be \`\"\"\`.
--
-- /See:/ 'entityProperties' smart constructor.
newtype EntityProperties = EntityProperties'
    { _epAddtional :: HashMap Text Value
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntityProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'epAddtional'
entityProperties
    :: HashMap Text Value -- ^ 'epAddtional'
    -> EntityProperties
entityProperties pEpAddtional_ =
    EntityProperties'
    { _epAddtional = _Coerce # pEpAddtional_
    }

epAddtional :: Lens' EntityProperties (HashMap Text Value)
epAddtional
  = lens _epAddtional (\ s a -> s{_epAddtional = a}) .
      _Coerce

instance FromJSON EntityProperties where
        parseJSON
          = withObject "EntityProperties"
              (\ o -> EntityProperties' <$> (parseJSONObject o))

instance ToJSON EntityProperties where
        toJSON = toJSON . _epAddtional

-- | The request for google.datastore.v1beta3.Datastore.BeginTransaction.
--
-- /See:/ 'beginTransactionRequest' smart constructor.
data BeginTransactionRequest =
    BeginTransactionRequest'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeginTransactionRequest' with the minimum fields required to make a request.
--
beginTransactionRequest
    :: BeginTransactionRequest
beginTransactionRequest = BeginTransactionRequest'

instance FromJSON BeginTransactionRequest where
        parseJSON
          = withObject "BeginTransactionRequest"
              (\ o -> pure BeginTransactionRequest')

instance ToJSON BeginTransactionRequest where
        toJSON = const emptyObject

-- | The request for google.datastore.v1beta3.Datastore.RunQuery.
--
-- /See:/ 'runQueryRequest' smart constructor.
data RunQueryRequest = RunQueryRequest'
    { _rqrPartitionId :: !(Maybe PartitionId)
    , _rqrGqlQuery    :: !(Maybe GqlQuery)
    , _rqrQuery       :: !(Maybe Query)
    , _rqrReadOptions :: !(Maybe ReadOptions)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RunQueryRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rqrPartitionId'
--
-- * 'rqrGqlQuery'
--
-- * 'rqrQuery'
--
-- * 'rqrReadOptions'
runQueryRequest
    :: RunQueryRequest
runQueryRequest =
    RunQueryRequest'
    { _rqrPartitionId = Nothing
    , _rqrGqlQuery = Nothing
    , _rqrQuery = Nothing
    , _rqrReadOptions = Nothing
    }

-- | Entities are partitioned into subsets, identified by a partition ID.
-- Queries are scoped to a single partition. This partition ID is
-- normalized with the standard default context partition ID.
rqrPartitionId :: Lens' RunQueryRequest (Maybe PartitionId)
rqrPartitionId
  = lens _rqrPartitionId
      (\ s a -> s{_rqrPartitionId = a})

-- | The GQL query to run.
rqrGqlQuery :: Lens' RunQueryRequest (Maybe GqlQuery)
rqrGqlQuery
  = lens _rqrGqlQuery (\ s a -> s{_rqrGqlQuery = a})

-- | The query to run.
rqrQuery :: Lens' RunQueryRequest (Maybe Query)
rqrQuery = lens _rqrQuery (\ s a -> s{_rqrQuery = a})

-- | The options for this query.
rqrReadOptions :: Lens' RunQueryRequest (Maybe ReadOptions)
rqrReadOptions
  = lens _rqrReadOptions
      (\ s a -> s{_rqrReadOptions = a})

instance FromJSON RunQueryRequest where
        parseJSON
          = withObject "RunQueryRequest"
              (\ o ->
                 RunQueryRequest' <$>
                   (o .:? "partitionId") <*> (o .:? "gqlQuery") <*>
                     (o .:? "query")
                     <*> (o .:? "readOptions"))

instance ToJSON RunQueryRequest where
        toJSON RunQueryRequest'{..}
          = object
              (catMaybes
                 [("partitionId" .=) <$> _rqrPartitionId,
                  ("gqlQuery" .=) <$> _rqrGqlQuery,
                  ("query" .=) <$> _rqrQuery,
                  ("readOptions" .=) <$> _rqrReadOptions])

-- | The request for google.datastore.v1beta3.Datastore.AllocateIds.
--
-- /See:/ 'allocateIdsRequest' smart constructor.
newtype AllocateIdsRequest = AllocateIdsRequest'
    { _airKeys :: Maybe [Key]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AllocateIdsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'airKeys'
allocateIdsRequest
    :: AllocateIdsRequest
allocateIdsRequest =
    AllocateIdsRequest'
    { _airKeys = Nothing
    }

-- | A list of keys with incomplete key paths for which to allocate IDs. No
-- key may be reserved\/read-only.
airKeys :: Lens' AllocateIdsRequest [Key]
airKeys
  = lens _airKeys (\ s a -> s{_airKeys = a}) . _Default
      . _Coerce

instance FromJSON AllocateIdsRequest where
        parseJSON
          = withObject "AllocateIdsRequest"
              (\ o ->
                 AllocateIdsRequest' <$> (o .:? "keys" .!= mempty))

instance ToJSON AllocateIdsRequest where
        toJSON AllocateIdsRequest'{..}
          = object (catMaybes [("keys" .=) <$> _airKeys])

-- | A filter that merges multiple other filters using the given operator.
--
-- /See:/ 'compositeFilter' smart constructor.
data CompositeFilter = CompositeFilter'
    { _cfOp      :: !(Maybe CompositeFilterOp)
    , _cfFilters :: !(Maybe [Filter])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CompositeFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfOp'
--
-- * 'cfFilters'
compositeFilter
    :: CompositeFilter
compositeFilter =
    CompositeFilter'
    { _cfOp = Nothing
    , _cfFilters = Nothing
    }

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

-- | The response for google.datastore.v1beta3.Datastore.BeginTransaction.
--
-- /See:/ 'beginTransactionResponse' smart constructor.
newtype BeginTransactionResponse = BeginTransactionResponse'
    { _btrTransaction :: Maybe Base64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeginTransactionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'btrTransaction'
beginTransactionResponse
    :: BeginTransactionResponse
beginTransactionResponse =
    BeginTransactionResponse'
    { _btrTransaction = Nothing
    }

-- | The transaction identifier (always present).
btrTransaction :: Lens' BeginTransactionResponse (Maybe ByteString)
btrTransaction
  = lens _btrTransaction
      (\ s a -> s{_btrTransaction = a})
      . mapping _Base64

instance FromJSON BeginTransactionResponse where
        parseJSON
          = withObject "BeginTransactionResponse"
              (\ o ->
                 BeginTransactionResponse' <$> (o .:? "transaction"))

instance ToJSON BeginTransactionResponse where
        toJSON BeginTransactionResponse'{..}
          = object
              (catMaybes [("transaction" .=) <$> _btrTransaction])

-- | The result of applying a mutation.
--
-- /See:/ 'mutationResult' smart constructor.
newtype MutationResult = MutationResult'
    { _mrKey :: Maybe Key
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MutationResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrKey'
mutationResult
    :: MutationResult
mutationResult =
    MutationResult'
    { _mrKey = Nothing
    }

-- | The automatically allocated key. Set only when the mutation allocated a
-- key.
mrKey :: Lens' MutationResult (Maybe Key)
mrKey = lens _mrKey (\ s a -> s{_mrKey = a})

instance FromJSON MutationResult where
        parseJSON
          = withObject "MutationResult"
              (\ o -> MutationResult' <$> (o .:? "key"))

instance ToJSON MutationResult where
        toJSON MutationResult'{..}
          = object (catMaybes [("key" .=) <$> _mrKey])

-- | The response for google.datastore.v1beta3.Datastore.AllocateIds.
--
-- /See:/ 'allocateIdsResponse' smart constructor.
newtype AllocateIdsResponse = AllocateIdsResponse'
    { _aKeys :: Maybe [Key]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AllocateIdsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aKeys'
allocateIdsResponse
    :: AllocateIdsResponse
allocateIdsResponse =
    AllocateIdsResponse'
    { _aKeys = Nothing
    }

-- | The keys specified in the request (in the same order), each with its key
-- path completed with a newly allocated ID.
aKeys :: Lens' AllocateIdsResponse [Key]
aKeys
  = lens _aKeys (\ s a -> s{_aKeys = a}) . _Default .
      _Coerce

instance FromJSON AllocateIdsResponse where
        parseJSON
          = withObject "AllocateIdsResponse"
              (\ o ->
                 AllocateIdsResponse' <$> (o .:? "keys" .!= mempty))

instance ToJSON AllocateIdsResponse where
        toJSON AllocateIdsResponse'{..}
          = object (catMaybes [("keys" .=) <$> _aKeys])

-- | A [GQL
-- query](https:\/\/cloud.google.com\/datastore\/docs\/apis\/gql\/gql_reference).
--
-- /See:/ 'gqlQuery' smart constructor.
data GqlQuery = GqlQuery'
    { _gqPositionalBindings :: !(Maybe [GqlQueryParameter])
    , _gqNamedBindings      :: !(Maybe GqlQueryNamedBindings)
    , _gqQueryString        :: !(Maybe Text)
    , _gqAllowLiterals      :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GqlQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gqPositionalBindings'
--
-- * 'gqNamedBindings'
--
-- * 'gqQueryString'
--
-- * 'gqAllowLiterals'
gqlQuery
    :: GqlQuery
gqlQuery =
    GqlQuery'
    { _gqPositionalBindings = Nothing
    , _gqNamedBindings = Nothing
    , _gqQueryString = Nothing
    , _gqAllowLiterals = Nothing
    }

-- | Numbered binding site \'1 references the first numbered parameter,
-- effectively using 1-based indexing, rather than the usual 0. For each
-- binding site numbered i in \`query_string\`, there must be an i-th
-- numbered parameter. The inverse must also be true.
gqPositionalBindings :: Lens' GqlQuery [GqlQueryParameter]
gqPositionalBindings
  = lens _gqPositionalBindings
      (\ s a -> s{_gqPositionalBindings = a})
      . _Default
      . _Coerce

-- | For each non-reserved named binding site in the query string, there must
-- be a named parameter with that name, but not necessarily the inverse.
-- Key must match regex \`A-Za-z_$*\`, must not match regex \`__.*__\`, and
-- must not be \`\"\"\`.
gqNamedBindings :: Lens' GqlQuery (Maybe GqlQueryNamedBindings)
gqNamedBindings
  = lens _gqNamedBindings
      (\ s a -> s{_gqNamedBindings = a})

-- | A string of the format described
-- [here](https:\/\/cloud.google.com\/datastore\/docs\/apis\/gql\/gql_reference).
gqQueryString :: Lens' GqlQuery (Maybe Text)
gqQueryString
  = lens _gqQueryString
      (\ s a -> s{_gqQueryString = a})

-- | When false, the query string must not contain any literals and instead
-- must bind all values. For example, \`SELECT * FROM Kind WHERE a =
-- \'string literal\'\` is not allowed, while \`SELECT * FROM Kind WHERE a
-- = \'value\` is.
gqAllowLiterals :: Lens' GqlQuery (Maybe Bool)
gqAllowLiterals
  = lens _gqAllowLiterals
      (\ s a -> s{_gqAllowLiterals = a})

instance FromJSON GqlQuery where
        parseJSON
          = withObject "GqlQuery"
              (\ o ->
                 GqlQuery' <$>
                   (o .:? "positionalBindings" .!= mempty) <*>
                     (o .:? "namedBindings")
                     <*> (o .:? "queryString")
                     <*> (o .:? "allowLiterals"))

instance ToJSON GqlQuery where
        toJSON GqlQuery'{..}
          = object
              (catMaybes
                 [("positionalBindings" .=) <$> _gqPositionalBindings,
                  ("namedBindings" .=) <$> _gqNamedBindings,
                  ("queryString" .=) <$> _gqQueryString,
                  ("allowLiterals" .=) <$> _gqAllowLiterals])

-- | The response for google.datastore.v1beta3.Datastore.RunQuery.
--
-- /See:/ 'runQueryResponse' smart constructor.
data RunQueryResponse = RunQueryResponse'
    { _rBatch :: !(Maybe QueryResultBatch)
    , _rQuery :: !(Maybe Query)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RunQueryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rBatch'
--
-- * 'rQuery'
runQueryResponse
    :: RunQueryResponse
runQueryResponse =
    RunQueryResponse'
    { _rBatch = Nothing
    , _rQuery = Nothing
    }

-- | A batch of query results (always present).
rBatch :: Lens' RunQueryResponse (Maybe QueryResultBatch)
rBatch = lens _rBatch (\ s a -> s{_rBatch = a})

-- | The parsed form of the \`GqlQuery\` from the request, if it was set.
rQuery :: Lens' RunQueryResponse (Maybe Query)
rQuery = lens _rQuery (\ s a -> s{_rQuery = a})

instance FromJSON RunQueryResponse where
        parseJSON
          = withObject "RunQueryResponse"
              (\ o ->
                 RunQueryResponse' <$>
                   (o .:? "batch") <*> (o .:? "query"))

instance ToJSON RunQueryResponse where
        toJSON RunQueryResponse'{..}
          = object
              (catMaybes
                 [("batch" .=) <$> _rBatch, ("query" .=) <$> _rQuery])

-- | A message that can hold any of the supported value types and associated
-- metadata.
--
-- /See:/ 'value' smart constructor.
data Value = Value'
    { _vKeyValue           :: !(Maybe Key)
    , _vGeoPointValue      :: !(Maybe LatLng)
    , _vIntegerValue       :: !(Maybe (Textual Int64))
    , _vTimestampValue     :: !(Maybe DateTime')
    , _vEntityValue        :: !(Maybe Entity)
    , _vExcludeFromIndexes :: !(Maybe Bool)
    , _vDoubleValue        :: !(Maybe (Textual Double))
    , _vStringValue        :: !(Maybe Text)
    , _vBooleanValue       :: !(Maybe Bool)
    , _vMeaning            :: !(Maybe (Textual Int32))
    , _vArrayValue         :: !(Maybe ArrayValue)
    , _vNullValue          :: !(Maybe ValueNullValue)
    , _vBlobValue          :: !(Maybe Base64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Value' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vKeyValue'
--
-- * 'vGeoPointValue'
--
-- * 'vIntegerValue'
--
-- * 'vTimestampValue'
--
-- * 'vEntityValue'
--
-- * 'vExcludeFromIndexes'
--
-- * 'vDoubleValue'
--
-- * 'vStringValue'
--
-- * 'vBooleanValue'
--
-- * 'vMeaning'
--
-- * 'vArrayValue'
--
-- * 'vNullValue'
--
-- * 'vBlobValue'
value
    :: Value
value =
    Value'
    { _vKeyValue = Nothing
    , _vGeoPointValue = Nothing
    , _vIntegerValue = Nothing
    , _vTimestampValue = Nothing
    , _vEntityValue = Nothing
    , _vExcludeFromIndexes = Nothing
    , _vDoubleValue = Nothing
    , _vStringValue = Nothing
    , _vBooleanValue = Nothing
    , _vMeaning = Nothing
    , _vArrayValue = Nothing
    , _vNullValue = Nothing
    , _vBlobValue = Nothing
    }

-- | A key value.
vKeyValue :: Lens' Value (Maybe Key)
vKeyValue
  = lens _vKeyValue (\ s a -> s{_vKeyValue = a})

-- | A geo point value representing a point on the surface of Earth.
vGeoPointValue :: Lens' Value (Maybe LatLng)
vGeoPointValue
  = lens _vGeoPointValue
      (\ s a -> s{_vGeoPointValue = a})

-- | An integer value.
vIntegerValue :: Lens' Value (Maybe Int64)
vIntegerValue
  = lens _vIntegerValue
      (\ s a -> s{_vIntegerValue = a})
      . mapping _Coerce

-- | A timestamp value. When stored in the Datastore, precise only to
-- microseconds; any additional precision is rounded down.
vTimestampValue :: Lens' Value (Maybe UTCTime)
vTimestampValue
  = lens _vTimestampValue
      (\ s a -> s{_vTimestampValue = a})
      . mapping _DateTime

-- | An entity value. - May have no key. - May have a key with an incomplete
-- key path. - May have a reserved\/read-only key.
vEntityValue :: Lens' Value (Maybe Entity)
vEntityValue
  = lens _vEntityValue (\ s a -> s{_vEntityValue = a})

-- | If the value should be excluded from all indexes including those defined
-- explicitly.
vExcludeFromIndexes :: Lens' Value (Maybe Bool)
vExcludeFromIndexes
  = lens _vExcludeFromIndexes
      (\ s a -> s{_vExcludeFromIndexes = a})

-- | A double value.
vDoubleValue :: Lens' Value (Maybe Double)
vDoubleValue
  = lens _vDoubleValue (\ s a -> s{_vDoubleValue = a})
      . mapping _Coerce

-- | A UTF-8 encoded string value. When \`exclude_from_indexes\` is false (it
-- is indexed) , may have at most 1500 bytes. Otherwise, may be set to at
-- least 1,000,000 bytes.
vStringValue :: Lens' Value (Maybe Text)
vStringValue
  = lens _vStringValue (\ s a -> s{_vStringValue = a})

-- | A boolean value.
vBooleanValue :: Lens' Value (Maybe Bool)
vBooleanValue
  = lens _vBooleanValue
      (\ s a -> s{_vBooleanValue = a})

-- | The \`meaning\` field should only be populated for backwards
-- compatibility.
vMeaning :: Lens' Value (Maybe Int32)
vMeaning
  = lens _vMeaning (\ s a -> s{_vMeaning = a}) .
      mapping _Coerce

-- | An array value. Cannot contain another array value. A \`Value\` instance
-- that sets field \`array_value\` must not set fields \`meaning\` or
-- \`exclude_from_indexes\`.
vArrayValue :: Lens' Value (Maybe ArrayValue)
vArrayValue
  = lens _vArrayValue (\ s a -> s{_vArrayValue = a})

-- | A null value.
vNullValue :: Lens' Value (Maybe ValueNullValue)
vNullValue
  = lens _vNullValue (\ s a -> s{_vNullValue = a})

-- | A blob value. May have at most 1,000,000 bytes. When
-- \`exclude_from_indexes\` is false, may have at most 1500 bytes. In JSON
-- requests, must be base64-encoded.
vBlobValue :: Lens' Value (Maybe ByteString)
vBlobValue
  = lens _vBlobValue (\ s a -> s{_vBlobValue = a}) .
      mapping _Base64

instance FromJSON Value where
        parseJSON
          = withObject "Value"
              (\ o ->
                 Value' <$>
                   (o .:? "keyValue") <*> (o .:? "geoPointValue") <*>
                     (o .:? "integerValue")
                     <*> (o .:? "timestampValue")
                     <*> (o .:? "entityValue")
                     <*> (o .:? "excludeFromIndexes")
                     <*> (o .:? "doubleValue")
                     <*> (o .:? "stringValue")
                     <*> (o .:? "booleanValue")
                     <*> (o .:? "meaning")
                     <*> (o .:? "arrayValue")
                     <*> (o .:? "nullValue")
                     <*> (o .:? "blobValue"))

instance ToJSON Value where
        toJSON Value'{..}
          = object
              (catMaybes
                 [("keyValue" .=) <$> _vKeyValue,
                  ("geoPointValue" .=) <$> _vGeoPointValue,
                  ("integerValue" .=) <$> _vIntegerValue,
                  ("timestampValue" .=) <$> _vTimestampValue,
                  ("entityValue" .=) <$> _vEntityValue,
                  ("excludeFromIndexes" .=) <$> _vExcludeFromIndexes,
                  ("doubleValue" .=) <$> _vDoubleValue,
                  ("stringValue" .=) <$> _vStringValue,
                  ("booleanValue" .=) <$> _vBooleanValue,
                  ("meaning" .=) <$> _vMeaning,
                  ("arrayValue" .=) <$> _vArrayValue,
                  ("nullValue" .=) <$> _vNullValue,
                  ("blobValue" .=) <$> _vBlobValue])

-- | The request for google.datastore.v1beta3.Datastore.Lookup.
--
-- /See:/ 'lookupRequest' smart constructor.
data LookupRequest = LookupRequest'
    { _lrKeys        :: !(Maybe [Key])
    , _lrReadOptions :: !(Maybe ReadOptions)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LookupRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrKeys'
--
-- * 'lrReadOptions'
lookupRequest
    :: LookupRequest
lookupRequest =
    LookupRequest'
    { _lrKeys = Nothing
    , _lrReadOptions = Nothing
    }

-- | Keys of entities to look up.
lrKeys :: Lens' LookupRequest [Key]
lrKeys
  = lens _lrKeys (\ s a -> s{_lrKeys = a}) . _Default .
      _Coerce

-- | The options for this lookup request.
lrReadOptions :: Lens' LookupRequest (Maybe ReadOptions)
lrReadOptions
  = lens _lrReadOptions
      (\ s a -> s{_lrReadOptions = a})

instance FromJSON LookupRequest where
        parseJSON
          = withObject "LookupRequest"
              (\ o ->
                 LookupRequest' <$>
                   (o .:? "keys" .!= mempty) <*> (o .:? "readOptions"))

instance ToJSON LookupRequest where
        toJSON LookupRequest'{..}
          = object
              (catMaybes
                 [("keys" .=) <$> _lrKeys,
                  ("readOptions" .=) <$> _lrReadOptions])

-- | A mutation to apply to an entity.
--
-- /See:/ 'mutation' smart constructor.
data Mutation = Mutation'
    { _mInsert :: !(Maybe Entity)
    , _mUpsert :: !(Maybe Entity)
    , _mDelete :: !(Maybe Key)
    , _mUpdate :: !(Maybe Entity)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Mutation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mInsert'
--
-- * 'mUpsert'
--
-- * 'mDelete'
--
-- * 'mUpdate'
mutation
    :: Mutation
mutation =
    Mutation'
    { _mInsert = Nothing
    , _mUpsert = Nothing
    , _mDelete = Nothing
    , _mUpdate = Nothing
    }

-- | The entity to insert. The entity must not already exist. The entity
-- key\'s final path element may be incomplete.
mInsert :: Lens' Mutation (Maybe Entity)
mInsert = lens _mInsert (\ s a -> s{_mInsert = a})

-- | The entity to upsert. The entity may or may not already exist. The
-- entity key\'s final path element may be incomplete.
mUpsert :: Lens' Mutation (Maybe Entity)
mUpsert = lens _mUpsert (\ s a -> s{_mUpsert = a})

-- | The key of the entity to delete. The entity may or may not already
-- exist. Must have a complete key path and must not be
-- reserved\/read-only.
mDelete :: Lens' Mutation (Maybe Key)
mDelete = lens _mDelete (\ s a -> s{_mDelete = a})

-- | The entity to update. The entity must already exist. Must have a
-- complete key path.
mUpdate :: Lens' Mutation (Maybe Entity)
mUpdate = lens _mUpdate (\ s a -> s{_mUpdate = a})

instance FromJSON Mutation where
        parseJSON
          = withObject "Mutation"
              (\ o ->
                 Mutation' <$>
                   (o .:? "insert") <*> (o .:? "upsert") <*>
                     (o .:? "delete")
                     <*> (o .:? "update"))

instance ToJSON Mutation where
        toJSON Mutation'{..}
          = object
              (catMaybes
                 [("insert" .=) <$> _mInsert,
                  ("upsert" .=) <$> _mUpsert,
                  ("delete" .=) <$> _mDelete,
                  ("update" .=) <$> _mUpdate])

-- | For each non-reserved named binding site in the query string, there must
-- be a named parameter with that name, but not necessarily the inverse.
-- Key must match regex \`A-Za-z_$*\`, must not match regex \`__.*__\`, and
-- must not be \`\"\"\`.
--
-- /See:/ 'gqlQueryNamedBindings' smart constructor.
newtype GqlQueryNamedBindings = GqlQueryNamedBindings'
    { _gqnbAddtional :: HashMap Text GqlQueryParameter
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GqlQueryNamedBindings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gqnbAddtional'
gqlQueryNamedBindings
    :: HashMap Text GqlQueryParameter -- ^ 'gqnbAddtional'
    -> GqlQueryNamedBindings
gqlQueryNamedBindings pGqnbAddtional_ =
    GqlQueryNamedBindings'
    { _gqnbAddtional = _Coerce # pGqnbAddtional_
    }

gqnbAddtional :: Lens' GqlQueryNamedBindings (HashMap Text GqlQueryParameter)
gqnbAddtional
  = lens _gqnbAddtional
      (\ s a -> s{_gqnbAddtional = a})
      . _Coerce

instance FromJSON GqlQueryNamedBindings where
        parseJSON
          = withObject "GqlQueryNamedBindings"
              (\ o ->
                 GqlQueryNamedBindings' <$> (parseJSONObject o))

instance ToJSON GqlQueryNamedBindings where
        toJSON = toJSON . _gqnbAddtional

-- | A reference to a property relative to the kind expressions.
--
-- /See:/ 'propertyReference' smart constructor.
newtype PropertyReference = PropertyReference'
    { _prName :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertyReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prName'
propertyReference
    :: PropertyReference
propertyReference =
    PropertyReference'
    { _prName = Nothing
    }

-- | The name of the property. If name includes \".\"s, it may be interpreted
-- as a property name path.
prName :: Lens' PropertyReference (Maybe Text)
prName = lens _prName (\ s a -> s{_prName = a})

instance FromJSON PropertyReference where
        parseJSON
          = withObject "PropertyReference"
              (\ o -> PropertyReference' <$> (o .:? "name"))

instance ToJSON PropertyReference where
        toJSON PropertyReference'{..}
          = object (catMaybes [("name" .=) <$> _prName])

-- | A unique identifier for an entity. If a key\'s partition ID or any of
-- its path kinds or names are reserved\/read-only, the key is
-- reserved\/read-only. A reserved\/read-only key is forbidden in certain
-- documented contexts.
--
-- /See:/ 'key' smart constructor.
data Key = Key'
    { _kPartitionId :: !(Maybe PartitionId)
    , _kPath        :: !(Maybe [PathElement])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Key' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'kPartitionId'
--
-- * 'kPath'
key
    :: Key
key =
    Key'
    { _kPartitionId = Nothing
    , _kPath = Nothing
    }

-- | Entities are partitioned into subsets, currently identified by a project
-- ID and namespace ID. Queries are scoped to a single partition.
kPartitionId :: Lens' Key (Maybe PartitionId)
kPartitionId
  = lens _kPartitionId (\ s a -> s{_kPartitionId = a})

-- | The entity path. An entity path consists of one or more elements
-- composed of a kind and a string or numerical identifier, which identify
-- entities. The first element identifies a _root entity_, the second
-- element identifies a _child_ of the root entity, the third element
-- identifies a child of the second entity, and so forth. The entities
-- identified by all prefixes of the path are called the element\'s
-- _ancestors_. An entity path is always fully complete: *all* of the
-- entity\'s ancestors are required to be in the path along with the entity
-- identifier itself. The only exception is that in some documented cases,
-- the identifier in the last path element (for the entity) itself may be
-- omitted. For example, the last path element of the key of
-- \`Mutation.insert\` may have no identifier. A path can never be empty,
-- and a path can have at most 100 elements.
kPath :: Lens' Key [PathElement]
kPath
  = lens _kPath (\ s a -> s{_kPath = a}) . _Default .
      _Coerce

instance FromJSON Key where
        parseJSON
          = withObject "Key"
              (\ o ->
                 Key' <$>
                   (o .:? "partitionId") <*> (o .:? "path" .!= mempty))

instance ToJSON Key where
        toJSON Key'{..}
          = object
              (catMaybes
                 [("partitionId" .=) <$> _kPartitionId,
                  ("path" .=) <$> _kPath])

-- | A filter on a specific property.
--
-- /See:/ 'propertyFilter' smart constructor.
data PropertyFilter = PropertyFilter'
    { _pfProperty :: !(Maybe PropertyReference)
    , _pfOp       :: !(Maybe PropertyFilterOp)
    , _pfValue    :: !(Maybe Value)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertyFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfProperty'
--
-- * 'pfOp'
--
-- * 'pfValue'
propertyFilter
    :: PropertyFilter
propertyFilter =
    PropertyFilter'
    { _pfProperty = Nothing
    , _pfOp = Nothing
    , _pfValue = Nothing
    }

-- | The property to filter by.
pfProperty :: Lens' PropertyFilter (Maybe PropertyReference)
pfProperty
  = lens _pfProperty (\ s a -> s{_pfProperty = a})

-- | The operator to filter by.
pfOp :: Lens' PropertyFilter (Maybe PropertyFilterOp)
pfOp = lens _pfOp (\ s a -> s{_pfOp = a})

-- | The value to compare the property to.
pfValue :: Lens' PropertyFilter (Maybe Value)
pfValue = lens _pfValue (\ s a -> s{_pfValue = a})

instance FromJSON PropertyFilter where
        parseJSON
          = withObject "PropertyFilter"
              (\ o ->
                 PropertyFilter' <$>
                   (o .:? "property") <*> (o .:? "op") <*>
                     (o .:? "value"))

instance ToJSON PropertyFilter where
        toJSON PropertyFilter'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _pfProperty,
                  ("op" .=) <$> _pfOp, ("value" .=) <$> _pfValue])

-- | A query for entities.
--
-- /See:/ 'query' smart constructor.
data Query = Query'
    { _qStartCursor :: !(Maybe Base64)
    , _qOffSet      :: !(Maybe (Textual Int32))
    , _qKind        :: !(Maybe [KindExpression])
    , _qDistinctOn  :: !(Maybe [PropertyReference])
    , _qEndCursor   :: !(Maybe Base64)
    , _qLimit       :: !(Maybe (Textual Int32))
    , _qProjection  :: !(Maybe [Projection])
    , _qFilter      :: !(Maybe Filter)
    , _qOrder       :: !(Maybe [PropertyOrder])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Query' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qStartCursor'
--
-- * 'qOffSet'
--
-- * 'qKind'
--
-- * 'qDistinctOn'
--
-- * 'qEndCursor'
--
-- * 'qLimit'
--
-- * 'qProjection'
--
-- * 'qFilter'
--
-- * 'qOrder'
query
    :: Query
query =
    Query'
    { _qStartCursor = Nothing
    , _qOffSet = Nothing
    , _qKind = Nothing
    , _qDistinctOn = Nothing
    , _qEndCursor = Nothing
    , _qLimit = Nothing
    , _qProjection = Nothing
    , _qFilter = Nothing
    , _qOrder = Nothing
    }

-- | A starting point for the query results. Query cursors are returned in
-- query result batches.
qStartCursor :: Lens' Query (Maybe ByteString)
qStartCursor
  = lens _qStartCursor (\ s a -> s{_qStartCursor = a})
      . mapping _Base64

-- | The number of results to skip. Applies before limit, but after all other
-- constraints. Optional. Must be >= 0 if specified.
qOffSet :: Lens' Query (Maybe Int32)
qOffSet
  = lens _qOffSet (\ s a -> s{_qOffSet = a}) .
      mapping _Coerce

-- | The kinds to query (if empty, returns entities of all kinds). Currently
-- at most 1 kind may be specified.
qKind :: Lens' Query [KindExpression]
qKind
  = lens _qKind (\ s a -> s{_qKind = a}) . _Default .
      _Coerce

-- | The properties to make distinct. The query results will contain the
-- first result for each distinct combination of values for the given
-- properties (if empty, all results are returned).
qDistinctOn :: Lens' Query [PropertyReference]
qDistinctOn
  = lens _qDistinctOn (\ s a -> s{_qDistinctOn = a}) .
      _Default
      . _Coerce

-- | An ending point for the query results. Query cursors are returned in
-- query result batches.
qEndCursor :: Lens' Query (Maybe ByteString)
qEndCursor
  = lens _qEndCursor (\ s a -> s{_qEndCursor = a}) .
      mapping _Base64

-- | The maximum number of results to return. Applies after all other
-- constraints. Optional. Unspecified is interpreted as no limit. Must be
-- >= 0 if specified.
qLimit :: Lens' Query (Maybe Int32)
qLimit
  = lens _qLimit (\ s a -> s{_qLimit = a}) .
      mapping _Coerce

-- | The projection to return. Defaults to returning all properties.
qProjection :: Lens' Query [Projection]
qProjection
  = lens _qProjection (\ s a -> s{_qProjection = a}) .
      _Default
      . _Coerce

-- | The filter to apply.
qFilter :: Lens' Query (Maybe Filter)
qFilter = lens _qFilter (\ s a -> s{_qFilter = a})

-- | The order to apply to the query results (if empty, order is
-- unspecified).
qOrder :: Lens' Query [PropertyOrder]
qOrder
  = lens _qOrder (\ s a -> s{_qOrder = a}) . _Default .
      _Coerce

instance FromJSON Query where
        parseJSON
          = withObject "Query"
              (\ o ->
                 Query' <$>
                   (o .:? "startCursor") <*> (o .:? "offset") <*>
                     (o .:? "kind" .!= mempty)
                     <*> (o .:? "distinctOn" .!= mempty)
                     <*> (o .:? "endCursor")
                     <*> (o .:? "limit")
                     <*> (o .:? "projection" .!= mempty)
                     <*> (o .:? "filter")
                     <*> (o .:? "order" .!= mempty))

instance ToJSON Query where
        toJSON Query'{..}
          = object
              (catMaybes
                 [("startCursor" .=) <$> _qStartCursor,
                  ("offset" .=) <$> _qOffSet, ("kind" .=) <$> _qKind,
                  ("distinctOn" .=) <$> _qDistinctOn,
                  ("endCursor" .=) <$> _qEndCursor,
                  ("limit" .=) <$> _qLimit,
                  ("projection" .=) <$> _qProjection,
                  ("filter" .=) <$> _qFilter,
                  ("order" .=) <$> _qOrder])

-- | An array value.
--
-- /See:/ 'arrayValue' smart constructor.
newtype ArrayValue = ArrayValue'
    { _avValues :: Maybe [Value]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ArrayValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'avValues'
arrayValue
    :: ArrayValue
arrayValue =
    ArrayValue'
    { _avValues = Nothing
    }

-- | Values in the array. The order of this array may not be preserved if it
-- contains a mix of indexed and unindexed values.
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

-- | The result of fetching an entity from Datastore.
--
-- /See:/ 'entityResult' smart constructor.
data EntityResult = EntityResult'
    { _erCursor :: !(Maybe Base64)
    , _erEntity :: !(Maybe Entity)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntityResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erCursor'
--
-- * 'erEntity'
entityResult
    :: EntityResult
entityResult =
    EntityResult'
    { _erCursor = Nothing
    , _erEntity = Nothing
    }

-- | A cursor that points to the position after the result entity. Set only
-- when the \`EntityResult\` is part of a \`QueryResultBatch\` message.
erCursor :: Lens' EntityResult (Maybe ByteString)
erCursor
  = lens _erCursor (\ s a -> s{_erCursor = a}) .
      mapping _Base64

-- | The resulting entity.
erEntity :: Lens' EntityResult (Maybe Entity)
erEntity = lens _erEntity (\ s a -> s{_erEntity = a})

instance FromJSON EntityResult where
        parseJSON
          = withObject "EntityResult"
              (\ o ->
                 EntityResult' <$>
                   (o .:? "cursor") <*> (o .:? "entity"))

instance ToJSON EntityResult where
        toJSON EntityResult'{..}
          = object
              (catMaybes
                 [("cursor" .=) <$> _erCursor,
                  ("entity" .=) <$> _erEntity])

-- | The response for google.datastore.v1beta3.Datastore.Commit.
--
-- /See:/ 'commitResponse' smart constructor.
data CommitResponse = CommitResponse'
    { _crIndexUpdates    :: !(Maybe (Textual Int32))
    , _crMutationResults :: !(Maybe [MutationResult])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommitResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crIndexUpdates'
--
-- * 'crMutationResults'
commitResponse
    :: CommitResponse
commitResponse =
    CommitResponse'
    { _crIndexUpdates = Nothing
    , _crMutationResults = Nothing
    }

-- | The number of index entries updated during the commit, or zero if none
-- were updated.
crIndexUpdates :: Lens' CommitResponse (Maybe Int32)
crIndexUpdates
  = lens _crIndexUpdates
      (\ s a -> s{_crIndexUpdates = a})
      . mapping _Coerce

-- | The result of performing the mutations. The i-th mutation result
-- corresponds to the i-th mutation in the request.
crMutationResults :: Lens' CommitResponse [MutationResult]
crMutationResults
  = lens _crMutationResults
      (\ s a -> s{_crMutationResults = a})
      . _Default
      . _Coerce

instance FromJSON CommitResponse where
        parseJSON
          = withObject "CommitResponse"
              (\ o ->
                 CommitResponse' <$>
                   (o .:? "indexUpdates") <*>
                     (o .:? "mutationResults" .!= mempty))

instance ToJSON CommitResponse where
        toJSON CommitResponse'{..}
          = object
              (catMaybes
                 [("indexUpdates" .=) <$> _crIndexUpdates,
                  ("mutationResults" .=) <$> _crMutationResults])

-- | A representation of a kind.
--
-- /See:/ 'kindExpression' smart constructor.
newtype KindExpression = KindExpression'
    { _keName :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'KindExpression' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'keName'
kindExpression
    :: KindExpression
kindExpression =
    KindExpression'
    { _keName = Nothing
    }

-- | The name of the kind.
keName :: Lens' KindExpression (Maybe Text)
keName = lens _keName (\ s a -> s{_keName = a})

instance FromJSON KindExpression where
        parseJSON
          = withObject "KindExpression"
              (\ o -> KindExpression' <$> (o .:? "name"))

instance ToJSON KindExpression where
        toJSON KindExpression'{..}
          = object (catMaybes [("name" .=) <$> _keName])

-- | The options shared by read requests.
--
-- /See:/ 'readOptions' smart constructor.
data ReadOptions = ReadOptions'
    { _roReadConsistency :: !(Maybe ReadOptionsReadConsistency)
    , _roTransaction     :: !(Maybe Base64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'roReadConsistency'
--
-- * 'roTransaction'
readOptions
    :: ReadOptions
readOptions =
    ReadOptions'
    { _roReadConsistency = Nothing
    , _roTransaction = Nothing
    }

-- | The non-transactional read consistency to use. Cannot be set to
-- \`STRONG\` for global queries.
roReadConsistency :: Lens' ReadOptions (Maybe ReadOptionsReadConsistency)
roReadConsistency
  = lens _roReadConsistency
      (\ s a -> s{_roReadConsistency = a})

-- | The transaction in which to read.
roTransaction :: Lens' ReadOptions (Maybe ByteString)
roTransaction
  = lens _roTransaction
      (\ s a -> s{_roTransaction = a})
      . mapping _Base64

instance FromJSON ReadOptions where
        parseJSON
          = withObject "ReadOptions"
              (\ o ->
                 ReadOptions' <$>
                   (o .:? "readConsistency") <*> (o .:? "transaction"))

instance ToJSON ReadOptions where
        toJSON ReadOptions'{..}
          = object
              (catMaybes
                 [("readConsistency" .=) <$> _roReadConsistency,
                  ("transaction" .=) <$> _roTransaction])

-- | The response for google.datastore.v1beta3.Datastore.Rollback (an empty
-- message).
--
-- /See:/ 'rollbackResponse' smart constructor.
data RollbackResponse =
    RollbackResponse'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RollbackResponse' with the minimum fields required to make a request.
--
rollbackResponse
    :: RollbackResponse
rollbackResponse = RollbackResponse'

instance FromJSON RollbackResponse where
        parseJSON
          = withObject "RollbackResponse"
              (\ o -> pure RollbackResponse')

instance ToJSON RollbackResponse where
        toJSON = const emptyObject

-- | A representation of a property in a projection.
--
-- /See:/ 'projection' smart constructor.
newtype Projection = Projection'
    { _pProperty :: Maybe PropertyReference
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Projection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pProperty'
projection
    :: Projection
projection =
    Projection'
    { _pProperty = Nothing
    }

-- | The property to project.
pProperty :: Lens' Projection (Maybe PropertyReference)
pProperty
  = lens _pProperty (\ s a -> s{_pProperty = a})

instance FromJSON Projection where
        parseJSON
          = withObject "Projection"
              (\ o -> Projection' <$> (o .:? "property"))

instance ToJSON Projection where
        toJSON Projection'{..}
          = object (catMaybes [("property" .=) <$> _pProperty])

-- | A holder for any type of filter.
--
-- /See:/ 'filter'' smart constructor.
data Filter = Filter'
    { _fCompositeFilter :: !(Maybe CompositeFilter)
    , _fPropertyFilter  :: !(Maybe PropertyFilter)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Filter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fCompositeFilter'
--
-- * 'fPropertyFilter'
filter'
    :: Filter
filter' =
    Filter'
    { _fCompositeFilter = Nothing
    , _fPropertyFilter = Nothing
    }

-- | A composite filter.
fCompositeFilter :: Lens' Filter (Maybe CompositeFilter)
fCompositeFilter
  = lens _fCompositeFilter
      (\ s a -> s{_fCompositeFilter = a})

-- | A filter on a property.
fPropertyFilter :: Lens' Filter (Maybe PropertyFilter)
fPropertyFilter
  = lens _fPropertyFilter
      (\ s a -> s{_fPropertyFilter = a})

instance FromJSON Filter where
        parseJSON
          = withObject "Filter"
              (\ o ->
                 Filter' <$>
                   (o .:? "compositeFilter") <*>
                     (o .:? "propertyFilter"))

instance ToJSON Filter where
        toJSON Filter'{..}
          = object
              (catMaybes
                 [("compositeFilter" .=) <$> _fCompositeFilter,
                  ("propertyFilter" .=) <$> _fPropertyFilter])

-- | The request for google.datastore.v1beta3.Datastore.Commit.
--
-- /See:/ 'commitRequest' smart constructor.
data CommitRequest = CommitRequest'
    { _crMutations   :: !(Maybe [Mutation])
    , _crMode        :: !(Maybe CommitRequestMode)
    , _crTransaction :: !(Maybe Base64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommitRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crMutations'
--
-- * 'crMode'
--
-- * 'crTransaction'
commitRequest
    :: CommitRequest
commitRequest =
    CommitRequest'
    { _crMutations = Nothing
    , _crMode = Nothing
    , _crTransaction = Nothing
    }

-- | The mutations to perform. When mode is \`TRANSACTIONAL\`, mutations
-- affecting a single entity are applied in order. The following sequences
-- of mutations affecting a single entity are not permitted in a single
-- \`Commit\` request: - \`insert\` followed by \`insert\` - \`update\`
-- followed by \`insert\` - \`upsert\` followed by \`insert\` - \`delete\`
-- followed by \`update\` When mode is \`NON_TRANSACTIONAL\`, no two
-- mutations may affect a single entity.
crMutations :: Lens' CommitRequest [Mutation]
crMutations
  = lens _crMutations (\ s a -> s{_crMutations = a}) .
      _Default
      . _Coerce

-- | The type of commit to perform. Defaults to \`TRANSACTIONAL\`.
crMode :: Lens' CommitRequest (Maybe CommitRequestMode)
crMode = lens _crMode (\ s a -> s{_crMode = a})

-- | The identifier of the transaction associated with the commit. A
-- transaction identifier is returned by a call to BeginTransaction.
crTransaction :: Lens' CommitRequest (Maybe ByteString)
crTransaction
  = lens _crTransaction
      (\ s a -> s{_crTransaction = a})
      . mapping _Base64

instance FromJSON CommitRequest where
        parseJSON
          = withObject "CommitRequest"
              (\ o ->
                 CommitRequest' <$>
                   (o .:? "mutations" .!= mempty) <*> (o .:? "mode") <*>
                     (o .:? "transaction"))

instance ToJSON CommitRequest where
        toJSON CommitRequest'{..}
          = object
              (catMaybes
                 [("mutations" .=) <$> _crMutations,
                  ("mode" .=) <$> _crMode,
                  ("transaction" .=) <$> _crTransaction])

-- | A (kind, ID\/name) pair used to construct a key path. If either name or
-- ID is set, the element is complete. If neither is set, the element is
-- incomplete.
--
-- /See:/ 'pathElement' smart constructor.
data PathElement = PathElement'
    { _peKind :: !(Maybe Text)
    , _peName :: !(Maybe Text)
    , _peId   :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PathElement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'peKind'
--
-- * 'peName'
--
-- * 'peId'
pathElement
    :: PathElement
pathElement =
    PathElement'
    { _peKind = Nothing
    , _peName = Nothing
    , _peId = Nothing
    }

-- | The kind of the entity. A kind matching regex \`__.*__\` is
-- reserved\/read-only. A kind must not contain more than 1500 bytes when
-- UTF-8 encoded. Cannot be \`\"\"\`.
peKind :: Lens' PathElement (Maybe Text)
peKind = lens _peKind (\ s a -> s{_peKind = a})

-- | The name of the entity. A name matching regex \`__.*__\` is
-- reserved\/read-only. A name must not be more than 1500 bytes when UTF-8
-- encoded. Cannot be \`\"\"\`.
peName :: Lens' PathElement (Maybe Text)
peName = lens _peName (\ s a -> s{_peName = a})

-- | The auto-allocated ID of the entity. Never equal to zero. Values less
-- than zero are discouraged and may not be supported in the future.
peId :: Lens' PathElement (Maybe Int64)
peId
  = lens _peId (\ s a -> s{_peId = a}) .
      mapping _Coerce

instance FromJSON PathElement where
        parseJSON
          = withObject "PathElement"
              (\ o ->
                 PathElement' <$>
                   (o .:? "kind") <*> (o .:? "name") <*> (o .:? "id"))

instance ToJSON PathElement where
        toJSON PathElement'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _peKind, ("name" .=) <$> _peName,
                  ("id" .=) <$> _peId])

-- | A Datastore data object. An entity is limited to 1 megabyte when stored.
-- That _roughly_ corresponds to a limit of 1 megabyte for the serialized
-- form of this message.
--
-- /See:/ 'entity' smart constructor.
data Entity = Entity'
    { _eKey        :: !(Maybe Key)
    , _eProperties :: !(Maybe EntityProperties)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Entity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eKey'
--
-- * 'eProperties'
entity
    :: Entity
entity =
    Entity'
    { _eKey = Nothing
    , _eProperties = Nothing
    }

-- | The entity\'s key. An entity must have a key, unless otherwise
-- documented (for example, an entity in \`Value.entity_value\` may have no
-- key). An entity\'s kind is its key path\'s last element\'s kind, or null
-- if it has no key.
eKey :: Lens' Entity (Maybe Key)
eKey = lens _eKey (\ s a -> s{_eKey = a})

-- | The entity\'s properties. The map\'s keys are property names. A property
-- name matching regex \`__.*__\` is reserved. A reserved property name is
-- forbidden in certain documented contexts. The name must not contain more
-- than 500 characters. The name cannot be \`\"\"\`.
eProperties :: Lens' Entity (Maybe EntityProperties)
eProperties
  = lens _eProperties (\ s a -> s{_eProperties = a})

instance FromJSON Entity where
        parseJSON
          = withObject "Entity"
              (\ o ->
                 Entity' <$> (o .:? "key") <*> (o .:? "properties"))

instance ToJSON Entity where
        toJSON Entity'{..}
          = object
              (catMaybes
                 [("key" .=) <$> _eKey,
                  ("properties" .=) <$> _eProperties])

-- | The response for google.datastore.v1beta3.Datastore.Lookup.
--
-- /See:/ 'lookupResponse' smart constructor.
data LookupResponse = LookupResponse'
    { _lrDeferred :: !(Maybe [Key])
    , _lrFound    :: !(Maybe [EntityResult])
    , _lrMissing  :: !(Maybe [EntityResult])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LookupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrDeferred'
--
-- * 'lrFound'
--
-- * 'lrMissing'
lookupResponse
    :: LookupResponse
lookupResponse =
    LookupResponse'
    { _lrDeferred = Nothing
    , _lrFound = Nothing
    , _lrMissing = Nothing
    }

-- | A list of keys that were not looked up due to resource constraints. The
-- order of results in this field is undefined and has no relation to the
-- order of the keys in the input.
lrDeferred :: Lens' LookupResponse [Key]
lrDeferred
  = lens _lrDeferred (\ s a -> s{_lrDeferred = a}) .
      _Default
      . _Coerce

-- | Entities found as \`ResultType.FULL\` entities. The order of results in
-- this field is undefined and has no relation to the order of the keys in
-- the input.
lrFound :: Lens' LookupResponse [EntityResult]
lrFound
  = lens _lrFound (\ s a -> s{_lrFound = a}) . _Default
      . _Coerce

-- | Entities not found as \`ResultType.KEY_ONLY\` entities. The order of
-- results in this field is undefined and has no relation to the order of
-- the keys in the input.
lrMissing :: Lens' LookupResponse [EntityResult]
lrMissing
  = lens _lrMissing (\ s a -> s{_lrMissing = a}) .
      _Default
      . _Coerce

instance FromJSON LookupResponse where
        parseJSON
          = withObject "LookupResponse"
              (\ o ->
                 LookupResponse' <$>
                   (o .:? "deferred" .!= mempty) <*>
                     (o .:? "found" .!= mempty)
                     <*> (o .:? "missing" .!= mempty))

instance ToJSON LookupResponse where
        toJSON LookupResponse'{..}
          = object
              (catMaybes
                 [("deferred" .=) <$> _lrDeferred,
                  ("found" .=) <$> _lrFound,
                  ("missing" .=) <$> _lrMissing])

-- | The desired order for a specific property.
--
-- /See:/ 'propertyOrder' smart constructor.
data PropertyOrder = PropertyOrder'
    { _poProperty  :: !(Maybe PropertyReference)
    , _poDirection :: !(Maybe PropertyOrderDirection)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertyOrder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'poProperty'
--
-- * 'poDirection'
propertyOrder
    :: PropertyOrder
propertyOrder =
    PropertyOrder'
    { _poProperty = Nothing
    , _poDirection = Nothing
    }

-- | The property to order by.
poProperty :: Lens' PropertyOrder (Maybe PropertyReference)
poProperty
  = lens _poProperty (\ s a -> s{_poProperty = a})

-- | The direction to order by. Defaults to \`ASCENDING\`.
poDirection :: Lens' PropertyOrder (Maybe PropertyOrderDirection)
poDirection
  = lens _poDirection (\ s a -> s{_poDirection = a})

instance FromJSON PropertyOrder where
        parseJSON
          = withObject "PropertyOrder"
              (\ o ->
                 PropertyOrder' <$>
                   (o .:? "property") <*> (o .:? "direction"))

instance ToJSON PropertyOrder where
        toJSON PropertyOrder'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _poProperty,
                  ("direction" .=) <$> _poDirection])

-- | A binding parameter for a GQL query.
--
-- /See:/ 'gqlQueryParameter' smart constructor.
data GqlQueryParameter = GqlQueryParameter'
    { _gqpCursor :: !(Maybe Base64)
    , _gqpValue  :: !(Maybe Value)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GqlQueryParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gqpCursor'
--
-- * 'gqpValue'
gqlQueryParameter
    :: GqlQueryParameter
gqlQueryParameter =
    GqlQueryParameter'
    { _gqpCursor = Nothing
    , _gqpValue = Nothing
    }

-- | A query cursor. Query cursors are returned in query result batches.
gqpCursor :: Lens' GqlQueryParameter (Maybe ByteString)
gqpCursor
  = lens _gqpCursor (\ s a -> s{_gqpCursor = a}) .
      mapping _Base64

-- | A value parameter.
gqpValue :: Lens' GqlQueryParameter (Maybe Value)
gqpValue = lens _gqpValue (\ s a -> s{_gqpValue = a})

instance FromJSON GqlQueryParameter where
        parseJSON
          = withObject "GqlQueryParameter"
              (\ o ->
                 GqlQueryParameter' <$>
                   (o .:? "cursor") <*> (o .:? "value"))

instance ToJSON GqlQueryParameter where
        toJSON GqlQueryParameter'{..}
          = object
              (catMaybes
                 [("cursor" .=) <$> _gqpCursor,
                  ("value" .=) <$> _gqpValue])
