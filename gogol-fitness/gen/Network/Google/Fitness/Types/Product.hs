{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Fitness.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Fitness.Types.Product where

import           Network.Google.Fitness.Types.Sum
import           Network.Google.Prelude

-- | A dataset represents a projection container for data points. They do not
-- carry any info of their own. Datasets represent a set of data points
-- from a particular data source. A data point can be found in more than
-- one dataset.
--
-- /See:/ 'dataSet' smart constructor.
data DataSet =
  DataSet'
    { _dsNextPageToken  :: !(Maybe Text)
    , _dsDataSourceId   :: !(Maybe Text)
    , _dsPoint          :: !(Maybe [DataPoint])
    , _dsMinStartTimeNs :: !(Maybe (Textual Int64))
    , _dsMaxEndTimeNs   :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsNextPageToken'
--
-- * 'dsDataSourceId'
--
-- * 'dsPoint'
--
-- * 'dsMinStartTimeNs'
--
-- * 'dsMaxEndTimeNs'
dataSet
    :: DataSet
dataSet =
  DataSet'
    { _dsNextPageToken = Nothing
    , _dsDataSourceId = Nothing
    , _dsPoint = Nothing
    , _dsMinStartTimeNs = Nothing
    , _dsMaxEndTimeNs = Nothing
    }


-- | This token will be set when a dataset is received in response to a GET
-- request and the dataset is too large to be included in a single
-- response. Provide this value in a subsequent GET request to return the
-- next page of data points within this dataset.
dsNextPageToken :: Lens' DataSet (Maybe Text)
dsNextPageToken
  = lens _dsNextPageToken
      (\ s a -> s{_dsNextPageToken = a})

-- | The data stream ID of the data source that created the points in this
-- dataset.
dsDataSourceId :: Lens' DataSet (Maybe Text)
dsDataSourceId
  = lens _dsDataSourceId
      (\ s a -> s{_dsDataSourceId = a})

-- | A partial list of data points contained in the dataset, ordered by
-- largest endTimeNanos first. This list is considered complete when
-- retrieving a small dataset and partial when patching a dataset or
-- retrieving a dataset that is too large to include in a single response.
dsPoint :: Lens' DataSet [DataPoint]
dsPoint
  = lens _dsPoint (\ s a -> s{_dsPoint = a}) . _Default
      . _Coerce

-- | The smallest start time of all data points in this possibly partial
-- representation of the dataset. Time is in nanoseconds from epoch. This
-- should also match the first part of the dataset identifier.
dsMinStartTimeNs :: Lens' DataSet (Maybe Int64)
dsMinStartTimeNs
  = lens _dsMinStartTimeNs
      (\ s a -> s{_dsMinStartTimeNs = a})
      . mapping _Coerce

-- | The largest end time of all data points in this possibly partial
-- representation of the dataset. Time is in nanoseconds from epoch. This
-- should also match the second part of the dataset identifier.
dsMaxEndTimeNs :: Lens' DataSet (Maybe Int64)
dsMaxEndTimeNs
  = lens _dsMaxEndTimeNs
      (\ s a -> s{_dsMaxEndTimeNs = a})
      . mapping _Coerce

instance FromJSON DataSet where
        parseJSON
          = withObject "DataSet"
              (\ o ->
                 DataSet' <$>
                   (o .:? "nextPageToken") <*> (o .:? "dataSourceId")
                     <*> (o .:? "point" .!= mempty)
                     <*> (o .:? "minStartTimeNs")
                     <*> (o .:? "maxEndTimeNs"))

instance ToJSON DataSet where
        toJSON DataSet'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _dsNextPageToken,
                  ("dataSourceId" .=) <$> _dsDataSourceId,
                  ("point" .=) <$> _dsPoint,
                  ("minStartTimeNs" .=) <$> _dsMinStartTimeNs,
                  ("maxEndTimeNs" .=) <$> _dsMaxEndTimeNs])

-- |
--
-- /See:/ 'application' smart constructor.
data Application =
  Application'
    { _aPackageName :: !(Maybe Text)
    , _aName        :: !(Maybe Text)
    , _aVersion     :: !(Maybe Text)
    , _aDetailsURL  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Application' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aPackageName'
--
-- * 'aName'
--
-- * 'aVersion'
--
-- * 'aDetailsURL'
application
    :: Application
application =
  Application'
    { _aPackageName = Nothing
    , _aName = Nothing
    , _aVersion = Nothing
    , _aDetailsURL = Nothing
    }


-- | Package name for this application. This is used as a unique identifier
-- when created by Android applications, but cannot be specified by REST
-- clients. REST clients will have their developer project number reflected
-- into the Data Source data stream IDs, instead of the packageName.
aPackageName :: Lens' Application (Maybe Text)
aPackageName
  = lens _aPackageName (\ s a -> s{_aPackageName = a})

-- | The name of this application. This is required for REST clients, but we
-- do not enforce uniqueness of this name. It is provided as a matter of
-- convenience for other developers who would like to identify which REST
-- created an Application or Data Source.
aName :: Lens' Application (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | Version of the application. You should update this field whenever the
-- application changes in a way that affects the computation of the data.
aVersion :: Lens' Application (Maybe Text)
aVersion = lens _aVersion (\ s a -> s{_aVersion = a})

-- | An optional URI that can be used to link back to the application.
aDetailsURL :: Lens' Application (Maybe Text)
aDetailsURL
  = lens _aDetailsURL (\ s a -> s{_aDetailsURL = a})

instance FromJSON Application where
        parseJSON
          = withObject "Application"
              (\ o ->
                 Application' <$>
                   (o .:? "packageName") <*> (o .:? "name") <*>
                     (o .:? "version")
                     <*> (o .:? "detailsUrl"))

instance ToJSON Application where
        toJSON Application'{..}
          = object
              (catMaybes
                 [("packageName" .=) <$> _aPackageName,
                  ("name" .=) <$> _aName, ("version" .=) <$> _aVersion,
                  ("detailsUrl" .=) <$> _aDetailsURL])

--
-- /See:/ 'aggregateResponse' smart constructor.
newtype AggregateResponse =
  AggregateResponse'
    { _arBucket :: Maybe [AggregateBucket]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AggregateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arBucket'
aggregateResponse
    :: AggregateResponse
aggregateResponse = AggregateResponse' {_arBucket = Nothing}


-- | A list of buckets containing the aggregated data.
arBucket :: Lens' AggregateResponse [AggregateBucket]
arBucket
  = lens _arBucket (\ s a -> s{_arBucket = a}) .
      _Default
      . _Coerce

instance FromJSON AggregateResponse where
        parseJSON
          = withObject "AggregateResponse"
              (\ o ->
                 AggregateResponse' <$> (o .:? "bucket" .!= mempty))

instance ToJSON AggregateResponse where
        toJSON AggregateResponse'{..}
          = object (catMaybes [("bucket" .=) <$> _arBucket])

-- | The specification of which data to aggregate.
--
-- /See:/ 'aggregateBy' smart constructor.
data AggregateBy =
  AggregateBy'
    { _abDataTypeName :: !(Maybe Text)
    , _abDataSourceId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AggregateBy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'abDataTypeName'
--
-- * 'abDataSourceId'
aggregateBy
    :: AggregateBy
aggregateBy =
  AggregateBy' {_abDataTypeName = Nothing, _abDataSourceId = Nothing}


-- | The data type to aggregate. All data sources providing this data type
-- will contribute data to the aggregation. The response will contain a
-- single dataset for this data type name. The dataset will have a data
-- source ID of derived:com.google.:com.google.android.gms:aggregated
abDataTypeName :: Lens' AggregateBy (Maybe Text)
abDataTypeName
  = lens _abDataTypeName
      (\ s a -> s{_abDataTypeName = a})

-- | A data source ID to aggregate. Mutually exclusive of dataTypeName. Only
-- data from the specified data source ID will be included in the
-- aggregation. The dataset in the response will have the same data source
-- ID.
abDataSourceId :: Lens' AggregateBy (Maybe Text)
abDataSourceId
  = lens _abDataSourceId
      (\ s a -> s{_abDataSourceId = a})

instance FromJSON AggregateBy where
        parseJSON
          = withObject "AggregateBy"
              (\ o ->
                 AggregateBy' <$>
                   (o .:? "dataTypeName") <*> (o .:? "dataSourceId"))

instance ToJSON AggregateBy where
        toJSON AggregateBy'{..}
          = object
              (catMaybes
                 [("dataTypeName" .=) <$> _abDataTypeName,
                  ("dataSourceId" .=) <$> _abDataSourceId])

--
-- /See:/ 'bucketByActivity' smart constructor.
data BucketByActivity =
  BucketByActivity'
    { _bbaMinDurationMillis    :: !(Maybe (Textual Int64))
    , _bbaActivityDataSourceId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BucketByActivity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbaMinDurationMillis'
--
-- * 'bbaActivityDataSourceId'
bucketByActivity
    :: BucketByActivity
bucketByActivity =
  BucketByActivity'
    {_bbaMinDurationMillis = Nothing, _bbaActivityDataSourceId = Nothing}


-- | Specifies that only activity segments of duration longer than
-- minDurationMillis are considered and used as a container for aggregated
-- data.
bbaMinDurationMillis :: Lens' BucketByActivity (Maybe Int64)
bbaMinDurationMillis
  = lens _bbaMinDurationMillis
      (\ s a -> s{_bbaMinDurationMillis = a})
      . mapping _Coerce

-- | The default activity stream will be used if a specific
-- activityDataSourceId is not specified.
bbaActivityDataSourceId :: Lens' BucketByActivity (Maybe Text)
bbaActivityDataSourceId
  = lens _bbaActivityDataSourceId
      (\ s a -> s{_bbaActivityDataSourceId = a})

instance FromJSON BucketByActivity where
        parseJSON
          = withObject "BucketByActivity"
              (\ o ->
                 BucketByActivity' <$>
                   (o .:? "minDurationMillis") <*>
                     (o .:? "activityDataSourceId"))

instance ToJSON BucketByActivity where
        toJSON BucketByActivity'{..}
          = object
              (catMaybes
                 [("minDurationMillis" .=) <$> _bbaMinDurationMillis,
                  ("activityDataSourceId" .=) <$>
                    _bbaActivityDataSourceId])

-- | Next id: 10
--
-- /See:/ 'aggregateRequest' smart constructor.
data AggregateRequest =
  AggregateRequest'
    { _arEndTimeMillis               :: !(Maybe (Textual Int64))
    , _arFilteredDataQualityStandard :: !(Maybe [AggregateRequestFilteredDataQualityStandardItem])
    , _arAggregateBy                 :: !(Maybe [AggregateBy])
    , _arBucketBySession             :: !(Maybe BucketBySession)
    , _arBucketByActivityType        :: !(Maybe BucketByActivity)
    , _arBucketByTime                :: !(Maybe BucketByTime)
    , _arStartTimeMillis             :: !(Maybe (Textual Int64))
    , _arBucketByActivitySegment     :: !(Maybe BucketByActivity)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AggregateRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arEndTimeMillis'
--
-- * 'arFilteredDataQualityStandard'
--
-- * 'arAggregateBy'
--
-- * 'arBucketBySession'
--
-- * 'arBucketByActivityType'
--
-- * 'arBucketByTime'
--
-- * 'arStartTimeMillis'
--
-- * 'arBucketByActivitySegment'
aggregateRequest
    :: AggregateRequest
aggregateRequest =
  AggregateRequest'
    { _arEndTimeMillis = Nothing
    , _arFilteredDataQualityStandard = Nothing
    , _arAggregateBy = Nothing
    , _arBucketBySession = Nothing
    , _arBucketByActivityType = Nothing
    , _arBucketByTime = Nothing
    , _arStartTimeMillis = Nothing
    , _arBucketByActivitySegment = Nothing
    }


-- | The end of a window of time. Data that intersects with this time window
-- will be aggregated. The time is in milliseconds since epoch, inclusive.
arEndTimeMillis :: Lens' AggregateRequest (Maybe Int64)
arEndTimeMillis
  = lens _arEndTimeMillis
      (\ s a -> s{_arEndTimeMillis = a})
      . mapping _Coerce

-- | DO NOT POPULATE THIS FIELD. As data quality standards are deprecated,
-- filling it in will result in no data sources being returned. It will be
-- removed in a future version entirely.
arFilteredDataQualityStandard :: Lens' AggregateRequest [AggregateRequestFilteredDataQualityStandardItem]
arFilteredDataQualityStandard
  = lens _arFilteredDataQualityStandard
      (\ s a -> s{_arFilteredDataQualityStandard = a})
      . _Default
      . _Coerce

-- | The specification of data to be aggregated. At least one aggregateBy
-- spec must be provided. All data that is specified will be aggregated
-- using the same bucketing criteria. There will be one dataset in the
-- response for every aggregateBy spec.
arAggregateBy :: Lens' AggregateRequest [AggregateBy]
arAggregateBy
  = lens _arAggregateBy
      (\ s a -> s{_arAggregateBy = a})
      . _Default
      . _Coerce

-- | Specifies that data be aggregated by user sessions. Data that does not
-- fall within the time range of a session will not be included in the
-- response. Mutually exclusive of other bucketing specifications.
arBucketBySession :: Lens' AggregateRequest (Maybe BucketBySession)
arBucketBySession
  = lens _arBucketBySession
      (\ s a -> s{_arBucketBySession = a})

-- | Specifies that data be aggregated by the type of activity being
-- performed when the data was recorded. All data that was recorded during
-- a certain activity type (for the given time range) will be aggregated
-- into the same bucket. Data that was recorded while the user was not
-- active will not be included in the response. Mutually exclusive of other
-- bucketing specifications.
arBucketByActivityType :: Lens' AggregateRequest (Maybe BucketByActivity)
arBucketByActivityType
  = lens _arBucketByActivityType
      (\ s a -> s{_arBucketByActivityType = a})

-- | Specifies that data be aggregated by a single time interval. Mutually
-- exclusive of other bucketing specifications.
arBucketByTime :: Lens' AggregateRequest (Maybe BucketByTime)
arBucketByTime
  = lens _arBucketByTime
      (\ s a -> s{_arBucketByTime = a})

-- | The start of a window of time. Data that intersects with this time
-- window will be aggregated. The time is in milliseconds since epoch,
-- inclusive.
arStartTimeMillis :: Lens' AggregateRequest (Maybe Int64)
arStartTimeMillis
  = lens _arStartTimeMillis
      (\ s a -> s{_arStartTimeMillis = a})
      . mapping _Coerce

-- | Specifies that data be aggregated each activity segment recored for a
-- user. Similar to bucketByActivitySegment, but bucketing is done for each
-- activity segment rather than all segments of the same type. Mutually
-- exclusive of other bucketing specifications.
arBucketByActivitySegment :: Lens' AggregateRequest (Maybe BucketByActivity)
arBucketByActivitySegment
  = lens _arBucketByActivitySegment
      (\ s a -> s{_arBucketByActivitySegment = a})

instance FromJSON AggregateRequest where
        parseJSON
          = withObject "AggregateRequest"
              (\ o ->
                 AggregateRequest' <$>
                   (o .:? "endTimeMillis") <*>
                     (o .:? "filteredDataQualityStandard" .!= mempty)
                     <*> (o .:? "aggregateBy" .!= mempty)
                     <*> (o .:? "bucketBySession")
                     <*> (o .:? "bucketByActivityType")
                     <*> (o .:? "bucketByTime")
                     <*> (o .:? "startTimeMillis")
                     <*> (o .:? "bucketByActivitySegment"))

instance ToJSON AggregateRequest where
        toJSON AggregateRequest'{..}
          = object
              (catMaybes
                 [("endTimeMillis" .=) <$> _arEndTimeMillis,
                  ("filteredDataQualityStandard" .=) <$>
                    _arFilteredDataQualityStandard,
                  ("aggregateBy" .=) <$> _arAggregateBy,
                  ("bucketBySession" .=) <$> _arBucketBySession,
                  ("bucketByActivityType" .=) <$>
                    _arBucketByActivityType,
                  ("bucketByTime" .=) <$> _arBucketByTime,
                  ("startTimeMillis" .=) <$> _arStartTimeMillis,
                  ("bucketByActivitySegment" .=) <$>
                    _arBucketByActivitySegment])

-- | Representation of an integrated device (such as a phone or a wearable)
-- that can hold sensors. Each sensor is exposed as a data source. The main
-- purpose of the device information contained in this class is to identify
-- the hardware of a particular data source. This can be useful in
-- different ways, including: - Distinguishing two similar sensors on
-- different devices (the step counter on two nexus 5 phones, for instance)
-- - Display the source of data to the user (by using the device make \/
-- model) - Treat data differently depending on sensor type (accelerometers
-- on a watch may give different patterns than those on a phone) - Build
-- different analysis models for each device\/version.
--
-- /See:/ 'device' smart constructor.
data Device =
  Device'
    { _dManufacturer :: !(Maybe Text)
    , _dUid          :: !(Maybe Text)
    , _dModel        :: !(Maybe Text)
    , _dVersion      :: !(Maybe Text)
    , _dType         :: !(Maybe DeviceType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Device' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dManufacturer'
--
-- * 'dUid'
--
-- * 'dModel'
--
-- * 'dVersion'
--
-- * 'dType'
device
    :: Device
device =
  Device'
    { _dManufacturer = Nothing
    , _dUid = Nothing
    , _dModel = Nothing
    , _dVersion = Nothing
    , _dType = Nothing
    }


-- | Manufacturer of the product\/hardware.
dManufacturer :: Lens' Device (Maybe Text)
dManufacturer
  = lens _dManufacturer
      (\ s a -> s{_dManufacturer = a})

-- | The serial number or other unique ID for the hardware. This field is
-- obfuscated when read by any REST or Android client that did not create
-- the data source. Only the data source creator will see the uid field in
-- clear and normal form.
dUid :: Lens' Device (Maybe Text)
dUid = lens _dUid (\ s a -> s{_dUid = a})

-- | End-user visible model name for the device.
dModel :: Lens' Device (Maybe Text)
dModel = lens _dModel (\ s a -> s{_dModel = a})

-- | Version string for the device hardware\/software.
dVersion :: Lens' Device (Maybe Text)
dVersion = lens _dVersion (\ s a -> s{_dVersion = a})

-- | A constant representing the type of the device.
dType :: Lens' Device (Maybe DeviceType)
dType = lens _dType (\ s a -> s{_dType = a})

instance FromJSON Device where
        parseJSON
          = withObject "Device"
              (\ o ->
                 Device' <$>
                   (o .:? "manufacturer") <*> (o .:? "uid") <*>
                     (o .:? "model")
                     <*> (o .:? "version")
                     <*> (o .:? "type"))

instance ToJSON Device where
        toJSON Device'{..}
          = object
              (catMaybes
                 [("manufacturer" .=) <$> _dManufacturer,
                  ("uid" .=) <$> _dUid, ("model" .=) <$> _dModel,
                  ("version" .=) <$> _dVersion,
                  ("type" .=) <$> _dType])

-- | Holder object for the value of a single field in a data point. A field
-- value has a particular format and is only ever set to one of an integer
-- or a floating point value. LINT.IfChange
--
-- /See:/ 'value' smart constructor.
data Value =
  Value'
    { _vMapVal    :: !(Maybe [ValueMapValEntry])
    , _vFpVal     :: !(Maybe (Textual Double))
    , _vIntVal    :: !(Maybe (Textual Int32))
    , _vStringVal :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Value' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vMapVal'
--
-- * 'vFpVal'
--
-- * 'vIntVal'
--
-- * 'vStringVal'
value
    :: Value
value =
  Value'
    { _vMapVal = Nothing
    , _vFpVal = Nothing
    , _vIntVal = Nothing
    , _vStringVal = Nothing
    }


-- | Map value. The valid key space and units for the corresponding value of
-- each entry should be documented as part of the data type definition.
-- Keys should be kept small whenever possible. Data streams with large
-- keys and high data frequency may be down sampled.
vMapVal :: Lens' Value [ValueMapValEntry]
vMapVal
  = lens _vMapVal (\ s a -> s{_vMapVal = a}) . _Default
      . _Coerce

-- | Floating point value. When this is set, other values must not be set.
vFpVal :: Lens' Value (Maybe Double)
vFpVal
  = lens _vFpVal (\ s a -> s{_vFpVal = a}) .
      mapping _Coerce

-- | Integer value. When this is set, other values must not be set.
vIntVal :: Lens' Value (Maybe Int32)
vIntVal
  = lens _vIntVal (\ s a -> s{_vIntVal = a}) .
      mapping _Coerce

-- | String value. When this is set, other values must not be set. Strings
-- should be kept small whenever possible. Data streams with large string
-- values and high data frequency may be down sampled.
vStringVal :: Lens' Value (Maybe Text)
vStringVal
  = lens _vStringVal (\ s a -> s{_vStringVal = a})

instance FromJSON Value where
        parseJSON
          = withObject "Value"
              (\ o ->
                 Value' <$>
                   (o .:? "mapVal" .!= mempty) <*> (o .:? "fpVal") <*>
                     (o .:? "intVal")
                     <*> (o .:? "stringVal"))

instance ToJSON Value where
        toJSON Value'{..}
          = object
              (catMaybes
                 [("mapVal" .=) <$> _vMapVal,
                  ("fpVal" .=) <$> _vFpVal, ("intVal" .=) <$> _vIntVal,
                  ("stringVal" .=) <$> _vStringVal])

--
-- /See:/ 'bucketBySession' smart constructor.
newtype BucketBySession =
  BucketBySession'
    { _bbsMinDurationMillis :: Maybe (Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BucketBySession' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbsMinDurationMillis'
bucketBySession
    :: BucketBySession
bucketBySession = BucketBySession' {_bbsMinDurationMillis = Nothing}


-- | Specifies that only sessions of duration longer than minDurationMillis
-- are considered and used as a container for aggregated data.
bbsMinDurationMillis :: Lens' BucketBySession (Maybe Int64)
bbsMinDurationMillis
  = lens _bbsMinDurationMillis
      (\ s a -> s{_bbsMinDurationMillis = a})
      . mapping _Coerce

instance FromJSON BucketBySession where
        parseJSON
          = withObject "BucketBySession"
              (\ o ->
                 BucketBySession' <$> (o .:? "minDurationMillis"))

instance ToJSON BucketBySession where
        toJSON BucketBySession'{..}
          = object
              (catMaybes
                 [("minDurationMillis" .=) <$> _bbsMinDurationMillis])

-- | Represents a single data point, generated by a particular data source. A
-- data point holds a value for each field, an end timestamp and an
-- optional start time. The exact semantics of each of these attributes are
-- specified in the documentation for the particular data type. A data
-- point can represent an instantaneous measurement, reading or input
-- observation, as well as averages or aggregates over a time interval.
-- Check the data type documentation to determine which is the case for a
-- particular data type. Data points always contain one value for each
-- field of the data type.
--
-- /See:/ 'dataPoint' smart constructor.
data DataPoint =
  DataPoint'
    { _dpOriginDataSourceId    :: !(Maybe Text)
    , _dpRawTimestampNanos     :: !(Maybe (Textual Int64))
    , _dpDataTypeName          :: !(Maybe Text)
    , _dpValue                 :: !(Maybe [Value])
    , _dpComputationTimeMillis :: !(Maybe (Textual Int64))
    , _dpEndTimeNanos          :: !(Maybe (Textual Int64))
    , _dpModifiedTimeMillis    :: !(Maybe (Textual Int64))
    , _dpStartTimeNanos        :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataPoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpOriginDataSourceId'
--
-- * 'dpRawTimestampNanos'
--
-- * 'dpDataTypeName'
--
-- * 'dpValue'
--
-- * 'dpComputationTimeMillis'
--
-- * 'dpEndTimeNanos'
--
-- * 'dpModifiedTimeMillis'
--
-- * 'dpStartTimeNanos'
dataPoint
    :: DataPoint
dataPoint =
  DataPoint'
    { _dpOriginDataSourceId = Nothing
    , _dpRawTimestampNanos = Nothing
    , _dpDataTypeName = Nothing
    , _dpValue = Nothing
    , _dpComputationTimeMillis = Nothing
    , _dpEndTimeNanos = Nothing
    , _dpModifiedTimeMillis = Nothing
    , _dpStartTimeNanos = Nothing
    }


-- | If the data point is contained in a dataset for a derived data source,
-- this field will be populated with the data source stream ID that created
-- the data point originally.
dpOriginDataSourceId :: Lens' DataPoint (Maybe Text)
dpOriginDataSourceId
  = lens _dpOriginDataSourceId
      (\ s a -> s{_dpOriginDataSourceId = a})

-- | The raw timestamp from the original SensorEvent.
dpRawTimestampNanos :: Lens' DataPoint (Maybe Int64)
dpRawTimestampNanos
  = lens _dpRawTimestampNanos
      (\ s a -> s{_dpRawTimestampNanos = a})
      . mapping _Coerce

-- | The data type defining the format of the values in this data point.
dpDataTypeName :: Lens' DataPoint (Maybe Text)
dpDataTypeName
  = lens _dpDataTypeName
      (\ s a -> s{_dpDataTypeName = a})

-- | Values of each data type field for the data point. It is expected that
-- each value corresponding to a data type field will occur in the same
-- order that the field is listed with in the data type specified in a data
-- source. Only one of integer and floating point fields will be populated,
-- depending on the format enum value within data source\'s type field.
dpValue :: Lens' DataPoint [Value]
dpValue
  = lens _dpValue (\ s a -> s{_dpValue = a}) . _Default
      . _Coerce

-- | DO NOT USE THIS FIELD. It is ignored, and not stored.
dpComputationTimeMillis :: Lens' DataPoint (Maybe Int64)
dpComputationTimeMillis
  = lens _dpComputationTimeMillis
      (\ s a -> s{_dpComputationTimeMillis = a})
      . mapping _Coerce

-- | The end time of the interval represented by this data point, in
-- nanoseconds since epoch.
dpEndTimeNanos :: Lens' DataPoint (Maybe Int64)
dpEndTimeNanos
  = lens _dpEndTimeNanos
      (\ s a -> s{_dpEndTimeNanos = a})
      . mapping _Coerce

-- | Indicates the last time this data point was modified. Useful only in
-- contexts where we are listing the data changes, rather than representing
-- the current state of the data.
dpModifiedTimeMillis :: Lens' DataPoint (Maybe Int64)
dpModifiedTimeMillis
  = lens _dpModifiedTimeMillis
      (\ s a -> s{_dpModifiedTimeMillis = a})
      . mapping _Coerce

-- | The start time of the interval represented by this data point, in
-- nanoseconds since epoch.
dpStartTimeNanos :: Lens' DataPoint (Maybe Int64)
dpStartTimeNanos
  = lens _dpStartTimeNanos
      (\ s a -> s{_dpStartTimeNanos = a})
      . mapping _Coerce

instance FromJSON DataPoint where
        parseJSON
          = withObject "DataPoint"
              (\ o ->
                 DataPoint' <$>
                   (o .:? "originDataSourceId") <*>
                     (o .:? "rawTimestampNanos")
                     <*> (o .:? "dataTypeName")
                     <*> (o .:? "value" .!= mempty)
                     <*> (o .:? "computationTimeMillis")
                     <*> (o .:? "endTimeNanos")
                     <*> (o .:? "modifiedTimeMillis")
                     <*> (o .:? "startTimeNanos"))

instance ToJSON DataPoint where
        toJSON DataPoint'{..}
          = object
              (catMaybes
                 [("originDataSourceId" .=) <$> _dpOriginDataSourceId,
                  ("rawTimestampNanos" .=) <$> _dpRawTimestampNanos,
                  ("dataTypeName" .=) <$> _dpDataTypeName,
                  ("value" .=) <$> _dpValue,
                  ("computationTimeMillis" .=) <$>
                    _dpComputationTimeMillis,
                  ("endTimeNanos" .=) <$> _dpEndTimeNanos,
                  ("modifiedTimeMillis" .=) <$> _dpModifiedTimeMillis,
                  ("startTimeNanos" .=) <$> _dpStartTimeNanos])

--
-- /See:/ 'listSessionsResponse' smart constructor.
data ListSessionsResponse =
  ListSessionsResponse'
    { _lsrNextPageToken  :: !(Maybe Text)
    , _lsrDeletedSession :: !(Maybe [Session])
    , _lsrHasMoreData    :: !(Maybe Bool)
    , _lsrSession        :: !(Maybe [Session])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListSessionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrNextPageToken'
--
-- * 'lsrDeletedSession'
--
-- * 'lsrHasMoreData'
--
-- * 'lsrSession'
listSessionsResponse
    :: ListSessionsResponse
listSessionsResponse =
  ListSessionsResponse'
    { _lsrNextPageToken = Nothing
    , _lsrDeletedSession = Nothing
    , _lsrHasMoreData = Nothing
    , _lsrSession = Nothing
    }


-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results.
lsrNextPageToken :: Lens' ListSessionsResponse (Maybe Text)
lsrNextPageToken
  = lens _lsrNextPageToken
      (\ s a -> s{_lsrNextPageToken = a})

-- | If includeDeleted is set to true in the request, this list will contain
-- sessions deleted with original end times that are within the startTime
-- and endTime frame.
lsrDeletedSession :: Lens' ListSessionsResponse [Session]
lsrDeletedSession
  = lens _lsrDeletedSession
      (\ s a -> s{_lsrDeletedSession = a})
      . _Default
      . _Coerce

-- | Flag to indicate server has more data to transfer
lsrHasMoreData :: Lens' ListSessionsResponse (Maybe Bool)
lsrHasMoreData
  = lens _lsrHasMoreData
      (\ s a -> s{_lsrHasMoreData = a})

-- | Sessions with an end time that is between startTime and endTime of the
-- request.
lsrSession :: Lens' ListSessionsResponse [Session]
lsrSession
  = lens _lsrSession (\ s a -> s{_lsrSession = a}) .
      _Default
      . _Coerce

instance FromJSON ListSessionsResponse where
        parseJSON
          = withObject "ListSessionsResponse"
              (\ o ->
                 ListSessionsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "deletedSession" .!= mempty)
                     <*> (o .:? "hasMoreData")
                     <*> (o .:? "session" .!= mempty))

instance ToJSON ListSessionsResponse where
        toJSON ListSessionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsrNextPageToken,
                  ("deletedSession" .=) <$> _lsrDeletedSession,
                  ("hasMoreData" .=) <$> _lsrHasMoreData,
                  ("session" .=) <$> _lsrSession])

--
-- /See:/ 'aggregateBucket' smart constructor.
data AggregateBucket =
  AggregateBucket'
    { _abEndTimeMillis   :: !(Maybe (Textual Int64))
    , _abDataSet         :: !(Maybe [DataSet])
    , _abActivity        :: !(Maybe (Textual Int32))
    , _abType            :: !(Maybe AggregateBucketType)
    , _abStartTimeMillis :: !(Maybe (Textual Int64))
    , _abSession         :: !(Maybe Session)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AggregateBucket' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'abEndTimeMillis'
--
-- * 'abDataSet'
--
-- * 'abActivity'
--
-- * 'abType'
--
-- * 'abStartTimeMillis'
--
-- * 'abSession'
aggregateBucket
    :: AggregateBucket
aggregateBucket =
  AggregateBucket'
    { _abEndTimeMillis = Nothing
    , _abDataSet = Nothing
    , _abActivity = Nothing
    , _abType = Nothing
    , _abStartTimeMillis = Nothing
    , _abSession = Nothing
    }


-- | The end time for the aggregated data, in milliseconds since epoch,
-- inclusive.
abEndTimeMillis :: Lens' AggregateBucket (Maybe Int64)
abEndTimeMillis
  = lens _abEndTimeMillis
      (\ s a -> s{_abEndTimeMillis = a})
      . mapping _Coerce

-- | There will be one dataset per AggregateBy in the request.
abDataSet :: Lens' AggregateBucket [DataSet]
abDataSet
  = lens _abDataSet (\ s a -> s{_abDataSet = a}) .
      _Default
      . _Coerce

-- | Available for Bucket.Type.ACTIVITY_TYPE, Bucket.Type.ACTIVITY_SEGMENT
abActivity :: Lens' AggregateBucket (Maybe Int32)
abActivity
  = lens _abActivity (\ s a -> s{_abActivity = a}) .
      mapping _Coerce

-- | The type of a bucket signifies how the data aggregation is performed in
-- the bucket.
abType :: Lens' AggregateBucket (Maybe AggregateBucketType)
abType = lens _abType (\ s a -> s{_abType = a})

-- | The start time for the aggregated data, in milliseconds since epoch,
-- inclusive.
abStartTimeMillis :: Lens' AggregateBucket (Maybe Int64)
abStartTimeMillis
  = lens _abStartTimeMillis
      (\ s a -> s{_abStartTimeMillis = a})
      . mapping _Coerce

-- | Available for Bucket.Type.SESSION
abSession :: Lens' AggregateBucket (Maybe Session)
abSession
  = lens _abSession (\ s a -> s{_abSession = a})

instance FromJSON AggregateBucket where
        parseJSON
          = withObject "AggregateBucket"
              (\ o ->
                 AggregateBucket' <$>
                   (o .:? "endTimeMillis") <*>
                     (o .:? "dataset" .!= mempty)
                     <*> (o .:? "activity")
                     <*> (o .:? "type")
                     <*> (o .:? "startTimeMillis")
                     <*> (o .:? "session"))

instance ToJSON AggregateBucket where
        toJSON AggregateBucket'{..}
          = object
              (catMaybes
                 [("endTimeMillis" .=) <$> _abEndTimeMillis,
                  ("dataset" .=) <$> _abDataSet,
                  ("activity" .=) <$> _abActivity,
                  ("type" .=) <$> _abType,
                  ("startTimeMillis" .=) <$> _abStartTimeMillis,
                  ("session" .=) <$> _abSession])

-- | Holder object for the value of an entry in a map field of a data point.
-- A map value supports a subset of the formats that the regular Value
-- supports.
--
-- /See:/ 'mapValue' smart constructor.
newtype MapValue =
  MapValue'
    { _mvFpVal :: Maybe (Textual Double)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MapValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvFpVal'
mapValue
    :: MapValue
mapValue = MapValue' {_mvFpVal = Nothing}


-- | Floating point value.
mvFpVal :: Lens' MapValue (Maybe Double)
mvFpVal
  = lens _mvFpVal (\ s a -> s{_mvFpVal = a}) .
      mapping _Coerce

instance FromJSON MapValue where
        parseJSON
          = withObject "MapValue"
              (\ o -> MapValue' <$> (o .:? "fpVal"))

instance ToJSON MapValue where
        toJSON MapValue'{..}
          = object (catMaybes [("fpVal" .=) <$> _mvFpVal])

--
-- /See:/ 'listDataSourcesResponse' smart constructor.
newtype ListDataSourcesResponse =
  ListDataSourcesResponse'
    { _ldsrDataSource :: Maybe [DataSource]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListDataSourcesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldsrDataSource'
listDataSourcesResponse
    :: ListDataSourcesResponse
listDataSourcesResponse = ListDataSourcesResponse' {_ldsrDataSource = Nothing}


-- | A previously created data source.
ldsrDataSource :: Lens' ListDataSourcesResponse [DataSource]
ldsrDataSource
  = lens _ldsrDataSource
      (\ s a -> s{_ldsrDataSource = a})
      . _Default
      . _Coerce

instance FromJSON ListDataSourcesResponse where
        parseJSON
          = withObject "ListDataSourcesResponse"
              (\ o ->
                 ListDataSourcesResponse' <$>
                   (o .:? "dataSource" .!= mempty))

instance ToJSON ListDataSourcesResponse where
        toJSON ListDataSourcesResponse'{..}
          = object
              (catMaybes [("dataSource" .=) <$> _ldsrDataSource])

-- | In case of multi-dimensional data (such as an accelerometer with x, y,
-- and z axes) each field represents one dimension. Each data type field
-- has a unique name which identifies it. The field also defines the format
-- of the data (int, float, etc.). This message is only instantiated in
-- code and not used for wire comms or stored in any way.
--
-- /See:/ 'dataTypeField' smart constructor.
data DataTypeField =
  DataTypeField'
    { _dtfFormat   :: !(Maybe DataTypeFieldFormat)
    , _dtfName     :: !(Maybe Text)
    , _dtfOptional :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataTypeField' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtfFormat'
--
-- * 'dtfName'
--
-- * 'dtfOptional'
dataTypeField
    :: DataTypeField
dataTypeField =
  DataTypeField'
    {_dtfFormat = Nothing, _dtfName = Nothing, _dtfOptional = Nothing}


-- | The different supported formats for each field in a data type.
dtfFormat :: Lens' DataTypeField (Maybe DataTypeFieldFormat)
dtfFormat
  = lens _dtfFormat (\ s a -> s{_dtfFormat = a})

-- | Defines the name and format of data. Unlike data type names, field names
-- are not namespaced, and only need to be unique within the data type.
dtfName :: Lens' DataTypeField (Maybe Text)
dtfName = lens _dtfName (\ s a -> s{_dtfName = a})

dtfOptional :: Lens' DataTypeField (Maybe Bool)
dtfOptional
  = lens _dtfOptional (\ s a -> s{_dtfOptional = a})

instance FromJSON DataTypeField where
        parseJSON
          = withObject "DataTypeField"
              (\ o ->
                 DataTypeField' <$>
                   (o .:? "format") <*> (o .:? "name") <*>
                     (o .:? "optional"))

instance ToJSON DataTypeField where
        toJSON DataTypeField'{..}
          = object
              (catMaybes
                 [("format" .=) <$> _dtfFormat,
                  ("name" .=) <$> _dtfName,
                  ("optional" .=) <$> _dtfOptional])

-- | Definition of a unique source of sensor data. Data sources can expose
-- raw data coming from hardware sensors on local or companion devices.
-- They can also expose derived data, created by transforming or merging
-- other data sources. Multiple data sources can exist for the same data
-- type. Every data point inserted into or read from this service has an
-- associated data source. The data source contains enough information to
-- uniquely identify its data, including the hardware device and the
-- application that collected and\/or transformed the data. It also holds
-- useful metadata, such as the hardware and application versions, and the
-- device type. Each data source produces a unique stream of data, with a
-- unique identifier. Not all changes to data source affect the stream
-- identifier, so that data collected by updated versions of the same
-- application\/device can still be considered to belong to the same data
-- stream.
--
-- /See:/ 'dataSource' smart constructor.
data DataSource =
  DataSource'
    { _dsApplication         :: !(Maybe Application)
    , _dsDevice              :: !(Maybe Device)
    , _dsDataQualityStandard :: !(Maybe [DataSourceDataQualityStandardItem])
    , _dsName                :: !(Maybe Text)
    , _dsDataType            :: !(Maybe DataType)
    , _dsType                :: !(Maybe DataSourceType)
    , _dsDataStreamName      :: !(Maybe Text)
    , _dsDataStreamId        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsApplication'
--
-- * 'dsDevice'
--
-- * 'dsDataQualityStandard'
--
-- * 'dsName'
--
-- * 'dsDataType'
--
-- * 'dsType'
--
-- * 'dsDataStreamName'
--
-- * 'dsDataStreamId'
dataSource
    :: DataSource
dataSource =
  DataSource'
    { _dsApplication = Nothing
    , _dsDevice = Nothing
    , _dsDataQualityStandard = Nothing
    , _dsName = Nothing
    , _dsDataType = Nothing
    , _dsType = Nothing
    , _dsDataStreamName = Nothing
    , _dsDataStreamId = Nothing
    }


-- | Information about an application which feeds sensor data into the
-- platform.
dsApplication :: Lens' DataSource (Maybe Application)
dsApplication
  = lens _dsApplication
      (\ s a -> s{_dsApplication = a})

-- | Representation of an integrated device (such as a phone or a wearable)
-- that can hold sensors.
dsDevice :: Lens' DataSource (Maybe Device)
dsDevice = lens _dsDevice (\ s a -> s{_dsDevice = a})

-- | DO NOT POPULATE THIS FIELD. It is never populated in responses from the
-- platform, and is ignored in queries. It will be removed in a future
-- version entirely.
dsDataQualityStandard :: Lens' DataSource [DataSourceDataQualityStandardItem]
dsDataQualityStandard
  = lens _dsDataQualityStandard
      (\ s a -> s{_dsDataQualityStandard = a})
      . _Default
      . _Coerce

-- | An end-user visible name for this data source.
dsName :: Lens' DataSource (Maybe Text)
dsName = lens _dsName (\ s a -> s{_dsName = a})

-- | The data type defines the schema for a stream of data being collected
-- by, inserted into, or queried from the Fitness API.
dsDataType :: Lens' DataSource (Maybe DataType)
dsDataType
  = lens _dsDataType (\ s a -> s{_dsDataType = a})

-- | A constant describing the type of this data source. Indicates whether
-- this data source produces raw or derived data.
dsType :: Lens' DataSource (Maybe DataSourceType)
dsType = lens _dsType (\ s a -> s{_dsType = a})

-- | The stream name uniquely identifies this particular data source among
-- other data sources of the same type from the same underlying producer.
-- Setting the stream name is optional, but should be done whenever an
-- application exposes two streams for the same data type, or when a device
-- has two equivalent sensors.
dsDataStreamName :: Lens' DataSource (Maybe Text)
dsDataStreamName
  = lens _dsDataStreamName
      (\ s a -> s{_dsDataStreamName = a})

-- | A unique identifier for the data stream produced by this data source.
-- The identifier includes: - The physical device\'s manufacturer, model,
-- and serial number (UID). - The application\'s package name or name.
-- Package name is used when the data source was created by an Android
-- application. The developer project number is used when the data source
-- was created by a REST client. - The data source\'s type. - The data
-- source\'s stream name. Note that not all attributes of the data source
-- are used as part of the stream identifier. In particular, the version of
-- the hardware\/the application isn\'t used. This allows us to preserve
-- the same stream through version updates. This also means that two
-- DataSource objects may represent the same data stream even if they\'re
-- not equal. The exact format of the data stream ID created by an Android
-- application is:
-- type:dataType.name:application.packageName:device.manufacturer:device.model:device.uid:dataStreamName
-- The exact format of the data stream ID created by a REST client is:
-- type:dataType.name:developer project
-- number:device.manufacturer:device.model:device.uid:dataStreamName When
-- any of the optional fields that comprise of the data stream ID are
-- blank, they will be omitted from the data stream ID. The minimum viable
-- data stream ID would be: type:dataType.name:developer project number
-- Finally, the developer project number is obfuscated when read by any
-- REST or Android client that did not create the data source. Only the
-- data source creator will see the developer project number in clear and
-- normal form.
dsDataStreamId :: Lens' DataSource (Maybe Text)
dsDataStreamId
  = lens _dsDataStreamId
      (\ s a -> s{_dsDataStreamId = a})

instance FromJSON DataSource where
        parseJSON
          = withObject "DataSource"
              (\ o ->
                 DataSource' <$>
                   (o .:? "application") <*> (o .:? "device") <*>
                     (o .:? "dataQualityStandard" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "dataType")
                     <*> (o .:? "type")
                     <*> (o .:? "dataStreamName")
                     <*> (o .:? "dataStreamId"))

instance ToJSON DataSource where
        toJSON DataSource'{..}
          = object
              (catMaybes
                 [("application" .=) <$> _dsApplication,
                  ("device" .=) <$> _dsDevice,
                  ("dataQualityStandard" .=) <$>
                    _dsDataQualityStandard,
                  ("name" .=) <$> _dsName,
                  ("dataType" .=) <$> _dsDataType,
                  ("type" .=) <$> _dsType,
                  ("dataStreamName" .=) <$> _dsDataStreamName,
                  ("dataStreamId" .=) <$> _dsDataStreamId])

--
-- /See:/ 'bucketByTimePeriod' smart constructor.
data BucketByTimePeriod =
  BucketByTimePeriod'
    { _bbtpValue      :: !(Maybe (Textual Int32))
    , _bbtpType       :: !(Maybe BucketByTimePeriodType)
    , _bbtpTimeZoneId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BucketByTimePeriod' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbtpValue'
--
-- * 'bbtpType'
--
-- * 'bbtpTimeZoneId'
bucketByTimePeriod
    :: BucketByTimePeriod
bucketByTimePeriod =
  BucketByTimePeriod'
    {_bbtpValue = Nothing, _bbtpType = Nothing, _bbtpTimeZoneId = Nothing}


bbtpValue :: Lens' BucketByTimePeriod (Maybe Int32)
bbtpValue
  = lens _bbtpValue (\ s a -> s{_bbtpValue = a}) .
      mapping _Coerce

bbtpType :: Lens' BucketByTimePeriod (Maybe BucketByTimePeriodType)
bbtpType = lens _bbtpType (\ s a -> s{_bbtpType = a})

-- | org.joda.timezone.DateTimeZone
bbtpTimeZoneId :: Lens' BucketByTimePeriod (Maybe Text)
bbtpTimeZoneId
  = lens _bbtpTimeZoneId
      (\ s a -> s{_bbtpTimeZoneId = a})

instance FromJSON BucketByTimePeriod where
        parseJSON
          = withObject "BucketByTimePeriod"
              (\ o ->
                 BucketByTimePeriod' <$>
                   (o .:? "value") <*> (o .:? "type") <*>
                     (o .:? "timeZoneId"))

instance ToJSON BucketByTimePeriod where
        toJSON BucketByTimePeriod'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _bbtpValue,
                  ("type" .=) <$> _bbtpType,
                  ("timeZoneId" .=) <$> _bbtpTimeZoneId])

--
-- /See:/ 'valueMapValEntry' smart constructor.
data ValueMapValEntry =
  ValueMapValEntry'
    { _vmveValue :: !(Maybe MapValue)
    , _vmveKey   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ValueMapValEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vmveValue'
--
-- * 'vmveKey'
valueMapValEntry
    :: ValueMapValEntry
valueMapValEntry = ValueMapValEntry' {_vmveValue = Nothing, _vmveKey = Nothing}


vmveValue :: Lens' ValueMapValEntry (Maybe MapValue)
vmveValue
  = lens _vmveValue (\ s a -> s{_vmveValue = a})

vmveKey :: Lens' ValueMapValEntry (Maybe Text)
vmveKey = lens _vmveKey (\ s a -> s{_vmveKey = a})

instance FromJSON ValueMapValEntry where
        parseJSON
          = withObject "ValueMapValEntry"
              (\ o ->
                 ValueMapValEntry' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON ValueMapValEntry where
        toJSON ValueMapValEntry'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _vmveValue,
                  ("key" .=) <$> _vmveKey])

--
-- /See:/ 'bucketByTime' smart constructor.
data BucketByTime =
  BucketByTime'
    { _bbtPeriod         :: !(Maybe BucketByTimePeriod)
    , _bbtDurationMillis :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BucketByTime' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbtPeriod'
--
-- * 'bbtDurationMillis'
bucketByTime
    :: BucketByTime
bucketByTime =
  BucketByTime' {_bbtPeriod = Nothing, _bbtDurationMillis = Nothing}


bbtPeriod :: Lens' BucketByTime (Maybe BucketByTimePeriod)
bbtPeriod
  = lens _bbtPeriod (\ s a -> s{_bbtPeriod = a})

-- | Specifies that result buckets aggregate data by exactly durationMillis
-- time frames. Time frames that contain no data will be included in the
-- response with an empty dataset.
bbtDurationMillis :: Lens' BucketByTime (Maybe Int64)
bbtDurationMillis
  = lens _bbtDurationMillis
      (\ s a -> s{_bbtDurationMillis = a})
      . mapping _Coerce

instance FromJSON BucketByTime where
        parseJSON
          = withObject "BucketByTime"
              (\ o ->
                 BucketByTime' <$>
                   (o .:? "period") <*> (o .:? "durationMillis"))

instance ToJSON BucketByTime where
        toJSON BucketByTime'{..}
          = object
              (catMaybes
                 [("period" .=) <$> _bbtPeriod,
                  ("durationMillis" .=) <$> _bbtDurationMillis])

-- |
--
-- /See:/ 'dataType' smart constructor.
data DataType =
  DataType'
    { _dtField :: !(Maybe [DataTypeField])
    , _dtName  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtField'
--
-- * 'dtName'
dataType
    :: DataType
dataType = DataType' {_dtField = Nothing, _dtName = Nothing}


-- | A field represents one dimension of a data type.
dtField :: Lens' DataType [DataTypeField]
dtField
  = lens _dtField (\ s a -> s{_dtField = a}) . _Default
      . _Coerce

-- | Each data type has a unique, namespaced, name. All data types in the
-- com.google namespace are shared as part of the platform.
dtName :: Lens' DataType (Maybe Text)
dtName = lens _dtName (\ s a -> s{_dtName = a})

instance FromJSON DataType where
        parseJSON
          = withObject "DataType"
              (\ o ->
                 DataType' <$>
                   (o .:? "field" .!= mempty) <*> (o .:? "name"))

instance ToJSON DataType where
        toJSON DataType'{..}
          = object
              (catMaybes
                 [("field" .=) <$> _dtField, ("name" .=) <$> _dtName])

--
-- /See:/ 'listDataPointChangesResponse' smart constructor.
data ListDataPointChangesResponse =
  ListDataPointChangesResponse'
    { _ldpcrNextPageToken     :: !(Maybe Text)
    , _ldpcrInsertedDataPoint :: !(Maybe [DataPoint])
    , _ldpcrDataSourceId      :: !(Maybe Text)
    , _ldpcrDeletedDataPoint  :: !(Maybe [DataPoint])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListDataPointChangesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldpcrNextPageToken'
--
-- * 'ldpcrInsertedDataPoint'
--
-- * 'ldpcrDataSourceId'
--
-- * 'ldpcrDeletedDataPoint'
listDataPointChangesResponse
    :: ListDataPointChangesResponse
listDataPointChangesResponse =
  ListDataPointChangesResponse'
    { _ldpcrNextPageToken = Nothing
    , _ldpcrInsertedDataPoint = Nothing
    , _ldpcrDataSourceId = Nothing
    , _ldpcrDeletedDataPoint = Nothing
    }


-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results.
ldpcrNextPageToken :: Lens' ListDataPointChangesResponse (Maybe Text)
ldpcrNextPageToken
  = lens _ldpcrNextPageToken
      (\ s a -> s{_ldpcrNextPageToken = a})

-- | Inserted data points for the user.
ldpcrInsertedDataPoint :: Lens' ListDataPointChangesResponse [DataPoint]
ldpcrInsertedDataPoint
  = lens _ldpcrInsertedDataPoint
      (\ s a -> s{_ldpcrInsertedDataPoint = a})
      . _Default
      . _Coerce

-- | The data stream ID of the data source with data point changes.
ldpcrDataSourceId :: Lens' ListDataPointChangesResponse (Maybe Text)
ldpcrDataSourceId
  = lens _ldpcrDataSourceId
      (\ s a -> s{_ldpcrDataSourceId = a})

-- | Deleted data points for the user. Note, for modifications this should be
-- parsed before handling insertions.
ldpcrDeletedDataPoint :: Lens' ListDataPointChangesResponse [DataPoint]
ldpcrDeletedDataPoint
  = lens _ldpcrDeletedDataPoint
      (\ s a -> s{_ldpcrDeletedDataPoint = a})
      . _Default
      . _Coerce

instance FromJSON ListDataPointChangesResponse where
        parseJSON
          = withObject "ListDataPointChangesResponse"
              (\ o ->
                 ListDataPointChangesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "insertedDataPoint" .!= mempty)
                     <*> (o .:? "dataSourceId")
                     <*> (o .:? "deletedDataPoint" .!= mempty))

instance ToJSON ListDataPointChangesResponse where
        toJSON ListDataPointChangesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ldpcrNextPageToken,
                  ("insertedDataPoint" .=) <$> _ldpcrInsertedDataPoint,
                  ("dataSourceId" .=) <$> _ldpcrDataSourceId,
                  ("deletedDataPoint" .=) <$> _ldpcrDeletedDataPoint])

-- | Sessions contain metadata, such as a user-friendly name and time
-- interval information.
--
-- /See:/ 'session' smart constructor.
data Session =
  Session'
    { _sEndTimeMillis      :: !(Maybe (Textual Int64))
    , _sActiveTimeMillis   :: !(Maybe (Textual Int64))
    , _sApplication        :: !(Maybe Application)
    , _sActivityType       :: !(Maybe (Textual Int32))
    , _sName               :: !(Maybe Text)
    , _sModifiedTimeMillis :: !(Maybe (Textual Int64))
    , _sId                 :: !(Maybe Text)
    , _sStartTimeMillis    :: !(Maybe (Textual Int64))
    , _sDescription        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Session' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sEndTimeMillis'
--
-- * 'sActiveTimeMillis'
--
-- * 'sApplication'
--
-- * 'sActivityType'
--
-- * 'sName'
--
-- * 'sModifiedTimeMillis'
--
-- * 'sId'
--
-- * 'sStartTimeMillis'
--
-- * 'sDescription'
session
    :: Session
session =
  Session'
    { _sEndTimeMillis = Nothing
    , _sActiveTimeMillis = Nothing
    , _sApplication = Nothing
    , _sActivityType = Nothing
    , _sName = Nothing
    , _sModifiedTimeMillis = Nothing
    , _sId = Nothing
    , _sStartTimeMillis = Nothing
    , _sDescription = Nothing
    }


-- | An end time, in milliseconds since epoch, inclusive.
sEndTimeMillis :: Lens' Session (Maybe Int64)
sEndTimeMillis
  = lens _sEndTimeMillis
      (\ s a -> s{_sEndTimeMillis = a})
      . mapping _Coerce

-- | Session active time. While start_time_millis and end_time_millis define
-- the full session time, the active time can be shorter and specified by
-- active_time_millis. If the inactive time during the session is known, it
-- should also be inserted via a com.google.activity.segment data point
-- with a STILL activity value
sActiveTimeMillis :: Lens' Session (Maybe Int64)
sActiveTimeMillis
  = lens _sActiveTimeMillis
      (\ s a -> s{_sActiveTimeMillis = a})
      . mapping _Coerce

-- | The application that created the session.
sApplication :: Lens' Session (Maybe Application)
sApplication
  = lens _sApplication (\ s a -> s{_sApplication = a})

-- | The type of activity this session represents.
sActivityType :: Lens' Session (Maybe Int32)
sActivityType
  = lens _sActivityType
      (\ s a -> s{_sActivityType = a})
      . mapping _Coerce

-- | A human readable name of the session.
sName :: Lens' Session (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | A timestamp that indicates when the session was last modified.
sModifiedTimeMillis :: Lens' Session (Maybe Int64)
sModifiedTimeMillis
  = lens _sModifiedTimeMillis
      (\ s a -> s{_sModifiedTimeMillis = a})
      . mapping _Coerce

-- | A client-generated identifier that is unique across all sessions owned
-- by this particular user.
sId :: Lens' Session (Maybe Text)
sId = lens _sId (\ s a -> s{_sId = a})

-- | A start time, in milliseconds since epoch, inclusive.
sStartTimeMillis :: Lens' Session (Maybe Int64)
sStartTimeMillis
  = lens _sStartTimeMillis
      (\ s a -> s{_sStartTimeMillis = a})
      . mapping _Coerce

-- | A description for this session.
sDescription :: Lens' Session (Maybe Text)
sDescription
  = lens _sDescription (\ s a -> s{_sDescription = a})

instance FromJSON Session where
        parseJSON
          = withObject "Session"
              (\ o ->
                 Session' <$>
                   (o .:? "endTimeMillis") <*>
                     (o .:? "activeTimeMillis")
                     <*> (o .:? "application")
                     <*> (o .:? "activityType")
                     <*> (o .:? "name")
                     <*> (o .:? "modifiedTimeMillis")
                     <*> (o .:? "id")
                     <*> (o .:? "startTimeMillis")
                     <*> (o .:? "description"))

instance ToJSON Session where
        toJSON Session'{..}
          = object
              (catMaybes
                 [("endTimeMillis" .=) <$> _sEndTimeMillis,
                  ("activeTimeMillis" .=) <$> _sActiveTimeMillis,
                  ("application" .=) <$> _sApplication,
                  ("activityType" .=) <$> _sActivityType,
                  ("name" .=) <$> _sName,
                  ("modifiedTimeMillis" .=) <$> _sModifiedTimeMillis,
                  ("id" .=) <$> _sId,
                  ("startTimeMillis" .=) <$> _sStartTimeMillis,
                  ("description" .=) <$> _sDescription])
