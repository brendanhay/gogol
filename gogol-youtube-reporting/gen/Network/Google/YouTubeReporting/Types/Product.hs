{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.YouTubeReporting.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.YouTubeReporting.Types.Product where

import           Network.Google.Prelude
import           Network.Google.YouTubeReporting.Types.Sum

-- | Response message for ReportingService.ListReports.
--
-- /See:/ 'listReportsResponse' smart constructor.
data ListReportsResponse = ListReportsResponse
    { _lrrNextPageToken :: !(Maybe Text)
    , _lrrReports       :: !(Maybe [Report])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListReportsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrNextPageToken'
--
-- * 'lrrReports'
listReportsResponse
    :: ListReportsResponse
listReportsResponse =
    ListReportsResponse
    { _lrrNextPageToken = Nothing
    , _lrrReports = Nothing
    }

-- | A token to retrieve next page of results. Pass this value in the
-- ListReportsRequest.page_token field in the subsequent call to
-- \`ListReports\` method to retrieve the next page of results.
lrrNextPageToken :: Lens' ListReportsResponse (Maybe Text)
lrrNextPageToken
  = lens _lrrNextPageToken
      (\ s a -> s{_lrrNextPageToken = a})

-- | The list of report types.
lrrReports :: Lens' ListReportsResponse [Report]
lrrReports
  = lens _lrrReports (\ s a -> s{_lrrReports = a}) .
      _Default
      . _Coerce

instance FromJSON ListReportsResponse where
        parseJSON
          = withObject "ListReportsResponse"
              (\ o ->
                 ListReportsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "reports" .!= mempty))

instance ToJSON ListReportsResponse where
        toJSON ListReportsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lrrNextPageToken,
                  ("reports" .=) <$> _lrrReports])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
    Empty
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty

instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty)

instance ToJSON Empty where
        toJSON = const emptyObject

-- | A report\'s metadata including the URL from which the report itself can
-- be downloaded.
--
-- /See:/ 'report' smart constructor.
data Report = Report
    { _rJobId       :: !(Maybe Text)
    , _rStartTime   :: !(Maybe Text)
    , _rDownloadURL :: !(Maybe Text)
    , _rEndTime     :: !(Maybe Text)
    , _rId          :: !(Maybe Text)
    , _rCreateTime  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Report' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rJobId'
--
-- * 'rStartTime'
--
-- * 'rDownloadURL'
--
-- * 'rEndTime'
--
-- * 'rId'
--
-- * 'rCreateTime'
report
    :: Report
report =
    Report
    { _rJobId = Nothing
    , _rStartTime = Nothing
    , _rDownloadURL = Nothing
    , _rEndTime = Nothing
    , _rId = Nothing
    , _rCreateTime = Nothing
    }

-- | The ID of the job that created this report.
rJobId :: Lens' Report (Maybe Text)
rJobId = lens _rJobId (\ s a -> s{_rJobId = a})

-- | The start of the time period that the report instance covers. The value
-- is inclusive.
rStartTime :: Lens' Report (Maybe Text)
rStartTime
  = lens _rStartTime (\ s a -> s{_rStartTime = a})

-- | The URL from which the report can be downloaded (max. 1000 characters).
rDownloadURL :: Lens' Report (Maybe Text)
rDownloadURL
  = lens _rDownloadURL (\ s a -> s{_rDownloadURL = a})

-- | The end of the time period that the report instance covers. The value is
-- exclusive.
rEndTime :: Lens' Report (Maybe Text)
rEndTime = lens _rEndTime (\ s a -> s{_rEndTime = a})

-- | The server-generated ID of the report.
rId :: Lens' Report (Maybe Text)
rId = lens _rId (\ s a -> s{_rId = a})

-- | The date\/time when this report was created.
rCreateTime :: Lens' Report (Maybe Text)
rCreateTime
  = lens _rCreateTime (\ s a -> s{_rCreateTime = a})

instance FromJSON Report where
        parseJSON
          = withObject "Report"
              (\ o ->
                 Report <$>
                   (o .:? "jobId") <*> (o .:? "startTime") <*>
                     (o .:? "downloadUrl")
                     <*> (o .:? "endTime")
                     <*> (o .:? "id")
                     <*> (o .:? "createTime"))

instance ToJSON Report where
        toJSON Report{..}
          = object
              (catMaybes
                 [("jobId" .=) <$> _rJobId,
                  ("startTime" .=) <$> _rStartTime,
                  ("downloadUrl" .=) <$> _rDownloadURL,
                  ("endTime" .=) <$> _rEndTime, ("id" .=) <$> _rId,
                  ("createTime" .=) <$> _rCreateTime])

-- | Response message for ReportingService.ListReportTypes.
--
-- /See:/ 'listReportTypesResponse' smart constructor.
data ListReportTypesResponse = ListReportTypesResponse
    { _lrtrNextPageToken :: !(Maybe Text)
    , _lrtrReportTypes   :: !(Maybe [ReportType])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListReportTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrtrNextPageToken'
--
-- * 'lrtrReportTypes'
listReportTypesResponse
    :: ListReportTypesResponse
listReportTypesResponse =
    ListReportTypesResponse
    { _lrtrNextPageToken = Nothing
    , _lrtrReportTypes = Nothing
    }

-- | A token to retrieve next page of results. Pass this value in the
-- ListReportTypesRequest.page_token field in the subsequent call to
-- \`ListReportTypes\` method to retrieve the next page of results.
lrtrNextPageToken :: Lens' ListReportTypesResponse (Maybe Text)
lrtrNextPageToken
  = lens _lrtrNextPageToken
      (\ s a -> s{_lrtrNextPageToken = a})

-- | The list of report types.
lrtrReportTypes :: Lens' ListReportTypesResponse [ReportType]
lrtrReportTypes
  = lens _lrtrReportTypes
      (\ s a -> s{_lrtrReportTypes = a})
      . _Default
      . _Coerce

instance FromJSON ListReportTypesResponse where
        parseJSON
          = withObject "ListReportTypesResponse"
              (\ o ->
                 ListReportTypesResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "reportTypes" .!= mempty))

instance ToJSON ListReportTypesResponse where
        toJSON ListReportTypesResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lrtrNextPageToken,
                  ("reportTypes" .=) <$> _lrtrReportTypes])

-- | Media resource.
--
-- /See:/ 'media' smart constructor.
newtype Media = Media
    { _mResourceName :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Media' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mResourceName'
media
    :: Media
media =
    Media
    { _mResourceName = Nothing
    }

-- | Name of the media resource.
mResourceName :: Lens' Media (Maybe Text)
mResourceName
  = lens _mResourceName
      (\ s a -> s{_mResourceName = a})

instance FromJSON Media where
        parseJSON
          = withObject "Media"
              (\ o -> Media <$> (o .:? "resourceName"))

instance ToJSON Media where
        toJSON Media{..}
          = object
              (catMaybes [("resourceName" .=) <$> _mResourceName])

-- | A job creating reports of a specific type.
--
-- /See:/ 'job' smart constructor.
data Job = Job
    { _jName          :: !(Maybe Text)
    , _jId            :: !(Maybe Text)
    , _jSystemManaged :: !(Maybe Bool)
    , _jReportTypeId  :: !(Maybe Text)
    , _jCreateTime    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Job' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jName'
--
-- * 'jId'
--
-- * 'jSystemManaged'
--
-- * 'jReportTypeId'
--
-- * 'jCreateTime'
job
    :: Job
job =
    Job
    { _jName = Nothing
    , _jId = Nothing
    , _jSystemManaged = Nothing
    , _jReportTypeId = Nothing
    , _jCreateTime = Nothing
    }

-- | The name of the job (max. 100 characters).
jName :: Lens' Job (Maybe Text)
jName = lens _jName (\ s a -> s{_jName = a})

-- | The server-generated ID of the job (max. 40 characters).
jId :: Lens' Job (Maybe Text)
jId = lens _jId (\ s a -> s{_jId = a})

-- | True if this a system-managed job that cannot be modified by the user;
-- otherwise false.
jSystemManaged :: Lens' Job (Maybe Bool)
jSystemManaged
  = lens _jSystemManaged
      (\ s a -> s{_jSystemManaged = a})

-- | The type of reports this job creates. Corresponds to the ID of a
-- ReportType.
jReportTypeId :: Lens' Job (Maybe Text)
jReportTypeId
  = lens _jReportTypeId
      (\ s a -> s{_jReportTypeId = a})

-- | The creation date\/time of the job.
jCreateTime :: Lens' Job (Maybe Text)
jCreateTime
  = lens _jCreateTime (\ s a -> s{_jCreateTime = a})

instance FromJSON Job where
        parseJSON
          = withObject "Job"
              (\ o ->
                 Job <$>
                   (o .:? "name") <*> (o .:? "id") <*>
                     (o .:? "systemManaged")
                     <*> (o .:? "reportTypeId")
                     <*> (o .:? "createTime"))

instance ToJSON Job where
        toJSON Job{..}
          = object
              (catMaybes
                 [("name" .=) <$> _jName, ("id" .=) <$> _jId,
                  ("systemManaged" .=) <$> _jSystemManaged,
                  ("reportTypeId" .=) <$> _jReportTypeId,
                  ("createTime" .=) <$> _jCreateTime])

-- | Response message for ReportingService.ListJobs.
--
-- /See:/ 'listJobsResponse' smart constructor.
data ListJobsResponse = ListJobsResponse
    { _ljrNextPageToken :: !(Maybe Text)
    , _ljrJobs          :: !(Maybe [Job])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljrNextPageToken'
--
-- * 'ljrJobs'
listJobsResponse
    :: ListJobsResponse
listJobsResponse =
    ListJobsResponse
    { _ljrNextPageToken = Nothing
    , _ljrJobs = Nothing
    }

-- | A token to retrieve next page of results. Pass this value in the
-- ListJobsRequest.page_token field in the subsequent call to \`ListJobs\`
-- method to retrieve the next page of results.
ljrNextPageToken :: Lens' ListJobsResponse (Maybe Text)
ljrNextPageToken
  = lens _ljrNextPageToken
      (\ s a -> s{_ljrNextPageToken = a})

-- | The list of jobs.
ljrJobs :: Lens' ListJobsResponse [Job]
ljrJobs
  = lens _ljrJobs (\ s a -> s{_ljrJobs = a}) . _Default
      . _Coerce

instance FromJSON ListJobsResponse where
        parseJSON
          = withObject "ListJobsResponse"
              (\ o ->
                 ListJobsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "jobs" .!= mempty))

instance ToJSON ListJobsResponse where
        toJSON ListJobsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ljrNextPageToken,
                  ("jobs" .=) <$> _ljrJobs])

-- | A report type.
--
-- /See:/ 'reportType' smart constructor.
data ReportType = ReportType
    { _rtName          :: !(Maybe Text)
    , _rtId            :: !(Maybe Text)
    , _rtSystemManaged :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtName'
--
-- * 'rtId'
--
-- * 'rtSystemManaged'
reportType
    :: ReportType
reportType =
    ReportType
    { _rtName = Nothing
    , _rtId = Nothing
    , _rtSystemManaged = Nothing
    }

-- | The name of the report type (max. 100 characters).
rtName :: Lens' ReportType (Maybe Text)
rtName = lens _rtName (\ s a -> s{_rtName = a})

-- | The ID of the report type (max. 100 characters).
rtId :: Lens' ReportType (Maybe Text)
rtId = lens _rtId (\ s a -> s{_rtId = a})

-- | True if this a system-managed report type; otherwise false. Reporting
-- jobs for system-managed report types are created automatically and can
-- thus not be used in the \`CreateJob\` method.
rtSystemManaged :: Lens' ReportType (Maybe Bool)
rtSystemManaged
  = lens _rtSystemManaged
      (\ s a -> s{_rtSystemManaged = a})

instance FromJSON ReportType where
        parseJSON
          = withObject "ReportType"
              (\ o ->
                 ReportType <$>
                   (o .:? "name") <*> (o .:? "id") <*>
                     (o .:? "systemManaged"))

instance ToJSON ReportType where
        toJSON ReportType{..}
          = object
              (catMaybes
                 [("name" .=) <$> _rtName, ("id" .=) <$> _rtId,
                  ("systemManaged" .=) <$> _rtSystemManaged])
