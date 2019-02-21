{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Dataflow.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Dataflow.Types.Product where

import           Network.Google.Dataflow.Types.Sum
import           Network.Google.Prelude

-- | A mapping from each stage to the information about that stage.
--
-- /See:/ 'jobExecutionInfoStages' smart constructor.
newtype JobExecutionInfoStages =
  JobExecutionInfoStages'
    { _jeisAddtional :: HashMap Text JobExecutionStageInfo
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobExecutionInfoStages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jeisAddtional'
jobExecutionInfoStages
    :: HashMap Text JobExecutionStageInfo -- ^ 'jeisAddtional'
    -> JobExecutionInfoStages
jobExecutionInfoStages pJeisAddtional_ =
  JobExecutionInfoStages' {_jeisAddtional = _Coerce # pJeisAddtional_}


jeisAddtional :: Lens' JobExecutionInfoStages (HashMap Text JobExecutionStageInfo)
jeisAddtional
  = lens _jeisAddtional
      (\ s a -> s{_jeisAddtional = a})
      . _Coerce

instance FromJSON JobExecutionInfoStages where
        parseJSON
          = withObject "JobExecutionInfoStages"
              (\ o ->
                 JobExecutionInfoStages' <$> (parseJSONObject o))

instance ToJSON JobExecutionInfoStages where
        toJSON = toJSON . _jeisAddtional

-- | All configuration data for a particular Computation.
--
-- /See:/ 'computationTopology' smart constructor.
data ComputationTopology =
  ComputationTopology'
    { _ctStateFamilies   :: !(Maybe [StateFamilyConfig])
    , _ctInputs          :: !(Maybe [StreamLocation])
    , _ctKeyRanges       :: !(Maybe [KeyRangeLocation])
    , _ctOutputs         :: !(Maybe [StreamLocation])
    , _ctComputationId   :: !(Maybe Text)
    , _ctSystemStageName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ComputationTopology' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctStateFamilies'
--
-- * 'ctInputs'
--
-- * 'ctKeyRanges'
--
-- * 'ctOutputs'
--
-- * 'ctComputationId'
--
-- * 'ctSystemStageName'
computationTopology
    :: ComputationTopology
computationTopology =
  ComputationTopology'
    { _ctStateFamilies = Nothing
    , _ctInputs = Nothing
    , _ctKeyRanges = Nothing
    , _ctOutputs = Nothing
    , _ctComputationId = Nothing
    , _ctSystemStageName = Nothing
    }


-- | The state family values.
ctStateFamilies :: Lens' ComputationTopology [StateFamilyConfig]
ctStateFamilies
  = lens _ctStateFamilies
      (\ s a -> s{_ctStateFamilies = a})
      . _Default
      . _Coerce

-- | The inputs to the computation.
ctInputs :: Lens' ComputationTopology [StreamLocation]
ctInputs
  = lens _ctInputs (\ s a -> s{_ctInputs = a}) .
      _Default
      . _Coerce

-- | The key ranges processed by the computation.
ctKeyRanges :: Lens' ComputationTopology [KeyRangeLocation]
ctKeyRanges
  = lens _ctKeyRanges (\ s a -> s{_ctKeyRanges = a}) .
      _Default
      . _Coerce

-- | The outputs from the computation.
ctOutputs :: Lens' ComputationTopology [StreamLocation]
ctOutputs
  = lens _ctOutputs (\ s a -> s{_ctOutputs = a}) .
      _Default
      . _Coerce

-- | The ID of the computation.
ctComputationId :: Lens' ComputationTopology (Maybe Text)
ctComputationId
  = lens _ctComputationId
      (\ s a -> s{_ctComputationId = a})

-- | The system stage name.
ctSystemStageName :: Lens' ComputationTopology (Maybe Text)
ctSystemStageName
  = lens _ctSystemStageName
      (\ s a -> s{_ctSystemStageName = a})

instance FromJSON ComputationTopology where
        parseJSON
          = withObject "ComputationTopology"
              (\ o ->
                 ComputationTopology' <$>
                   (o .:? "stateFamilies" .!= mempty) <*>
                     (o .:? "inputs" .!= mempty)
                     <*> (o .:? "keyRanges" .!= mempty)
                     <*> (o .:? "outputs" .!= mempty)
                     <*> (o .:? "computationId")
                     <*> (o .:? "systemStageName"))

instance ToJSON ComputationTopology where
        toJSON ComputationTopology'{..}
          = object
              (catMaybes
                 [("stateFamilies" .=) <$> _ctStateFamilies,
                  ("inputs" .=) <$> _ctInputs,
                  ("keyRanges" .=) <$> _ctKeyRanges,
                  ("outputs" .=) <$> _ctOutputs,
                  ("computationId" .=) <$> _ctComputationId,
                  ("systemStageName" .=) <$> _ctSystemStageName])

-- | The response to a SourceSplitRequest.
--
-- /See:/ 'sourceSplitResponse' smart constructor.
data SourceSplitResponse =
  SourceSplitResponse'
    { _ssrBundles :: !(Maybe [DerivedSource])
    , _ssrShards  :: !(Maybe [SourceSplitShard])
    , _ssrOutcome :: !(Maybe SourceSplitResponseOutcome)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceSplitResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssrBundles'
--
-- * 'ssrShards'
--
-- * 'ssrOutcome'
sourceSplitResponse
    :: SourceSplitResponse
sourceSplitResponse =
  SourceSplitResponse'
    {_ssrBundles = Nothing, _ssrShards = Nothing, _ssrOutcome = Nothing}


-- | If outcome is SPLITTING_HAPPENED, then this is a list of bundles into
-- which the source was split. Otherwise this field is ignored. This list
-- can be empty, which means the source represents an empty input.
ssrBundles :: Lens' SourceSplitResponse [DerivedSource]
ssrBundles
  = lens _ssrBundles (\ s a -> s{_ssrBundles = a}) .
      _Default
      . _Coerce

-- | DEPRECATED in favor of bundles.
ssrShards :: Lens' SourceSplitResponse [SourceSplitShard]
ssrShards
  = lens _ssrShards (\ s a -> s{_ssrShards = a}) .
      _Default
      . _Coerce

-- | Indicates whether splitting happened and produced a list of bundles. If
-- this is USE_CURRENT_SOURCE_AS_IS, the current source should be processed
-- \"as is\" without splitting. \"bundles\" is ignored in this case. If
-- this is SPLITTING_HAPPENED, then \"bundles\" contains a list of bundles
-- into which the source was split.
ssrOutcome :: Lens' SourceSplitResponse (Maybe SourceSplitResponseOutcome)
ssrOutcome
  = lens _ssrOutcome (\ s a -> s{_ssrOutcome = a})

instance FromJSON SourceSplitResponse where
        parseJSON
          = withObject "SourceSplitResponse"
              (\ o ->
                 SourceSplitResponse' <$>
                   (o .:? "bundles" .!= mempty) <*>
                     (o .:? "shards" .!= mempty)
                     <*> (o .:? "outcome"))

instance ToJSON SourceSplitResponse where
        toJSON SourceSplitResponse'{..}
          = object
              (catMaybes
                 [("bundles" .=) <$> _ssrBundles,
                  ("shards" .=) <$> _ssrShards,
                  ("outcome" .=) <$> _ssrOutcome])

-- | Metadata for a specific parameter.
--
-- /See:/ 'parameterMetadata' smart constructor.
data ParameterMetadata =
  ParameterMetadata'
    { _pmHelpText   :: !(Maybe Text)
    , _pmIsOptional :: !(Maybe Bool)
    , _pmName       :: !(Maybe Text)
    , _pmRegexes    :: !(Maybe [Text])
    , _pmLabel      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ParameterMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmHelpText'
--
-- * 'pmIsOptional'
--
-- * 'pmName'
--
-- * 'pmRegexes'
--
-- * 'pmLabel'
parameterMetadata
    :: ParameterMetadata
parameterMetadata =
  ParameterMetadata'
    { _pmHelpText = Nothing
    , _pmIsOptional = Nothing
    , _pmName = Nothing
    , _pmRegexes = Nothing
    , _pmLabel = Nothing
    }


-- | Required. The help text to display for the parameter.
pmHelpText :: Lens' ParameterMetadata (Maybe Text)
pmHelpText
  = lens _pmHelpText (\ s a -> s{_pmHelpText = a})

-- | Optional. Whether the parameter is optional. Defaults to false.
pmIsOptional :: Lens' ParameterMetadata (Maybe Bool)
pmIsOptional
  = lens _pmIsOptional (\ s a -> s{_pmIsOptional = a})

-- | Required. The name of the parameter.
pmName :: Lens' ParameterMetadata (Maybe Text)
pmName = lens _pmName (\ s a -> s{_pmName = a})

-- | Optional. Regexes that the parameter must match.
pmRegexes :: Lens' ParameterMetadata [Text]
pmRegexes
  = lens _pmRegexes (\ s a -> s{_pmRegexes = a}) .
      _Default
      . _Coerce

-- | Required. The label to display for the parameter.
pmLabel :: Lens' ParameterMetadata (Maybe Text)
pmLabel = lens _pmLabel (\ s a -> s{_pmLabel = a})

instance FromJSON ParameterMetadata where
        parseJSON
          = withObject "ParameterMetadata"
              (\ o ->
                 ParameterMetadata' <$>
                   (o .:? "helpText") <*> (o .:? "isOptional") <*>
                     (o .:? "name")
                     <*> (o .:? "regexes" .!= mempty)
                     <*> (o .:? "label"))

instance ToJSON ParameterMetadata where
        toJSON ParameterMetadata'{..}
          = object
              (catMaybes
                 [("helpText" .=) <$> _pmHelpText,
                  ("isOptional" .=) <$> _pmIsOptional,
                  ("name" .=) <$> _pmName,
                  ("regexes" .=) <$> _pmRegexes,
                  ("label" .=) <$> _pmLabel])

-- | Untranslated bag-of-bytes WorkProgressUpdateRequest from UnifiedWorker.
--
-- /See:/ 'reportWorkItemStatusRequestUnifiedWorkerRequest' smart constructor.
newtype ReportWorkItemStatusRequestUnifiedWorkerRequest =
  ReportWorkItemStatusRequestUnifiedWorkerRequest'
    { _rwisruwrAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportWorkItemStatusRequestUnifiedWorkerRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rwisruwrAddtional'
reportWorkItemStatusRequestUnifiedWorkerRequest
    :: HashMap Text JSONValue -- ^ 'rwisruwrAddtional'
    -> ReportWorkItemStatusRequestUnifiedWorkerRequest
reportWorkItemStatusRequestUnifiedWorkerRequest pRwisruwrAddtional_ =
  ReportWorkItemStatusRequestUnifiedWorkerRequest'
    {_rwisruwrAddtional = _Coerce # pRwisruwrAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
rwisruwrAddtional :: Lens' ReportWorkItemStatusRequestUnifiedWorkerRequest (HashMap Text JSONValue)
rwisruwrAddtional
  = lens _rwisruwrAddtional
      (\ s a -> s{_rwisruwrAddtional = a})
      . _Coerce

instance FromJSON
           ReportWorkItemStatusRequestUnifiedWorkerRequest
         where
        parseJSON
          = withObject
              "ReportWorkItemStatusRequestUnifiedWorkerRequest"
              (\ o ->
                 ReportWorkItemStatusRequestUnifiedWorkerRequest' <$>
                   (parseJSONObject o))

instance ToJSON
           ReportWorkItemStatusRequestUnifiedWorkerRequest
         where
        toJSON = toJSON . _rwisruwrAddtional

-- | A request to create a Cloud Dataflow job from a template.
--
-- /See:/ 'createJobFromTemplateRequest' smart constructor.
data CreateJobFromTemplateRequest =
  CreateJobFromTemplateRequest'
    { _cjftrLocation    :: !(Maybe Text)
    , _cjftrEnvironment :: !(Maybe RuntimeEnvironment)
    , _cjftrJobName     :: !(Maybe Text)
    , _cjftrGcsPath     :: !(Maybe Text)
    , _cjftrParameters  :: !(Maybe CreateJobFromTemplateRequestParameters)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateJobFromTemplateRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cjftrLocation'
--
-- * 'cjftrEnvironment'
--
-- * 'cjftrJobName'
--
-- * 'cjftrGcsPath'
--
-- * 'cjftrParameters'
createJobFromTemplateRequest
    :: CreateJobFromTemplateRequest
createJobFromTemplateRequest =
  CreateJobFromTemplateRequest'
    { _cjftrLocation = Nothing
    , _cjftrEnvironment = Nothing
    , _cjftrJobName = Nothing
    , _cjftrGcsPath = Nothing
    , _cjftrParameters = Nothing
    }


-- | The location to which to direct the request.
cjftrLocation :: Lens' CreateJobFromTemplateRequest (Maybe Text)
cjftrLocation
  = lens _cjftrLocation
      (\ s a -> s{_cjftrLocation = a})

-- | The runtime environment for the job.
cjftrEnvironment :: Lens' CreateJobFromTemplateRequest (Maybe RuntimeEnvironment)
cjftrEnvironment
  = lens _cjftrEnvironment
      (\ s a -> s{_cjftrEnvironment = a})

-- | Required. The job name to use for the created job.
cjftrJobName :: Lens' CreateJobFromTemplateRequest (Maybe Text)
cjftrJobName
  = lens _cjftrJobName (\ s a -> s{_cjftrJobName = a})

-- | Required. A Cloud Storage path to the template from which to create the
-- job. Must be a valid Cloud Storage URL, beginning with \`gs:\/\/\`.
cjftrGcsPath :: Lens' CreateJobFromTemplateRequest (Maybe Text)
cjftrGcsPath
  = lens _cjftrGcsPath (\ s a -> s{_cjftrGcsPath = a})

-- | The runtime parameters to pass to the job.
cjftrParameters :: Lens' CreateJobFromTemplateRequest (Maybe CreateJobFromTemplateRequestParameters)
cjftrParameters
  = lens _cjftrParameters
      (\ s a -> s{_cjftrParameters = a})

instance FromJSON CreateJobFromTemplateRequest where
        parseJSON
          = withObject "CreateJobFromTemplateRequest"
              (\ o ->
                 CreateJobFromTemplateRequest' <$>
                   (o .:? "location") <*> (o .:? "environment") <*>
                     (o .:? "jobName")
                     <*> (o .:? "gcsPath")
                     <*> (o .:? "parameters"))

instance ToJSON CreateJobFromTemplateRequest where
        toJSON CreateJobFromTemplateRequest'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _cjftrLocation,
                  ("environment" .=) <$> _cjftrEnvironment,
                  ("jobName" .=) <$> _cjftrJobName,
                  ("gcsPath" .=) <$> _cjftrGcsPath,
                  ("parameters" .=) <$> _cjftrParameters])

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

-- | Basic metadata about a counter.
--
-- /See:/ 'nameAndKind' smart constructor.
data NameAndKind =
  NameAndKind'
    { _nakKind :: !(Maybe NameAndKindKind)
    , _nakName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NameAndKind' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nakKind'
--
-- * 'nakName'
nameAndKind
    :: NameAndKind
nameAndKind = NameAndKind' {_nakKind = Nothing, _nakName = Nothing}


-- | Counter aggregation kind.
nakKind :: Lens' NameAndKind (Maybe NameAndKindKind)
nakKind = lens _nakKind (\ s a -> s{_nakKind = a})

-- | Name of the counter.
nakName :: Lens' NameAndKind (Maybe Text)
nakName = lens _nakName (\ s a -> s{_nakName = a})

instance FromJSON NameAndKind where
        parseJSON
          = withObject "NameAndKind"
              (\ o ->
                 NameAndKind' <$> (o .:? "kind") <*> (o .:? "name"))

instance ToJSON NameAndKind where
        toJSON NameAndKind'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _nakKind, ("name" .=) <$> _nakName])

-- | A metric value representing a list of integers.
--
-- /See:/ 'integerList' smart constructor.
newtype IntegerList =
  IntegerList'
    { _ilElements :: Maybe [SplitInt64]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IntegerList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilElements'
integerList
    :: IntegerList
integerList = IntegerList' {_ilElements = Nothing}


-- | Elements of the list.
ilElements :: Lens' IntegerList [SplitInt64]
ilElements
  = lens _ilElements (\ s a -> s{_ilElements = a}) .
      _Default
      . _Coerce

instance FromJSON IntegerList where
        parseJSON
          = withObject "IntegerList"
              (\ o ->
                 IntegerList' <$> (o .:? "elements" .!= mempty))

instance ToJSON IntegerList where
        toJSON IntegerList'{..}
          = object
              (catMaybes [("elements" .=) <$> _ilElements])

-- | WorkItem represents basic information about a WorkItem to be executed in
-- the cloud.
--
-- /See:/ 'workItem' smart constructor.
data WorkItem =
  WorkItem'
    { _wiJobId                    :: !(Maybe Text)
    , _wiReportStatusInterval     :: !(Maybe GDuration)
    , _wiShellTask                :: !(Maybe ShellTask)
    , _wiStreamingSetupTask       :: !(Maybe StreamingSetupTask)
    , _wiInitialReportIndex       :: !(Maybe (Textual Int64))
    , _wiMapTask                  :: !(Maybe MapTask)
    , _wiPackages                 :: !(Maybe [Package])
    , _wiStreamingComputationTask :: !(Maybe StreamingComputationTask)
    , _wiSourceOperationTask      :: !(Maybe SourceOperationRequest)
    , _wiId                       :: !(Maybe (Textual Int64))
    , _wiProjectId                :: !(Maybe Text)
    , _wiLeaseExpireTime          :: !(Maybe DateTime')
    , _wiConfiguration            :: !(Maybe Text)
    , _wiStreamingConfigTask      :: !(Maybe StreamingConfigTask)
    , _wiSeqMapTask               :: !(Maybe SeqMapTask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wiJobId'
--
-- * 'wiReportStatusInterval'
--
-- * 'wiShellTask'
--
-- * 'wiStreamingSetupTask'
--
-- * 'wiInitialReportIndex'
--
-- * 'wiMapTask'
--
-- * 'wiPackages'
--
-- * 'wiStreamingComputationTask'
--
-- * 'wiSourceOperationTask'
--
-- * 'wiId'
--
-- * 'wiProjectId'
--
-- * 'wiLeaseExpireTime'
--
-- * 'wiConfiguration'
--
-- * 'wiStreamingConfigTask'
--
-- * 'wiSeqMapTask'
workItem
    :: WorkItem
workItem =
  WorkItem'
    { _wiJobId = Nothing
    , _wiReportStatusInterval = Nothing
    , _wiShellTask = Nothing
    , _wiStreamingSetupTask = Nothing
    , _wiInitialReportIndex = Nothing
    , _wiMapTask = Nothing
    , _wiPackages = Nothing
    , _wiStreamingComputationTask = Nothing
    , _wiSourceOperationTask = Nothing
    , _wiId = Nothing
    , _wiProjectId = Nothing
    , _wiLeaseExpireTime = Nothing
    , _wiConfiguration = Nothing
    , _wiStreamingConfigTask = Nothing
    , _wiSeqMapTask = Nothing
    }


-- | Identifies the workflow job this WorkItem belongs to.
wiJobId :: Lens' WorkItem (Maybe Text)
wiJobId = lens _wiJobId (\ s a -> s{_wiJobId = a})

-- | Recommended reporting interval.
wiReportStatusInterval :: Lens' WorkItem (Maybe Scientific)
wiReportStatusInterval
  = lens _wiReportStatusInterval
      (\ s a -> s{_wiReportStatusInterval = a})
      . mapping _GDuration

-- | Additional information for ShellTask WorkItems.
wiShellTask :: Lens' WorkItem (Maybe ShellTask)
wiShellTask
  = lens _wiShellTask (\ s a -> s{_wiShellTask = a})

-- | Additional information for StreamingSetupTask WorkItems.
wiStreamingSetupTask :: Lens' WorkItem (Maybe StreamingSetupTask)
wiStreamingSetupTask
  = lens _wiStreamingSetupTask
      (\ s a -> s{_wiStreamingSetupTask = a})

-- | The initial index to use when reporting the status of the WorkItem.
wiInitialReportIndex :: Lens' WorkItem (Maybe Int64)
wiInitialReportIndex
  = lens _wiInitialReportIndex
      (\ s a -> s{_wiInitialReportIndex = a})
      . mapping _Coerce

-- | Additional information for MapTask WorkItems.
wiMapTask :: Lens' WorkItem (Maybe MapTask)
wiMapTask
  = lens _wiMapTask (\ s a -> s{_wiMapTask = a})

-- | Any required packages that need to be fetched in order to execute this
-- WorkItem.
wiPackages :: Lens' WorkItem [Package]
wiPackages
  = lens _wiPackages (\ s a -> s{_wiPackages = a}) .
      _Default
      . _Coerce

-- | Additional information for StreamingComputationTask WorkItems.
wiStreamingComputationTask :: Lens' WorkItem (Maybe StreamingComputationTask)
wiStreamingComputationTask
  = lens _wiStreamingComputationTask
      (\ s a -> s{_wiStreamingComputationTask = a})

-- | Additional information for source operation WorkItems.
wiSourceOperationTask :: Lens' WorkItem (Maybe SourceOperationRequest)
wiSourceOperationTask
  = lens _wiSourceOperationTask
      (\ s a -> s{_wiSourceOperationTask = a})

-- | Identifies this WorkItem.
wiId :: Lens' WorkItem (Maybe Int64)
wiId
  = lens _wiId (\ s a -> s{_wiId = a}) .
      mapping _Coerce

-- | Identifies the cloud project this WorkItem belongs to.
wiProjectId :: Lens' WorkItem (Maybe Text)
wiProjectId
  = lens _wiProjectId (\ s a -> s{_wiProjectId = a})

-- | Time when the lease on this Work will expire.
wiLeaseExpireTime :: Lens' WorkItem (Maybe UTCTime)
wiLeaseExpireTime
  = lens _wiLeaseExpireTime
      (\ s a -> s{_wiLeaseExpireTime = a})
      . mapping _DateTime

-- | Work item-specific configuration as an opaque blob.
wiConfiguration :: Lens' WorkItem (Maybe Text)
wiConfiguration
  = lens _wiConfiguration
      (\ s a -> s{_wiConfiguration = a})

-- | Additional information for StreamingConfigTask WorkItems.
wiStreamingConfigTask :: Lens' WorkItem (Maybe StreamingConfigTask)
wiStreamingConfigTask
  = lens _wiStreamingConfigTask
      (\ s a -> s{_wiStreamingConfigTask = a})

-- | Additional information for SeqMapTask WorkItems.
wiSeqMapTask :: Lens' WorkItem (Maybe SeqMapTask)
wiSeqMapTask
  = lens _wiSeqMapTask (\ s a -> s{_wiSeqMapTask = a})

instance FromJSON WorkItem where
        parseJSON
          = withObject "WorkItem"
              (\ o ->
                 WorkItem' <$>
                   (o .:? "jobId") <*> (o .:? "reportStatusInterval")
                     <*> (o .:? "shellTask")
                     <*> (o .:? "streamingSetupTask")
                     <*> (o .:? "initialReportIndex")
                     <*> (o .:? "mapTask")
                     <*> (o .:? "packages" .!= mempty)
                     <*> (o .:? "streamingComputationTask")
                     <*> (o .:? "sourceOperationTask")
                     <*> (o .:? "id")
                     <*> (o .:? "projectId")
                     <*> (o .:? "leaseExpireTime")
                     <*> (o .:? "configuration")
                     <*> (o .:? "streamingConfigTask")
                     <*> (o .:? "seqMapTask"))

instance ToJSON WorkItem where
        toJSON WorkItem'{..}
          = object
              (catMaybes
                 [("jobId" .=) <$> _wiJobId,
                  ("reportStatusInterval" .=) <$>
                    _wiReportStatusInterval,
                  ("shellTask" .=) <$> _wiShellTask,
                  ("streamingSetupTask" .=) <$> _wiStreamingSetupTask,
                  ("initialReportIndex" .=) <$> _wiInitialReportIndex,
                  ("mapTask" .=) <$> _wiMapTask,
                  ("packages" .=) <$> _wiPackages,
                  ("streamingComputationTask" .=) <$>
                    _wiStreamingComputationTask,
                  ("sourceOperationTask" .=) <$>
                    _wiSourceOperationTask,
                  ("id" .=) <$> _wiId,
                  ("projectId" .=) <$> _wiProjectId,
                  ("leaseExpireTime" .=) <$> _wiLeaseExpireTime,
                  ("configuration" .=) <$> _wiConfiguration,
                  ("streamingConfigTask" .=) <$>
                    _wiStreamingConfigTask,
                  ("seqMapTask" .=) <$> _wiSeqMapTask])

-- | WorkerHealthReport contains information about the health of a worker.
-- The VM should be identified by the labels attached to the WorkerMessage
-- that this health ping belongs to.
--
-- /See:/ 'workerHealthReport' smart constructor.
data WorkerHealthReport =
  WorkerHealthReport'
    { _whrVMIsHealthy    :: !(Maybe Bool)
    , _whrReportInterval :: !(Maybe GDuration)
    , _whrPods           :: !(Maybe [WorkerHealthReportPodsItem])
    , _whrVMStartupTime  :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkerHealthReport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'whrVMIsHealthy'
--
-- * 'whrReportInterval'
--
-- * 'whrPods'
--
-- * 'whrVMStartupTime'
workerHealthReport
    :: WorkerHealthReport
workerHealthReport =
  WorkerHealthReport'
    { _whrVMIsHealthy = Nothing
    , _whrReportInterval = Nothing
    , _whrPods = Nothing
    , _whrVMStartupTime = Nothing
    }


-- | Whether the VM is healthy.
whrVMIsHealthy :: Lens' WorkerHealthReport (Maybe Bool)
whrVMIsHealthy
  = lens _whrVMIsHealthy
      (\ s a -> s{_whrVMIsHealthy = a})

-- | The interval at which the worker is sending health reports. The default
-- value of 0 should be interpreted as the field is not being explicitly
-- set by the worker.
whrReportInterval :: Lens' WorkerHealthReport (Maybe Scientific)
whrReportInterval
  = lens _whrReportInterval
      (\ s a -> s{_whrReportInterval = a})
      . mapping _GDuration

-- | The pods running on the worker. See:
-- http:\/\/kubernetes.io\/v1.1\/docs\/api-reference\/v1\/definitions.html#_v1_pod
-- This field is used by the worker to send the status of the indvidual
-- containers running on each worker.
whrPods :: Lens' WorkerHealthReport [WorkerHealthReportPodsItem]
whrPods
  = lens _whrPods (\ s a -> s{_whrPods = a}) . _Default
      . _Coerce

-- | The time the VM was booted.
whrVMStartupTime :: Lens' WorkerHealthReport (Maybe UTCTime)
whrVMStartupTime
  = lens _whrVMStartupTime
      (\ s a -> s{_whrVMStartupTime = a})
      . mapping _DateTime

instance FromJSON WorkerHealthReport where
        parseJSON
          = withObject "WorkerHealthReport"
              (\ o ->
                 WorkerHealthReport' <$>
                   (o .:? "vmIsHealthy") <*> (o .:? "reportInterval")
                     <*> (o .:? "pods" .!= mempty)
                     <*> (o .:? "vmStartupTime"))

instance ToJSON WorkerHealthReport where
        toJSON WorkerHealthReport'{..}
          = object
              (catMaybes
                 [("vmIsHealthy" .=) <$> _whrVMIsHealthy,
                  ("reportInterval" .=) <$> _whrReportInterval,
                  ("pods" .=) <$> _whrPods,
                  ("vmStartupTime" .=) <$> _whrVMStartupTime])

-- | Represents a snapshot of a job.
--
-- /See:/ 'snapshot' smart constructor.
data Snapshot =
  Snapshot'
    { _sCreationTime :: !(Maybe DateTime')
    , _sTtl          :: !(Maybe GDuration)
    , _sSourceJobId  :: !(Maybe Text)
    , _sId           :: !(Maybe Text)
    , _sProjectId    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Snapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sCreationTime'
--
-- * 'sTtl'
--
-- * 'sSourceJobId'
--
-- * 'sId'
--
-- * 'sProjectId'
snapshot
    :: Snapshot
snapshot =
  Snapshot'
    { _sCreationTime = Nothing
    , _sTtl = Nothing
    , _sSourceJobId = Nothing
    , _sId = Nothing
    , _sProjectId = Nothing
    }


-- | The time this snapshot was created.
sCreationTime :: Lens' Snapshot (Maybe UTCTime)
sCreationTime
  = lens _sCreationTime
      (\ s a -> s{_sCreationTime = a})
      . mapping _DateTime

-- | The time after which this snapshot will be automatically deleted.
sTtl :: Lens' Snapshot (Maybe Scientific)
sTtl
  = lens _sTtl (\ s a -> s{_sTtl = a}) .
      mapping _GDuration

-- | The job this snapshot was created from.
sSourceJobId :: Lens' Snapshot (Maybe Text)
sSourceJobId
  = lens _sSourceJobId (\ s a -> s{_sSourceJobId = a})

-- | The unique ID of this snapshot.
sId :: Lens' Snapshot (Maybe Text)
sId = lens _sId (\ s a -> s{_sId = a})

-- | The project this snapshot belongs to.
sProjectId :: Lens' Snapshot (Maybe Text)
sProjectId
  = lens _sProjectId (\ s a -> s{_sProjectId = a})

instance FromJSON Snapshot where
        parseJSON
          = withObject "Snapshot"
              (\ o ->
                 Snapshot' <$>
                   (o .:? "creationTime") <*> (o .:? "ttl") <*>
                     (o .:? "sourceJobId")
                     <*> (o .:? "id")
                     <*> (o .:? "projectId"))

instance ToJSON Snapshot where
        toJSON Snapshot'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _sCreationTime,
                  ("ttl" .=) <$> _sTtl,
                  ("sourceJobId" .=) <$> _sSourceJobId,
                  ("id" .=) <$> _sId,
                  ("projectId" .=) <$> _sProjectId])

-- | Hints for splitting a Source into bundles (parts for parallel
-- processing) using SourceSplitRequest.
--
-- /See:/ 'sourceSplitOptions' smart constructor.
data SourceSplitOptions =
  SourceSplitOptions'
    { _ssoDesiredShardSizeBytes  :: !(Maybe (Textual Int64))
    , _ssoDesiredBundleSizeBytes :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceSplitOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssoDesiredShardSizeBytes'
--
-- * 'ssoDesiredBundleSizeBytes'
sourceSplitOptions
    :: SourceSplitOptions
sourceSplitOptions =
  SourceSplitOptions'
    {_ssoDesiredShardSizeBytes = Nothing, _ssoDesiredBundleSizeBytes = Nothing}


-- | DEPRECATED in favor of desired_bundle_size_bytes.
ssoDesiredShardSizeBytes :: Lens' SourceSplitOptions (Maybe Int64)
ssoDesiredShardSizeBytes
  = lens _ssoDesiredShardSizeBytes
      (\ s a -> s{_ssoDesiredShardSizeBytes = a})
      . mapping _Coerce

-- | The source should be split into a set of bundles where the estimated
-- size of each is approximately this many bytes.
ssoDesiredBundleSizeBytes :: Lens' SourceSplitOptions (Maybe Int64)
ssoDesiredBundleSizeBytes
  = lens _ssoDesiredBundleSizeBytes
      (\ s a -> s{_ssoDesiredBundleSizeBytes = a})
      . mapping _Coerce

instance FromJSON SourceSplitOptions where
        parseJSON
          = withObject "SourceSplitOptions"
              (\ o ->
                 SourceSplitOptions' <$>
                   (o .:? "desiredShardSizeBytes") <*>
                     (o .:? "desiredBundleSizeBytes"))

instance ToJSON SourceSplitOptions where
        toJSON SourceSplitOptions'{..}
          = object
              (catMaybes
                 [("desiredShardSizeBytes" .=) <$>
                    _ssoDesiredShardSizeBytes,
                  ("desiredBundleSizeBytes" .=) <$>
                    _ssoDesiredBundleSizeBytes])

-- | Metadata to set on the Google Compute Engine VMs.
--
-- /See:/ 'workerPoolMetadata' smart constructor.
newtype WorkerPoolMetadata =
  WorkerPoolMetadata'
    { _wpmAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkerPoolMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wpmAddtional'
workerPoolMetadata
    :: HashMap Text Text -- ^ 'wpmAddtional'
    -> WorkerPoolMetadata
workerPoolMetadata pWpmAddtional_ =
  WorkerPoolMetadata' {_wpmAddtional = _Coerce # pWpmAddtional_}


wpmAddtional :: Lens' WorkerPoolMetadata (HashMap Text Text)
wpmAddtional
  = lens _wpmAddtional (\ s a -> s{_wpmAddtional = a})
      . _Coerce

instance FromJSON WorkerPoolMetadata where
        parseJSON
          = withObject "WorkerPoolMetadata"
              (\ o -> WorkerPoolMetadata' <$> (parseJSONObject o))

instance ToJSON WorkerPoolMetadata where
        toJSON = toJSON . _wpmAddtional

-- | Settings for WorkerPool autoscaling.
--
-- /See:/ 'autoscalingSettings' smart constructor.
data AutoscalingSettings =
  AutoscalingSettings'
    { _asMaxNumWorkers :: !(Maybe (Textual Int32))
    , _asAlgorithm     :: !(Maybe AutoscalingSettingsAlgorithm)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AutoscalingSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asMaxNumWorkers'
--
-- * 'asAlgorithm'
autoscalingSettings
    :: AutoscalingSettings
autoscalingSettings =
  AutoscalingSettings' {_asMaxNumWorkers = Nothing, _asAlgorithm = Nothing}


-- | The maximum number of workers to cap scaling at.
asMaxNumWorkers :: Lens' AutoscalingSettings (Maybe Int32)
asMaxNumWorkers
  = lens _asMaxNumWorkers
      (\ s a -> s{_asMaxNumWorkers = a})
      . mapping _Coerce

-- | The algorithm to use for autoscaling.
asAlgorithm :: Lens' AutoscalingSettings (Maybe AutoscalingSettingsAlgorithm)
asAlgorithm
  = lens _asAlgorithm (\ s a -> s{_asAlgorithm = a})

instance FromJSON AutoscalingSettings where
        parseJSON
          = withObject "AutoscalingSettings"
              (\ o ->
                 AutoscalingSettings' <$>
                   (o .:? "maxNumWorkers") <*> (o .:? "algorithm"))

instance ToJSON AutoscalingSettings where
        toJSON AutoscalingSettings'{..}
          = object
              (catMaybes
                 [("maxNumWorkers" .=) <$> _asMaxNumWorkers,
                  ("algorithm" .=) <$> _asAlgorithm])

-- | Contains information about how a particular google.dataflow.v1beta3.Step
-- will be executed.
--
-- /See:/ 'jobExecutionStageInfo' smart constructor.
newtype JobExecutionStageInfo =
  JobExecutionStageInfo'
    { _jesiStepName :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobExecutionStageInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jesiStepName'
jobExecutionStageInfo
    :: JobExecutionStageInfo
jobExecutionStageInfo = JobExecutionStageInfo' {_jesiStepName = Nothing}


-- | The steps associated with the execution stage. Note that stages may have
-- several steps, and that a given step might be run by more than one
-- stage.
jesiStepName :: Lens' JobExecutionStageInfo [Text]
jesiStepName
  = lens _jesiStepName (\ s a -> s{_jesiStepName = a})
      . _Default
      . _Coerce

instance FromJSON JobExecutionStageInfo where
        parseJSON
          = withObject "JobExecutionStageInfo"
              (\ o ->
                 JobExecutionStageInfo' <$>
                   (o .:? "stepName" .!= mempty))

instance ToJSON JobExecutionStageInfo where
        toJSON JobExecutionStageInfo'{..}
          = object
              (catMaybes [("stepName" .=) <$> _jesiStepName])

-- | An output of an instruction.
--
-- /See:/ 'instructionOutput' smart constructor.
data InstructionOutput =
  InstructionOutput'
    { _ioOnlyCountValueBytes :: !(Maybe Bool)
    , _ioCodec               :: !(Maybe InstructionOutputCodec)
    , _ioName                :: !(Maybe Text)
    , _ioSystemName          :: !(Maybe Text)
    , _ioOriginalName        :: !(Maybe Text)
    , _ioOnlyCountKeyBytes   :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstructionOutput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ioOnlyCountValueBytes'
--
-- * 'ioCodec'
--
-- * 'ioName'
--
-- * 'ioSystemName'
--
-- * 'ioOriginalName'
--
-- * 'ioOnlyCountKeyBytes'
instructionOutput
    :: InstructionOutput
instructionOutput =
  InstructionOutput'
    { _ioOnlyCountValueBytes = Nothing
    , _ioCodec = Nothing
    , _ioName = Nothing
    , _ioSystemName = Nothing
    , _ioOriginalName = Nothing
    , _ioOnlyCountKeyBytes = Nothing
    }


-- | For system-generated byte and mean byte metrics, certain instructions
-- should only report the value size.
ioOnlyCountValueBytes :: Lens' InstructionOutput (Maybe Bool)
ioOnlyCountValueBytes
  = lens _ioOnlyCountValueBytes
      (\ s a -> s{_ioOnlyCountValueBytes = a})

-- | The codec to use to encode data being written via this output.
ioCodec :: Lens' InstructionOutput (Maybe InstructionOutputCodec)
ioCodec = lens _ioCodec (\ s a -> s{_ioCodec = a})

-- | The user-provided name of this output.
ioName :: Lens' InstructionOutput (Maybe Text)
ioName = lens _ioName (\ s a -> s{_ioName = a})

-- | System-defined name of this output. Unique across the workflow.
ioSystemName :: Lens' InstructionOutput (Maybe Text)
ioSystemName
  = lens _ioSystemName (\ s a -> s{_ioSystemName = a})

-- | System-defined name for this output in the original workflow graph.
-- Outputs that do not contribute to an original instruction do not set
-- this.
ioOriginalName :: Lens' InstructionOutput (Maybe Text)
ioOriginalName
  = lens _ioOriginalName
      (\ s a -> s{_ioOriginalName = a})

-- | For system-generated byte and mean byte metrics, certain instructions
-- should only report the key size.
ioOnlyCountKeyBytes :: Lens' InstructionOutput (Maybe Bool)
ioOnlyCountKeyBytes
  = lens _ioOnlyCountKeyBytes
      (\ s a -> s{_ioOnlyCountKeyBytes = a})

instance FromJSON InstructionOutput where
        parseJSON
          = withObject "InstructionOutput"
              (\ o ->
                 InstructionOutput' <$>
                   (o .:? "onlyCountValueBytes") <*> (o .:? "codec") <*>
                     (o .:? "name")
                     <*> (o .:? "systemName")
                     <*> (o .:? "originalName")
                     <*> (o .:? "onlyCountKeyBytes"))

instance ToJSON InstructionOutput where
        toJSON InstructionOutput'{..}
          = object
              (catMaybes
                 [("onlyCountValueBytes" .=) <$>
                    _ioOnlyCountValueBytes,
                  ("codec" .=) <$> _ioCodec, ("name" .=) <$> _ioName,
                  ("systemName" .=) <$> _ioSystemName,
                  ("originalName" .=) <$> _ioOriginalName,
                  ("onlyCountKeyBytes" .=) <$> _ioOnlyCountKeyBytes])

-- | A metric value representing temporal values of a variable.
--
-- /See:/ 'integerGauge' smart constructor.
data IntegerGauge =
  IntegerGauge'
    { _igValue     :: !(Maybe SplitInt64)
    , _igTimestamp :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IntegerGauge' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igValue'
--
-- * 'igTimestamp'
integerGauge
    :: IntegerGauge
integerGauge = IntegerGauge' {_igValue = Nothing, _igTimestamp = Nothing}


-- | The value of the variable represented by this gauge.
igValue :: Lens' IntegerGauge (Maybe SplitInt64)
igValue = lens _igValue (\ s a -> s{_igValue = a})

-- | The time at which this value was measured. Measured as msecs from epoch.
igTimestamp :: Lens' IntegerGauge (Maybe UTCTime)
igTimestamp
  = lens _igTimestamp (\ s a -> s{_igTimestamp = a}) .
      mapping _DateTime

instance FromJSON IntegerGauge where
        parseJSON
          = withObject "IntegerGauge"
              (\ o ->
                 IntegerGauge' <$>
                   (o .:? "value") <*> (o .:? "timestamp"))

instance ToJSON IntegerGauge where
        toJSON IntegerGauge'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _igValue,
                  ("timestamp" .=) <$> _igTimestamp])

-- | Parameters to provide to the template being launched.
--
-- /See:/ 'launchTemplateParameters' smart constructor.
data LaunchTemplateParameters =
  LaunchTemplateParameters'
    { _ltpEnvironment :: !(Maybe RuntimeEnvironment)
    , _ltpJobName     :: !(Maybe Text)
    , _ltpParameters  :: !(Maybe LaunchTemplateParametersParameters)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LaunchTemplateParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltpEnvironment'
--
-- * 'ltpJobName'
--
-- * 'ltpParameters'
launchTemplateParameters
    :: LaunchTemplateParameters
launchTemplateParameters =
  LaunchTemplateParameters'
    {_ltpEnvironment = Nothing, _ltpJobName = Nothing, _ltpParameters = Nothing}


-- | The runtime environment for the job.
ltpEnvironment :: Lens' LaunchTemplateParameters (Maybe RuntimeEnvironment)
ltpEnvironment
  = lens _ltpEnvironment
      (\ s a -> s{_ltpEnvironment = a})

-- | Required. The job name to use for the created job.
ltpJobName :: Lens' LaunchTemplateParameters (Maybe Text)
ltpJobName
  = lens _ltpJobName (\ s a -> s{_ltpJobName = a})

-- | The runtime parameters to pass to the job.
ltpParameters :: Lens' LaunchTemplateParameters (Maybe LaunchTemplateParametersParameters)
ltpParameters
  = lens _ltpParameters
      (\ s a -> s{_ltpParameters = a})

instance FromJSON LaunchTemplateParameters where
        parseJSON
          = withObject "LaunchTemplateParameters"
              (\ o ->
                 LaunchTemplateParameters' <$>
                   (o .:? "environment") <*> (o .:? "jobName") <*>
                     (o .:? "parameters"))

instance ToJSON LaunchTemplateParameters where
        toJSON LaunchTemplateParameters'{..}
          = object
              (catMaybes
                 [("environment" .=) <$> _ltpEnvironment,
                  ("jobName" .=) <$> _ltpJobName,
                  ("parameters" .=) <$> _ltpParameters])

-- | Request to report the status of WorkItems.
--
-- /See:/ 'reportWorkItemStatusRequest' smart constructor.
data ReportWorkItemStatusRequest =
  ReportWorkItemStatusRequest'
    { _rwisrCurrentWorkerTime    :: !(Maybe DateTime')
    , _rwisrLocation             :: !(Maybe Text)
    , _rwisrUnifiedWorkerRequest :: !(Maybe ReportWorkItemStatusRequestUnifiedWorkerRequest)
    , _rwisrWorkItemStatuses     :: !(Maybe [WorkItemStatus])
    , _rwisrWorkerId             :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportWorkItemStatusRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rwisrCurrentWorkerTime'
--
-- * 'rwisrLocation'
--
-- * 'rwisrUnifiedWorkerRequest'
--
-- * 'rwisrWorkItemStatuses'
--
-- * 'rwisrWorkerId'
reportWorkItemStatusRequest
    :: ReportWorkItemStatusRequest
reportWorkItemStatusRequest =
  ReportWorkItemStatusRequest'
    { _rwisrCurrentWorkerTime = Nothing
    , _rwisrLocation = Nothing
    , _rwisrUnifiedWorkerRequest = Nothing
    , _rwisrWorkItemStatuses = Nothing
    , _rwisrWorkerId = Nothing
    }


-- | The current timestamp at the worker.
rwisrCurrentWorkerTime :: Lens' ReportWorkItemStatusRequest (Maybe UTCTime)
rwisrCurrentWorkerTime
  = lens _rwisrCurrentWorkerTime
      (\ s a -> s{_rwisrCurrentWorkerTime = a})
      . mapping _DateTime

-- | The location which contains the WorkItem\'s job.
rwisrLocation :: Lens' ReportWorkItemStatusRequest (Maybe Text)
rwisrLocation
  = lens _rwisrLocation
      (\ s a -> s{_rwisrLocation = a})

-- | Untranslated bag-of-bytes WorkProgressUpdateRequest from UnifiedWorker.
rwisrUnifiedWorkerRequest :: Lens' ReportWorkItemStatusRequest (Maybe ReportWorkItemStatusRequestUnifiedWorkerRequest)
rwisrUnifiedWorkerRequest
  = lens _rwisrUnifiedWorkerRequest
      (\ s a -> s{_rwisrUnifiedWorkerRequest = a})

-- | The order is unimportant, except that the order of the
-- WorkItemServiceState messages in the ReportWorkItemStatusResponse
-- corresponds to the order of WorkItemStatus messages here.
rwisrWorkItemStatuses :: Lens' ReportWorkItemStatusRequest [WorkItemStatus]
rwisrWorkItemStatuses
  = lens _rwisrWorkItemStatuses
      (\ s a -> s{_rwisrWorkItemStatuses = a})
      . _Default
      . _Coerce

-- | The ID of the worker reporting the WorkItem status. If this does not
-- match the ID of the worker which the Dataflow service believes currently
-- has the lease on the WorkItem, the report will be dropped (with an error
-- response).
rwisrWorkerId :: Lens' ReportWorkItemStatusRequest (Maybe Text)
rwisrWorkerId
  = lens _rwisrWorkerId
      (\ s a -> s{_rwisrWorkerId = a})

instance FromJSON ReportWorkItemStatusRequest where
        parseJSON
          = withObject "ReportWorkItemStatusRequest"
              (\ o ->
                 ReportWorkItemStatusRequest' <$>
                   (o .:? "currentWorkerTime") <*> (o .:? "location")
                     <*> (o .:? "unifiedWorkerRequest")
                     <*> (o .:? "workItemStatuses" .!= mempty)
                     <*> (o .:? "workerId"))

instance ToJSON ReportWorkItemStatusRequest where
        toJSON ReportWorkItemStatusRequest'{..}
          = object
              (catMaybes
                 [("currentWorkerTime" .=) <$>
                    _rwisrCurrentWorkerTime,
                  ("location" .=) <$> _rwisrLocation,
                  ("unifiedWorkerRequest" .=) <$>
                    _rwisrUnifiedWorkerRequest,
                  ("workItemStatuses" .=) <$> _rwisrWorkItemStatuses,
                  ("workerId" .=) <$> _rwisrWorkerId])

-- | A structure describing which components and their versions of the
-- service are required in order to run the job.
--
-- /See:/ 'environmentVersion' smart constructor.
newtype EnvironmentVersion =
  EnvironmentVersion'
    { _evAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnvironmentVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'evAddtional'
environmentVersion
    :: HashMap Text JSONValue -- ^ 'evAddtional'
    -> EnvironmentVersion
environmentVersion pEvAddtional_ =
  EnvironmentVersion' {_evAddtional = _Coerce # pEvAddtional_}


-- | Properties of the object.
evAddtional :: Lens' EnvironmentVersion (HashMap Text JSONValue)
evAddtional
  = lens _evAddtional (\ s a -> s{_evAddtional = a}) .
      _Coerce

instance FromJSON EnvironmentVersion where
        parseJSON
          = withObject "EnvironmentVersion"
              (\ o -> EnvironmentVersion' <$> (parseJSONObject o))

instance ToJSON EnvironmentVersion where
        toJSON = toJSON . _evAddtional

-- | Streaming appliance snapshot configuration.
--
-- /See:/ 'streamingApplianceSnapshotConfig' smart constructor.
data StreamingApplianceSnapshotConfig =
  StreamingApplianceSnapshotConfig'
    { _sascImportStateEndpoint :: !(Maybe Text)
    , _sascSnapshotId          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StreamingApplianceSnapshotConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sascImportStateEndpoint'
--
-- * 'sascSnapshotId'
streamingApplianceSnapshotConfig
    :: StreamingApplianceSnapshotConfig
streamingApplianceSnapshotConfig =
  StreamingApplianceSnapshotConfig'
    {_sascImportStateEndpoint = Nothing, _sascSnapshotId = Nothing}


-- | Indicates which endpoint is used to import appliance state.
sascImportStateEndpoint :: Lens' StreamingApplianceSnapshotConfig (Maybe Text)
sascImportStateEndpoint
  = lens _sascImportStateEndpoint
      (\ s a -> s{_sascImportStateEndpoint = a})

-- | If set, indicates the snapshot id for the snapshot being performed.
sascSnapshotId :: Lens' StreamingApplianceSnapshotConfig (Maybe Text)
sascSnapshotId
  = lens _sascSnapshotId
      (\ s a -> s{_sascSnapshotId = a})

instance FromJSON StreamingApplianceSnapshotConfig
         where
        parseJSON
          = withObject "StreamingApplianceSnapshotConfig"
              (\ o ->
                 StreamingApplianceSnapshotConfig' <$>
                   (o .:? "importStateEndpoint") <*>
                     (o .:? "snapshotId"))

instance ToJSON StreamingApplianceSnapshotConfig
         where
        toJSON StreamingApplianceSnapshotConfig'{..}
          = object
              (catMaybes
                 [("importStateEndpoint" .=) <$>
                    _sascImportStateEndpoint,
                  ("snapshotId" .=) <$> _sascSnapshotId])

-- | A sink that records can be encoded and written to.
--
-- /See:/ 'sink' smart constructor.
data Sink =
  Sink'
    { _sCodec :: !(Maybe SinkCodec)
    , _sSpec  :: !(Maybe SinkSpec)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Sink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sCodec'
--
-- * 'sSpec'
sink
    :: Sink
sink = Sink' {_sCodec = Nothing, _sSpec = Nothing}


-- | The codec to use to encode data written to the sink.
sCodec :: Lens' Sink (Maybe SinkCodec)
sCodec = lens _sCodec (\ s a -> s{_sCodec = a})

-- | The sink to write to, plus its parameters.
sSpec :: Lens' Sink (Maybe SinkSpec)
sSpec = lens _sSpec (\ s a -> s{_sSpec = a})

instance FromJSON Sink where
        parseJSON
          = withObject "Sink"
              (\ o -> Sink' <$> (o .:? "codec") <*> (o .:? "spec"))

instance ToJSON Sink where
        toJSON Sink'{..}
          = object
              (catMaybes
                 [("codec" .=) <$> _sCodec, ("spec" .=) <$> _sSpec])

-- | A metric value representing a list of strings.
--
-- /See:/ 'stringList' smart constructor.
newtype StringList =
  StringList'
    { _slElements :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StringList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slElements'
stringList
    :: StringList
stringList = StringList' {_slElements = Nothing}


-- | Elements of the list.
slElements :: Lens' StringList [Text]
slElements
  = lens _slElements (\ s a -> s{_slElements = a}) .
      _Default
      . _Coerce

instance FromJSON StringList where
        parseJSON
          = withObject "StringList"
              (\ o ->
                 StringList' <$> (o .:? "elements" .!= mempty))

instance ToJSON StringList where
        toJSON StringList'{..}
          = object
              (catMaybes [("elements" .=) <$> _slElements])

-- | WorkerHealthReportResponse contains information returned to the worker
-- in response to a health ping.
--
-- /See:/ 'workerHealthReportResponse' smart constructor.
newtype WorkerHealthReportResponse =
  WorkerHealthReportResponse'
    { _whrrReportInterval :: Maybe GDuration
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkerHealthReportResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'whrrReportInterval'
workerHealthReportResponse
    :: WorkerHealthReportResponse
workerHealthReportResponse =
  WorkerHealthReportResponse' {_whrrReportInterval = Nothing}


-- | A positive value indicates the worker should change its reporting
-- interval to the specified value. The default value of zero means no
-- change in report rate is requested by the server.
whrrReportInterval :: Lens' WorkerHealthReportResponse (Maybe Scientific)
whrrReportInterval
  = lens _whrrReportInterval
      (\ s a -> s{_whrrReportInterval = a})
      . mapping _GDuration

instance FromJSON WorkerHealthReportResponse where
        parseJSON
          = withObject "WorkerHealthReportResponse"
              (\ o ->
                 WorkerHealthReportResponse' <$>
                   (o .:? "reportInterval"))

instance ToJSON WorkerHealthReportResponse where
        toJSON WorkerHealthReportResponse'{..}
          = object
              (catMaybes
                 [("reportInterval" .=) <$> _whrrReportInterval])

-- | Data provided with a pipeline or transform to provide descriptive info.
--
-- /See:/ 'displayData' smart constructor.
data DisplayData =
  DisplayData'
    { _ddDurationValue  :: !(Maybe GDuration)
    , _ddBoolValue      :: !(Maybe Bool)
    , _ddTimestampValue :: !(Maybe DateTime')
    , _ddURL            :: !(Maybe Text)
    , _ddNamespace      :: !(Maybe Text)
    , _ddJavaClassValue :: !(Maybe Text)
    , _ddShortStrValue  :: !(Maybe Text)
    , _ddKey            :: !(Maybe Text)
    , _ddInt64Value     :: !(Maybe (Textual Int64))
    , _ddFloatValue     :: !(Maybe (Textual Double))
    , _ddStrValue       :: !(Maybe Text)
    , _ddLabel          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DisplayData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddDurationValue'
--
-- * 'ddBoolValue'
--
-- * 'ddTimestampValue'
--
-- * 'ddURL'
--
-- * 'ddNamespace'
--
-- * 'ddJavaClassValue'
--
-- * 'ddShortStrValue'
--
-- * 'ddKey'
--
-- * 'ddInt64Value'
--
-- * 'ddFloatValue'
--
-- * 'ddStrValue'
--
-- * 'ddLabel'
displayData
    :: DisplayData
displayData =
  DisplayData'
    { _ddDurationValue = Nothing
    , _ddBoolValue = Nothing
    , _ddTimestampValue = Nothing
    , _ddURL = Nothing
    , _ddNamespace = Nothing
    , _ddJavaClassValue = Nothing
    , _ddShortStrValue = Nothing
    , _ddKey = Nothing
    , _ddInt64Value = Nothing
    , _ddFloatValue = Nothing
    , _ddStrValue = Nothing
    , _ddLabel = Nothing
    }


-- | Contains value if the data is of duration type.
ddDurationValue :: Lens' DisplayData (Maybe Scientific)
ddDurationValue
  = lens _ddDurationValue
      (\ s a -> s{_ddDurationValue = a})
      . mapping _GDuration

-- | Contains value if the data is of a boolean type.
ddBoolValue :: Lens' DisplayData (Maybe Bool)
ddBoolValue
  = lens _ddBoolValue (\ s a -> s{_ddBoolValue = a})

-- | Contains value if the data is of timestamp type.
ddTimestampValue :: Lens' DisplayData (Maybe UTCTime)
ddTimestampValue
  = lens _ddTimestampValue
      (\ s a -> s{_ddTimestampValue = a})
      . mapping _DateTime

-- | An optional full URL.
ddURL :: Lens' DisplayData (Maybe Text)
ddURL = lens _ddURL (\ s a -> s{_ddURL = a})

-- | The namespace for the key. This is usually a class name or programming
-- language namespace (i.e. python module) which defines the display data.
-- This allows a dax monitoring system to specially handle the data and
-- perform custom rendering.
ddNamespace :: Lens' DisplayData (Maybe Text)
ddNamespace
  = lens _ddNamespace (\ s a -> s{_ddNamespace = a})

-- | Contains value if the data is of java class type.
ddJavaClassValue :: Lens' DisplayData (Maybe Text)
ddJavaClassValue
  = lens _ddJavaClassValue
      (\ s a -> s{_ddJavaClassValue = a})

-- | A possible additional shorter value to display. For example a
-- java_class_name_value of com.mypackage.MyDoFn will be stored with MyDoFn
-- as the short_str_value and com.mypackage.MyDoFn as the java_class_name
-- value. short_str_value can be displayed and java_class_name_value will
-- be displayed as a tooltip.
ddShortStrValue :: Lens' DisplayData (Maybe Text)
ddShortStrValue
  = lens _ddShortStrValue
      (\ s a -> s{_ddShortStrValue = a})

-- | The key identifying the display data. This is intended to be used as a
-- label for the display data when viewed in a dax monitoring system.
ddKey :: Lens' DisplayData (Maybe Text)
ddKey = lens _ddKey (\ s a -> s{_ddKey = a})

-- | Contains value if the data is of int64 type.
ddInt64Value :: Lens' DisplayData (Maybe Int64)
ddInt64Value
  = lens _ddInt64Value (\ s a -> s{_ddInt64Value = a})
      . mapping _Coerce

-- | Contains value if the data is of float type.
ddFloatValue :: Lens' DisplayData (Maybe Double)
ddFloatValue
  = lens _ddFloatValue (\ s a -> s{_ddFloatValue = a})
      . mapping _Coerce

-- | Contains value if the data is of string type.
ddStrValue :: Lens' DisplayData (Maybe Text)
ddStrValue
  = lens _ddStrValue (\ s a -> s{_ddStrValue = a})

-- | An optional label to display in a dax UI for the element.
ddLabel :: Lens' DisplayData (Maybe Text)
ddLabel = lens _ddLabel (\ s a -> s{_ddLabel = a})

instance FromJSON DisplayData where
        parseJSON
          = withObject "DisplayData"
              (\ o ->
                 DisplayData' <$>
                   (o .:? "durationValue") <*> (o .:? "boolValue") <*>
                     (o .:? "timestampValue")
                     <*> (o .:? "url")
                     <*> (o .:? "namespace")
                     <*> (o .:? "javaClassValue")
                     <*> (o .:? "shortStrValue")
                     <*> (o .:? "key")
                     <*> (o .:? "int64Value")
                     <*> (o .:? "floatValue")
                     <*> (o .:? "strValue")
                     <*> (o .:? "label"))

instance ToJSON DisplayData where
        toJSON DisplayData'{..}
          = object
              (catMaybes
                 [("durationValue" .=) <$> _ddDurationValue,
                  ("boolValue" .=) <$> _ddBoolValue,
                  ("timestampValue" .=) <$> _ddTimestampValue,
                  ("url" .=) <$> _ddURL,
                  ("namespace" .=) <$> _ddNamespace,
                  ("javaClassValue" .=) <$> _ddJavaClassValue,
                  ("shortStrValue" .=) <$> _ddShortStrValue,
                  ("key" .=) <$> _ddKey,
                  ("int64Value" .=) <$> _ddInt64Value,
                  ("floatValue" .=) <$> _ddFloatValue,
                  ("strValue" .=) <$> _ddStrValue,
                  ("label" .=) <$> _ddLabel])

-- | Response to a send capture request. nothing
--
-- /See:/ 'sendDebugCaptureResponse' smart constructor.
data SendDebugCaptureResponse =
  SendDebugCaptureResponse'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SendDebugCaptureResponse' with the minimum fields required to make a request.
--
sendDebugCaptureResponse
    :: SendDebugCaptureResponse
sendDebugCaptureResponse = SendDebugCaptureResponse'


instance FromJSON SendDebugCaptureResponse where
        parseJSON
          = withObject "SendDebugCaptureResponse"
              (\ o -> pure SendDebugCaptureResponse')

instance ToJSON SendDebugCaptureResponse where
        toJSON = const emptyObject

-- | A rich message format, including a human readable string, a key for
-- identifying the message, and structured data associated with the message
-- for programmatic consumption.
--
-- /See:/ 'structuredMessage' smart constructor.
data StructuredMessage =
  StructuredMessage'
    { _smMessageText :: !(Maybe Text)
    , _smMessageKey  :: !(Maybe Text)
    , _smParameters  :: !(Maybe [Parameter])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StructuredMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smMessageText'
--
-- * 'smMessageKey'
--
-- * 'smParameters'
structuredMessage
    :: StructuredMessage
structuredMessage =
  StructuredMessage'
    {_smMessageText = Nothing, _smMessageKey = Nothing, _smParameters = Nothing}


-- | Human-readable version of message.
smMessageText :: Lens' StructuredMessage (Maybe Text)
smMessageText
  = lens _smMessageText
      (\ s a -> s{_smMessageText = a})

-- | Idenfier for this message type. Used by external systems to
-- internationalize or personalize message.
smMessageKey :: Lens' StructuredMessage (Maybe Text)
smMessageKey
  = lens _smMessageKey (\ s a -> s{_smMessageKey = a})

-- | The structured data associated with this message.
smParameters :: Lens' StructuredMessage [Parameter]
smParameters
  = lens _smParameters (\ s a -> s{_smParameters = a})
      . _Default
      . _Coerce

instance FromJSON StructuredMessage where
        parseJSON
          = withObject "StructuredMessage"
              (\ o ->
                 StructuredMessage' <$>
                   (o .:? "messageText") <*> (o .:? "messageKey") <*>
                     (o .:? "parameters" .!= mempty))

instance ToJSON StructuredMessage where
        toJSON StructuredMessage'{..}
          = object
              (catMaybes
                 [("messageText" .=) <$> _smMessageText,
                  ("messageKey" .=) <$> _smMessageKey,
                  ("parameters" .=) <$> _smParameters])

-- | User-defined labels for this job. The labels map can contain no more
-- than 64 entries. Entries of the labels map are UTF8 strings that comply
-- with the following restrictions: * Keys must conform to regexp:
-- \\p{Ll}\\p{Lo}{0,62} * Values must conform to regexp:
-- [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} * Both keys and values are additionally
-- constrained to be \<= 128 bytes in size.
--
-- /See:/ 'jobLabels' smart constructor.
newtype JobLabels =
  JobLabels'
    { _jlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jlAddtional'
jobLabels
    :: HashMap Text Text -- ^ 'jlAddtional'
    -> JobLabels
jobLabels pJlAddtional_ = JobLabels' {_jlAddtional = _Coerce # pJlAddtional_}


jlAddtional :: Lens' JobLabels (HashMap Text Text)
jlAddtional
  = lens _jlAddtional (\ s a -> s{_jlAddtional = a}) .
      _Coerce

instance FromJSON JobLabels where
        parseJSON
          = withObject "JobLabels"
              (\ o -> JobLabels' <$> (parseJSONObject o))

instance ToJSON JobLabels where
        toJSON = toJSON . _jlAddtional

-- | Identifies a metric, by describing the source which generated the
-- metric.
--
-- /See:/ 'metricStructuredName' smart constructor.
data MetricStructuredName =
  MetricStructuredName'
    { _msnOrigin  :: !(Maybe Text)
    , _msnContext :: !(Maybe MetricStructuredNameContext)
    , _msnName    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetricStructuredName' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msnOrigin'
--
-- * 'msnContext'
--
-- * 'msnName'
metricStructuredName
    :: MetricStructuredName
metricStructuredName =
  MetricStructuredName'
    {_msnOrigin = Nothing, _msnContext = Nothing, _msnName = Nothing}


-- | Origin (namespace) of metric name. May be blank for user-define metrics;
-- will be \"dataflow\" for metrics defined by the Dataflow service or SDK.
msnOrigin :: Lens' MetricStructuredName (Maybe Text)
msnOrigin
  = lens _msnOrigin (\ s a -> s{_msnOrigin = a})

-- | Zero or more labeled fields which identify the part of the job this
-- metric is associated with, such as the name of a step or collection. For
-- example, built-in counters associated with steps will have
-- context[\'step\'] = . Counters associated with PCollections in the SDK
-- will have context[\'pcollection\'] = .
msnContext :: Lens' MetricStructuredName (Maybe MetricStructuredNameContext)
msnContext
  = lens _msnContext (\ s a -> s{_msnContext = a})

-- | Worker-defined metric name.
msnName :: Lens' MetricStructuredName (Maybe Text)
msnName = lens _msnName (\ s a -> s{_msnName = a})

instance FromJSON MetricStructuredName where
        parseJSON
          = withObject "MetricStructuredName"
              (\ o ->
                 MetricStructuredName' <$>
                   (o .:? "origin") <*> (o .:? "context") <*>
                     (o .:? "name"))

instance ToJSON MetricStructuredName where
        toJSON MetricStructuredName'{..}
          = object
              (catMaybes
                 [("origin" .=) <$> _msnOrigin,
                  ("context" .=) <$> _msnContext,
                  ("name" .=) <$> _msnName])

-- | Metadata for a BigQuery connector used by the job.
--
-- /See:/ 'bigQueryIODetails' smart constructor.
data BigQueryIODetails =
  BigQueryIODetails'
    { _bqiodDataSet   :: !(Maybe Text)
    , _bqiodQuery     :: !(Maybe Text)
    , _bqiodProjectId :: !(Maybe Text)
    , _bqiodTable     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BigQueryIODetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bqiodDataSet'
--
-- * 'bqiodQuery'
--
-- * 'bqiodProjectId'
--
-- * 'bqiodTable'
bigQueryIODetails
    :: BigQueryIODetails
bigQueryIODetails =
  BigQueryIODetails'
    { _bqiodDataSet = Nothing
    , _bqiodQuery = Nothing
    , _bqiodProjectId = Nothing
    , _bqiodTable = Nothing
    }


-- | Dataset accessed in the connection.
bqiodDataSet :: Lens' BigQueryIODetails (Maybe Text)
bqiodDataSet
  = lens _bqiodDataSet (\ s a -> s{_bqiodDataSet = a})

-- | Query used to access data in the connection.
bqiodQuery :: Lens' BigQueryIODetails (Maybe Text)
bqiodQuery
  = lens _bqiodQuery (\ s a -> s{_bqiodQuery = a})

-- | Project accessed in the connection.
bqiodProjectId :: Lens' BigQueryIODetails (Maybe Text)
bqiodProjectId
  = lens _bqiodProjectId
      (\ s a -> s{_bqiodProjectId = a})

-- | Table accessed in the connection.
bqiodTable :: Lens' BigQueryIODetails (Maybe Text)
bqiodTable
  = lens _bqiodTable (\ s a -> s{_bqiodTable = a})

instance FromJSON BigQueryIODetails where
        parseJSON
          = withObject "BigQueryIODetails"
              (\ o ->
                 BigQueryIODetails' <$>
                   (o .:? "dataset") <*> (o .:? "query") <*>
                     (o .:? "projectId")
                     <*> (o .:? "table"))

instance ToJSON BigQueryIODetails where
        toJSON BigQueryIODetails'{..}
          = object
              (catMaybes
                 [("dataset" .=) <$> _bqiodDataSet,
                  ("query" .=) <$> _bqiodQuery,
                  ("projectId" .=) <$> _bqiodProjectId,
                  ("table" .=) <$> _bqiodTable])

-- | Metadata for a File connector used by the job.
--
-- /See:/ 'fileIODetails' smart constructor.
newtype FileIODetails =
  FileIODetails'
    { _fiodFilePattern :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FileIODetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fiodFilePattern'
fileIODetails
    :: FileIODetails
fileIODetails = FileIODetails' {_fiodFilePattern = Nothing}


-- | File Pattern used to access files by the connector.
fiodFilePattern :: Lens' FileIODetails (Maybe Text)
fiodFilePattern
  = lens _fiodFilePattern
      (\ s a -> s{_fiodFilePattern = a})

instance FromJSON FileIODetails where
        parseJSON
          = withObject "FileIODetails"
              (\ o -> FileIODetails' <$> (o .:? "filePattern"))

instance ToJSON FileIODetails where
        toJSON FileIODetails'{..}
          = object
              (catMaybes [("filePattern" .=) <$> _fiodFilePattern])

-- | Identifies a counter within a per-job namespace. Counters whose
-- structured names are the same get merged into a single value for the
-- job.
--
-- /See:/ 'counterStructuredName' smart constructor.
data CounterStructuredName =
  CounterStructuredName'
    { _csnOrigin                     :: !(Maybe CounterStructuredNameOrigin)
    , _csnOriginNamespace            :: !(Maybe Text)
    , _csnComponentStepName          :: !(Maybe Text)
    , _csnPortion                    :: !(Maybe CounterStructuredNamePortion)
    , _csnOriginalStepName           :: !(Maybe Text)
    , _csnName                       :: !(Maybe Text)
    , _csnExecutionStepName          :: !(Maybe Text)
    , _csnOriginalRequestingStepName :: !(Maybe Text)
    , _csnInputIndex                 :: !(Maybe (Textual Int32))
    , _csnWorkerId                   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CounterStructuredName' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csnOrigin'
--
-- * 'csnOriginNamespace'
--
-- * 'csnComponentStepName'
--
-- * 'csnPortion'
--
-- * 'csnOriginalStepName'
--
-- * 'csnName'
--
-- * 'csnExecutionStepName'
--
-- * 'csnOriginalRequestingStepName'
--
-- * 'csnInputIndex'
--
-- * 'csnWorkerId'
counterStructuredName
    :: CounterStructuredName
counterStructuredName =
  CounterStructuredName'
    { _csnOrigin = Nothing
    , _csnOriginNamespace = Nothing
    , _csnComponentStepName = Nothing
    , _csnPortion = Nothing
    , _csnOriginalStepName = Nothing
    , _csnName = Nothing
    , _csnExecutionStepName = Nothing
    , _csnOriginalRequestingStepName = Nothing
    , _csnInputIndex = Nothing
    , _csnWorkerId = Nothing
    }


-- | One of the standard Origins defined above.
csnOrigin :: Lens' CounterStructuredName (Maybe CounterStructuredNameOrigin)
csnOrigin
  = lens _csnOrigin (\ s a -> s{_csnOrigin = a})

-- | A string containing a more specific namespace of the counter\'s origin.
csnOriginNamespace :: Lens' CounterStructuredName (Maybe Text)
csnOriginNamespace
  = lens _csnOriginNamespace
      (\ s a -> s{_csnOriginNamespace = a})

-- | Name of the optimized step being executed by the workers.
csnComponentStepName :: Lens' CounterStructuredName (Maybe Text)
csnComponentStepName
  = lens _csnComponentStepName
      (\ s a -> s{_csnComponentStepName = a})

-- | Portion of this counter, either key or value.
csnPortion :: Lens' CounterStructuredName (Maybe CounterStructuredNamePortion)
csnPortion
  = lens _csnPortion (\ s a -> s{_csnPortion = a})

-- | System generated name of the original step in the user\'s graph, before
-- optimization.
csnOriginalStepName :: Lens' CounterStructuredName (Maybe Text)
csnOriginalStepName
  = lens _csnOriginalStepName
      (\ s a -> s{_csnOriginalStepName = a})

-- | Counter name. Not necessarily globally-unique, but unique within the
-- context of the other fields. Required.
csnName :: Lens' CounterStructuredName (Maybe Text)
csnName = lens _csnName (\ s a -> s{_csnName = a})

-- | Name of the stage. An execution step contains multiple component steps.
csnExecutionStepName :: Lens' CounterStructuredName (Maybe Text)
csnExecutionStepName
  = lens _csnExecutionStepName
      (\ s a -> s{_csnExecutionStepName = a})

-- | The step name requesting an operation, such as GBK. I.e. the ParDo
-- causing a read\/write from shuffle to occur, or a read from side inputs.
csnOriginalRequestingStepName :: Lens' CounterStructuredName (Maybe Text)
csnOriginalRequestingStepName
  = lens _csnOriginalRequestingStepName
      (\ s a -> s{_csnOriginalRequestingStepName = a})

-- | Index of an input collection that\'s being read from\/written to as a
-- side input. The index identifies a step\'s side inputs starting by 1
-- (e.g. the first side input has input_index 1, the third has input_index
-- 3). Side inputs are identified by a pair of (original_step_name,
-- input_index). This field helps uniquely identify them.
csnInputIndex :: Lens' CounterStructuredName (Maybe Int32)
csnInputIndex
  = lens _csnInputIndex
      (\ s a -> s{_csnInputIndex = a})
      . mapping _Coerce

-- | ID of a particular worker.
csnWorkerId :: Lens' CounterStructuredName (Maybe Text)
csnWorkerId
  = lens _csnWorkerId (\ s a -> s{_csnWorkerId = a})

instance FromJSON CounterStructuredName where
        parseJSON
          = withObject "CounterStructuredName"
              (\ o ->
                 CounterStructuredName' <$>
                   (o .:? "origin") <*> (o .:? "originNamespace") <*>
                     (o .:? "componentStepName")
                     <*> (o .:? "portion")
                     <*> (o .:? "originalStepName")
                     <*> (o .:? "name")
                     <*> (o .:? "executionStepName")
                     <*> (o .:? "originalRequestingStepName")
                     <*> (o .:? "inputIndex")
                     <*> (o .:? "workerId"))

instance ToJSON CounterStructuredName where
        toJSON CounterStructuredName'{..}
          = object
              (catMaybes
                 [("origin" .=) <$> _csnOrigin,
                  ("originNamespace" .=) <$> _csnOriginNamespace,
                  ("componentStepName" .=) <$> _csnComponentStepName,
                  ("portion" .=) <$> _csnPortion,
                  ("originalStepName" .=) <$> _csnOriginalStepName,
                  ("name" .=) <$> _csnName,
                  ("executionStepName" .=) <$> _csnExecutionStepName,
                  ("originalRequestingStepName" .=) <$>
                    _csnOriginalRequestingStepName,
                  ("inputIndex" .=) <$> _csnInputIndex,
                  ("workerId" .=) <$> _csnWorkerId])

-- | Metadata available primarily for filtering jobs. Will be included in the
-- ListJob response and Job SUMMARY view+.
--
-- /See:/ 'jobMetadata' smart constructor.
data JobMetadata =
  JobMetadata'
    { _jmSpannerDetails   :: !(Maybe [SpannerIODetails])
    , _jmBigTableDetails  :: !(Maybe [BigTableIODetails])
    , _jmSdkVersion       :: !(Maybe SdkVersion)
    , _jmPubsubDetails    :: !(Maybe [PubSubIODetails])
    , _jmFileDetails      :: !(Maybe [FileIODetails])
    , _jmBigQueryDetails  :: !(Maybe [BigQueryIODetails])
    , _jmDatastoreDetails :: !(Maybe [DatastoreIODetails])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jmSpannerDetails'
--
-- * 'jmBigTableDetails'
--
-- * 'jmSdkVersion'
--
-- * 'jmPubsubDetails'
--
-- * 'jmFileDetails'
--
-- * 'jmBigQueryDetails'
--
-- * 'jmDatastoreDetails'
jobMetadata
    :: JobMetadata
jobMetadata =
  JobMetadata'
    { _jmSpannerDetails = Nothing
    , _jmBigTableDetails = Nothing
    , _jmSdkVersion = Nothing
    , _jmPubsubDetails = Nothing
    , _jmFileDetails = Nothing
    , _jmBigQueryDetails = Nothing
    , _jmDatastoreDetails = Nothing
    }


-- | Identification of a Spanner source used in the Dataflow job.
jmSpannerDetails :: Lens' JobMetadata [SpannerIODetails]
jmSpannerDetails
  = lens _jmSpannerDetails
      (\ s a -> s{_jmSpannerDetails = a})
      . _Default
      . _Coerce

-- | Identification of a BigTable source used in the Dataflow job.
jmBigTableDetails :: Lens' JobMetadata [BigTableIODetails]
jmBigTableDetails
  = lens _jmBigTableDetails
      (\ s a -> s{_jmBigTableDetails = a})
      . _Default
      . _Coerce

-- | The SDK version used to run the job.
jmSdkVersion :: Lens' JobMetadata (Maybe SdkVersion)
jmSdkVersion
  = lens _jmSdkVersion (\ s a -> s{_jmSdkVersion = a})

-- | Identification of a PubSub source used in the Dataflow job.
jmPubsubDetails :: Lens' JobMetadata [PubSubIODetails]
jmPubsubDetails
  = lens _jmPubsubDetails
      (\ s a -> s{_jmPubsubDetails = a})
      . _Default
      . _Coerce

-- | Identification of a File source used in the Dataflow job.
jmFileDetails :: Lens' JobMetadata [FileIODetails]
jmFileDetails
  = lens _jmFileDetails
      (\ s a -> s{_jmFileDetails = a})
      . _Default
      . _Coerce

-- | Identification of a BigQuery source used in the Dataflow job.
jmBigQueryDetails :: Lens' JobMetadata [BigQueryIODetails]
jmBigQueryDetails
  = lens _jmBigQueryDetails
      (\ s a -> s{_jmBigQueryDetails = a})
      . _Default
      . _Coerce

-- | Identification of a Datastore source used in the Dataflow job.
jmDatastoreDetails :: Lens' JobMetadata [DatastoreIODetails]
jmDatastoreDetails
  = lens _jmDatastoreDetails
      (\ s a -> s{_jmDatastoreDetails = a})
      . _Default
      . _Coerce

instance FromJSON JobMetadata where
        parseJSON
          = withObject "JobMetadata"
              (\ o ->
                 JobMetadata' <$>
                   (o .:? "spannerDetails" .!= mempty) <*>
                     (o .:? "bigTableDetails" .!= mempty)
                     <*> (o .:? "sdkVersion")
                     <*> (o .:? "pubsubDetails" .!= mempty)
                     <*> (o .:? "fileDetails" .!= mempty)
                     <*> (o .:? "bigqueryDetails" .!= mempty)
                     <*> (o .:? "datastoreDetails" .!= mempty))

instance ToJSON JobMetadata where
        toJSON JobMetadata'{..}
          = object
              (catMaybes
                 [("spannerDetails" .=) <$> _jmSpannerDetails,
                  ("bigTableDetails" .=) <$> _jmBigTableDetails,
                  ("sdkVersion" .=) <$> _jmSdkVersion,
                  ("pubsubDetails" .=) <$> _jmPubsubDetails,
                  ("fileDetails" .=) <$> _jmFileDetails,
                  ("bigqueryDetails" .=) <$> _jmBigQueryDetails,
                  ("datastoreDetails" .=) <$> _jmDatastoreDetails])

-- | The response to a GetTemplate request.
--
-- /See:/ 'getTemplateResponse' smart constructor.
data GetTemplateResponse =
  GetTemplateResponse'
    { _gtrStatus   :: !(Maybe Status)
    , _gtrMetadata :: !(Maybe TemplateMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetTemplateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtrStatus'
--
-- * 'gtrMetadata'
getTemplateResponse
    :: GetTemplateResponse
getTemplateResponse =
  GetTemplateResponse' {_gtrStatus = Nothing, _gtrMetadata = Nothing}


-- | The status of the get template request. Any problems with the request
-- will be indicated in the error_details.
gtrStatus :: Lens' GetTemplateResponse (Maybe Status)
gtrStatus
  = lens _gtrStatus (\ s a -> s{_gtrStatus = a})

-- | The template metadata describing the template name, available
-- parameters, etc.
gtrMetadata :: Lens' GetTemplateResponse (Maybe TemplateMetadata)
gtrMetadata
  = lens _gtrMetadata (\ s a -> s{_gtrMetadata = a})

instance FromJSON GetTemplateResponse where
        parseJSON
          = withObject "GetTemplateResponse"
              (\ o ->
                 GetTemplateResponse' <$>
                   (o .:? "status") <*> (o .:? "metadata"))

instance ToJSON GetTemplateResponse where
        toJSON GetTemplateResponse'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _gtrStatus,
                  ("metadata" .=) <$> _gtrMetadata])

-- | An instruction that writes records. Takes one input, produces no
-- outputs.
--
-- /See:/ 'writeInstruction' smart constructor.
data WriteInstruction =
  WriteInstruction'
    { _wiSink  :: !(Maybe Sink)
    , _wiInput :: !(Maybe InstructionInput)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WriteInstruction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wiSink'
--
-- * 'wiInput'
writeInstruction
    :: WriteInstruction
writeInstruction = WriteInstruction' {_wiSink = Nothing, _wiInput = Nothing}


-- | The sink to write to.
wiSink :: Lens' WriteInstruction (Maybe Sink)
wiSink = lens _wiSink (\ s a -> s{_wiSink = a})

-- | The input.
wiInput :: Lens' WriteInstruction (Maybe InstructionInput)
wiInput = lens _wiInput (\ s a -> s{_wiInput = a})

instance FromJSON WriteInstruction where
        parseJSON
          = withObject "WriteInstruction"
              (\ o ->
                 WriteInstruction' <$>
                   (o .:? "sink") <*> (o .:? "input"))

instance ToJSON WriteInstruction where
        toJSON WriteInstruction'{..}
          = object
              (catMaybes
                 [("sink" .=) <$> _wiSink, ("input" .=) <$> _wiInput])

-- | A description of the process that generated the request.
--
-- /See:/ 'environmentUserAgent' smart constructor.
newtype EnvironmentUserAgent =
  EnvironmentUserAgent'
    { _euaAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnvironmentUserAgent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'euaAddtional'
environmentUserAgent
    :: HashMap Text JSONValue -- ^ 'euaAddtional'
    -> EnvironmentUserAgent
environmentUserAgent pEuaAddtional_ =
  EnvironmentUserAgent' {_euaAddtional = _Coerce # pEuaAddtional_}


-- | Properties of the object.
euaAddtional :: Lens' EnvironmentUserAgent (HashMap Text JSONValue)
euaAddtional
  = lens _euaAddtional (\ s a -> s{_euaAddtional = a})
      . _Coerce

instance FromJSON EnvironmentUserAgent where
        parseJSON
          = withObject "EnvironmentUserAgent"
              (\ o ->
                 EnvironmentUserAgent' <$> (parseJSONObject o))

instance ToJSON EnvironmentUserAgent where
        toJSON = toJSON . _euaAddtional

-- | Describes the data disk used by a workflow job.
--
-- /See:/ 'disk' smart constructor.
data Disk =
  Disk'
    { _dSizeGb     :: !(Maybe (Textual Int32))
    , _dDiskType   :: !(Maybe Text)
    , _dMountPoint :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Disk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dSizeGb'
--
-- * 'dDiskType'
--
-- * 'dMountPoint'
disk
    :: Disk
disk = Disk' {_dSizeGb = Nothing, _dDiskType = Nothing, _dMountPoint = Nothing}


-- | Size of disk in GB. If zero or unspecified, the service will attempt to
-- choose a reasonable default.
dSizeGb :: Lens' Disk (Maybe Int32)
dSizeGb
  = lens _dSizeGb (\ s a -> s{_dSizeGb = a}) .
      mapping _Coerce

-- | Disk storage type, as defined by Google Compute Engine. This must be a
-- disk type appropriate to the project and zone in which the workers will
-- run. If unknown or unspecified, the service will attempt to choose a
-- reasonable default. For example, the standard persistent disk type is a
-- resource name typically ending in \"pd-standard\". If SSD persistent
-- disks are available, the resource name typically ends with \"pd-ssd\".
-- The actual valid values are defined the Google Compute Engine API, not
-- by the Cloud Dataflow API; consult the Google Compute Engine
-- documentation for more information about determining the set of
-- available disk types for a particular project and zone. Google Compute
-- Engine Disk types are local to a particular project in a particular
-- zone, and so the resource name will typically look something like this:
-- compute.googleapis.com\/projects\/project-id\/zones\/zone\/diskTypes\/pd-standard
dDiskType :: Lens' Disk (Maybe Text)
dDiskType
  = lens _dDiskType (\ s a -> s{_dDiskType = a})

-- | Directory in a VM where disk is mounted.
dMountPoint :: Lens' Disk (Maybe Text)
dMountPoint
  = lens _dMountPoint (\ s a -> s{_dMountPoint = a})

instance FromJSON Disk where
        parseJSON
          = withObject "Disk"
              (\ o ->
                 Disk' <$>
                   (o .:? "sizeGb") <*> (o .:? "diskType") <*>
                     (o .:? "mountPoint"))

instance ToJSON Disk where
        toJSON Disk'{..}
          = object
              (catMaybes
                 [("sizeGb" .=) <$> _dSizeGb,
                  ("diskType" .=) <$> _dDiskType,
                  ("mountPoint" .=) <$> _dMountPoint])

-- | Describes the state of a metric.
--
-- /See:/ 'metricUpdate' smart constructor.
data MetricUpdate =
  MetricUpdate'
    { _muMeanSum      :: !(Maybe JSONValue)
    , _muInternal     :: !(Maybe JSONValue)
    , _muSet          :: !(Maybe JSONValue)
    , _muDistribution :: !(Maybe JSONValue)
    , _muCumulative   :: !(Maybe Bool)
    , _muKind         :: !(Maybe Text)
    , _muGauge        :: !(Maybe JSONValue)
    , _muUpdateTime   :: !(Maybe DateTime')
    , _muMeanCount    :: !(Maybe JSONValue)
    , _muName         :: !(Maybe MetricStructuredName)
    , _muScalar       :: !(Maybe JSONValue)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetricUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'muMeanSum'
--
-- * 'muInternal'
--
-- * 'muSet'
--
-- * 'muDistribution'
--
-- * 'muCumulative'
--
-- * 'muKind'
--
-- * 'muGauge'
--
-- * 'muUpdateTime'
--
-- * 'muMeanCount'
--
-- * 'muName'
--
-- * 'muScalar'
metricUpdate
    :: MetricUpdate
metricUpdate =
  MetricUpdate'
    { _muMeanSum = Nothing
    , _muInternal = Nothing
    , _muSet = Nothing
    , _muDistribution = Nothing
    , _muCumulative = Nothing
    , _muKind = Nothing
    , _muGauge = Nothing
    , _muUpdateTime = Nothing
    , _muMeanCount = Nothing
    , _muName = Nothing
    , _muScalar = Nothing
    }


-- | Worker-computed aggregate value for the \"Mean\" aggregation kind. This
-- holds the sum of the aggregated values and is used in combination with
-- mean_count below to obtain the actual mean aggregate value. The only
-- possible value types are Long and Double.
muMeanSum :: Lens' MetricUpdate (Maybe JSONValue)
muMeanSum
  = lens _muMeanSum (\ s a -> s{_muMeanSum = a})

-- | Worker-computed aggregate value for internal use by the Dataflow
-- service.
muInternal :: Lens' MetricUpdate (Maybe JSONValue)
muInternal
  = lens _muInternal (\ s a -> s{_muInternal = a})

-- | Worker-computed aggregate value for the \"Set\" aggregation kind. The
-- only possible value type is a list of Values whose type can be Long,
-- Double, or String, according to the metric\'s type. All Values in the
-- list must be of the same type.
muSet :: Lens' MetricUpdate (Maybe JSONValue)
muSet = lens _muSet (\ s a -> s{_muSet = a})

-- | A struct value describing properties of a distribution of numeric
-- values.
muDistribution :: Lens' MetricUpdate (Maybe JSONValue)
muDistribution
  = lens _muDistribution
      (\ s a -> s{_muDistribution = a})

-- | True if this metric is reported as the total cumulative aggregate value
-- accumulated since the worker started working on this WorkItem. By
-- default this is false, indicating that this metric is reported as a
-- delta that is not associated with any WorkItem.
muCumulative :: Lens' MetricUpdate (Maybe Bool)
muCumulative
  = lens _muCumulative (\ s a -> s{_muCumulative = a})

-- | Metric aggregation kind. The possible metric aggregation kinds are
-- \"Sum\", \"Max\", \"Min\", \"Mean\", \"Set\", \"And\", \"Or\", and
-- \"Distribution\". The specified aggregation kind is case-insensitive. If
-- omitted, this is not an aggregated value but instead a single metric
-- sample value.
muKind :: Lens' MetricUpdate (Maybe Text)
muKind = lens _muKind (\ s a -> s{_muKind = a})

-- | A struct value describing properties of a Gauge. Metrics of gauge type
-- show the value of a metric across time, and is aggregated based on the
-- newest value.
muGauge :: Lens' MetricUpdate (Maybe JSONValue)
muGauge = lens _muGauge (\ s a -> s{_muGauge = a})

-- | Timestamp associated with the metric value. Optional when workers are
-- reporting work progress; it will be filled in responses from the metrics
-- API.
muUpdateTime :: Lens' MetricUpdate (Maybe UTCTime)
muUpdateTime
  = lens _muUpdateTime (\ s a -> s{_muUpdateTime = a})
      . mapping _DateTime

-- | Worker-computed aggregate value for the \"Mean\" aggregation kind. This
-- holds the count of the aggregated values and is used in combination with
-- mean_sum above to obtain the actual mean aggregate value. The only
-- possible value type is Long.
muMeanCount :: Lens' MetricUpdate (Maybe JSONValue)
muMeanCount
  = lens _muMeanCount (\ s a -> s{_muMeanCount = a})

-- | Name of the metric.
muName :: Lens' MetricUpdate (Maybe MetricStructuredName)
muName = lens _muName (\ s a -> s{_muName = a})

-- | Worker-computed aggregate value for aggregation kinds \"Sum\", \"Max\",
-- \"Min\", \"And\", and \"Or\". The possible value types are Long, Double,
-- and Boolean.
muScalar :: Lens' MetricUpdate (Maybe JSONValue)
muScalar = lens _muScalar (\ s a -> s{_muScalar = a})

instance FromJSON MetricUpdate where
        parseJSON
          = withObject "MetricUpdate"
              (\ o ->
                 MetricUpdate' <$>
                   (o .:? "meanSum") <*> (o .:? "internal") <*>
                     (o .:? "set")
                     <*> (o .:? "distribution")
                     <*> (o .:? "cumulative")
                     <*> (o .:? "kind")
                     <*> (o .:? "gauge")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "meanCount")
                     <*> (o .:? "name")
                     <*> (o .:? "scalar"))

instance ToJSON MetricUpdate where
        toJSON MetricUpdate'{..}
          = object
              (catMaybes
                 [("meanSum" .=) <$> _muMeanSum,
                  ("internal" .=) <$> _muInternal,
                  ("set" .=) <$> _muSet,
                  ("distribution" .=) <$> _muDistribution,
                  ("cumulative" .=) <$> _muCumulative,
                  ("kind" .=) <$> _muKind, ("gauge" .=) <$> _muGauge,
                  ("updateTime" .=) <$> _muUpdateTime,
                  ("meanCount" .=) <$> _muMeanCount,
                  ("name" .=) <$> _muName,
                  ("scalar" .=) <$> _muScalar])

-- | The result of a SourceGetMetadataOperation.
--
-- /See:/ 'sourceGetMetadataResponse' smart constructor.
newtype SourceGetMetadataResponse =
  SourceGetMetadataResponse'
    { _sgmrMetadata :: Maybe SourceMetadata
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceGetMetadataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgmrMetadata'
sourceGetMetadataResponse
    :: SourceGetMetadataResponse
sourceGetMetadataResponse = SourceGetMetadataResponse' {_sgmrMetadata = Nothing}


-- | The computed metadata.
sgmrMetadata :: Lens' SourceGetMetadataResponse (Maybe SourceMetadata)
sgmrMetadata
  = lens _sgmrMetadata (\ s a -> s{_sgmrMetadata = a})

instance FromJSON SourceGetMetadataResponse where
        parseJSON
          = withObject "SourceGetMetadataResponse"
              (\ o ->
                 SourceGetMetadataResponse' <$> (o .:? "metadata"))

instance ToJSON SourceGetMetadataResponse where
        toJSON SourceGetMetadataResponse'{..}
          = object
              (catMaybes [("metadata" .=) <$> _sgmrMetadata])

-- | Metadata describing a template.
--
-- /See:/ 'templateMetadata' smart constructor.
data TemplateMetadata =
  TemplateMetadata'
    { _tmName        :: !(Maybe Text)
    , _tmParameters  :: !(Maybe [ParameterMetadata])
    , _tmDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TemplateMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tmName'
--
-- * 'tmParameters'
--
-- * 'tmDescription'
templateMetadata
    :: TemplateMetadata
templateMetadata =
  TemplateMetadata'
    {_tmName = Nothing, _tmParameters = Nothing, _tmDescription = Nothing}


-- | Required. The name of the template.
tmName :: Lens' TemplateMetadata (Maybe Text)
tmName = lens _tmName (\ s a -> s{_tmName = a})

-- | The parameters for the template.
tmParameters :: Lens' TemplateMetadata [ParameterMetadata]
tmParameters
  = lens _tmParameters (\ s a -> s{_tmParameters = a})
      . _Default
      . _Coerce

-- | Optional. A description of the template.
tmDescription :: Lens' TemplateMetadata (Maybe Text)
tmDescription
  = lens _tmDescription
      (\ s a -> s{_tmDescription = a})

instance FromJSON TemplateMetadata where
        parseJSON
          = withObject "TemplateMetadata"
              (\ o ->
                 TemplateMetadata' <$>
                   (o .:? "name") <*> (o .:? "parameters" .!= mempty)
                     <*> (o .:? "description"))

instance ToJSON TemplateMetadata where
        toJSON TemplateMetadata'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _tmName,
                  ("parameters" .=) <$> _tmParameters,
                  ("description" .=) <$> _tmDescription])

-- | Describes the environment in which a Dataflow Job runs.
--
-- /See:/ 'environment' smart constructor.
data Environment =
  Environment'
    { _eDataSet                  :: !(Maybe Text)
    , _eExperiments              :: !(Maybe [Text])
    , _eWorkerPools              :: !(Maybe [WorkerPool])
    , _eClusterManagerAPIService :: !(Maybe Text)
    , _eVersion                  :: !(Maybe EnvironmentVersion)
    , _eInternalExperiments      :: !(Maybe EnvironmentInternalExperiments)
    , _eTempStoragePrefix        :: !(Maybe Text)
    , _eServiceAccountEmail      :: !(Maybe Text)
    , _eUserAgent                :: !(Maybe EnvironmentUserAgent)
    , _eSdkPipelineOptions       :: !(Maybe EnvironmentSdkPipelineOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Environment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eDataSet'
--
-- * 'eExperiments'
--
-- * 'eWorkerPools'
--
-- * 'eClusterManagerAPIService'
--
-- * 'eVersion'
--
-- * 'eInternalExperiments'
--
-- * 'eTempStoragePrefix'
--
-- * 'eServiceAccountEmail'
--
-- * 'eUserAgent'
--
-- * 'eSdkPipelineOptions'
environment
    :: Environment
environment =
  Environment'
    { _eDataSet = Nothing
    , _eExperiments = Nothing
    , _eWorkerPools = Nothing
    , _eClusterManagerAPIService = Nothing
    , _eVersion = Nothing
    , _eInternalExperiments = Nothing
    , _eTempStoragePrefix = Nothing
    , _eServiceAccountEmail = Nothing
    , _eUserAgent = Nothing
    , _eSdkPipelineOptions = Nothing
    }


-- | The dataset for the current project where various workflow related
-- tables are stored. The supported resource type is: Google BigQuery:
-- bigquery.googleapis.com\/{dataset}
eDataSet :: Lens' Environment (Maybe Text)
eDataSet = lens _eDataSet (\ s a -> s{_eDataSet = a})

-- | The list of experiments to enable.
eExperiments :: Lens' Environment [Text]
eExperiments
  = lens _eExperiments (\ s a -> s{_eExperiments = a})
      . _Default
      . _Coerce

-- | The worker pools. At least one \"harness\" worker pool must be specified
-- in order for the job to have workers.
eWorkerPools :: Lens' Environment [WorkerPool]
eWorkerPools
  = lens _eWorkerPools (\ s a -> s{_eWorkerPools = a})
      . _Default
      . _Coerce

-- | The type of cluster manager API to use. If unknown or unspecified, the
-- service will attempt to choose a reasonable default. This should be in
-- the form of the API service name, e.g. \"compute.googleapis.com\".
eClusterManagerAPIService :: Lens' Environment (Maybe Text)
eClusterManagerAPIService
  = lens _eClusterManagerAPIService
      (\ s a -> s{_eClusterManagerAPIService = a})

-- | A structure describing which components and their versions of the
-- service are required in order to run the job.
eVersion :: Lens' Environment (Maybe EnvironmentVersion)
eVersion = lens _eVersion (\ s a -> s{_eVersion = a})

-- | Experimental settings.
eInternalExperiments :: Lens' Environment (Maybe EnvironmentInternalExperiments)
eInternalExperiments
  = lens _eInternalExperiments
      (\ s a -> s{_eInternalExperiments = a})

-- | The prefix of the resources the system should use for temporary storage.
-- The system will append the suffix \"\/temp-{JOBNAME} to this resource
-- prefix, where {JOBNAME} is the value of the job_name field. The
-- resulting bucket and object prefix is used as the prefix of the
-- resources used to store temporary data needed during the job execution.
-- NOTE: This will override the value in taskrunner_settings. The supported
-- resource type is: Google Cloud Storage:
-- storage.googleapis.com\/{bucket}\/{object}
-- bucket.storage.googleapis.com\/{object}
eTempStoragePrefix :: Lens' Environment (Maybe Text)
eTempStoragePrefix
  = lens _eTempStoragePrefix
      (\ s a -> s{_eTempStoragePrefix = a})

-- | Identity to run virtual machines as. Defaults to the default account.
eServiceAccountEmail :: Lens' Environment (Maybe Text)
eServiceAccountEmail
  = lens _eServiceAccountEmail
      (\ s a -> s{_eServiceAccountEmail = a})

-- | A description of the process that generated the request.
eUserAgent :: Lens' Environment (Maybe EnvironmentUserAgent)
eUserAgent
  = lens _eUserAgent (\ s a -> s{_eUserAgent = a})

-- | The Cloud Dataflow SDK pipeline options specified by the user. These
-- options are passed through the service and are used to recreate the SDK
-- pipeline options on the worker in a language agnostic and platform
-- independent way.
eSdkPipelineOptions :: Lens' Environment (Maybe EnvironmentSdkPipelineOptions)
eSdkPipelineOptions
  = lens _eSdkPipelineOptions
      (\ s a -> s{_eSdkPipelineOptions = a})

instance FromJSON Environment where
        parseJSON
          = withObject "Environment"
              (\ o ->
                 Environment' <$>
                   (o .:? "dataset") <*>
                     (o .:? "experiments" .!= mempty)
                     <*> (o .:? "workerPools" .!= mempty)
                     <*> (o .:? "clusterManagerApiService")
                     <*> (o .:? "version")
                     <*> (o .:? "internalExperiments")
                     <*> (o .:? "tempStoragePrefix")
                     <*> (o .:? "serviceAccountEmail")
                     <*> (o .:? "userAgent")
                     <*> (o .:? "sdkPipelineOptions"))

instance ToJSON Environment where
        toJSON Environment'{..}
          = object
              (catMaybes
                 [("dataset" .=) <$> _eDataSet,
                  ("experiments" .=) <$> _eExperiments,
                  ("workerPools" .=) <$> _eWorkerPools,
                  ("clusterManagerApiService" .=) <$>
                    _eClusterManagerAPIService,
                  ("version" .=) <$> _eVersion,
                  ("internalExperiments" .=) <$> _eInternalExperiments,
                  ("tempStoragePrefix" .=) <$> _eTempStoragePrefix,
                  ("serviceAccountEmail" .=) <$> _eServiceAccountEmail,
                  ("userAgent" .=) <$> _eUserAgent,
                  ("sdkPipelineOptions" .=) <$> _eSdkPipelineOptions])

-- | A position that encapsulates an inner position and an index for the
-- inner position. A ConcatPosition can be used by a reader of a source
-- that encapsulates a set of other sources.
--
-- /See:/ 'concatPosition' smart constructor.
data ConcatPosition =
  ConcatPosition'
    { _cpIndex    :: !(Maybe (Textual Int32))
    , _cpPosition :: !(Maybe Position)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConcatPosition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpIndex'
--
-- * 'cpPosition'
concatPosition
    :: ConcatPosition
concatPosition = ConcatPosition' {_cpIndex = Nothing, _cpPosition = Nothing}


-- | Index of the inner source.
cpIndex :: Lens' ConcatPosition (Maybe Int32)
cpIndex
  = lens _cpIndex (\ s a -> s{_cpIndex = a}) .
      mapping _Coerce

-- | Position within the inner source.
cpPosition :: Lens' ConcatPosition (Maybe Position)
cpPosition
  = lens _cpPosition (\ s a -> s{_cpPosition = a})

instance FromJSON ConcatPosition where
        parseJSON
          = withObject "ConcatPosition"
              (\ o ->
                 ConcatPosition' <$>
                   (o .:? "index") <*> (o .:? "position"))

instance ToJSON ConcatPosition where
        toJSON ConcatPosition'{..}
          = object
              (catMaybes
                 [("index" .=) <$> _cpIndex,
                  ("position" .=) <$> _cpPosition])

-- | Zero or more labeled fields which identify the part of the job this
-- metric is associated with, such as the name of a step or collection. For
-- example, built-in counters associated with steps will have
-- context[\'step\'] = . Counters associated with PCollections in the SDK
-- will have context[\'pcollection\'] = .
--
-- /See:/ 'metricStructuredNameContext' smart constructor.
newtype MetricStructuredNameContext =
  MetricStructuredNameContext'
    { _msncAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetricStructuredNameContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msncAddtional'
metricStructuredNameContext
    :: HashMap Text Text -- ^ 'msncAddtional'
    -> MetricStructuredNameContext
metricStructuredNameContext pMsncAddtional_ =
  MetricStructuredNameContext' {_msncAddtional = _Coerce # pMsncAddtional_}


msncAddtional :: Lens' MetricStructuredNameContext (HashMap Text Text)
msncAddtional
  = lens _msncAddtional
      (\ s a -> s{_msncAddtional = a})
      . _Coerce

instance FromJSON MetricStructuredNameContext where
        parseJSON
          = withObject "MetricStructuredNameContext"
              (\ o ->
                 MetricStructuredNameContext' <$> (parseJSONObject o))

instance ToJSON MetricStructuredNameContext where
        toJSON = toJSON . _msncAddtional

-- | An update to a Counter sent from a worker.
--
-- /See:/ 'counterUpdate' smart constructor.
data CounterUpdate =
  CounterUpdate'
    { _cuNameAndKind               :: !(Maybe NameAndKind)
    , _cuIntegerList               :: !(Maybe IntegerList)
    , _cuFloatingPoint             :: !(Maybe (Textual Double))
    , _cuInternal                  :: !(Maybe JSONValue)
    , _cuStringList                :: !(Maybe StringList)
    , _cuShortId                   :: !(Maybe (Textual Int64))
    , _cuIntegerGauge              :: !(Maybe IntegerGauge)
    , _cuDistribution              :: !(Maybe DistributionUpdate)
    , _cuCumulative                :: !(Maybe Bool)
    , _cuStructuredNameAndMetadata :: !(Maybe CounterStructuredNameAndMetadata)
    , _cuFloatingPointMean         :: !(Maybe FloatingPointMean)
    , _cuIntegerMean               :: !(Maybe IntegerMean)
    , _cuBoolean                   :: !(Maybe Bool)
    , _cuFloatingPointList         :: !(Maybe FloatingPointList)
    , _cuInteger                   :: !(Maybe SplitInt64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CounterUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuNameAndKind'
--
-- * 'cuIntegerList'
--
-- * 'cuFloatingPoint'
--
-- * 'cuInternal'
--
-- * 'cuStringList'
--
-- * 'cuShortId'
--
-- * 'cuIntegerGauge'
--
-- * 'cuDistribution'
--
-- * 'cuCumulative'
--
-- * 'cuStructuredNameAndMetadata'
--
-- * 'cuFloatingPointMean'
--
-- * 'cuIntegerMean'
--
-- * 'cuBoolean'
--
-- * 'cuFloatingPointList'
--
-- * 'cuInteger'
counterUpdate
    :: CounterUpdate
counterUpdate =
  CounterUpdate'
    { _cuNameAndKind = Nothing
    , _cuIntegerList = Nothing
    , _cuFloatingPoint = Nothing
    , _cuInternal = Nothing
    , _cuStringList = Nothing
    , _cuShortId = Nothing
    , _cuIntegerGauge = Nothing
    , _cuDistribution = Nothing
    , _cuCumulative = Nothing
    , _cuStructuredNameAndMetadata = Nothing
    , _cuFloatingPointMean = Nothing
    , _cuIntegerMean = Nothing
    , _cuBoolean = Nothing
    , _cuFloatingPointList = Nothing
    , _cuInteger = Nothing
    }


-- | Counter name and aggregation type.
cuNameAndKind :: Lens' CounterUpdate (Maybe NameAndKind)
cuNameAndKind
  = lens _cuNameAndKind
      (\ s a -> s{_cuNameAndKind = a})

-- | List of integers, for Set.
cuIntegerList :: Lens' CounterUpdate (Maybe IntegerList)
cuIntegerList
  = lens _cuIntegerList
      (\ s a -> s{_cuIntegerList = a})

-- | Floating point value for Sum, Max, Min.
cuFloatingPoint :: Lens' CounterUpdate (Maybe Double)
cuFloatingPoint
  = lens _cuFloatingPoint
      (\ s a -> s{_cuFloatingPoint = a})
      . mapping _Coerce

-- | Value for internally-defined counters used by the Dataflow service.
cuInternal :: Lens' CounterUpdate (Maybe JSONValue)
cuInternal
  = lens _cuInternal (\ s a -> s{_cuInternal = a})

-- | List of strings, for Set.
cuStringList :: Lens' CounterUpdate (Maybe StringList)
cuStringList
  = lens _cuStringList (\ s a -> s{_cuStringList = a})

-- | The service-generated short identifier for this counter. The short_id ->
-- (name, metadata) mapping is constant for the lifetime of a job.
cuShortId :: Lens' CounterUpdate (Maybe Int64)
cuShortId
  = lens _cuShortId (\ s a -> s{_cuShortId = a}) .
      mapping _Coerce

-- | Gauge data
cuIntegerGauge :: Lens' CounterUpdate (Maybe IntegerGauge)
cuIntegerGauge
  = lens _cuIntegerGauge
      (\ s a -> s{_cuIntegerGauge = a})

-- | Distribution data
cuDistribution :: Lens' CounterUpdate (Maybe DistributionUpdate)
cuDistribution
  = lens _cuDistribution
      (\ s a -> s{_cuDistribution = a})

-- | True if this counter is reported as the total cumulative aggregate value
-- accumulated since the worker started working on this WorkItem. By
-- default this is false, indicating that this counter is reported as a
-- delta.
cuCumulative :: Lens' CounterUpdate (Maybe Bool)
cuCumulative
  = lens _cuCumulative (\ s a -> s{_cuCumulative = a})

-- | Counter structured name and metadata.
cuStructuredNameAndMetadata :: Lens' CounterUpdate (Maybe CounterStructuredNameAndMetadata)
cuStructuredNameAndMetadata
  = lens _cuStructuredNameAndMetadata
      (\ s a -> s{_cuStructuredNameAndMetadata = a})

-- | Floating point mean aggregation value for Mean.
cuFloatingPointMean :: Lens' CounterUpdate (Maybe FloatingPointMean)
cuFloatingPointMean
  = lens _cuFloatingPointMean
      (\ s a -> s{_cuFloatingPointMean = a})

-- | Integer mean aggregation value for Mean.
cuIntegerMean :: Lens' CounterUpdate (Maybe IntegerMean)
cuIntegerMean
  = lens _cuIntegerMean
      (\ s a -> s{_cuIntegerMean = a})

-- | Boolean value for And, Or.
cuBoolean :: Lens' CounterUpdate (Maybe Bool)
cuBoolean
  = lens _cuBoolean (\ s a -> s{_cuBoolean = a})

-- | List of floating point numbers, for Set.
cuFloatingPointList :: Lens' CounterUpdate (Maybe FloatingPointList)
cuFloatingPointList
  = lens _cuFloatingPointList
      (\ s a -> s{_cuFloatingPointList = a})

-- | Integer value for Sum, Max, Min.
cuInteger :: Lens' CounterUpdate (Maybe SplitInt64)
cuInteger
  = lens _cuInteger (\ s a -> s{_cuInteger = a})

instance FromJSON CounterUpdate where
        parseJSON
          = withObject "CounterUpdate"
              (\ o ->
                 CounterUpdate' <$>
                   (o .:? "nameAndKind") <*> (o .:? "integerList") <*>
                     (o .:? "floatingPoint")
                     <*> (o .:? "internal")
                     <*> (o .:? "stringList")
                     <*> (o .:? "shortId")
                     <*> (o .:? "integerGauge")
                     <*> (o .:? "distribution")
                     <*> (o .:? "cumulative")
                     <*> (o .:? "structuredNameAndMetadata")
                     <*> (o .:? "floatingPointMean")
                     <*> (o .:? "integerMean")
                     <*> (o .:? "boolean")
                     <*> (o .:? "floatingPointList")
                     <*> (o .:? "integer"))

instance ToJSON CounterUpdate where
        toJSON CounterUpdate'{..}
          = object
              (catMaybes
                 [("nameAndKind" .=) <$> _cuNameAndKind,
                  ("integerList" .=) <$> _cuIntegerList,
                  ("floatingPoint" .=) <$> _cuFloatingPoint,
                  ("internal" .=) <$> _cuInternal,
                  ("stringList" .=) <$> _cuStringList,
                  ("shortId" .=) <$> _cuShortId,
                  ("integerGauge" .=) <$> _cuIntegerGauge,
                  ("distribution" .=) <$> _cuDistribution,
                  ("cumulative" .=) <$> _cuCumulative,
                  ("structuredNameAndMetadata" .=) <$>
                    _cuStructuredNameAndMetadata,
                  ("floatingPointMean" .=) <$> _cuFloatingPointMean,
                  ("integerMean" .=) <$> _cuIntegerMean,
                  ("boolean" .=) <$> _cuBoolean,
                  ("floatingPointList" .=) <$> _cuFloatingPointList,
                  ("integer" .=) <$> _cuInteger])

-- | Identifies the location of a streaming computation stage, for
-- stage-to-stage communication.
--
-- /See:/ 'streamingStageLocation' smart constructor.
newtype StreamingStageLocation =
  StreamingStageLocation'
    { _sslStreamId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StreamingStageLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sslStreamId'
streamingStageLocation
    :: StreamingStageLocation
streamingStageLocation = StreamingStageLocation' {_sslStreamId = Nothing}


-- | Identifies the particular stream within the streaming Dataflow job.
sslStreamId :: Lens' StreamingStageLocation (Maybe Text)
sslStreamId
  = lens _sslStreamId (\ s a -> s{_sslStreamId = a})

instance FromJSON StreamingStageLocation where
        parseJSON
          = withObject "StreamingStageLocation"
              (\ o ->
                 StreamingStageLocation' <$> (o .:? "streamId"))

instance ToJSON StreamingStageLocation where
        toJSON StreamingStageLocation'{..}
          = object
              (catMaybes [("streamId" .=) <$> _sslStreamId])

-- | Untranslated bag-of-bytes WorkRequest from UnifiedWorker.
--
-- /See:/ 'leaseWorkItemRequestUnifiedWorkerRequest' smart constructor.
newtype LeaseWorkItemRequestUnifiedWorkerRequest =
  LeaseWorkItemRequestUnifiedWorkerRequest'
    { _lwiruwrAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LeaseWorkItemRequestUnifiedWorkerRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lwiruwrAddtional'
leaseWorkItemRequestUnifiedWorkerRequest
    :: HashMap Text JSONValue -- ^ 'lwiruwrAddtional'
    -> LeaseWorkItemRequestUnifiedWorkerRequest
leaseWorkItemRequestUnifiedWorkerRequest pLwiruwrAddtional_ =
  LeaseWorkItemRequestUnifiedWorkerRequest'
    {_lwiruwrAddtional = _Coerce # pLwiruwrAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
lwiruwrAddtional :: Lens' LeaseWorkItemRequestUnifiedWorkerRequest (HashMap Text JSONValue)
lwiruwrAddtional
  = lens _lwiruwrAddtional
      (\ s a -> s{_lwiruwrAddtional = a})
      . _Coerce

instance FromJSON
           LeaseWorkItemRequestUnifiedWorkerRequest
         where
        parseJSON
          = withObject
              "LeaseWorkItemRequestUnifiedWorkerRequest"
              (\ o ->
                 LeaseWorkItemRequestUnifiedWorkerRequest' <$>
                   (parseJSONObject o))

instance ToJSON
           LeaseWorkItemRequestUnifiedWorkerRequest
         where
        toJSON = toJSON . _lwiruwrAddtional

-- | Specification of one of the bundles produced as a result of splitting a
-- Source (e.g. when executing a SourceSplitRequest, or when splitting an
-- active task using WorkItemStatus.dynamic_source_split), relative to the
-- source being split.
--
-- /See:/ 'derivedSource' smart constructor.
data DerivedSource =
  DerivedSource'
    { _dsDerivationMode :: !(Maybe DerivedSourceDerivationMode)
    , _dsSource         :: !(Maybe Source)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DerivedSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsDerivationMode'
--
-- * 'dsSource'
derivedSource
    :: DerivedSource
derivedSource =
  DerivedSource' {_dsDerivationMode = Nothing, _dsSource = Nothing}


-- | What source to base the produced source on (if any).
dsDerivationMode :: Lens' DerivedSource (Maybe DerivedSourceDerivationMode)
dsDerivationMode
  = lens _dsDerivationMode
      (\ s a -> s{_dsDerivationMode = a})

-- | Specification of the source.
dsSource :: Lens' DerivedSource (Maybe Source)
dsSource = lens _dsSource (\ s a -> s{_dsSource = a})

instance FromJSON DerivedSource where
        parseJSON
          = withObject "DerivedSource"
              (\ o ->
                 DerivedSource' <$>
                   (o .:? "derivationMode") <*> (o .:? "source"))

instance ToJSON DerivedSource where
        toJSON DerivedSource'{..}
          = object
              (catMaybes
                 [("derivationMode" .=) <$> _dsDerivationMode,
                  ("source" .=) <$> _dsSource])

-- | JobMetrics contains a collection of metrics descibing the detailed
-- progress of a Dataflow job. Metrics correspond to user-defined and
-- system-defined metrics in the job. This resource captures only the most
-- recent values of each metric; time-series data can be queried for them
-- (under the same metric names) from Cloud Monitoring.
--
-- /See:/ 'jobMetrics' smart constructor.
data JobMetrics =
  JobMetrics'
    { _jmMetrics    :: !(Maybe [MetricUpdate])
    , _jmMetricTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jmMetrics'
--
-- * 'jmMetricTime'
jobMetrics
    :: JobMetrics
jobMetrics = JobMetrics' {_jmMetrics = Nothing, _jmMetricTime = Nothing}


-- | All metrics for this job.
jmMetrics :: Lens' JobMetrics [MetricUpdate]
jmMetrics
  = lens _jmMetrics (\ s a -> s{_jmMetrics = a}) .
      _Default
      . _Coerce

-- | Timestamp as of which metric values are current.
jmMetricTime :: Lens' JobMetrics (Maybe UTCTime)
jmMetricTime
  = lens _jmMetricTime (\ s a -> s{_jmMetricTime = a})
      . mapping _DateTime

instance FromJSON JobMetrics where
        parseJSON
          = withObject "JobMetrics"
              (\ o ->
                 JobMetrics' <$>
                   (o .:? "metrics" .!= mempty) <*>
                     (o .:? "metricTime"))

instance ToJSON JobMetrics where
        toJSON JobMetrics'{..}
          = object
              (catMaybes
                 [("metrics" .=) <$> _jmMetrics,
                  ("metricTime" .=) <$> _jmMetricTime])

-- | Request to send encoded debug information.
--
-- /See:/ 'sendDebugCaptureRequest' smart constructor.
data SendDebugCaptureRequest =
  SendDebugCaptureRequest'
    { _sdcrLocation    :: !(Maybe Text)
    , _sdcrData        :: !(Maybe Text)
    , _sdcrComponentId :: !(Maybe Text)
    , _sdcrWorkerId    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SendDebugCaptureRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdcrLocation'
--
-- * 'sdcrData'
--
-- * 'sdcrComponentId'
--
-- * 'sdcrWorkerId'
sendDebugCaptureRequest
    :: SendDebugCaptureRequest
sendDebugCaptureRequest =
  SendDebugCaptureRequest'
    { _sdcrLocation = Nothing
    , _sdcrData = Nothing
    , _sdcrComponentId = Nothing
    , _sdcrWorkerId = Nothing
    }


-- | The location which contains the job specified by job_id.
sdcrLocation :: Lens' SendDebugCaptureRequest (Maybe Text)
sdcrLocation
  = lens _sdcrLocation (\ s a -> s{_sdcrLocation = a})

-- | The encoded debug information.
sdcrData :: Lens' SendDebugCaptureRequest (Maybe Text)
sdcrData = lens _sdcrData (\ s a -> s{_sdcrData = a})

-- | The internal component id for which debug information is sent.
sdcrComponentId :: Lens' SendDebugCaptureRequest (Maybe Text)
sdcrComponentId
  = lens _sdcrComponentId
      (\ s a -> s{_sdcrComponentId = a})

-- | The worker id, i.e., VM hostname.
sdcrWorkerId :: Lens' SendDebugCaptureRequest (Maybe Text)
sdcrWorkerId
  = lens _sdcrWorkerId (\ s a -> s{_sdcrWorkerId = a})

instance FromJSON SendDebugCaptureRequest where
        parseJSON
          = withObject "SendDebugCaptureRequest"
              (\ o ->
                 SendDebugCaptureRequest' <$>
                   (o .:? "location") <*> (o .:? "data") <*>
                     (o .:? "componentId")
                     <*> (o .:? "workerId"))

instance ToJSON SendDebugCaptureRequest where
        toJSON SendDebugCaptureRequest'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _sdcrLocation,
                  ("data" .=) <$> _sdcrData,
                  ("componentId" .=) <$> _sdcrComponentId,
                  ("workerId" .=) <$> _sdcrWorkerId])

-- | Conveys a worker\'s progress through the work described by a WorkItem.
--
-- /See:/ 'workItemStatus' smart constructor.
data WorkItemStatus =
  WorkItemStatus'
    { _wisReportedProgress              :: !(Maybe ApproximateReportedProgress)
    , _wisProgress                      :: !(Maybe ApproximateProgress)
    , _wisTotalThrottlerWaitTimeSeconds :: !(Maybe (Textual Double))
    , _wisSourceOperationResponse       :: !(Maybe SourceOperationResponse)
    , _wisStopPosition                  :: !(Maybe Position)
    , _wisDynamicSourceSplit            :: !(Maybe DynamicSourceSplit)
    , _wisCompleted                     :: !(Maybe Bool)
    , _wisSourceFork                    :: !(Maybe SourceFork)
    , _wisReportIndex                   :: !(Maybe (Textual Int64))
    , _wisRequestedLeaseDuration        :: !(Maybe GDuration)
    , _wisErrors                        :: !(Maybe [Status])
    , _wisCounterUpdates                :: !(Maybe [CounterUpdate])
    , _wisMetricUpdates                 :: !(Maybe [MetricUpdate])
    , _wisWorkItemId                    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkItemStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wisReportedProgress'
--
-- * 'wisProgress'
--
-- * 'wisTotalThrottlerWaitTimeSeconds'
--
-- * 'wisSourceOperationResponse'
--
-- * 'wisStopPosition'
--
-- * 'wisDynamicSourceSplit'
--
-- * 'wisCompleted'
--
-- * 'wisSourceFork'
--
-- * 'wisReportIndex'
--
-- * 'wisRequestedLeaseDuration'
--
-- * 'wisErrors'
--
-- * 'wisCounterUpdates'
--
-- * 'wisMetricUpdates'
--
-- * 'wisWorkItemId'
workItemStatus
    :: WorkItemStatus
workItemStatus =
  WorkItemStatus'
    { _wisReportedProgress = Nothing
    , _wisProgress = Nothing
    , _wisTotalThrottlerWaitTimeSeconds = Nothing
    , _wisSourceOperationResponse = Nothing
    , _wisStopPosition = Nothing
    , _wisDynamicSourceSplit = Nothing
    , _wisCompleted = Nothing
    , _wisSourceFork = Nothing
    , _wisReportIndex = Nothing
    , _wisRequestedLeaseDuration = Nothing
    , _wisErrors = Nothing
    , _wisCounterUpdates = Nothing
    , _wisMetricUpdates = Nothing
    , _wisWorkItemId = Nothing
    }


-- | The worker\'s progress through this WorkItem.
wisReportedProgress :: Lens' WorkItemStatus (Maybe ApproximateReportedProgress)
wisReportedProgress
  = lens _wisReportedProgress
      (\ s a -> s{_wisReportedProgress = a})

-- | DEPRECATED in favor of reported_progress.
wisProgress :: Lens' WorkItemStatus (Maybe ApproximateProgress)
wisProgress
  = lens _wisProgress (\ s a -> s{_wisProgress = a})

-- | Total time the worker spent being throttled by external systems.
wisTotalThrottlerWaitTimeSeconds :: Lens' WorkItemStatus (Maybe Double)
wisTotalThrottlerWaitTimeSeconds
  = lens _wisTotalThrottlerWaitTimeSeconds
      (\ s a -> s{_wisTotalThrottlerWaitTimeSeconds = a})
      . mapping _Coerce

-- | If the work item represented a SourceOperationRequest, and the work is
-- completed, contains the result of the operation.
wisSourceOperationResponse :: Lens' WorkItemStatus (Maybe SourceOperationResponse)
wisSourceOperationResponse
  = lens _wisSourceOperationResponse
      (\ s a -> s{_wisSourceOperationResponse = a})

-- | A worker may split an active map task in two parts, \"primary\" and
-- \"residual\", continuing to process the primary part and returning the
-- residual part into the pool of available work. This event is called a
-- \"dynamic split\" and is critical to the dynamic work rebalancing
-- feature. The two obtained sub-tasks are called \"parts\" of the split.
-- The parts, if concatenated, must represent the same input as would be
-- read by the current task if the split did not happen. The exact way in
-- which the original task is decomposed into the two parts is specified
-- either as a position demarcating them (stop_position), or explicitly as
-- two DerivedSources, if this task consumes a user-defined source type
-- (dynamic_source_split). The \"current\" task is adjusted as a result of
-- the split: after a task with range [A, B) sends a stop_position update
-- at C, its range is considered to be [A, C), e.g.: * Progress should be
-- interpreted relative to the new range, e.g. \"75% completed\" means
-- \"75% of [A, C) completed\" * The worker should interpret
-- proposed_stop_position relative to the new range, e.g. \"split at 68%\"
-- should be interpreted as \"split at 68% of [A, C)\". * If the worker
-- chooses to split again using stop_position, only stop_positions in [A,
-- C) will be accepted. * Etc. dynamic_source_split has similar semantics:
-- e.g., if a task with source S splits using dynamic_source_split into {P,
-- R} (where P and R must be together equivalent to S), then subsequent
-- progress and proposed_stop_position should be interpreted relative to P,
-- and in a potential subsequent dynamic_source_split into {P\', R\'}, P\'
-- and R\' must be together equivalent to P, etc.
wisStopPosition :: Lens' WorkItemStatus (Maybe Position)
wisStopPosition
  = lens _wisStopPosition
      (\ s a -> s{_wisStopPosition = a})

-- | See documentation of stop_position.
wisDynamicSourceSplit :: Lens' WorkItemStatus (Maybe DynamicSourceSplit)
wisDynamicSourceSplit
  = lens _wisDynamicSourceSplit
      (\ s a -> s{_wisDynamicSourceSplit = a})

-- | True if the WorkItem was completed (successfully or unsuccessfully).
wisCompleted :: Lens' WorkItemStatus (Maybe Bool)
wisCompleted
  = lens _wisCompleted (\ s a -> s{_wisCompleted = a})

-- | DEPRECATED in favor of dynamic_source_split.
wisSourceFork :: Lens' WorkItemStatus (Maybe SourceFork)
wisSourceFork
  = lens _wisSourceFork
      (\ s a -> s{_wisSourceFork = a})

-- | The report index. When a WorkItem is leased, the lease will contain an
-- initial report index. When a WorkItem\'s status is reported to the
-- system, the report should be sent with that report index, and the
-- response will contain the index the worker should use for the next
-- report. Reports received with unexpected index values will be rejected
-- by the service. In order to preserve idempotency, the worker should not
-- alter the contents of a report, even if the worker must submit the same
-- report multiple times before getting back a response. The worker should
-- not submit a subsequent report until the response for the previous
-- report had been received from the service.
wisReportIndex :: Lens' WorkItemStatus (Maybe Int64)
wisReportIndex
  = lens _wisReportIndex
      (\ s a -> s{_wisReportIndex = a})
      . mapping _Coerce

-- | Amount of time the worker requests for its lease.
wisRequestedLeaseDuration :: Lens' WorkItemStatus (Maybe Scientific)
wisRequestedLeaseDuration
  = lens _wisRequestedLeaseDuration
      (\ s a -> s{_wisRequestedLeaseDuration = a})
      . mapping _GDuration

-- | Specifies errors which occurred during processing. If errors are
-- provided, and completed = true, then the WorkItem is considered to have
-- failed.
wisErrors :: Lens' WorkItemStatus [Status]
wisErrors
  = lens _wisErrors (\ s a -> s{_wisErrors = a}) .
      _Default
      . _Coerce

-- | Worker output counters for this WorkItem.
wisCounterUpdates :: Lens' WorkItemStatus [CounterUpdate]
wisCounterUpdates
  = lens _wisCounterUpdates
      (\ s a -> s{_wisCounterUpdates = a})
      . _Default
      . _Coerce

-- | DEPRECATED in favor of counter_updates.
wisMetricUpdates :: Lens' WorkItemStatus [MetricUpdate]
wisMetricUpdates
  = lens _wisMetricUpdates
      (\ s a -> s{_wisMetricUpdates = a})
      . _Default
      . _Coerce

-- | Identifies the WorkItem.
wisWorkItemId :: Lens' WorkItemStatus (Maybe Text)
wisWorkItemId
  = lens _wisWorkItemId
      (\ s a -> s{_wisWorkItemId = a})

instance FromJSON WorkItemStatus where
        parseJSON
          = withObject "WorkItemStatus"
              (\ o ->
                 WorkItemStatus' <$>
                   (o .:? "reportedProgress") <*> (o .:? "progress") <*>
                     (o .:? "totalThrottlerWaitTimeSeconds")
                     <*> (o .:? "sourceOperationResponse")
                     <*> (o .:? "stopPosition")
                     <*> (o .:? "dynamicSourceSplit")
                     <*> (o .:? "completed")
                     <*> (o .:? "sourceFork")
                     <*> (o .:? "reportIndex")
                     <*> (o .:? "requestedLeaseDuration")
                     <*> (o .:? "errors" .!= mempty)
                     <*> (o .:? "counterUpdates" .!= mempty)
                     <*> (o .:? "metricUpdates" .!= mempty)
                     <*> (o .:? "workItemId"))

instance ToJSON WorkItemStatus where
        toJSON WorkItemStatus'{..}
          = object
              (catMaybes
                 [("reportedProgress" .=) <$> _wisReportedProgress,
                  ("progress" .=) <$> _wisProgress,
                  ("totalThrottlerWaitTimeSeconds" .=) <$>
                    _wisTotalThrottlerWaitTimeSeconds,
                  ("sourceOperationResponse" .=) <$>
                    _wisSourceOperationResponse,
                  ("stopPosition" .=) <$> _wisStopPosition,
                  ("dynamicSourceSplit" .=) <$> _wisDynamicSourceSplit,
                  ("completed" .=) <$> _wisCompleted,
                  ("sourceFork" .=) <$> _wisSourceFork,
                  ("reportIndex" .=) <$> _wisReportIndex,
                  ("requestedLeaseDuration" .=) <$>
                    _wisRequestedLeaseDuration,
                  ("errors" .=) <$> _wisErrors,
                  ("counterUpdates" .=) <$> _wisCounterUpdates,
                  ("metricUpdates" .=) <$> _wisMetricUpdates,
                  ("workItemId" .=) <$> _wisWorkItemId])

-- | Labels are used to group WorkerMessages. For example, a worker_message
-- about a particular container might have the labels: { \"JOB_ID\":
-- \"2015-04-22\", \"WORKER_ID\": \"wordcount-vm-2015…\"
-- \"CONTAINER_TYPE\": \"worker\", \"CONTAINER_ID\": \"ac1234def\"} Label
-- tags typically correspond to Label enum values. However, for ease of
-- development other strings can be used as tags. LABEL_UNSPECIFIED should
-- not be used here.
--
-- /See:/ 'workerMessageLabels' smart constructor.
newtype WorkerMessageLabels =
  WorkerMessageLabels'
    { _wmlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkerMessageLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wmlAddtional'
workerMessageLabels
    :: HashMap Text Text -- ^ 'wmlAddtional'
    -> WorkerMessageLabels
workerMessageLabels pWmlAddtional_ =
  WorkerMessageLabels' {_wmlAddtional = _Coerce # pWmlAddtional_}


wmlAddtional :: Lens' WorkerMessageLabels (HashMap Text Text)
wmlAddtional
  = lens _wmlAddtional (\ s a -> s{_wmlAddtional = a})
      . _Coerce

instance FromJSON WorkerMessageLabels where
        parseJSON
          = withObject "WorkerMessageLabels"
              (\ o -> WorkerMessageLabels' <$> (parseJSONObject o))

instance ToJSON WorkerMessageLabels where
        toJSON = toJSON . _wmlAddtional

-- | An instruction that copies its inputs (zero or more) to its (single)
-- output.
--
-- /See:/ 'flattenInstruction' smart constructor.
newtype FlattenInstruction =
  FlattenInstruction'
    { _fiInputs :: Maybe [InstructionInput]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FlattenInstruction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fiInputs'
flattenInstruction
    :: FlattenInstruction
flattenInstruction = FlattenInstruction' {_fiInputs = Nothing}


-- | Describes the inputs to the flatten instruction.
fiInputs :: Lens' FlattenInstruction [InstructionInput]
fiInputs
  = lens _fiInputs (\ s a -> s{_fiInputs = a}) .
      _Default
      . _Coerce

instance FromJSON FlattenInstruction where
        parseJSON
          = withObject "FlattenInstruction"
              (\ o ->
                 FlattenInstruction' <$> (o .:? "inputs" .!= mempty))

instance ToJSON FlattenInstruction where
        toJSON FlattenInstruction'{..}
          = object (catMaybes [("inputs" .=) <$> _fiInputs])

-- | A message code is used to report status and error messages to the
-- service. The message codes are intended to be machine readable. The
-- service will take care of translating these into user understandable
-- messages if necessary. Example use cases: 1. Worker processes reporting
-- successful startup. 2. Worker processes reporting specific errors (e.g.
-- package staging failure).
--
-- /See:/ 'workerMessageCode' smart constructor.
data WorkerMessageCode =
  WorkerMessageCode'
    { _wmcParameters :: !(Maybe WorkerMessageCodeParameters)
    , _wmcCode       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkerMessageCode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wmcParameters'
--
-- * 'wmcCode'
workerMessageCode
    :: WorkerMessageCode
workerMessageCode =
  WorkerMessageCode' {_wmcParameters = Nothing, _wmcCode = Nothing}


-- | Parameters contains specific information about the code. This is a
-- struct to allow parameters of different types. Examples: 1. For a
-- \"HARNESS_STARTED\" message parameters might provide the name of the
-- worker and additional data like timing information. 2. For a
-- \"GCS_DOWNLOAD_ERROR\" parameters might contain fields listing the GCS
-- objects being downloaded and fields containing errors. In general
-- complex data structures should be avoided. If a worker needs to send a
-- specific and complicated data structure then please consider defining a
-- new proto and adding it to the data oneof in WorkerMessageResponse.
-- Conventions: Parameters should only be used for information that isn\'t
-- typically passed as a label. hostname and other worker identifiers
-- should almost always be passed as labels since they will be included on
-- most messages.
wmcParameters :: Lens' WorkerMessageCode (Maybe WorkerMessageCodeParameters)
wmcParameters
  = lens _wmcParameters
      (\ s a -> s{_wmcParameters = a})

-- | The code is a string intended for consumption by a machine that
-- identifies the type of message being sent. Examples: 1.
-- \"HARNESS_STARTED\" might be used to indicate the worker harness has
-- started. 2. \"GCS_DOWNLOAD_ERROR\" might be used to indicate an error
-- downloading a GCS file as part of the boot process of one of the worker
-- containers. This is a string and not an enum to make it easy to add new
-- codes without waiting for an API change.
wmcCode :: Lens' WorkerMessageCode (Maybe Text)
wmcCode = lens _wmcCode (\ s a -> s{_wmcCode = a})

instance FromJSON WorkerMessageCode where
        parseJSON
          = withObject "WorkerMessageCode"
              (\ o ->
                 WorkerMessageCode' <$>
                   (o .:? "parameters") <*> (o .:? "code"))

instance ToJSON WorkerMessageCode where
        toJSON WorkerMessageCode'{..}
          = object
              (catMaybes
                 [("parameters" .=) <$> _wmcParameters,
                  ("code" .=) <$> _wmcCode])

-- | Description of the type, names\/ids, and input\/outputs for a transform.
--
-- /See:/ 'transformSummary' smart constructor.
data TransformSummary =
  TransformSummary'
    { _tsDisplayData          :: !(Maybe [DisplayData])
    , _tsKind                 :: !(Maybe TransformSummaryKind)
    , _tsOutputCollectionName :: !(Maybe [Text])
    , _tsInputCollectionName  :: !(Maybe [Text])
    , _tsName                 :: !(Maybe Text)
    , _tsId                   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TransformSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsDisplayData'
--
-- * 'tsKind'
--
-- * 'tsOutputCollectionName'
--
-- * 'tsInputCollectionName'
--
-- * 'tsName'
--
-- * 'tsId'
transformSummary
    :: TransformSummary
transformSummary =
  TransformSummary'
    { _tsDisplayData = Nothing
    , _tsKind = Nothing
    , _tsOutputCollectionName = Nothing
    , _tsInputCollectionName = Nothing
    , _tsName = Nothing
    , _tsId = Nothing
    }


-- | Transform-specific display data.
tsDisplayData :: Lens' TransformSummary [DisplayData]
tsDisplayData
  = lens _tsDisplayData
      (\ s a -> s{_tsDisplayData = a})
      . _Default
      . _Coerce

-- | Type of transform.
tsKind :: Lens' TransformSummary (Maybe TransformSummaryKind)
tsKind = lens _tsKind (\ s a -> s{_tsKind = a})

-- | User names for all collection outputs to this transform.
tsOutputCollectionName :: Lens' TransformSummary [Text]
tsOutputCollectionName
  = lens _tsOutputCollectionName
      (\ s a -> s{_tsOutputCollectionName = a})
      . _Default
      . _Coerce

-- | User names for all collection inputs to this transform.
tsInputCollectionName :: Lens' TransformSummary [Text]
tsInputCollectionName
  = lens _tsInputCollectionName
      (\ s a -> s{_tsInputCollectionName = a})
      . _Default
      . _Coerce

-- | User provided name for this transform instance.
tsName :: Lens' TransformSummary (Maybe Text)
tsName = lens _tsName (\ s a -> s{_tsName = a})

-- | SDK generated id of this transform instance.
tsId :: Lens' TransformSummary (Maybe Text)
tsId = lens _tsId (\ s a -> s{_tsId = a})

instance FromJSON TransformSummary where
        parseJSON
          = withObject "TransformSummary"
              (\ o ->
                 TransformSummary' <$>
                   (o .:? "displayData" .!= mempty) <*> (o .:? "kind")
                     <*> (o .:? "outputCollectionName" .!= mempty)
                     <*> (o .:? "inputCollectionName" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON TransformSummary where
        toJSON TransformSummary'{..}
          = object
              (catMaybes
                 [("displayData" .=) <$> _tsDisplayData,
                  ("kind" .=) <$> _tsKind,
                  ("outputCollectionName" .=) <$>
                    _tsOutputCollectionName,
                  ("inputCollectionName" .=) <$>
                    _tsInputCollectionName,
                  ("name" .=) <$> _tsName, ("id" .=) <$> _tsId])

-- | The map of transform name prefixes of the job to be replaced to the
-- corresponding name prefixes of the new job.
--
-- /See:/ 'jobTransformNameMApping' smart constructor.
newtype JobTransformNameMApping =
  JobTransformNameMApping'
    { _jtnmaAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobTransformNameMApping' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jtnmaAddtional'
jobTransformNameMApping
    :: HashMap Text Text -- ^ 'jtnmaAddtional'
    -> JobTransformNameMApping
jobTransformNameMApping pJtnmaAddtional_ =
  JobTransformNameMApping' {_jtnmaAddtional = _Coerce # pJtnmaAddtional_}


jtnmaAddtional :: Lens' JobTransformNameMApping (HashMap Text Text)
jtnmaAddtional
  = lens _jtnmaAddtional
      (\ s a -> s{_jtnmaAddtional = a})
      . _Coerce

instance FromJSON JobTransformNameMApping where
        parseJSON
          = withObject "JobTransformNameMApping"
              (\ o ->
                 JobTransformNameMApping' <$> (parseJSONObject o))

instance ToJSON JobTransformNameMApping where
        toJSON = toJSON . _jtnmaAddtional

-- | The source to read from, plus its parameters.
--
-- /See:/ 'sourceSpec' smart constructor.
newtype SourceSpec =
  SourceSpec'
    { _ssAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssAddtional'
sourceSpec
    :: HashMap Text JSONValue -- ^ 'ssAddtional'
    -> SourceSpec
sourceSpec pSsAddtional_ = SourceSpec' {_ssAddtional = _Coerce # pSsAddtional_}


-- | Properties of the object.
ssAddtional :: Lens' SourceSpec (HashMap Text JSONValue)
ssAddtional
  = lens _ssAddtional (\ s a -> s{_ssAddtional = a}) .
      _Coerce

instance FromJSON SourceSpec where
        parseJSON
          = withObject "SourceSpec"
              (\ o -> SourceSpec' <$> (parseJSONObject o))

instance ToJSON SourceSpec where
        toJSON = toJSON . _ssAddtional

-- | Metadata about a Source useful for automatically optimizing and tuning
-- the pipeline, etc.
--
-- /See:/ 'sourceMetadata' smart constructor.
data SourceMetadata =
  SourceMetadata'
    { _smEstimatedSizeBytes :: !(Maybe (Textual Int64))
    , _smProducesSortedKeys :: !(Maybe Bool)
    , _smInfinite           :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smEstimatedSizeBytes'
--
-- * 'smProducesSortedKeys'
--
-- * 'smInfinite'
sourceMetadata
    :: SourceMetadata
sourceMetadata =
  SourceMetadata'
    { _smEstimatedSizeBytes = Nothing
    , _smProducesSortedKeys = Nothing
    , _smInfinite = Nothing
    }


-- | An estimate of the total size (in bytes) of the data that would be read
-- from this source. This estimate is in terms of external storage size,
-- before any decompression or other processing done by the reader.
smEstimatedSizeBytes :: Lens' SourceMetadata (Maybe Int64)
smEstimatedSizeBytes
  = lens _smEstimatedSizeBytes
      (\ s a -> s{_smEstimatedSizeBytes = a})
      . mapping _Coerce

-- | Whether this source is known to produce key\/value pairs with the
-- (encoded) keys in lexicographically sorted order.
smProducesSortedKeys :: Lens' SourceMetadata (Maybe Bool)
smProducesSortedKeys
  = lens _smProducesSortedKeys
      (\ s a -> s{_smProducesSortedKeys = a})

-- | Specifies that the size of this source is known to be infinite (this is
-- a streaming source).
smInfinite :: Lens' SourceMetadata (Maybe Bool)
smInfinite
  = lens _smInfinite (\ s a -> s{_smInfinite = a})

instance FromJSON SourceMetadata where
        parseJSON
          = withObject "SourceMetadata"
              (\ o ->
                 SourceMetadata' <$>
                   (o .:? "estimatedSizeBytes") <*>
                     (o .:? "producesSortedKeys")
                     <*> (o .:? "infinite"))

instance ToJSON SourceMetadata where
        toJSON SourceMetadata'{..}
          = object
              (catMaybes
                 [("estimatedSizeBytes" .=) <$> _smEstimatedSizeBytes,
                  ("producesSortedKeys" .=) <$> _smProducesSortedKeys,
                  ("infinite" .=) <$> _smInfinite])

-- | Experimental settings.
--
-- /See:/ 'environmentInternalExperiments' smart constructor.
newtype EnvironmentInternalExperiments =
  EnvironmentInternalExperiments'
    { _eieAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnvironmentInternalExperiments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eieAddtional'
environmentInternalExperiments
    :: HashMap Text JSONValue -- ^ 'eieAddtional'
    -> EnvironmentInternalExperiments
environmentInternalExperiments pEieAddtional_ =
  EnvironmentInternalExperiments' {_eieAddtional = _Coerce # pEieAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
eieAddtional :: Lens' EnvironmentInternalExperiments (HashMap Text JSONValue)
eieAddtional
  = lens _eieAddtional (\ s a -> s{_eieAddtional = a})
      . _Coerce

instance FromJSON EnvironmentInternalExperiments
         where
        parseJSON
          = withObject "EnvironmentInternalExperiments"
              (\ o ->
                 EnvironmentInternalExperiments' <$>
                   (parseJSONObject o))

instance ToJSON EnvironmentInternalExperiments where
        toJSON = toJSON . _eieAddtional

-- | Taskrunner configuration settings.
--
-- /See:/ 'taskRunnerSettings' smart constructor.
data TaskRunnerSettings =
  TaskRunnerSettings'
    { _trsContinueOnException      :: !(Maybe Bool)
    , _trsHarnessCommand           :: !(Maybe Text)
    , _trsWorkflowFileName         :: !(Maybe Text)
    , _trsTaskGroup                :: !(Maybe Text)
    , _trsAlsologtostderr          :: !(Maybe Bool)
    , _trsDataflowAPIVersion       :: !(Maybe Text)
    , _trsLogDir                   :: !(Maybe Text)
    , _trsCommandlinesFileName     :: !(Maybe Text)
    , _trsVMId                     :: !(Maybe Text)
    , _trsBaseURL                  :: !(Maybe Text)
    , _trsOAuthScopes              :: !(Maybe [Text])
    , _trsTaskUser                 :: !(Maybe Text)
    , _trsStreamingWorkerMainClass :: !(Maybe Text)
    , _trsBaseTaskDir              :: !(Maybe Text)
    , _trsLogUploadLocation        :: !(Maybe Text)
    , _trsTempStoragePrefix        :: !(Maybe Text)
    , _trsLogToSerialconsole       :: !(Maybe Bool)
    , _trsParallelWorkerSettings   :: !(Maybe WorkerSettings)
    , _trsLanguageHint             :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TaskRunnerSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trsContinueOnException'
--
-- * 'trsHarnessCommand'
--
-- * 'trsWorkflowFileName'
--
-- * 'trsTaskGroup'
--
-- * 'trsAlsologtostderr'
--
-- * 'trsDataflowAPIVersion'
--
-- * 'trsLogDir'
--
-- * 'trsCommandlinesFileName'
--
-- * 'trsVMId'
--
-- * 'trsBaseURL'
--
-- * 'trsOAuthScopes'
--
-- * 'trsTaskUser'
--
-- * 'trsStreamingWorkerMainClass'
--
-- * 'trsBaseTaskDir'
--
-- * 'trsLogUploadLocation'
--
-- * 'trsTempStoragePrefix'
--
-- * 'trsLogToSerialconsole'
--
-- * 'trsParallelWorkerSettings'
--
-- * 'trsLanguageHint'
taskRunnerSettings
    :: TaskRunnerSettings
taskRunnerSettings =
  TaskRunnerSettings'
    { _trsContinueOnException = Nothing
    , _trsHarnessCommand = Nothing
    , _trsWorkflowFileName = Nothing
    , _trsTaskGroup = Nothing
    , _trsAlsologtostderr = Nothing
    , _trsDataflowAPIVersion = Nothing
    , _trsLogDir = Nothing
    , _trsCommandlinesFileName = Nothing
    , _trsVMId = Nothing
    , _trsBaseURL = Nothing
    , _trsOAuthScopes = Nothing
    , _trsTaskUser = Nothing
    , _trsStreamingWorkerMainClass = Nothing
    , _trsBaseTaskDir = Nothing
    , _trsLogUploadLocation = Nothing
    , _trsTempStoragePrefix = Nothing
    , _trsLogToSerialconsole = Nothing
    , _trsParallelWorkerSettings = Nothing
    , _trsLanguageHint = Nothing
    }


-- | Whether to continue taskrunner if an exception is hit.
trsContinueOnException :: Lens' TaskRunnerSettings (Maybe Bool)
trsContinueOnException
  = lens _trsContinueOnException
      (\ s a -> s{_trsContinueOnException = a})

-- | The command to launch the worker harness.
trsHarnessCommand :: Lens' TaskRunnerSettings (Maybe Text)
trsHarnessCommand
  = lens _trsHarnessCommand
      (\ s a -> s{_trsHarnessCommand = a})

-- | The file to store the workflow in.
trsWorkflowFileName :: Lens' TaskRunnerSettings (Maybe Text)
trsWorkflowFileName
  = lens _trsWorkflowFileName
      (\ s a -> s{_trsWorkflowFileName = a})

-- | The UNIX group ID on the worker VM to use for tasks launched by
-- taskrunner; e.g. \"wheel\".
trsTaskGroup :: Lens' TaskRunnerSettings (Maybe Text)
trsTaskGroup
  = lens _trsTaskGroup (\ s a -> s{_trsTaskGroup = a})

-- | Whether to also send taskrunner log info to stderr.
trsAlsologtostderr :: Lens' TaskRunnerSettings (Maybe Bool)
trsAlsologtostderr
  = lens _trsAlsologtostderr
      (\ s a -> s{_trsAlsologtostderr = a})

-- | The API version of endpoint, e.g. \"v1b3\"
trsDataflowAPIVersion :: Lens' TaskRunnerSettings (Maybe Text)
trsDataflowAPIVersion
  = lens _trsDataflowAPIVersion
      (\ s a -> s{_trsDataflowAPIVersion = a})

-- | The directory on the VM to store logs.
trsLogDir :: Lens' TaskRunnerSettings (Maybe Text)
trsLogDir
  = lens _trsLogDir (\ s a -> s{_trsLogDir = a})

-- | The file to store preprocessing commands in.
trsCommandlinesFileName :: Lens' TaskRunnerSettings (Maybe Text)
trsCommandlinesFileName
  = lens _trsCommandlinesFileName
      (\ s a -> s{_trsCommandlinesFileName = a})

-- | The ID string of the VM.
trsVMId :: Lens' TaskRunnerSettings (Maybe Text)
trsVMId = lens _trsVMId (\ s a -> s{_trsVMId = a})

-- | The base URL for the taskrunner to use when accessing Google Cloud APIs.
-- When workers access Google Cloud APIs, they logically do so via relative
-- URLs. If this field is specified, it supplies the base URL to use for
-- resolving these relative URLs. The normative algorithm used is defined
-- by RFC 1808, \"Relative Uniform Resource Locators\". If not specified,
-- the default value is \"http:\/\/www.googleapis.com\/\"
trsBaseURL :: Lens' TaskRunnerSettings (Maybe Text)
trsBaseURL
  = lens _trsBaseURL (\ s a -> s{_trsBaseURL = a})

-- | The OAuth2 scopes to be requested by the taskrunner in order to access
-- the Cloud Dataflow API.
trsOAuthScopes :: Lens' TaskRunnerSettings [Text]
trsOAuthScopes
  = lens _trsOAuthScopes
      (\ s a -> s{_trsOAuthScopes = a})
      . _Default
      . _Coerce

-- | The UNIX user ID on the worker VM to use for tasks launched by
-- taskrunner; e.g. \"root\".
trsTaskUser :: Lens' TaskRunnerSettings (Maybe Text)
trsTaskUser
  = lens _trsTaskUser (\ s a -> s{_trsTaskUser = a})

-- | The streaming worker main class name.
trsStreamingWorkerMainClass :: Lens' TaskRunnerSettings (Maybe Text)
trsStreamingWorkerMainClass
  = lens _trsStreamingWorkerMainClass
      (\ s a -> s{_trsStreamingWorkerMainClass = a})

-- | The location on the worker for task-specific subdirectories.
trsBaseTaskDir :: Lens' TaskRunnerSettings (Maybe Text)
trsBaseTaskDir
  = lens _trsBaseTaskDir
      (\ s a -> s{_trsBaseTaskDir = a})

-- | Indicates where to put logs. If this is not specified, the logs will not
-- be uploaded. The supported resource type is: Google Cloud Storage:
-- storage.googleapis.com\/{bucket}\/{object}
-- bucket.storage.googleapis.com\/{object}
trsLogUploadLocation :: Lens' TaskRunnerSettings (Maybe Text)
trsLogUploadLocation
  = lens _trsLogUploadLocation
      (\ s a -> s{_trsLogUploadLocation = a})

-- | The prefix of the resources the taskrunner should use for temporary
-- storage. The supported resource type is: Google Cloud Storage:
-- storage.googleapis.com\/{bucket}\/{object}
-- bucket.storage.googleapis.com\/{object}
trsTempStoragePrefix :: Lens' TaskRunnerSettings (Maybe Text)
trsTempStoragePrefix
  = lens _trsTempStoragePrefix
      (\ s a -> s{_trsTempStoragePrefix = a})

-- | Whether to send taskrunner log info to Google Compute Engine VM serial
-- console.
trsLogToSerialconsole :: Lens' TaskRunnerSettings (Maybe Bool)
trsLogToSerialconsole
  = lens _trsLogToSerialconsole
      (\ s a -> s{_trsLogToSerialconsole = a})

-- | The settings to pass to the parallel worker harness.
trsParallelWorkerSettings :: Lens' TaskRunnerSettings (Maybe WorkerSettings)
trsParallelWorkerSettings
  = lens _trsParallelWorkerSettings
      (\ s a -> s{_trsParallelWorkerSettings = a})

-- | The suggested backend language.
trsLanguageHint :: Lens' TaskRunnerSettings (Maybe Text)
trsLanguageHint
  = lens _trsLanguageHint
      (\ s a -> s{_trsLanguageHint = a})

instance FromJSON TaskRunnerSettings where
        parseJSON
          = withObject "TaskRunnerSettings"
              (\ o ->
                 TaskRunnerSettings' <$>
                   (o .:? "continueOnException") <*>
                     (o .:? "harnessCommand")
                     <*> (o .:? "workflowFileName")
                     <*> (o .:? "taskGroup")
                     <*> (o .:? "alsologtostderr")
                     <*> (o .:? "dataflowApiVersion")
                     <*> (o .:? "logDir")
                     <*> (o .:? "commandlinesFileName")
                     <*> (o .:? "vmId")
                     <*> (o .:? "baseUrl")
                     <*> (o .:? "oauthScopes" .!= mempty)
                     <*> (o .:? "taskUser")
                     <*> (o .:? "streamingWorkerMainClass")
                     <*> (o .:? "baseTaskDir")
                     <*> (o .:? "logUploadLocation")
                     <*> (o .:? "tempStoragePrefix")
                     <*> (o .:? "logToSerialconsole")
                     <*> (o .:? "parallelWorkerSettings")
                     <*> (o .:? "languageHint"))

instance ToJSON TaskRunnerSettings where
        toJSON TaskRunnerSettings'{..}
          = object
              (catMaybes
                 [("continueOnException" .=) <$>
                    _trsContinueOnException,
                  ("harnessCommand" .=) <$> _trsHarnessCommand,
                  ("workflowFileName" .=) <$> _trsWorkflowFileName,
                  ("taskGroup" .=) <$> _trsTaskGroup,
                  ("alsologtostderr" .=) <$> _trsAlsologtostderr,
                  ("dataflowApiVersion" .=) <$> _trsDataflowAPIVersion,
                  ("logDir" .=) <$> _trsLogDir,
                  ("commandlinesFileName" .=) <$>
                    _trsCommandlinesFileName,
                  ("vmId" .=) <$> _trsVMId,
                  ("baseUrl" .=) <$> _trsBaseURL,
                  ("oauthScopes" .=) <$> _trsOAuthScopes,
                  ("taskUser" .=) <$> _trsTaskUser,
                  ("streamingWorkerMainClass" .=) <$>
                    _trsStreamingWorkerMainClass,
                  ("baseTaskDir" .=) <$> _trsBaseTaskDir,
                  ("logUploadLocation" .=) <$> _trsLogUploadLocation,
                  ("tempStoragePrefix" .=) <$> _trsTempStoragePrefix,
                  ("logToSerialconsole" .=) <$> _trsLogToSerialconsole,
                  ("parallelWorkerSettings" .=) <$>
                    _trsParallelWorkerSettings,
                  ("languageHint" .=) <$> _trsLanguageHint])

-- | Configuration information for a single streaming computation.
--
-- /See:/ 'streamingComputationConfig' smart constructor.
data StreamingComputationConfig =
  StreamingComputationConfig'
    { _sccInstructions                   :: !(Maybe [ParallelInstruction])
    , _sccSystemName                     :: !(Maybe Text)
    , _sccComputationId                  :: !(Maybe Text)
    , _sccTransformUserNameToStateFamily :: !(Maybe StreamingComputationConfigTransformUserNameToStateFamily)
    , _sccStageName                      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StreamingComputationConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sccInstructions'
--
-- * 'sccSystemName'
--
-- * 'sccComputationId'
--
-- * 'sccTransformUserNameToStateFamily'
--
-- * 'sccStageName'
streamingComputationConfig
    :: StreamingComputationConfig
streamingComputationConfig =
  StreamingComputationConfig'
    { _sccInstructions = Nothing
    , _sccSystemName = Nothing
    , _sccComputationId = Nothing
    , _sccTransformUserNameToStateFamily = Nothing
    , _sccStageName = Nothing
    }


-- | Instructions that comprise the computation.
sccInstructions :: Lens' StreamingComputationConfig [ParallelInstruction]
sccInstructions
  = lens _sccInstructions
      (\ s a -> s{_sccInstructions = a})
      . _Default
      . _Coerce

-- | System defined name for this computation.
sccSystemName :: Lens' StreamingComputationConfig (Maybe Text)
sccSystemName
  = lens _sccSystemName
      (\ s a -> s{_sccSystemName = a})

-- | Unique identifier for this computation.
sccComputationId :: Lens' StreamingComputationConfig (Maybe Text)
sccComputationId
  = lens _sccComputationId
      (\ s a -> s{_sccComputationId = a})

-- | Map from user name of stateful transforms in this stage to their state
-- family.
sccTransformUserNameToStateFamily :: Lens' StreamingComputationConfig (Maybe StreamingComputationConfigTransformUserNameToStateFamily)
sccTransformUserNameToStateFamily
  = lens _sccTransformUserNameToStateFamily
      (\ s a -> s{_sccTransformUserNameToStateFamily = a})

-- | Stage name of this computation.
sccStageName :: Lens' StreamingComputationConfig (Maybe Text)
sccStageName
  = lens _sccStageName (\ s a -> s{_sccStageName = a})

instance FromJSON StreamingComputationConfig where
        parseJSON
          = withObject "StreamingComputationConfig"
              (\ o ->
                 StreamingComputationConfig' <$>
                   (o .:? "instructions" .!= mempty) <*>
                     (o .:? "systemName")
                     <*> (o .:? "computationId")
                     <*> (o .:? "transformUserNameToStateFamily")
                     <*> (o .:? "stageName"))

instance ToJSON StreamingComputationConfig where
        toJSON StreamingComputationConfig'{..}
          = object
              (catMaybes
                 [("instructions" .=) <$> _sccInstructions,
                  ("systemName" .=) <$> _sccSystemName,
                  ("computationId" .=) <$> _sccComputationId,
                  ("transformUserNameToStateFamily" .=) <$>
                    _sccTransformUserNameToStateFamily,
                  ("stageName" .=) <$> _sccStageName])

-- | The Cloud Dataflow SDK pipeline options specified by the user. These
-- options are passed through the service and are used to recreate the SDK
-- pipeline options on the worker in a language agnostic and platform
-- independent way.
--
-- /See:/ 'environmentSdkPipelineOptions' smart constructor.
newtype EnvironmentSdkPipelineOptions =
  EnvironmentSdkPipelineOptions'
    { _espoAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnvironmentSdkPipelineOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'espoAddtional'
environmentSdkPipelineOptions
    :: HashMap Text JSONValue -- ^ 'espoAddtional'
    -> EnvironmentSdkPipelineOptions
environmentSdkPipelineOptions pEspoAddtional_ =
  EnvironmentSdkPipelineOptions' {_espoAddtional = _Coerce # pEspoAddtional_}


-- | Properties of the object.
espoAddtional :: Lens' EnvironmentSdkPipelineOptions (HashMap Text JSONValue)
espoAddtional
  = lens _espoAddtional
      (\ s a -> s{_espoAddtional = a})
      . _Coerce

instance FromJSON EnvironmentSdkPipelineOptions where
        parseJSON
          = withObject "EnvironmentSdkPipelineOptions"
              (\ o ->
                 EnvironmentSdkPipelineOptions' <$>
                   (parseJSONObject o))

instance ToJSON EnvironmentSdkPipelineOptions where
        toJSON = toJSON . _espoAddtional

-- | A representation of a floating point mean metric contribution.
--
-- /See:/ 'floatingPointMean' smart constructor.
data FloatingPointMean =
  FloatingPointMean'
    { _fpmCount :: !(Maybe SplitInt64)
    , _fpmSum   :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FloatingPointMean' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fpmCount'
--
-- * 'fpmSum'
floatingPointMean
    :: FloatingPointMean
floatingPointMean = FloatingPointMean' {_fpmCount = Nothing, _fpmSum = Nothing}


-- | The number of values being aggregated.
fpmCount :: Lens' FloatingPointMean (Maybe SplitInt64)
fpmCount = lens _fpmCount (\ s a -> s{_fpmCount = a})

-- | The sum of all values being aggregated.
fpmSum :: Lens' FloatingPointMean (Maybe Double)
fpmSum
  = lens _fpmSum (\ s a -> s{_fpmSum = a}) .
      mapping _Coerce

instance FromJSON FloatingPointMean where
        parseJSON
          = withObject "FloatingPointMean"
              (\ o ->
                 FloatingPointMean' <$>
                   (o .:? "count") <*> (o .:? "sum"))

instance ToJSON FloatingPointMean where
        toJSON FloatingPointMean'{..}
          = object
              (catMaybes
                 [("count" .=) <$> _fpmCount, ("sum" .=) <$> _fpmSum])

-- | Modeled after information exposed by \/proc\/stat.
--
-- /See:/ 'cpuTime' smart constructor.
data CPUTime =
  CPUTime'
    { _ctTotalMs   :: !(Maybe (Textual Word64))
    , _ctRate      :: !(Maybe (Textual Double))
    , _ctTimestamp :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CPUTime' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctTotalMs'
--
-- * 'ctRate'
--
-- * 'ctTimestamp'
cpuTime
    :: CPUTime
cpuTime =
  CPUTime' {_ctTotalMs = Nothing, _ctRate = Nothing, _ctTimestamp = Nothing}


-- | Total active CPU time across all cores (ie., non-idle) in milliseconds
-- since start-up.
ctTotalMs :: Lens' CPUTime (Maybe Word64)
ctTotalMs
  = lens _ctTotalMs (\ s a -> s{_ctTotalMs = a}) .
      mapping _Coerce

-- | Average CPU utilization rate (% non-idle cpu \/ second) since previous
-- sample.
ctRate :: Lens' CPUTime (Maybe Double)
ctRate
  = lens _ctRate (\ s a -> s{_ctRate = a}) .
      mapping _Coerce

-- | Timestamp of the measurement.
ctTimestamp :: Lens' CPUTime (Maybe UTCTime)
ctTimestamp
  = lens _ctTimestamp (\ s a -> s{_ctTimestamp = a}) .
      mapping _DateTime

instance FromJSON CPUTime where
        parseJSON
          = withObject "CPUTime"
              (\ o ->
                 CPUTime' <$>
                   (o .:? "totalMs") <*> (o .:? "rate") <*>
                     (o .:? "timestamp"))

instance ToJSON CPUTime where
        toJSON CPUTime'{..}
          = object
              (catMaybes
                 [("totalMs" .=) <$> _ctTotalMs,
                  ("rate" .=) <$> _ctRate,
                  ("timestamp" .=) <$> _ctTimestamp])

-- | Request to lease WorkItems.
--
-- /See:/ 'leaseWorkItemRequest' smart constructor.
data LeaseWorkItemRequest =
  LeaseWorkItemRequest'
    { _lwirWorkItemTypes          :: !(Maybe [Text])
    , _lwirCurrentWorkerTime      :: !(Maybe DateTime')
    , _lwirLocation               :: !(Maybe Text)
    , _lwirWorkerCapabilities     :: !(Maybe [Text])
    , _lwirUnifiedWorkerRequest   :: !(Maybe LeaseWorkItemRequestUnifiedWorkerRequest)
    , _lwirRequestedLeaseDuration :: !(Maybe GDuration)
    , _lwirWorkerId               :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LeaseWorkItemRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lwirWorkItemTypes'
--
-- * 'lwirCurrentWorkerTime'
--
-- * 'lwirLocation'
--
-- * 'lwirWorkerCapabilities'
--
-- * 'lwirUnifiedWorkerRequest'
--
-- * 'lwirRequestedLeaseDuration'
--
-- * 'lwirWorkerId'
leaseWorkItemRequest
    :: LeaseWorkItemRequest
leaseWorkItemRequest =
  LeaseWorkItemRequest'
    { _lwirWorkItemTypes = Nothing
    , _lwirCurrentWorkerTime = Nothing
    , _lwirLocation = Nothing
    , _lwirWorkerCapabilities = Nothing
    , _lwirUnifiedWorkerRequest = Nothing
    , _lwirRequestedLeaseDuration = Nothing
    , _lwirWorkerId = Nothing
    }


-- | Filter for WorkItem type.
lwirWorkItemTypes :: Lens' LeaseWorkItemRequest [Text]
lwirWorkItemTypes
  = lens _lwirWorkItemTypes
      (\ s a -> s{_lwirWorkItemTypes = a})
      . _Default
      . _Coerce

-- | The current timestamp at the worker.
lwirCurrentWorkerTime :: Lens' LeaseWorkItemRequest (Maybe UTCTime)
lwirCurrentWorkerTime
  = lens _lwirCurrentWorkerTime
      (\ s a -> s{_lwirCurrentWorkerTime = a})
      . mapping _DateTime

-- | The location which contains the WorkItem\'s job.
lwirLocation :: Lens' LeaseWorkItemRequest (Maybe Text)
lwirLocation
  = lens _lwirLocation (\ s a -> s{_lwirLocation = a})

-- | Worker capabilities. WorkItems might be limited to workers with specific
-- capabilities.
lwirWorkerCapabilities :: Lens' LeaseWorkItemRequest [Text]
lwirWorkerCapabilities
  = lens _lwirWorkerCapabilities
      (\ s a -> s{_lwirWorkerCapabilities = a})
      . _Default
      . _Coerce

-- | Untranslated bag-of-bytes WorkRequest from UnifiedWorker.
lwirUnifiedWorkerRequest :: Lens' LeaseWorkItemRequest (Maybe LeaseWorkItemRequestUnifiedWorkerRequest)
lwirUnifiedWorkerRequest
  = lens _lwirUnifiedWorkerRequest
      (\ s a -> s{_lwirUnifiedWorkerRequest = a})

-- | The initial lease period.
lwirRequestedLeaseDuration :: Lens' LeaseWorkItemRequest (Maybe Scientific)
lwirRequestedLeaseDuration
  = lens _lwirRequestedLeaseDuration
      (\ s a -> s{_lwirRequestedLeaseDuration = a})
      . mapping _GDuration

-- | Identifies the worker leasing work -- typically the ID of the virtual
-- machine running the worker.
lwirWorkerId :: Lens' LeaseWorkItemRequest (Maybe Text)
lwirWorkerId
  = lens _lwirWorkerId (\ s a -> s{_lwirWorkerId = a})

instance FromJSON LeaseWorkItemRequest where
        parseJSON
          = withObject "LeaseWorkItemRequest"
              (\ o ->
                 LeaseWorkItemRequest' <$>
                   (o .:? "workItemTypes" .!= mempty) <*>
                     (o .:? "currentWorkerTime")
                     <*> (o .:? "location")
                     <*> (o .:? "workerCapabilities" .!= mempty)
                     <*> (o .:? "unifiedWorkerRequest")
                     <*> (o .:? "requestedLeaseDuration")
                     <*> (o .:? "workerId"))

instance ToJSON LeaseWorkItemRequest where
        toJSON LeaseWorkItemRequest'{..}
          = object
              (catMaybes
                 [("workItemTypes" .=) <$> _lwirWorkItemTypes,
                  ("currentWorkerTime" .=) <$> _lwirCurrentWorkerTime,
                  ("location" .=) <$> _lwirLocation,
                  ("workerCapabilities" .=) <$>
                    _lwirWorkerCapabilities,
                  ("unifiedWorkerRequest" .=) <$>
                    _lwirUnifiedWorkerRequest,
                  ("requestedLeaseDuration" .=) <$>
                    _lwirRequestedLeaseDuration,
                  ("workerId" .=) <$> _lwirWorkerId])

-- | The result of a SourceOperationRequest, specified in
-- ReportWorkItemStatusRequest.source_operation when the work item is
-- completed.
--
-- /See:/ 'sourceOperationResponse' smart constructor.
data SourceOperationResponse =
  SourceOperationResponse'
    { _sorSplit       :: !(Maybe SourceSplitResponse)
    , _sorGetMetadata :: !(Maybe SourceGetMetadataResponse)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceOperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sorSplit'
--
-- * 'sorGetMetadata'
sourceOperationResponse
    :: SourceOperationResponse
sourceOperationResponse =
  SourceOperationResponse' {_sorSplit = Nothing, _sorGetMetadata = Nothing}


-- | A response to a request to split a source.
sorSplit :: Lens' SourceOperationResponse (Maybe SourceSplitResponse)
sorSplit = lens _sorSplit (\ s a -> s{_sorSplit = a})

-- | A response to a request to get metadata about a source.
sorGetMetadata :: Lens' SourceOperationResponse (Maybe SourceGetMetadataResponse)
sorGetMetadata
  = lens _sorGetMetadata
      (\ s a -> s{_sorGetMetadata = a})

instance FromJSON SourceOperationResponse where
        parseJSON
          = withObject "SourceOperationResponse"
              (\ o ->
                 SourceOperationResponse' <$>
                   (o .:? "split") <*> (o .:? "getMetadata"))

instance ToJSON SourceOperationResponse where
        toJSON SourceOperationResponse'{..}
          = object
              (catMaybes
                 [("split" .=) <$> _sorSplit,
                  ("getMetadata" .=) <$> _sorGetMetadata])

-- | Maps user stage names to stable computation names.
--
-- /See:/ 'topologyConfigUserStageToComputationNameMap' smart constructor.
newtype TopologyConfigUserStageToComputationNameMap =
  TopologyConfigUserStageToComputationNameMap'
    { _tcustcnmAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TopologyConfigUserStageToComputationNameMap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcustcnmAddtional'
topologyConfigUserStageToComputationNameMap
    :: HashMap Text Text -- ^ 'tcustcnmAddtional'
    -> TopologyConfigUserStageToComputationNameMap
topologyConfigUserStageToComputationNameMap pTcustcnmAddtional_ =
  TopologyConfigUserStageToComputationNameMap'
    {_tcustcnmAddtional = _Coerce # pTcustcnmAddtional_}


tcustcnmAddtional :: Lens' TopologyConfigUserStageToComputationNameMap (HashMap Text Text)
tcustcnmAddtional
  = lens _tcustcnmAddtional
      (\ s a -> s{_tcustcnmAddtional = a})
      . _Coerce

instance FromJSON
           TopologyConfigUserStageToComputationNameMap
         where
        parseJSON
          = withObject
              "TopologyConfigUserStageToComputationNameMap"
              (\ o ->
                 TopologyConfigUserStageToComputationNameMap' <$>
                   (parseJSONObject o))

instance ToJSON
           TopologyConfigUserStageToComputationNameMap
         where
        toJSON = toJSON . _tcustcnmAddtional

-- | A task which consists of a shell command for the worker to execute.
--
-- /See:/ 'shellTask' smart constructor.
data ShellTask =
  ShellTask'
    { _stCommand  :: !(Maybe Text)
    , _stExitCode :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShellTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stCommand'
--
-- * 'stExitCode'
shellTask
    :: ShellTask
shellTask = ShellTask' {_stCommand = Nothing, _stExitCode = Nothing}


-- | The shell command to run.
stCommand :: Lens' ShellTask (Maybe Text)
stCommand
  = lens _stCommand (\ s a -> s{_stCommand = a})

-- | Exit code for the task.
stExitCode :: Lens' ShellTask (Maybe Int32)
stExitCode
  = lens _stExitCode (\ s a -> s{_stExitCode = a}) .
      mapping _Coerce

instance FromJSON ShellTask where
        parseJSON
          = withObject "ShellTask"
              (\ o ->
                 ShellTask' <$>
                   (o .:? "command") <*> (o .:? "exitCode"))

instance ToJSON ShellTask where
        toJSON ShellTask'{..}
          = object
              (catMaybes
                 [("command" .=) <$> _stCommand,
                  ("exitCode" .=) <$> _stExitCode])

-- | Metadata for a Datastore connector used by the job.
--
-- /See:/ 'datastoreIODetails' smart constructor.
data DatastoreIODetails =
  DatastoreIODetails'
    { _diodNamespace :: !(Maybe Text)
    , _diodProjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatastoreIODetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diodNamespace'
--
-- * 'diodProjectId'
datastoreIODetails
    :: DatastoreIODetails
datastoreIODetails =
  DatastoreIODetails' {_diodNamespace = Nothing, _diodProjectId = Nothing}


-- | Namespace used in the connection.
diodNamespace :: Lens' DatastoreIODetails (Maybe Text)
diodNamespace
  = lens _diodNamespace
      (\ s a -> s{_diodNamespace = a})

-- | ProjectId accessed in the connection.
diodProjectId :: Lens' DatastoreIODetails (Maybe Text)
diodProjectId
  = lens _diodProjectId
      (\ s a -> s{_diodProjectId = a})

instance FromJSON DatastoreIODetails where
        parseJSON
          = withObject "DatastoreIODetails"
              (\ o ->
                 DatastoreIODetails' <$>
                   (o .:? "namespace") <*> (o .:? "projectId"))

instance ToJSON DatastoreIODetails where
        toJSON DatastoreIODetails'{..}
          = object
              (catMaybes
                 [("namespace" .=) <$> _diodNamespace,
                  ("projectId" .=) <$> _diodProjectId])

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

-- | Represents the level of parallelism in a WorkItem\'s input, reported by
-- the worker.
--
-- /See:/ 'reportedParallelism' smart constructor.
data ReportedParallelism =
  ReportedParallelism'
    { _rpValue      :: !(Maybe (Textual Double))
    , _rpIsInfinite :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportedParallelism' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpValue'
--
-- * 'rpIsInfinite'
reportedParallelism
    :: ReportedParallelism
reportedParallelism =
  ReportedParallelism' {_rpValue = Nothing, _rpIsInfinite = Nothing}


-- | Specifies the level of parallelism in case it is finite.
rpValue :: Lens' ReportedParallelism (Maybe Double)
rpValue
  = lens _rpValue (\ s a -> s{_rpValue = a}) .
      mapping _Coerce

-- | Specifies whether the parallelism is infinite. If true, \"value\" is
-- ignored. Infinite parallelism means the service will assume that the
-- work item can always be split into more non-empty work items by dynamic
-- splitting. This is a work-around for lack of support for infinity by the
-- current JSON-based Java RPC stack.
rpIsInfinite :: Lens' ReportedParallelism (Maybe Bool)
rpIsInfinite
  = lens _rpIsInfinite (\ s a -> s{_rpIsInfinite = a})

instance FromJSON ReportedParallelism where
        parseJSON
          = withObject "ReportedParallelism"
              (\ o ->
                 ReportedParallelism' <$>
                   (o .:? "value") <*> (o .:? "isInfinite"))

instance ToJSON ReportedParallelism where
        toJSON ReportedParallelism'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _rpValue,
                  ("isInfinite" .=) <$> _rpIsInfinite])

-- | Named properties associated with the step. Each kind of predefined step
-- has its own required set of properties. Must be provided on Create. Only
-- retrieved with JOB_VIEW_ALL.
--
-- /See:/ 'stepProperties' smart constructor.
newtype StepProperties =
  StepProperties'
    { _spAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StepProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spAddtional'
stepProperties
    :: HashMap Text JSONValue -- ^ 'spAddtional'
    -> StepProperties
stepProperties pSpAddtional_ =
  StepProperties' {_spAddtional = _Coerce # pSpAddtional_}


-- | Properties of the object.
spAddtional :: Lens' StepProperties (HashMap Text JSONValue)
spAddtional
  = lens _spAddtional (\ s a -> s{_spAddtional = a}) .
      _Coerce

instance FromJSON StepProperties where
        parseJSON
          = withObject "StepProperties"
              (\ o -> StepProperties' <$> (parseJSONObject o))

instance ToJSON StepProperties where
        toJSON = toJSON . _spAddtional

-- | Global topology of the streaming Dataflow job, including all
-- computations and their sharded locations.
--
-- /See:/ 'topologyConfig' smart constructor.
data TopologyConfig =
  TopologyConfig'
    { _tcDataDiskAssignments           :: !(Maybe [DataDiskAssignment])
    , _tcPersistentStateVersion        :: !(Maybe (Textual Int32))
    , _tcForwardingKeyBits             :: !(Maybe (Textual Int32))
    , _tcUserStageToComputationNameMap :: !(Maybe TopologyConfigUserStageToComputationNameMap)
    , _tcComputations                  :: !(Maybe [ComputationTopology])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TopologyConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcDataDiskAssignments'
--
-- * 'tcPersistentStateVersion'
--
-- * 'tcForwardingKeyBits'
--
-- * 'tcUserStageToComputationNameMap'
--
-- * 'tcComputations'
topologyConfig
    :: TopologyConfig
topologyConfig =
  TopologyConfig'
    { _tcDataDiskAssignments = Nothing
    , _tcPersistentStateVersion = Nothing
    , _tcForwardingKeyBits = Nothing
    , _tcUserStageToComputationNameMap = Nothing
    , _tcComputations = Nothing
    }


-- | The disks assigned to a streaming Dataflow job.
tcDataDiskAssignments :: Lens' TopologyConfig [DataDiskAssignment]
tcDataDiskAssignments
  = lens _tcDataDiskAssignments
      (\ s a -> s{_tcDataDiskAssignments = a})
      . _Default
      . _Coerce

-- | Version number for persistent state.
tcPersistentStateVersion :: Lens' TopologyConfig (Maybe Int32)
tcPersistentStateVersion
  = lens _tcPersistentStateVersion
      (\ s a -> s{_tcPersistentStateVersion = a})
      . mapping _Coerce

-- | The size (in bits) of keys that will be assigned to source messages.
tcForwardingKeyBits :: Lens' TopologyConfig (Maybe Int32)
tcForwardingKeyBits
  = lens _tcForwardingKeyBits
      (\ s a -> s{_tcForwardingKeyBits = a})
      . mapping _Coerce

-- | Maps user stage names to stable computation names.
tcUserStageToComputationNameMap :: Lens' TopologyConfig (Maybe TopologyConfigUserStageToComputationNameMap)
tcUserStageToComputationNameMap
  = lens _tcUserStageToComputationNameMap
      (\ s a -> s{_tcUserStageToComputationNameMap = a})

-- | The computations associated with a streaming Dataflow job.
tcComputations :: Lens' TopologyConfig [ComputationTopology]
tcComputations
  = lens _tcComputations
      (\ s a -> s{_tcComputations = a})
      . _Default
      . _Coerce

instance FromJSON TopologyConfig where
        parseJSON
          = withObject "TopologyConfig"
              (\ o ->
                 TopologyConfig' <$>
                   (o .:? "dataDiskAssignments" .!= mempty) <*>
                     (o .:? "persistentStateVersion")
                     <*> (o .:? "forwardingKeyBits")
                     <*> (o .:? "userStageToComputationNameMap")
                     <*> (o .:? "computations" .!= mempty))

instance ToJSON TopologyConfig where
        toJSON TopologyConfig'{..}
          = object
              (catMaybes
                 [("dataDiskAssignments" .=) <$>
                    _tcDataDiskAssignments,
                  ("persistentStateVersion" .=) <$>
                    _tcPersistentStateVersion,
                  ("forwardingKeyBits" .=) <$> _tcForwardingKeyBits,
                  ("userStageToComputationNameMap" .=) <$>
                    _tcUserStageToComputationNameMap,
                  ("computations" .=) <$> _tcComputations])

-- | A suggestion by the service to the worker to dynamically split the
-- WorkItem.
--
-- /See:/ 'approximateSplitRequest' smart constructor.
data ApproximateSplitRequest =
  ApproximateSplitRequest'
    { _asrFractionConsumed    :: !(Maybe (Textual Double))
    , _asrFractionOfRemainder :: !(Maybe (Textual Double))
    , _asrPosition            :: !(Maybe Position)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ApproximateSplitRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asrFractionConsumed'
--
-- * 'asrFractionOfRemainder'
--
-- * 'asrPosition'
approximateSplitRequest
    :: ApproximateSplitRequest
approximateSplitRequest =
  ApproximateSplitRequest'
    { _asrFractionConsumed = Nothing
    , _asrFractionOfRemainder = Nothing
    , _asrPosition = Nothing
    }


-- | A fraction at which to split the work item, from 0.0 (beginning of the
-- input) to 1.0 (end of the input).
asrFractionConsumed :: Lens' ApproximateSplitRequest (Maybe Double)
asrFractionConsumed
  = lens _asrFractionConsumed
      (\ s a -> s{_asrFractionConsumed = a})
      . mapping _Coerce

-- | The fraction of the remainder of work to split the work item at, from
-- 0.0 (split at the current position) to 1.0 (end of the input).
asrFractionOfRemainder :: Lens' ApproximateSplitRequest (Maybe Double)
asrFractionOfRemainder
  = lens _asrFractionOfRemainder
      (\ s a -> s{_asrFractionOfRemainder = a})
      . mapping _Coerce

-- | A Position at which to split the work item.
asrPosition :: Lens' ApproximateSplitRequest (Maybe Position)
asrPosition
  = lens _asrPosition (\ s a -> s{_asrPosition = a})

instance FromJSON ApproximateSplitRequest where
        parseJSON
          = withObject "ApproximateSplitRequest"
              (\ o ->
                 ApproximateSplitRequest' <$>
                   (o .:? "fractionConsumed") <*>
                     (o .:? "fractionOfRemainder")
                     <*> (o .:? "position"))

instance ToJSON ApproximateSplitRequest where
        toJSON ApproximateSplitRequest'{..}
          = object
              (catMaybes
                 [("fractionConsumed" .=) <$> _asrFractionConsumed,
                  ("fractionOfRemainder" .=) <$>
                    _asrFractionOfRemainder,
                  ("position" .=) <$> _asrPosition])

-- | A representation of an int64, n, that is immune to precision loss when
-- encoded in JSON.
--
-- /See:/ 'splitInt64' smart constructor.
data SplitInt64 =
  SplitInt64'
    { _siHighBits :: !(Maybe (Textual Int32))
    , _siLowBits  :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SplitInt64' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siHighBits'
--
-- * 'siLowBits'
splitInt64
    :: SplitInt64
splitInt64 = SplitInt64' {_siHighBits = Nothing, _siLowBits = Nothing}


-- | The high order bits, including the sign: n >> 32.
siHighBits :: Lens' SplitInt64 (Maybe Int32)
siHighBits
  = lens _siHighBits (\ s a -> s{_siHighBits = a}) .
      mapping _Coerce

-- | The low order bits: n & 0xffffffff.
siLowBits :: Lens' SplitInt64 (Maybe Word32)
siLowBits
  = lens _siLowBits (\ s a -> s{_siLowBits = a}) .
      mapping _Coerce

instance FromJSON SplitInt64 where
        parseJSON
          = withObject "SplitInt64"
              (\ o ->
                 SplitInt64' <$>
                   (o .:? "highBits") <*> (o .:? "lowBits"))

instance ToJSON SplitInt64 where
        toJSON SplitInt64'{..}
          = object
              (catMaybes
                 [("highBits" .=) <$> _siHighBits,
                  ("lowBits" .=) <$> _siLowBits])

-- | Provides data to pass through to the worker harness.
--
-- /See:/ 'workerSettings' smart constructor.
data WorkerSettings =
  WorkerSettings'
    { _wsServicePath        :: !(Maybe Text)
    , _wsBaseURL            :: !(Maybe Text)
    , _wsShuffleServicePath :: !(Maybe Text)
    , _wsTempStoragePrefix  :: !(Maybe Text)
    , _wsReportingEnabled   :: !(Maybe Bool)
    , _wsWorkerId           :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkerSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wsServicePath'
--
-- * 'wsBaseURL'
--
-- * 'wsShuffleServicePath'
--
-- * 'wsTempStoragePrefix'
--
-- * 'wsReportingEnabled'
--
-- * 'wsWorkerId'
workerSettings
    :: WorkerSettings
workerSettings =
  WorkerSettings'
    { _wsServicePath = Nothing
    , _wsBaseURL = Nothing
    , _wsShuffleServicePath = Nothing
    , _wsTempStoragePrefix = Nothing
    , _wsReportingEnabled = Nothing
    , _wsWorkerId = Nothing
    }


-- | The Cloud Dataflow service path relative to the root URL, for example,
-- \"dataflow\/v1b3\/projects\".
wsServicePath :: Lens' WorkerSettings (Maybe Text)
wsServicePath
  = lens _wsServicePath
      (\ s a -> s{_wsServicePath = a})

-- | The base URL for accessing Google Cloud APIs. When workers access Google
-- Cloud APIs, they logically do so via relative URLs. If this field is
-- specified, it supplies the base URL to use for resolving these relative
-- URLs. The normative algorithm used is defined by RFC 1808, \"Relative
-- Uniform Resource Locators\". If not specified, the default value is
-- \"http:\/\/www.googleapis.com\/\"
wsBaseURL :: Lens' WorkerSettings (Maybe Text)
wsBaseURL
  = lens _wsBaseURL (\ s a -> s{_wsBaseURL = a})

-- | The Shuffle service path relative to the root URL, for example,
-- \"shuffle\/v1beta1\".
wsShuffleServicePath :: Lens' WorkerSettings (Maybe Text)
wsShuffleServicePath
  = lens _wsShuffleServicePath
      (\ s a -> s{_wsShuffleServicePath = a})

-- | The prefix of the resources the system should use for temporary storage.
-- The supported resource type is: Google Cloud Storage:
-- storage.googleapis.com\/{bucket}\/{object}
-- bucket.storage.googleapis.com\/{object}
wsTempStoragePrefix :: Lens' WorkerSettings (Maybe Text)
wsTempStoragePrefix
  = lens _wsTempStoragePrefix
      (\ s a -> s{_wsTempStoragePrefix = a})

-- | Whether to send work progress updates to the service.
wsReportingEnabled :: Lens' WorkerSettings (Maybe Bool)
wsReportingEnabled
  = lens _wsReportingEnabled
      (\ s a -> s{_wsReportingEnabled = a})

-- | The ID of the worker running this pipeline.
wsWorkerId :: Lens' WorkerSettings (Maybe Text)
wsWorkerId
  = lens _wsWorkerId (\ s a -> s{_wsWorkerId = a})

instance FromJSON WorkerSettings where
        parseJSON
          = withObject "WorkerSettings"
              (\ o ->
                 WorkerSettings' <$>
                   (o .:? "servicePath") <*> (o .:? "baseUrl") <*>
                     (o .:? "shuffleServicePath")
                     <*> (o .:? "tempStoragePrefix")
                     <*> (o .:? "reportingEnabled")
                     <*> (o .:? "workerId"))

instance ToJSON WorkerSettings where
        toJSON WorkerSettings'{..}
          = object
              (catMaybes
                 [("servicePath" .=) <$> _wsServicePath,
                  ("baseUrl" .=) <$> _wsBaseURL,
                  ("shuffleServicePath" .=) <$> _wsShuffleServicePath,
                  ("tempStoragePrefix" .=) <$> _wsTempStoragePrefix,
                  ("reportingEnabled" .=) <$> _wsReportingEnabled,
                  ("workerId" .=) <$> _wsWorkerId])

-- | Response to a get debug configuration request.
--
-- /See:/ 'getDebugConfigResponse' smart constructor.
newtype GetDebugConfigResponse =
  GetDebugConfigResponse'
    { _gdcrConfig :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetDebugConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdcrConfig'
getDebugConfigResponse
    :: GetDebugConfigResponse
getDebugConfigResponse = GetDebugConfigResponse' {_gdcrConfig = Nothing}


-- | The encoded debug configuration for the requested component.
gdcrConfig :: Lens' GetDebugConfigResponse (Maybe Text)
gdcrConfig
  = lens _gdcrConfig (\ s a -> s{_gdcrConfig = a})

instance FromJSON GetDebugConfigResponse where
        parseJSON
          = withObject "GetDebugConfigResponse"
              (\ o -> GetDebugConfigResponse' <$> (o .:? "config"))

instance ToJSON GetDebugConfigResponse where
        toJSON GetDebugConfigResponse'{..}
          = object (catMaybes [("config" .=) <$> _gdcrConfig])

-- | The version of the SDK used to run the jobl
--
-- /See:/ 'sdkVersion' smart constructor.
data SdkVersion =
  SdkVersion'
    { _svSdkSupportStatus   :: !(Maybe SdkVersionSdkSupportStatus)
    , _svVersionDisplayName :: !(Maybe Text)
    , _svVersion            :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SdkVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svSdkSupportStatus'
--
-- * 'svVersionDisplayName'
--
-- * 'svVersion'
sdkVersion
    :: SdkVersion
sdkVersion =
  SdkVersion'
    { _svSdkSupportStatus = Nothing
    , _svVersionDisplayName = Nothing
    , _svVersion = Nothing
    }


-- | The support status for this SDK version.
svSdkSupportStatus :: Lens' SdkVersion (Maybe SdkVersionSdkSupportStatus)
svSdkSupportStatus
  = lens _svSdkSupportStatus
      (\ s a -> s{_svSdkSupportStatus = a})

-- | A readable string describing the version of the sdk.
svVersionDisplayName :: Lens' SdkVersion (Maybe Text)
svVersionDisplayName
  = lens _svVersionDisplayName
      (\ s a -> s{_svVersionDisplayName = a})

-- | The version of the SDK used to run the job.
svVersion :: Lens' SdkVersion (Maybe Text)
svVersion
  = lens _svVersion (\ s a -> s{_svVersion = a})

instance FromJSON SdkVersion where
        parseJSON
          = withObject "SdkVersion"
              (\ o ->
                 SdkVersion' <$>
                   (o .:? "sdkSupportStatus") <*>
                     (o .:? "versionDisplayName")
                     <*> (o .:? "version"))

instance ToJSON SdkVersion where
        toJSON SdkVersion'{..}
          = object
              (catMaybes
                 [("sdkSupportStatus" .=) <$> _svSdkSupportStatus,
                  ("versionDisplayName" .=) <$> _svVersionDisplayName,
                  ("version" .=) <$> _svVersion])

-- | Other data returned by the service, specific to the particular worker
-- harness.
--
-- /See:/ 'workItemServiceStateHarnessData' smart constructor.
newtype WorkItemServiceStateHarnessData =
  WorkItemServiceStateHarnessData'
    { _wisshdAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkItemServiceStateHarnessData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wisshdAddtional'
workItemServiceStateHarnessData
    :: HashMap Text JSONValue -- ^ 'wisshdAddtional'
    -> WorkItemServiceStateHarnessData
workItemServiceStateHarnessData pWisshdAddtional_ =
  WorkItemServiceStateHarnessData'
    {_wisshdAddtional = _Coerce # pWisshdAddtional_}


-- | Properties of the object.
wisshdAddtional :: Lens' WorkItemServiceStateHarnessData (HashMap Text JSONValue)
wisshdAddtional
  = lens _wisshdAddtional
      (\ s a -> s{_wisshdAddtional = a})
      . _Coerce

instance FromJSON WorkItemServiceStateHarnessData
         where
        parseJSON
          = withObject "WorkItemServiceStateHarnessData"
              (\ o ->
                 WorkItemServiceStateHarnessData' <$>
                   (parseJSONObject o))

instance ToJSON WorkItemServiceStateHarnessData where
        toJSON = toJSON . _wisshdAddtional

-- | Data disk assignment for a given VM instance.
--
-- /See:/ 'dataDiskAssignment' smart constructor.
data DataDiskAssignment =
  DataDiskAssignment'
    { _ddaVMInstance :: !(Maybe Text)
    , _ddaDataDisks  :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataDiskAssignment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddaVMInstance'
--
-- * 'ddaDataDisks'
dataDiskAssignment
    :: DataDiskAssignment
dataDiskAssignment =
  DataDiskAssignment' {_ddaVMInstance = Nothing, _ddaDataDisks = Nothing}


-- | VM instance name the data disks mounted to, for example
-- \"myproject-1014-104817-4c2-harness-0\".
ddaVMInstance :: Lens' DataDiskAssignment (Maybe Text)
ddaVMInstance
  = lens _ddaVMInstance
      (\ s a -> s{_ddaVMInstance = a})

-- | Mounted data disks. The order is important a data disk\'s 0-based index
-- in this list defines which persistent directory the disk is mounted to,
-- for example the list of { \"myproject-1014-104817-4c2-harness-0-disk-0\"
-- }, { \"myproject-1014-104817-4c2-harness-0-disk-1\" }.
ddaDataDisks :: Lens' DataDiskAssignment [Text]
ddaDataDisks
  = lens _ddaDataDisks (\ s a -> s{_ddaDataDisks = a})
      . _Default
      . _Coerce

instance FromJSON DataDiskAssignment where
        parseJSON
          = withObject "DataDiskAssignment"
              (\ o ->
                 DataDiskAssignment' <$>
                   (o .:? "vmInstance") <*>
                     (o .:? "dataDisks" .!= mempty))

instance ToJSON DataDiskAssignment where
        toJSON DataDiskAssignment'{..}
          = object
              (catMaybes
                 [("vmInstance" .=) <$> _ddaVMInstance,
                  ("dataDisks" .=) <$> _ddaDataDisks])

-- | Worker metrics exported from workers. This contains resource utilization
-- metrics accumulated from a variety of sources. For more information, see
-- go\/df-resource-signals.
--
-- /See:/ 'resourceUtilizationReport' smart constructor.
newtype ResourceUtilizationReport =
  ResourceUtilizationReport'
    { _rurCPUTime :: Maybe [CPUTime]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceUtilizationReport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rurCPUTime'
resourceUtilizationReport
    :: ResourceUtilizationReport
resourceUtilizationReport = ResourceUtilizationReport' {_rurCPUTime = Nothing}


-- | CPU utilization samples.
rurCPUTime :: Lens' ResourceUtilizationReport [CPUTime]
rurCPUTime
  = lens _rurCPUTime (\ s a -> s{_rurCPUTime = a}) .
      _Default
      . _Coerce

instance FromJSON ResourceUtilizationReport where
        parseJSON
          = withObject "ResourceUtilizationReport"
              (\ o ->
                 ResourceUtilizationReport' <$>
                   (o .:? "cpuTime" .!= mempty))

instance ToJSON ResourceUtilizationReport where
        toJSON ResourceUtilizationReport'{..}
          = object (catMaybes [("cpuTime" .=) <$> _rurCPUTime])

-- | Indicates which location failed to respond to a request for data.
--
-- /See:/ 'failedLocation' smart constructor.
newtype FailedLocation =
  FailedLocation'
    { _flName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FailedLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flName'
failedLocation
    :: FailedLocation
failedLocation = FailedLocation' {_flName = Nothing}


-- | The name of the failed location.
flName :: Lens' FailedLocation (Maybe Text)
flName = lens _flName (\ s a -> s{_flName = a})

instance FromJSON FailedLocation where
        parseJSON
          = withObject "FailedLocation"
              (\ o -> FailedLocation' <$> (o .:? "name"))

instance ToJSON FailedLocation where
        toJSON FailedLocation'{..}
          = object (catMaybes [("name" .=) <$> _flName])

-- | A worker_message response allows the server to pass information to the
-- sender.
--
-- /See:/ 'workerMessageResponse' smart constructor.
data WorkerMessageResponse =
  WorkerMessageResponse'
    { _wmrWorkerHealthReportResponse   :: !(Maybe WorkerHealthReportResponse)
    , _wmrWorkerMetricsResponse        :: !(Maybe ResourceUtilizationReportResponse)
    , _wmrWorkerShutdownNoticeResponse :: !(Maybe WorkerShutdownNoticeResponse)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkerMessageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wmrWorkerHealthReportResponse'
--
-- * 'wmrWorkerMetricsResponse'
--
-- * 'wmrWorkerShutdownNoticeResponse'
workerMessageResponse
    :: WorkerMessageResponse
workerMessageResponse =
  WorkerMessageResponse'
    { _wmrWorkerHealthReportResponse = Nothing
    , _wmrWorkerMetricsResponse = Nothing
    , _wmrWorkerShutdownNoticeResponse = Nothing
    }


-- | The service\'s response to a worker\'s health report.
wmrWorkerHealthReportResponse :: Lens' WorkerMessageResponse (Maybe WorkerHealthReportResponse)
wmrWorkerHealthReportResponse
  = lens _wmrWorkerHealthReportResponse
      (\ s a -> s{_wmrWorkerHealthReportResponse = a})

-- | Service\'s response to reporting worker metrics (currently empty).
wmrWorkerMetricsResponse :: Lens' WorkerMessageResponse (Maybe ResourceUtilizationReportResponse)
wmrWorkerMetricsResponse
  = lens _wmrWorkerMetricsResponse
      (\ s a -> s{_wmrWorkerMetricsResponse = a})

-- | Service\'s response to shutdown notice (currently empty).
wmrWorkerShutdownNoticeResponse :: Lens' WorkerMessageResponse (Maybe WorkerShutdownNoticeResponse)
wmrWorkerShutdownNoticeResponse
  = lens _wmrWorkerShutdownNoticeResponse
      (\ s a -> s{_wmrWorkerShutdownNoticeResponse = a})

instance FromJSON WorkerMessageResponse where
        parseJSON
          = withObject "WorkerMessageResponse"
              (\ o ->
                 WorkerMessageResponse' <$>
                   (o .:? "workerHealthReportResponse") <*>
                     (o .:? "workerMetricsResponse")
                     <*> (o .:? "workerShutdownNoticeResponse"))

instance ToJSON WorkerMessageResponse where
        toJSON WorkerMessageResponse'{..}
          = object
              (catMaybes
                 [("workerHealthReportResponse" .=) <$>
                    _wmrWorkerHealthReportResponse,
                  ("workerMetricsResponse" .=) <$>
                    _wmrWorkerMetricsResponse,
                  ("workerShutdownNoticeResponse" .=) <$>
                    _wmrWorkerShutdownNoticeResponse])

-- | The runtime parameters to pass to the job.
--
-- /See:/ 'createJobFromTemplateRequestParameters' smart constructor.
newtype CreateJobFromTemplateRequestParameters =
  CreateJobFromTemplateRequestParameters'
    { _cjftrpAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateJobFromTemplateRequestParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cjftrpAddtional'
createJobFromTemplateRequestParameters
    :: HashMap Text Text -- ^ 'cjftrpAddtional'
    -> CreateJobFromTemplateRequestParameters
createJobFromTemplateRequestParameters pCjftrpAddtional_ =
  CreateJobFromTemplateRequestParameters'
    {_cjftrpAddtional = _Coerce # pCjftrpAddtional_}


cjftrpAddtional :: Lens' CreateJobFromTemplateRequestParameters (HashMap Text Text)
cjftrpAddtional
  = lens _cjftrpAddtional
      (\ s a -> s{_cjftrpAddtional = a})
      . _Coerce

instance FromJSON
           CreateJobFromTemplateRequestParameters
         where
        parseJSON
          = withObject "CreateJobFromTemplateRequestParameters"
              (\ o ->
                 CreateJobFromTemplateRequestParameters' <$>
                   (parseJSONObject o))

instance ToJSON
           CreateJobFromTemplateRequestParameters
         where
        toJSON = toJSON . _cjftrpAddtional

-- | Metadata for a BigTable connector used by the job.
--
-- /See:/ 'bigTableIODetails' smart constructor.
data BigTableIODetails =
  BigTableIODetails'
    { _btiodInstanceId :: !(Maybe Text)
    , _btiodProjectId  :: !(Maybe Text)
    , _btiodTableId    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BigTableIODetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'btiodInstanceId'
--
-- * 'btiodProjectId'
--
-- * 'btiodTableId'
bigTableIODetails
    :: BigTableIODetails
bigTableIODetails =
  BigTableIODetails'
    { _btiodInstanceId = Nothing
    , _btiodProjectId = Nothing
    , _btiodTableId = Nothing
    }


-- | InstanceId accessed in the connection.
btiodInstanceId :: Lens' BigTableIODetails (Maybe Text)
btiodInstanceId
  = lens _btiodInstanceId
      (\ s a -> s{_btiodInstanceId = a})

-- | ProjectId accessed in the connection.
btiodProjectId :: Lens' BigTableIODetails (Maybe Text)
btiodProjectId
  = lens _btiodProjectId
      (\ s a -> s{_btiodProjectId = a})

-- | TableId accessed in the connection.
btiodTableId :: Lens' BigTableIODetails (Maybe Text)
btiodTableId
  = lens _btiodTableId (\ s a -> s{_btiodTableId = a})

instance FromJSON BigTableIODetails where
        parseJSON
          = withObject "BigTableIODetails"
              (\ o ->
                 BigTableIODetails' <$>
                   (o .:? "instanceId") <*> (o .:? "projectId") <*>
                     (o .:? "tableId"))

instance ToJSON BigTableIODetails where
        toJSON BigTableIODetails'{..}
          = object
              (catMaybes
                 [("instanceId" .=) <$> _btiodInstanceId,
                  ("projectId" .=) <$> _btiodProjectId,
                  ("tableId" .=) <$> _btiodTableId])

-- | The Dataflow service\'s idea of the current state of a WorkItem being
-- processed by a worker.
--
-- /See:/ 'workItemServiceState' smart constructor.
data WorkItemServiceState =
  WorkItemServiceState'
    { _wissNextReportIndex       :: !(Maybe (Textual Int64))
    , _wissReportStatusInterval  :: !(Maybe GDuration)
    , _wissHarnessData           :: !(Maybe WorkItemServiceStateHarnessData)
    , _wissSuggestedStopPoint    :: !(Maybe ApproximateProgress)
    , _wissSuggestedStopPosition :: !(Maybe Position)
    , _wissLeaseExpireTime       :: !(Maybe DateTime')
    , _wissSplitRequest          :: !(Maybe ApproximateSplitRequest)
    , _wissMetricShortId         :: !(Maybe [MetricShortId])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkItemServiceState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wissNextReportIndex'
--
-- * 'wissReportStatusInterval'
--
-- * 'wissHarnessData'
--
-- * 'wissSuggestedStopPoint'
--
-- * 'wissSuggestedStopPosition'
--
-- * 'wissLeaseExpireTime'
--
-- * 'wissSplitRequest'
--
-- * 'wissMetricShortId'
workItemServiceState
    :: WorkItemServiceState
workItemServiceState =
  WorkItemServiceState'
    { _wissNextReportIndex = Nothing
    , _wissReportStatusInterval = Nothing
    , _wissHarnessData = Nothing
    , _wissSuggestedStopPoint = Nothing
    , _wissSuggestedStopPosition = Nothing
    , _wissLeaseExpireTime = Nothing
    , _wissSplitRequest = Nothing
    , _wissMetricShortId = Nothing
    }


-- | The index value to use for the next report sent by the worker. Note: If
-- the report call fails for whatever reason, the worker should reuse this
-- index for subsequent report attempts.
wissNextReportIndex :: Lens' WorkItemServiceState (Maybe Int64)
wissNextReportIndex
  = lens _wissNextReportIndex
      (\ s a -> s{_wissNextReportIndex = a})
      . mapping _Coerce

-- | New recommended reporting interval.
wissReportStatusInterval :: Lens' WorkItemServiceState (Maybe Scientific)
wissReportStatusInterval
  = lens _wissReportStatusInterval
      (\ s a -> s{_wissReportStatusInterval = a})
      . mapping _GDuration

-- | Other data returned by the service, specific to the particular worker
-- harness.
wissHarnessData :: Lens' WorkItemServiceState (Maybe WorkItemServiceStateHarnessData)
wissHarnessData
  = lens _wissHarnessData
      (\ s a -> s{_wissHarnessData = a})

-- | DEPRECATED in favor of split_request.
wissSuggestedStopPoint :: Lens' WorkItemServiceState (Maybe ApproximateProgress)
wissSuggestedStopPoint
  = lens _wissSuggestedStopPoint
      (\ s a -> s{_wissSuggestedStopPoint = a})

-- | Obsolete, always empty.
wissSuggestedStopPosition :: Lens' WorkItemServiceState (Maybe Position)
wissSuggestedStopPosition
  = lens _wissSuggestedStopPosition
      (\ s a -> s{_wissSuggestedStopPosition = a})

-- | Time at which the current lease will expire.
wissLeaseExpireTime :: Lens' WorkItemServiceState (Maybe UTCTime)
wissLeaseExpireTime
  = lens _wissLeaseExpireTime
      (\ s a -> s{_wissLeaseExpireTime = a})
      . mapping _DateTime

-- | The progress point in the WorkItem where the Dataflow service suggests
-- that the worker truncate the task.
wissSplitRequest :: Lens' WorkItemServiceState (Maybe ApproximateSplitRequest)
wissSplitRequest
  = lens _wissSplitRequest
      (\ s a -> s{_wissSplitRequest = a})

-- | The short ids that workers should use in subsequent metric updates.
-- Workers should strive to use short ids whenever possible, but it is ok
-- to request the short_id again if a worker lost track of it (e.g. if the
-- worker is recovering from a crash). NOTE: it is possible that the
-- response may have short ids for a subset of the metrics.
wissMetricShortId :: Lens' WorkItemServiceState [MetricShortId]
wissMetricShortId
  = lens _wissMetricShortId
      (\ s a -> s{_wissMetricShortId = a})
      . _Default
      . _Coerce

instance FromJSON WorkItemServiceState where
        parseJSON
          = withObject "WorkItemServiceState"
              (\ o ->
                 WorkItemServiceState' <$>
                   (o .:? "nextReportIndex") <*>
                     (o .:? "reportStatusInterval")
                     <*> (o .:? "harnessData")
                     <*> (o .:? "suggestedStopPoint")
                     <*> (o .:? "suggestedStopPosition")
                     <*> (o .:? "leaseExpireTime")
                     <*> (o .:? "splitRequest")
                     <*> (o .:? "metricShortId" .!= mempty))

instance ToJSON WorkItemServiceState where
        toJSON WorkItemServiceState'{..}
          = object
              (catMaybes
                 [("nextReportIndex" .=) <$> _wissNextReportIndex,
                  ("reportStatusInterval" .=) <$>
                    _wissReportStatusInterval,
                  ("harnessData" .=) <$> _wissHarnessData,
                  ("suggestedStopPoint" .=) <$>
                    _wissSuggestedStopPoint,
                  ("suggestedStopPosition" .=) <$>
                    _wissSuggestedStopPosition,
                  ("leaseExpireTime" .=) <$> _wissLeaseExpireTime,
                  ("splitRequest" .=) <$> _wissSplitRequest,
                  ("metricShortId" .=) <$> _wissMetricShortId])

-- | Response to the request to launch a template.
--
-- /See:/ 'launchTemplateResponse' smart constructor.
newtype LaunchTemplateResponse =
  LaunchTemplateResponse'
    { _ltrJob :: Maybe Job
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LaunchTemplateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrJob'
launchTemplateResponse
    :: LaunchTemplateResponse
launchTemplateResponse = LaunchTemplateResponse' {_ltrJob = Nothing}


-- | The job that was launched, if the request was not a dry run and the job
-- was successfully launched.
ltrJob :: Lens' LaunchTemplateResponse (Maybe Job)
ltrJob = lens _ltrJob (\ s a -> s{_ltrJob = a})

instance FromJSON LaunchTemplateResponse where
        parseJSON
          = withObject "LaunchTemplateResponse"
              (\ o -> LaunchTemplateResponse' <$> (o .:? "job"))

instance ToJSON LaunchTemplateResponse where
        toJSON LaunchTemplateResponse'{..}
          = object (catMaybes [("job" .=) <$> _ltrJob])

-- | A task which initializes part of a streaming Dataflow job.
--
-- /See:/ 'streamingSetupTask' smart constructor.
data StreamingSetupTask =
  StreamingSetupTask'
    { _sstStreamingComputationTopology :: !(Maybe TopologyConfig)
    , _sstReceiveWorkPort              :: !(Maybe (Textual Int32))
    , _sstWorkerHarnessPort            :: !(Maybe (Textual Int32))
    , _sstDrain                        :: !(Maybe Bool)
    , _sstSnapshotConfig               :: !(Maybe StreamingApplianceSnapshotConfig)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StreamingSetupTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sstStreamingComputationTopology'
--
-- * 'sstReceiveWorkPort'
--
-- * 'sstWorkerHarnessPort'
--
-- * 'sstDrain'
--
-- * 'sstSnapshotConfig'
streamingSetupTask
    :: StreamingSetupTask
streamingSetupTask =
  StreamingSetupTask'
    { _sstStreamingComputationTopology = Nothing
    , _sstReceiveWorkPort = Nothing
    , _sstWorkerHarnessPort = Nothing
    , _sstDrain = Nothing
    , _sstSnapshotConfig = Nothing
    }


-- | The global topology of the streaming Dataflow job.
sstStreamingComputationTopology :: Lens' StreamingSetupTask (Maybe TopologyConfig)
sstStreamingComputationTopology
  = lens _sstStreamingComputationTopology
      (\ s a -> s{_sstStreamingComputationTopology = a})

-- | The TCP port on which the worker should listen for messages from other
-- streaming computation workers.
sstReceiveWorkPort :: Lens' StreamingSetupTask (Maybe Int32)
sstReceiveWorkPort
  = lens _sstReceiveWorkPort
      (\ s a -> s{_sstReceiveWorkPort = a})
      . mapping _Coerce

-- | The TCP port used by the worker to communicate with the Dataflow worker
-- harness.
sstWorkerHarnessPort :: Lens' StreamingSetupTask (Maybe Int32)
sstWorkerHarnessPort
  = lens _sstWorkerHarnessPort
      (\ s a -> s{_sstWorkerHarnessPort = a})
      . mapping _Coerce

-- | The user has requested drain.
sstDrain :: Lens' StreamingSetupTask (Maybe Bool)
sstDrain = lens _sstDrain (\ s a -> s{_sstDrain = a})

-- | Configures streaming appliance snapshot.
sstSnapshotConfig :: Lens' StreamingSetupTask (Maybe StreamingApplianceSnapshotConfig)
sstSnapshotConfig
  = lens _sstSnapshotConfig
      (\ s a -> s{_sstSnapshotConfig = a})

instance FromJSON StreamingSetupTask where
        parseJSON
          = withObject "StreamingSetupTask"
              (\ o ->
                 StreamingSetupTask' <$>
                   (o .:? "streamingComputationTopology") <*>
                     (o .:? "receiveWorkPort")
                     <*> (o .:? "workerHarnessPort")
                     <*> (o .:? "drain")
                     <*> (o .:? "snapshotConfig"))

instance ToJSON StreamingSetupTask where
        toJSON StreamingSetupTask'{..}
          = object
              (catMaybes
                 [("streamingComputationTopology" .=) <$>
                    _sstStreamingComputationTopology,
                  ("receiveWorkPort" .=) <$> _sstReceiveWorkPort,
                  ("workerHarnessPort" .=) <$> _sstWorkerHarnessPort,
                  ("drain" .=) <$> _sstDrain,
                  ("snapshotConfig" .=) <$> _sstSnapshotConfig])

-- | The codec to use for interpreting an element in the input PTable.
--
-- /See:/ 'partialGroupByKeyInstructionInputElementCodec' smart constructor.
newtype PartialGroupByKeyInstructionInputElementCodec =
  PartialGroupByKeyInstructionInputElementCodec'
    { _pgbkiiecAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PartialGroupByKeyInstructionInputElementCodec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgbkiiecAddtional'
partialGroupByKeyInstructionInputElementCodec
    :: HashMap Text JSONValue -- ^ 'pgbkiiecAddtional'
    -> PartialGroupByKeyInstructionInputElementCodec
partialGroupByKeyInstructionInputElementCodec pPgbkiiecAddtional_ =
  PartialGroupByKeyInstructionInputElementCodec'
    {_pgbkiiecAddtional = _Coerce # pPgbkiiecAddtional_}


-- | Properties of the object.
pgbkiiecAddtional :: Lens' PartialGroupByKeyInstructionInputElementCodec (HashMap Text JSONValue)
pgbkiiecAddtional
  = lens _pgbkiiecAddtional
      (\ s a -> s{_pgbkiiecAddtional = a})
      . _Coerce

instance FromJSON
           PartialGroupByKeyInstructionInputElementCodec
         where
        parseJSON
          = withObject
              "PartialGroupByKeyInstructionInputElementCodec"
              (\ o ->
                 PartialGroupByKeyInstructionInputElementCodec' <$>
                   (parseJSONObject o))

instance ToJSON
           PartialGroupByKeyInstructionInputElementCodec
         where
        toJSON = toJSON . _pgbkiiecAddtional

-- | MapTask consists of an ordered set of instructions, each of which
-- describes one particular low-level operation for the worker to perform
-- in order to accomplish the MapTask\'s WorkItem. Each instruction must
-- appear in the list before any instructions which depends on its output.
--
-- /See:/ 'mapTask' smart constructor.
data MapTask =
  MapTask'
    { _mtInstructions  :: !(Maybe [ParallelInstruction])
    , _mtCounterPrefix :: !(Maybe Text)
    , _mtSystemName    :: !(Maybe Text)
    , _mtStageName     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MapTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtInstructions'
--
-- * 'mtCounterPrefix'
--
-- * 'mtSystemName'
--
-- * 'mtStageName'
mapTask
    :: MapTask
mapTask =
  MapTask'
    { _mtInstructions = Nothing
    , _mtCounterPrefix = Nothing
    , _mtSystemName = Nothing
    , _mtStageName = Nothing
    }


-- | The instructions in the MapTask.
mtInstructions :: Lens' MapTask [ParallelInstruction]
mtInstructions
  = lens _mtInstructions
      (\ s a -> s{_mtInstructions = a})
      . _Default
      . _Coerce

-- | Counter prefix that can be used to prefix counters. Not currently used
-- in Dataflow.
mtCounterPrefix :: Lens' MapTask (Maybe Text)
mtCounterPrefix
  = lens _mtCounterPrefix
      (\ s a -> s{_mtCounterPrefix = a})

-- | System-defined name of this MapTask. Unique across the workflow.
mtSystemName :: Lens' MapTask (Maybe Text)
mtSystemName
  = lens _mtSystemName (\ s a -> s{_mtSystemName = a})

-- | System-defined name of the stage containing this MapTask. Unique across
-- the workflow.
mtStageName :: Lens' MapTask (Maybe Text)
mtStageName
  = lens _mtStageName (\ s a -> s{_mtStageName = a})

instance FromJSON MapTask where
        parseJSON
          = withObject "MapTask"
              (\ o ->
                 MapTask' <$>
                   (o .:? "instructions" .!= mempty) <*>
                     (o .:? "counterPrefix")
                     <*> (o .:? "systemName")
                     <*> (o .:? "stageName"))

instance ToJSON MapTask where
        toJSON MapTask'{..}
          = object
              (catMaybes
                 [("instructions" .=) <$> _mtInstructions,
                  ("counterPrefix" .=) <$> _mtCounterPrefix,
                  ("systemName" .=) <$> _mtSystemName,
                  ("stageName" .=) <$> _mtStageName])

-- | Describes mounted data disk.
--
-- /See:/ 'mountedDataDisk' smart constructor.
newtype MountedDataDisk =
  MountedDataDisk'
    { _mddDataDisk :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MountedDataDisk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mddDataDisk'
mountedDataDisk
    :: MountedDataDisk
mountedDataDisk = MountedDataDisk' {_mddDataDisk = Nothing}


-- | The name of the data disk. This name is local to the Google Cloud
-- Platform project and uniquely identifies the disk within that project,
-- for example \"myproject-1014-104817-4c2-harness-0-disk-1\".
mddDataDisk :: Lens' MountedDataDisk (Maybe Text)
mddDataDisk
  = lens _mddDataDisk (\ s a -> s{_mddDataDisk = a})

instance FromJSON MountedDataDisk where
        parseJSON
          = withObject "MountedDataDisk"
              (\ o -> MountedDataDisk' <$> (o .:? "dataDisk"))

instance ToJSON MountedDataDisk where
        toJSON MountedDataDisk'{..}
          = object
              (catMaybes [("dataDisk" .=) <$> _mddDataDisk])

-- | The codec to use to encode data written to the sink.
--
-- /See:/ 'sinkCodec' smart constructor.
newtype SinkCodec =
  SinkCodec'
    { _scAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SinkCodec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scAddtional'
sinkCodec
    :: HashMap Text JSONValue -- ^ 'scAddtional'
    -> SinkCodec
sinkCodec pScAddtional_ = SinkCodec' {_scAddtional = _Coerce # pScAddtional_}


-- | Properties of the object.
scAddtional :: Lens' SinkCodec (HashMap Text JSONValue)
scAddtional
  = lens _scAddtional (\ s a -> s{_scAddtional = a}) .
      _Coerce

instance FromJSON SinkCodec where
        parseJSON
          = withObject "SinkCodec"
              (\ o -> SinkCodec' <$> (parseJSONObject o))

instance ToJSON SinkCodec where
        toJSON = toJSON . _scAddtional

-- | A representation of an integer mean metric contribution.
--
-- /See:/ 'integerMean' smart constructor.
data IntegerMean =
  IntegerMean'
    { _imCount :: !(Maybe SplitInt64)
    , _imSum   :: !(Maybe SplitInt64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IntegerMean' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'imCount'
--
-- * 'imSum'
integerMean
    :: IntegerMean
integerMean = IntegerMean' {_imCount = Nothing, _imSum = Nothing}


-- | The number of values being aggregated.
imCount :: Lens' IntegerMean (Maybe SplitInt64)
imCount = lens _imCount (\ s a -> s{_imCount = a})

-- | The sum of all values being aggregated.
imSum :: Lens' IntegerMean (Maybe SplitInt64)
imSum = lens _imSum (\ s a -> s{_imSum = a})

instance FromJSON IntegerMean where
        parseJSON
          = withObject "IntegerMean"
              (\ o ->
                 IntegerMean' <$> (o .:? "count") <*> (o .:? "sum"))

instance ToJSON IntegerMean where
        toJSON IntegerMean'{..}
          = object
              (catMaybes
                 [("count" .=) <$> _imCount, ("sum" .=) <$> _imSum])

--
-- /See:/ 'workerHealthReportPodsItem' smart constructor.
newtype WorkerHealthReportPodsItem =
  WorkerHealthReportPodsItem'
    { _whrpiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkerHealthReportPodsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'whrpiAddtional'
workerHealthReportPodsItem
    :: HashMap Text JSONValue -- ^ 'whrpiAddtional'
    -> WorkerHealthReportPodsItem
workerHealthReportPodsItem pWhrpiAddtional_ =
  WorkerHealthReportPodsItem' {_whrpiAddtional = _Coerce # pWhrpiAddtional_}


-- | Properties of the object.
whrpiAddtional :: Lens' WorkerHealthReportPodsItem (HashMap Text JSONValue)
whrpiAddtional
  = lens _whrpiAddtional
      (\ s a -> s{_whrpiAddtional = a})
      . _Coerce

instance FromJSON WorkerHealthReportPodsItem where
        parseJSON
          = withObject "WorkerHealthReportPodsItem"
              (\ o ->
                 WorkerHealthReportPodsItem' <$> (parseJSONObject o))

instance ToJSON WorkerHealthReportPodsItem where
        toJSON = toJSON . _whrpiAddtional

-- | The user function to invoke.
--
-- /See:/ 'parDoInstructionUserFn' smart constructor.
newtype ParDoInstructionUserFn =
  ParDoInstructionUserFn'
    { _pdiufAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ParDoInstructionUserFn' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdiufAddtional'
parDoInstructionUserFn
    :: HashMap Text JSONValue -- ^ 'pdiufAddtional'
    -> ParDoInstructionUserFn
parDoInstructionUserFn pPdiufAddtional_ =
  ParDoInstructionUserFn' {_pdiufAddtional = _Coerce # pPdiufAddtional_}


-- | Properties of the object.
pdiufAddtional :: Lens' ParDoInstructionUserFn (HashMap Text JSONValue)
pdiufAddtional
  = lens _pdiufAddtional
      (\ s a -> s{_pdiufAddtional = a})
      . _Coerce

instance FromJSON ParDoInstructionUserFn where
        parseJSON
          = withObject "ParDoInstructionUserFn"
              (\ o ->
                 ParDoInstructionUserFn' <$> (parseJSONObject o))

instance ToJSON ParDoInstructionUserFn where
        toJSON = toJSON . _pdiufAddtional

-- | The codec to use to encode data being written via this output.
--
-- /See:/ 'instructionOutputCodec' smart constructor.
newtype InstructionOutputCodec =
  InstructionOutputCodec'
    { _iocAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstructionOutputCodec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iocAddtional'
instructionOutputCodec
    :: HashMap Text JSONValue -- ^ 'iocAddtional'
    -> InstructionOutputCodec
instructionOutputCodec pIocAddtional_ =
  InstructionOutputCodec' {_iocAddtional = _Coerce # pIocAddtional_}


-- | Properties of the object.
iocAddtional :: Lens' InstructionOutputCodec (HashMap Text JSONValue)
iocAddtional
  = lens _iocAddtional (\ s a -> s{_iocAddtional = a})
      . _Coerce

instance FromJSON InstructionOutputCodec where
        parseJSON
          = withObject "InstructionOutputCodec"
              (\ o ->
                 InstructionOutputCodec' <$> (parseJSONObject o))

instance ToJSON InstructionOutputCodec where
        toJSON = toJSON . _iocAddtional

-- | Describes a stream of data, either as input to be processed or as output
-- of a streaming Dataflow job.
--
-- /See:/ 'streamLocation' smart constructor.
data StreamLocation =
  StreamLocation'
    { _slStreamingStageLocation :: !(Maybe StreamingStageLocation)
    , _slSideInputLocation      :: !(Maybe StreamingSideInputLocation)
    , _slCustomSourceLocation   :: !(Maybe CustomSourceLocation)
    , _slPubsubLocation         :: !(Maybe PubsubLocation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StreamLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slStreamingStageLocation'
--
-- * 'slSideInputLocation'
--
-- * 'slCustomSourceLocation'
--
-- * 'slPubsubLocation'
streamLocation
    :: StreamLocation
streamLocation =
  StreamLocation'
    { _slStreamingStageLocation = Nothing
    , _slSideInputLocation = Nothing
    , _slCustomSourceLocation = Nothing
    , _slPubsubLocation = Nothing
    }


-- | The stream is part of another computation within the current streaming
-- Dataflow job.
slStreamingStageLocation :: Lens' StreamLocation (Maybe StreamingStageLocation)
slStreamingStageLocation
  = lens _slStreamingStageLocation
      (\ s a -> s{_slStreamingStageLocation = a})

-- | The stream is a streaming side input.
slSideInputLocation :: Lens' StreamLocation (Maybe StreamingSideInputLocation)
slSideInputLocation
  = lens _slSideInputLocation
      (\ s a -> s{_slSideInputLocation = a})

-- | The stream is a custom source.
slCustomSourceLocation :: Lens' StreamLocation (Maybe CustomSourceLocation)
slCustomSourceLocation
  = lens _slCustomSourceLocation
      (\ s a -> s{_slCustomSourceLocation = a})

-- | The stream is a pubsub stream.
slPubsubLocation :: Lens' StreamLocation (Maybe PubsubLocation)
slPubsubLocation
  = lens _slPubsubLocation
      (\ s a -> s{_slPubsubLocation = a})

instance FromJSON StreamLocation where
        parseJSON
          = withObject "StreamLocation"
              (\ o ->
                 StreamLocation' <$>
                   (o .:? "streamingStageLocation") <*>
                     (o .:? "sideInputLocation")
                     <*> (o .:? "customSourceLocation")
                     <*> (o .:? "pubsubLocation"))

instance ToJSON StreamLocation where
        toJSON StreamLocation'{..}
          = object
              (catMaybes
                 [("streamingStageLocation" .=) <$>
                    _slStreamingStageLocation,
                  ("sideInputLocation" .=) <$> _slSideInputLocation,
                  ("customSourceLocation" .=) <$>
                    _slCustomSourceLocation,
                  ("pubsubLocation" .=) <$> _slPubsubLocation])

-- | Other stats that can accompany an event. E.g. { \"downloaded_bytes\" :
-- \"123456\" }
--
-- /See:/ 'workerLifecycleEventMetadata' smart constructor.
newtype WorkerLifecycleEventMetadata =
  WorkerLifecycleEventMetadata'
    { _wlemAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkerLifecycleEventMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wlemAddtional'
workerLifecycleEventMetadata
    :: HashMap Text Text -- ^ 'wlemAddtional'
    -> WorkerLifecycleEventMetadata
workerLifecycleEventMetadata pWlemAddtional_ =
  WorkerLifecycleEventMetadata' {_wlemAddtional = _Coerce # pWlemAddtional_}


wlemAddtional :: Lens' WorkerLifecycleEventMetadata (HashMap Text Text)
wlemAddtional
  = lens _wlemAddtional
      (\ s a -> s{_wlemAddtional = a})
      . _Coerce

instance FromJSON WorkerLifecycleEventMetadata where
        parseJSON
          = withObject "WorkerLifecycleEventMetadata"
              (\ o ->
                 WorkerLifecycleEventMetadata' <$>
                   (parseJSONObject o))

instance ToJSON WorkerLifecycleEventMetadata where
        toJSON = toJSON . _wlemAddtional

-- | Extra arguments for this worker pool.
--
-- /See:/ 'workerPoolPoolArgs' smart constructor.
newtype WorkerPoolPoolArgs =
  WorkerPoolPoolArgs'
    { _wppaAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkerPoolPoolArgs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wppaAddtional'
workerPoolPoolArgs
    :: HashMap Text JSONValue -- ^ 'wppaAddtional'
    -> WorkerPoolPoolArgs
workerPoolPoolArgs pWppaAddtional_ =
  WorkerPoolPoolArgs' {_wppaAddtional = _Coerce # pWppaAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
wppaAddtional :: Lens' WorkerPoolPoolArgs (HashMap Text JSONValue)
wppaAddtional
  = lens _wppaAddtional
      (\ s a -> s{_wppaAddtional = a})
      . _Coerce

instance FromJSON WorkerPoolPoolArgs where
        parseJSON
          = withObject "WorkerPoolPoolArgs"
              (\ o -> WorkerPoolPoolArgs' <$> (parseJSONObject o))

instance ToJSON WorkerPoolPoolArgs where
        toJSON = toJSON . _wppaAddtional

-- | The environment values to set at runtime.
--
-- /See:/ 'runtimeEnvironment' smart constructor.
data RuntimeEnvironment =
  RuntimeEnvironment'
    { _reNumWorkers              :: !(Maybe (Textual Int32))
    , _reNetwork                 :: !(Maybe Text)
    , _reZone                    :: !(Maybe Text)
    , _reBypassTempDirValidation :: !(Maybe Bool)
    , _reSubnetwork              :: !(Maybe Text)
    , _reMachineType             :: !(Maybe Text)
    , _reAdditionalUserLabels    :: !(Maybe RuntimeEnvironmentAdditionalUserLabels)
    , _reServiceAccountEmail     :: !(Maybe Text)
    , _reAdditionalExperiments   :: !(Maybe [Text])
    , _reMaxWorkers              :: !(Maybe (Textual Int32))
    , _reTempLocation            :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RuntimeEnvironment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reNumWorkers'
--
-- * 'reNetwork'
--
-- * 'reZone'
--
-- * 'reBypassTempDirValidation'
--
-- * 'reSubnetwork'
--
-- * 'reMachineType'
--
-- * 'reAdditionalUserLabels'
--
-- * 'reServiceAccountEmail'
--
-- * 'reAdditionalExperiments'
--
-- * 'reMaxWorkers'
--
-- * 'reTempLocation'
runtimeEnvironment
    :: RuntimeEnvironment
runtimeEnvironment =
  RuntimeEnvironment'
    { _reNumWorkers = Nothing
    , _reNetwork = Nothing
    , _reZone = Nothing
    , _reBypassTempDirValidation = Nothing
    , _reSubnetwork = Nothing
    , _reMachineType = Nothing
    , _reAdditionalUserLabels = Nothing
    , _reServiceAccountEmail = Nothing
    , _reAdditionalExperiments = Nothing
    , _reMaxWorkers = Nothing
    , _reTempLocation = Nothing
    }


-- | The initial number of Google Compute Engine instnaces for the job.
reNumWorkers :: Lens' RuntimeEnvironment (Maybe Int32)
reNumWorkers
  = lens _reNumWorkers (\ s a -> s{_reNumWorkers = a})
      . mapping _Coerce

-- | Network to which VMs will be assigned. If empty or unspecified, the
-- service will use the network \"default\".
reNetwork :: Lens' RuntimeEnvironment (Maybe Text)
reNetwork
  = lens _reNetwork (\ s a -> s{_reNetwork = a})

-- | The Compute Engine [availability
-- zone](https:\/\/cloud.google.com\/compute\/docs\/regions-zones\/regions-zones)
-- for launching worker instances to run your pipeline.
reZone :: Lens' RuntimeEnvironment (Maybe Text)
reZone = lens _reZone (\ s a -> s{_reZone = a})

-- | Whether to bypass the safety checks for the job\'s temporary directory.
-- Use with caution.
reBypassTempDirValidation :: Lens' RuntimeEnvironment (Maybe Bool)
reBypassTempDirValidation
  = lens _reBypassTempDirValidation
      (\ s a -> s{_reBypassTempDirValidation = a})

-- | Subnetwork to which VMs will be assigned, if desired. Expected to be of
-- the form \"regions\/REGION\/subnetworks\/SUBNETWORK\".
reSubnetwork :: Lens' RuntimeEnvironment (Maybe Text)
reSubnetwork
  = lens _reSubnetwork (\ s a -> s{_reSubnetwork = a})

-- | The machine type to use for the job. Defaults to the value from the
-- template if not specified.
reMachineType :: Lens' RuntimeEnvironment (Maybe Text)
reMachineType
  = lens _reMachineType
      (\ s a -> s{_reMachineType = a})

-- | Additional user labels attached to the job.
reAdditionalUserLabels :: Lens' RuntimeEnvironment (Maybe RuntimeEnvironmentAdditionalUserLabels)
reAdditionalUserLabels
  = lens _reAdditionalUserLabels
      (\ s a -> s{_reAdditionalUserLabels = a})

-- | The email address of the service account to run the job as.
reServiceAccountEmail :: Lens' RuntimeEnvironment (Maybe Text)
reServiceAccountEmail
  = lens _reServiceAccountEmail
      (\ s a -> s{_reServiceAccountEmail = a})

-- | Additional experiment flags for the job.
reAdditionalExperiments :: Lens' RuntimeEnvironment [Text]
reAdditionalExperiments
  = lens _reAdditionalExperiments
      (\ s a -> s{_reAdditionalExperiments = a})
      . _Default
      . _Coerce

-- | The maximum number of Google Compute Engine instances to be made
-- available to your pipeline during execution, from 1 to 1000.
reMaxWorkers :: Lens' RuntimeEnvironment (Maybe Int32)
reMaxWorkers
  = lens _reMaxWorkers (\ s a -> s{_reMaxWorkers = a})
      . mapping _Coerce

-- | The Cloud Storage path to use for temporary files. Must be a valid Cloud
-- Storage URL, beginning with \`gs:\/\/\`.
reTempLocation :: Lens' RuntimeEnvironment (Maybe Text)
reTempLocation
  = lens _reTempLocation
      (\ s a -> s{_reTempLocation = a})

instance FromJSON RuntimeEnvironment where
        parseJSON
          = withObject "RuntimeEnvironment"
              (\ o ->
                 RuntimeEnvironment' <$>
                   (o .:? "numWorkers") <*> (o .:? "network") <*>
                     (o .:? "zone")
                     <*> (o .:? "bypassTempDirValidation")
                     <*> (o .:? "subnetwork")
                     <*> (o .:? "machineType")
                     <*> (o .:? "additionalUserLabels")
                     <*> (o .:? "serviceAccountEmail")
                     <*> (o .:? "additionalExperiments" .!= mempty)
                     <*> (o .:? "maxWorkers")
                     <*> (o .:? "tempLocation"))

instance ToJSON RuntimeEnvironment where
        toJSON RuntimeEnvironment'{..}
          = object
              (catMaybes
                 [("numWorkers" .=) <$> _reNumWorkers,
                  ("network" .=) <$> _reNetwork,
                  ("zone" .=) <$> _reZone,
                  ("bypassTempDirValidation" .=) <$>
                    _reBypassTempDirValidation,
                  ("subnetwork" .=) <$> _reSubnetwork,
                  ("machineType" .=) <$> _reMachineType,
                  ("additionalUserLabels" .=) <$>
                    _reAdditionalUserLabels,
                  ("serviceAccountEmail" .=) <$>
                    _reServiceAccountEmail,
                  ("additionalExperiments" .=) <$>
                    _reAdditionalExperiments,
                  ("maxWorkers" .=) <$> _reMaxWorkers,
                  ("tempLocation" .=) <$> _reTempLocation])

-- | CounterMetadata includes all static non-name non-value counter
-- attributes.
--
-- /See:/ 'counterMetadata' smart constructor.
data CounterMetadata =
  CounterMetadata'
    { _cmKind          :: !(Maybe CounterMetadataKind)
    , _cmDescription   :: !(Maybe Text)
    , _cmStandardUnits :: !(Maybe CounterMetadataStandardUnits)
    , _cmOtherUnits    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CounterMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmKind'
--
-- * 'cmDescription'
--
-- * 'cmStandardUnits'
--
-- * 'cmOtherUnits'
counterMetadata
    :: CounterMetadata
counterMetadata =
  CounterMetadata'
    { _cmKind = Nothing
    , _cmDescription = Nothing
    , _cmStandardUnits = Nothing
    , _cmOtherUnits = Nothing
    }


-- | Counter aggregation kind.
cmKind :: Lens' CounterMetadata (Maybe CounterMetadataKind)
cmKind = lens _cmKind (\ s a -> s{_cmKind = a})

-- | Human-readable description of the counter semantics.
cmDescription :: Lens' CounterMetadata (Maybe Text)
cmDescription
  = lens _cmDescription
      (\ s a -> s{_cmDescription = a})

-- | System defined Units, see above enum.
cmStandardUnits :: Lens' CounterMetadata (Maybe CounterMetadataStandardUnits)
cmStandardUnits
  = lens _cmStandardUnits
      (\ s a -> s{_cmStandardUnits = a})

-- | A string referring to the unit type.
cmOtherUnits :: Lens' CounterMetadata (Maybe Text)
cmOtherUnits
  = lens _cmOtherUnits (\ s a -> s{_cmOtherUnits = a})

instance FromJSON CounterMetadata where
        parseJSON
          = withObject "CounterMetadata"
              (\ o ->
                 CounterMetadata' <$>
                   (o .:? "kind") <*> (o .:? "description") <*>
                     (o .:? "standardUnits")
                     <*> (o .:? "otherUnits"))

instance ToJSON CounterMetadata where
        toJSON CounterMetadata'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _cmKind,
                  ("description" .=) <$> _cmDescription,
                  ("standardUnits" .=) <$> _cmStandardUnits,
                  ("otherUnits" .=) <$> _cmOtherUnits])

-- | The response to the worker messages.
--
-- /See:/ 'sendWorkerMessagesResponse' smart constructor.
newtype SendWorkerMessagesResponse =
  SendWorkerMessagesResponse'
    { _swmrWorkerMessageResponses :: Maybe [WorkerMessageResponse]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SendWorkerMessagesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'swmrWorkerMessageResponses'
sendWorkerMessagesResponse
    :: SendWorkerMessagesResponse
sendWorkerMessagesResponse =
  SendWorkerMessagesResponse' {_swmrWorkerMessageResponses = Nothing}


-- | The servers response to the worker messages.
swmrWorkerMessageResponses :: Lens' SendWorkerMessagesResponse [WorkerMessageResponse]
swmrWorkerMessageResponses
  = lens _swmrWorkerMessageResponses
      (\ s a -> s{_swmrWorkerMessageResponses = a})
      . _Default
      . _Coerce

instance FromJSON SendWorkerMessagesResponse where
        parseJSON
          = withObject "SendWorkerMessagesResponse"
              (\ o ->
                 SendWorkerMessagesResponse' <$>
                   (o .:? "workerMessageResponses" .!= mempty))

instance ToJSON SendWorkerMessagesResponse where
        toJSON SendWorkerMessagesResponse'{..}
          = object
              (catMaybes
                 [("workerMessageResponses" .=) <$>
                    _swmrWorkerMessageResponses])

-- | Identifies the location of a streaming side input.
--
-- /See:/ 'streamingSideInputLocation' smart constructor.
data StreamingSideInputLocation =
  StreamingSideInputLocation'
    { _ssilTag         :: !(Maybe Text)
    , _ssilStateFamily :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StreamingSideInputLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssilTag'
--
-- * 'ssilStateFamily'
streamingSideInputLocation
    :: StreamingSideInputLocation
streamingSideInputLocation =
  StreamingSideInputLocation' {_ssilTag = Nothing, _ssilStateFamily = Nothing}


-- | Identifies the particular side input within the streaming Dataflow job.
ssilTag :: Lens' StreamingSideInputLocation (Maybe Text)
ssilTag = lens _ssilTag (\ s a -> s{_ssilTag = a})

-- | Identifies the state family where this side input is stored.
ssilStateFamily :: Lens' StreamingSideInputLocation (Maybe Text)
ssilStateFamily
  = lens _ssilStateFamily
      (\ s a -> s{_ssilStateFamily = a})

instance FromJSON StreamingSideInputLocation where
        parseJSON
          = withObject "StreamingSideInputLocation"
              (\ o ->
                 StreamingSideInputLocation' <$>
                   (o .:? "tag") <*> (o .:? "stateFamily"))

instance ToJSON StreamingSideInputLocation where
        toJSON StreamingSideInputLocation'{..}
          = object
              (catMaybes
                 [("tag" .=) <$> _ssilTag,
                  ("stateFamily" .=) <$> _ssilStateFamily])

-- | Request to get updated debug configuration for component.
--
-- /See:/ 'getDebugConfigRequest' smart constructor.
data GetDebugConfigRequest =
  GetDebugConfigRequest'
    { _gdcrLocation    :: !(Maybe Text)
    , _gdcrComponentId :: !(Maybe Text)
    , _gdcrWorkerId    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetDebugConfigRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdcrLocation'
--
-- * 'gdcrComponentId'
--
-- * 'gdcrWorkerId'
getDebugConfigRequest
    :: GetDebugConfigRequest
getDebugConfigRequest =
  GetDebugConfigRequest'
    { _gdcrLocation = Nothing
    , _gdcrComponentId = Nothing
    , _gdcrWorkerId = Nothing
    }


-- | The location which contains the job specified by job_id.
gdcrLocation :: Lens' GetDebugConfigRequest (Maybe Text)
gdcrLocation
  = lens _gdcrLocation (\ s a -> s{_gdcrLocation = a})

-- | The internal component id for which debug configuration is requested.
gdcrComponentId :: Lens' GetDebugConfigRequest (Maybe Text)
gdcrComponentId
  = lens _gdcrComponentId
      (\ s a -> s{_gdcrComponentId = a})

-- | The worker id, i.e., VM hostname.
gdcrWorkerId :: Lens' GetDebugConfigRequest (Maybe Text)
gdcrWorkerId
  = lens _gdcrWorkerId (\ s a -> s{_gdcrWorkerId = a})

instance FromJSON GetDebugConfigRequest where
        parseJSON
          = withObject "GetDebugConfigRequest"
              (\ o ->
                 GetDebugConfigRequest' <$>
                   (o .:? "location") <*> (o .:? "componentId") <*>
                     (o .:? "workerId"))

instance ToJSON GetDebugConfigRequest where
        toJSON GetDebugConfigRequest'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _gdcrLocation,
                  ("componentId" .=) <$> _gdcrComponentId,
                  ("workerId" .=) <$> _gdcrWorkerId])

-- | A single message which encapsulates structured name and metadata for a
-- given counter.
--
-- /See:/ 'counterStructuredNameAndMetadata' smart constructor.
data CounterStructuredNameAndMetadata =
  CounterStructuredNameAndMetadata'
    { _csnamName     :: !(Maybe CounterStructuredName)
    , _csnamMetadata :: !(Maybe CounterMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CounterStructuredNameAndMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csnamName'
--
-- * 'csnamMetadata'
counterStructuredNameAndMetadata
    :: CounterStructuredNameAndMetadata
counterStructuredNameAndMetadata =
  CounterStructuredNameAndMetadata'
    {_csnamName = Nothing, _csnamMetadata = Nothing}


-- | Structured name of the counter.
csnamName :: Lens' CounterStructuredNameAndMetadata (Maybe CounterStructuredName)
csnamName
  = lens _csnamName (\ s a -> s{_csnamName = a})

-- | Metadata associated with a counter
csnamMetadata :: Lens' CounterStructuredNameAndMetadata (Maybe CounterMetadata)
csnamMetadata
  = lens _csnamMetadata
      (\ s a -> s{_csnamMetadata = a})

instance FromJSON CounterStructuredNameAndMetadata
         where
        parseJSON
          = withObject "CounterStructuredNameAndMetadata"
              (\ o ->
                 CounterStructuredNameAndMetadata' <$>
                   (o .:? "name") <*> (o .:? "metadata"))

instance ToJSON CounterStructuredNameAndMetadata
         where
        toJSON CounterStructuredNameAndMetadata'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _csnamName,
                  ("metadata" .=) <$> _csnamMetadata])

-- | Shutdown notification from workers. This is to be sent by the shutdown
-- script of the worker VM so that the backend knows that the VM is being
-- shut down.
--
-- /See:/ 'workerShutdownNotice' smart constructor.
newtype WorkerShutdownNotice =
  WorkerShutdownNotice'
    { _wsnReason :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkerShutdownNotice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wsnReason'
workerShutdownNotice
    :: WorkerShutdownNotice
workerShutdownNotice = WorkerShutdownNotice' {_wsnReason = Nothing}


-- | The reason for the worker shutdown. Current possible values are:
-- \"UNKNOWN\": shutdown reason is unknown. \"PREEMPTION\": shutdown reason
-- is preemption. Other possible reasons may be added in the future.
wsnReason :: Lens' WorkerShutdownNotice (Maybe Text)
wsnReason
  = lens _wsnReason (\ s a -> s{_wsnReason = a})

instance FromJSON WorkerShutdownNotice where
        parseJSON
          = withObject "WorkerShutdownNotice"
              (\ o -> WorkerShutdownNotice' <$> (o .:? "reason"))

instance ToJSON WorkerShutdownNotice where
        toJSON WorkerShutdownNotice'{..}
          = object (catMaybes [("reason" .=) <$> _wsnReason])

-- | A task which describes what action should be performed for the specified
-- streaming computation ranges.
--
-- /See:/ 'streamingComputationTask' smart constructor.
data StreamingComputationTask =
  StreamingComputationTask'
    { _sctTaskType          :: !(Maybe StreamingComputationTaskTaskType)
    , _sctDataDisks         :: !(Maybe [MountedDataDisk])
    , _sctComputationRanges :: !(Maybe [StreamingComputationRanges])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StreamingComputationTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sctTaskType'
--
-- * 'sctDataDisks'
--
-- * 'sctComputationRanges'
streamingComputationTask
    :: StreamingComputationTask
streamingComputationTask =
  StreamingComputationTask'
    { _sctTaskType = Nothing
    , _sctDataDisks = Nothing
    , _sctComputationRanges = Nothing
    }


-- | A type of streaming computation task.
sctTaskType :: Lens' StreamingComputationTask (Maybe StreamingComputationTaskTaskType)
sctTaskType
  = lens _sctTaskType (\ s a -> s{_sctTaskType = a})

-- | Describes the set of data disks this task should apply to.
sctDataDisks :: Lens' StreamingComputationTask [MountedDataDisk]
sctDataDisks
  = lens _sctDataDisks (\ s a -> s{_sctDataDisks = a})
      . _Default
      . _Coerce

-- | Contains ranges of a streaming computation this task should apply to.
sctComputationRanges :: Lens' StreamingComputationTask [StreamingComputationRanges]
sctComputationRanges
  = lens _sctComputationRanges
      (\ s a -> s{_sctComputationRanges = a})
      . _Default
      . _Coerce

instance FromJSON StreamingComputationTask where
        parseJSON
          = withObject "StreamingComputationTask"
              (\ o ->
                 StreamingComputationTask' <$>
                   (o .:? "taskType") <*> (o .:? "dataDisks" .!= mempty)
                     <*> (o .:? "computationRanges" .!= mempty))

instance ToJSON StreamingComputationTask where
        toJSON StreamingComputationTask'{..}
          = object
              (catMaybes
                 [("taskType" .=) <$> _sctTaskType,
                  ("dataDisks" .=) <$> _sctDataDisks,
                  ("computationRanges" .=) <$> _sctComputationRanges])

-- | A descriptive representation of submitted pipeline as well as the
-- executed form. This data is provided by the Dataflow service for ease of
-- visualizing the pipeline and interpretting Dataflow provided metrics.
--
-- /See:/ 'pipelineDescription' smart constructor.
data PipelineDescription =
  PipelineDescription'
    { _pdExecutionPipelineStage    :: !(Maybe [ExecutionStageSummary])
    , _pdDisplayData               :: !(Maybe [DisplayData])
    , _pdOriginalPipelineTransform :: !(Maybe [TransformSummary])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PipelineDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdExecutionPipelineStage'
--
-- * 'pdDisplayData'
--
-- * 'pdOriginalPipelineTransform'
pipelineDescription
    :: PipelineDescription
pipelineDescription =
  PipelineDescription'
    { _pdExecutionPipelineStage = Nothing
    , _pdDisplayData = Nothing
    , _pdOriginalPipelineTransform = Nothing
    }


-- | Description of each stage of execution of the pipeline.
pdExecutionPipelineStage :: Lens' PipelineDescription [ExecutionStageSummary]
pdExecutionPipelineStage
  = lens _pdExecutionPipelineStage
      (\ s a -> s{_pdExecutionPipelineStage = a})
      . _Default
      . _Coerce

-- | Pipeline level display data.
pdDisplayData :: Lens' PipelineDescription [DisplayData]
pdDisplayData
  = lens _pdDisplayData
      (\ s a -> s{_pdDisplayData = a})
      . _Default
      . _Coerce

-- | Description of each transform in the pipeline and collections between
-- them.
pdOriginalPipelineTransform :: Lens' PipelineDescription [TransformSummary]
pdOriginalPipelineTransform
  = lens _pdOriginalPipelineTransform
      (\ s a -> s{_pdOriginalPipelineTransform = a})
      . _Default
      . _Coerce

instance FromJSON PipelineDescription where
        parseJSON
          = withObject "PipelineDescription"
              (\ o ->
                 PipelineDescription' <$>
                   (o .:? "executionPipelineStage" .!= mempty) <*>
                     (o .:? "displayData" .!= mempty)
                     <*> (o .:? "originalPipelineTransform" .!= mempty))

instance ToJSON PipelineDescription where
        toJSON PipelineDescription'{..}
          = object
              (catMaybes
                 [("executionPipelineStage" .=) <$>
                    _pdExecutionPipelineStage,
                  ("displayData" .=) <$> _pdDisplayData,
                  ("originalPipelineTransform" .=) <$>
                    _pdOriginalPipelineTransform])

-- | A particular message pertaining to a Dataflow job.
--
-- /See:/ 'jobMessage' smart constructor.
data JobMessage =
  JobMessage'
    { _jmTime              :: !(Maybe DateTime')
    , _jmMessageText       :: !(Maybe Text)
    , _jmMessageImportance :: !(Maybe JobMessageMessageImportance)
    , _jmId                :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jmTime'
--
-- * 'jmMessageText'
--
-- * 'jmMessageImportance'
--
-- * 'jmId'
jobMessage
    :: JobMessage
jobMessage =
  JobMessage'
    { _jmTime = Nothing
    , _jmMessageText = Nothing
    , _jmMessageImportance = Nothing
    , _jmId = Nothing
    }


-- | The timestamp of the message.
jmTime :: Lens' JobMessage (Maybe UTCTime)
jmTime
  = lens _jmTime (\ s a -> s{_jmTime = a}) .
      mapping _DateTime

-- | The text of the message.
jmMessageText :: Lens' JobMessage (Maybe Text)
jmMessageText
  = lens _jmMessageText
      (\ s a -> s{_jmMessageText = a})

-- | Importance level of the message.
jmMessageImportance :: Lens' JobMessage (Maybe JobMessageMessageImportance)
jmMessageImportance
  = lens _jmMessageImportance
      (\ s a -> s{_jmMessageImportance = a})

-- | Deprecated.
jmId :: Lens' JobMessage (Maybe Text)
jmId = lens _jmId (\ s a -> s{_jmId = a})

instance FromJSON JobMessage where
        parseJSON
          = withObject "JobMessage"
              (\ o ->
                 JobMessage' <$>
                   (o .:? "time") <*> (o .:? "messageText") <*>
                     (o .:? "messageImportance")
                     <*> (o .:? "id"))

instance ToJSON JobMessage where
        toJSON JobMessage'{..}
          = object
              (catMaybes
                 [("time" .=) <$> _jmTime,
                  ("messageText" .=) <$> _jmMessageText,
                  ("messageImportance" .=) <$> _jmMessageImportance,
                  ("id" .=) <$> _jmId])

-- | A report of an event in a worker\'s lifecycle. The proto contains one
-- event, because the worker is expected to asynchronously send each
-- message immediately after the event. Due to this asynchrony, messages
-- may arrive out of order (or missing), and it is up to the consumer to
-- interpret. The timestamp of the event is in the enclosing WorkerMessage
-- proto.
--
-- /See:/ 'workerLifecycleEvent' smart constructor.
data WorkerLifecycleEvent =
  WorkerLifecycleEvent'
    { _wleEvent              :: !(Maybe WorkerLifecycleEventEvent)
    , _wleContainerStartTime :: !(Maybe DateTime')
    , _wleMetadata           :: !(Maybe WorkerLifecycleEventMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkerLifecycleEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wleEvent'
--
-- * 'wleContainerStartTime'
--
-- * 'wleMetadata'
workerLifecycleEvent
    :: WorkerLifecycleEvent
workerLifecycleEvent =
  WorkerLifecycleEvent'
    { _wleEvent = Nothing
    , _wleContainerStartTime = Nothing
    , _wleMetadata = Nothing
    }


-- | The event being reported.
wleEvent :: Lens' WorkerLifecycleEvent (Maybe WorkerLifecycleEventEvent)
wleEvent = lens _wleEvent (\ s a -> s{_wleEvent = a})

-- | The start time of this container. All events will report this so that
-- events can be grouped together across container\/VM restarts.
wleContainerStartTime :: Lens' WorkerLifecycleEvent (Maybe UTCTime)
wleContainerStartTime
  = lens _wleContainerStartTime
      (\ s a -> s{_wleContainerStartTime = a})
      . mapping _DateTime

-- | Other stats that can accompany an event. E.g. { \"downloaded_bytes\" :
-- \"123456\" }
wleMetadata :: Lens' WorkerLifecycleEvent (Maybe WorkerLifecycleEventMetadata)
wleMetadata
  = lens _wleMetadata (\ s a -> s{_wleMetadata = a})

instance FromJSON WorkerLifecycleEvent where
        parseJSON
          = withObject "WorkerLifecycleEvent"
              (\ o ->
                 WorkerLifecycleEvent' <$>
                   (o .:? "event") <*> (o .:? "containerStartTime") <*>
                     (o .:? "metadata"))

instance ToJSON WorkerLifecycleEvent where
        toJSON WorkerLifecycleEvent'{..}
          = object
              (catMaybes
                 [("event" .=) <$> _wleEvent,
                  ("containerStartTime" .=) <$> _wleContainerStartTime,
                  ("metadata" .=) <$> _wleMetadata])

-- | Untranslated bag-of-bytes WorkProgressUpdateResponse for UnifiedWorker.
--
-- /See:/ 'reportWorkItemStatusResponseUnifiedWorkerResponse' smart constructor.
newtype ReportWorkItemStatusResponseUnifiedWorkerResponse =
  ReportWorkItemStatusResponseUnifiedWorkerResponse'
    { _rAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportWorkItemStatusResponseUnifiedWorkerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rAddtional'
reportWorkItemStatusResponseUnifiedWorkerResponse
    :: HashMap Text JSONValue -- ^ 'rAddtional'
    -> ReportWorkItemStatusResponseUnifiedWorkerResponse
reportWorkItemStatusResponseUnifiedWorkerResponse pRAddtional_ =
  ReportWorkItemStatusResponseUnifiedWorkerResponse'
    {_rAddtional = _Coerce # pRAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
rAddtional :: Lens' ReportWorkItemStatusResponseUnifiedWorkerResponse (HashMap Text JSONValue)
rAddtional
  = lens _rAddtional (\ s a -> s{_rAddtional = a}) .
      _Coerce

instance FromJSON
           ReportWorkItemStatusResponseUnifiedWorkerResponse
         where
        parseJSON
          = withObject
              "ReportWorkItemStatusResponseUnifiedWorkerResponse"
              (\ o ->
                 ReportWorkItemStatusResponseUnifiedWorkerResponse'
                   <$> (parseJSONObject o))

instance ToJSON
           ReportWorkItemStatusResponseUnifiedWorkerResponse
         where
        toJSON = toJSON . _rAddtional

-- | Additional user labels attached to the job.
--
-- /See:/ 'runtimeEnvironmentAdditionalUserLabels' smart constructor.
newtype RuntimeEnvironmentAdditionalUserLabels =
  RuntimeEnvironmentAdditionalUserLabels'
    { _reaulAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RuntimeEnvironmentAdditionalUserLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reaulAddtional'
runtimeEnvironmentAdditionalUserLabels
    :: HashMap Text Text -- ^ 'reaulAddtional'
    -> RuntimeEnvironmentAdditionalUserLabels
runtimeEnvironmentAdditionalUserLabels pReaulAddtional_ =
  RuntimeEnvironmentAdditionalUserLabels'
    {_reaulAddtional = _Coerce # pReaulAddtional_}


reaulAddtional :: Lens' RuntimeEnvironmentAdditionalUserLabels (HashMap Text Text)
reaulAddtional
  = lens _reaulAddtional
      (\ s a -> s{_reaulAddtional = a})
      . _Coerce

instance FromJSON
           RuntimeEnvironmentAdditionalUserLabels
         where
        parseJSON
          = withObject "RuntimeEnvironmentAdditionalUserLabels"
              (\ o ->
                 RuntimeEnvironmentAdditionalUserLabels' <$>
                   (parseJSONObject o))

instance ToJSON
           RuntimeEnvironmentAdditionalUserLabels
         where
        toJSON = toJSON . _reaulAddtional

-- | Information about an output of a SeqMapTask.
--
-- /See:/ 'seqMapTaskOutputInfo' smart constructor.
data SeqMapTaskOutputInfo =
  SeqMapTaskOutputInfo'
    { _smtoiSink :: !(Maybe Sink)
    , _smtoiTag  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SeqMapTaskOutputInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smtoiSink'
--
-- * 'smtoiTag'
seqMapTaskOutputInfo
    :: SeqMapTaskOutputInfo
seqMapTaskOutputInfo =
  SeqMapTaskOutputInfo' {_smtoiSink = Nothing, _smtoiTag = Nothing}


-- | The sink to write the output value to.
smtoiSink :: Lens' SeqMapTaskOutputInfo (Maybe Sink)
smtoiSink
  = lens _smtoiSink (\ s a -> s{_smtoiSink = a})

-- | The id of the TupleTag the user code will tag the output value by.
smtoiTag :: Lens' SeqMapTaskOutputInfo (Maybe Text)
smtoiTag = lens _smtoiTag (\ s a -> s{_smtoiTag = a})

instance FromJSON SeqMapTaskOutputInfo where
        parseJSON
          = withObject "SeqMapTaskOutputInfo"
              (\ o ->
                 SeqMapTaskOutputInfo' <$>
                   (o .:? "sink") <*> (o .:? "tag"))

instance ToJSON SeqMapTaskOutputInfo where
        toJSON SeqMapTaskOutputInfo'{..}
          = object
              (catMaybes
                 [("sink" .=) <$> _smtoiSink,
                  ("tag" .=) <$> _smtoiTag])

-- | Metadata for a PubSub connector used by the job.
--
-- /See:/ 'pubSubIODetails' smart constructor.
data PubSubIODetails =
  PubSubIODetails'
    { _psiodTopic        :: !(Maybe Text)
    , _psiodSubscription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PubSubIODetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psiodTopic'
--
-- * 'psiodSubscription'
pubSubIODetails
    :: PubSubIODetails
pubSubIODetails =
  PubSubIODetails' {_psiodTopic = Nothing, _psiodSubscription = Nothing}


-- | Topic accessed in the connection.
psiodTopic :: Lens' PubSubIODetails (Maybe Text)
psiodTopic
  = lens _psiodTopic (\ s a -> s{_psiodTopic = a})

-- | Subscription used in the connection.
psiodSubscription :: Lens' PubSubIODetails (Maybe Text)
psiodSubscription
  = lens _psiodSubscription
      (\ s a -> s{_psiodSubscription = a})

instance FromJSON PubSubIODetails where
        parseJSON
          = withObject "PubSubIODetails"
              (\ o ->
                 PubSubIODetails' <$>
                   (o .:? "topic") <*> (o .:? "subscription"))

instance ToJSON PubSubIODetails where
        toJSON PubSubIODetails'{..}
          = object
              (catMaybes
                 [("topic" .=) <$> _psiodTopic,
                  ("subscription" .=) <$> _psiodSubscription])

-- | A request to compute the SourceMetadata of a Source.
--
-- /See:/ 'sourceGetMetadataRequest' smart constructor.
newtype SourceGetMetadataRequest =
  SourceGetMetadataRequest'
    { _sgmrSource :: Maybe Source
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceGetMetadataRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgmrSource'
sourceGetMetadataRequest
    :: SourceGetMetadataRequest
sourceGetMetadataRequest = SourceGetMetadataRequest' {_sgmrSource = Nothing}


-- | Specification of the source whose metadata should be computed.
sgmrSource :: Lens' SourceGetMetadataRequest (Maybe Source)
sgmrSource
  = lens _sgmrSource (\ s a -> s{_sgmrSource = a})

instance FromJSON SourceGetMetadataRequest where
        parseJSON
          = withObject "SourceGetMetadataRequest"
              (\ o ->
                 SourceGetMetadataRequest' <$> (o .:? "source"))

instance ToJSON SourceGetMetadataRequest where
        toJSON SourceGetMetadataRequest'{..}
          = object (catMaybes [("source" .=) <$> _sgmrSource])

-- | Service-side response to WorkerMessage issuing shutdown notice.
--
-- /See:/ 'workerShutdownNoticeResponse' smart constructor.
data WorkerShutdownNoticeResponse =
  WorkerShutdownNoticeResponse'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkerShutdownNoticeResponse' with the minimum fields required to make a request.
--
workerShutdownNoticeResponse
    :: WorkerShutdownNoticeResponse
workerShutdownNoticeResponse = WorkerShutdownNoticeResponse'


instance FromJSON WorkerShutdownNoticeResponse where
        parseJSON
          = withObject "WorkerShutdownNoticeResponse"
              (\ o -> pure WorkerShutdownNoticeResponse')

instance ToJSON WorkerShutdownNoticeResponse where
        toJSON = const emptyObject

-- | The user function to invoke.
--
-- /See:/ 'seqMapTaskUserFn' smart constructor.
newtype SeqMapTaskUserFn =
  SeqMapTaskUserFn'
    { _smtufAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SeqMapTaskUserFn' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smtufAddtional'
seqMapTaskUserFn
    :: HashMap Text JSONValue -- ^ 'smtufAddtional'
    -> SeqMapTaskUserFn
seqMapTaskUserFn pSmtufAddtional_ =
  SeqMapTaskUserFn' {_smtufAddtional = _Coerce # pSmtufAddtional_}


-- | Properties of the object.
smtufAddtional :: Lens' SeqMapTaskUserFn (HashMap Text JSONValue)
smtufAddtional
  = lens _smtufAddtional
      (\ s a -> s{_smtufAddtional = a})
      . _Coerce

instance FromJSON SeqMapTaskUserFn where
        parseJSON
          = withObject "SeqMapTaskUserFn"
              (\ o -> SeqMapTaskUserFn' <$> (parseJSONObject o))

instance ToJSON SeqMapTaskUserFn where
        toJSON = toJSON . _smtufAddtional

-- | The value combining function to invoke.
--
-- /See:/ 'partialGroupByKeyInstructionValueCombiningFn' smart constructor.
newtype PartialGroupByKeyInstructionValueCombiningFn =
  PartialGroupByKeyInstructionValueCombiningFn'
    { _pgbkivcfAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PartialGroupByKeyInstructionValueCombiningFn' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgbkivcfAddtional'
partialGroupByKeyInstructionValueCombiningFn
    :: HashMap Text JSONValue -- ^ 'pgbkivcfAddtional'
    -> PartialGroupByKeyInstructionValueCombiningFn
partialGroupByKeyInstructionValueCombiningFn pPgbkivcfAddtional_ =
  PartialGroupByKeyInstructionValueCombiningFn'
    {_pgbkivcfAddtional = _Coerce # pPgbkivcfAddtional_}


-- | Properties of the object.
pgbkivcfAddtional :: Lens' PartialGroupByKeyInstructionValueCombiningFn (HashMap Text JSONValue)
pgbkivcfAddtional
  = lens _pgbkivcfAddtional
      (\ s a -> s{_pgbkivcfAddtional = a})
      . _Coerce

instance FromJSON
           PartialGroupByKeyInstructionValueCombiningFn
         where
        parseJSON
          = withObject
              "PartialGroupByKeyInstructionValueCombiningFn"
              (\ o ->
                 PartialGroupByKeyInstructionValueCombiningFn' <$>
                   (parseJSONObject o))

instance ToJSON
           PartialGroupByKeyInstructionValueCombiningFn
         where
        toJSON = toJSON . _pgbkivcfAddtional

-- | Defines a job to be run by the Cloud Dataflow service.
--
-- /See:/ 'job' smart constructor.
data Job =
  Job'
    { _jStepsLocation         :: !(Maybe Text)
    , _jCreatedFromSnapshotId :: !(Maybe Text)
    , _jRequestedState        :: !(Maybe JobRequestedState)
    , _jJobMetadata           :: !(Maybe JobMetadata)
    , _jLocation              :: !(Maybe Text)
    , _jStartTime             :: !(Maybe DateTime')
    , _jEnvironment           :: !(Maybe Environment)
    , _jClientRequestId       :: !(Maybe Text)
    , _jStageStates           :: !(Maybe [ExecutionStageState])
    , _jCurrentState          :: !(Maybe JobCurrentState)
    , _jReplacedByJobId       :: !(Maybe Text)
    , _jTempFiles             :: !(Maybe [Text])
    , _jSteps                 :: !(Maybe [Step])
    , _jPipelineDescription   :: !(Maybe PipelineDescription)
    , _jExecutionInfo         :: !(Maybe JobExecutionInfo)
    , _jName                  :: !(Maybe Text)
    , _jTransformNameMApping  :: !(Maybe JobTransformNameMApping)
    , _jId                    :: !(Maybe Text)
    , _jLabels                :: !(Maybe JobLabels)
    , _jProjectId             :: !(Maybe Text)
    , _jType                  :: !(Maybe JobType)
    , _jCurrentStateTime      :: !(Maybe DateTime')
    , _jReplaceJobId          :: !(Maybe Text)
    , _jCreateTime            :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Job' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jStepsLocation'
--
-- * 'jCreatedFromSnapshotId'
--
-- * 'jRequestedState'
--
-- * 'jJobMetadata'
--
-- * 'jLocation'
--
-- * 'jStartTime'
--
-- * 'jEnvironment'
--
-- * 'jClientRequestId'
--
-- * 'jStageStates'
--
-- * 'jCurrentState'
--
-- * 'jReplacedByJobId'
--
-- * 'jTempFiles'
--
-- * 'jSteps'
--
-- * 'jPipelineDescription'
--
-- * 'jExecutionInfo'
--
-- * 'jName'
--
-- * 'jTransformNameMApping'
--
-- * 'jId'
--
-- * 'jLabels'
--
-- * 'jProjectId'
--
-- * 'jType'
--
-- * 'jCurrentStateTime'
--
-- * 'jReplaceJobId'
--
-- * 'jCreateTime'
job
    :: Job
job =
  Job'
    { _jStepsLocation = Nothing
    , _jCreatedFromSnapshotId = Nothing
    , _jRequestedState = Nothing
    , _jJobMetadata = Nothing
    , _jLocation = Nothing
    , _jStartTime = Nothing
    , _jEnvironment = Nothing
    , _jClientRequestId = Nothing
    , _jStageStates = Nothing
    , _jCurrentState = Nothing
    , _jReplacedByJobId = Nothing
    , _jTempFiles = Nothing
    , _jSteps = Nothing
    , _jPipelineDescription = Nothing
    , _jExecutionInfo = Nothing
    , _jName = Nothing
    , _jTransformNameMApping = Nothing
    , _jId = Nothing
    , _jLabels = Nothing
    , _jProjectId = Nothing
    , _jType = Nothing
    , _jCurrentStateTime = Nothing
    , _jReplaceJobId = Nothing
    , _jCreateTime = Nothing
    }


-- | The GCS location where the steps are stored.
jStepsLocation :: Lens' Job (Maybe Text)
jStepsLocation
  = lens _jStepsLocation
      (\ s a -> s{_jStepsLocation = a})

-- | If this is specified, the job\'s initial state is populated from the
-- given snapshot.
jCreatedFromSnapshotId :: Lens' Job (Maybe Text)
jCreatedFromSnapshotId
  = lens _jCreatedFromSnapshotId
      (\ s a -> s{_jCreatedFromSnapshotId = a})

-- | The job\'s requested state. \`UpdateJob\` may be used to switch between
-- the \`JOB_STATE_STOPPED\` and \`JOB_STATE_RUNNING\` states, by setting
-- requested_state. \`UpdateJob\` may also be used to directly set a job\'s
-- requested state to \`JOB_STATE_CANCELLED\` or \`JOB_STATE_DONE\`,
-- irrevocably terminating the job if it has not already reached a terminal
-- state.
jRequestedState :: Lens' Job (Maybe JobRequestedState)
jRequestedState
  = lens _jRequestedState
      (\ s a -> s{_jRequestedState = a})

-- | This field is populated by the Dataflow service to support filtering
-- jobs by the metadata values provided here. Populated for ListJobs and
-- all GetJob views SUMMARY and higher.
jJobMetadata :: Lens' Job (Maybe JobMetadata)
jJobMetadata
  = lens _jJobMetadata (\ s a -> s{_jJobMetadata = a})

-- | The location that contains this job.
jLocation :: Lens' Job (Maybe Text)
jLocation
  = lens _jLocation (\ s a -> s{_jLocation = a})

-- | The timestamp when the job was started (transitioned to
-- JOB_STATE_PENDING). Flexible resource scheduling jobs are started with
-- some delay after job creation, so start_time is unset before start and
-- is updated when the job is started by the Cloud Dataflow service. For
-- other jobs, start_time always equals to create_time and is immutable and
-- set by the Cloud Dataflow service.
jStartTime :: Lens' Job (Maybe UTCTime)
jStartTime
  = lens _jStartTime (\ s a -> s{_jStartTime = a}) .
      mapping _DateTime

-- | The environment for the job.
jEnvironment :: Lens' Job (Maybe Environment)
jEnvironment
  = lens _jEnvironment (\ s a -> s{_jEnvironment = a})

-- | The client\'s unique identifier of the job, re-used across retried
-- attempts. If this field is set, the service will ensure its uniqueness.
-- The request to create a job will fail if the service has knowledge of a
-- previously submitted job with the same client\'s ID and job name. The
-- caller may use this field to ensure idempotence of job creation across
-- retried attempts to create a job. By default, the field is empty and, in
-- that case, the service ignores it.
jClientRequestId :: Lens' Job (Maybe Text)
jClientRequestId
  = lens _jClientRequestId
      (\ s a -> s{_jClientRequestId = a})

-- | This field may be mutated by the Cloud Dataflow service; callers cannot
-- mutate it.
jStageStates :: Lens' Job [ExecutionStageState]
jStageStates
  = lens _jStageStates (\ s a -> s{_jStageStates = a})
      . _Default
      . _Coerce

-- | The current state of the job. Jobs are created in the
-- \`JOB_STATE_STOPPED\` state unless otherwise specified. A job in the
-- \`JOB_STATE_RUNNING\` state may asynchronously enter a terminal state.
-- After a job has reached a terminal state, no further state updates may
-- be made. This field may be mutated by the Cloud Dataflow service;
-- callers cannot mutate it.
jCurrentState :: Lens' Job (Maybe JobCurrentState)
jCurrentState
  = lens _jCurrentState
      (\ s a -> s{_jCurrentState = a})

-- | If another job is an update of this job (and thus, this job is in
-- \`JOB_STATE_UPDATED\`), this field contains the ID of that job.
jReplacedByJobId :: Lens' Job (Maybe Text)
jReplacedByJobId
  = lens _jReplacedByJobId
      (\ s a -> s{_jReplacedByJobId = a})

-- | A set of files the system should be aware of that are used for temporary
-- storage. These temporary files will be removed on job completion. No
-- duplicates are allowed. No file patterns are supported. The supported
-- files are: Google Cloud Storage:
-- storage.googleapis.com\/{bucket}\/{object}
-- bucket.storage.googleapis.com\/{object}
jTempFiles :: Lens' Job [Text]
jTempFiles
  = lens _jTempFiles (\ s a -> s{_jTempFiles = a}) .
      _Default
      . _Coerce

-- | Exactly one of step or steps_location should be specified. The top-level
-- steps that constitute the entire job.
jSteps :: Lens' Job [Step]
jSteps
  = lens _jSteps (\ s a -> s{_jSteps = a}) . _Default .
      _Coerce

-- | Preliminary field: The format of this data may change at any time. A
-- description of the user pipeline and stages through which it is
-- executed. Created by Cloud Dataflow service. Only retrieved with
-- JOB_VIEW_DESCRIPTION or JOB_VIEW_ALL.
jPipelineDescription :: Lens' Job (Maybe PipelineDescription)
jPipelineDescription
  = lens _jPipelineDescription
      (\ s a -> s{_jPipelineDescription = a})

-- | Deprecated.
jExecutionInfo :: Lens' Job (Maybe JobExecutionInfo)
jExecutionInfo
  = lens _jExecutionInfo
      (\ s a -> s{_jExecutionInfo = a})

-- | The user-specified Cloud Dataflow job name. Only one Job with a given
-- name may exist in a project at any given time. If a caller attempts to
-- create a Job with the same name as an already-existing Job, the attempt
-- returns the existing Job. The name must match the regular expression
-- \`[a-z]([-a-z0-9]{0,38}[a-z0-9])?\`
jName :: Lens' Job (Maybe Text)
jName = lens _jName (\ s a -> s{_jName = a})

-- | The map of transform name prefixes of the job to be replaced to the
-- corresponding name prefixes of the new job.
jTransformNameMApping :: Lens' Job (Maybe JobTransformNameMApping)
jTransformNameMApping
  = lens _jTransformNameMApping
      (\ s a -> s{_jTransformNameMApping = a})

-- | The unique ID of this job. This field is set by the Cloud Dataflow
-- service when the Job is created, and is immutable for the life of the
-- job.
jId :: Lens' Job (Maybe Text)
jId = lens _jId (\ s a -> s{_jId = a})

-- | User-defined labels for this job. The labels map can contain no more
-- than 64 entries. Entries of the labels map are UTF8 strings that comply
-- with the following restrictions: * Keys must conform to regexp:
-- \\p{Ll}\\p{Lo}{0,62} * Values must conform to regexp:
-- [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} * Both keys and values are additionally
-- constrained to be \<= 128 bytes in size.
jLabels :: Lens' Job (Maybe JobLabels)
jLabels = lens _jLabels (\ s a -> s{_jLabels = a})

-- | The ID of the Cloud Platform project that the job belongs to.
jProjectId :: Lens' Job (Maybe Text)
jProjectId
  = lens _jProjectId (\ s a -> s{_jProjectId = a})

-- | The type of Cloud Dataflow job.
jType :: Lens' Job (Maybe JobType)
jType = lens _jType (\ s a -> s{_jType = a})

-- | The timestamp associated with the current state.
jCurrentStateTime :: Lens' Job (Maybe UTCTime)
jCurrentStateTime
  = lens _jCurrentStateTime
      (\ s a -> s{_jCurrentStateTime = a})
      . mapping _DateTime

-- | If this job is an update of an existing job, this field is the job ID of
-- the job it replaced. When sending a \`CreateJobRequest\`, you can update
-- a job by specifying it here. The job named here is stopped, and its
-- intermediate state is transferred to this job.
jReplaceJobId :: Lens' Job (Maybe Text)
jReplaceJobId
  = lens _jReplaceJobId
      (\ s a -> s{_jReplaceJobId = a})

-- | The timestamp when the job was initially created. Immutable and set by
-- the Cloud Dataflow service.
jCreateTime :: Lens' Job (Maybe UTCTime)
jCreateTime
  = lens _jCreateTime (\ s a -> s{_jCreateTime = a}) .
      mapping _DateTime

instance FromJSON Job where
        parseJSON
          = withObject "Job"
              (\ o ->
                 Job' <$>
                   (o .:? "stepsLocation") <*>
                     (o .:? "createdFromSnapshotId")
                     <*> (o .:? "requestedState")
                     <*> (o .:? "jobMetadata")
                     <*> (o .:? "location")
                     <*> (o .:? "startTime")
                     <*> (o .:? "environment")
                     <*> (o .:? "clientRequestId")
                     <*> (o .:? "stageStates" .!= mempty)
                     <*> (o .:? "currentState")
                     <*> (o .:? "replacedByJobId")
                     <*> (o .:? "tempFiles" .!= mempty)
                     <*> (o .:? "steps" .!= mempty)
                     <*> (o .:? "pipelineDescription")
                     <*> (o .:? "executionInfo")
                     <*> (o .:? "name")
                     <*> (o .:? "transformNameMapping")
                     <*> (o .:? "id")
                     <*> (o .:? "labels")
                     <*> (o .:? "projectId")
                     <*> (o .:? "type")
                     <*> (o .:? "currentStateTime")
                     <*> (o .:? "replaceJobId")
                     <*> (o .:? "createTime"))

instance ToJSON Job where
        toJSON Job'{..}
          = object
              (catMaybes
                 [("stepsLocation" .=) <$> _jStepsLocation,
                  ("createdFromSnapshotId" .=) <$>
                    _jCreatedFromSnapshotId,
                  ("requestedState" .=) <$> _jRequestedState,
                  ("jobMetadata" .=) <$> _jJobMetadata,
                  ("location" .=) <$> _jLocation,
                  ("startTime" .=) <$> _jStartTime,
                  ("environment" .=) <$> _jEnvironment,
                  ("clientRequestId" .=) <$> _jClientRequestId,
                  ("stageStates" .=) <$> _jStageStates,
                  ("currentState" .=) <$> _jCurrentState,
                  ("replacedByJobId" .=) <$> _jReplacedByJobId,
                  ("tempFiles" .=) <$> _jTempFiles,
                  ("steps" .=) <$> _jSteps,
                  ("pipelineDescription" .=) <$> _jPipelineDescription,
                  ("executionInfo" .=) <$> _jExecutionInfo,
                  ("name" .=) <$> _jName,
                  ("transformNameMapping" .=) <$>
                    _jTransformNameMApping,
                  ("id" .=) <$> _jId, ("labels" .=) <$> _jLabels,
                  ("projectId" .=) <$> _jProjectId,
                  ("type" .=) <$> _jType,
                  ("currentStateTime" .=) <$> _jCurrentStateTime,
                  ("replaceJobId" .=) <$> _jReplaceJobId,
                  ("createTime" .=) <$> _jCreateTime])

-- | An instruction that reads records. Takes no inputs, produces one output.
--
-- /See:/ 'readInstruction' smart constructor.
newtype ReadInstruction =
  ReadInstruction'
    { _riSource :: Maybe Source
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReadInstruction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riSource'
readInstruction
    :: ReadInstruction
readInstruction = ReadInstruction' {_riSource = Nothing}


-- | The source to read from.
riSource :: Lens' ReadInstruction (Maybe Source)
riSource = lens _riSource (\ s a -> s{_riSource = a})

instance FromJSON ReadInstruction where
        parseJSON
          = withObject "ReadInstruction"
              (\ o -> ReadInstruction' <$> (o .:? "source"))

instance ToJSON ReadInstruction where
        toJSON ReadInstruction'{..}
          = object (catMaybes [("source" .=) <$> _riSource])

-- | A progress measurement of a WorkItem by a worker.
--
-- /See:/ 'approximateReportedProgress' smart constructor.
data ApproximateReportedProgress =
  ApproximateReportedProgress'
    { _arpFractionConsumed     :: !(Maybe (Textual Double))
    , _arpConsumedParallelism  :: !(Maybe ReportedParallelism)
    , _arpRemainingParallelism :: !(Maybe ReportedParallelism)
    , _arpPosition             :: !(Maybe Position)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ApproximateReportedProgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arpFractionConsumed'
--
-- * 'arpConsumedParallelism'
--
-- * 'arpRemainingParallelism'
--
-- * 'arpPosition'
approximateReportedProgress
    :: ApproximateReportedProgress
approximateReportedProgress =
  ApproximateReportedProgress'
    { _arpFractionConsumed = Nothing
    , _arpConsumedParallelism = Nothing
    , _arpRemainingParallelism = Nothing
    , _arpPosition = Nothing
    }


-- | Completion as fraction of the input consumed, from 0.0 (beginning,
-- nothing consumed), to 1.0 (end of the input, entire input consumed).
arpFractionConsumed :: Lens' ApproximateReportedProgress (Maybe Double)
arpFractionConsumed
  = lens _arpFractionConsumed
      (\ s a -> s{_arpFractionConsumed = a})
      . mapping _Coerce

-- | Total amount of parallelism in the portion of input of this task that
-- has already been consumed and is no longer active. In the first two
-- examples above (see remaining_parallelism), the value should be 29 or 2
-- respectively. The sum of remaining_parallelism and consumed_parallelism
-- should equal the total amount of parallelism in this work item. If
-- specified, must be finite.
arpConsumedParallelism :: Lens' ApproximateReportedProgress (Maybe ReportedParallelism)
arpConsumedParallelism
  = lens _arpConsumedParallelism
      (\ s a -> s{_arpConsumedParallelism = a})

-- | Total amount of parallelism in the input of this task that remains,
-- (i.e. can be delegated to this task and any new tasks via dynamic
-- splitting). Always at least 1 for non-finished work items and 0 for
-- finished. \"Amount of parallelism\" refers to how many non-empty parts
-- of the input can be read in parallel. This does not necessarily equal
-- number of records. An input that can be read in parallel down to the
-- individual records is called \"perfectly splittable\". An example of
-- non-perfectly parallelizable input is a block-compressed file format
-- where a block of records has to be read as a whole, but different blocks
-- can be read in parallel. Examples: * If we are processing record #30
-- (starting at 1) out of 50 in a perfectly splittable 50-record input,
-- this value should be 21 (20 remaining + 1 current). * If we are reading
-- through block 3 in a block-compressed file consisting of 5 blocks, this
-- value should be 3 (since blocks 4 and 5 can be processed in parallel by
-- new tasks via dynamic splitting and the current task remains processing
-- block 3). * If we are reading through the last block in a
-- block-compressed file, or reading or processing the last record in a
-- perfectly splittable input, this value should be 1, because apart from
-- the current task, no additional remainder can be split off.
arpRemainingParallelism :: Lens' ApproximateReportedProgress (Maybe ReportedParallelism)
arpRemainingParallelism
  = lens _arpRemainingParallelism
      (\ s a -> s{_arpRemainingParallelism = a})

-- | A Position within the work to represent a progress.
arpPosition :: Lens' ApproximateReportedProgress (Maybe Position)
arpPosition
  = lens _arpPosition (\ s a -> s{_arpPosition = a})

instance FromJSON ApproximateReportedProgress where
        parseJSON
          = withObject "ApproximateReportedProgress"
              (\ o ->
                 ApproximateReportedProgress' <$>
                   (o .:? "fractionConsumed") <*>
                     (o .:? "consumedParallelism")
                     <*> (o .:? "remainingParallelism")
                     <*> (o .:? "position"))

instance ToJSON ApproximateReportedProgress where
        toJSON ApproximateReportedProgress'{..}
          = object
              (catMaybes
                 [("fractionConsumed" .=) <$> _arpFractionConsumed,
                  ("consumedParallelism" .=) <$>
                    _arpConsumedParallelism,
                  ("remainingParallelism" .=) <$>
                    _arpRemainingParallelism,
                  ("position" .=) <$> _arpPosition])

-- | The sink to write to, plus its parameters.
--
-- /See:/ 'sinkSpec' smart constructor.
newtype SinkSpec =
  SinkSpec'
    { _sAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SinkSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sAddtional'
sinkSpec
    :: HashMap Text JSONValue -- ^ 'sAddtional'
    -> SinkSpec
sinkSpec pSAddtional_ = SinkSpec' {_sAddtional = _Coerce # pSAddtional_}


-- | Properties of the object.
sAddtional :: Lens' SinkSpec (HashMap Text JSONValue)
sAddtional
  = lens _sAddtional (\ s a -> s{_sAddtional = a}) .
      _Coerce

instance FromJSON SinkSpec where
        parseJSON
          = withObject "SinkSpec"
              (\ o -> SinkSpec' <$> (parseJSONObject o))

instance ToJSON SinkSpec where
        toJSON = toJSON . _sAddtional

-- | Describes one particular pool of Cloud Dataflow workers to be
-- instantiated by the Cloud Dataflow service in order to perform the
-- computations required by a job. Note that a workflow job may use
-- multiple pools, in order to match the various computational requirements
-- of the various stages of the job.
--
-- /See:/ 'workerPool' smart constructor.
data WorkerPool =
  WorkerPool'
    { _wpAutoscalingSettings         :: !(Maybe AutoscalingSettings)
    , _wpNumThreadsPerWorker         :: !(Maybe (Textual Int32))
    , _wpDiskSizeGb                  :: !(Maybe (Textual Int32))
    , _wpKind                        :: !(Maybe Text)
    , _wpTaskrunnerSettings          :: !(Maybe TaskRunnerSettings)
    , _wpNumWorkers                  :: !(Maybe (Textual Int32))
    , _wpNetwork                     :: !(Maybe Text)
    , _wpZone                        :: !(Maybe Text)
    , _wpIPConfiguration             :: !(Maybe WorkerPoolIPConfiguration)
    , _wpPackages                    :: !(Maybe [Package])
    , _wpOnHostMaintenance           :: !(Maybe Text)
    , _wpDiskSourceImage             :: !(Maybe Text)
    , _wpSubnetwork                  :: !(Maybe Text)
    , _wpMachineType                 :: !(Maybe Text)
    , _wpMetadata                    :: !(Maybe WorkerPoolMetadata)
    , _wpDiskType                    :: !(Maybe Text)
    , _wpTeardownPolicy              :: !(Maybe WorkerPoolTeardownPolicy)
    , _wpDefaultPackageSet           :: !(Maybe WorkerPoolDefaultPackageSet)
    , _wpPoolArgs                    :: !(Maybe WorkerPoolPoolArgs)
    , _wpWorkerHarnessContainerImage :: !(Maybe Text)
    , _wpDataDisks                   :: !(Maybe [Disk])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkerPool' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wpAutoscalingSettings'
--
-- * 'wpNumThreadsPerWorker'
--
-- * 'wpDiskSizeGb'
--
-- * 'wpKind'
--
-- * 'wpTaskrunnerSettings'
--
-- * 'wpNumWorkers'
--
-- * 'wpNetwork'
--
-- * 'wpZone'
--
-- * 'wpIPConfiguration'
--
-- * 'wpPackages'
--
-- * 'wpOnHostMaintenance'
--
-- * 'wpDiskSourceImage'
--
-- * 'wpSubnetwork'
--
-- * 'wpMachineType'
--
-- * 'wpMetadata'
--
-- * 'wpDiskType'
--
-- * 'wpTeardownPolicy'
--
-- * 'wpDefaultPackageSet'
--
-- * 'wpPoolArgs'
--
-- * 'wpWorkerHarnessContainerImage'
--
-- * 'wpDataDisks'
workerPool
    :: WorkerPool
workerPool =
  WorkerPool'
    { _wpAutoscalingSettings = Nothing
    , _wpNumThreadsPerWorker = Nothing
    , _wpDiskSizeGb = Nothing
    , _wpKind = Nothing
    , _wpTaskrunnerSettings = Nothing
    , _wpNumWorkers = Nothing
    , _wpNetwork = Nothing
    , _wpZone = Nothing
    , _wpIPConfiguration = Nothing
    , _wpPackages = Nothing
    , _wpOnHostMaintenance = Nothing
    , _wpDiskSourceImage = Nothing
    , _wpSubnetwork = Nothing
    , _wpMachineType = Nothing
    , _wpMetadata = Nothing
    , _wpDiskType = Nothing
    , _wpTeardownPolicy = Nothing
    , _wpDefaultPackageSet = Nothing
    , _wpPoolArgs = Nothing
    , _wpWorkerHarnessContainerImage = Nothing
    , _wpDataDisks = Nothing
    }


-- | Settings for autoscaling of this WorkerPool.
wpAutoscalingSettings :: Lens' WorkerPool (Maybe AutoscalingSettings)
wpAutoscalingSettings
  = lens _wpAutoscalingSettings
      (\ s a -> s{_wpAutoscalingSettings = a})

-- | The number of threads per worker harness. If empty or unspecified, the
-- service will choose a number of threads (according to the number of
-- cores on the selected machine type for batch, or 1 by convention for
-- streaming).
wpNumThreadsPerWorker :: Lens' WorkerPool (Maybe Int32)
wpNumThreadsPerWorker
  = lens _wpNumThreadsPerWorker
      (\ s a -> s{_wpNumThreadsPerWorker = a})
      . mapping _Coerce

-- | Size of root disk for VMs, in GB. If zero or unspecified, the service
-- will attempt to choose a reasonable default.
wpDiskSizeGb :: Lens' WorkerPool (Maybe Int32)
wpDiskSizeGb
  = lens _wpDiskSizeGb (\ s a -> s{_wpDiskSizeGb = a})
      . mapping _Coerce

-- | The kind of the worker pool; currently only \`harness\` and \`shuffle\`
-- are supported.
wpKind :: Lens' WorkerPool (Maybe Text)
wpKind = lens _wpKind (\ s a -> s{_wpKind = a})

-- | Settings passed through to Google Compute Engine workers when using the
-- standard Dataflow task runner. Users should ignore this field.
wpTaskrunnerSettings :: Lens' WorkerPool (Maybe TaskRunnerSettings)
wpTaskrunnerSettings
  = lens _wpTaskrunnerSettings
      (\ s a -> s{_wpTaskrunnerSettings = a})

-- | Number of Google Compute Engine workers in this pool needed to execute
-- the job. If zero or unspecified, the service will attempt to choose a
-- reasonable default.
wpNumWorkers :: Lens' WorkerPool (Maybe Int32)
wpNumWorkers
  = lens _wpNumWorkers (\ s a -> s{_wpNumWorkers = a})
      . mapping _Coerce

-- | Network to which VMs will be assigned. If empty or unspecified, the
-- service will use the network \"default\".
wpNetwork :: Lens' WorkerPool (Maybe Text)
wpNetwork
  = lens _wpNetwork (\ s a -> s{_wpNetwork = a})

-- | Zone to run the worker pools in. If empty or unspecified, the service
-- will attempt to choose a reasonable default.
wpZone :: Lens' WorkerPool (Maybe Text)
wpZone = lens _wpZone (\ s a -> s{_wpZone = a})

-- | Configuration for VM IPs.
wpIPConfiguration :: Lens' WorkerPool (Maybe WorkerPoolIPConfiguration)
wpIPConfiguration
  = lens _wpIPConfiguration
      (\ s a -> s{_wpIPConfiguration = a})

-- | Packages to be installed on workers.
wpPackages :: Lens' WorkerPool [Package]
wpPackages
  = lens _wpPackages (\ s a -> s{_wpPackages = a}) .
      _Default
      . _Coerce

-- | The action to take on host maintenance, as defined by the Google Compute
-- Engine API.
wpOnHostMaintenance :: Lens' WorkerPool (Maybe Text)
wpOnHostMaintenance
  = lens _wpOnHostMaintenance
      (\ s a -> s{_wpOnHostMaintenance = a})

-- | Fully qualified source image for disks.
wpDiskSourceImage :: Lens' WorkerPool (Maybe Text)
wpDiskSourceImage
  = lens _wpDiskSourceImage
      (\ s a -> s{_wpDiskSourceImage = a})

-- | Subnetwork to which VMs will be assigned, if desired. Expected to be of
-- the form \"regions\/REGION\/subnetworks\/SUBNETWORK\".
wpSubnetwork :: Lens' WorkerPool (Maybe Text)
wpSubnetwork
  = lens _wpSubnetwork (\ s a -> s{_wpSubnetwork = a})

-- | Machine type (e.g. \"n1-standard-1\"). If empty or unspecified, the
-- service will attempt to choose a reasonable default.
wpMachineType :: Lens' WorkerPool (Maybe Text)
wpMachineType
  = lens _wpMachineType
      (\ s a -> s{_wpMachineType = a})

-- | Metadata to set on the Google Compute Engine VMs.
wpMetadata :: Lens' WorkerPool (Maybe WorkerPoolMetadata)
wpMetadata
  = lens _wpMetadata (\ s a -> s{_wpMetadata = a})

-- | Type of root disk for VMs. If empty or unspecified, the service will
-- attempt to choose a reasonable default.
wpDiskType :: Lens' WorkerPool (Maybe Text)
wpDiskType
  = lens _wpDiskType (\ s a -> s{_wpDiskType = a})

-- | Sets the policy for determining when to turndown worker pool. Allowed
-- values are: \`TEARDOWN_ALWAYS\`, \`TEARDOWN_ON_SUCCESS\`, and
-- \`TEARDOWN_NEVER\`. \`TEARDOWN_ALWAYS\` means workers are always torn
-- down regardless of whether the job succeeds. \`TEARDOWN_ON_SUCCESS\`
-- means workers are torn down if the job succeeds. \`TEARDOWN_NEVER\`
-- means the workers are never torn down. If the workers are not torn down
-- by the service, they will continue to run and use Google Compute Engine
-- VM resources in the user\'s project until they are explicitly terminated
-- by the user. Because of this, Google recommends using the
-- \`TEARDOWN_ALWAYS\` policy except for small, manually supervised test
-- jobs. If unknown or unspecified, the service will attempt to choose a
-- reasonable default.
wpTeardownPolicy :: Lens' WorkerPool (Maybe WorkerPoolTeardownPolicy)
wpTeardownPolicy
  = lens _wpTeardownPolicy
      (\ s a -> s{_wpTeardownPolicy = a})

-- | The default package set to install. This allows the service to select a
-- default set of packages which are useful to worker harnesses written in
-- a particular language.
wpDefaultPackageSet :: Lens' WorkerPool (Maybe WorkerPoolDefaultPackageSet)
wpDefaultPackageSet
  = lens _wpDefaultPackageSet
      (\ s a -> s{_wpDefaultPackageSet = a})

-- | Extra arguments for this worker pool.
wpPoolArgs :: Lens' WorkerPool (Maybe WorkerPoolPoolArgs)
wpPoolArgs
  = lens _wpPoolArgs (\ s a -> s{_wpPoolArgs = a})

-- | Required. Docker container image that executes the Cloud Dataflow worker
-- harness, residing in Google Container Registry.
wpWorkerHarnessContainerImage :: Lens' WorkerPool (Maybe Text)
wpWorkerHarnessContainerImage
  = lens _wpWorkerHarnessContainerImage
      (\ s a -> s{_wpWorkerHarnessContainerImage = a})

-- | Data disks that are used by a VM in this workflow.
wpDataDisks :: Lens' WorkerPool [Disk]
wpDataDisks
  = lens _wpDataDisks (\ s a -> s{_wpDataDisks = a}) .
      _Default
      . _Coerce

instance FromJSON WorkerPool where
        parseJSON
          = withObject "WorkerPool"
              (\ o ->
                 WorkerPool' <$>
                   (o .:? "autoscalingSettings") <*>
                     (o .:? "numThreadsPerWorker")
                     <*> (o .:? "diskSizeGb")
                     <*> (o .:? "kind")
                     <*> (o .:? "taskrunnerSettings")
                     <*> (o .:? "numWorkers")
                     <*> (o .:? "network")
                     <*> (o .:? "zone")
                     <*> (o .:? "ipConfiguration")
                     <*> (o .:? "packages" .!= mempty)
                     <*> (o .:? "onHostMaintenance")
                     <*> (o .:? "diskSourceImage")
                     <*> (o .:? "subnetwork")
                     <*> (o .:? "machineType")
                     <*> (o .:? "metadata")
                     <*> (o .:? "diskType")
                     <*> (o .:? "teardownPolicy")
                     <*> (o .:? "defaultPackageSet")
                     <*> (o .:? "poolArgs")
                     <*> (o .:? "workerHarnessContainerImage")
                     <*> (o .:? "dataDisks" .!= mempty))

instance ToJSON WorkerPool where
        toJSON WorkerPool'{..}
          = object
              (catMaybes
                 [("autoscalingSettings" .=) <$>
                    _wpAutoscalingSettings,
                  ("numThreadsPerWorker" .=) <$>
                    _wpNumThreadsPerWorker,
                  ("diskSizeGb" .=) <$> _wpDiskSizeGb,
                  ("kind" .=) <$> _wpKind,
                  ("taskrunnerSettings" .=) <$> _wpTaskrunnerSettings,
                  ("numWorkers" .=) <$> _wpNumWorkers,
                  ("network" .=) <$> _wpNetwork,
                  ("zone" .=) <$> _wpZone,
                  ("ipConfiguration" .=) <$> _wpIPConfiguration,
                  ("packages" .=) <$> _wpPackages,
                  ("onHostMaintenance" .=) <$> _wpOnHostMaintenance,
                  ("diskSourceImage" .=) <$> _wpDiskSourceImage,
                  ("subnetwork" .=) <$> _wpSubnetwork,
                  ("machineType" .=) <$> _wpMachineType,
                  ("metadata" .=) <$> _wpMetadata,
                  ("diskType" .=) <$> _wpDiskType,
                  ("teardownPolicy" .=) <$> _wpTeardownPolicy,
                  ("defaultPackageSet" .=) <$> _wpDefaultPackageSet,
                  ("poolArgs" .=) <$> _wpPoolArgs,
                  ("workerHarnessContainerImage" .=) <$>
                    _wpWorkerHarnessContainerImage,
                  ("dataDisks" .=) <$> _wpDataDisks])

-- | Defines a particular step within a Cloud Dataflow job. A job consists of
-- multiple steps, each of which performs some specific operation as part
-- of the overall job. Data is typically passed from one step to another as
-- part of the job. Here\'s an example of a sequence of steps which
-- together implement a Map-Reduce job: * Read a collection of data from
-- some source, parsing the collection\'s elements. * Validate the
-- elements. * Apply a user-defined function to map each element to some
-- value and extract an element-specific key value. * Group elements with
-- the same key into a single element with that key, transforming a
-- multiply-keyed collection into a uniquely-keyed collection. * Write the
-- elements out to some data sink. Note that the Cloud Dataflow service may
-- be used to run many different types of jobs, not just Map-Reduce.
--
-- /See:/ 'step' smart constructor.
data Step =
  Step'
    { _sKind       :: !(Maybe Text)
    , _sName       :: !(Maybe Text)
    , _sProperties :: !(Maybe StepProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Step' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sKind'
--
-- * 'sName'
--
-- * 'sProperties'
step
    :: Step
step = Step' {_sKind = Nothing, _sName = Nothing, _sProperties = Nothing}


-- | The kind of step in the Cloud Dataflow job.
sKind :: Lens' Step (Maybe Text)
sKind = lens _sKind (\ s a -> s{_sKind = a})

-- | The name that identifies the step. This must be unique for each step
-- with respect to all other steps in the Cloud Dataflow job.
sName :: Lens' Step (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | Named properties associated with the step. Each kind of predefined step
-- has its own required set of properties. Must be provided on Create. Only
-- retrieved with JOB_VIEW_ALL.
sProperties :: Lens' Step (Maybe StepProperties)
sProperties
  = lens _sProperties (\ s a -> s{_sProperties = a})

instance FromJSON Step where
        parseJSON
          = withObject "Step"
              (\ o ->
                 Step' <$>
                   (o .:? "kind") <*> (o .:? "name") <*>
                     (o .:? "properties"))

instance ToJSON Step where
        toJSON Step'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _sKind, ("name" .=) <$> _sName,
                  ("properties" .=) <$> _sProperties])

-- | Description of an interstitial value between transforms in an execution
-- stage.
--
-- /See:/ 'componentSource' smart constructor.
data ComponentSource =
  ComponentSource'
    { _csUserName                      :: !(Maybe Text)
    , _csName                          :: !(Maybe Text)
    , _csOriginalTransformOrCollection :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ComponentSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csUserName'
--
-- * 'csName'
--
-- * 'csOriginalTransformOrCollection'
componentSource
    :: ComponentSource
componentSource =
  ComponentSource'
    { _csUserName = Nothing
    , _csName = Nothing
    , _csOriginalTransformOrCollection = Nothing
    }


-- | Human-readable name for this transform; may be user or system generated.
csUserName :: Lens' ComponentSource (Maybe Text)
csUserName
  = lens _csUserName (\ s a -> s{_csUserName = a})

-- | Dataflow service generated name for this source.
csName :: Lens' ComponentSource (Maybe Text)
csName = lens _csName (\ s a -> s{_csName = a})

-- | User name for the original user transform or collection with which this
-- source is most closely associated.
csOriginalTransformOrCollection :: Lens' ComponentSource (Maybe Text)
csOriginalTransformOrCollection
  = lens _csOriginalTransformOrCollection
      (\ s a -> s{_csOriginalTransformOrCollection = a})

instance FromJSON ComponentSource where
        parseJSON
          = withObject "ComponentSource"
              (\ o ->
                 ComponentSource' <$>
                   (o .:? "userName") <*> (o .:? "name") <*>
                     (o .:? "originalTransformOrCollection"))

instance ToJSON ComponentSource where
        toJSON ComponentSource'{..}
          = object
              (catMaybes
                 [("userName" .=) <$> _csUserName,
                  ("name" .=) <$> _csName,
                  ("originalTransformOrCollection" .=) <$>
                    _csOriginalTransformOrCollection])

-- | The packages that must be installed in order for a worker to run the
-- steps of the Cloud Dataflow job that will be assigned to its worker
-- pool. This is the mechanism by which the Cloud Dataflow SDK causes code
-- to be loaded onto the workers. For example, the Cloud Dataflow Java SDK
-- might use this to install jars containing the user\'s code and all of
-- the various dependencies (libraries, data files, etc.) required in order
-- for that code to run.
--
-- /See:/ 'package' smart constructor.
data Package =
  Package'
    { _pLocation :: !(Maybe Text)
    , _pName     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Package' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pLocation'
--
-- * 'pName'
package
    :: Package
package = Package' {_pLocation = Nothing, _pName = Nothing}


-- | The resource to read the package from. The supported resource type is:
-- Google Cloud Storage: storage.googleapis.com\/{bucket}
-- bucket.storage.googleapis.com\/
pLocation :: Lens' Package (Maybe Text)
pLocation
  = lens _pLocation (\ s a -> s{_pLocation = a})

-- | The name of the package.
pName :: Lens' Package (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

instance FromJSON Package where
        parseJSON
          = withObject "Package"
              (\ o ->
                 Package' <$> (o .:? "location") <*> (o .:? "name"))

instance ToJSON Package where
        toJSON Package'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _pLocation,
                  ("name" .=) <$> _pName])

-- | Description of the composing transforms, names\/ids, and input\/outputs
-- of a stage of execution. Some composing transforms and sources may have
-- been generated by the Dataflow service during execution planning.
--
-- /See:/ 'executionStageSummary' smart constructor.
data ExecutionStageSummary =
  ExecutionStageSummary'
    { _essOutputSource       :: !(Maybe [StageSource])
    , _essKind               :: !(Maybe ExecutionStageSummaryKind)
    , _essInputSource        :: !(Maybe [StageSource])
    , _essName               :: !(Maybe Text)
    , _essComponentSource    :: !(Maybe [ComponentSource])
    , _essId                 :: !(Maybe Text)
    , _essComponentTransform :: !(Maybe [ComponentTransform])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExecutionStageSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'essOutputSource'
--
-- * 'essKind'
--
-- * 'essInputSource'
--
-- * 'essName'
--
-- * 'essComponentSource'
--
-- * 'essId'
--
-- * 'essComponentTransform'
executionStageSummary
    :: ExecutionStageSummary
executionStageSummary =
  ExecutionStageSummary'
    { _essOutputSource = Nothing
    , _essKind = Nothing
    , _essInputSource = Nothing
    , _essName = Nothing
    , _essComponentSource = Nothing
    , _essId = Nothing
    , _essComponentTransform = Nothing
    }


-- | Output sources for this stage.
essOutputSource :: Lens' ExecutionStageSummary [StageSource]
essOutputSource
  = lens _essOutputSource
      (\ s a -> s{_essOutputSource = a})
      . _Default
      . _Coerce

-- | Type of tranform this stage is executing.
essKind :: Lens' ExecutionStageSummary (Maybe ExecutionStageSummaryKind)
essKind = lens _essKind (\ s a -> s{_essKind = a})

-- | Input sources for this stage.
essInputSource :: Lens' ExecutionStageSummary [StageSource]
essInputSource
  = lens _essInputSource
      (\ s a -> s{_essInputSource = a})
      . _Default
      . _Coerce

-- | Dataflow service generated name for this stage.
essName :: Lens' ExecutionStageSummary (Maybe Text)
essName = lens _essName (\ s a -> s{_essName = a})

-- | Collections produced and consumed by component transforms of this stage.
essComponentSource :: Lens' ExecutionStageSummary [ComponentSource]
essComponentSource
  = lens _essComponentSource
      (\ s a -> s{_essComponentSource = a})
      . _Default
      . _Coerce

-- | Dataflow service generated id for this stage.
essId :: Lens' ExecutionStageSummary (Maybe Text)
essId = lens _essId (\ s a -> s{_essId = a})

-- | Transforms that comprise this execution stage.
essComponentTransform :: Lens' ExecutionStageSummary [ComponentTransform]
essComponentTransform
  = lens _essComponentTransform
      (\ s a -> s{_essComponentTransform = a})
      . _Default
      . _Coerce

instance FromJSON ExecutionStageSummary where
        parseJSON
          = withObject "ExecutionStageSummary"
              (\ o ->
                 ExecutionStageSummary' <$>
                   (o .:? "outputSource" .!= mempty) <*> (o .:? "kind")
                     <*> (o .:? "inputSource" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "componentSource" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "componentTransform" .!= mempty))

instance ToJSON ExecutionStageSummary where
        toJSON ExecutionStageSummary'{..}
          = object
              (catMaybes
                 [("outputSource" .=) <$> _essOutputSource,
                  ("kind" .=) <$> _essKind,
                  ("inputSource" .=) <$> _essInputSource,
                  ("name" .=) <$> _essName,
                  ("componentSource" .=) <$> _essComponentSource,
                  ("id" .=) <$> _essId,
                  ("componentTransform" .=) <$>
                    _essComponentTransform])

-- | Parameters contains specific information about the code. This is a
-- struct to allow parameters of different types. Examples: 1. For a
-- \"HARNESS_STARTED\" message parameters might provide the name of the
-- worker and additional data like timing information. 2. For a
-- \"GCS_DOWNLOAD_ERROR\" parameters might contain fields listing the GCS
-- objects being downloaded and fields containing errors. In general
-- complex data structures should be avoided. If a worker needs to send a
-- specific and complicated data structure then please consider defining a
-- new proto and adding it to the data oneof in WorkerMessageResponse.
-- Conventions: Parameters should only be used for information that isn\'t
-- typically passed as a label. hostname and other worker identifiers
-- should almost always be passed as labels since they will be included on
-- most messages.
--
-- /See:/ 'workerMessageCodeParameters' smart constructor.
newtype WorkerMessageCodeParameters =
  WorkerMessageCodeParameters'
    { _wmcpAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkerMessageCodeParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wmcpAddtional'
workerMessageCodeParameters
    :: HashMap Text JSONValue -- ^ 'wmcpAddtional'
    -> WorkerMessageCodeParameters
workerMessageCodeParameters pWmcpAddtional_ =
  WorkerMessageCodeParameters' {_wmcpAddtional = _Coerce # pWmcpAddtional_}


-- | Properties of the object.
wmcpAddtional :: Lens' WorkerMessageCodeParameters (HashMap Text JSONValue)
wmcpAddtional
  = lens _wmcpAddtional
      (\ s a -> s{_wmcpAddtional = a})
      . _Coerce

instance FromJSON WorkerMessageCodeParameters where
        parseJSON
          = withObject "WorkerMessageCodeParameters"
              (\ o ->
                 WorkerMessageCodeParameters' <$> (parseJSONObject o))

instance ToJSON WorkerMessageCodeParameters where
        toJSON = toJSON . _wmcpAddtional

-- | When a task splits using WorkItemStatus.dynamic_source_split, this
-- message describes the two parts of the split relative to the description
-- of the current task\'s input.
--
-- /See:/ 'dynamicSourceSplit' smart constructor.
data DynamicSourceSplit =
  DynamicSourceSplit'
    { _dssResidual :: !(Maybe DerivedSource)
    , _dssPrimary  :: !(Maybe DerivedSource)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DynamicSourceSplit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dssResidual'
--
-- * 'dssPrimary'
dynamicSourceSplit
    :: DynamicSourceSplit
dynamicSourceSplit =
  DynamicSourceSplit' {_dssResidual = Nothing, _dssPrimary = Nothing}


-- | Residual part (returned to the pool of work). Specified relative to the
-- previously-current source.
dssResidual :: Lens' DynamicSourceSplit (Maybe DerivedSource)
dssResidual
  = lens _dssResidual (\ s a -> s{_dssResidual = a})

-- | Primary part (continued to be processed by worker). Specified relative
-- to the previously-current source. Becomes current.
dssPrimary :: Lens' DynamicSourceSplit (Maybe DerivedSource)
dssPrimary
  = lens _dssPrimary (\ s a -> s{_dssPrimary = a})

instance FromJSON DynamicSourceSplit where
        parseJSON
          = withObject "DynamicSourceSplit"
              (\ o ->
                 DynamicSourceSplit' <$>
                   (o .:? "residual") <*> (o .:? "primary"))

instance ToJSON DynamicSourceSplit where
        toJSON DynamicSourceSplit'{..}
          = object
              (catMaybes
                 [("residual" .=) <$> _dssResidual,
                  ("primary" .=) <$> _dssPrimary])

-- | Request to create a snapshot of a job.
--
-- /See:/ 'snapshotJobRequest' smart constructor.
data SnapshotJobRequest =
  SnapshotJobRequest'
    { _sjrTtl      :: !(Maybe GDuration)
    , _sjrLocation :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SnapshotJobRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sjrTtl'
--
-- * 'sjrLocation'
snapshotJobRequest
    :: SnapshotJobRequest
snapshotJobRequest =
  SnapshotJobRequest' {_sjrTtl = Nothing, _sjrLocation = Nothing}


-- | TTL for the snapshot.
sjrTtl :: Lens' SnapshotJobRequest (Maybe Scientific)
sjrTtl
  = lens _sjrTtl (\ s a -> s{_sjrTtl = a}) .
      mapping _GDuration

-- | The location that contains this job.
sjrLocation :: Lens' SnapshotJobRequest (Maybe Text)
sjrLocation
  = lens _sjrLocation (\ s a -> s{_sjrLocation = a})

instance FromJSON SnapshotJobRequest where
        parseJSON
          = withObject "SnapshotJobRequest"
              (\ o ->
                 SnapshotJobRequest' <$>
                   (o .:? "ttl") <*> (o .:? "location"))

instance ToJSON SnapshotJobRequest where
        toJSON SnapshotJobRequest'{..}
          = object
              (catMaybes
                 [("ttl" .=) <$> _sjrTtl,
                  ("location" .=) <$> _sjrLocation])

-- | Response from a request to report the status of WorkItems.
--
-- /See:/ 'reportWorkItemStatusResponse' smart constructor.
data ReportWorkItemStatusResponse =
  ReportWorkItemStatusResponse'
    { _rwisrWorkItemServiceStates :: !(Maybe [WorkItemServiceState])
    , _rwisrUnifiedWorkerResponse :: !(Maybe ReportWorkItemStatusResponseUnifiedWorkerResponse)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportWorkItemStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rwisrWorkItemServiceStates'
--
-- * 'rwisrUnifiedWorkerResponse'
reportWorkItemStatusResponse
    :: ReportWorkItemStatusResponse
reportWorkItemStatusResponse =
  ReportWorkItemStatusResponse'
    { _rwisrWorkItemServiceStates = Nothing
    , _rwisrUnifiedWorkerResponse = Nothing
    }


-- | A set of messages indicating the service-side state for each WorkItem
-- whose status was reported, in the same order as the WorkItemStatus
-- messages in the ReportWorkItemStatusRequest which resulting in this
-- response.
rwisrWorkItemServiceStates :: Lens' ReportWorkItemStatusResponse [WorkItemServiceState]
rwisrWorkItemServiceStates
  = lens _rwisrWorkItemServiceStates
      (\ s a -> s{_rwisrWorkItemServiceStates = a})
      . _Default
      . _Coerce

-- | Untranslated bag-of-bytes WorkProgressUpdateResponse for UnifiedWorker.
rwisrUnifiedWorkerResponse :: Lens' ReportWorkItemStatusResponse (Maybe ReportWorkItemStatusResponseUnifiedWorkerResponse)
rwisrUnifiedWorkerResponse
  = lens _rwisrUnifiedWorkerResponse
      (\ s a -> s{_rwisrUnifiedWorkerResponse = a})

instance FromJSON ReportWorkItemStatusResponse where
        parseJSON
          = withObject "ReportWorkItemStatusResponse"
              (\ o ->
                 ReportWorkItemStatusResponse' <$>
                   (o .:? "workItemServiceStates" .!= mempty) <*>
                     (o .:? "unifiedWorkerResponse"))

instance ToJSON ReportWorkItemStatusResponse where
        toJSON ReportWorkItemStatusResponse'{..}
          = object
              (catMaybes
                 [("workItemServiceStates" .=) <$>
                    _rwisrWorkItemServiceStates,
                  ("unifiedWorkerResponse" .=) <$>
                    _rwisrUnifiedWorkerResponse])

-- | DEPRECATED in favor of DynamicSourceSplit.
--
-- /See:/ 'sourceFork' smart constructor.
data SourceFork =
  SourceFork'
    { _sfResidual       :: !(Maybe SourceSplitShard)
    , _sfPrimarySource  :: !(Maybe DerivedSource)
    , _sfPrimary        :: !(Maybe SourceSplitShard)
    , _sfResidualSource :: !(Maybe DerivedSource)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceFork' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfResidual'
--
-- * 'sfPrimarySource'
--
-- * 'sfPrimary'
--
-- * 'sfResidualSource'
sourceFork
    :: SourceFork
sourceFork =
  SourceFork'
    { _sfResidual = Nothing
    , _sfPrimarySource = Nothing
    , _sfPrimary = Nothing
    , _sfResidualSource = Nothing
    }


-- | DEPRECATED
sfResidual :: Lens' SourceFork (Maybe SourceSplitShard)
sfResidual
  = lens _sfResidual (\ s a -> s{_sfResidual = a})

-- | DEPRECATED
sfPrimarySource :: Lens' SourceFork (Maybe DerivedSource)
sfPrimarySource
  = lens _sfPrimarySource
      (\ s a -> s{_sfPrimarySource = a})

-- | DEPRECATED
sfPrimary :: Lens' SourceFork (Maybe SourceSplitShard)
sfPrimary
  = lens _sfPrimary (\ s a -> s{_sfPrimary = a})

-- | DEPRECATED
sfResidualSource :: Lens' SourceFork (Maybe DerivedSource)
sfResidualSource
  = lens _sfResidualSource
      (\ s a -> s{_sfResidualSource = a})

instance FromJSON SourceFork where
        parseJSON
          = withObject "SourceFork"
              (\ o ->
                 SourceFork' <$>
                   (o .:? "residual") <*> (o .:? "primarySource") <*>
                     (o .:? "primary")
                     <*> (o .:? "residualSource"))

instance ToJSON SourceFork where
        toJSON SourceFork'{..}
          = object
              (catMaybes
                 [("residual" .=) <$> _sfResidual,
                  ("primarySource" .=) <$> _sfPrimarySource,
                  ("primary" .=) <$> _sfPrimary,
                  ("residualSource" .=) <$> _sfResidualSource])

-- | Service-side response to WorkerMessage reporting resource utilization.
--
-- /See:/ 'resourceUtilizationReportResponse' smart constructor.
data ResourceUtilizationReportResponse =
  ResourceUtilizationReportResponse'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceUtilizationReportResponse' with the minimum fields required to make a request.
--
resourceUtilizationReportResponse
    :: ResourceUtilizationReportResponse
resourceUtilizationReportResponse = ResourceUtilizationReportResponse'


instance FromJSON ResourceUtilizationReportResponse
         where
        parseJSON
          = withObject "ResourceUtilizationReportResponse"
              (\ o -> pure ResourceUtilizationReportResponse')

instance ToJSON ResourceUtilizationReportResponse
         where
        toJSON = const emptyObject

-- | Describes full or partial data disk assignment information of the
-- computation ranges.
--
-- /See:/ 'streamingComputationRanges' smart constructor.
data StreamingComputationRanges =
  StreamingComputationRanges'
    { _scrRangeAssignments :: !(Maybe [KeyRangeDataDiskAssignment])
    , _scrComputationId    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StreamingComputationRanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scrRangeAssignments'
--
-- * 'scrComputationId'
streamingComputationRanges
    :: StreamingComputationRanges
streamingComputationRanges =
  StreamingComputationRanges'
    {_scrRangeAssignments = Nothing, _scrComputationId = Nothing}


-- | Data disk assignments for ranges from this computation.
scrRangeAssignments :: Lens' StreamingComputationRanges [KeyRangeDataDiskAssignment]
scrRangeAssignments
  = lens _scrRangeAssignments
      (\ s a -> s{_scrRangeAssignments = a})
      . _Default
      . _Coerce

-- | The ID of the computation.
scrComputationId :: Lens' StreamingComputationRanges (Maybe Text)
scrComputationId
  = lens _scrComputationId
      (\ s a -> s{_scrComputationId = a})

instance FromJSON StreamingComputationRanges where
        parseJSON
          = withObject "StreamingComputationRanges"
              (\ o ->
                 StreamingComputationRanges' <$>
                   (o .:? "rangeAssignments" .!= mempty) <*>
                     (o .:? "computationId"))

instance ToJSON StreamingComputationRanges where
        toJSON StreamingComputationRanges'{..}
          = object
              (catMaybes
                 [("rangeAssignments" .=) <$> _scrRangeAssignments,
                  ("computationId" .=) <$> _scrComputationId])

-- | Response to a request to list Cloud Dataflow jobs. This may be a partial
-- response, depending on the page size in the ListJobsRequest.
--
-- /See:/ 'listJobsResponse' smart constructor.
data ListJobsResponse =
  ListJobsResponse'
    { _ljrNextPageToken  :: !(Maybe Text)
    , _ljrFailedLocation :: !(Maybe [FailedLocation])
    , _ljrJobs           :: !(Maybe [Job])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljrNextPageToken'
--
-- * 'ljrFailedLocation'
--
-- * 'ljrJobs'
listJobsResponse
    :: ListJobsResponse
listJobsResponse =
  ListJobsResponse'
    { _ljrNextPageToken = Nothing
    , _ljrFailedLocation = Nothing
    , _ljrJobs = Nothing
    }


-- | Set if there may be more results than fit in this response.
ljrNextPageToken :: Lens' ListJobsResponse (Maybe Text)
ljrNextPageToken
  = lens _ljrNextPageToken
      (\ s a -> s{_ljrNextPageToken = a})

-- | Zero or more messages describing locations that failed to respond.
ljrFailedLocation :: Lens' ListJobsResponse [FailedLocation]
ljrFailedLocation
  = lens _ljrFailedLocation
      (\ s a -> s{_ljrFailedLocation = a})
      . _Default
      . _Coerce

-- | A subset of the requested job information.
ljrJobs :: Lens' ListJobsResponse [Job]
ljrJobs
  = lens _ljrJobs (\ s a -> s{_ljrJobs = a}) . _Default
      . _Coerce

instance FromJSON ListJobsResponse where
        parseJSON
          = withObject "ListJobsResponse"
              (\ o ->
                 ListJobsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "failedLocation" .!= mempty)
                     <*> (o .:? "jobs" .!= mempty))

instance ToJSON ListJobsResponse where
        toJSON ListJobsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ljrNextPageToken,
                  ("failedLocation" .=) <$> _ljrFailedLocation,
                  ("jobs" .=) <$> _ljrJobs])

-- | The runtime parameters to pass to the job.
--
-- /See:/ 'launchTemplateParametersParameters' smart constructor.
newtype LaunchTemplateParametersParameters =
  LaunchTemplateParametersParameters'
    { _ltppAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LaunchTemplateParametersParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltppAddtional'
launchTemplateParametersParameters
    :: HashMap Text Text -- ^ 'ltppAddtional'
    -> LaunchTemplateParametersParameters
launchTemplateParametersParameters pLtppAddtional_ =
  LaunchTemplateParametersParameters'
    {_ltppAddtional = _Coerce # pLtppAddtional_}


ltppAddtional :: Lens' LaunchTemplateParametersParameters (HashMap Text Text)
ltppAddtional
  = lens _ltppAddtional
      (\ s a -> s{_ltppAddtional = a})
      . _Coerce

instance FromJSON LaunchTemplateParametersParameters
         where
        parseJSON
          = withObject "LaunchTemplateParametersParameters"
              (\ o ->
                 LaunchTemplateParametersParameters' <$>
                   (parseJSONObject o))

instance ToJSON LaunchTemplateParametersParameters
         where
        toJSON = toJSON . _ltppAddtional

-- | A source that records can be read and decoded from.
--
-- /See:/ 'source' smart constructor.
data Source =
  Source'
    { _souDoesNotNeedSplitting :: !(Maybe Bool)
    , _souBaseSpecs            :: !(Maybe [SourceBaseSpecsItem])
    , _souCodec                :: !(Maybe SourceCodec)
    , _souSpec                 :: !(Maybe SourceSpec)
    , _souMetadata             :: !(Maybe SourceMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Source' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'souDoesNotNeedSplitting'
--
-- * 'souBaseSpecs'
--
-- * 'souCodec'
--
-- * 'souSpec'
--
-- * 'souMetadata'
source
    :: Source
source =
  Source'
    { _souDoesNotNeedSplitting = Nothing
    , _souBaseSpecs = Nothing
    , _souCodec = Nothing
    , _souSpec = Nothing
    , _souMetadata = Nothing
    }


-- | Setting this value to true hints to the framework that the source
-- doesn\'t need splitting, and using SourceSplitRequest on it would yield
-- SOURCE_SPLIT_OUTCOME_USE_CURRENT. E.g. a file splitter may set this to
-- true when splitting a single file into a set of byte ranges of
-- appropriate size, and set this to false when splitting a filepattern
-- into individual files. However, for efficiency, a file splitter may
-- decide to produce file subranges directly from the filepattern to avoid
-- a splitting round-trip. See SourceSplitRequest for an overview of the
-- splitting process. This field is meaningful only in the Source objects
-- populated by the user (e.g. when filling in a DerivedSource). Source
-- objects supplied by the framework to the user don\'t have this field
-- populated.
souDoesNotNeedSplitting :: Lens' Source (Maybe Bool)
souDoesNotNeedSplitting
  = lens _souDoesNotNeedSplitting
      (\ s a -> s{_souDoesNotNeedSplitting = a})

-- | While splitting, sources may specify the produced bundles as differences
-- against another source, in order to save backend-side memory and allow
-- bigger jobs. For details, see SourceSplitRequest. To support this use
-- case, the full set of parameters of the source is logically obtained by
-- taking the latest explicitly specified value of each parameter in the
-- order: base_specs (later items win), spec (overrides anything in
-- base_specs).
souBaseSpecs :: Lens' Source [SourceBaseSpecsItem]
souBaseSpecs
  = lens _souBaseSpecs (\ s a -> s{_souBaseSpecs = a})
      . _Default
      . _Coerce

-- | The codec to use to decode data read from the source.
souCodec :: Lens' Source (Maybe SourceCodec)
souCodec = lens _souCodec (\ s a -> s{_souCodec = a})

-- | The source to read from, plus its parameters.
souSpec :: Lens' Source (Maybe SourceSpec)
souSpec = lens _souSpec (\ s a -> s{_souSpec = a})

-- | Optionally, metadata for this source can be supplied right away,
-- avoiding a SourceGetMetadataOperation roundtrip (see
-- SourceOperationRequest). This field is meaningful only in the Source
-- objects populated by the user (e.g. when filling in a DerivedSource).
-- Source objects supplied by the framework to the user don\'t have this
-- field populated.
souMetadata :: Lens' Source (Maybe SourceMetadata)
souMetadata
  = lens _souMetadata (\ s a -> s{_souMetadata = a})

instance FromJSON Source where
        parseJSON
          = withObject "Source"
              (\ o ->
                 Source' <$>
                   (o .:? "doesNotNeedSplitting") <*>
                     (o .:? "baseSpecs" .!= mempty)
                     <*> (o .:? "codec")
                     <*> (o .:? "spec")
                     <*> (o .:? "metadata"))

instance ToJSON Source where
        toJSON Source'{..}
          = object
              (catMaybes
                 [("doesNotNeedSplitting" .=) <$>
                    _souDoesNotNeedSplitting,
                  ("baseSpecs" .=) <$> _souBaseSpecs,
                  ("codec" .=) <$> _souCodec, ("spec" .=) <$> _souSpec,
                  ("metadata" .=) <$> _souMetadata])

-- | Obsolete in favor of ApproximateReportedProgress and
-- ApproximateSplitRequest.
--
-- /See:/ 'approximateProgress' smart constructor.
data ApproximateProgress =
  ApproximateProgress'
    { _apRemainingTime   :: !(Maybe GDuration)
    , _apPercentComplete :: !(Maybe (Textual Double))
    , _apPosition        :: !(Maybe Position)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ApproximateProgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apRemainingTime'
--
-- * 'apPercentComplete'
--
-- * 'apPosition'
approximateProgress
    :: ApproximateProgress
approximateProgress =
  ApproximateProgress'
    { _apRemainingTime = Nothing
    , _apPercentComplete = Nothing
    , _apPosition = Nothing
    }


-- | Obsolete.
apRemainingTime :: Lens' ApproximateProgress (Maybe Scientific)
apRemainingTime
  = lens _apRemainingTime
      (\ s a -> s{_apRemainingTime = a})
      . mapping _GDuration

-- | Obsolete.
apPercentComplete :: Lens' ApproximateProgress (Maybe Double)
apPercentComplete
  = lens _apPercentComplete
      (\ s a -> s{_apPercentComplete = a})
      . mapping _Coerce

-- | Obsolete.
apPosition :: Lens' ApproximateProgress (Maybe Position)
apPosition
  = lens _apPosition (\ s a -> s{_apPosition = a})

instance FromJSON ApproximateProgress where
        parseJSON
          = withObject "ApproximateProgress"
              (\ o ->
                 ApproximateProgress' <$>
                   (o .:? "remainingTime") <*> (o .:? "percentComplete")
                     <*> (o .:? "position"))

instance ToJSON ApproximateProgress where
        toJSON ApproximateProgress'{..}
          = object
              (catMaybes
                 [("remainingTime" .=) <$> _apRemainingTime,
                  ("percentComplete" .=) <$> _apPercentComplete,
                  ("position" .=) <$> _apPosition])

-- | WorkerMessage provides information to the backend about a worker.
--
-- /See:/ 'workerMessage' smart constructor.
data WorkerMessage =
  WorkerMessage'
    { _wmWorkerHealthReport   :: !(Maybe WorkerHealthReport)
    , _wmTime                 :: !(Maybe DateTime')
    , _wmWorkerMessageCode    :: !(Maybe WorkerMessageCode)
    , _wmWorkerMetrics        :: !(Maybe ResourceUtilizationReport)
    , _wmWorkerLifecycleEvent :: !(Maybe WorkerLifecycleEvent)
    , _wmWorkerShutdownNotice :: !(Maybe WorkerShutdownNotice)
    , _wmLabels               :: !(Maybe WorkerMessageLabels)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WorkerMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wmWorkerHealthReport'
--
-- * 'wmTime'
--
-- * 'wmWorkerMessageCode'
--
-- * 'wmWorkerMetrics'
--
-- * 'wmWorkerLifecycleEvent'
--
-- * 'wmWorkerShutdownNotice'
--
-- * 'wmLabels'
workerMessage
    :: WorkerMessage
workerMessage =
  WorkerMessage'
    { _wmWorkerHealthReport = Nothing
    , _wmTime = Nothing
    , _wmWorkerMessageCode = Nothing
    , _wmWorkerMetrics = Nothing
    , _wmWorkerLifecycleEvent = Nothing
    , _wmWorkerShutdownNotice = Nothing
    , _wmLabels = Nothing
    }


-- | The health of a worker.
wmWorkerHealthReport :: Lens' WorkerMessage (Maybe WorkerHealthReport)
wmWorkerHealthReport
  = lens _wmWorkerHealthReport
      (\ s a -> s{_wmWorkerHealthReport = a})

-- | The timestamp of the worker_message.
wmTime :: Lens' WorkerMessage (Maybe UTCTime)
wmTime
  = lens _wmTime (\ s a -> s{_wmTime = a}) .
      mapping _DateTime

-- | A worker message code.
wmWorkerMessageCode :: Lens' WorkerMessage (Maybe WorkerMessageCode)
wmWorkerMessageCode
  = lens _wmWorkerMessageCode
      (\ s a -> s{_wmWorkerMessageCode = a})

-- | Resource metrics reported by workers.
wmWorkerMetrics :: Lens' WorkerMessage (Maybe ResourceUtilizationReport)
wmWorkerMetrics
  = lens _wmWorkerMetrics
      (\ s a -> s{_wmWorkerMetrics = a})

-- | Record of worker lifecycle events.
wmWorkerLifecycleEvent :: Lens' WorkerMessage (Maybe WorkerLifecycleEvent)
wmWorkerLifecycleEvent
  = lens _wmWorkerLifecycleEvent
      (\ s a -> s{_wmWorkerLifecycleEvent = a})

-- | Shutdown notice by workers.
wmWorkerShutdownNotice :: Lens' WorkerMessage (Maybe WorkerShutdownNotice)
wmWorkerShutdownNotice
  = lens _wmWorkerShutdownNotice
      (\ s a -> s{_wmWorkerShutdownNotice = a})

-- | Labels are used to group WorkerMessages. For example, a worker_message
-- about a particular container might have the labels: { \"JOB_ID\":
-- \"2015-04-22\", \"WORKER_ID\": \"wordcount-vm-2015…\"
-- \"CONTAINER_TYPE\": \"worker\", \"CONTAINER_ID\": \"ac1234def\"} Label
-- tags typically correspond to Label enum values. However, for ease of
-- development other strings can be used as tags. LABEL_UNSPECIFIED should
-- not be used here.
wmLabels :: Lens' WorkerMessage (Maybe WorkerMessageLabels)
wmLabels = lens _wmLabels (\ s a -> s{_wmLabels = a})

instance FromJSON WorkerMessage where
        parseJSON
          = withObject "WorkerMessage"
              (\ o ->
                 WorkerMessage' <$>
                   (o .:? "workerHealthReport") <*> (o .:? "time") <*>
                     (o .:? "workerMessageCode")
                     <*> (o .:? "workerMetrics")
                     <*> (o .:? "workerLifecycleEvent")
                     <*> (o .:? "workerShutdownNotice")
                     <*> (o .:? "labels"))

instance ToJSON WorkerMessage where
        toJSON WorkerMessage'{..}
          = object
              (catMaybes
                 [("workerHealthReport" .=) <$> _wmWorkerHealthReport,
                  ("time" .=) <$> _wmTime,
                  ("workerMessageCode" .=) <$> _wmWorkerMessageCode,
                  ("workerMetrics" .=) <$> _wmWorkerMetrics,
                  ("workerLifecycleEvent" .=) <$>
                    _wmWorkerLifecycleEvent,
                  ("workerShutdownNotice" .=) <$>
                    _wmWorkerShutdownNotice,
                  ("labels" .=) <$> _wmLabels])

-- | Location information for a specific key-range of a sharded computation.
-- Currently we only support UTF-8 character splits to simplify encoding
-- into JSON.
--
-- /See:/ 'keyRangeLocation' smart constructor.
data KeyRangeLocation =
  KeyRangeLocation'
    { _krlDataDisk                      :: !(Maybe Text)
    , _krlDeprecatedPersistentDirectory :: !(Maybe Text)
    , _krlStart                         :: !(Maybe Text)
    , _krlDeliveryEndpoint              :: !(Maybe Text)
    , _krlEnd                           :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'KeyRangeLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'krlDataDisk'
--
-- * 'krlDeprecatedPersistentDirectory'
--
-- * 'krlStart'
--
-- * 'krlDeliveryEndpoint'
--
-- * 'krlEnd'
keyRangeLocation
    :: KeyRangeLocation
keyRangeLocation =
  KeyRangeLocation'
    { _krlDataDisk = Nothing
    , _krlDeprecatedPersistentDirectory = Nothing
    , _krlStart = Nothing
    , _krlDeliveryEndpoint = Nothing
    , _krlEnd = Nothing
    }


-- | The name of the data disk where data for this range is stored. This name
-- is local to the Google Cloud Platform project and uniquely identifies
-- the disk within that project, for example
-- \"myproject-1014-104817-4c2-harness-0-disk-1\".
krlDataDisk :: Lens' KeyRangeLocation (Maybe Text)
krlDataDisk
  = lens _krlDataDisk (\ s a -> s{_krlDataDisk = a})

-- | DEPRECATED. The location of the persistent state for this range, as a
-- persistent directory in the worker local filesystem.
krlDeprecatedPersistentDirectory :: Lens' KeyRangeLocation (Maybe Text)
krlDeprecatedPersistentDirectory
  = lens _krlDeprecatedPersistentDirectory
      (\ s a -> s{_krlDeprecatedPersistentDirectory = a})

-- | The start (inclusive) of the key range.
krlStart :: Lens' KeyRangeLocation (Maybe Text)
krlStart = lens _krlStart (\ s a -> s{_krlStart = a})

-- | The physical location of this range assignment to be used for streaming
-- computation cross-worker message delivery.
krlDeliveryEndpoint :: Lens' KeyRangeLocation (Maybe Text)
krlDeliveryEndpoint
  = lens _krlDeliveryEndpoint
      (\ s a -> s{_krlDeliveryEndpoint = a})

-- | The end (exclusive) of the key range.
krlEnd :: Lens' KeyRangeLocation (Maybe Text)
krlEnd = lens _krlEnd (\ s a -> s{_krlEnd = a})

instance FromJSON KeyRangeLocation where
        parseJSON
          = withObject "KeyRangeLocation"
              (\ o ->
                 KeyRangeLocation' <$>
                   (o .:? "dataDisk") <*>
                     (o .:? "deprecatedPersistentDirectory")
                     <*> (o .:? "start")
                     <*> (o .:? "deliveryEndpoint")
                     <*> (o .:? "end"))

instance ToJSON KeyRangeLocation where
        toJSON KeyRangeLocation'{..}
          = object
              (catMaybes
                 [("dataDisk" .=) <$> _krlDataDisk,
                  ("deprecatedPersistentDirectory" .=) <$>
                    _krlDeprecatedPersistentDirectory,
                  ("start" .=) <$> _krlStart,
                  ("deliveryEndpoint" .=) <$> _krlDeliveryEndpoint,
                  ("end" .=) <$> _krlEnd])

-- | Histogram of value counts for a distribution. Buckets have an inclusive
-- lower bound and exclusive upper bound and use \"1,2,5 bucketing\": The
-- first bucket range is from [0,1) and all subsequent bucket boundaries
-- are powers of ten multiplied by 1, 2, or 5. Thus, bucket boundaries are
-- 0, 1, 2, 5, 10, 20, 50, 100, 200, 500, 1000, ... Negative values are not
-- supported.
--
-- /See:/ 'histogram' smart constructor.
data Histogram =
  Histogram'
    { _hBucketCounts      :: !(Maybe [Textual Int64])
    , _hFirstBucketOffSet :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Histogram' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hBucketCounts'
--
-- * 'hFirstBucketOffSet'
histogram
    :: Histogram
histogram = Histogram' {_hBucketCounts = Nothing, _hFirstBucketOffSet = Nothing}


-- | Counts of values in each bucket. For efficiency, prefix and trailing
-- buckets with count = 0 are elided. Buckets can store the full range of
-- values of an unsigned long, with ULLONG_MAX falling into the 59th bucket
-- with range [1e19, 2e19).
hBucketCounts :: Lens' Histogram [Int64]
hBucketCounts
  = lens _hBucketCounts
      (\ s a -> s{_hBucketCounts = a})
      . _Default
      . _Coerce

-- | Starting index of first stored bucket. The non-inclusive upper-bound of
-- the ith bucket is given by: pow(10,(i-first_bucket_offset)\/3) *
-- (1,2,5)[(i-first_bucket_offset)%3]
hFirstBucketOffSet :: Lens' Histogram (Maybe Int32)
hFirstBucketOffSet
  = lens _hFirstBucketOffSet
      (\ s a -> s{_hFirstBucketOffSet = a})
      . mapping _Coerce

instance FromJSON Histogram where
        parseJSON
          = withObject "Histogram"
              (\ o ->
                 Histogram' <$>
                   (o .:? "bucketCounts" .!= mempty) <*>
                     (o .:? "firstBucketOffset"))

instance ToJSON Histogram where
        toJSON Histogram'{..}
          = object
              (catMaybes
                 [("bucketCounts" .=) <$> _hBucketCounts,
                  ("firstBucketOffset" .=) <$> _hFirstBucketOffSet])

-- | Information about an output of a multi-output DoFn.
--
-- /See:/ 'multiOutputInfo' smart constructor.
newtype MultiOutputInfo =
  MultiOutputInfo'
    { _moiTag :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MultiOutputInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'moiTag'
multiOutputInfo
    :: MultiOutputInfo
multiOutputInfo = MultiOutputInfo' {_moiTag = Nothing}


-- | The id of the tag the user code will emit to this output by; this should
-- correspond to the tag of some SideInputInfo.
moiTag :: Lens' MultiOutputInfo (Maybe Text)
moiTag = lens _moiTag (\ s a -> s{_moiTag = a})

instance FromJSON MultiOutputInfo where
        parseJSON
          = withObject "MultiOutputInfo"
              (\ o -> MultiOutputInfo' <$> (o .:? "tag"))

instance ToJSON MultiOutputInfo where
        toJSON MultiOutputInfo'{..}
          = object (catMaybes [("tag" .=) <$> _moiTag])

-- | An instruction that does a partial group-by-key. One input and one
-- output.
--
-- /See:/ 'partialGroupByKeyInstruction' smart constructor.
data PartialGroupByKeyInstruction =
  PartialGroupByKeyInstruction'
    { _pgbkiValueCombiningFn                    :: !(Maybe PartialGroupByKeyInstructionValueCombiningFn)
    , _pgbkiSideInputs                          :: !(Maybe [SideInputInfo])
    , _pgbkiInput                               :: !(Maybe InstructionInput)
    , _pgbkiOriginalCombineValuesStepName       :: !(Maybe Text)
    , _pgbkiInputElementCodec                   :: !(Maybe PartialGroupByKeyInstructionInputElementCodec)
    , _pgbkiOriginalCombineValuesInputStoreName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PartialGroupByKeyInstruction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgbkiValueCombiningFn'
--
-- * 'pgbkiSideInputs'
--
-- * 'pgbkiInput'
--
-- * 'pgbkiOriginalCombineValuesStepName'
--
-- * 'pgbkiInputElementCodec'
--
-- * 'pgbkiOriginalCombineValuesInputStoreName'
partialGroupByKeyInstruction
    :: PartialGroupByKeyInstruction
partialGroupByKeyInstruction =
  PartialGroupByKeyInstruction'
    { _pgbkiValueCombiningFn = Nothing
    , _pgbkiSideInputs = Nothing
    , _pgbkiInput = Nothing
    , _pgbkiOriginalCombineValuesStepName = Nothing
    , _pgbkiInputElementCodec = Nothing
    , _pgbkiOriginalCombineValuesInputStoreName = Nothing
    }


-- | The value combining function to invoke.
pgbkiValueCombiningFn :: Lens' PartialGroupByKeyInstruction (Maybe PartialGroupByKeyInstructionValueCombiningFn)
pgbkiValueCombiningFn
  = lens _pgbkiValueCombiningFn
      (\ s a -> s{_pgbkiValueCombiningFn = a})

-- | Zero or more side inputs.
pgbkiSideInputs :: Lens' PartialGroupByKeyInstruction [SideInputInfo]
pgbkiSideInputs
  = lens _pgbkiSideInputs
      (\ s a -> s{_pgbkiSideInputs = a})
      . _Default
      . _Coerce

-- | Describes the input to the partial group-by-key instruction.
pgbkiInput :: Lens' PartialGroupByKeyInstruction (Maybe InstructionInput)
pgbkiInput
  = lens _pgbkiInput (\ s a -> s{_pgbkiInput = a})

-- | If this instruction includes a combining function, this is the name of
-- the CombineValues instruction lifted into this instruction.
pgbkiOriginalCombineValuesStepName :: Lens' PartialGroupByKeyInstruction (Maybe Text)
pgbkiOriginalCombineValuesStepName
  = lens _pgbkiOriginalCombineValuesStepName
      (\ s a -> s{_pgbkiOriginalCombineValuesStepName = a})

-- | The codec to use for interpreting an element in the input PTable.
pgbkiInputElementCodec :: Lens' PartialGroupByKeyInstruction (Maybe PartialGroupByKeyInstructionInputElementCodec)
pgbkiInputElementCodec
  = lens _pgbkiInputElementCodec
      (\ s a -> s{_pgbkiInputElementCodec = a})

-- | If this instruction includes a combining function this is the name of
-- the intermediate store between the GBK and the CombineValues.
pgbkiOriginalCombineValuesInputStoreName :: Lens' PartialGroupByKeyInstruction (Maybe Text)
pgbkiOriginalCombineValuesInputStoreName
  = lens _pgbkiOriginalCombineValuesInputStoreName
      (\ s a ->
         s{_pgbkiOriginalCombineValuesInputStoreName = a})

instance FromJSON PartialGroupByKeyInstruction where
        parseJSON
          = withObject "PartialGroupByKeyInstruction"
              (\ o ->
                 PartialGroupByKeyInstruction' <$>
                   (o .:? "valueCombiningFn") <*>
                     (o .:? "sideInputs" .!= mempty)
                     <*> (o .:? "input")
                     <*> (o .:? "originalCombineValuesStepName")
                     <*> (o .:? "inputElementCodec")
                     <*> (o .:? "originalCombineValuesInputStoreName"))

instance ToJSON PartialGroupByKeyInstruction where
        toJSON PartialGroupByKeyInstruction'{..}
          = object
              (catMaybes
                 [("valueCombiningFn" .=) <$> _pgbkiValueCombiningFn,
                  ("sideInputs" .=) <$> _pgbkiSideInputs,
                  ("input" .=) <$> _pgbkiInput,
                  ("originalCombineValuesStepName" .=) <$>
                    _pgbkiOriginalCombineValuesStepName,
                  ("inputElementCodec" .=) <$> _pgbkiInputElementCodec,
                  ("originalCombineValuesInputStoreName" .=) <$>
                    _pgbkiOriginalCombineValuesInputStoreName])

-- | Untranslated bag-of-bytes WorkResponse for UnifiedWorker.
--
-- /See:/ 'leaseWorkItemResponseUnifiedWorkerResponse' smart constructor.
newtype LeaseWorkItemResponseUnifiedWorkerResponse =
  LeaseWorkItemResponseUnifiedWorkerResponse'
    { _lAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LeaseWorkItemResponseUnifiedWorkerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lAddtional'
leaseWorkItemResponseUnifiedWorkerResponse
    :: HashMap Text JSONValue -- ^ 'lAddtional'
    -> LeaseWorkItemResponseUnifiedWorkerResponse
leaseWorkItemResponseUnifiedWorkerResponse pLAddtional_ =
  LeaseWorkItemResponseUnifiedWorkerResponse'
    {_lAddtional = _Coerce # pLAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
lAddtional :: Lens' LeaseWorkItemResponseUnifiedWorkerResponse (HashMap Text JSONValue)
lAddtional
  = lens _lAddtional (\ s a -> s{_lAddtional = a}) .
      _Coerce

instance FromJSON
           LeaseWorkItemResponseUnifiedWorkerResponse
         where
        parseJSON
          = withObject
              "LeaseWorkItemResponseUnifiedWorkerResponse"
              (\ o ->
                 LeaseWorkItemResponseUnifiedWorkerResponse' <$>
                   (parseJSONObject o))

instance ToJSON
           LeaseWorkItemResponseUnifiedWorkerResponse
         where
        toJSON = toJSON . _lAddtional

-- | An instruction that does a ParDo operation. Takes one main input and
-- zero or more side inputs, and produces zero or more outputs. Runs user
-- code.
--
-- /See:/ 'parDoInstruction' smart constructor.
data ParDoInstruction =
  ParDoInstruction'
    { _pdiNumOutputs       :: !(Maybe (Textual Int32))
    , _pdiMultiOutputInfos :: !(Maybe [MultiOutputInfo])
    , _pdiSideInputs       :: !(Maybe [SideInputInfo])
    , _pdiInput            :: !(Maybe InstructionInput)
    , _pdiUserFn           :: !(Maybe ParDoInstructionUserFn)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ParDoInstruction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdiNumOutputs'
--
-- * 'pdiMultiOutputInfos'
--
-- * 'pdiSideInputs'
--
-- * 'pdiInput'
--
-- * 'pdiUserFn'
parDoInstruction
    :: ParDoInstruction
parDoInstruction =
  ParDoInstruction'
    { _pdiNumOutputs = Nothing
    , _pdiMultiOutputInfos = Nothing
    , _pdiSideInputs = Nothing
    , _pdiInput = Nothing
    , _pdiUserFn = Nothing
    }


-- | The number of outputs.
pdiNumOutputs :: Lens' ParDoInstruction (Maybe Int32)
pdiNumOutputs
  = lens _pdiNumOutputs
      (\ s a -> s{_pdiNumOutputs = a})
      . mapping _Coerce

-- | Information about each of the outputs, if user_fn is a MultiDoFn.
pdiMultiOutputInfos :: Lens' ParDoInstruction [MultiOutputInfo]
pdiMultiOutputInfos
  = lens _pdiMultiOutputInfos
      (\ s a -> s{_pdiMultiOutputInfos = a})
      . _Default
      . _Coerce

-- | Zero or more side inputs.
pdiSideInputs :: Lens' ParDoInstruction [SideInputInfo]
pdiSideInputs
  = lens _pdiSideInputs
      (\ s a -> s{_pdiSideInputs = a})
      . _Default
      . _Coerce

-- | The input.
pdiInput :: Lens' ParDoInstruction (Maybe InstructionInput)
pdiInput = lens _pdiInput (\ s a -> s{_pdiInput = a})

-- | The user function to invoke.
pdiUserFn :: Lens' ParDoInstruction (Maybe ParDoInstructionUserFn)
pdiUserFn
  = lens _pdiUserFn (\ s a -> s{_pdiUserFn = a})

instance FromJSON ParDoInstruction where
        parseJSON
          = withObject "ParDoInstruction"
              (\ o ->
                 ParDoInstruction' <$>
                   (o .:? "numOutputs") <*>
                     (o .:? "multiOutputInfos" .!= mempty)
                     <*> (o .:? "sideInputs" .!= mempty)
                     <*> (o .:? "input")
                     <*> (o .:? "userFn"))

instance ToJSON ParDoInstruction where
        toJSON ParDoInstruction'{..}
          = object
              (catMaybes
                 [("numOutputs" .=) <$> _pdiNumOutputs,
                  ("multiOutputInfos" .=) <$> _pdiMultiOutputInfos,
                  ("sideInputs" .=) <$> _pdiSideInputs,
                  ("input" .=) <$> _pdiInput,
                  ("userFn" .=) <$> _pdiUserFn])

-- | Identifies the location of a custom souce.
--
-- /See:/ 'customSourceLocation' smart constructor.
newtype CustomSourceLocation =
  CustomSourceLocation'
    { _cslStateful :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomSourceLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cslStateful'
customSourceLocation
    :: CustomSourceLocation
customSourceLocation = CustomSourceLocation' {_cslStateful = Nothing}


-- | Whether this source is stateful.
cslStateful :: Lens' CustomSourceLocation (Maybe Bool)
cslStateful
  = lens _cslStateful (\ s a -> s{_cslStateful = a})

instance FromJSON CustomSourceLocation where
        parseJSON
          = withObject "CustomSourceLocation"
              (\ o -> CustomSourceLocation' <$> (o .:? "stateful"))

instance ToJSON CustomSourceLocation where
        toJSON CustomSourceLocation'{..}
          = object
              (catMaybes [("stateful" .=) <$> _cslStateful])

-- | A metric value representing a distribution.
--
-- /See:/ 'distributionUpdate' smart constructor.
data DistributionUpdate =
  DistributionUpdate'
    { _duMax          :: !(Maybe SplitInt64)
    , _duCount        :: !(Maybe SplitInt64)
    , _duMin          :: !(Maybe SplitInt64)
    , _duHistogram    :: !(Maybe Histogram)
    , _duSumOfSquares :: !(Maybe (Textual Double))
    , _duSum          :: !(Maybe SplitInt64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DistributionUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duMax'
--
-- * 'duCount'
--
-- * 'duMin'
--
-- * 'duHistogram'
--
-- * 'duSumOfSquares'
--
-- * 'duSum'
distributionUpdate
    :: DistributionUpdate
distributionUpdate =
  DistributionUpdate'
    { _duMax = Nothing
    , _duCount = Nothing
    , _duMin = Nothing
    , _duHistogram = Nothing
    , _duSumOfSquares = Nothing
    , _duSum = Nothing
    }


-- | The maximum value present in the distribution.
duMax :: Lens' DistributionUpdate (Maybe SplitInt64)
duMax = lens _duMax (\ s a -> s{_duMax = a})

-- | The count of the number of elements present in the distribution.
duCount :: Lens' DistributionUpdate (Maybe SplitInt64)
duCount = lens _duCount (\ s a -> s{_duCount = a})

-- | The minimum value present in the distribution.
duMin :: Lens' DistributionUpdate (Maybe SplitInt64)
duMin = lens _duMin (\ s a -> s{_duMin = a})

-- | (Optional) Histogram of value counts for the distribution.
duHistogram :: Lens' DistributionUpdate (Maybe Histogram)
duHistogram
  = lens _duHistogram (\ s a -> s{_duHistogram = a})

-- | Use a double since the sum of squares is likely to overflow int64.
duSumOfSquares :: Lens' DistributionUpdate (Maybe Double)
duSumOfSquares
  = lens _duSumOfSquares
      (\ s a -> s{_duSumOfSquares = a})
      . mapping _Coerce

-- | Use an int64 since we\'d prefer the added precision. If overflow is a
-- common problem we can detect it and use an additional int64 or a double.
duSum :: Lens' DistributionUpdate (Maybe SplitInt64)
duSum = lens _duSum (\ s a -> s{_duSum = a})

instance FromJSON DistributionUpdate where
        parseJSON
          = withObject "DistributionUpdate"
              (\ o ->
                 DistributionUpdate' <$>
                   (o .:? "max") <*> (o .:? "count") <*> (o .:? "min")
                     <*> (o .:? "histogram")
                     <*> (o .:? "sumOfSquares")
                     <*> (o .:? "sum"))

instance ToJSON DistributionUpdate where
        toJSON DistributionUpdate'{..}
          = object
              (catMaybes
                 [("max" .=) <$> _duMax, ("count" .=) <$> _duCount,
                  ("min" .=) <$> _duMin,
                  ("histogram" .=) <$> _duHistogram,
                  ("sumOfSquares" .=) <$> _duSumOfSquares,
                  ("sum" .=) <$> _duSum])

--
-- /See:/ 'sourceBaseSpecsItem' smart constructor.
newtype SourceBaseSpecsItem =
  SourceBaseSpecsItem'
    { _sbsiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceBaseSpecsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sbsiAddtional'
sourceBaseSpecsItem
    :: HashMap Text JSONValue -- ^ 'sbsiAddtional'
    -> SourceBaseSpecsItem
sourceBaseSpecsItem pSbsiAddtional_ =
  SourceBaseSpecsItem' {_sbsiAddtional = _Coerce # pSbsiAddtional_}


-- | Properties of the object.
sbsiAddtional :: Lens' SourceBaseSpecsItem (HashMap Text JSONValue)
sbsiAddtional
  = lens _sbsiAddtional
      (\ s a -> s{_sbsiAddtional = a})
      . _Coerce

instance FromJSON SourceBaseSpecsItem where
        parseJSON
          = withObject "SourceBaseSpecsItem"
              (\ o -> SourceBaseSpecsItem' <$> (parseJSONObject o))

instance ToJSON SourceBaseSpecsItem where
        toJSON = toJSON . _sbsiAddtional

-- | Describes a particular operation comprising a MapTask.
--
-- /See:/ 'parallelInstruction' smart constructor.
data ParallelInstruction =
  ParallelInstruction'
    { _piRead              :: !(Maybe ReadInstruction)
    , _piWrite             :: !(Maybe WriteInstruction)
    , _piParDo             :: !(Maybe ParDoInstruction)
    , _piPartialGroupByKey :: !(Maybe PartialGroupByKeyInstruction)
    , _piOutputs           :: !(Maybe [InstructionOutput])
    , _piName              :: !(Maybe Text)
    , _piSystemName        :: !(Maybe Text)
    , _piFlatten           :: !(Maybe FlattenInstruction)
    , _piOriginalName      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ParallelInstruction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piRead'
--
-- * 'piWrite'
--
-- * 'piParDo'
--
-- * 'piPartialGroupByKey'
--
-- * 'piOutputs'
--
-- * 'piName'
--
-- * 'piSystemName'
--
-- * 'piFlatten'
--
-- * 'piOriginalName'
parallelInstruction
    :: ParallelInstruction
parallelInstruction =
  ParallelInstruction'
    { _piRead = Nothing
    , _piWrite = Nothing
    , _piParDo = Nothing
    , _piPartialGroupByKey = Nothing
    , _piOutputs = Nothing
    , _piName = Nothing
    , _piSystemName = Nothing
    , _piFlatten = Nothing
    , _piOriginalName = Nothing
    }


-- | Additional information for Read instructions.
piRead :: Lens' ParallelInstruction (Maybe ReadInstruction)
piRead = lens _piRead (\ s a -> s{_piRead = a})

-- | Additional information for Write instructions.
piWrite :: Lens' ParallelInstruction (Maybe WriteInstruction)
piWrite = lens _piWrite (\ s a -> s{_piWrite = a})

-- | Additional information for ParDo instructions.
piParDo :: Lens' ParallelInstruction (Maybe ParDoInstruction)
piParDo = lens _piParDo (\ s a -> s{_piParDo = a})

-- | Additional information for PartialGroupByKey instructions.
piPartialGroupByKey :: Lens' ParallelInstruction (Maybe PartialGroupByKeyInstruction)
piPartialGroupByKey
  = lens _piPartialGroupByKey
      (\ s a -> s{_piPartialGroupByKey = a})

-- | Describes the outputs of the instruction.
piOutputs :: Lens' ParallelInstruction [InstructionOutput]
piOutputs
  = lens _piOutputs (\ s a -> s{_piOutputs = a}) .
      _Default
      . _Coerce

-- | User-provided name of this operation.
piName :: Lens' ParallelInstruction (Maybe Text)
piName = lens _piName (\ s a -> s{_piName = a})

-- | System-defined name of this operation. Unique across the workflow.
piSystemName :: Lens' ParallelInstruction (Maybe Text)
piSystemName
  = lens _piSystemName (\ s a -> s{_piSystemName = a})

-- | Additional information for Flatten instructions.
piFlatten :: Lens' ParallelInstruction (Maybe FlattenInstruction)
piFlatten
  = lens _piFlatten (\ s a -> s{_piFlatten = a})

-- | System-defined name for the operation in the original workflow graph.
piOriginalName :: Lens' ParallelInstruction (Maybe Text)
piOriginalName
  = lens _piOriginalName
      (\ s a -> s{_piOriginalName = a})

instance FromJSON ParallelInstruction where
        parseJSON
          = withObject "ParallelInstruction"
              (\ o ->
                 ParallelInstruction' <$>
                   (o .:? "read") <*> (o .:? "write") <*>
                     (o .:? "parDo")
                     <*> (o .:? "partialGroupByKey")
                     <*> (o .:? "outputs" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "systemName")
                     <*> (o .:? "flatten")
                     <*> (o .:? "originalName"))

instance ToJSON ParallelInstruction where
        toJSON ParallelInstruction'{..}
          = object
              (catMaybes
                 [("read" .=) <$> _piRead, ("write" .=) <$> _piWrite,
                  ("parDo" .=) <$> _piParDo,
                  ("partialGroupByKey" .=) <$> _piPartialGroupByKey,
                  ("outputs" .=) <$> _piOutputs,
                  ("name" .=) <$> _piName,
                  ("systemName" .=) <$> _piSystemName,
                  ("flatten" .=) <$> _piFlatten,
                  ("originalName" .=) <$> _piOriginalName])

-- | How to interpret the source element(s) as a side input value.
--
-- /See:/ 'sideInputInfoKind' smart constructor.
newtype SideInputInfoKind =
  SideInputInfoKind'
    { _siikAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SideInputInfoKind' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siikAddtional'
sideInputInfoKind
    :: HashMap Text JSONValue -- ^ 'siikAddtional'
    -> SideInputInfoKind
sideInputInfoKind pSiikAddtional_ =
  SideInputInfoKind' {_siikAddtional = _Coerce # pSiikAddtional_}


-- | Properties of the object.
siikAddtional :: Lens' SideInputInfoKind (HashMap Text JSONValue)
siikAddtional
  = lens _siikAddtional
      (\ s a -> s{_siikAddtional = a})
      . _Coerce

instance FromJSON SideInputInfoKind where
        parseJSON
          = withObject "SideInputInfoKind"
              (\ o -> SideInputInfoKind' <$> (parseJSONObject o))

instance ToJSON SideInputInfoKind where
        toJSON = toJSON . _siikAddtional

-- | A task that carries configuration information for streaming
-- computations.
--
-- /See:/ 'streamingConfigTask' smart constructor.
data StreamingConfigTask =
  StreamingConfigTask'
    { _sctUserStepToStateFamilyNameMap :: !(Maybe StreamingConfigTaskUserStepToStateFamilyNameMap)
    , _sctStreamingComputationConfigs  :: !(Maybe [StreamingComputationConfig])
    , _sctWindmillServiceEndpoint      :: !(Maybe Text)
    , _sctWindmillServicePort          :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StreamingConfigTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sctUserStepToStateFamilyNameMap'
--
-- * 'sctStreamingComputationConfigs'
--
-- * 'sctWindmillServiceEndpoint'
--
-- * 'sctWindmillServicePort'
streamingConfigTask
    :: StreamingConfigTask
streamingConfigTask =
  StreamingConfigTask'
    { _sctUserStepToStateFamilyNameMap = Nothing
    , _sctStreamingComputationConfigs = Nothing
    , _sctWindmillServiceEndpoint = Nothing
    , _sctWindmillServicePort = Nothing
    }


-- | Map from user step names to state families.
sctUserStepToStateFamilyNameMap :: Lens' StreamingConfigTask (Maybe StreamingConfigTaskUserStepToStateFamilyNameMap)
sctUserStepToStateFamilyNameMap
  = lens _sctUserStepToStateFamilyNameMap
      (\ s a -> s{_sctUserStepToStateFamilyNameMap = a})

-- | Set of computation configuration information.
sctStreamingComputationConfigs :: Lens' StreamingConfigTask [StreamingComputationConfig]
sctStreamingComputationConfigs
  = lens _sctStreamingComputationConfigs
      (\ s a -> s{_sctStreamingComputationConfigs = a})
      . _Default
      . _Coerce

-- | If present, the worker must use this endpoint to communicate with
-- Windmill Service dispatchers, otherwise the worker must continue to use
-- whatever endpoint it had been using.
sctWindmillServiceEndpoint :: Lens' StreamingConfigTask (Maybe Text)
sctWindmillServiceEndpoint
  = lens _sctWindmillServiceEndpoint
      (\ s a -> s{_sctWindmillServiceEndpoint = a})

-- | If present, the worker must use this port to communicate with Windmill
-- Service dispatchers. Only applicable when windmill_service_endpoint is
-- specified.
sctWindmillServicePort :: Lens' StreamingConfigTask (Maybe Int64)
sctWindmillServicePort
  = lens _sctWindmillServicePort
      (\ s a -> s{_sctWindmillServicePort = a})
      . mapping _Coerce

instance FromJSON StreamingConfigTask where
        parseJSON
          = withObject "StreamingConfigTask"
              (\ o ->
                 StreamingConfigTask' <$>
                   (o .:? "userStepToStateFamilyNameMap") <*>
                     (o .:? "streamingComputationConfigs" .!= mempty)
                     <*> (o .:? "windmillServiceEndpoint")
                     <*> (o .:? "windmillServicePort"))

instance ToJSON StreamingConfigTask where
        toJSON StreamingConfigTask'{..}
          = object
              (catMaybes
                 [("userStepToStateFamilyNameMap" .=) <$>
                    _sctUserStepToStateFamilyNameMap,
                  ("streamingComputationConfigs" .=) <$>
                    _sctStreamingComputationConfigs,
                  ("windmillServiceEndpoint" .=) <$>
                    _sctWindmillServiceEndpoint,
                  ("windmillServicePort" .=) <$>
                    _sctWindmillServicePort])

-- | The metric short id is returned to the user alongside an offset into
-- ReportWorkItemStatusRequest
--
-- /See:/ 'metricShortId' smart constructor.
data MetricShortId =
  MetricShortId'
    { _msiShortId     :: !(Maybe (Textual Int64))
    , _msiMetricIndex :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetricShortId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msiShortId'
--
-- * 'msiMetricIndex'
metricShortId
    :: MetricShortId
metricShortId =
  MetricShortId' {_msiShortId = Nothing, _msiMetricIndex = Nothing}


-- | The service-generated short identifier for the metric.
msiShortId :: Lens' MetricShortId (Maybe Int64)
msiShortId
  = lens _msiShortId (\ s a -> s{_msiShortId = a}) .
      mapping _Coerce

-- | The index of the corresponding metric in the
-- ReportWorkItemStatusRequest. Required.
msiMetricIndex :: Lens' MetricShortId (Maybe Int32)
msiMetricIndex
  = lens _msiMetricIndex
      (\ s a -> s{_msiMetricIndex = a})
      . mapping _Coerce

instance FromJSON MetricShortId where
        parseJSON
          = withObject "MetricShortId"
              (\ o ->
                 MetricShortId' <$>
                   (o .:? "shortId") <*> (o .:? "metricIndex"))

instance ToJSON MetricShortId where
        toJSON MetricShortId'{..}
          = object
              (catMaybes
                 [("shortId" .=) <$> _msiShortId,
                  ("metricIndex" .=) <$> _msiMetricIndex])

-- | A request for sending worker messages to the service.
--
-- /See:/ 'sendWorkerMessagesRequest' smart constructor.
data SendWorkerMessagesRequest =
  SendWorkerMessagesRequest'
    { _swmrLocation       :: !(Maybe Text)
    , _swmrWorkerMessages :: !(Maybe [WorkerMessage])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SendWorkerMessagesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'swmrLocation'
--
-- * 'swmrWorkerMessages'
sendWorkerMessagesRequest
    :: SendWorkerMessagesRequest
sendWorkerMessagesRequest =
  SendWorkerMessagesRequest'
    {_swmrLocation = Nothing, _swmrWorkerMessages = Nothing}


-- | The location which contains the job
swmrLocation :: Lens' SendWorkerMessagesRequest (Maybe Text)
swmrLocation
  = lens _swmrLocation (\ s a -> s{_swmrLocation = a})

-- | The WorkerMessages to send.
swmrWorkerMessages :: Lens' SendWorkerMessagesRequest [WorkerMessage]
swmrWorkerMessages
  = lens _swmrWorkerMessages
      (\ s a -> s{_swmrWorkerMessages = a})
      . _Default
      . _Coerce

instance FromJSON SendWorkerMessagesRequest where
        parseJSON
          = withObject "SendWorkerMessagesRequest"
              (\ o ->
                 SendWorkerMessagesRequest' <$>
                   (o .:? "location") <*>
                     (o .:? "workerMessages" .!= mempty))

instance ToJSON SendWorkerMessagesRequest where
        toJSON SendWorkerMessagesRequest'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _swmrLocation,
                  ("workerMessages" .=) <$> _swmrWorkerMessages])

-- | DEPRECATED in favor of DerivedSource.
--
-- /See:/ 'sourceSplitShard' smart constructor.
data SourceSplitShard =
  SourceSplitShard'
    { _sssDerivationMode :: !(Maybe SourceSplitShardDerivationMode)
    , _sssSource         :: !(Maybe Source)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceSplitShard' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sssDerivationMode'
--
-- * 'sssSource'
sourceSplitShard
    :: SourceSplitShard
sourceSplitShard =
  SourceSplitShard' {_sssDerivationMode = Nothing, _sssSource = Nothing}


-- | DEPRECATED
sssDerivationMode :: Lens' SourceSplitShard (Maybe SourceSplitShardDerivationMode)
sssDerivationMode
  = lens _sssDerivationMode
      (\ s a -> s{_sssDerivationMode = a})

-- | DEPRECATED
sssSource :: Lens' SourceSplitShard (Maybe Source)
sssSource
  = lens _sssSource (\ s a -> s{_sssSource = a})

instance FromJSON SourceSplitShard where
        parseJSON
          = withObject "SourceSplitShard"
              (\ o ->
                 SourceSplitShard' <$>
                   (o .:? "derivationMode") <*> (o .:? "source"))

instance ToJSON SourceSplitShard where
        toJSON SourceSplitShard'{..}
          = object
              (catMaybes
                 [("derivationMode" .=) <$> _sssDerivationMode,
                  ("source" .=) <$> _sssSource])

-- | Information about a side input of a DoFn or an input of a SeqDoFn.
--
-- /See:/ 'sideInputInfo' smart constructor.
data SideInputInfo =
  SideInputInfo'
    { _siiTag     :: !(Maybe Text)
    , _siiKind    :: !(Maybe SideInputInfoKind)
    , _siiSources :: !(Maybe [Source])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SideInputInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siiTag'
--
-- * 'siiKind'
--
-- * 'siiSources'
sideInputInfo
    :: SideInputInfo
sideInputInfo =
  SideInputInfo' {_siiTag = Nothing, _siiKind = Nothing, _siiSources = Nothing}


-- | The id of the tag the user code will access this side input by; this
-- should correspond to the tag of some MultiOutputInfo.
siiTag :: Lens' SideInputInfo (Maybe Text)
siiTag = lens _siiTag (\ s a -> s{_siiTag = a})

-- | How to interpret the source element(s) as a side input value.
siiKind :: Lens' SideInputInfo (Maybe SideInputInfoKind)
siiKind = lens _siiKind (\ s a -> s{_siiKind = a})

-- | The source(s) to read element(s) from to get the value of this side
-- input. If more than one source, then the elements are taken from the
-- sources, in the specified order if order matters. At least one source is
-- required.
siiSources :: Lens' SideInputInfo [Source]
siiSources
  = lens _siiSources (\ s a -> s{_siiSources = a}) .
      _Default
      . _Coerce

instance FromJSON SideInputInfo where
        parseJSON
          = withObject "SideInputInfo"
              (\ o ->
                 SideInputInfo' <$>
                   (o .:? "tag") <*> (o .:? "kind") <*>
                     (o .:? "sources" .!= mempty))

instance ToJSON SideInputInfo where
        toJSON SideInputInfo'{..}
          = object
              (catMaybes
                 [("tag" .=) <$> _siiTag, ("kind" .=) <$> _siiKind,
                  ("sources" .=) <$> _siiSources])

-- | Description of a transform executed as part of an execution stage.
--
-- /See:/ 'componentTransform' smart constructor.
data ComponentTransform =
  ComponentTransform'
    { _ctOriginalTransform :: !(Maybe Text)
    , _ctUserName          :: !(Maybe Text)
    , _ctName              :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ComponentTransform' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctOriginalTransform'
--
-- * 'ctUserName'
--
-- * 'ctName'
componentTransform
    :: ComponentTransform
componentTransform =
  ComponentTransform'
    {_ctOriginalTransform = Nothing, _ctUserName = Nothing, _ctName = Nothing}


-- | User name for the original user transform with which this transform is
-- most closely associated.
ctOriginalTransform :: Lens' ComponentTransform (Maybe Text)
ctOriginalTransform
  = lens _ctOriginalTransform
      (\ s a -> s{_ctOriginalTransform = a})

-- | Human-readable name for this transform; may be user or system generated.
ctUserName :: Lens' ComponentTransform (Maybe Text)
ctUserName
  = lens _ctUserName (\ s a -> s{_ctUserName = a})

-- | Dataflow service generated name for this source.
ctName :: Lens' ComponentTransform (Maybe Text)
ctName = lens _ctName (\ s a -> s{_ctName = a})

instance FromJSON ComponentTransform where
        parseJSON
          = withObject "ComponentTransform"
              (\ o ->
                 ComponentTransform' <$>
                   (o .:? "originalTransform") <*> (o .:? "userName")
                     <*> (o .:? "name"))

instance ToJSON ComponentTransform where
        toJSON ComponentTransform'{..}
          = object
              (catMaybes
                 [("originalTransform" .=) <$> _ctOriginalTransform,
                  ("userName" .=) <$> _ctUserName,
                  ("name" .=) <$> _ctName])

-- | Map from user name of stateful transforms in this stage to their state
-- family.
--
-- /See:/ 'streamingComputationConfigTransformUserNameToStateFamily' smart constructor.
newtype StreamingComputationConfigTransformUserNameToStateFamily =
  StreamingComputationConfigTransformUserNameToStateFamily'
    { _scctuntsfAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StreamingComputationConfigTransformUserNameToStateFamily' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scctuntsfAddtional'
streamingComputationConfigTransformUserNameToStateFamily
    :: HashMap Text Text -- ^ 'scctuntsfAddtional'
    -> StreamingComputationConfigTransformUserNameToStateFamily
streamingComputationConfigTransformUserNameToStateFamily pScctuntsfAddtional_ =
  StreamingComputationConfigTransformUserNameToStateFamily'
    {_scctuntsfAddtional = _Coerce # pScctuntsfAddtional_}


scctuntsfAddtional :: Lens' StreamingComputationConfigTransformUserNameToStateFamily (HashMap Text Text)
scctuntsfAddtional
  = lens _scctuntsfAddtional
      (\ s a -> s{_scctuntsfAddtional = a})
      . _Coerce

instance FromJSON
           StreamingComputationConfigTransformUserNameToStateFamily
         where
        parseJSON
          = withObject
              "StreamingComputationConfigTransformUserNameToStateFamily"
              (\ o ->
                 StreamingComputationConfigTransformUserNameToStateFamily'
                   <$> (parseJSONObject o))

instance ToJSON
           StreamingComputationConfigTransformUserNameToStateFamily
         where
        toJSON = toJSON . _scctuntsfAddtional

-- | Additional information about how a Cloud Dataflow job will be executed
-- that isn\'t contained in the submitted job.
--
-- /See:/ 'jobExecutionInfo' smart constructor.
newtype JobExecutionInfo =
  JobExecutionInfo'
    { _jeiStages :: Maybe JobExecutionInfoStages
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobExecutionInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jeiStages'
jobExecutionInfo
    :: JobExecutionInfo
jobExecutionInfo = JobExecutionInfo' {_jeiStages = Nothing}


-- | A mapping from each stage to the information about that stage.
jeiStages :: Lens' JobExecutionInfo (Maybe JobExecutionInfoStages)
jeiStages
  = lens _jeiStages (\ s a -> s{_jeiStages = a})

instance FromJSON JobExecutionInfo where
        parseJSON
          = withObject "JobExecutionInfo"
              (\ o -> JobExecutionInfo' <$> (o .:? "stages"))

instance ToJSON JobExecutionInfo where
        toJSON JobExecutionInfo'{..}
          = object (catMaybes [("stages" .=) <$> _jeiStages])

-- | The codec to use to decode data read from the source.
--
-- /See:/ 'sourceCodec' smart constructor.
newtype SourceCodec =
  SourceCodec'
    { _souAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceCodec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'souAddtional'
sourceCodec
    :: HashMap Text JSONValue -- ^ 'souAddtional'
    -> SourceCodec
sourceCodec pSouAddtional_ =
  SourceCodec' {_souAddtional = _Coerce # pSouAddtional_}


-- | Properties of the object.
souAddtional :: Lens' SourceCodec (HashMap Text JSONValue)
souAddtional
  = lens _souAddtional (\ s a -> s{_souAddtional = a})
      . _Coerce

instance FromJSON SourceCodec where
        parseJSON
          = withObject "SourceCodec"
              (\ o -> SourceCodec' <$> (parseJSONObject o))

instance ToJSON SourceCodec where
        toJSON = toJSON . _souAddtional

-- | State family configuration.
--
-- /See:/ 'stateFamilyConfig' smart constructor.
data StateFamilyConfig =
  StateFamilyConfig'
    { _sfcIsRead      :: !(Maybe Bool)
    , _sfcStateFamily :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StateFamilyConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfcIsRead'
--
-- * 'sfcStateFamily'
stateFamilyConfig
    :: StateFamilyConfig
stateFamilyConfig =
  StateFamilyConfig' {_sfcIsRead = Nothing, _sfcStateFamily = Nothing}


-- | If true, this family corresponds to a read operation.
sfcIsRead :: Lens' StateFamilyConfig (Maybe Bool)
sfcIsRead
  = lens _sfcIsRead (\ s a -> s{_sfcIsRead = a})

-- | The state family value.
sfcStateFamily :: Lens' StateFamilyConfig (Maybe Text)
sfcStateFamily
  = lens _sfcStateFamily
      (\ s a -> s{_sfcStateFamily = a})

instance FromJSON StateFamilyConfig where
        parseJSON
          = withObject "StateFamilyConfig"
              (\ o ->
                 StateFamilyConfig' <$>
                   (o .:? "isRead") <*> (o .:? "stateFamily"))

instance ToJSON StateFamilyConfig where
        toJSON StateFamilyConfig'{..}
          = object
              (catMaybes
                 [("isRead" .=) <$> _sfcIsRead,
                  ("stateFamily" .=) <$> _sfcStateFamily])

-- | Data disk assignment information for a specific key-range of a sharded
-- computation. Currently we only support UTF-8 character splits to
-- simplify encoding into JSON.
--
-- /See:/ 'keyRangeDataDiskAssignment' smart constructor.
data KeyRangeDataDiskAssignment =
  KeyRangeDataDiskAssignment'
    { _krddaDataDisk :: !(Maybe Text)
    , _krddaStart    :: !(Maybe Text)
    , _krddaEnd      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'KeyRangeDataDiskAssignment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'krddaDataDisk'
--
-- * 'krddaStart'
--
-- * 'krddaEnd'
keyRangeDataDiskAssignment
    :: KeyRangeDataDiskAssignment
keyRangeDataDiskAssignment =
  KeyRangeDataDiskAssignment'
    {_krddaDataDisk = Nothing, _krddaStart = Nothing, _krddaEnd = Nothing}


-- | The name of the data disk where data for this range is stored. This name
-- is local to the Google Cloud Platform project and uniquely identifies
-- the disk within that project, for example
-- \"myproject-1014-104817-4c2-harness-0-disk-1\".
krddaDataDisk :: Lens' KeyRangeDataDiskAssignment (Maybe Text)
krddaDataDisk
  = lens _krddaDataDisk
      (\ s a -> s{_krddaDataDisk = a})

-- | The start (inclusive) of the key range.
krddaStart :: Lens' KeyRangeDataDiskAssignment (Maybe Text)
krddaStart
  = lens _krddaStart (\ s a -> s{_krddaStart = a})

-- | The end (exclusive) of the key range.
krddaEnd :: Lens' KeyRangeDataDiskAssignment (Maybe Text)
krddaEnd = lens _krddaEnd (\ s a -> s{_krddaEnd = a})

instance FromJSON KeyRangeDataDiskAssignment where
        parseJSON
          = withObject "KeyRangeDataDiskAssignment"
              (\ o ->
                 KeyRangeDataDiskAssignment' <$>
                   (o .:? "dataDisk") <*> (o .:? "start") <*>
                     (o .:? "end"))

instance ToJSON KeyRangeDataDiskAssignment where
        toJSON KeyRangeDataDiskAssignment'{..}
          = object
              (catMaybes
                 [("dataDisk" .=) <$> _krddaDataDisk,
                  ("start" .=) <$> _krddaStart,
                  ("end" .=) <$> _krddaEnd])

-- | A structured message reporting an autoscaling decision made by the
-- Dataflow service.
--
-- /See:/ 'autoscalingEvent' smart constructor.
data AutoscalingEvent =
  AutoscalingEvent'
    { _aeCurrentNumWorkers :: !(Maybe (Textual Int64))
    , _aeTime              :: !(Maybe DateTime')
    , _aeEventType         :: !(Maybe AutoscalingEventEventType)
    , _aeTargetNumWorkers  :: !(Maybe (Textual Int64))
    , _aeWorkerPool        :: !(Maybe Text)
    , _aeDescription       :: !(Maybe StructuredMessage)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AutoscalingEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aeCurrentNumWorkers'
--
-- * 'aeTime'
--
-- * 'aeEventType'
--
-- * 'aeTargetNumWorkers'
--
-- * 'aeWorkerPool'
--
-- * 'aeDescription'
autoscalingEvent
    :: AutoscalingEvent
autoscalingEvent =
  AutoscalingEvent'
    { _aeCurrentNumWorkers = Nothing
    , _aeTime = Nothing
    , _aeEventType = Nothing
    , _aeTargetNumWorkers = Nothing
    , _aeWorkerPool = Nothing
    , _aeDescription = Nothing
    }


-- | The current number of workers the job has.
aeCurrentNumWorkers :: Lens' AutoscalingEvent (Maybe Int64)
aeCurrentNumWorkers
  = lens _aeCurrentNumWorkers
      (\ s a -> s{_aeCurrentNumWorkers = a})
      . mapping _Coerce

-- | The time this event was emitted to indicate a new target or current
-- num_workers value.
aeTime :: Lens' AutoscalingEvent (Maybe UTCTime)
aeTime
  = lens _aeTime (\ s a -> s{_aeTime = a}) .
      mapping _DateTime

-- | The type of autoscaling event to report.
aeEventType :: Lens' AutoscalingEvent (Maybe AutoscalingEventEventType)
aeEventType
  = lens _aeEventType (\ s a -> s{_aeEventType = a})

-- | The target number of workers the worker pool wants to resize to use.
aeTargetNumWorkers :: Lens' AutoscalingEvent (Maybe Int64)
aeTargetNumWorkers
  = lens _aeTargetNumWorkers
      (\ s a -> s{_aeTargetNumWorkers = a})
      . mapping _Coerce

-- | A short and friendly name for the worker pool this event refers to,
-- populated from the value of PoolStageRelation::user_pool_name.
aeWorkerPool :: Lens' AutoscalingEvent (Maybe Text)
aeWorkerPool
  = lens _aeWorkerPool (\ s a -> s{_aeWorkerPool = a})

-- | A message describing why the system decided to adjust the current number
-- of workers, why it failed, or why the system decided to not make any
-- changes to the number of workers.
aeDescription :: Lens' AutoscalingEvent (Maybe StructuredMessage)
aeDescription
  = lens _aeDescription
      (\ s a -> s{_aeDescription = a})

instance FromJSON AutoscalingEvent where
        parseJSON
          = withObject "AutoscalingEvent"
              (\ o ->
                 AutoscalingEvent' <$>
                   (o .:? "currentNumWorkers") <*> (o .:? "time") <*>
                     (o .:? "eventType")
                     <*> (o .:? "targetNumWorkers")
                     <*> (o .:? "workerPool")
                     <*> (o .:? "description"))

instance ToJSON AutoscalingEvent where
        toJSON AutoscalingEvent'{..}
          = object
              (catMaybes
                 [("currentNumWorkers" .=) <$> _aeCurrentNumWorkers,
                  ("time" .=) <$> _aeTime,
                  ("eventType" .=) <$> _aeEventType,
                  ("targetNumWorkers" .=) <$> _aeTargetNumWorkers,
                  ("workerPool" .=) <$> _aeWorkerPool,
                  ("description" .=) <$> _aeDescription])

-- | Represents the operation to split a high-level Source specification into
-- bundles (parts for parallel processing). At a high level, splitting of a
-- source into bundles happens as follows: SourceSplitRequest is applied to
-- the source. If it returns SOURCE_SPLIT_OUTCOME_USE_CURRENT, no further
-- splitting happens and the source is used \"as is\". Otherwise, splitting
-- is applied recursively to each produced DerivedSource. As an
-- optimization, for any Source, if its does_not_need_splitting is true,
-- the framework assumes that splitting this source would return
-- SOURCE_SPLIT_OUTCOME_USE_CURRENT, and doesn\'t initiate a
-- SourceSplitRequest. This applies both to the initial source being split
-- and to bundles produced from it.
--
-- /See:/ 'sourceSplitRequest' smart constructor.
data SourceSplitRequest =
  SourceSplitRequest'
    { _ssrSource  :: !(Maybe Source)
    , _ssrOptions :: !(Maybe SourceSplitOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceSplitRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssrSource'
--
-- * 'ssrOptions'
sourceSplitRequest
    :: SourceSplitRequest
sourceSplitRequest =
  SourceSplitRequest' {_ssrSource = Nothing, _ssrOptions = Nothing}


-- | Specification of the source to be split.
ssrSource :: Lens' SourceSplitRequest (Maybe Source)
ssrSource
  = lens _ssrSource (\ s a -> s{_ssrSource = a})

-- | Hints for tuning the splitting process.
ssrOptions :: Lens' SourceSplitRequest (Maybe SourceSplitOptions)
ssrOptions
  = lens _ssrOptions (\ s a -> s{_ssrOptions = a})

instance FromJSON SourceSplitRequest where
        parseJSON
          = withObject "SourceSplitRequest"
              (\ o ->
                 SourceSplitRequest' <$>
                   (o .:? "source") <*> (o .:? "options"))

instance ToJSON SourceSplitRequest where
        toJSON SourceSplitRequest'{..}
          = object
              (catMaybes
                 [("source" .=) <$> _ssrSource,
                  ("options" .=) <$> _ssrOptions])

-- | Response to a request to list job messages.
--
-- /See:/ 'listJobMessagesResponse' smart constructor.
data ListJobMessagesResponse =
  ListJobMessagesResponse'
    { _ljmrJobMessages       :: !(Maybe [JobMessage])
    , _ljmrNextPageToken     :: !(Maybe Text)
    , _ljmrAutoscalingEvents :: !(Maybe [AutoscalingEvent])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListJobMessagesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljmrJobMessages'
--
-- * 'ljmrNextPageToken'
--
-- * 'ljmrAutoscalingEvents'
listJobMessagesResponse
    :: ListJobMessagesResponse
listJobMessagesResponse =
  ListJobMessagesResponse'
    { _ljmrJobMessages = Nothing
    , _ljmrNextPageToken = Nothing
    , _ljmrAutoscalingEvents = Nothing
    }


-- | Messages in ascending timestamp order.
ljmrJobMessages :: Lens' ListJobMessagesResponse [JobMessage]
ljmrJobMessages
  = lens _ljmrJobMessages
      (\ s a -> s{_ljmrJobMessages = a})
      . _Default
      . _Coerce

-- | The token to obtain the next page of results if there are more.
ljmrNextPageToken :: Lens' ListJobMessagesResponse (Maybe Text)
ljmrNextPageToken
  = lens _ljmrNextPageToken
      (\ s a -> s{_ljmrNextPageToken = a})

-- | Autoscaling events in ascending timestamp order.
ljmrAutoscalingEvents :: Lens' ListJobMessagesResponse [AutoscalingEvent]
ljmrAutoscalingEvents
  = lens _ljmrAutoscalingEvents
      (\ s a -> s{_ljmrAutoscalingEvents = a})
      . _Default
      . _Coerce

instance FromJSON ListJobMessagesResponse where
        parseJSON
          = withObject "ListJobMessagesResponse"
              (\ o ->
                 ListJobMessagesResponse' <$>
                   (o .:? "jobMessages" .!= mempty) <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "autoscalingEvents" .!= mempty))

instance ToJSON ListJobMessagesResponse where
        toJSON ListJobMessagesResponse'{..}
          = object
              (catMaybes
                 [("jobMessages" .=) <$> _ljmrJobMessages,
                  ("nextPageToken" .=) <$> _ljmrNextPageToken,
                  ("autoscalingEvents" .=) <$> _ljmrAutoscalingEvents])

-- | Identifies a pubsub location to use for transferring data into or out of
-- a streaming Dataflow job.
--
-- /See:/ 'pubsubLocation' smart constructor.
data PubsubLocation =
  PubsubLocation'
    { _plTrackingSubscription :: !(Maybe Text)
    , _plDropLateData         :: !(Maybe Bool)
    , _plTimestampLabel       :: !(Maybe Text)
    , _plIdLabel              :: !(Maybe Text)
    , _plTopic                :: !(Maybe Text)
    , _plWithAttributes       :: !(Maybe Bool)
    , _plSubscription         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PubsubLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plTrackingSubscription'
--
-- * 'plDropLateData'
--
-- * 'plTimestampLabel'
--
-- * 'plIdLabel'
--
-- * 'plTopic'
--
-- * 'plWithAttributes'
--
-- * 'plSubscription'
pubsubLocation
    :: PubsubLocation
pubsubLocation =
  PubsubLocation'
    { _plTrackingSubscription = Nothing
    , _plDropLateData = Nothing
    , _plTimestampLabel = Nothing
    , _plIdLabel = Nothing
    , _plTopic = Nothing
    , _plWithAttributes = Nothing
    , _plSubscription = Nothing
    }


-- | If set, specifies the pubsub subscription that will be used for tracking
-- custom time timestamps for watermark estimation.
plTrackingSubscription :: Lens' PubsubLocation (Maybe Text)
plTrackingSubscription
  = lens _plTrackingSubscription
      (\ s a -> s{_plTrackingSubscription = a})

-- | Indicates whether the pipeline allows late-arriving data.
plDropLateData :: Lens' PubsubLocation (Maybe Bool)
plDropLateData
  = lens _plDropLateData
      (\ s a -> s{_plDropLateData = a})

-- | If set, contains a pubsub label from which to extract record timestamps.
-- If left empty, record timestamps will be generated upon arrival.
plTimestampLabel :: Lens' PubsubLocation (Maybe Text)
plTimestampLabel
  = lens _plTimestampLabel
      (\ s a -> s{_plTimestampLabel = a})

-- | If set, contains a pubsub label from which to extract record ids. If
-- left empty, record deduplication will be strictly best effort.
plIdLabel :: Lens' PubsubLocation (Maybe Text)
plIdLabel
  = lens _plIdLabel (\ s a -> s{_plIdLabel = a})

-- | A pubsub topic, in the form of \"pubsub.googleapis.com\/topics\/\/\"
plTopic :: Lens' PubsubLocation (Maybe Text)
plTopic = lens _plTopic (\ s a -> s{_plTopic = a})

-- | If true, then the client has requested to get pubsub attributes.
plWithAttributes :: Lens' PubsubLocation (Maybe Bool)
plWithAttributes
  = lens _plWithAttributes
      (\ s a -> s{_plWithAttributes = a})

-- | A pubsub subscription, in the form of
-- \"pubsub.googleapis.com\/subscriptions\/\/\"
plSubscription :: Lens' PubsubLocation (Maybe Text)
plSubscription
  = lens _plSubscription
      (\ s a -> s{_plSubscription = a})

instance FromJSON PubsubLocation where
        parseJSON
          = withObject "PubsubLocation"
              (\ o ->
                 PubsubLocation' <$>
                   (o .:? "trackingSubscription") <*>
                     (o .:? "dropLateData")
                     <*> (o .:? "timestampLabel")
                     <*> (o .:? "idLabel")
                     <*> (o .:? "topic")
                     <*> (o .:? "withAttributes")
                     <*> (o .:? "subscription"))

instance ToJSON PubsubLocation where
        toJSON PubsubLocation'{..}
          = object
              (catMaybes
                 [("trackingSubscription" .=) <$>
                    _plTrackingSubscription,
                  ("dropLateData" .=) <$> _plDropLateData,
                  ("timestampLabel" .=) <$> _plTimestampLabel,
                  ("idLabel" .=) <$> _plIdLabel,
                  ("topic" .=) <$> _plTopic,
                  ("withAttributes" .=) <$> _plWithAttributes,
                  ("subscription" .=) <$> _plSubscription])

-- | A metric value representing a list of floating point numbers.
--
-- /See:/ 'floatingPointList' smart constructor.
newtype FloatingPointList =
  FloatingPointList'
    { _fplElements :: Maybe [Textual Double]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FloatingPointList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fplElements'
floatingPointList
    :: FloatingPointList
floatingPointList = FloatingPointList' {_fplElements = Nothing}


-- | Elements of the list.
fplElements :: Lens' FloatingPointList [Double]
fplElements
  = lens _fplElements (\ s a -> s{_fplElements = a}) .
      _Default
      . _Coerce

instance FromJSON FloatingPointList where
        parseJSON
          = withObject "FloatingPointList"
              (\ o ->
                 FloatingPointList' <$> (o .:? "elements" .!= mempty))

instance ToJSON FloatingPointList where
        toJSON FloatingPointList'{..}
          = object
              (catMaybes [("elements" .=) <$> _fplElements])

-- | An input of an instruction, as a reference to an output of a producer
-- instruction.
--
-- /See:/ 'instructionInput' smart constructor.
data InstructionInput =
  InstructionInput'
    { _iiProducerInstructionIndex :: !(Maybe (Textual Int32))
    , _iiOutputNum                :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstructionInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiProducerInstructionIndex'
--
-- * 'iiOutputNum'
instructionInput
    :: InstructionInput
instructionInput =
  InstructionInput'
    {_iiProducerInstructionIndex = Nothing, _iiOutputNum = Nothing}


-- | The index (origin zero) of the parallel instruction that produces the
-- output to be consumed by this input. This index is relative to the list
-- of instructions in this input\'s instruction\'s containing MapTask.
iiProducerInstructionIndex :: Lens' InstructionInput (Maybe Int32)
iiProducerInstructionIndex
  = lens _iiProducerInstructionIndex
      (\ s a -> s{_iiProducerInstructionIndex = a})
      . mapping _Coerce

-- | The output index (origin zero) within the producer.
iiOutputNum :: Lens' InstructionInput (Maybe Int32)
iiOutputNum
  = lens _iiOutputNum (\ s a -> s{_iiOutputNum = a}) .
      mapping _Coerce

instance FromJSON InstructionInput where
        parseJSON
          = withObject "InstructionInput"
              (\ o ->
                 InstructionInput' <$>
                   (o .:? "producerInstructionIndex") <*>
                     (o .:? "outputNum"))

instance ToJSON InstructionInput where
        toJSON InstructionInput'{..}
          = object
              (catMaybes
                 [("producerInstructionIndex" .=) <$>
                    _iiProducerInstructionIndex,
                  ("outputNum" .=) <$> _iiOutputNum])

-- | Describes a particular function to invoke.
--
-- /See:/ 'seqMapTask' smart constructor.
data SeqMapTask =
  SeqMapTask'
    { _smtInputs      :: !(Maybe [SideInputInfo])
    , _smtName        :: !(Maybe Text)
    , _smtOutputInfos :: !(Maybe [SeqMapTaskOutputInfo])
    , _smtSystemName  :: !(Maybe Text)
    , _smtStageName   :: !(Maybe Text)
    , _smtUserFn      :: !(Maybe SeqMapTaskUserFn)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SeqMapTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smtInputs'
--
-- * 'smtName'
--
-- * 'smtOutputInfos'
--
-- * 'smtSystemName'
--
-- * 'smtStageName'
--
-- * 'smtUserFn'
seqMapTask
    :: SeqMapTask
seqMapTask =
  SeqMapTask'
    { _smtInputs = Nothing
    , _smtName = Nothing
    , _smtOutputInfos = Nothing
    , _smtSystemName = Nothing
    , _smtStageName = Nothing
    , _smtUserFn = Nothing
    }


-- | Information about each of the inputs.
smtInputs :: Lens' SeqMapTask [SideInputInfo]
smtInputs
  = lens _smtInputs (\ s a -> s{_smtInputs = a}) .
      _Default
      . _Coerce

-- | The user-provided name of the SeqDo operation.
smtName :: Lens' SeqMapTask (Maybe Text)
smtName = lens _smtName (\ s a -> s{_smtName = a})

-- | Information about each of the outputs.
smtOutputInfos :: Lens' SeqMapTask [SeqMapTaskOutputInfo]
smtOutputInfos
  = lens _smtOutputInfos
      (\ s a -> s{_smtOutputInfos = a})
      . _Default
      . _Coerce

-- | System-defined name of the SeqDo operation. Unique across the workflow.
smtSystemName :: Lens' SeqMapTask (Maybe Text)
smtSystemName
  = lens _smtSystemName
      (\ s a -> s{_smtSystemName = a})

-- | System-defined name of the stage containing the SeqDo operation. Unique
-- across the workflow.
smtStageName :: Lens' SeqMapTask (Maybe Text)
smtStageName
  = lens _smtStageName (\ s a -> s{_smtStageName = a})

-- | The user function to invoke.
smtUserFn :: Lens' SeqMapTask (Maybe SeqMapTaskUserFn)
smtUserFn
  = lens _smtUserFn (\ s a -> s{_smtUserFn = a})

instance FromJSON SeqMapTask where
        parseJSON
          = withObject "SeqMapTask"
              (\ o ->
                 SeqMapTask' <$>
                   (o .:? "inputs" .!= mempty) <*> (o .:? "name") <*>
                     (o .:? "outputInfos" .!= mempty)
                     <*> (o .:? "systemName")
                     <*> (o .:? "stageName")
                     <*> (o .:? "userFn"))

instance ToJSON SeqMapTask where
        toJSON SeqMapTask'{..}
          = object
              (catMaybes
                 [("inputs" .=) <$> _smtInputs,
                  ("name" .=) <$> _smtName,
                  ("outputInfos" .=) <$> _smtOutputInfos,
                  ("systemName" .=) <$> _smtSystemName,
                  ("stageName" .=) <$> _smtStageName,
                  ("userFn" .=) <$> _smtUserFn])

-- | Map from user step names to state families.
--
-- /See:/ 'streamingConfigTaskUserStepToStateFamilyNameMap' smart constructor.
newtype StreamingConfigTaskUserStepToStateFamilyNameMap =
  StreamingConfigTaskUserStepToStateFamilyNameMap'
    { _sctustsfnmAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StreamingConfigTaskUserStepToStateFamilyNameMap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sctustsfnmAddtional'
streamingConfigTaskUserStepToStateFamilyNameMap
    :: HashMap Text Text -- ^ 'sctustsfnmAddtional'
    -> StreamingConfigTaskUserStepToStateFamilyNameMap
streamingConfigTaskUserStepToStateFamilyNameMap pSctustsfnmAddtional_ =
  StreamingConfigTaskUserStepToStateFamilyNameMap'
    {_sctustsfnmAddtional = _Coerce # pSctustsfnmAddtional_}


sctustsfnmAddtional :: Lens' StreamingConfigTaskUserStepToStateFamilyNameMap (HashMap Text Text)
sctustsfnmAddtional
  = lens _sctustsfnmAddtional
      (\ s a -> s{_sctustsfnmAddtional = a})
      . _Coerce

instance FromJSON
           StreamingConfigTaskUserStepToStateFamilyNameMap
         where
        parseJSON
          = withObject
              "StreamingConfigTaskUserStepToStateFamilyNameMap"
              (\ o ->
                 StreamingConfigTaskUserStepToStateFamilyNameMap' <$>
                   (parseJSONObject o))

instance ToJSON
           StreamingConfigTaskUserStepToStateFamilyNameMap
         where
        toJSON = toJSON . _sctustsfnmAddtional

-- | A message describing the state of a particular execution stage.
--
-- /See:/ 'executionStageState' smart constructor.
data ExecutionStageState =
  ExecutionStageState'
    { _essExecutionStageName  :: !(Maybe Text)
    , _essCurrentStateTime    :: !(Maybe DateTime')
    , _essExecutionStageState :: !(Maybe ExecutionStageStateExecutionStageState)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExecutionStageState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'essExecutionStageName'
--
-- * 'essCurrentStateTime'
--
-- * 'essExecutionStageState'
executionStageState
    :: ExecutionStageState
executionStageState =
  ExecutionStageState'
    { _essExecutionStageName = Nothing
    , _essCurrentStateTime = Nothing
    , _essExecutionStageState = Nothing
    }


-- | The name of the execution stage.
essExecutionStageName :: Lens' ExecutionStageState (Maybe Text)
essExecutionStageName
  = lens _essExecutionStageName
      (\ s a -> s{_essExecutionStageName = a})

-- | The time at which the stage transitioned to this state.
essCurrentStateTime :: Lens' ExecutionStageState (Maybe UTCTime)
essCurrentStateTime
  = lens _essCurrentStateTime
      (\ s a -> s{_essCurrentStateTime = a})
      . mapping _DateTime

-- | Executions stage states allow the same set of values as JobState.
essExecutionStageState :: Lens' ExecutionStageState (Maybe ExecutionStageStateExecutionStageState)
essExecutionStageState
  = lens _essExecutionStageState
      (\ s a -> s{_essExecutionStageState = a})

instance FromJSON ExecutionStageState where
        parseJSON
          = withObject "ExecutionStageState"
              (\ o ->
                 ExecutionStageState' <$>
                   (o .:? "executionStageName") <*>
                     (o .:? "currentStateTime")
                     <*> (o .:? "executionStageState"))

instance ToJSON ExecutionStageState where
        toJSON ExecutionStageState'{..}
          = object
              (catMaybes
                 [("executionStageName" .=) <$>
                    _essExecutionStageName,
                  ("currentStateTime" .=) <$> _essCurrentStateTime,
                  ("executionStageState" .=) <$>
                    _essExecutionStageState])

-- | Description of an input or output of an execution stage.
--
-- /See:/ 'stageSource' smart constructor.
data StageSource =
  StageSource'
    { _ssSizeBytes                     :: !(Maybe (Textual Int64))
    , _ssUserName                      :: !(Maybe Text)
    , _ssName                          :: !(Maybe Text)
    , _ssOriginalTransformOrCollection :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StageSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssSizeBytes'
--
-- * 'ssUserName'
--
-- * 'ssName'
--
-- * 'ssOriginalTransformOrCollection'
stageSource
    :: StageSource
stageSource =
  StageSource'
    { _ssSizeBytes = Nothing
    , _ssUserName = Nothing
    , _ssName = Nothing
    , _ssOriginalTransformOrCollection = Nothing
    }


-- | Size of the source, if measurable.
ssSizeBytes :: Lens' StageSource (Maybe Int64)
ssSizeBytes
  = lens _ssSizeBytes (\ s a -> s{_ssSizeBytes = a}) .
      mapping _Coerce

-- | Human-readable name for this source; may be user or system generated.
ssUserName :: Lens' StageSource (Maybe Text)
ssUserName
  = lens _ssUserName (\ s a -> s{_ssUserName = a})

-- | Dataflow service generated name for this source.
ssName :: Lens' StageSource (Maybe Text)
ssName = lens _ssName (\ s a -> s{_ssName = a})

-- | User name for the original user transform or collection with which this
-- source is most closely associated.
ssOriginalTransformOrCollection :: Lens' StageSource (Maybe Text)
ssOriginalTransformOrCollection
  = lens _ssOriginalTransformOrCollection
      (\ s a -> s{_ssOriginalTransformOrCollection = a})

instance FromJSON StageSource where
        parseJSON
          = withObject "StageSource"
              (\ o ->
                 StageSource' <$>
                   (o .:? "sizeBytes") <*> (o .:? "userName") <*>
                     (o .:? "name")
                     <*> (o .:? "originalTransformOrCollection"))

instance ToJSON StageSource where
        toJSON StageSource'{..}
          = object
              (catMaybes
                 [("sizeBytes" .=) <$> _ssSizeBytes,
                  ("userName" .=) <$> _ssUserName,
                  ("name" .=) <$> _ssName,
                  ("originalTransformOrCollection" .=) <$>
                    _ssOriginalTransformOrCollection])

-- | A work item that represents the different operations that can be
-- performed on a user-defined Source specification.
--
-- /See:/ 'sourceOperationRequest' smart constructor.
data SourceOperationRequest =
  SourceOperationRequest'
    { _souSplit        :: !(Maybe SourceSplitRequest)
    , _souGetMetadata  :: !(Maybe SourceGetMetadataRequest)
    , _souName         :: !(Maybe Text)
    , _souSystemName   :: !(Maybe Text)
    , _souStageName    :: !(Maybe Text)
    , _souOriginalName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceOperationRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'souSplit'
--
-- * 'souGetMetadata'
--
-- * 'souName'
--
-- * 'souSystemName'
--
-- * 'souStageName'
--
-- * 'souOriginalName'
sourceOperationRequest
    :: SourceOperationRequest
sourceOperationRequest =
  SourceOperationRequest'
    { _souSplit = Nothing
    , _souGetMetadata = Nothing
    , _souName = Nothing
    , _souSystemName = Nothing
    , _souStageName = Nothing
    , _souOriginalName = Nothing
    }


-- | Information about a request to split a source.
souSplit :: Lens' SourceOperationRequest (Maybe SourceSplitRequest)
souSplit = lens _souSplit (\ s a -> s{_souSplit = a})

-- | Information about a request to get metadata about a source.
souGetMetadata :: Lens' SourceOperationRequest (Maybe SourceGetMetadataRequest)
souGetMetadata
  = lens _souGetMetadata
      (\ s a -> s{_souGetMetadata = a})

-- | User-provided name of the Read instruction for this source.
souName :: Lens' SourceOperationRequest (Maybe Text)
souName = lens _souName (\ s a -> s{_souName = a})

-- | System-defined name of the Read instruction for this source. Unique
-- across the workflow.
souSystemName :: Lens' SourceOperationRequest (Maybe Text)
souSystemName
  = lens _souSystemName
      (\ s a -> s{_souSystemName = a})

-- | System-defined name of the stage containing the source operation. Unique
-- across the workflow.
souStageName :: Lens' SourceOperationRequest (Maybe Text)
souStageName
  = lens _souStageName (\ s a -> s{_souStageName = a})

-- | System-defined name for the Read instruction for this source in the
-- original workflow graph.
souOriginalName :: Lens' SourceOperationRequest (Maybe Text)
souOriginalName
  = lens _souOriginalName
      (\ s a -> s{_souOriginalName = a})

instance FromJSON SourceOperationRequest where
        parseJSON
          = withObject "SourceOperationRequest"
              (\ o ->
                 SourceOperationRequest' <$>
                   (o .:? "split") <*> (o .:? "getMetadata") <*>
                     (o .:? "name")
                     <*> (o .:? "systemName")
                     <*> (o .:? "stageName")
                     <*> (o .:? "originalName"))

instance ToJSON SourceOperationRequest where
        toJSON SourceOperationRequest'{..}
          = object
              (catMaybes
                 [("split" .=) <$> _souSplit,
                  ("getMetadata" .=) <$> _souGetMetadata,
                  ("name" .=) <$> _souName,
                  ("systemName" .=) <$> _souSystemName,
                  ("stageName" .=) <$> _souStageName,
                  ("originalName" .=) <$> _souOriginalName])

-- | Metadata for a Spanner connector used by the job.
--
-- /See:/ 'spannerIODetails' smart constructor.
data SpannerIODetails =
  SpannerIODetails'
    { _siodInstanceId :: !(Maybe Text)
    , _siodDatabaseId :: !(Maybe Text)
    , _siodProjectId  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpannerIODetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siodInstanceId'
--
-- * 'siodDatabaseId'
--
-- * 'siodProjectId'
spannerIODetails
    :: SpannerIODetails
spannerIODetails =
  SpannerIODetails'
    { _siodInstanceId = Nothing
    , _siodDatabaseId = Nothing
    , _siodProjectId = Nothing
    }


-- | InstanceId accessed in the connection.
siodInstanceId :: Lens' SpannerIODetails (Maybe Text)
siodInstanceId
  = lens _siodInstanceId
      (\ s a -> s{_siodInstanceId = a})

-- | DatabaseId accessed in the connection.
siodDatabaseId :: Lens' SpannerIODetails (Maybe Text)
siodDatabaseId
  = lens _siodDatabaseId
      (\ s a -> s{_siodDatabaseId = a})

-- | ProjectId accessed in the connection.
siodProjectId :: Lens' SpannerIODetails (Maybe Text)
siodProjectId
  = lens _siodProjectId
      (\ s a -> s{_siodProjectId = a})

instance FromJSON SpannerIODetails where
        parseJSON
          = withObject "SpannerIODetails"
              (\ o ->
                 SpannerIODetails' <$>
                   (o .:? "instanceId") <*> (o .:? "databaseId") <*>
                     (o .:? "projectId"))

instance ToJSON SpannerIODetails where
        toJSON SpannerIODetails'{..}
          = object
              (catMaybes
                 [("instanceId" .=) <$> _siodInstanceId,
                  ("databaseId" .=) <$> _siodDatabaseId,
                  ("projectId" .=) <$> _siodProjectId])

-- | Response to a request to lease WorkItems.
--
-- /See:/ 'leaseWorkItemResponse' smart constructor.
data LeaseWorkItemResponse =
  LeaseWorkItemResponse'
    { _lwirWorkItems             :: !(Maybe [WorkItem])
    , _lwirUnifiedWorkerResponse :: !(Maybe LeaseWorkItemResponseUnifiedWorkerResponse)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LeaseWorkItemResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lwirWorkItems'
--
-- * 'lwirUnifiedWorkerResponse'
leaseWorkItemResponse
    :: LeaseWorkItemResponse
leaseWorkItemResponse =
  LeaseWorkItemResponse'
    {_lwirWorkItems = Nothing, _lwirUnifiedWorkerResponse = Nothing}


-- | A list of the leased WorkItems.
lwirWorkItems :: Lens' LeaseWorkItemResponse [WorkItem]
lwirWorkItems
  = lens _lwirWorkItems
      (\ s a -> s{_lwirWorkItems = a})
      . _Default
      . _Coerce

-- | Untranslated bag-of-bytes WorkResponse for UnifiedWorker.
lwirUnifiedWorkerResponse :: Lens' LeaseWorkItemResponse (Maybe LeaseWorkItemResponseUnifiedWorkerResponse)
lwirUnifiedWorkerResponse
  = lens _lwirUnifiedWorkerResponse
      (\ s a -> s{_lwirUnifiedWorkerResponse = a})

instance FromJSON LeaseWorkItemResponse where
        parseJSON
          = withObject "LeaseWorkItemResponse"
              (\ o ->
                 LeaseWorkItemResponse' <$>
                   (o .:? "workItems" .!= mempty) <*>
                     (o .:? "unifiedWorkerResponse"))

instance ToJSON LeaseWorkItemResponse where
        toJSON LeaseWorkItemResponse'{..}
          = object
              (catMaybes
                 [("workItems" .=) <$> _lwirWorkItems,
                  ("unifiedWorkerResponse" .=) <$>
                    _lwirUnifiedWorkerResponse])

-- | Position defines a position within a collection of data. The value can
-- be either the end position, a key (used with ordered collections), a
-- byte offset, or a record index.
--
-- /See:/ 'position' smart constructor.
data Position =
  Position'
    { _pByteOffSet      :: !(Maybe (Textual Int64))
    , _pConcatPosition  :: !(Maybe ConcatPosition)
    , _pRecordIndex     :: !(Maybe (Textual Int64))
    , _pShufflePosition :: !(Maybe Text)
    , _pKey             :: !(Maybe Text)
    , _pEnd             :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Position' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pByteOffSet'
--
-- * 'pConcatPosition'
--
-- * 'pRecordIndex'
--
-- * 'pShufflePosition'
--
-- * 'pKey'
--
-- * 'pEnd'
position
    :: Position
position =
  Position'
    { _pByteOffSet = Nothing
    , _pConcatPosition = Nothing
    , _pRecordIndex = Nothing
    , _pShufflePosition = Nothing
    , _pKey = Nothing
    , _pEnd = Nothing
    }


-- | Position is a byte offset.
pByteOffSet :: Lens' Position (Maybe Int64)
pByteOffSet
  = lens _pByteOffSet (\ s a -> s{_pByteOffSet = a}) .
      mapping _Coerce

-- | CloudPosition is a concat position.
pConcatPosition :: Lens' Position (Maybe ConcatPosition)
pConcatPosition
  = lens _pConcatPosition
      (\ s a -> s{_pConcatPosition = a})

-- | Position is a record index.
pRecordIndex :: Lens' Position (Maybe Int64)
pRecordIndex
  = lens _pRecordIndex (\ s a -> s{_pRecordIndex = a})
      . mapping _Coerce

-- | CloudPosition is a base64 encoded BatchShufflePosition (with FIXED
-- sharding).
pShufflePosition :: Lens' Position (Maybe Text)
pShufflePosition
  = lens _pShufflePosition
      (\ s a -> s{_pShufflePosition = a})

-- | Position is a string key, ordered lexicographically.
pKey :: Lens' Position (Maybe Text)
pKey = lens _pKey (\ s a -> s{_pKey = a})

-- | Position is past all other positions. Also useful for the end position
-- of an unbounded range.
pEnd :: Lens' Position (Maybe Bool)
pEnd = lens _pEnd (\ s a -> s{_pEnd = a})

instance FromJSON Position where
        parseJSON
          = withObject "Position"
              (\ o ->
                 Position' <$>
                   (o .:? "byteOffset") <*> (o .:? "concatPosition") <*>
                     (o .:? "recordIndex")
                     <*> (o .:? "shufflePosition")
                     <*> (o .:? "key")
                     <*> (o .:? "end"))

instance ToJSON Position where
        toJSON Position'{..}
          = object
              (catMaybes
                 [("byteOffset" .=) <$> _pByteOffSet,
                  ("concatPosition" .=) <$> _pConcatPosition,
                  ("recordIndex" .=) <$> _pRecordIndex,
                  ("shufflePosition" .=) <$> _pShufflePosition,
                  ("key" .=) <$> _pKey, ("end" .=) <$> _pEnd])

-- | Structured data associated with this message.
--
-- /See:/ 'parameter' smart constructor.
data Parameter =
  Parameter'
    { _parValue :: !(Maybe JSONValue)
    , _parKey   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Parameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'parValue'
--
-- * 'parKey'
parameter
    :: Parameter
parameter = Parameter' {_parValue = Nothing, _parKey = Nothing}


-- | Value for this parameter.
parValue :: Lens' Parameter (Maybe JSONValue)
parValue = lens _parValue (\ s a -> s{_parValue = a})

-- | Key or name for this parameter.
parKey :: Lens' Parameter (Maybe Text)
parKey = lens _parKey (\ s a -> s{_parKey = a})

instance FromJSON Parameter where
        parseJSON
          = withObject "Parameter"
              (\ o ->
                 Parameter' <$> (o .:? "value") <*> (o .:? "key"))

instance ToJSON Parameter where
        toJSON Parameter'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _parValue, ("key" .=) <$> _parKey])
