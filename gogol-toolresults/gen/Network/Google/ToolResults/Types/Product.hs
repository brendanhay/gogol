{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ToolResults.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ToolResults.Types.Product where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types.Sum

-- | A response containing the thumbnails in a step.
--
-- /See:/ 'listStepThumbnailsResponse' smart constructor.
data ListStepThumbnailsResponse =
  ListStepThumbnailsResponse'
    { _lstrNextPageToken :: !(Maybe Text)
    , _lstrThumbnails    :: !(Maybe [Image])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListStepThumbnailsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lstrNextPageToken'
--
-- * 'lstrThumbnails'
listStepThumbnailsResponse
    :: ListStepThumbnailsResponse
listStepThumbnailsResponse =
  ListStepThumbnailsResponse'
    {_lstrNextPageToken = Nothing, _lstrThumbnails = Nothing}


-- | A continuation token to resume the query at the next item. If set,
-- indicates that there are more thumbnails to read, by calling list again
-- with this value in the page_token field.
lstrNextPageToken :: Lens' ListStepThumbnailsResponse (Maybe Text)
lstrNextPageToken
  = lens _lstrNextPageToken
      (\ s a -> s{_lstrNextPageToken = a})

-- | A list of image data. Images are returned in a deterministic order; they
-- are ordered by these factors, in order of importance: * First, by their
-- associated test case. Images without a test case are considered greater
-- than images with one. * Second, by their creation time. Images without a
-- creation time are greater than images with one. * Third, by the order in
-- which they were added to the step (by calls to CreateStep or
-- UpdateStep).
lstrThumbnails :: Lens' ListStepThumbnailsResponse [Image]
lstrThumbnails
  = lens _lstrThumbnails
      (\ s a -> s{_lstrThumbnails = a})
      . _Default
      . _Coerce

instance FromJSON ListStepThumbnailsResponse where
        parseJSON
          = withObject "ListStepThumbnailsResponse"
              (\ o ->
                 ListStepThumbnailsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "thumbnails" .!= mempty))

instance ToJSON ListStepThumbnailsResponse where
        toJSON ListStepThumbnailsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lstrNextPageToken,
                  ("thumbnails" .=) <$> _lstrThumbnails])

--
-- /See:/ 'screen' smart constructor.
data Screen =
  Screen'
    { _sFileReference :: !(Maybe Text)
    , _sLocale        :: !(Maybe Text)
    , _sModel         :: !(Maybe Text)
    , _sVersion       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Screen' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sFileReference'
--
-- * 'sLocale'
--
-- * 'sModel'
--
-- * 'sVersion'
screen
    :: Screen
screen =
  Screen'
    { _sFileReference = Nothing
    , _sLocale = Nothing
    , _sModel = Nothing
    , _sVersion = Nothing
    }


-- | File reference of the png file. Required.
sFileReference :: Lens' Screen (Maybe Text)
sFileReference
  = lens _sFileReference
      (\ s a -> s{_sFileReference = a})

-- | Locale of the device that the screenshot was taken on. Required.
sLocale :: Lens' Screen (Maybe Text)
sLocale = lens _sLocale (\ s a -> s{_sLocale = a})

-- | Model of the device that the screenshot was taken on. Required.
sModel :: Lens' Screen (Maybe Text)
sModel = lens _sModel (\ s a -> s{_sModel = a})

-- | OS version of the device that the screenshot was taken on. Required.
sVersion :: Lens' Screen (Maybe Text)
sVersion = lens _sVersion (\ s a -> s{_sVersion = a})

instance FromJSON Screen where
        parseJSON
          = withObject "Screen"
              (\ o ->
                 Screen' <$>
                   (o .:? "fileReference") <*> (o .:? "locale") <*>
                     (o .:? "model")
                     <*> (o .:? "version"))

instance ToJSON Screen where
        toJSON Screen'{..}
          = object
              (catMaybes
                 [("fileReference" .=) <$> _sFileReference,
                  ("locale" .=) <$> _sLocale, ("model" .=) <$> _sModel,
                  ("version" .=) <$> _sVersion])

-- | A single thumbnail, with its size and format.
--
-- /See:/ 'thumbnail' smart constructor.
data Thumbnail =
  Thumbnail'
    { _tData        :: !(Maybe Bytes)
    , _tHeightPx    :: !(Maybe (Textual Int32))
    , _tWidthPx     :: !(Maybe (Textual Int32))
    , _tContentType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Thumbnail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tData'
--
-- * 'tHeightPx'
--
-- * 'tWidthPx'
--
-- * 'tContentType'
thumbnail
    :: Thumbnail
thumbnail =
  Thumbnail'
    { _tData = Nothing
    , _tHeightPx = Nothing
    , _tWidthPx = Nothing
    , _tContentType = Nothing
    }


-- | The thumbnail file itself. That is, the bytes here are precisely the
-- bytes that make up the thumbnail file; they can be served as an image
-- as-is (with the appropriate content type.) Always set.
tData :: Lens' Thumbnail (Maybe ByteString)
tData
  = lens _tData (\ s a -> s{_tData = a}) .
      mapping _Bytes

-- | The height of the thumbnail, in pixels. Always set.
tHeightPx :: Lens' Thumbnail (Maybe Int32)
tHeightPx
  = lens _tHeightPx (\ s a -> s{_tHeightPx = a}) .
      mapping _Coerce

-- | The width of the thumbnail, in pixels. Always set.
tWidthPx :: Lens' Thumbnail (Maybe Int32)
tWidthPx
  = lens _tWidthPx (\ s a -> s{_tWidthPx = a}) .
      mapping _Coerce

-- | The thumbnail\'s content type, i.e. \"image\/png\". Always set.
tContentType :: Lens' Thumbnail (Maybe Text)
tContentType
  = lens _tContentType (\ s a -> s{_tContentType = a})

instance FromJSON Thumbnail where
        parseJSON
          = withObject "Thumbnail"
              (\ o ->
                 Thumbnail' <$>
                   (o .:? "data") <*> (o .:? "heightPx") <*>
                     (o .:? "widthPx")
                     <*> (o .:? "contentType"))

instance ToJSON Thumbnail where
        toJSON Thumbnail'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _tData,
                  ("heightPx" .=) <$> _tHeightPx,
                  ("widthPx" .=) <$> _tWidthPx,
                  ("contentType" .=) <$> _tContentType])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). The error model is
-- designed to be: - Simple to use and understand for most users - Flexible
-- enough to meet unexpected needs # Overview The \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. The error code should be an enum value of [google.rpc.Code][],
-- but it may accept additional error codes if needed. The error message
-- should be a developer-facing English message that helps developers
-- *understand* and *resolve* the error. If a localized user-facing error
-- message is needed, put the localized message in the error details or
-- localize it in the client. The optional error details may contain
-- arbitrary information about the error. There is a predefined set of
-- error detail types in the package \`google.rpc\` that can be used for
-- common error conditions. # Language mapping The \`Status\` message is
-- the logical representation of the error model, but it is not necessarily
-- the actual wire format. When the \`Status\` message is exposed in
-- different client libraries and different wire protocols, it can be
-- mapped differently. For example, it will likely be mapped to some
-- exceptions in Java, but more likely mapped to some error codes in C. #
-- Other uses The error model and the \`Status\` message can be used in a
-- variety of environments, either with or without APIs, to provide a
-- consistent developer experience across different environments. Example
-- uses of this error model include: - Partial errors. If a service needs
-- to return partial errors to the client, it may embed the \`Status\` in
-- the normal response to indicate the partial errors. - Workflow errors. A
-- typical workflow has multiple steps. Each step may have a \`Status\`
-- message for error reporting. - Batch operations. If a client uses batch
-- request and batch response, the \`Status\` message should be used
-- directly inside batch response, one for each error sub-response. -
-- Asynchronous operations. If an API call embeds asynchronous operation
-- results in its response, the status of those operations should be
-- represented directly using the \`Status\` message. - Logging. If some
-- API errors are stored in logs, the message \`Status\` could be used
-- directly after any stripping needed for security\/privacy reasons.
--
-- /See:/ 'status' smart constructor.
data Status =
  Status'
    { _sDetails :: !(Maybe [Any])
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
sDetails :: Lens' Status [Any]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of [google.rpc.Code][].
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- [google.rpc.Status.details][] field, or localized by the client.
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

-- | A reference to a ToolExecution output file.
--
-- /See:/ 'toolOutputReference' smart constructor.
data ToolOutputReference =
  ToolOutputReference'
    { _torCreationTime :: !(Maybe Timestamp)
    , _torTestCase     :: !(Maybe TestCaseReference)
    , _torOutput       :: !(Maybe FileReference)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ToolOutputReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'torCreationTime'
--
-- * 'torTestCase'
--
-- * 'torOutput'
toolOutputReference
    :: ToolOutputReference
toolOutputReference =
  ToolOutputReference'
    {_torCreationTime = Nothing, _torTestCase = Nothing, _torOutput = Nothing}


-- | The creation time of the file. - In response: present if set by
-- create\/update request - In create\/update request: optional
torCreationTime :: Lens' ToolOutputReference (Maybe Timestamp)
torCreationTime
  = lens _torCreationTime
      (\ s a -> s{_torCreationTime = a})

-- | The test case to which this output file belongs. - In response: present
-- if set by create\/update request - In create\/update request: optional
torTestCase :: Lens' ToolOutputReference (Maybe TestCaseReference)
torTestCase
  = lens _torTestCase (\ s a -> s{_torTestCase = a})

-- | A FileReference to an output file. - In response: always set - In
-- create\/update request: always set
torOutput :: Lens' ToolOutputReference (Maybe FileReference)
torOutput
  = lens _torOutput (\ s a -> s{_torOutput = a})

instance FromJSON ToolOutputReference where
        parseJSON
          = withObject "ToolOutputReference"
              (\ o ->
                 ToolOutputReference' <$>
                   (o .:? "creationTime") <*> (o .:? "testCase") <*>
                     (o .:? "output"))

instance ToJSON ToolOutputReference where
        toJSON ToolOutputReference'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _torCreationTime,
                  ("testCase" .=) <$> _torTestCase,
                  ("output" .=) <$> _torOutput])

-- | Resource representing a collection of performance samples (or data
-- points)
--
-- /See:/ 'perfSampleSeries' smart constructor.
data PerfSampleSeries =
  PerfSampleSeries'
    { _pssExecutionId           :: !(Maybe Text)
    , _pssStepId                :: !(Maybe Text)
    , _pssHistoryId             :: !(Maybe Text)
    , _pssProjectId             :: !(Maybe Text)
    , _pssSampleSeriesId        :: !(Maybe Text)
    , _pssBasicPerfSampleSeries :: !(Maybe BasicPerfSampleSeries)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PerfSampleSeries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pssExecutionId'
--
-- * 'pssStepId'
--
-- * 'pssHistoryId'
--
-- * 'pssProjectId'
--
-- * 'pssSampleSeriesId'
--
-- * 'pssBasicPerfSampleSeries'
perfSampleSeries
    :: PerfSampleSeries
perfSampleSeries =
  PerfSampleSeries'
    { _pssExecutionId = Nothing
    , _pssStepId = Nothing
    , _pssHistoryId = Nothing
    , _pssProjectId = Nothing
    , _pssSampleSeriesId = Nothing
    , _pssBasicPerfSampleSeries = Nothing
    }


-- | A tool results execution ID.
pssExecutionId :: Lens' PerfSampleSeries (Maybe Text)
pssExecutionId
  = lens _pssExecutionId
      (\ s a -> s{_pssExecutionId = a})

-- | A tool results step ID.
pssStepId :: Lens' PerfSampleSeries (Maybe Text)
pssStepId
  = lens _pssStepId (\ s a -> s{_pssStepId = a})

-- | A tool results history ID.
pssHistoryId :: Lens' PerfSampleSeries (Maybe Text)
pssHistoryId
  = lens _pssHistoryId (\ s a -> s{_pssHistoryId = a})

-- | The cloud project
pssProjectId :: Lens' PerfSampleSeries (Maybe Text)
pssProjectId
  = lens _pssProjectId (\ s a -> s{_pssProjectId = a})

-- | A sample series id
pssSampleSeriesId :: Lens' PerfSampleSeries (Maybe Text)
pssSampleSeriesId
  = lens _pssSampleSeriesId
      (\ s a -> s{_pssSampleSeriesId = a})

-- | Basic series represented by a line chart
pssBasicPerfSampleSeries :: Lens' PerfSampleSeries (Maybe BasicPerfSampleSeries)
pssBasicPerfSampleSeries
  = lens _pssBasicPerfSampleSeries
      (\ s a -> s{_pssBasicPerfSampleSeries = a})

instance FromJSON PerfSampleSeries where
        parseJSON
          = withObject "PerfSampleSeries"
              (\ o ->
                 PerfSampleSeries' <$>
                   (o .:? "executionId") <*> (o .:? "stepId") <*>
                     (o .:? "historyId")
                     <*> (o .:? "projectId")
                     <*> (o .:? "sampleSeriesId")
                     <*> (o .:? "basicPerfSampleSeries"))

instance ToJSON PerfSampleSeries where
        toJSON PerfSampleSeries'{..}
          = object
              (catMaybes
                 [("executionId" .=) <$> _pssExecutionId,
                  ("stepId" .=) <$> _pssStepId,
                  ("historyId" .=) <$> _pssHistoryId,
                  ("projectId" .=) <$> _pssProjectId,
                  ("sampleSeriesId" .=) <$> _pssSampleSeriesId,
                  ("basicPerfSampleSeries" .=) <$>
                    _pssBasicPerfSampleSeries])

-- | Android app information.
--
-- /See:/ 'androidAppInfo' smart constructor.
data AndroidAppInfo =
  AndroidAppInfo'
    { _aaiVersionCode :: !(Maybe Text)
    , _aaiVersionName :: !(Maybe Text)
    , _aaiPackageName :: !(Maybe Text)
    , _aaiName        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AndroidAppInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaiVersionCode'
--
-- * 'aaiVersionName'
--
-- * 'aaiPackageName'
--
-- * 'aaiName'
androidAppInfo
    :: AndroidAppInfo
androidAppInfo =
  AndroidAppInfo'
    { _aaiVersionCode = Nothing
    , _aaiVersionName = Nothing
    , _aaiPackageName = Nothing
    , _aaiName = Nothing
    }


-- | The internal version code of the app. Optional.
aaiVersionCode :: Lens' AndroidAppInfo (Maybe Text)
aaiVersionCode
  = lens _aaiVersionCode
      (\ s a -> s{_aaiVersionCode = a})

-- | The version name of the app. Optional.
aaiVersionName :: Lens' AndroidAppInfo (Maybe Text)
aaiVersionName
  = lens _aaiVersionName
      (\ s a -> s{_aaiVersionName = a})

-- | The package name of the app. Required.
aaiPackageName :: Lens' AndroidAppInfo (Maybe Text)
aaiPackageName
  = lens _aaiPackageName
      (\ s a -> s{_aaiPackageName = a})

-- | The name of the app. Optional
aaiName :: Lens' AndroidAppInfo (Maybe Text)
aaiName = lens _aaiName (\ s a -> s{_aaiName = a})

instance FromJSON AndroidAppInfo where
        parseJSON
          = withObject "AndroidAppInfo"
              (\ o ->
                 AndroidAppInfo' <$>
                   (o .:? "versionCode") <*> (o .:? "versionName") <*>
                     (o .:? "packageName")
                     <*> (o .:? "name"))

instance ToJSON AndroidAppInfo where
        toJSON AndroidAppInfo'{..}
          = object
              (catMaybes
                 [("versionCode" .=) <$> _aaiVersionCode,
                  ("versionName" .=) <$> _aaiVersionName,
                  ("packageName" .=) <$> _aaiPackageName,
                  ("name" .=) <$> _aaiName])

-- | Resource representing a single performance measure or data point
--
-- /See:/ 'perfSample' smart constructor.
data PerfSample =
  PerfSample'
    { _psValue      :: !(Maybe (Textual Double))
    , _psSampleTime :: !(Maybe Timestamp)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PerfSample' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psValue'
--
-- * 'psSampleTime'
perfSample
    :: PerfSample
perfSample = PerfSample' {_psValue = Nothing, _psSampleTime = Nothing}


-- | Value observed
psValue :: Lens' PerfSample (Maybe Double)
psValue
  = lens _psValue (\ s a -> s{_psValue = a}) .
      mapping _Coerce

-- | Timestamp of collection
psSampleTime :: Lens' PerfSample (Maybe Timestamp)
psSampleTime
  = lens _psSampleTime (\ s a -> s{_psSampleTime = a})

instance FromJSON PerfSample where
        parseJSON
          = withObject "PerfSample"
              (\ o ->
                 PerfSample' <$>
                   (o .:? "value") <*> (o .:? "sampleTime"))

instance ToJSON PerfSample where
        toJSON PerfSample'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _psValue,
                  ("sampleTime" .=) <$> _psSampleTime])

-- | An issue detected occurring during a test execution.
--
-- /See:/ 'testIssue' smart constructor.
data TestIssue =
  TestIssue'
    { _tiCategory     :: !(Maybe TestIssueCategory)
    , _tiSeverity     :: !(Maybe TestIssueSeverity)
    , _tiStackTrace   :: !(Maybe StackTrace)
    , _tiWarning      :: !(Maybe Any)
    , _tiType         :: !(Maybe TestIssueType)
    , _tiErrorMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestIssue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiCategory'
--
-- * 'tiSeverity'
--
-- * 'tiStackTrace'
--
-- * 'tiWarning'
--
-- * 'tiType'
--
-- * 'tiErrorMessage'
testIssue
    :: TestIssue
testIssue =
  TestIssue'
    { _tiCategory = Nothing
    , _tiSeverity = Nothing
    , _tiStackTrace = Nothing
    , _tiWarning = Nothing
    , _tiType = Nothing
    , _tiErrorMessage = Nothing
    }


-- | Category of issue. Required.
tiCategory :: Lens' TestIssue (Maybe TestIssueCategory)
tiCategory
  = lens _tiCategory (\ s a -> s{_tiCategory = a})

-- | Severity of issue. Required.
tiSeverity :: Lens' TestIssue (Maybe TestIssueSeverity)
tiSeverity
  = lens _tiSeverity (\ s a -> s{_tiSeverity = a})

-- | Deprecated in favor of stack trace fields inside specific warnings.
tiStackTrace :: Lens' TestIssue (Maybe StackTrace)
tiStackTrace
  = lens _tiStackTrace (\ s a -> s{_tiStackTrace = a})

-- | Warning message with additional details of the issue. Should always be a
-- message from com.google.devtools.toolresults.v1.warnings
tiWarning :: Lens' TestIssue (Maybe Any)
tiWarning
  = lens _tiWarning (\ s a -> s{_tiWarning = a})

-- | Type of issue. Required.
tiType :: Lens' TestIssue (Maybe TestIssueType)
tiType = lens _tiType (\ s a -> s{_tiType = a})

-- | A brief human-readable message describing the issue. Required.
tiErrorMessage :: Lens' TestIssue (Maybe Text)
tiErrorMessage
  = lens _tiErrorMessage
      (\ s a -> s{_tiErrorMessage = a})

instance FromJSON TestIssue where
        parseJSON
          = withObject "TestIssue"
              (\ o ->
                 TestIssue' <$>
                   (o .:? "category") <*> (o .:? "severity") <*>
                     (o .:? "stackTrace")
                     <*> (o .:? "warning")
                     <*> (o .:? "type")
                     <*> (o .:? "errorMessage"))

instance ToJSON TestIssue where
        toJSON TestIssue'{..}
          = object
              (catMaybes
                 [("category" .=) <$> _tiCategory,
                  ("severity" .=) <$> _tiSeverity,
                  ("stackTrace" .=) <$> _tiStackTrace,
                  ("warning" .=) <$> _tiWarning,
                  ("type" .=) <$> _tiType,
                  ("errorMessage" .=) <$> _tiErrorMessage])

--
-- /See:/ 'memoryInfo' smart constructor.
data MemoryInfo =
  MemoryInfo'
    { _miMemoryCapInKibibyte   :: !(Maybe (Textual Int64))
    , _miMemoryTotalInKibibyte :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MemoryInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miMemoryCapInKibibyte'
--
-- * 'miMemoryTotalInKibibyte'
memoryInfo
    :: MemoryInfo
memoryInfo =
  MemoryInfo'
    {_miMemoryCapInKibibyte = Nothing, _miMemoryTotalInKibibyte = Nothing}


-- | Maximum memory that can be allocated to the process in KiB
miMemoryCapInKibibyte :: Lens' MemoryInfo (Maybe Int64)
miMemoryCapInKibibyte
  = lens _miMemoryCapInKibibyte
      (\ s a -> s{_miMemoryCapInKibibyte = a})
      . mapping _Coerce

-- | Total memory available on the device in KiB
miMemoryTotalInKibibyte :: Lens' MemoryInfo (Maybe Int64)
miMemoryTotalInKibibyte
  = lens _miMemoryTotalInKibibyte
      (\ s a -> s{_miMemoryTotalInKibibyte = a})
      . mapping _Coerce

instance FromJSON MemoryInfo where
        parseJSON
          = withObject "MemoryInfo"
              (\ o ->
                 MemoryInfo' <$>
                   (o .:? "memoryCapInKibibyte") <*>
                     (o .:? "memoryTotalInKibibyte"))

instance ToJSON MemoryInfo where
        toJSON MemoryInfo'{..}
          = object
              (catMaybes
                 [("memoryCapInKibibyte" .=) <$>
                    _miMemoryCapInKibibyte,
                  ("memoryTotalInKibibyte" .=) <$>
                    _miMemoryTotalInKibibyte])

-- | An image, with a link to the main image and a thumbnail.
--
-- /See:/ 'image' smart constructor.
data Image =
  Image'
    { _iThumbnail   :: !(Maybe Thumbnail)
    , _iStepId      :: !(Maybe Text)
    , _iSourceImage :: !(Maybe ToolOutputReference)
    , _iError       :: !(Maybe Status)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Image' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iThumbnail'
--
-- * 'iStepId'
--
-- * 'iSourceImage'
--
-- * 'iError'
image
    :: Image
image =
  Image'
    { _iThumbnail = Nothing
    , _iStepId = Nothing
    , _iSourceImage = Nothing
    , _iError = Nothing
    }


-- | The thumbnail.
iThumbnail :: Lens' Image (Maybe Thumbnail)
iThumbnail
  = lens _iThumbnail (\ s a -> s{_iThumbnail = a})

-- | The step to which the image is attached. Always set.
iStepId :: Lens' Image (Maybe Text)
iStepId = lens _iStepId (\ s a -> s{_iStepId = a})

-- | A reference to the full-size, original image. This is the same as the
-- tool_outputs entry for the image under its Step. Always set.
iSourceImage :: Lens' Image (Maybe ToolOutputReference)
iSourceImage
  = lens _iSourceImage (\ s a -> s{_iSourceImage = a})

-- | An error explaining why the thumbnail could not be rendered.
iError :: Lens' Image (Maybe Status)
iError = lens _iError (\ s a -> s{_iError = a})

instance FromJSON Image where
        parseJSON
          = withObject "Image"
              (\ o ->
                 Image' <$>
                   (o .:? "thumbnail") <*> (o .:? "stepId") <*>
                     (o .:? "sourceImage")
                     <*> (o .:? "error"))

instance ToJSON Image where
        toJSON Image'{..}
          = object
              (catMaybes
                 [("thumbnail" .=) <$> _iThumbnail,
                  ("stepId" .=) <$> _iStepId,
                  ("sourceImage" .=) <$> _iSourceImage,
                  ("error" .=) <$> _iError])

--
-- /See:/ 'inconclusiveDetail' smart constructor.
data InconclusiveDetail =
  InconclusiveDetail'
    { _idInfrastructureFailure :: !(Maybe Bool)
    , _idAbortedByUser         :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InconclusiveDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idInfrastructureFailure'
--
-- * 'idAbortedByUser'
inconclusiveDetail
    :: InconclusiveDetail
inconclusiveDetail =
  InconclusiveDetail'
    {_idInfrastructureFailure = Nothing, _idAbortedByUser = Nothing}


-- | If the test runner could not determine success or failure because the
-- test depends on a component other than the system under test which
-- failed. For example, a mobile test requires provisioning a device where
-- the test executes, and that provisioning can fail.
idInfrastructureFailure :: Lens' InconclusiveDetail (Maybe Bool)
idInfrastructureFailure
  = lens _idInfrastructureFailure
      (\ s a -> s{_idInfrastructureFailure = a})

-- | If the end user aborted the test execution before a pass or fail could
-- be determined. For example, the user pressed ctrl-c which sent a kill
-- signal to the test runner while the test was running.
idAbortedByUser :: Lens' InconclusiveDetail (Maybe Bool)
idAbortedByUser
  = lens _idAbortedByUser
      (\ s a -> s{_idAbortedByUser = a})

instance FromJSON InconclusiveDetail where
        parseJSON
          = withObject "InconclusiveDetail"
              (\ o ->
                 InconclusiveDetail' <$>
                   (o .:? "infrastructureFailure") <*>
                     (o .:? "abortedByUser"))

instance ToJSON InconclusiveDetail where
        toJSON InconclusiveDetail'{..}
          = object
              (catMaybes
                 [("infrastructureFailure" .=) <$>
                    _idInfrastructureFailure,
                  ("abortedByUser" .=) <$> _idAbortedByUser])

--
-- /See:/ 'testCase' smart constructor.
data TestCase =
  TestCase'
    { _tcStatus            :: !(Maybe TestCaseStatus)
    , _tcStartTime         :: !(Maybe Timestamp)
    , _tcTestCaseReference :: !(Maybe TestCaseReference)
    , _tcToolOutputs       :: !(Maybe [ToolOutputReference])
    , _tcStackTraces       :: !(Maybe [StackTrace])
    , _tcTestCaseId        :: !(Maybe Text)
    , _tcEndTime           :: !(Maybe Timestamp)
    , _tcSkippedMessage    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestCase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcStatus'
--
-- * 'tcStartTime'
--
-- * 'tcTestCaseReference'
--
-- * 'tcToolOutputs'
--
-- * 'tcStackTraces'
--
-- * 'tcTestCaseId'
--
-- * 'tcEndTime'
--
-- * 'tcSkippedMessage'
testCase
    :: TestCase
testCase =
  TestCase'
    { _tcStatus = Nothing
    , _tcStartTime = Nothing
    , _tcTestCaseReference = Nothing
    , _tcToolOutputs = Nothing
    , _tcStackTraces = Nothing
    , _tcTestCaseId = Nothing
    , _tcEndTime = Nothing
    , _tcSkippedMessage = Nothing
    }


-- | The status of the test case. Required.
tcStatus :: Lens' TestCase (Maybe TestCaseStatus)
tcStatus = lens _tcStatus (\ s a -> s{_tcStatus = a})

-- | The start time of the test case. Optional.
tcStartTime :: Lens' TestCase (Maybe Timestamp)
tcStartTime
  = lens _tcStartTime (\ s a -> s{_tcStartTime = a})

-- | Test case reference, e.g. name, class name and test suite name.
-- Required.
tcTestCaseReference :: Lens' TestCase (Maybe TestCaseReference)
tcTestCaseReference
  = lens _tcTestCaseReference
      (\ s a -> s{_tcTestCaseReference = a})

-- | References to opaque files of any format output by the tool execution.
tcToolOutputs :: Lens' TestCase [ToolOutputReference]
tcToolOutputs
  = lens _tcToolOutputs
      (\ s a -> s{_tcToolOutputs = a})
      . _Default
      . _Coerce

-- | The stack trace details if the test case failed or encountered an error.
-- The maximum size of the stack traces is 100KiB, beyond which the stack
-- track will be truncated. Zero if the test case passed.
tcStackTraces :: Lens' TestCase [StackTrace]
tcStackTraces
  = lens _tcStackTraces
      (\ s a -> s{_tcStackTraces = a})
      . _Default
      . _Coerce

-- | A unique identifier within a Step for this Test Case.
tcTestCaseId :: Lens' TestCase (Maybe Text)
tcTestCaseId
  = lens _tcTestCaseId (\ s a -> s{_tcTestCaseId = a})

-- | The end time of the test case. Optional.
tcEndTime :: Lens' TestCase (Maybe Timestamp)
tcEndTime
  = lens _tcEndTime (\ s a -> s{_tcEndTime = a})

-- | Why the test case was skipped. Present only for skipped test case
tcSkippedMessage :: Lens' TestCase (Maybe Text)
tcSkippedMessage
  = lens _tcSkippedMessage
      (\ s a -> s{_tcSkippedMessage = a})

instance FromJSON TestCase where
        parseJSON
          = withObject "TestCase"
              (\ o ->
                 TestCase' <$>
                   (o .:? "status") <*> (o .:? "startTime") <*>
                     (o .:? "testCaseReference")
                     <*> (o .:? "toolOutputs" .!= mempty)
                     <*> (o .:? "stackTraces" .!= mempty)
                     <*> (o .:? "testCaseId")
                     <*> (o .:? "endTime")
                     <*> (o .:? "skippedMessage"))

instance ToJSON TestCase where
        toJSON TestCase'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _tcStatus,
                  ("startTime" .=) <$> _tcStartTime,
                  ("testCaseReference" .=) <$> _tcTestCaseReference,
                  ("toolOutputs" .=) <$> _tcToolOutputs,
                  ("stackTraces" .=) <$> _tcStackTraces,
                  ("testCaseId" .=) <$> _tcTestCaseId,
                  ("endTime" .=) <$> _tcEndTime,
                  ("skippedMessage" .=) <$> _tcSkippedMessage])

--
-- /See:/ 'graphicsStatsBucket' smart constructor.
data GraphicsStatsBucket =
  GraphicsStatsBucket'
    { _gsbRenderMillis :: !(Maybe (Textual Int64))
    , _gsbFrameCount   :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GraphicsStatsBucket' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsbRenderMillis'
--
-- * 'gsbFrameCount'
graphicsStatsBucket
    :: GraphicsStatsBucket
graphicsStatsBucket =
  GraphicsStatsBucket' {_gsbRenderMillis = Nothing, _gsbFrameCount = Nothing}


-- | Lower bound of render time in milliseconds.
gsbRenderMillis :: Lens' GraphicsStatsBucket (Maybe Int64)
gsbRenderMillis
  = lens _gsbRenderMillis
      (\ s a -> s{_gsbRenderMillis = a})
      . mapping _Coerce

-- | Number of frames in the bucket.
gsbFrameCount :: Lens' GraphicsStatsBucket (Maybe Int64)
gsbFrameCount
  = lens _gsbFrameCount
      (\ s a -> s{_gsbFrameCount = a})
      . mapping _Coerce

instance FromJSON GraphicsStatsBucket where
        parseJSON
          = withObject "GraphicsStatsBucket"
              (\ o ->
                 GraphicsStatsBucket' <$>
                   (o .:? "renderMillis") <*> (o .:? "frameCount"))

instance ToJSON GraphicsStatsBucket where
        toJSON GraphicsStatsBucket'{..}
          = object
              (catMaybes
                 [("renderMillis" .=) <$> _gsbRenderMillis,
                  ("frameCount" .=) <$> _gsbFrameCount])

-- | A History represents a sorted list of Executions ordered by the
-- start_timestamp_millis field (descending). It can be used to group all
-- the Executions of a continuous build. Note that the ordering only
-- operates on one-dimension. If a repository has multiple branches, it
-- means that multiple histories will need to be used in order to order
-- Executions per branch.
--
-- /See:/ 'history' smart constructor.
data History =
  History'
    { _hName        :: !(Maybe Text)
    , _hHistoryId   :: !(Maybe Text)
    , _hDisplayName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'History' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hName'
--
-- * 'hHistoryId'
--
-- * 'hDisplayName'
history
    :: History
history =
  History' {_hName = Nothing, _hHistoryId = Nothing, _hDisplayName = Nothing}


-- | A name to uniquely identify a history within a project. Maximum of 200
-- characters. - In response always set - In create request: always set
hName :: Lens' History (Maybe Text)
hName = lens _hName (\ s a -> s{_hName = a})

-- | A unique identifier within a project for this History. Returns
-- INVALID_ARGUMENT if this field is set or overwritten by the caller. - In
-- response always set - In create request: never set
hHistoryId :: Lens' History (Maybe Text)
hHistoryId
  = lens _hHistoryId (\ s a -> s{_hHistoryId = a})

-- | A short human-readable (plain text) name to display in the UI. Maximum
-- of 100 characters. - In response: present if set during create. - In
-- create request: optional
hDisplayName :: Lens' History (Maybe Text)
hDisplayName
  = lens _hDisplayName (\ s a -> s{_hDisplayName = a})

instance FromJSON History where
        parseJSON
          = withObject "History"
              (\ o ->
                 History' <$>
                   (o .:? "name") <*> (o .:? "historyId") <*>
                     (o .:? "displayName"))

instance ToJSON History where
        toJSON History'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _hName,
                  ("historyId" .=) <$> _hHistoryId,
                  ("displayName" .=) <$> _hDisplayName])

-- | The request must provide up to a maximum of 5000 samples to be created;
-- a larger sample size will cause an INVALID_ARGUMENT error
--
-- /See:/ 'batchCreatePerfSamplesRequest' smart constructor.
newtype BatchCreatePerfSamplesRequest =
  BatchCreatePerfSamplesRequest'
    { _bcpsrPerfSamples :: Maybe [PerfSample]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchCreatePerfSamplesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcpsrPerfSamples'
batchCreatePerfSamplesRequest
    :: BatchCreatePerfSamplesRequest
batchCreatePerfSamplesRequest =
  BatchCreatePerfSamplesRequest' {_bcpsrPerfSamples = Nothing}


-- | The set of PerfSamples to create should not include existing timestamps
bcpsrPerfSamples :: Lens' BatchCreatePerfSamplesRequest [PerfSample]
bcpsrPerfSamples
  = lens _bcpsrPerfSamples
      (\ s a -> s{_bcpsrPerfSamples = a})
      . _Default
      . _Coerce

instance FromJSON BatchCreatePerfSamplesRequest where
        parseJSON
          = withObject "BatchCreatePerfSamplesRequest"
              (\ o ->
                 BatchCreatePerfSamplesRequest' <$>
                   (o .:? "perfSamples" .!= mempty))

instance ToJSON BatchCreatePerfSamplesRequest where
        toJSON BatchCreatePerfSamplesRequest'{..}
          = object
              (catMaybes
                 [("perfSamples" .=) <$> _bcpsrPerfSamples])

--
-- /See:/ 'listPerfSampleSeriesResponse' smart constructor.
newtype ListPerfSampleSeriesResponse =
  ListPerfSampleSeriesResponse'
    { _lpssrPerfSampleSeries :: Maybe [PerfSampleSeries]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListPerfSampleSeriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpssrPerfSampleSeries'
listPerfSampleSeriesResponse
    :: ListPerfSampleSeriesResponse
listPerfSampleSeriesResponse =
  ListPerfSampleSeriesResponse' {_lpssrPerfSampleSeries = Nothing}


-- | The resulting PerfSampleSeries sorted by id
lpssrPerfSampleSeries :: Lens' ListPerfSampleSeriesResponse [PerfSampleSeries]
lpssrPerfSampleSeries
  = lens _lpssrPerfSampleSeries
      (\ s a -> s{_lpssrPerfSampleSeries = a})
      . _Default
      . _Coerce

instance FromJSON ListPerfSampleSeriesResponse where
        parseJSON
          = withObject "ListPerfSampleSeriesResponse"
              (\ o ->
                 ListPerfSampleSeriesResponse' <$>
                   (o .:? "perfSampleSeries" .!= mempty))

instance ToJSON ListPerfSampleSeriesResponse where
        toJSON ListPerfSampleSeriesResponse'{..}
          = object
              (catMaybes
                 [("perfSampleSeries" .=) <$> _lpssrPerfSampleSeries])

--
-- /See:/ 'listPerfSamplesResponse' smart constructor.
data ListPerfSamplesResponse =
  ListPerfSamplesResponse'
    { _lpsrPerfSamples   :: !(Maybe [PerfSample])
    , _lpsrNextPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListPerfSamplesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpsrPerfSamples'
--
-- * 'lpsrNextPageToken'
listPerfSamplesResponse
    :: ListPerfSamplesResponse
listPerfSamplesResponse =
  ListPerfSamplesResponse'
    {_lpsrPerfSamples = Nothing, _lpsrNextPageToken = Nothing}


lpsrPerfSamples :: Lens' ListPerfSamplesResponse [PerfSample]
lpsrPerfSamples
  = lens _lpsrPerfSamples
      (\ s a -> s{_lpsrPerfSamples = a})
      . _Default
      . _Coerce

-- | Optional, returned if result size exceeds the page size specified in the
-- request (or the default page size, 500, if unspecified). It indicates
-- the last sample timestamp to be used as page_token in subsequent request
lpsrNextPageToken :: Lens' ListPerfSamplesResponse (Maybe Text)
lpsrNextPageToken
  = lens _lpsrNextPageToken
      (\ s a -> s{_lpsrNextPageToken = a})

instance FromJSON ListPerfSamplesResponse where
        parseJSON
          = withObject "ListPerfSamplesResponse"
              (\ o ->
                 ListPerfSamplesResponse' <$>
                   (o .:? "perfSamples" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON ListPerfSamplesResponse where
        toJSON ListPerfSamplesResponse'{..}
          = object
              (catMaybes
                 [("perfSamples" .=) <$> _lpsrPerfSamples,
                  ("nextPageToken" .=) <$> _lpsrNextPageToken])

-- | An Android mobile test specification.
--
-- /See:/ 'androidTest' smart constructor.
data AndroidTest =
  AndroidTest'
    { _atAndroidAppInfo             :: !(Maybe AndroidAppInfo)
    , _atTestTimeout                :: !(Maybe Duration)
    , _atAndroidRoboTest            :: !(Maybe AndroidRoboTest)
    , _atAndroidInstrumentationTest :: !(Maybe AndroidInstrumentationTest)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AndroidTest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atAndroidAppInfo'
--
-- * 'atTestTimeout'
--
-- * 'atAndroidRoboTest'
--
-- * 'atAndroidInstrumentationTest'
androidTest
    :: AndroidTest
androidTest =
  AndroidTest'
    { _atAndroidAppInfo = Nothing
    , _atTestTimeout = Nothing
    , _atAndroidRoboTest = Nothing
    , _atAndroidInstrumentationTest = Nothing
    }


-- | Information about the application under test.
atAndroidAppInfo :: Lens' AndroidTest (Maybe AndroidAppInfo)
atAndroidAppInfo
  = lens _atAndroidAppInfo
      (\ s a -> s{_atAndroidAppInfo = a})

-- | Max time a test is allowed to run before it is automatically cancelled.
atTestTimeout :: Lens' AndroidTest (Maybe Duration)
atTestTimeout
  = lens _atTestTimeout
      (\ s a -> s{_atTestTimeout = a})

-- | An Android robo test.
atAndroidRoboTest :: Lens' AndroidTest (Maybe AndroidRoboTest)
atAndroidRoboTest
  = lens _atAndroidRoboTest
      (\ s a -> s{_atAndroidRoboTest = a})

-- | An Android instrumentation test.
atAndroidInstrumentationTest :: Lens' AndroidTest (Maybe AndroidInstrumentationTest)
atAndroidInstrumentationTest
  = lens _atAndroidInstrumentationTest
      (\ s a -> s{_atAndroidInstrumentationTest = a})

instance FromJSON AndroidTest where
        parseJSON
          = withObject "AndroidTest"
              (\ o ->
                 AndroidTest' <$>
                   (o .:? "androidAppInfo") <*> (o .:? "testTimeout")
                     <*> (o .:? "androidRoboTest")
                     <*> (o .:? "androidInstrumentationTest"))

instance ToJSON AndroidTest where
        toJSON AndroidTest'{..}
          = object
              (catMaybes
                 [("androidAppInfo" .=) <$> _atAndroidAppInfo,
                  ("testTimeout" .=) <$> _atTestTimeout,
                  ("androidRoboTest" .=) <$> _atAndroidRoboTest,
                  ("androidInstrumentationTest" .=) <$>
                    _atAndroidInstrumentationTest])

-- | A test of an android application that explores the application on a
-- virtual or physical Android device, finding culprits and crashes as it
-- goes.
--
-- /See:/ 'androidRoboTest' smart constructor.
data AndroidRoboTest =
  AndroidRoboTest'
    { _artBootstrapRunnerClass :: !(Maybe Text)
    , _artAppInitialActivity   :: !(Maybe Text)
    , _artMaxSteps             :: !(Maybe (Textual Int32))
    , _artBootstrapPackageId   :: !(Maybe Text)
    , _artMaxDepth             :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AndroidRoboTest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'artBootstrapRunnerClass'
--
-- * 'artAppInitialActivity'
--
-- * 'artMaxSteps'
--
-- * 'artBootstrapPackageId'
--
-- * 'artMaxDepth'
androidRoboTest
    :: AndroidRoboTest
androidRoboTest =
  AndroidRoboTest'
    { _artBootstrapRunnerClass = Nothing
    , _artAppInitialActivity = Nothing
    , _artMaxSteps = Nothing
    , _artBootstrapPackageId = Nothing
    , _artMaxDepth = Nothing
    }


-- | The runner class for the bootstrap. Optional
artBootstrapRunnerClass :: Lens' AndroidRoboTest (Maybe Text)
artBootstrapRunnerClass
  = lens _artBootstrapRunnerClass
      (\ s a -> s{_artBootstrapRunnerClass = a})

-- | The initial activity that should be used to start the app. Optional
artAppInitialActivity :: Lens' AndroidRoboTest (Maybe Text)
artAppInitialActivity
  = lens _artAppInitialActivity
      (\ s a -> s{_artAppInitialActivity = a})

-- | The max number of steps\/actions Robo can execute. Default is no limit
-- (0). Optional
artMaxSteps :: Lens' AndroidRoboTest (Maybe Int32)
artMaxSteps
  = lens _artMaxSteps (\ s a -> s{_artMaxSteps = a}) .
      mapping _Coerce

-- | The java package for the bootstrap. Optional
artBootstrapPackageId :: Lens' AndroidRoboTest (Maybe Text)
artBootstrapPackageId
  = lens _artBootstrapPackageId
      (\ s a -> s{_artBootstrapPackageId = a})

-- | The max depth of the traversal stack Robo can explore. Optional
artMaxDepth :: Lens' AndroidRoboTest (Maybe Int32)
artMaxDepth
  = lens _artMaxDepth (\ s a -> s{_artMaxDepth = a}) .
      mapping _Coerce

instance FromJSON AndroidRoboTest where
        parseJSON
          = withObject "AndroidRoboTest"
              (\ o ->
                 AndroidRoboTest' <$>
                   (o .:? "bootstrapRunnerClass") <*>
                     (o .:? "appInitialActivity")
                     <*> (o .:? "maxSteps")
                     <*> (o .:? "bootstrapPackageId")
                     <*> (o .:? "maxDepth"))

instance ToJSON AndroidRoboTest where
        toJSON AndroidRoboTest'{..}
          = object
              (catMaybes
                 [("bootstrapRunnerClass" .=) <$>
                    _artBootstrapRunnerClass,
                  ("appInitialActivity" .=) <$> _artAppInitialActivity,
                  ("maxSteps" .=) <$> _artMaxSteps,
                  ("bootstrapPackageId" .=) <$> _artBootstrapPackageId,
                  ("maxDepth" .=) <$> _artMaxDepth])

-- | A reference to a file.
--
-- /See:/ 'fileReference' smart constructor.
newtype FileReference =
  FileReference'
    { _frFileURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FileReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frFileURI'
fileReference
    :: FileReference
fileReference = FileReference' {_frFileURI = Nothing}


-- | The URI of a file stored in Google Cloud Storage. For example:
-- http:\/\/storage.googleapis.com\/mybucket\/path\/to\/test.xml or in
-- gsutil format: gs:\/\/mybucket\/path\/to\/test.xml with version-specific
-- info, gs:\/\/mybucket\/path\/to\/test.xml#1360383693690000 An
-- INVALID_ARGUMENT error will be returned if the URI format is not
-- supported. - In response: always set - In create\/update request: always
-- set
frFileURI :: Lens' FileReference (Maybe Text)
frFileURI
  = lens _frFileURI (\ s a -> s{_frFileURI = a})

instance FromJSON FileReference where
        parseJSON
          = withObject "FileReference"
              (\ o -> FileReference' <$> (o .:? "fileUri"))

instance ToJSON FileReference where
        toJSON FileReference'{..}
          = object (catMaybes [("fileUri" .=) <$> _frFileURI])

--
-- /See:/ 'cpuInfo' smart constructor.
data CPUInfo =
  CPUInfo'
    { _ciNumberOfCores :: !(Maybe (Textual Int32))
    , _ciCPUProcessor  :: !(Maybe Text)
    , _ciCPUSpeedInGhz :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CPUInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciNumberOfCores'
--
-- * 'ciCPUProcessor'
--
-- * 'ciCPUSpeedInGhz'
cpuInfo
    :: CPUInfo
cpuInfo =
  CPUInfo'
    { _ciNumberOfCores = Nothing
    , _ciCPUProcessor = Nothing
    , _ciCPUSpeedInGhz = Nothing
    }


-- | the number of CPU cores
ciNumberOfCores :: Lens' CPUInfo (Maybe Int32)
ciNumberOfCores
  = lens _ciNumberOfCores
      (\ s a -> s{_ciNumberOfCores = a})
      . mapping _Coerce

-- | description of the device processor ie \'1.8 GHz hexa core 64-bit
-- ARMv8-A\'
ciCPUProcessor :: Lens' CPUInfo (Maybe Text)
ciCPUProcessor
  = lens _ciCPUProcessor
      (\ s a -> s{_ciCPUProcessor = a})

-- | the CPU clock speed in GHz
ciCPUSpeedInGhz :: Lens' CPUInfo (Maybe Double)
ciCPUSpeedInGhz
  = lens _ciCPUSpeedInGhz
      (\ s a -> s{_ciCPUSpeedInGhz = a})
      . mapping _Coerce

instance FromJSON CPUInfo where
        parseJSON
          = withObject "CPUInfo"
              (\ o ->
                 CPUInfo' <$>
                   (o .:? "numberOfCores") <*> (o .:? "cpuProcessor")
                     <*> (o .:? "cpuSpeedInGhz"))

instance ToJSON CPUInfo where
        toJSON CPUInfo'{..}
          = object
              (catMaybes
                 [("numberOfCores" .=) <$> _ciNumberOfCores,
                  ("cpuProcessor" .=) <$> _ciCPUProcessor,
                  ("cpuSpeedInGhz" .=) <$> _ciCPUSpeedInGhz])

--
-- /See:/ 'listExecutionsResponse' smart constructor.
data ListExecutionsResponse =
  ListExecutionsResponse'
    { _lerNextPageToken :: !(Maybe Text)
    , _lerExecutions    :: !(Maybe [Execution])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListExecutionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lerNextPageToken'
--
-- * 'lerExecutions'
listExecutionsResponse
    :: ListExecutionsResponse
listExecutionsResponse =
  ListExecutionsResponse'
    {_lerNextPageToken = Nothing, _lerExecutions = Nothing}


-- | A continuation token to resume the query at the next item. Will only be
-- set if there are more Executions to fetch.
lerNextPageToken :: Lens' ListExecutionsResponse (Maybe Text)
lerNextPageToken
  = lens _lerNextPageToken
      (\ s a -> s{_lerNextPageToken = a})

-- | Executions. Always set.
lerExecutions :: Lens' ListExecutionsResponse [Execution]
lerExecutions
  = lens _lerExecutions
      (\ s a -> s{_lerExecutions = a})
      . _Default
      . _Coerce

instance FromJSON ListExecutionsResponse where
        parseJSON
          = withObject "ListExecutionsResponse"
              (\ o ->
                 ListExecutionsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "executions" .!= mempty))

instance ToJSON ListExecutionsResponse where
        toJSON ListExecutionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lerNextPageToken,
                  ("executions" .=) <$> _lerExecutions])

-- | Response message for StepService.List.
--
-- /See:/ 'listStepsResponse' smart constructor.
data ListStepsResponse =
  ListStepsResponse'
    { _lsrNextPageToken :: !(Maybe Text)
    , _lsrSteps         :: !(Maybe [Step])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListStepsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrNextPageToken'
--
-- * 'lsrSteps'
listStepsResponse
    :: ListStepsResponse
listStepsResponse =
  ListStepsResponse' {_lsrNextPageToken = Nothing, _lsrSteps = Nothing}


-- | A continuation token to resume the query at the next item. If set,
-- indicates that there are more steps to read, by calling list again with
-- this value in the page_token field.
lsrNextPageToken :: Lens' ListStepsResponse (Maybe Text)
lsrNextPageToken
  = lens _lsrNextPageToken
      (\ s a -> s{_lsrNextPageToken = a})

-- | Steps.
lsrSteps :: Lens' ListStepsResponse [Step]
lsrSteps
  = lens _lsrSteps (\ s a -> s{_lsrSteps = a}) .
      _Default
      . _Coerce

instance FromJSON ListStepsResponse where
        parseJSON
          = withObject "ListStepsResponse"
              (\ o ->
                 ListStepsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "steps" .!= mempty))

instance ToJSON ListStepsResponse where
        toJSON ListStepsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsrNextPageToken,
                  ("steps" .=) <$> _lsrSteps])

-- | Per-project settings for the Tool Results service.
--
-- /See:/ 'projectSettings' smart constructor.
data ProjectSettings =
  ProjectSettings'
    { _psName          :: !(Maybe Text)
    , _psDefaultBucket :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psName'
--
-- * 'psDefaultBucket'
projectSettings
    :: ProjectSettings
projectSettings =
  ProjectSettings' {_psName = Nothing, _psDefaultBucket = Nothing}


-- | The name of the project\'s settings. Always of the form:
-- projects\/{project-id}\/settings In update request: never set In
-- response: always set
psName :: Lens' ProjectSettings (Maybe Text)
psName = lens _psName (\ s a -> s{_psName = a})

-- | The name of the Google Cloud Storage bucket to which results are
-- written. By default, this is unset. In update request: optional In
-- response: optional
psDefaultBucket :: Lens' ProjectSettings (Maybe Text)
psDefaultBucket
  = lens _psDefaultBucket
      (\ s a -> s{_psDefaultBucket = a})

instance FromJSON ProjectSettings where
        parseJSON
          = withObject "ProjectSettings"
              (\ o ->
                 ProjectSettings' <$>
                   (o .:? "name") <*> (o .:? "defaultBucket"))

instance ToJSON ProjectSettings where
        toJSON ProjectSettings'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _psName,
                  ("defaultBucket" .=) <$> _psDefaultBucket])

-- | Generic tool step to be used for binaries we do not explicitly support.
-- For example: running cp to copy artifacts from one location to another.
--
-- /See:/ 'toolExecutionStep' smart constructor.
newtype ToolExecutionStep =
  ToolExecutionStep'
    { _tesToolExecution :: Maybe ToolExecution
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ToolExecutionStep' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tesToolExecution'
toolExecutionStep
    :: ToolExecutionStep
toolExecutionStep = ToolExecutionStep' {_tesToolExecution = Nothing}


-- | A Tool execution. - In response: present if set by create\/update
-- request - In create\/update request: optional
tesToolExecution :: Lens' ToolExecutionStep (Maybe ToolExecution)
tesToolExecution
  = lens _tesToolExecution
      (\ s a -> s{_tesToolExecution = a})

instance FromJSON ToolExecutionStep where
        parseJSON
          = withObject "ToolExecutionStep"
              (\ o ->
                 ToolExecutionStep' <$> (o .:? "toolExecution"))

instance ToJSON ToolExecutionStep where
        toJSON ToolExecutionStep'{..}
          = object
              (catMaybes
                 [("toolExecution" .=) <$> _tesToolExecution])

--
-- /See:/ 'stepLabelsEntry' smart constructor.
data StepLabelsEntry =
  StepLabelsEntry'
    { _sleValue :: !(Maybe Text)
    , _sleKey   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StepLabelsEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sleValue'
--
-- * 'sleKey'
stepLabelsEntry
    :: StepLabelsEntry
stepLabelsEntry = StepLabelsEntry' {_sleValue = Nothing, _sleKey = Nothing}


sleValue :: Lens' StepLabelsEntry (Maybe Text)
sleValue = lens _sleValue (\ s a -> s{_sleValue = a})

sleKey :: Lens' StepLabelsEntry (Maybe Text)
sleKey = lens _sleKey (\ s a -> s{_sleKey = a})

instance FromJSON StepLabelsEntry where
        parseJSON
          = withObject "StepLabelsEntry"
              (\ o ->
                 StepLabelsEntry' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON StepLabelsEntry where
        toJSON StepLabelsEntry'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _sleValue, ("key" .=) <$> _sleKey])

-- | A step that represents running tests. It accepts ant-junit xml files
-- which will be parsed into structured test results by the service. Xml
-- file paths are updated in order to append more files, however they
-- can\'t be deleted. Users can also add test results manually by using the
-- test_result field.
--
-- /See:/ 'testExecutionStep' smart constructor.
data TestExecutionStep =
  TestExecutionStep'
    { _tTestIssues         :: !(Maybe [TestIssue])
    , _tToolExecution      :: !(Maybe ToolExecution)
    , _tTestSuiteOverviews :: !(Maybe [TestSuiteOverview])
    , _tTestTiming         :: !(Maybe TestTiming)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestExecutionStep' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tTestIssues'
--
-- * 'tToolExecution'
--
-- * 'tTestSuiteOverviews'
--
-- * 'tTestTiming'
testExecutionStep
    :: TestExecutionStep
testExecutionStep =
  TestExecutionStep'
    { _tTestIssues = Nothing
    , _tToolExecution = Nothing
    , _tTestSuiteOverviews = Nothing
    , _tTestTiming = Nothing
    }


-- | Issues observed during the test execution. For example, if the mobile
-- app under test crashed during the test, the error message and the stack
-- trace content can be recorded here to assist debugging. - In response:
-- present if set by create or update - In create\/update request: optional
tTestIssues :: Lens' TestExecutionStep [TestIssue]
tTestIssues
  = lens _tTestIssues (\ s a -> s{_tTestIssues = a}) .
      _Default
      . _Coerce

-- | Represents the execution of the test runner. The exit code of this tool
-- will be used to determine if the test passed. - In response: always set
-- - In create\/update request: optional
tToolExecution :: Lens' TestExecutionStep (Maybe ToolExecution)
tToolExecution
  = lens _tToolExecution
      (\ s a -> s{_tToolExecution = a})

-- | List of test suite overview contents. This could be parsed from xUnit
-- XML log by server, or uploaded directly by user. This references should
-- only be called when test suites are fully parsed or uploaded. The
-- maximum allowed number of test suite overviews per step is 1000. - In
-- response: always set - In create request: optional - In update request:
-- never (use publishXunitXmlFiles custom method instead)
tTestSuiteOverviews :: Lens' TestExecutionStep [TestSuiteOverview]
tTestSuiteOverviews
  = lens _tTestSuiteOverviews
      (\ s a -> s{_tTestSuiteOverviews = a})
      . _Default
      . _Coerce

-- | The timing break down of the test execution. - In response: present if
-- set by create or update - In create\/update request: optional
tTestTiming :: Lens' TestExecutionStep (Maybe TestTiming)
tTestTiming
  = lens _tTestTiming (\ s a -> s{_tTestTiming = a})

instance FromJSON TestExecutionStep where
        parseJSON
          = withObject "TestExecutionStep"
              (\ o ->
                 TestExecutionStep' <$>
                   (o .:? "testIssues" .!= mempty) <*>
                     (o .:? "toolExecution")
                     <*> (o .:? "testSuiteOverviews" .!= mempty)
                     <*> (o .:? "testTiming"))

instance ToJSON TestExecutionStep where
        toJSON TestExecutionStep'{..}
          = object
              (catMaybes
                 [("testIssues" .=) <$> _tTestIssues,
                  ("toolExecution" .=) <$> _tToolExecution,
                  ("testSuiteOverviews" .=) <$> _tTestSuiteOverviews,
                  ("testTiming" .=) <$> _tTestTiming])

-- | A reference to a test case. Test case references are canonically ordered
-- lexicographically by these three factors: * First, by test_suite_name. *
-- Second, by class_name. * Third, by name.
--
-- /See:/ 'testCaseReference' smart constructor.
data TestCaseReference =
  TestCaseReference'
    { _tcrTestSuiteName :: !(Maybe Text)
    , _tcrName          :: !(Maybe Text)
    , _tcrClassName     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestCaseReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcrTestSuiteName'
--
-- * 'tcrName'
--
-- * 'tcrClassName'
testCaseReference
    :: TestCaseReference
testCaseReference =
  TestCaseReference'
    {_tcrTestSuiteName = Nothing, _tcrName = Nothing, _tcrClassName = Nothing}


-- | The name of the test suite to which this test case belongs.
tcrTestSuiteName :: Lens' TestCaseReference (Maybe Text)
tcrTestSuiteName
  = lens _tcrTestSuiteName
      (\ s a -> s{_tcrTestSuiteName = a})

-- | The name of the test case. Required.
tcrName :: Lens' TestCaseReference (Maybe Text)
tcrName = lens _tcrName (\ s a -> s{_tcrName = a})

-- | The name of the class.
tcrClassName :: Lens' TestCaseReference (Maybe Text)
tcrClassName
  = lens _tcrClassName (\ s a -> s{_tcrClassName = a})

instance FromJSON TestCaseReference where
        parseJSON
          = withObject "TestCaseReference"
              (\ o ->
                 TestCaseReference' <$>
                   (o .:? "testSuiteName") <*> (o .:? "name") <*>
                     (o .:? "className"))

instance ToJSON TestCaseReference where
        toJSON TestCaseReference'{..}
          = object
              (catMaybes
                 [("testSuiteName" .=) <$> _tcrTestSuiteName,
                  ("name" .=) <$> _tcrName,
                  ("className" .=) <$> _tcrClassName])

--
-- /See:/ 'failureDetail' smart constructor.
data FailureDetail =
  FailureDetail'
    { _fdCrashed          :: !(Maybe Bool)
    , _fdNotInstalled     :: !(Maybe Bool)
    , _fdTimedOut         :: !(Maybe Bool)
    , _fdOtherNATiveCrash :: !(Maybe Bool)
    , _fdUnableToCrawl    :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FailureDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fdCrashed'
--
-- * 'fdNotInstalled'
--
-- * 'fdTimedOut'
--
-- * 'fdOtherNATiveCrash'
--
-- * 'fdUnableToCrawl'
failureDetail
    :: FailureDetail
failureDetail =
  FailureDetail'
    { _fdCrashed = Nothing
    , _fdNotInstalled = Nothing
    , _fdTimedOut = Nothing
    , _fdOtherNATiveCrash = Nothing
    , _fdUnableToCrawl = Nothing
    }


-- | If the failure was severe because the system (app) under test crashed.
fdCrashed :: Lens' FailureDetail (Maybe Bool)
fdCrashed
  = lens _fdCrashed (\ s a -> s{_fdCrashed = a})

-- | If an app is not installed and thus no test can be run with the app.
-- This might be caused by trying to run a test on an unsupported platform.
fdNotInstalled :: Lens' FailureDetail (Maybe Bool)
fdNotInstalled
  = lens _fdNotInstalled
      (\ s a -> s{_fdNotInstalled = a})

-- | If the test overran some time limit, and that is why it failed.
fdTimedOut :: Lens' FailureDetail (Maybe Bool)
fdTimedOut
  = lens _fdTimedOut (\ s a -> s{_fdTimedOut = a})

-- | If a native process (including any other than the app) crashed.
fdOtherNATiveCrash :: Lens' FailureDetail (Maybe Bool)
fdOtherNATiveCrash
  = lens _fdOtherNATiveCrash
      (\ s a -> s{_fdOtherNATiveCrash = a})

-- | If the robo was unable to crawl the app; perhaps because the app did not
-- start.
fdUnableToCrawl :: Lens' FailureDetail (Maybe Bool)
fdUnableToCrawl
  = lens _fdUnableToCrawl
      (\ s a -> s{_fdUnableToCrawl = a})

instance FromJSON FailureDetail where
        parseJSON
          = withObject "FailureDetail"
              (\ o ->
                 FailureDetail' <$>
                   (o .:? "crashed") <*> (o .:? "notInstalled") <*>
                     (o .:? "timedOut")
                     <*> (o .:? "otherNativeCrash")
                     <*> (o .:? "unableToCrawl"))

instance ToJSON FailureDetail where
        toJSON FailureDetail'{..}
          = object
              (catMaybes
                 [("crashed" .=) <$> _fdCrashed,
                  ("notInstalled" .=) <$> _fdNotInstalled,
                  ("timedOut" .=) <$> _fdTimedOut,
                  ("otherNativeCrash" .=) <$> _fdOtherNATiveCrash,
                  ("unableToCrawl" .=) <$> _fdUnableToCrawl])

-- | Encapsulates performance environment info
--
-- /See:/ 'perfEnvironment' smart constructor.
data PerfEnvironment =
  PerfEnvironment'
    { _peMemoryInfo :: !(Maybe MemoryInfo)
    , _peCPUInfo    :: !(Maybe CPUInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PerfEnvironment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'peMemoryInfo'
--
-- * 'peCPUInfo'
perfEnvironment
    :: PerfEnvironment
perfEnvironment =
  PerfEnvironment' {_peMemoryInfo = Nothing, _peCPUInfo = Nothing}


-- | Memory related environment info
peMemoryInfo :: Lens' PerfEnvironment (Maybe MemoryInfo)
peMemoryInfo
  = lens _peMemoryInfo (\ s a -> s{_peMemoryInfo = a})

-- | CPU related environment info
peCPUInfo :: Lens' PerfEnvironment (Maybe CPUInfo)
peCPUInfo
  = lens _peCPUInfo (\ s a -> s{_peCPUInfo = a})

instance FromJSON PerfEnvironment where
        parseJSON
          = withObject "PerfEnvironment"
              (\ o ->
                 PerfEnvironment' <$>
                   (o .:? "memoryInfo") <*> (o .:? "cpuInfo"))

instance ToJSON PerfEnvironment where
        toJSON PerfEnvironment'{..}
          = object
              (catMaybes
                 [("memoryInfo" .=) <$> _peMemoryInfo,
                  ("cpuInfo" .=) <$> _peCPUInfo])

--
-- /See:/ 'listScreenshotClustersResponse' smart constructor.
newtype ListScreenshotClustersResponse =
  ListScreenshotClustersResponse'
    { _lscrClusters :: Maybe [ScreenshotCluster]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListScreenshotClustersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lscrClusters'
listScreenshotClustersResponse
    :: ListScreenshotClustersResponse
listScreenshotClustersResponse =
  ListScreenshotClustersResponse' {_lscrClusters = Nothing}


-- | The set of clusters associated with an execution Always set
lscrClusters :: Lens' ListScreenshotClustersResponse [ScreenshotCluster]
lscrClusters
  = lens _lscrClusters (\ s a -> s{_lscrClusters = a})
      . _Default
      . _Coerce

instance FromJSON ListScreenshotClustersResponse
         where
        parseJSON
          = withObject "ListScreenshotClustersResponse"
              (\ o ->
                 ListScreenshotClustersResponse' <$>
                   (o .:? "clusters" .!= mempty))

instance ToJSON ListScreenshotClustersResponse where
        toJSON ListScreenshotClustersResponse'{..}
          = object
              (catMaybes [("clusters" .=) <$> _lscrClusters])

--
-- /See:/ 'appStartTime' smart constructor.
data AppStartTime =
  AppStartTime'
    { _astInitialDisplayTime :: !(Maybe Duration)
    , _astFullyDrawnTime     :: !(Maybe Duration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppStartTime' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'astInitialDisplayTime'
--
-- * 'astFullyDrawnTime'
appStartTime
    :: AppStartTime
appStartTime =
  AppStartTime' {_astInitialDisplayTime = Nothing, _astFullyDrawnTime = Nothing}


-- | The time from app start to the first displayed activity being drawn, as
-- reported in Logcat. See
-- https:\/\/developer.android.com\/topic\/performance\/launch-time.html#time-initial
astInitialDisplayTime :: Lens' AppStartTime (Maybe Duration)
astInitialDisplayTime
  = lens _astInitialDisplayTime
      (\ s a -> s{_astInitialDisplayTime = a})

-- | Optional. The time from app start to reaching the developer-reported
-- \"fully drawn\" time. This is only stored if the app includes a call to
-- Activity.reportFullyDrawn(). See
-- https:\/\/developer.android.com\/topic\/performance\/launch-time.html#time-full
astFullyDrawnTime :: Lens' AppStartTime (Maybe Duration)
astFullyDrawnTime
  = lens _astFullyDrawnTime
      (\ s a -> s{_astFullyDrawnTime = a})

instance FromJSON AppStartTime where
        parseJSON
          = withObject "AppStartTime"
              (\ o ->
                 AppStartTime' <$>
                   (o .:? "initialDisplayTime") <*>
                     (o .:? "fullyDrawnTime"))

instance ToJSON AppStartTime where
        toJSON AppStartTime'{..}
          = object
              (catMaybes
                 [("initialDisplayTime" .=) <$>
                    _astInitialDisplayTime,
                  ("fullyDrawnTime" .=) <$> _astFullyDrawnTime])

-- | Graphics statistics for the App. The information is collected from \'adb
-- shell dumpsys graphicsstats\'. For more info see:
-- https:\/\/developer.android.com\/training\/testing\/performance.html
-- Statistics will only be present for API 23+.
--
-- /See:/ 'graphicsStats' smart constructor.
data GraphicsStats =
  GraphicsStats'
    { _gsSlowDrawCount         :: !(Maybe (Textual Int64))
    , _gsTotalFrames           :: !(Maybe (Textual Int64))
    , _gsSlowBitmapUploadCount :: !(Maybe (Textual Int64))
    , _gsMissedVsyncCount      :: !(Maybe (Textual Int64))
    , _gsP95Millis             :: !(Maybe (Textual Int64))
    , _gsBuckets               :: !(Maybe [GraphicsStatsBucket])
    , _gsP90Millis             :: !(Maybe (Textual Int64))
    , _gsP50Millis             :: !(Maybe (Textual Int64))
    , _gsHighInputLatencyCount :: !(Maybe (Textual Int64))
    , _gsP99Millis             :: !(Maybe (Textual Int64))
    , _gsSlowUiThreadCount     :: !(Maybe (Textual Int64))
    , _gsJankyFrames           :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GraphicsStats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsSlowDrawCount'
--
-- * 'gsTotalFrames'
--
-- * 'gsSlowBitmapUploadCount'
--
-- * 'gsMissedVsyncCount'
--
-- * 'gsP95Millis'
--
-- * 'gsBuckets'
--
-- * 'gsP90Millis'
--
-- * 'gsP50Millis'
--
-- * 'gsHighInputLatencyCount'
--
-- * 'gsP99Millis'
--
-- * 'gsSlowUiThreadCount'
--
-- * 'gsJankyFrames'
graphicsStats
    :: GraphicsStats
graphicsStats =
  GraphicsStats'
    { _gsSlowDrawCount = Nothing
    , _gsTotalFrames = Nothing
    , _gsSlowBitmapUploadCount = Nothing
    , _gsMissedVsyncCount = Nothing
    , _gsP95Millis = Nothing
    , _gsBuckets = Nothing
    , _gsP90Millis = Nothing
    , _gsP50Millis = Nothing
    , _gsHighInputLatencyCount = Nothing
    , _gsP99Millis = Nothing
    , _gsSlowUiThreadCount = Nothing
    , _gsJankyFrames = Nothing
    }


-- | Total \"slow draw\" events.
gsSlowDrawCount :: Lens' GraphicsStats (Maybe Int64)
gsSlowDrawCount
  = lens _gsSlowDrawCount
      (\ s a -> s{_gsSlowDrawCount = a})
      . mapping _Coerce

-- | Total frames rendered by package.
gsTotalFrames :: Lens' GraphicsStats (Maybe Int64)
gsTotalFrames
  = lens _gsTotalFrames
      (\ s a -> s{_gsTotalFrames = a})
      . mapping _Coerce

-- | Total \"slow bitmap upload\" events.
gsSlowBitmapUploadCount :: Lens' GraphicsStats (Maybe Int64)
gsSlowBitmapUploadCount
  = lens _gsSlowBitmapUploadCount
      (\ s a -> s{_gsSlowBitmapUploadCount = a})
      . mapping _Coerce

-- | Total \"missed vsync\" events.
gsMissedVsyncCount :: Lens' GraphicsStats (Maybe Int64)
gsMissedVsyncCount
  = lens _gsMissedVsyncCount
      (\ s a -> s{_gsMissedVsyncCount = a})
      . mapping _Coerce

-- | 95th percentile frame render time in milliseconds.
gsP95Millis :: Lens' GraphicsStats (Maybe Int64)
gsP95Millis
  = lens _gsP95Millis (\ s a -> s{_gsP95Millis = a}) .
      mapping _Coerce

-- | Histogram of frame render times. There should be 154 buckets ranging
-- from [5ms, 6ms) to [4950ms, infinity)
gsBuckets :: Lens' GraphicsStats [GraphicsStatsBucket]
gsBuckets
  = lens _gsBuckets (\ s a -> s{_gsBuckets = a}) .
      _Default
      . _Coerce

-- | 90th percentile frame render time in milliseconds.
gsP90Millis :: Lens' GraphicsStats (Maybe Int64)
gsP90Millis
  = lens _gsP90Millis (\ s a -> s{_gsP90Millis = a}) .
      mapping _Coerce

-- | 50th percentile frame render time in milliseconds.
gsP50Millis :: Lens' GraphicsStats (Maybe Int64)
gsP50Millis
  = lens _gsP50Millis (\ s a -> s{_gsP50Millis = a}) .
      mapping _Coerce

-- | Total \"high input latency\" events.
gsHighInputLatencyCount :: Lens' GraphicsStats (Maybe Int64)
gsHighInputLatencyCount
  = lens _gsHighInputLatencyCount
      (\ s a -> s{_gsHighInputLatencyCount = a})
      . mapping _Coerce

-- | 99th percentile frame render time in milliseconds.
gsP99Millis :: Lens' GraphicsStats (Maybe Int64)
gsP99Millis
  = lens _gsP99Millis (\ s a -> s{_gsP99Millis = a}) .
      mapping _Coerce

-- | Total \"slow UI thread\" events.
gsSlowUiThreadCount :: Lens' GraphicsStats (Maybe Int64)
gsSlowUiThreadCount
  = lens _gsSlowUiThreadCount
      (\ s a -> s{_gsSlowUiThreadCount = a})
      . mapping _Coerce

-- | Total frames with slow render time. Should be \<= total_frames.
gsJankyFrames :: Lens' GraphicsStats (Maybe Int64)
gsJankyFrames
  = lens _gsJankyFrames
      (\ s a -> s{_gsJankyFrames = a})
      . mapping _Coerce

instance FromJSON GraphicsStats where
        parseJSON
          = withObject "GraphicsStats"
              (\ o ->
                 GraphicsStats' <$>
                   (o .:? "slowDrawCount") <*> (o .:? "totalFrames") <*>
                     (o .:? "slowBitmapUploadCount")
                     <*> (o .:? "missedVsyncCount")
                     <*> (o .:? "p95Millis")
                     <*> (o .:? "buckets" .!= mempty)
                     <*> (o .:? "p90Millis")
                     <*> (o .:? "p50Millis")
                     <*> (o .:? "highInputLatencyCount")
                     <*> (o .:? "p99Millis")
                     <*> (o .:? "slowUiThreadCount")
                     <*> (o .:? "jankyFrames"))

instance ToJSON GraphicsStats where
        toJSON GraphicsStats'{..}
          = object
              (catMaybes
                 [("slowDrawCount" .=) <$> _gsSlowDrawCount,
                  ("totalFrames" .=) <$> _gsTotalFrames,
                  ("slowBitmapUploadCount" .=) <$>
                    _gsSlowBitmapUploadCount,
                  ("missedVsyncCount" .=) <$> _gsMissedVsyncCount,
                  ("p95Millis" .=) <$> _gsP95Millis,
                  ("buckets" .=) <$> _gsBuckets,
                  ("p90Millis" .=) <$> _gsP90Millis,
                  ("p50Millis" .=) <$> _gsP50Millis,
                  ("highInputLatencyCount" .=) <$>
                    _gsHighInputLatencyCount,
                  ("p99Millis" .=) <$> _gsP99Millis,
                  ("slowUiThreadCount" .=) <$> _gsSlowUiThreadCount,
                  ("jankyFrames" .=) <$> _gsJankyFrames])

-- | A stacktrace.
--
-- /See:/ 'stackTrace' smart constructor.
newtype StackTrace =
  StackTrace'
    { _stException :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StackTrace' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stException'
stackTrace
    :: StackTrace
stackTrace = StackTrace' {_stException = Nothing}


-- | The stack trace message. Required
stException :: Lens' StackTrace (Maybe Text)
stException
  = lens _stException (\ s a -> s{_stException = a})

instance FromJSON StackTrace where
        parseJSON
          = withObject "StackTrace"
              (\ o -> StackTrace' <$> (o .:? "exception"))

instance ToJSON StackTrace where
        toJSON StackTrace'{..}
          = object
              (catMaybes [("exception" .=) <$> _stException])

--
-- /See:/ 'batchCreatePerfSamplesResponse' smart constructor.
newtype BatchCreatePerfSamplesResponse =
  BatchCreatePerfSamplesResponse'
    { _bPerfSamples :: Maybe [PerfSample]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchCreatePerfSamplesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bPerfSamples'
batchCreatePerfSamplesResponse
    :: BatchCreatePerfSamplesResponse
batchCreatePerfSamplesResponse =
  BatchCreatePerfSamplesResponse' {_bPerfSamples = Nothing}


bPerfSamples :: Lens' BatchCreatePerfSamplesResponse [PerfSample]
bPerfSamples
  = lens _bPerfSamples (\ s a -> s{_bPerfSamples = a})
      . _Default
      . _Coerce

instance FromJSON BatchCreatePerfSamplesResponse
         where
        parseJSON
          = withObject "BatchCreatePerfSamplesResponse"
              (\ o ->
                 BatchCreatePerfSamplesResponse' <$>
                   (o .:? "perfSamples" .!= mempty))

instance ToJSON BatchCreatePerfSamplesResponse where
        toJSON BatchCreatePerfSamplesResponse'{..}
          = object
              (catMaybes [("perfSamples" .=) <$> _bPerfSamples])

-- | An Execution represents a collection of Steps. For instance, it could
-- represent: - a mobile test executed across a range of device
-- configurations - a jenkins job with a build step followed by a test step
-- The maximum size of an execution message is 1 MiB. An Execution can be
-- updated until its state is set to COMPLETE at which point it becomes
-- immutable.
--
-- /See:/ 'execution' smart constructor.
data Execution =
  Execution'
    { _eCreationTime          :: !(Maybe Timestamp)
    , _eExecutionId           :: !(Maybe Text)
    , _eState                 :: !(Maybe ExecutionState)
    , _eCompletionTime        :: !(Maybe Timestamp)
    , _eTestExecutionMatrixId :: !(Maybe Text)
    , _eOutcome               :: !(Maybe Outcome)
    , _eSpecification         :: !(Maybe Specification)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Execution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eCreationTime'
--
-- * 'eExecutionId'
--
-- * 'eState'
--
-- * 'eCompletionTime'
--
-- * 'eTestExecutionMatrixId'
--
-- * 'eOutcome'
--
-- * 'eSpecification'
execution
    :: Execution
execution =
  Execution'
    { _eCreationTime = Nothing
    , _eExecutionId = Nothing
    , _eState = Nothing
    , _eCompletionTime = Nothing
    , _eTestExecutionMatrixId = Nothing
    , _eOutcome = Nothing
    , _eSpecification = Nothing
    }


-- | The time when the Execution was created. This value will be set
-- automatically when CreateExecution is called. - In response: always set
-- - In create\/update request: never set
eCreationTime :: Lens' Execution (Maybe Timestamp)
eCreationTime
  = lens _eCreationTime
      (\ s a -> s{_eCreationTime = a})

-- | A unique identifier within a History for this Execution. Returns
-- INVALID_ARGUMENT if this field is set or overwritten by the caller. - In
-- response always set - In create\/update request: never set
eExecutionId :: Lens' Execution (Maybe Text)
eExecutionId
  = lens _eExecutionId (\ s a -> s{_eExecutionId = a})

-- | The initial state is IN_PROGRESS. The only legal state transitions is
-- from IN_PROGRESS to COMPLETE. A PRECONDITION_FAILED will be returned if
-- an invalid transition is requested. The state can only be set to
-- COMPLETE once. A FAILED_PRECONDITION will be returned if the state is
-- set to COMPLETE multiple times. If the state is set to COMPLETE, all the
-- in-progress steps within the execution will be set as COMPLETE. If the
-- outcome of the step is not set, the outcome will be set to INCONCLUSIVE.
-- - In response always set - In create\/update request: optional
eState :: Lens' Execution (Maybe ExecutionState)
eState = lens _eState (\ s a -> s{_eState = a})

-- | The time when the Execution status transitioned to COMPLETE. This value
-- will be set automatically when state transitions to COMPLETE. - In
-- response: set if the execution state is COMPLETE. - In create\/update
-- request: never set
eCompletionTime :: Lens' Execution (Maybe Timestamp)
eCompletionTime
  = lens _eCompletionTime
      (\ s a -> s{_eCompletionTime = a})

-- | TestExecution Matrix ID that the TestExecutionService uses. - In
-- response: present if set by create - In create: optional - In update:
-- never set
eTestExecutionMatrixId :: Lens' Execution (Maybe Text)
eTestExecutionMatrixId
  = lens _eTestExecutionMatrixId
      (\ s a -> s{_eTestExecutionMatrixId = a})

-- | Classify the result, for example into SUCCESS or FAILURE - In response:
-- present if set by create\/update request - In create\/update request:
-- optional
eOutcome :: Lens' Execution (Maybe Outcome)
eOutcome = lens _eOutcome (\ s a -> s{_eOutcome = a})

-- | Lightweight information about execution request. - In response: present
-- if set by create - In create: optional - In update: optional
eSpecification :: Lens' Execution (Maybe Specification)
eSpecification
  = lens _eSpecification
      (\ s a -> s{_eSpecification = a})

instance FromJSON Execution where
        parseJSON
          = withObject "Execution"
              (\ o ->
                 Execution' <$>
                   (o .:? "creationTime") <*> (o .:? "executionId") <*>
                     (o .:? "state")
                     <*> (o .:? "completionTime")
                     <*> (o .:? "testExecutionMatrixId")
                     <*> (o .:? "outcome")
                     <*> (o .:? "specification"))

instance ToJSON Execution where
        toJSON Execution'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _eCreationTime,
                  ("executionId" .=) <$> _eExecutionId,
                  ("state" .=) <$> _eState,
                  ("completionTime" .=) <$> _eCompletionTime,
                  ("testExecutionMatrixId" .=) <$>
                    _eTestExecutionMatrixId,
                  ("outcome" .=) <$> _eOutcome,
                  ("specification" .=) <$> _eSpecification])

-- | Interprets a result so that humans and machines can act on it.
--
-- /See:/ 'outcome' smart constructor.
data Outcome =
  Outcome'
    { _oSummary            :: !(Maybe OutcomeSummary)
    , _oInconclusiveDetail :: !(Maybe InconclusiveDetail)
    , _oFailureDetail      :: !(Maybe FailureDetail)
    , _oSuccessDetail      :: !(Maybe SuccessDetail)
    , _oSkippedDetail      :: !(Maybe SkippedDetail)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Outcome' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oSummary'
--
-- * 'oInconclusiveDetail'
--
-- * 'oFailureDetail'
--
-- * 'oSuccessDetail'
--
-- * 'oSkippedDetail'
outcome
    :: Outcome
outcome =
  Outcome'
    { _oSummary = Nothing
    , _oInconclusiveDetail = Nothing
    , _oFailureDetail = Nothing
    , _oSuccessDetail = Nothing
    , _oSkippedDetail = Nothing
    }


-- | The simplest way to interpret a result. Required
oSummary :: Lens' Outcome (Maybe OutcomeSummary)
oSummary = lens _oSummary (\ s a -> s{_oSummary = a})

-- | More information about an INCONCLUSIVE outcome. Returns INVALID_ARGUMENT
-- if this field is set but the summary is not INCONCLUSIVE. Optional
oInconclusiveDetail :: Lens' Outcome (Maybe InconclusiveDetail)
oInconclusiveDetail
  = lens _oInconclusiveDetail
      (\ s a -> s{_oInconclusiveDetail = a})

-- | More information about a FAILURE outcome. Returns INVALID_ARGUMENT if
-- this field is set but the summary is not FAILURE. Optional
oFailureDetail :: Lens' Outcome (Maybe FailureDetail)
oFailureDetail
  = lens _oFailureDetail
      (\ s a -> s{_oFailureDetail = a})

-- | More information about a SUCCESS outcome. Returns INVALID_ARGUMENT if
-- this field is set but the summary is not SUCCESS. Optional
oSuccessDetail :: Lens' Outcome (Maybe SuccessDetail)
oSuccessDetail
  = lens _oSuccessDetail
      (\ s a -> s{_oSuccessDetail = a})

-- | More information about a SKIPPED outcome. Returns INVALID_ARGUMENT if
-- this field is set but the summary is not SKIPPED. Optional
oSkippedDetail :: Lens' Outcome (Maybe SkippedDetail)
oSkippedDetail
  = lens _oSkippedDetail
      (\ s a -> s{_oSkippedDetail = a})

instance FromJSON Outcome where
        parseJSON
          = withObject "Outcome"
              (\ o ->
                 Outcome' <$>
                   (o .:? "summary") <*> (o .:? "inconclusiveDetail")
                     <*> (o .:? "failureDetail")
                     <*> (o .:? "successDetail")
                     <*> (o .:? "skippedDetail"))

instance ToJSON Outcome where
        toJSON Outcome'{..}
          = object
              (catMaybes
                 [("summary" .=) <$> _oSummary,
                  ("inconclusiveDetail" .=) <$> _oInconclusiveDetail,
                  ("failureDetail" .=) <$> _oFailureDetail,
                  ("successDetail" .=) <$> _oSuccessDetail,
                  ("skippedDetail" .=) <$> _oSkippedDetail])

-- | A Step represents a single operation performed as part of Execution. A
-- step can be used to represent the execution of a tool ( for example a
-- test runner execution or an execution of a compiler). Steps can overlap
-- (for instance two steps might have the same start time if some
-- operations are done in parallel). Here is an example, let\'s consider
-- that we have a continuous build is executing a test runner for each
-- iteration. The workflow would look like: - user creates a Execution with
-- id 1 - user creates an TestExecutionStep with id 100 for Execution 1 -
-- user update TestExecutionStep with id 100 to add a raw xml log + the
-- service parses the xml logs and returns a TestExecutionStep with updated
-- TestResult(s). - user update the status of TestExecutionStep with id 100
-- to COMPLETE A Step can be updated until its state is set to COMPLETE at
-- which points it becomes immutable.
--
-- /See:/ 'step' smart constructor.
data Step =
  Step'
    { _sCreationTime        :: !(Maybe Timestamp)
    , _sRunDuration         :: !(Maybe Duration)
    , _sState               :: !(Maybe StepState)
    , _sStepId              :: !(Maybe Text)
    , _sToolExecutionStep   :: !(Maybe ToolExecutionStep)
    , _sDimensionValue      :: !(Maybe [StepDimensionValueEntry])
    , _sHasImages           :: !(Maybe Bool)
    , _sTestExecutionStep   :: !(Maybe TestExecutionStep)
    , _sCompletionTime      :: !(Maybe Timestamp)
    , _sName                :: !(Maybe Text)
    , _sOutcome             :: !(Maybe Outcome)
    , _sLabels              :: !(Maybe [StepLabelsEntry])
    , _sMultiStep           :: !(Maybe MultiStep)
    , _sDeviceUsageDuration :: !(Maybe Duration)
    , _sDescription         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Step' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sCreationTime'
--
-- * 'sRunDuration'
--
-- * 'sState'
--
-- * 'sStepId'
--
-- * 'sToolExecutionStep'
--
-- * 'sDimensionValue'
--
-- * 'sHasImages'
--
-- * 'sTestExecutionStep'
--
-- * 'sCompletionTime'
--
-- * 'sName'
--
-- * 'sOutcome'
--
-- * 'sLabels'
--
-- * 'sMultiStep'
--
-- * 'sDeviceUsageDuration'
--
-- * 'sDescription'
step
    :: Step
step =
  Step'
    { _sCreationTime = Nothing
    , _sRunDuration = Nothing
    , _sState = Nothing
    , _sStepId = Nothing
    , _sToolExecutionStep = Nothing
    , _sDimensionValue = Nothing
    , _sHasImages = Nothing
    , _sTestExecutionStep = Nothing
    , _sCompletionTime = Nothing
    , _sName = Nothing
    , _sOutcome = Nothing
    , _sLabels = Nothing
    , _sMultiStep = Nothing
    , _sDeviceUsageDuration = Nothing
    , _sDescription = Nothing
    }


-- | The time when the step was created. - In response: always set - In
-- create\/update request: never set
sCreationTime :: Lens' Step (Maybe Timestamp)
sCreationTime
  = lens _sCreationTime
      (\ s a -> s{_sCreationTime = a})

-- | How long it took for this step to run. If unset, this is set to the
-- difference between creation_time and completion_time when the step is
-- set to the COMPLETE state. In some cases, it is appropriate to set this
-- value separately: For instance, if a step is created, but the operation
-- it represents is queued for a few minutes before it executes, it would
-- be appropriate not to include the time spent queued in its run_duration.
-- PRECONDITION_FAILED will be returned if one attempts to set a
-- run_duration on a step which already has this field set. - In response:
-- present if previously set; always present on COMPLETE step - In create
-- request: optional - In update request: optional
sRunDuration :: Lens' Step (Maybe Duration)
sRunDuration
  = lens _sRunDuration (\ s a -> s{_sRunDuration = a})

-- | The initial state is IN_PROGRESS. The only legal state transitions are *
-- IN_PROGRESS -> COMPLETE A PRECONDITION_FAILED will be returned if an
-- invalid transition is requested. It is valid to create Step with a state
-- set to COMPLETE. The state can only be set to COMPLETE once. A
-- PRECONDITION_FAILED will be returned if the state is set to COMPLETE
-- multiple times. - In response: always set - In create\/update request:
-- optional
sState :: Lens' Step (Maybe StepState)
sState = lens _sState (\ s a -> s{_sState = a})

-- | A unique identifier within a Execution for this Step. Returns
-- INVALID_ARGUMENT if this field is set or overwritten by the caller. - In
-- response: always set - In create\/update request: never set
sStepId :: Lens' Step (Maybe Text)
sStepId = lens _sStepId (\ s a -> s{_sStepId = a})

-- | An execution of a tool (used for steps we don\'t explicitly support).
sToolExecutionStep :: Lens' Step (Maybe ToolExecutionStep)
sToolExecutionStep
  = lens _sToolExecutionStep
      (\ s a -> s{_sToolExecutionStep = a})

-- | If the execution containing this step has any dimension_definition set,
-- then this field allows the child to specify the values of the
-- dimensions. The keys must exactly match the dimension_definition of the
-- execution. For example, if the execution has \`dimension_definition =
-- [\'attempt\', \'device\']\` then a step must define values for those
-- dimensions, eg. \`dimension_value = [\'attempt\': \'1\', \'device\':
-- \'Nexus 6\']\` If a step does not participate in one dimension of the
-- matrix, the value for that dimension should be empty string. For
-- example, if one of the tests is executed by a runner which does not
-- support retries, the step could have \`dimension_value = [\'attempt\':
-- \'\', \'device\': \'Nexus 6\']\` If the step does not participate in any
-- dimensions of the matrix, it may leave dimension_value unset. A
-- PRECONDITION_FAILED will be returned if any of the keys do not exist in
-- the dimension_definition of the execution. A PRECONDITION_FAILED will be
-- returned if another step in this execution already has the same name and
-- dimension_value, but differs on other data fields, for example, step
-- field is different. A PRECONDITION_FAILED will be returned if
-- dimension_value is set, and there is a dimension_definition in the
-- execution which is not specified as one of the keys. - In response:
-- present if set by create - In create request: optional - In update
-- request: never set
sDimensionValue :: Lens' Step [StepDimensionValueEntry]
sDimensionValue
  = lens _sDimensionValue
      (\ s a -> s{_sDimensionValue = a})
      . _Default
      . _Coerce

-- | Whether any of the outputs of this step are images whose thumbnails can
-- be fetched with ListThumbnails. - In response: always set - In
-- create\/update request: never set
sHasImages :: Lens' Step (Maybe Bool)
sHasImages
  = lens _sHasImages (\ s a -> s{_sHasImages = a})

-- | An execution of a test runner.
sTestExecutionStep :: Lens' Step (Maybe TestExecutionStep)
sTestExecutionStep
  = lens _sTestExecutionStep
      (\ s a -> s{_sTestExecutionStep = a})

-- | The time when the step status was set to complete. This value will be
-- set automatically when state transitions to COMPLETE. - In response: set
-- if the execution state is COMPLETE. - In create\/update request: never
-- set
sCompletionTime :: Lens' Step (Maybe Timestamp)
sCompletionTime
  = lens _sCompletionTime
      (\ s a -> s{_sCompletionTime = a})

-- | A short human-readable name to display in the UI. Maximum of 100
-- characters. For example: Clean build A PRECONDITION_FAILED will be
-- returned upon creating a new step if it shares its name and
-- dimension_value with an existing step. If two steps represent a similar
-- action, but have different dimension values, they should share the same
-- name. For instance, if the same set of tests is run on two different
-- platforms, the two steps should have the same name. - In response:
-- always set - In create request: always set - In update request: never
-- set
sName :: Lens' Step (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | Classification of the result, for example into SUCCESS or FAILURE - In
-- response: present if set by create\/update request - In create\/update
-- request: optional
sOutcome :: Lens' Step (Maybe Outcome)
sOutcome = lens _sOutcome (\ s a -> s{_sOutcome = a})

-- | Arbitrary user-supplied key\/value pairs that are associated with the
-- step. Users are responsible for managing the key namespace such that
-- keys don\'t accidentally collide. An INVALID_ARGUMENT will be returned
-- if the number of labels exceeds 100 or if the length of any of the keys
-- or values exceeds 100 characters. - In response: always set - In create
-- request: optional - In update request: optional; any new key\/value pair
-- will be added to the map, and any new value for an existing key will
-- update that key\'s value
sLabels :: Lens' Step [StepLabelsEntry]
sLabels
  = lens _sLabels (\ s a -> s{_sLabels = a}) . _Default
      . _Coerce

-- | Details when multiple steps are run with the same configuration as a
-- group. These details can be used identify which group this step is part
-- of. It also identifies the groups \'primary step\' which indexes all the
-- group members. - In response: present if previously set. - In create
-- request: optional, set iff this step was performed more than once. - In
-- update request: optional
sMultiStep :: Lens' Step (Maybe MultiStep)
sMultiStep
  = lens _sMultiStep (\ s a -> s{_sMultiStep = a})

-- | How much the device resource is used to perform the test. This is the
-- device usage used for billing purpose, which is different from the
-- run_duration, for example, infrastructure failure won\'t be charged for
-- device usage. PRECONDITION_FAILED will be returned if one attempts to
-- set a device_usage on a step which already has this field set. - In
-- response: present if previously set. - In create request: optional - In
-- update request: optional
sDeviceUsageDuration :: Lens' Step (Maybe Duration)
sDeviceUsageDuration
  = lens _sDeviceUsageDuration
      (\ s a -> s{_sDeviceUsageDuration = a})

-- | A description of this tool For example: mvn clean package -D
-- skipTests=true - In response: present if set by create\/update request -
-- In create\/update request: optional
sDescription :: Lens' Step (Maybe Text)
sDescription
  = lens _sDescription (\ s a -> s{_sDescription = a})

instance FromJSON Step where
        parseJSON
          = withObject "Step"
              (\ o ->
                 Step' <$>
                   (o .:? "creationTime") <*> (o .:? "runDuration") <*>
                     (o .:? "state")
                     <*> (o .:? "stepId")
                     <*> (o .:? "toolExecutionStep")
                     <*> (o .:? "dimensionValue" .!= mempty)
                     <*> (o .:? "hasImages")
                     <*> (o .:? "testExecutionStep")
                     <*> (o .:? "completionTime")
                     <*> (o .:? "name")
                     <*> (o .:? "outcome")
                     <*> (o .:? "labels" .!= mempty)
                     <*> (o .:? "multiStep")
                     <*> (o .:? "deviceUsageDuration")
                     <*> (o .:? "description"))

instance ToJSON Step where
        toJSON Step'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _sCreationTime,
                  ("runDuration" .=) <$> _sRunDuration,
                  ("state" .=) <$> _sState, ("stepId" .=) <$> _sStepId,
                  ("toolExecutionStep" .=) <$> _sToolExecutionStep,
                  ("dimensionValue" .=) <$> _sDimensionValue,
                  ("hasImages" .=) <$> _sHasImages,
                  ("testExecutionStep" .=) <$> _sTestExecutionStep,
                  ("completionTime" .=) <$> _sCompletionTime,
                  ("name" .=) <$> _sName, ("outcome" .=) <$> _sOutcome,
                  ("labels" .=) <$> _sLabels,
                  ("multiStep" .=) <$> _sMultiStep,
                  ("deviceUsageDuration" .=) <$> _sDeviceUsageDuration,
                  ("description" .=) <$> _sDescription])

--
-- /See:/ 'successDetail' smart constructor.
newtype SuccessDetail =
  SuccessDetail'
    { _sdOtherNATiveCrash :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SuccessDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdOtherNATiveCrash'
successDetail
    :: SuccessDetail
successDetail = SuccessDetail' {_sdOtherNATiveCrash = Nothing}


-- | If a native process other than the app crashed.
sdOtherNATiveCrash :: Lens' SuccessDetail (Maybe Bool)
sdOtherNATiveCrash
  = lens _sdOtherNATiveCrash
      (\ s a -> s{_sdOtherNATiveCrash = a})

instance FromJSON SuccessDetail where
        parseJSON
          = withObject "SuccessDetail"
              (\ o ->
                 SuccessDetail' <$> (o .:? "otherNativeCrash"))

instance ToJSON SuccessDetail where
        toJSON SuccessDetail'{..}
          = object
              (catMaybes
                 [("otherNativeCrash" .=) <$> _sdOtherNATiveCrash])

-- | An execution of an arbitrary tool. It could be a test runner or a tool
-- copying artifacts or deploying code.
--
-- /See:/ 'toolExecution' smart constructor.
data ToolExecution =
  ToolExecution'
    { _teCommandLineArguments :: !(Maybe [Text])
    , _teToolOutputs          :: !(Maybe [ToolOutputReference])
    , _teToolLogs             :: !(Maybe [FileReference])
    , _teExitCode             :: !(Maybe ToolExitCode)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ToolExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'teCommandLineArguments'
--
-- * 'teToolOutputs'
--
-- * 'teToolLogs'
--
-- * 'teExitCode'
toolExecution
    :: ToolExecution
toolExecution =
  ToolExecution'
    { _teCommandLineArguments = Nothing
    , _teToolOutputs = Nothing
    , _teToolLogs = Nothing
    , _teExitCode = Nothing
    }


-- | The full tokenized command line including the program name (equivalent
-- to argv in a C program). - In response: present if set by create request
-- - In create request: optional - In update request: never set
teCommandLineArguments :: Lens' ToolExecution [Text]
teCommandLineArguments
  = lens _teCommandLineArguments
      (\ s a -> s{_teCommandLineArguments = a})
      . _Default
      . _Coerce

-- | References to opaque files of any format output by the tool execution.
-- The maximum allowed number of tool outputs per step is 1000. - In
-- response: present if set by create\/update request - In create request:
-- optional - In update request: optional, any value provided will be
-- appended to the existing list
teToolOutputs :: Lens' ToolExecution [ToolOutputReference]
teToolOutputs
  = lens _teToolOutputs
      (\ s a -> s{_teToolOutputs = a})
      . _Default
      . _Coerce

-- | References to any plain text logs output the tool execution. This field
-- can be set before the tool has exited in order to be able to have access
-- to a live view of the logs while the tool is running. The maximum
-- allowed number of tool logs per step is 1000. - In response: present if
-- set by create\/update request - In create request: optional - In update
-- request: optional, any value provided will be appended to the existing
-- list
teToolLogs :: Lens' ToolExecution [FileReference]
teToolLogs
  = lens _teToolLogs (\ s a -> s{_teToolLogs = a}) .
      _Default
      . _Coerce

-- | Tool execution exit code. This field will be set once the tool has
-- exited. - In response: present if set by create\/update request - In
-- create request: optional - In update request: optional, a
-- FAILED_PRECONDITION error will be returned if an exit_code is already
-- set.
teExitCode :: Lens' ToolExecution (Maybe ToolExitCode)
teExitCode
  = lens _teExitCode (\ s a -> s{_teExitCode = a})

instance FromJSON ToolExecution where
        parseJSON
          = withObject "ToolExecution"
              (\ o ->
                 ToolExecution' <$>
                   (o .:? "commandLineArguments" .!= mempty) <*>
                     (o .:? "toolOutputs" .!= mempty)
                     <*> (o .:? "toolLogs" .!= mempty)
                     <*> (o .:? "exitCode"))

instance ToJSON ToolExecution where
        toJSON ToolExecution'{..}
          = object
              (catMaybes
                 [("commandLineArguments" .=) <$>
                    _teCommandLineArguments,
                  ("toolOutputs" .=) <$> _teToolOutputs,
                  ("toolLogs" .=) <$> _teToolLogs,
                  ("exitCode" .=) <$> _teExitCode])

-- | Request message for StepService.PublishXunitXmlFiles.
--
-- /See:/ 'publishXUnitXMLFilesRequest' smart constructor.
newtype PublishXUnitXMLFilesRequest =
  PublishXUnitXMLFilesRequest'
    { _pxuxfrXUnitXMLFiles :: Maybe [FileReference]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PublishXUnitXMLFilesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pxuxfrXUnitXMLFiles'
publishXUnitXMLFilesRequest
    :: PublishXUnitXMLFilesRequest
publishXUnitXMLFilesRequest =
  PublishXUnitXMLFilesRequest' {_pxuxfrXUnitXMLFiles = Nothing}


-- | URI of the Xunit XML files to publish. The maximum size of the file this
-- reference is pointing to is 50MB. Required.
pxuxfrXUnitXMLFiles :: Lens' PublishXUnitXMLFilesRequest [FileReference]
pxuxfrXUnitXMLFiles
  = lens _pxuxfrXUnitXMLFiles
      (\ s a -> s{_pxuxfrXUnitXMLFiles = a})
      . _Default
      . _Coerce

instance FromJSON PublishXUnitXMLFilesRequest where
        parseJSON
          = withObject "PublishXUnitXMLFilesRequest"
              (\ o ->
                 PublishXUnitXMLFilesRequest' <$>
                   (o .:? "xunitXmlFiles" .!= mempty))

instance ToJSON PublishXUnitXMLFilesRequest where
        toJSON PublishXUnitXMLFilesRequest'{..}
          = object
              (catMaybes
                 [("xunitXmlFiles" .=) <$> _pxuxfrXUnitXMLFiles])

-- | A summary of perf metrics collected and performance environment info
--
-- /See:/ 'perfMetricsSummary' smart constructor.
data PerfMetricsSummary =
  PerfMetricsSummary'
    { _pmsExecutionId     :: !(Maybe Text)
    , _pmsStepId          :: !(Maybe Text)
    , _pmsPerfMetrics     :: !(Maybe [PerfMetricsSummaryPerfMetricsItem])
    , _pmsPerfEnvironment :: !(Maybe PerfEnvironment)
    , _pmsGraphicsStats   :: !(Maybe GraphicsStats)
    , _pmsAppStartTime    :: !(Maybe AppStartTime)
    , _pmsHistoryId       :: !(Maybe Text)
    , _pmsProjectId       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PerfMetricsSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmsExecutionId'
--
-- * 'pmsStepId'
--
-- * 'pmsPerfMetrics'
--
-- * 'pmsPerfEnvironment'
--
-- * 'pmsGraphicsStats'
--
-- * 'pmsAppStartTime'
--
-- * 'pmsHistoryId'
--
-- * 'pmsProjectId'
perfMetricsSummary
    :: PerfMetricsSummary
perfMetricsSummary =
  PerfMetricsSummary'
    { _pmsExecutionId = Nothing
    , _pmsStepId = Nothing
    , _pmsPerfMetrics = Nothing
    , _pmsPerfEnvironment = Nothing
    , _pmsGraphicsStats = Nothing
    , _pmsAppStartTime = Nothing
    , _pmsHistoryId = Nothing
    , _pmsProjectId = Nothing
    }


-- | A tool results execution ID.
pmsExecutionId :: Lens' PerfMetricsSummary (Maybe Text)
pmsExecutionId
  = lens _pmsExecutionId
      (\ s a -> s{_pmsExecutionId = a})

-- | A tool results step ID.
pmsStepId :: Lens' PerfMetricsSummary (Maybe Text)
pmsStepId
  = lens _pmsStepId (\ s a -> s{_pmsStepId = a})

-- | Set of resource collected
pmsPerfMetrics :: Lens' PerfMetricsSummary [PerfMetricsSummaryPerfMetricsItem]
pmsPerfMetrics
  = lens _pmsPerfMetrics
      (\ s a -> s{_pmsPerfMetrics = a})
      . _Default
      . _Coerce

-- | Describes the environment in which the performance metrics were
-- collected
pmsPerfEnvironment :: Lens' PerfMetricsSummary (Maybe PerfEnvironment)
pmsPerfEnvironment
  = lens _pmsPerfEnvironment
      (\ s a -> s{_pmsPerfEnvironment = a})

-- | Graphics statistics for the entire run. Statistics are reset at the
-- beginning of the run and collected at the end of the run.
pmsGraphicsStats :: Lens' PerfMetricsSummary (Maybe GraphicsStats)
pmsGraphicsStats
  = lens _pmsGraphicsStats
      (\ s a -> s{_pmsGraphicsStats = a})

pmsAppStartTime :: Lens' PerfMetricsSummary (Maybe AppStartTime)
pmsAppStartTime
  = lens _pmsAppStartTime
      (\ s a -> s{_pmsAppStartTime = a})

-- | A tool results history ID.
pmsHistoryId :: Lens' PerfMetricsSummary (Maybe Text)
pmsHistoryId
  = lens _pmsHistoryId (\ s a -> s{_pmsHistoryId = a})

-- | The cloud project
pmsProjectId :: Lens' PerfMetricsSummary (Maybe Text)
pmsProjectId
  = lens _pmsProjectId (\ s a -> s{_pmsProjectId = a})

instance FromJSON PerfMetricsSummary where
        parseJSON
          = withObject "PerfMetricsSummary"
              (\ o ->
                 PerfMetricsSummary' <$>
                   (o .:? "executionId") <*> (o .:? "stepId") <*>
                     (o .:? "perfMetrics" .!= mempty)
                     <*> (o .:? "perfEnvironment")
                     <*> (o .:? "graphicsStats")
                     <*> (o .:? "appStartTime")
                     <*> (o .:? "historyId")
                     <*> (o .:? "projectId"))

instance ToJSON PerfMetricsSummary where
        toJSON PerfMetricsSummary'{..}
          = object
              (catMaybes
                 [("executionId" .=) <$> _pmsExecutionId,
                  ("stepId" .=) <$> _pmsStepId,
                  ("perfMetrics" .=) <$> _pmsPerfMetrics,
                  ("perfEnvironment" .=) <$> _pmsPerfEnvironment,
                  ("graphicsStats" .=) <$> _pmsGraphicsStats,
                  ("appStartTime" .=) <$> _pmsAppStartTime,
                  ("historyId" .=) <$> _pmsHistoryId,
                  ("projectId" .=) <$> _pmsProjectId])

-- | Response message for HistoryService.List
--
-- /See:/ 'listHistoriesResponse' smart constructor.
data ListHistoriesResponse =
  ListHistoriesResponse'
    { _lhrNextPageToken :: !(Maybe Text)
    , _lhrHistories     :: !(Maybe [History])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListHistoriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lhrNextPageToken'
--
-- * 'lhrHistories'
listHistoriesResponse
    :: ListHistoriesResponse
listHistoriesResponse =
  ListHistoriesResponse' {_lhrNextPageToken = Nothing, _lhrHistories = Nothing}


-- | A continuation token to resume the query at the next item. Will only be
-- set if there are more histories to fetch. Tokens are valid for up to one
-- hour from the time of the first list request. For instance, if you make
-- a list request at 1PM and use the token from this first request 10
-- minutes later, the token from this second response will only be valid
-- for 50 minutes.
lhrNextPageToken :: Lens' ListHistoriesResponse (Maybe Text)
lhrNextPageToken
  = lens _lhrNextPageToken
      (\ s a -> s{_lhrNextPageToken = a})

-- | Histories.
lhrHistories :: Lens' ListHistoriesResponse [History]
lhrHistories
  = lens _lhrHistories (\ s a -> s{_lhrHistories = a})
      . _Default
      . _Coerce

instance FromJSON ListHistoriesResponse where
        parseJSON
          = withObject "ListHistoriesResponse"
              (\ o ->
                 ListHistoriesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "histories" .!= mempty))

instance ToJSON ListHistoriesResponse where
        toJSON ListHistoriesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lhrNextPageToken,
                  ("histories" .=) <$> _lhrHistories])

-- | Exit code from a tool execution.
--
-- /See:/ 'toolExitCode' smart constructor.
newtype ToolExitCode =
  ToolExitCode'
    { _tecNumber :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ToolExitCode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tecNumber'
toolExitCode
    :: ToolExitCode
toolExitCode = ToolExitCode' {_tecNumber = Nothing}


-- | Tool execution exit code. A value of 0 means that the execution was
-- successful. - In response: always set - In create\/update request:
-- always set
tecNumber :: Lens' ToolExitCode (Maybe Int32)
tecNumber
  = lens _tecNumber (\ s a -> s{_tecNumber = a}) .
      mapping _Coerce

instance FromJSON ToolExitCode where
        parseJSON
          = withObject "ToolExitCode"
              (\ o -> ToolExitCode' <$> (o .:? "number"))

instance ToJSON ToolExitCode where
        toJSON ToolExitCode'{..}
          = object (catMaybes [("number" .=) <$> _tecNumber])

-- | A test of an Android application that can control an Android component
-- independently of its normal lifecycle. See for more information on types
-- of Android tests.
--
-- /See:/ 'androidInstrumentationTest' smart constructor.
data AndroidInstrumentationTest =
  AndroidInstrumentationTest'
    { _aitTestTargets     :: !(Maybe [Text])
    , _aitUseOrchestrator :: !(Maybe Bool)
    , _aitTestRunnerClass :: !(Maybe Text)
    , _aitTestPackageId   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AndroidInstrumentationTest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aitTestTargets'
--
-- * 'aitUseOrchestrator'
--
-- * 'aitTestRunnerClass'
--
-- * 'aitTestPackageId'
androidInstrumentationTest
    :: AndroidInstrumentationTest
androidInstrumentationTest =
  AndroidInstrumentationTest'
    { _aitTestTargets = Nothing
    , _aitUseOrchestrator = Nothing
    , _aitTestRunnerClass = Nothing
    , _aitTestPackageId = Nothing
    }


-- | Each target must be fully qualified with the package name or class name,
-- in one of these formats: - \"package package_name\" - \"class
-- package_name.class_name\" - \"class
-- package_name.class_name#method_name\" If empty, all targets in the
-- module will be run.
aitTestTargets :: Lens' AndroidInstrumentationTest [Text]
aitTestTargets
  = lens _aitTestTargets
      (\ s a -> s{_aitTestTargets = a})
      . _Default
      . _Coerce

-- | The flag indicates whether Android Test Orchestrator will be used to run
-- test or not.
aitUseOrchestrator :: Lens' AndroidInstrumentationTest (Maybe Bool)
aitUseOrchestrator
  = lens _aitUseOrchestrator
      (\ s a -> s{_aitUseOrchestrator = a})

-- | The InstrumentationTestRunner class. Required
aitTestRunnerClass :: Lens' AndroidInstrumentationTest (Maybe Text)
aitTestRunnerClass
  = lens _aitTestRunnerClass
      (\ s a -> s{_aitTestRunnerClass = a})

-- | The java package for the test to be executed. Required
aitTestPackageId :: Lens' AndroidInstrumentationTest (Maybe Text)
aitTestPackageId
  = lens _aitTestPackageId
      (\ s a -> s{_aitTestPackageId = a})

instance FromJSON AndroidInstrumentationTest where
        parseJSON
          = withObject "AndroidInstrumentationTest"
              (\ o ->
                 AndroidInstrumentationTest' <$>
                   (o .:? "testTargets" .!= mempty) <*>
                     (o .:? "useOrchestrator")
                     <*> (o .:? "testRunnerClass")
                     <*> (o .:? "testPackageId"))

instance ToJSON AndroidInstrumentationTest where
        toJSON AndroidInstrumentationTest'{..}
          = object
              (catMaybes
                 [("testTargets" .=) <$> _aitTestTargets,
                  ("useOrchestrator" .=) <$> _aitUseOrchestrator,
                  ("testRunnerClass" .=) <$> _aitTestRunnerClass,
                  ("testPackageId" .=) <$> _aitTestPackageId])

--
-- /See:/ 'stepDimensionValueEntry' smart constructor.
data StepDimensionValueEntry =
  StepDimensionValueEntry'
    { _sdveValue :: !(Maybe Text)
    , _sdveKey   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StepDimensionValueEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdveValue'
--
-- * 'sdveKey'
stepDimensionValueEntry
    :: StepDimensionValueEntry
stepDimensionValueEntry =
  StepDimensionValueEntry' {_sdveValue = Nothing, _sdveKey = Nothing}


sdveValue :: Lens' StepDimensionValueEntry (Maybe Text)
sdveValue
  = lens _sdveValue (\ s a -> s{_sdveValue = a})

sdveKey :: Lens' StepDimensionValueEntry (Maybe Text)
sdveKey = lens _sdveKey (\ s a -> s{_sdveKey = a})

instance FromJSON StepDimensionValueEntry where
        parseJSON
          = withObject "StepDimensionValueEntry"
              (\ o ->
                 StepDimensionValueEntry' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON StepDimensionValueEntry where
        toJSON StepDimensionValueEntry'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _sdveValue,
                  ("key" .=) <$> _sdveKey])

-- | The details about how to run the execution.
--
-- /See:/ 'specification' smart constructor.
newtype Specification =
  Specification'
    { _sAndroidTest :: Maybe AndroidTest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Specification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sAndroidTest'
specification
    :: Specification
specification = Specification' {_sAndroidTest = Nothing}


-- | An Android mobile test execution specification.
sAndroidTest :: Lens' Specification (Maybe AndroidTest)
sAndroidTest
  = lens _sAndroidTest (\ s a -> s{_sAndroidTest = a})

instance FromJSON Specification where
        parseJSON
          = withObject "Specification"
              (\ o -> Specification' <$> (o .:? "androidTest"))

instance ToJSON Specification where
        toJSON Specification'{..}
          = object
              (catMaybes [("androidTest" .=) <$> _sAndroidTest])

-- | Response message for StepService.ListTestCases.
--
-- /See:/ 'listTestCasesResponse' smart constructor.
data ListTestCasesResponse =
  ListTestCasesResponse'
    { _ltcrNextPageToken :: !(Maybe Text)
    , _ltcrTestCases     :: !(Maybe [TestCase])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListTestCasesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltcrNextPageToken'
--
-- * 'ltcrTestCases'
listTestCasesResponse
    :: ListTestCasesResponse
listTestCasesResponse =
  ListTestCasesResponse'
    {_ltcrNextPageToken = Nothing, _ltcrTestCases = Nothing}


ltcrNextPageToken :: Lens' ListTestCasesResponse (Maybe Text)
ltcrNextPageToken
  = lens _ltcrNextPageToken
      (\ s a -> s{_ltcrNextPageToken = a})

-- | List of test cases.
ltcrTestCases :: Lens' ListTestCasesResponse [TestCase]
ltcrTestCases
  = lens _ltcrTestCases
      (\ s a -> s{_ltcrTestCases = a})
      . _Default
      . _Coerce

instance FromJSON ListTestCasesResponse where
        parseJSON
          = withObject "ListTestCasesResponse"
              (\ o ->
                 ListTestCasesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "testCases" .!= mempty))

instance ToJSON ListTestCasesResponse where
        toJSON ListTestCasesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ltcrNextPageToken,
                  ("testCases" .=) <$> _ltcrTestCases])

-- | Step Id and outcome of each individual step that was run as a group with
-- other steps with the same configuration.
--
-- /See:/ 'individualOutcome' smart constructor.
data IndividualOutcome =
  IndividualOutcome'
    { _ioRunDuration     :: !(Maybe Duration)
    , _ioStepId          :: !(Maybe Text)
    , _ioMultistepNumber :: !(Maybe (Textual Int32))
    , _ioOutcomeSummary  :: !(Maybe IndividualOutcomeOutcomeSummary)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IndividualOutcome' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ioRunDuration'
--
-- * 'ioStepId'
--
-- * 'ioMultistepNumber'
--
-- * 'ioOutcomeSummary'
individualOutcome
    :: IndividualOutcome
individualOutcome =
  IndividualOutcome'
    { _ioRunDuration = Nothing
    , _ioStepId = Nothing
    , _ioMultistepNumber = Nothing
    , _ioOutcomeSummary = Nothing
    }


-- | How long it took for this step to run.
ioRunDuration :: Lens' IndividualOutcome (Maybe Duration)
ioRunDuration
  = lens _ioRunDuration
      (\ s a -> s{_ioRunDuration = a})

ioStepId :: Lens' IndividualOutcome (Maybe Text)
ioStepId = lens _ioStepId (\ s a -> s{_ioStepId = a})

-- | Unique int given to each step. Ranges from 0(inclusive) to total number
-- of steps(exclusive). The primary step is 0.
ioMultistepNumber :: Lens' IndividualOutcome (Maybe Int32)
ioMultistepNumber
  = lens _ioMultistepNumber
      (\ s a -> s{_ioMultistepNumber = a})
      . mapping _Coerce

ioOutcomeSummary :: Lens' IndividualOutcome (Maybe IndividualOutcomeOutcomeSummary)
ioOutcomeSummary
  = lens _ioOutcomeSummary
      (\ s a -> s{_ioOutcomeSummary = a})

instance FromJSON IndividualOutcome where
        parseJSON
          = withObject "IndividualOutcome"
              (\ o ->
                 IndividualOutcome' <$>
                   (o .:? "runDuration") <*> (o .:? "stepId") <*>
                     (o .:? "multistepNumber")
                     <*> (o .:? "outcomeSummary"))

instance ToJSON IndividualOutcome where
        toJSON IndividualOutcome'{..}
          = object
              (catMaybes
                 [("runDuration" .=) <$> _ioRunDuration,
                  ("stepId" .=) <$> _ioStepId,
                  ("multistepNumber" .=) <$> _ioMultistepNumber,
                  ("outcomeSummary" .=) <$> _ioOutcomeSummary])

-- | A summary of a test suite result either parsed from XML or uploaded
-- directly by a user. Note: the API related comments are for StepService
-- only. This message is also being used in ExecutionService in a read only
-- mode for the corresponding step.
--
-- /See:/ 'testSuiteOverview' smart constructor.
data TestSuiteOverview =
  TestSuiteOverview'
    { _tsoSkippedCount :: !(Maybe (Textual Int32))
    , _tsoErrorCount   :: !(Maybe (Textual Int32))
    , _tsoXMLSource    :: !(Maybe FileReference)
    , _tsoName         :: !(Maybe Text)
    , _tsoFailureCount :: !(Maybe (Textual Int32))
    , _tsoTotalCount   :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestSuiteOverview' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsoSkippedCount'
--
-- * 'tsoErrorCount'
--
-- * 'tsoXMLSource'
--
-- * 'tsoName'
--
-- * 'tsoFailureCount'
--
-- * 'tsoTotalCount'
testSuiteOverview
    :: TestSuiteOverview
testSuiteOverview =
  TestSuiteOverview'
    { _tsoSkippedCount = Nothing
    , _tsoErrorCount = Nothing
    , _tsoXMLSource = Nothing
    , _tsoName = Nothing
    , _tsoFailureCount = Nothing
    , _tsoTotalCount = Nothing
    }


-- | Number of test cases not run, typically set by the service by parsing
-- the xml_source. - In create\/response: always set - In update request:
-- never
tsoSkippedCount :: Lens' TestSuiteOverview (Maybe Int32)
tsoSkippedCount
  = lens _tsoSkippedCount
      (\ s a -> s{_tsoSkippedCount = a})
      . mapping _Coerce

-- | Number of test cases in error, typically set by the service by parsing
-- the xml_source. - In create\/response: always set - In update request:
-- never
tsoErrorCount :: Lens' TestSuiteOverview (Maybe Int32)
tsoErrorCount
  = lens _tsoErrorCount
      (\ s a -> s{_tsoErrorCount = a})
      . mapping _Coerce

-- | If this test suite was parsed from XML, this is the URI where the
-- original XML file is stored. Note: Multiple test suites can share the
-- same xml_source Returns INVALID_ARGUMENT if the uri format is not
-- supported. - In create\/response: optional - In update request: never
tsoXMLSource :: Lens' TestSuiteOverview (Maybe FileReference)
tsoXMLSource
  = lens _tsoXMLSource (\ s a -> s{_tsoXMLSource = a})

-- | The name of the test suite. - In create\/response: always set - In
-- update request: never
tsoName :: Lens' TestSuiteOverview (Maybe Text)
tsoName = lens _tsoName (\ s a -> s{_tsoName = a})

-- | Number of failed test cases, typically set by the service by parsing the
-- xml_source. May also be set by the user. - In create\/response: always
-- set - In update request: never
tsoFailureCount :: Lens' TestSuiteOverview (Maybe Int32)
tsoFailureCount
  = lens _tsoFailureCount
      (\ s a -> s{_tsoFailureCount = a})
      . mapping _Coerce

-- | Number of test cases, typically set by the service by parsing the
-- xml_source. - In create\/response: always set - In update request: never
tsoTotalCount :: Lens' TestSuiteOverview (Maybe Int32)
tsoTotalCount
  = lens _tsoTotalCount
      (\ s a -> s{_tsoTotalCount = a})
      . mapping _Coerce

instance FromJSON TestSuiteOverview where
        parseJSON
          = withObject "TestSuiteOverview"
              (\ o ->
                 TestSuiteOverview' <$>
                   (o .:? "skippedCount") <*> (o .:? "errorCount") <*>
                     (o .:? "xmlSource")
                     <*> (o .:? "name")
                     <*> (o .:? "failureCount")
                     <*> (o .:? "totalCount"))

instance ToJSON TestSuiteOverview where
        toJSON TestSuiteOverview'{..}
          = object
              (catMaybes
                 [("skippedCount" .=) <$> _tsoSkippedCount,
                  ("errorCount" .=) <$> _tsoErrorCount,
                  ("xmlSource" .=) <$> _tsoXMLSource,
                  ("name" .=) <$> _tsoName,
                  ("failureCount" .=) <$> _tsoFailureCount,
                  ("totalCount" .=) <$> _tsoTotalCount])

-- | Details when multiple steps are run with the same configuration as a
-- group.
--
-- /See:/ 'multiStep' smart constructor.
data MultiStep =
  MultiStep'
    { _msMultistepNumber :: !(Maybe (Textual Int32))
    , _msPrimaryStepId   :: !(Maybe Text)
    , _msPrimaryStep     :: !(Maybe PrimaryStep)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MultiStep' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msMultistepNumber'
--
-- * 'msPrimaryStepId'
--
-- * 'msPrimaryStep'
multiStep
    :: MultiStep
multiStep =
  MultiStep'
    { _msMultistepNumber = Nothing
    , _msPrimaryStepId = Nothing
    , _msPrimaryStep = Nothing
    }


-- | Unique int given to each step. Ranges from 0(inclusive) to total number
-- of steps(exclusive). The primary step is 0.
msMultistepNumber :: Lens' MultiStep (Maybe Int32)
msMultistepNumber
  = lens _msMultistepNumber
      (\ s a -> s{_msMultistepNumber = a})
      . mapping _Coerce

-- | Step Id of the primary (original) step, which might be this step.
msPrimaryStepId :: Lens' MultiStep (Maybe Text)
msPrimaryStepId
  = lens _msPrimaryStepId
      (\ s a -> s{_msPrimaryStepId = a})

-- | Present if it is a primary (original) step.
msPrimaryStep :: Lens' MultiStep (Maybe PrimaryStep)
msPrimaryStep
  = lens _msPrimaryStep
      (\ s a -> s{_msPrimaryStep = a})

instance FromJSON MultiStep where
        parseJSON
          = withObject "MultiStep"
              (\ o ->
                 MultiStep' <$>
                   (o .:? "multistepNumber") <*> (o .:? "primaryStepId")
                     <*> (o .:? "primaryStep"))

instance ToJSON MultiStep where
        toJSON MultiStep'{..}
          = object
              (catMaybes
                 [("multistepNumber" .=) <$> _msMultistepNumber,
                  ("primaryStepId" .=) <$> _msPrimaryStepId,
                  ("primaryStep" .=) <$> _msPrimaryStep])

-- | A Duration represents a signed, fixed-length span of time represented as
-- a count of seconds and fractions of seconds at nanosecond resolution. It
-- is independent of any calendar and concepts like \"day\" or \"month\".
-- It is related to Timestamp in that the difference between two Timestamp
-- values is a Duration and it can be added or subtracted from a Timestamp.
-- Range is approximately +-10,000 years. # Examples Example 1: Compute
-- Duration from two Timestamps in pseudo code. Timestamp start = ...;
-- Timestamp end = ...; Duration duration = ...; duration.seconds =
-- end.seconds - start.seconds; duration.nanos = end.nanos - start.nanos;
-- if (duration.seconds 0) { duration.seconds += 1; duration.nanos -=
-- 1000000000; } else if (durations.seconds > 0 && duration.nanos \< 0) {
-- duration.seconds -= 1; duration.nanos += 1000000000; } Example 2:
-- Compute Timestamp from Timestamp + Duration in pseudo code. Timestamp
-- start = ...; Duration duration = ...; Timestamp end = ...; end.seconds =
-- start.seconds + duration.seconds; end.nanos = start.nanos +
-- duration.nanos; if (end.nanos = 1000000000) { end.seconds += 1;
-- end.nanos -= 1000000000; } Example 3: Compute Duration from
-- datetime.timedelta in Python. td = datetime.timedelta(days=3,
-- minutes=10) duration = Duration() duration.FromTimedelta(td) # JSON
-- Mapping In JSON format, the Duration type is encoded as a string rather
-- than an object, where the string ends in the suffix \"s\" (indicating
-- seconds) and is preceded by the number of seconds, with nanoseconds
-- expressed as fractional seconds. For example, 3 seconds with 0
-- nanoseconds should be encoded in JSON format as \"3s\", while 3 seconds
-- and 1 nanosecond should be expressed in JSON format as \"3.000000001s\",
-- and 3 seconds and 1 microsecond should be expressed in JSON format as
-- \"3.000001s\".
--
-- /See:/ 'duration' smart constructor.
data Duration =
  Duration'
    { _dNanos   :: !(Maybe (Textual Int32))
    , _dSeconds :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Duration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dNanos'
--
-- * 'dSeconds'
duration
    :: Duration
duration = Duration' {_dNanos = Nothing, _dSeconds = Nothing}


-- | Signed fractions of a second at nanosecond resolution of the span of
-- time. Durations less than one second are represented with a 0
-- \`seconds\` field and a positive or negative \`nanos\` field. For
-- durations of one second or more, a non-zero value for the \`nanos\`
-- field must be of the same sign as the \`seconds\` field. Must be from
-- -999,999,999 to +999,999,999 inclusive.
dNanos :: Lens' Duration (Maybe Int32)
dNanos
  = lens _dNanos (\ s a -> s{_dNanos = a}) .
      mapping _Coerce

-- | Signed seconds of the span of time. Must be from -315,576,000,000 to
-- +315,576,000,000 inclusive. Note: these bounds are computed from: 60
-- sec\/min * 60 min\/hr * 24 hr\/day * 365.25 days\/year * 10000 years
dSeconds :: Lens' Duration (Maybe Int64)
dSeconds
  = lens _dSeconds (\ s a -> s{_dSeconds = a}) .
      mapping _Coerce

instance FromJSON Duration where
        parseJSON
          = withObject "Duration"
              (\ o ->
                 Duration' <$> (o .:? "nanos") <*> (o .:? "seconds"))

instance ToJSON Duration where
        toJSON Duration'{..}
          = object
              (catMaybes
                 [("nanos" .=) <$> _dNanos,
                  ("seconds" .=) <$> _dSeconds])

-- | A Timestamp represents a point in time independent of any time zone or
-- local calendar, encoded as a count of seconds and fractions of seconds
-- at nanosecond resolution. The count is relative to an epoch at UTC
-- midnight on January 1, 1970, in the proleptic Gregorian calendar which
-- extends the Gregorian calendar backwards to year one. All minutes are 60
-- seconds long. Leap seconds are \"smeared\" so that no leap second table
-- is needed for interpretation, using a [24-hour linear
-- smear](https:\/\/developers.google.com\/time\/smear). The range is from
-- 0001-01-01T00:00:00Z to 9999-12-31T23:59:59.999999999Z. By restricting
-- to that range, we ensure that we can convert to and from [RFC
-- 3339](https:\/\/www.ietf.org\/rfc\/rfc3339.txt) date strings. # Examples
-- Example 1: Compute Timestamp from POSIX \`time()\`. Timestamp timestamp;
-- timestamp.set_seconds(time(NULL)); timestamp.set_nanos(0); Example 2:
-- Compute Timestamp from POSIX \`gettimeofday()\`. struct timeval tv;
-- gettimeofday(&tv, NULL); Timestamp timestamp;
-- timestamp.set_seconds(tv.tv_sec); timestamp.set_nanos(tv.tv_usec *
-- 1000); Example 3: Compute Timestamp from Win32
-- \`GetSystemTimeAsFileTime()\`. FILETIME ft;
-- GetSystemTimeAsFileTime(&ft); UINT64 ticks =
-- (((UINT64)ft.dwHighDateTime) \<\< 32) | ft.dwLowDateTime; \/\/ A Windows
-- tick is 100 nanoseconds. Windows epoch 1601-01-01T00:00:00Z \/\/ is
-- 11644473600 seconds before Unix epoch 1970-01-01T00:00:00Z. Timestamp
-- timestamp; timestamp.set_seconds((INT64) ((ticks \/ 10000000) -
-- 11644473600LL)); timestamp.set_nanos((INT32) ((ticks % 10000000) *
-- 100)); Example 4: Compute Timestamp from Java
-- \`System.currentTimeMillis()\`. long millis =
-- System.currentTimeMillis(); Timestamp timestamp =
-- Timestamp.newBuilder().setSeconds(millis \/ 1000) .setNanos((int)
-- ((millis % 1000) * 1000000)).build(); Example 5: Compute Timestamp from
-- current time in Python. timestamp = Timestamp()
-- timestamp.GetCurrentTime() # JSON Mapping In JSON format, the Timestamp
-- type is encoded as a string in the [RFC
-- 3339](https:\/\/www.ietf.org\/rfc\/rfc3339.txt) format. That is, the
-- format is \"{year}-{month}-{day}T{hour}:{min}:{sec}[.{frac_sec}]Z\"
-- where {year} is always expressed using four digits while {month}, {day},
-- {hour}, {min}, and {sec} are zero-padded to two digits each. The
-- fractional seconds, which can go up to 9 digits (i.e. up to 1 nanosecond
-- resolution), are optional. The \"Z\" suffix indicates the timezone
-- (\"UTC\"); the timezone is required. A proto3 JSON serializer should
-- always use UTC (as indicated by \"Z\") when printing the Timestamp type
-- and a proto3 JSON parser should be able to accept both UTC and other
-- timezones (as indicated by an offset). For example,
-- \"2017-01-15T01:30:15.01Z\" encodes 15.01 seconds past 01:30 UTC on
-- January 15, 2017. In JavaScript, one can convert a Date object to this
-- format using the standard
-- [toISOString()](https:\/\/developer.mozilla.org\/en-US\/docs\/Web\/JavaScript\/Reference\/Global_Objects\/Date\/toISOString)
-- method. In Python, a standard \`datetime.datetime\` object can be
-- converted to this format using
-- [\`strftime\`](https:\/\/docs.python.org\/2\/library\/time.html#time.strftime)
-- with the time format spec \'%Y-%m-%dT%H:%M:%S.%fZ\'. Likewise, in Java,
-- one can use the Joda Time\'s [\`ISODateTimeFormat.dateTime()\`](
-- http:\/\/www.joda.org\/joda-time\/apidocs\/org\/joda\/time\/format\/ISODateTimeFormat.html#dateTime%2D%2D
-- ) to obtain a formatter capable of generating timestamps in this format.
--
-- /See:/ 'timestamp' smart constructor.
data Timestamp =
  Timestamp'
    { _tNanos   :: !(Maybe (Textual Int32))
    , _tSeconds :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Timestamp' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tNanos'
--
-- * 'tSeconds'
timestamp
    :: Timestamp
timestamp = Timestamp' {_tNanos = Nothing, _tSeconds = Nothing}


-- | Non-negative fractions of a second at nanosecond resolution. Negative
-- second values with fractions must still have non-negative nanos values
-- that count forward in time. Must be from 0 to 999,999,999 inclusive.
tNanos :: Lens' Timestamp (Maybe Int32)
tNanos
  = lens _tNanos (\ s a -> s{_tNanos = a}) .
      mapping _Coerce

-- | Represents seconds of UTC time since Unix epoch 1970-01-01T00:00:00Z.
-- Must be from 0001-01-01T00:00:00Z to 9999-12-31T23:59:59Z inclusive.
tSeconds :: Lens' Timestamp (Maybe Int64)
tSeconds
  = lens _tSeconds (\ s a -> s{_tSeconds = a}) .
      mapping _Coerce

instance FromJSON Timestamp where
        parseJSON
          = withObject "Timestamp"
              (\ o ->
                 Timestamp' <$> (o .:? "nanos") <*> (o .:? "seconds"))

instance ToJSON Timestamp where
        toJSON Timestamp'{..}
          = object
              (catMaybes
                 [("nanos" .=) <$> _tNanos,
                  ("seconds" .=) <$> _tSeconds])

-- | \`Any\` contains an arbitrary serialized protocol buffer message along
-- with a URL that describes the type of the serialized message. Protobuf
-- library provides support to pack\/unpack Any values in the form of
-- utility functions or additional generated methods of the Any type.
-- Example 1: Pack and unpack a message in C++. Foo foo = ...; Any any;
-- any.PackFrom(foo); ... if (any.UnpackTo(&foo)) { ... } Example 2: Pack
-- and unpack a message in Java. Foo foo = ...; Any any = Any.pack(foo);
-- ... if (any.is(Foo.class)) { foo = any.unpack(Foo.class); } Example 3:
-- Pack and unpack a message in Python. foo = Foo(...) any = Any()
-- any.Pack(foo) ... if any.Is(Foo.DESCRIPTOR): any.Unpack(foo) ... Example
-- 4: Pack and unpack a message in Go foo := &pb.Foo{...} any, err :=
-- ptypes.MarshalAny(foo) ... foo := &pb.Foo{} if err :=
-- ptypes.UnmarshalAny(any, foo); err != nil { ... } The pack methods
-- provided by protobuf library will by default use
-- \'type.googleapis.com\/full.type.name\' as the type URL and the unpack
-- methods only use the fully qualified type name after the last \'\/\' in
-- the type URL, for example \"foo.bar.com\/x\/y.z\" will yield type name
-- \"y.z\". JSON ==== The JSON representation of an \`Any\` value uses the
-- regular representation of the deserialized, embedded message, with an
-- additional field \`\'type\` which contains the type URL. Example:
-- package google.profile; message Person { string first_name = 1; string
-- last_name = 2; } { \"\'type\":
-- \"type.googleapis.com\/google.profile.Person\", \"firstName\": ,
-- \"lastName\": } If the embedded message type is well-known and has a
-- custom JSON representation, that representation will be embedded adding
-- a field \`value\` which holds the custom JSON in addition to the
-- \`\'type\` field. Example (for message [google.protobuf.Duration][]): {
-- \"\'type\": \"type.googleapis.com\/google.protobuf.Duration\",
-- \"value\": \"1.212s\" }
--
-- /See:/ 'any' smart constructor.
data Any =
  Any'
    { _aValue   :: !(Maybe Bytes)
    , _aTypeURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Any' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aValue'
--
-- * 'aTypeURL'
any
    :: Any
any = Any' {_aValue = Nothing, _aTypeURL = Nothing}


-- | Must be a valid serialized protocol buffer of the above specified type.
aValue :: Lens' Any (Maybe ByteString)
aValue
  = lens _aValue (\ s a -> s{_aValue = a}) .
      mapping _Bytes

-- | A URL\/resource name that uniquely identifies the type of the serialized
-- protocol buffer message. This string must contain at least one \"\/\"
-- character. The last segment of the URL\'s path must represent the fully
-- qualified name of the type (as in \`path\/google.protobuf.Duration\`).
-- The name should be in a canonical form (e.g., leading \".\" is not
-- accepted). In practice, teams usually precompile into the binary all
-- types that they expect it to use in the context of Any. However, for
-- URLs which use the scheme \`http\`, \`https\`, or no scheme, one can
-- optionally set up a type server that maps type URLs to message
-- definitions as follows: * If no scheme is provided, \`https\` is
-- assumed. * An HTTP GET on the URL must yield a [google.protobuf.Type][]
-- value in binary format, or produce an error. * Applications are allowed
-- to cache lookup results based on the URL, or have them precompiled into
-- a binary to avoid any lookup. Therefore, binary compatibility needs to
-- be preserved on changes to types. (Use versioned type names to manage
-- breaking changes.) Note: this functionality is not currently available
-- in the official protobuf release, and it is not used for type URLs
-- beginning with type.googleapis.com. Schemes other than \`http\`,
-- \`https\` (or the empty scheme) might be used with implementation
-- specific semantics.
aTypeURL :: Lens' Any (Maybe Text)
aTypeURL = lens _aTypeURL (\ s a -> s{_aTypeURL = a})

instance FromJSON Any where
        parseJSON
          = withObject "Any"
              (\ o ->
                 Any' <$> (o .:? "value") <*> (o .:? "typeUrl"))

instance ToJSON Any where
        toJSON Any'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _aValue,
                  ("typeUrl" .=) <$> _aTypeURL])

-- | Testing timing break down to know phases.
--
-- /See:/ 'testTiming' smart constructor.
newtype TestTiming =
  TestTiming'
    { _ttTestProcessDuration :: Maybe Duration
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestTiming' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttTestProcessDuration'
testTiming
    :: TestTiming
testTiming = TestTiming' {_ttTestProcessDuration = Nothing}


-- | How long it took to run the test process. - In response: present if
-- previously set. - In create\/update request: optional
ttTestProcessDuration :: Lens' TestTiming (Maybe Duration)
ttTestProcessDuration
  = lens _ttTestProcessDuration
      (\ s a -> s{_ttTestProcessDuration = a})

instance FromJSON TestTiming where
        parseJSON
          = withObject "TestTiming"
              (\ o ->
                 TestTiming' <$> (o .:? "testProcessDuration"))

instance ToJSON TestTiming where
        toJSON TestTiming'{..}
          = object
              (catMaybes
                 [("testProcessDuration" .=) <$>
                    _ttTestProcessDuration])

--
-- /See:/ 'screenshotCluster' smart constructor.
data ScreenshotCluster =
  ScreenshotCluster'
    { _scClusterId :: !(Maybe Text)
    , _scScreens   :: !(Maybe [Screen])
    , _scActivity  :: !(Maybe Text)
    , _scKeyScreen :: !(Maybe Screen)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScreenshotCluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scClusterId'
--
-- * 'scScreens'
--
-- * 'scActivity'
--
-- * 'scKeyScreen'
screenshotCluster
    :: ScreenshotCluster
screenshotCluster =
  ScreenshotCluster'
    { _scClusterId = Nothing
    , _scScreens = Nothing
    , _scActivity = Nothing
    , _scKeyScreen = Nothing
    }


-- | A unique identifier for the cluster.
scClusterId :: Lens' ScreenshotCluster (Maybe Text)
scClusterId
  = lens _scClusterId (\ s a -> s{_scClusterId = a})

-- | Full list of screens.
scScreens :: Lens' ScreenshotCluster [Screen]
scScreens
  = lens _scScreens (\ s a -> s{_scScreens = a}) .
      _Default
      . _Coerce

-- | A string that describes the activity of every screen in the cluster.
scActivity :: Lens' ScreenshotCluster (Maybe Text)
scActivity
  = lens _scActivity (\ s a -> s{_scActivity = a})

-- | A singular screen that represents the cluster as a whole. This screen
-- will act as the \"cover\" of the entire cluster. When users look at the
-- clusters, only the key screen from each cluster will be shown. Which
-- screen is the key screen is determined by the ClusteringAlgorithm
scKeyScreen :: Lens' ScreenshotCluster (Maybe Screen)
scKeyScreen
  = lens _scKeyScreen (\ s a -> s{_scKeyScreen = a})

instance FromJSON ScreenshotCluster where
        parseJSON
          = withObject "ScreenshotCluster"
              (\ o ->
                 ScreenshotCluster' <$>
                   (o .:? "clusterId") <*> (o .:? "screens" .!= mempty)
                     <*> (o .:? "activity")
                     <*> (o .:? "keyScreen"))

instance ToJSON ScreenshotCluster where
        toJSON ScreenshotCluster'{..}
          = object
              (catMaybes
                 [("clusterId" .=) <$> _scClusterId,
                  ("screens" .=) <$> _scScreens,
                  ("activity" .=) <$> _scActivity,
                  ("keyScreen" .=) <$> _scKeyScreen])

-- | Encapsulates the metadata for basic sample series represented by a line
-- chart
--
-- /See:/ 'basicPerfSampleSeries' smart constructor.
data BasicPerfSampleSeries =
  BasicPerfSampleSeries'
    { _bpssPerfUnit          :: !(Maybe BasicPerfSampleSeriesPerfUnit)
    , _bpssPerfMetricType    :: !(Maybe BasicPerfSampleSeriesPerfMetricType)
    , _bpssSampleSeriesLabel :: !(Maybe BasicPerfSampleSeriesSampleSeriesLabel)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BasicPerfSampleSeries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bpssPerfUnit'
--
-- * 'bpssPerfMetricType'
--
-- * 'bpssSampleSeriesLabel'
basicPerfSampleSeries
    :: BasicPerfSampleSeries
basicPerfSampleSeries =
  BasicPerfSampleSeries'
    { _bpssPerfUnit = Nothing
    , _bpssPerfMetricType = Nothing
    , _bpssSampleSeriesLabel = Nothing
    }


bpssPerfUnit :: Lens' BasicPerfSampleSeries (Maybe BasicPerfSampleSeriesPerfUnit)
bpssPerfUnit
  = lens _bpssPerfUnit (\ s a -> s{_bpssPerfUnit = a})

bpssPerfMetricType :: Lens' BasicPerfSampleSeries (Maybe BasicPerfSampleSeriesPerfMetricType)
bpssPerfMetricType
  = lens _bpssPerfMetricType
      (\ s a -> s{_bpssPerfMetricType = a})

bpssSampleSeriesLabel :: Lens' BasicPerfSampleSeries (Maybe BasicPerfSampleSeriesSampleSeriesLabel)
bpssSampleSeriesLabel
  = lens _bpssSampleSeriesLabel
      (\ s a -> s{_bpssSampleSeriesLabel = a})

instance FromJSON BasicPerfSampleSeries where
        parseJSON
          = withObject "BasicPerfSampleSeries"
              (\ o ->
                 BasicPerfSampleSeries' <$>
                   (o .:? "perfUnit") <*> (o .:? "perfMetricType") <*>
                     (o .:? "sampleSeriesLabel"))

instance ToJSON BasicPerfSampleSeries where
        toJSON BasicPerfSampleSeries'{..}
          = object
              (catMaybes
                 [("perfUnit" .=) <$> _bpssPerfUnit,
                  ("perfMetricType" .=) <$> _bpssPerfMetricType,
                  ("sampleSeriesLabel" .=) <$> _bpssSampleSeriesLabel])

-- | Stores rollup test status of multiple steps that were run as a group and
-- outcome of each individual step.
--
-- /See:/ 'primaryStep' smart constructor.
data PrimaryStep =
  PrimaryStep'
    { _psRollUp            :: !(Maybe PrimaryStepRollUp)
    , _psIndividualOutcome :: !(Maybe [IndividualOutcome])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PrimaryStep' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psRollUp'
--
-- * 'psIndividualOutcome'
primaryStep
    :: PrimaryStep
primaryStep = PrimaryStep' {_psRollUp = Nothing, _psIndividualOutcome = Nothing}


-- | Rollup test status of multiple steps that were run with the same
-- configuration as a group.
psRollUp :: Lens' PrimaryStep (Maybe PrimaryStepRollUp)
psRollUp = lens _psRollUp (\ s a -> s{_psRollUp = a})

-- | Step Id and outcome of each individual step.
psIndividualOutcome :: Lens' PrimaryStep [IndividualOutcome]
psIndividualOutcome
  = lens _psIndividualOutcome
      (\ s a -> s{_psIndividualOutcome = a})
      . _Default
      . _Coerce

instance FromJSON PrimaryStep where
        parseJSON
          = withObject "PrimaryStep"
              (\ o ->
                 PrimaryStep' <$>
                   (o .:? "rollUp") <*>
                     (o .:? "individualOutcome" .!= mempty))

instance ToJSON PrimaryStep where
        toJSON PrimaryStep'{..}
          = object
              (catMaybes
                 [("rollUp" .=) <$> _psRollUp,
                  ("individualOutcome" .=) <$> _psIndividualOutcome])

--
-- /See:/ 'skippedDetail' smart constructor.
data SkippedDetail =
  SkippedDetail'
    { _sdIncompatibleArchitecture :: !(Maybe Bool)
    , _sdIncompatibleAppVersion   :: !(Maybe Bool)
    , _sdIncompatibleDevice       :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SkippedDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdIncompatibleArchitecture'
--
-- * 'sdIncompatibleAppVersion'
--
-- * 'sdIncompatibleDevice'
skippedDetail
    :: SkippedDetail
skippedDetail =
  SkippedDetail'
    { _sdIncompatibleArchitecture = Nothing
    , _sdIncompatibleAppVersion = Nothing
    , _sdIncompatibleDevice = Nothing
    }


-- | If the App doesn\'t run on the specific architecture, for example, x86.
sdIncompatibleArchitecture :: Lens' SkippedDetail (Maybe Bool)
sdIncompatibleArchitecture
  = lens _sdIncompatibleArchitecture
      (\ s a -> s{_sdIncompatibleArchitecture = a})

-- | If the App doesn\'t support the specific API level.
sdIncompatibleAppVersion :: Lens' SkippedDetail (Maybe Bool)
sdIncompatibleAppVersion
  = lens _sdIncompatibleAppVersion
      (\ s a -> s{_sdIncompatibleAppVersion = a})

-- | If the requested OS version doesn\'t run on the specific device model.
sdIncompatibleDevice :: Lens' SkippedDetail (Maybe Bool)
sdIncompatibleDevice
  = lens _sdIncompatibleDevice
      (\ s a -> s{_sdIncompatibleDevice = a})

instance FromJSON SkippedDetail where
        parseJSON
          = withObject "SkippedDetail"
              (\ o ->
                 SkippedDetail' <$>
                   (o .:? "incompatibleArchitecture") <*>
                     (o .:? "incompatibleAppVersion")
                     <*> (o .:? "incompatibleDevice"))

instance ToJSON SkippedDetail where
        toJSON SkippedDetail'{..}
          = object
              (catMaybes
                 [("incompatibleArchitecture" .=) <$>
                    _sdIncompatibleArchitecture,
                  ("incompatibleAppVersion" .=) <$>
                    _sdIncompatibleAppVersion,
                  ("incompatibleDevice" .=) <$> _sdIncompatibleDevice])
