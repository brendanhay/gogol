{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Fitness.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Fitness.Internal.Product
  ( -- * AggregateBucket
    AggregateBucket (..),
    newAggregateBucket,

    -- * AggregateBy
    AggregateBy (..),
    newAggregateBy,

    -- * AggregateRequest
    AggregateRequest (..),
    newAggregateRequest,

    -- * AggregateResponse
    AggregateResponse (..),
    newAggregateResponse,

    -- * Application
    Application (..),
    newApplication,

    -- * BucketByActivity
    BucketByActivity (..),
    newBucketByActivity,

    -- * BucketBySession
    BucketBySession (..),
    newBucketBySession,

    -- * BucketByTime
    BucketByTime (..),
    newBucketByTime,

    -- * BucketByTimePeriod
    BucketByTimePeriod (..),
    newBucketByTimePeriod,

    -- * DataPoint
    DataPoint (..),
    newDataPoint,

    -- * DataSource
    DataSource (..),
    newDataSource,

    -- * DataType
    DataType (..),
    newDataType,

    -- * DataTypeField
    DataTypeField (..),
    newDataTypeField,

    -- * Dataset
    Dataset (..),
    newDataset,

    -- * Device
    Device (..),
    newDevice,

    -- * ListDataPointChangesResponse
    ListDataPointChangesResponse (..),
    newListDataPointChangesResponse,

    -- * ListDataSourcesResponse
    ListDataSourcesResponse (..),
    newListDataSourcesResponse,

    -- * ListSessionsResponse
    ListSessionsResponse (..),
    newListSessionsResponse,

    -- * MapValue
    MapValue (..),
    newMapValue,

    -- * Session
    Session (..),
    newSession,

    -- * Value
    Value (..),
    newValue,

    -- * ValueMapValEntry
    ValueMapValEntry (..),
    newValueMapValEntry,
  )
where

import Gogol.Fitness.Internal.Sum
import Gogol.Prelude qualified as Core

--
-- /See:/ 'newAggregateBucket' smart constructor.
data AggregateBucket = AggregateBucket
  { -- | Available for Bucket.Type.ACTIVITY/TYPE, Bucket.Type.ACTIVITY/SEGMENT
    activity :: (Core.Maybe Core.Int32),
    -- | There will be one dataset per AggregateBy in the request.
    dataset :: (Core.Maybe [Dataset]),
    -- | The end time for the aggregated data, in milliseconds since epoch, inclusive.
    endTimeMillis :: (Core.Maybe Core.Int64),
    -- | Available for Bucket.Type.SESSION
    session :: (Core.Maybe Session),
    -- | The start time for the aggregated data, in milliseconds since epoch, inclusive.
    startTimeMillis :: (Core.Maybe Core.Int64),
    -- | The type of a bucket signifies how the data aggregation is performed in the bucket.
    type' :: (Core.Maybe AggregateBucket_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AggregateBucket' with the minimum fields required to make a request.
newAggregateBucket ::
  AggregateBucket
newAggregateBucket =
  AggregateBucket
    { activity = Core.Nothing,
      dataset = Core.Nothing,
      endTimeMillis = Core.Nothing,
      session = Core.Nothing,
      startTimeMillis = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON AggregateBucket where
  parseJSON =
    Core.withObject
      "AggregateBucket"
      ( \o ->
          AggregateBucket
            Core.<$> (o Core..:? "activity")
            Core.<*> (o Core..:? "dataset")
            Core.<*> (o Core..:? "endTimeMillis" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "session")
            Core.<*> (o Core..:? "startTimeMillis" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON AggregateBucket where
  toJSON AggregateBucket {..} =
    Core.object
      ( Core.catMaybes
          [ ("activity" Core..=) Core.<$> activity,
            ("dataset" Core..=) Core.<$> dataset,
            ("endTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> endTimeMillis,
            ("session" Core..=) Core.<$> session,
            ("startTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> startTimeMillis,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | The specification of which data to aggregate.
--
-- /See:/ 'newAggregateBy' smart constructor.
data AggregateBy = AggregateBy
  { -- | A data source ID to aggregate. Only data from the specified data source ID will be included in the aggregation. If specified, this data source must exist; the OAuth scopes in the supplied credentials must grant read access to this data type. The dataset in the response will have the same data source ID. Note: Data can be aggregated by either the dataTypeName or the dataSourceId, not both.
    dataSourceId :: (Core.Maybe Core.Text),
    -- | The data type to aggregate. All data sources providing this data type will contribute data to the aggregation. The response will contain a single dataset for this data type name. The dataset will have a data source ID of derived::com.google.android.gms:aggregated. If the user has no data for this data type, an empty data set will be returned. Note: Data can be aggregated by either the dataTypeName or the dataSourceId, not both.
    dataTypeName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AggregateBy' with the minimum fields required to make a request.
newAggregateBy ::
  AggregateBy
newAggregateBy =
  AggregateBy
    { dataSourceId = Core.Nothing,
      dataTypeName = Core.Nothing
    }

instance Core.FromJSON AggregateBy where
  parseJSON =
    Core.withObject
      "AggregateBy"
      ( \o ->
          AggregateBy
            Core.<$> (o Core..:? "dataSourceId")
            Core.<*> (o Core..:? "dataTypeName")
      )

instance Core.ToJSON AggregateBy where
  toJSON AggregateBy {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataSourceId" Core..=) Core.<$> dataSourceId,
            ("dataTypeName" Core..=) Core.<$> dataTypeName
          ]
      )

-- | Next id: 10
--
-- /See:/ 'newAggregateRequest' smart constructor.
data AggregateRequest = AggregateRequest
  { -- | The specification of data to be aggregated. At least one aggregateBy spec must be provided. All data that is specified will be aggregated using the same bucketing criteria. There will be one dataset in the response for every aggregateBy spec.
    aggregateBy :: (Core.Maybe [AggregateBy]),
    -- | Specifies that data be aggregated each activity segment recorded for a user. Similar to bucketByActivitySegment, but bucketing is done for each activity segment rather than all segments of the same type. Mutually exclusive of other bucketing specifications.
    bucketByActivitySegment :: (Core.Maybe BucketByActivity),
    -- | Specifies that data be aggregated by the type of activity being performed when the data was recorded. All data that was recorded during a certain activity type (.for the given time range) will be aggregated into the same bucket. Data that was recorded while the user was not active will not be included in the response. Mutually exclusive of other bucketing specifications.
    bucketByActivityType :: (Core.Maybe BucketByActivity),
    -- | Specifies that data be aggregated by user sessions. Data that does not fall within the time range of a session will not be included in the response. Mutually exclusive of other bucketing specifications.
    bucketBySession :: (Core.Maybe BucketBySession),
    -- | Specifies that data be aggregated by a single time interval. Mutually exclusive of other bucketing specifications.
    bucketByTime :: (Core.Maybe BucketByTime),
    -- | The end of a window of time. Data that intersects with this time window will be aggregated. The time is in milliseconds since epoch, inclusive. The maximum allowed difference between start/time/millis \/\/ and end/time/millis is 7776000000 (roughly 90 days).
    endTimeMillis :: (Core.Maybe Core.Int64),
    -- | DO NOT POPULATE THIS FIELD. It is ignored.
    filteredDataQualityStandard :: (Core.Maybe [AggregateRequest_FilteredDataQualityStandardItem]),
    -- | The start of a window of time. Data that intersects with this time window will be aggregated. The time is in milliseconds since epoch, inclusive.
    startTimeMillis :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AggregateRequest' with the minimum fields required to make a request.
newAggregateRequest ::
  AggregateRequest
newAggregateRequest =
  AggregateRequest
    { aggregateBy = Core.Nothing,
      bucketByActivitySegment = Core.Nothing,
      bucketByActivityType = Core.Nothing,
      bucketBySession = Core.Nothing,
      bucketByTime = Core.Nothing,
      endTimeMillis = Core.Nothing,
      filteredDataQualityStandard = Core.Nothing,
      startTimeMillis = Core.Nothing
    }

instance Core.FromJSON AggregateRequest where
  parseJSON =
    Core.withObject
      "AggregateRequest"
      ( \o ->
          AggregateRequest
            Core.<$> (o Core..:? "aggregateBy")
            Core.<*> (o Core..:? "bucketByActivitySegment")
            Core.<*> (o Core..:? "bucketByActivityType")
            Core.<*> (o Core..:? "bucketBySession")
            Core.<*> (o Core..:? "bucketByTime")
            Core.<*> (o Core..:? "endTimeMillis" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "filteredDataQualityStandard")
            Core.<*> (o Core..:? "startTimeMillis" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON AggregateRequest where
  toJSON AggregateRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("aggregateBy" Core..=) Core.<$> aggregateBy,
            ("bucketByActivitySegment" Core..=)
              Core.<$> bucketByActivitySegment,
            ("bucketByActivityType" Core..=) Core.<$> bucketByActivityType,
            ("bucketBySession" Core..=) Core.<$> bucketBySession,
            ("bucketByTime" Core..=) Core.<$> bucketByTime,
            ("endTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> endTimeMillis,
            ("filteredDataQualityStandard" Core..=)
              Core.<$> filteredDataQualityStandard,
            ("startTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> startTimeMillis
          ]
      )

--
-- /See:/ 'newAggregateResponse' smart constructor.
newtype AggregateResponse = AggregateResponse
  { -- | A list of buckets containing the aggregated data.
    bucket :: (Core.Maybe [AggregateBucket])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AggregateResponse' with the minimum fields required to make a request.
newAggregateResponse ::
  AggregateResponse
newAggregateResponse = AggregateResponse {bucket = Core.Nothing}

instance Core.FromJSON AggregateResponse where
  parseJSON =
    Core.withObject
      "AggregateResponse"
      (\o -> AggregateResponse Core.<$> (o Core..:? "bucket"))

instance Core.ToJSON AggregateResponse where
  toJSON AggregateResponse {..} =
    Core.object (Core.catMaybes [("bucket" Core..=) Core.<$> bucket])

--
-- /See:/ 'newApplication' smart constructor.
data Application = Application
  { -- | An optional URI that can be used to link back to the application.
    detailsUrl :: (Core.Maybe Core.Text),
    -- | The name of this application. This is required for REST clients, but we do not enforce uniqueness of this name. It is provided as a matter of convenience for other developers who would like to identify which REST created an Application or Data Source.
    name :: (Core.Maybe Core.Text),
    -- | Package name for this application. This is used as a unique identifier when created by Android applications, but cannot be specified by REST clients. REST clients will have their developer project number reflected into the Data Source data stream IDs, instead of the packageName.
    packageName :: (Core.Maybe Core.Text),
    -- | Version of the application. You should update this field whenever the application changes in a way that affects the computation of the data.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Application' with the minimum fields required to make a request.
newApplication ::
  Application
newApplication =
  Application
    { detailsUrl = Core.Nothing,
      name = Core.Nothing,
      packageName = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON Application where
  parseJSON =
    Core.withObject
      "Application"
      ( \o ->
          Application
            Core.<$> (o Core..:? "detailsUrl")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "packageName")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON Application where
  toJSON Application {..} =
    Core.object
      ( Core.catMaybes
          [ ("detailsUrl" Core..=) Core.<$> detailsUrl,
            ("name" Core..=) Core.<$> name,
            ("packageName" Core..=) Core.<$> packageName,
            ("version" Core..=) Core.<$> version
          ]
      )

--
-- /See:/ 'newBucketByActivity' smart constructor.
data BucketByActivity = BucketByActivity
  { -- | The default activity stream will be used if a specific activityDataSourceId is not specified.
    activityDataSourceId :: (Core.Maybe Core.Text),
    -- | Specifies that only activity segments of duration longer than minDurationMillis are considered and used as a container for aggregated data.
    minDurationMillis :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BucketByActivity' with the minimum fields required to make a request.
newBucketByActivity ::
  BucketByActivity
newBucketByActivity =
  BucketByActivity
    { activityDataSourceId = Core.Nothing,
      minDurationMillis = Core.Nothing
    }

instance Core.FromJSON BucketByActivity where
  parseJSON =
    Core.withObject
      "BucketByActivity"
      ( \o ->
          BucketByActivity
            Core.<$> (o Core..:? "activityDataSourceId")
            Core.<*> ( o
                         Core..:? "minDurationMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON BucketByActivity where
  toJSON BucketByActivity {..} =
    Core.object
      ( Core.catMaybes
          [ ("activityDataSourceId" Core..=) Core.<$> activityDataSourceId,
            ("minDurationMillis" Core..=)
              Core.. Core.AsText
              Core.<$> minDurationMillis
          ]
      )

--
-- /See:/ 'newBucketBySession' smart constructor.
newtype BucketBySession = BucketBySession
  { -- | Specifies that only sessions of duration longer than minDurationMillis are considered and used as a container for aggregated data.
    minDurationMillis :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BucketBySession' with the minimum fields required to make a request.
newBucketBySession ::
  BucketBySession
newBucketBySession =
  BucketBySession {minDurationMillis = Core.Nothing}

instance Core.FromJSON BucketBySession where
  parseJSON =
    Core.withObject
      "BucketBySession"
      ( \o ->
          BucketBySession
            Core.<$> ( o
                         Core..:? "minDurationMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON BucketBySession where
  toJSON BucketBySession {..} =
    Core.object
      ( Core.catMaybes
          [ ("minDurationMillis" Core..=)
              Core.. Core.AsText
              Core.<$> minDurationMillis
          ]
      )

--
-- /See:/ 'newBucketByTime' smart constructor.
data BucketByTime = BucketByTime
  { -- | Specifies that result buckets aggregate data by exactly durationMillis time frames. Time frames that contain no data will be included in the response with an empty dataset.
    durationMillis :: (Core.Maybe Core.Int64),
    period :: (Core.Maybe BucketByTimePeriod)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BucketByTime' with the minimum fields required to make a request.
newBucketByTime ::
  BucketByTime
newBucketByTime =
  BucketByTime
    { durationMillis = Core.Nothing,
      period = Core.Nothing
    }

instance Core.FromJSON BucketByTime where
  parseJSON =
    Core.withObject
      "BucketByTime"
      ( \o ->
          BucketByTime
            Core.<$> (o Core..:? "durationMillis" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "period")
      )

instance Core.ToJSON BucketByTime where
  toJSON BucketByTime {..} =
    Core.object
      ( Core.catMaybes
          [ ("durationMillis" Core..=)
              Core.. Core.AsText
              Core.<$> durationMillis,
            ("period" Core..=) Core.<$> period
          ]
      )

--
-- /See:/ 'newBucketByTimePeriod' smart constructor.
data BucketByTimePeriod = BucketByTimePeriod
  { -- | org.joda.timezone.DateTimeZone
    timeZoneId :: (Core.Maybe Core.Text),
    type' :: (Core.Maybe BucketByTimePeriod_Type),
    value :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BucketByTimePeriod' with the minimum fields required to make a request.
newBucketByTimePeriod ::
  BucketByTimePeriod
newBucketByTimePeriod =
  BucketByTimePeriod
    { timeZoneId = Core.Nothing,
      type' = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON BucketByTimePeriod where
  parseJSON =
    Core.withObject
      "BucketByTimePeriod"
      ( \o ->
          BucketByTimePeriod
            Core.<$> (o Core..:? "timeZoneId")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON BucketByTimePeriod where
  toJSON BucketByTimePeriod {..} =
    Core.object
      ( Core.catMaybes
          [ ("timeZoneId" Core..=) Core.<$> timeZoneId,
            ("type" Core..=) Core.<$> type',
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Represents a single data point, generated by a particular data source. A data point holds a value for each field, an end timestamp and an optional start time. The exact semantics of each of these attributes are specified in the documentation for the particular data type. A data point can represent an instantaneous measurement, reading or input observation, as well as averages or aggregates over a time interval. Check the data type documentation to determine which is the case for a particular data type. Data points always contain one value for each field of the data type.
--
-- /See:/ 'newDataPoint' smart constructor.
data DataPoint = DataPoint
  { -- | DO NOT USE THIS FIELD. It is ignored, and not stored.
    computationTimeMillis :: (Core.Maybe Core.Int64),
    -- | The data type defining the format of the values in this data point.
    dataTypeName :: (Core.Maybe Core.Text),
    -- | The end time of the interval represented by this data point, in nanoseconds since epoch.
    endTimeNanos :: (Core.Maybe Core.Int64),
    -- | Indicates the last time this data point was modified. Useful only in contexts where we are listing the data changes, rather than representing the current state of the data.
    modifiedTimeMillis :: (Core.Maybe Core.Int64),
    -- | If the data point is contained in a dataset for a derived data source, this field will be populated with the data source stream ID that created the data point originally. WARNING: do not rely on this field for anything other than debugging. The value of this field, if it is set at all, is an implementation detail and is not guaranteed to remain consistent.
    originDataSourceId :: (Core.Maybe Core.Text),
    -- | The raw timestamp from the original SensorEvent.
    rawTimestampNanos :: (Core.Maybe Core.Int64),
    -- | The start time of the interval represented by this data point, in nanoseconds since epoch.
    startTimeNanos :: (Core.Maybe Core.Int64),
    -- | Values of each data type field for the data point. It is expected that each value corresponding to a data type field will occur in the same order that the field is listed with in the data type specified in a data source. Only one of integer and floating point fields will be populated, depending on the format enum value within data source\'s type field.
    value :: (Core.Maybe [Value])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataPoint' with the minimum fields required to make a request.
newDataPoint ::
  DataPoint
newDataPoint =
  DataPoint
    { computationTimeMillis = Core.Nothing,
      dataTypeName = Core.Nothing,
      endTimeNanos = Core.Nothing,
      modifiedTimeMillis = Core.Nothing,
      originDataSourceId = Core.Nothing,
      rawTimestampNanos = Core.Nothing,
      startTimeNanos = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON DataPoint where
  parseJSON =
    Core.withObject
      "DataPoint"
      ( \o ->
          DataPoint
            Core.<$> ( o
                         Core..:? "computationTimeMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "dataTypeName")
            Core.<*> (o Core..:? "endTimeNanos" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "modifiedTimeMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "originDataSourceId")
            Core.<*> (o Core..:? "rawTimestampNanos" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "startTimeNanos" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON DataPoint where
  toJSON DataPoint {..} =
    Core.object
      ( Core.catMaybes
          [ ("computationTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> computationTimeMillis,
            ("dataTypeName" Core..=) Core.<$> dataTypeName,
            ("endTimeNanos" Core..=) Core.. Core.AsText Core.<$> endTimeNanos,
            ("modifiedTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> modifiedTimeMillis,
            ("originDataSourceId" Core..=) Core.<$> originDataSourceId,
            ("rawTimestampNanos" Core..=)
              Core.. Core.AsText
              Core.<$> rawTimestampNanos,
            ("startTimeNanos" Core..=)
              Core.. Core.AsText
              Core.<$> startTimeNanos,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Definition of a unique source of sensor data. Data sources can expose raw data coming from hardware sensors on local or companion devices. They can also expose derived data, created by transforming or merging other data sources. Multiple data sources can exist for the same data type. Every data point inserted into or read from this service has an associated data source. The data source contains enough information to uniquely identify its data, including the hardware device and the application that collected and\/or transformed the data. It also holds useful metadata, such as the hardware and application versions, and the device type. Each data source produces a unique stream of data, with a unique identifier. Not all changes to data source affect the stream identifier, so that data collected by updated versions of the same application\/device can still be considered to belong to the same data stream.
--
-- /See:/ 'newDataSource' smart constructor.
data DataSource = DataSource
  { -- | Information about an application which feeds sensor data into the platform.
    application :: (Core.Maybe Application),
    -- | DO NOT POPULATE THIS FIELD. It is never populated in responses from the platform, and is ignored in queries. It will be removed in a future version entirely.
    dataQualityStandard :: (Core.Maybe [DataSource_DataQualityStandardItem]),
    -- | A unique identifier for the data stream produced by this data source. The identifier includes: - The physical device\'s manufacturer, model, and serial number (UID). - The application\'s package name or name. Package name is used when the data source was created by an Android application. The developer project number is used when the data source was created by a REST client. - The data source\'s type. - The data source\'s stream name. Note that not all attributes of the data source are used as part of the stream identifier. In particular, the version of the hardware\/the application isn\'t used. This allows us to preserve the same stream through version updates. This also means that two DataSource objects may represent the same data stream even if they\'re not equal. The exact format of the data stream ID created by an Android application is: type:dataType.name:application.packageName:device.manufacturer:device.model:device.uid:dataStreamName The exact format of the data stream ID created by a REST client is:
    -- type:dataType.name:developer project number:device.manufacturer:device.model:device.uid:dataStreamName When any of the optional fields that make up the data stream ID are absent, they will be omitted from the data stream ID. The minimum viable data stream ID would be: type:dataType.name:developer project number Finally, the developer project number and device UID are obfuscated when read by any REST or Android client that did not create the data source. Only the data source creator will see the developer project number in clear and normal form. This means a client will see a different set of data/stream/ids than another client with different credentials.
    dataStreamId :: (Core.Maybe Core.Text),
    -- | The stream name uniquely identifies this particular data source among other data sources of the same type from the same underlying producer. Setting the stream name is optional, but should be done whenever an application exposes two streams for the same data type, or when a device has two equivalent sensors.
    dataStreamName :: (Core.Maybe Core.Text),
    -- | The data type defines the schema for a stream of data being collected by, inserted into, or queried from the Fitness API.
    dataType :: (Core.Maybe DataType),
    -- | Representation of an integrated device (such as a phone or a wearable) that can hold sensors.
    device :: (Core.Maybe Device),
    -- | An end-user visible name for this data source.
    name :: (Core.Maybe Core.Text),
    -- | A constant describing the type of this data source. Indicates whether this data source produces raw or derived data.
    type' :: (Core.Maybe DataSource_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataSource' with the minimum fields required to make a request.
newDataSource ::
  DataSource
newDataSource =
  DataSource
    { application = Core.Nothing,
      dataQualityStandard = Core.Nothing,
      dataStreamId = Core.Nothing,
      dataStreamName = Core.Nothing,
      dataType = Core.Nothing,
      device = Core.Nothing,
      name = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON DataSource where
  parseJSON =
    Core.withObject
      "DataSource"
      ( \o ->
          DataSource
            Core.<$> (o Core..:? "application")
            Core.<*> (o Core..:? "dataQualityStandard")
            Core.<*> (o Core..:? "dataStreamId")
            Core.<*> (o Core..:? "dataStreamName")
            Core.<*> (o Core..:? "dataType")
            Core.<*> (o Core..:? "device")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON DataSource where
  toJSON DataSource {..} =
    Core.object
      ( Core.catMaybes
          [ ("application" Core..=) Core.<$> application,
            ("dataQualityStandard" Core..=) Core.<$> dataQualityStandard,
            ("dataStreamId" Core..=) Core.<$> dataStreamId,
            ("dataStreamName" Core..=) Core.<$> dataStreamName,
            ("dataType" Core..=) Core.<$> dataType,
            ("device" Core..=) Core.<$> device,
            ("name" Core..=) Core.<$> name,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newDataType' smart constructor.
data DataType = DataType
  { -- | A field represents one dimension of a data type.
    field :: (Core.Maybe [DataTypeField]),
    -- | Each data type has a unique, namespaced, name. All data types in the com.google namespace are shared as part of the platform.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataType' with the minimum fields required to make a request.
newDataType ::
  DataType
newDataType = DataType {field = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON DataType where
  parseJSON =
    Core.withObject
      "DataType"
      ( \o ->
          DataType
            Core.<$> (o Core..:? "field")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON DataType where
  toJSON DataType {..} =
    Core.object
      ( Core.catMaybes
          [("field" Core..=) Core.<$> field, ("name" Core..=) Core.<$> name]
      )

-- | In case of multi-dimensional data (such as an accelerometer with x, y, and z axes) each field represents one dimension. Each data type field has a unique name which identifies it. The field also defines the format of the data (int, float, etc.). This message is only instantiated in code and not used for wire comms or stored in any way.
--
-- /See:/ 'newDataTypeField' smart constructor.
data DataTypeField = DataTypeField
  { -- | The different supported formats for each field in a data type.
    format :: (Core.Maybe DataTypeField_Format),
    -- | Defines the name and format of data. Unlike data type names, field names are not namespaced, and only need to be unique within the data type.
    name :: (Core.Maybe Core.Text),
    optional :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataTypeField' with the minimum fields required to make a request.
newDataTypeField ::
  DataTypeField
newDataTypeField =
  DataTypeField
    { format = Core.Nothing,
      name = Core.Nothing,
      optional = Core.Nothing
    }

instance Core.FromJSON DataTypeField where
  parseJSON =
    Core.withObject
      "DataTypeField"
      ( \o ->
          DataTypeField
            Core.<$> (o Core..:? "format")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "optional")
      )

instance Core.ToJSON DataTypeField where
  toJSON DataTypeField {..} =
    Core.object
      ( Core.catMaybes
          [ ("format" Core..=) Core.<$> format,
            ("name" Core..=) Core.<$> name,
            ("optional" Core..=) Core.<$> optional
          ]
      )

-- | A dataset represents a projection container for data points. They do not carry any info of their own. Datasets represent a set of data points from a particular data source. A data point can be found in more than one dataset.
--
-- /See:/ 'newDataset' smart constructor.
data Dataset = Dataset
  { -- | The data stream ID of the data source that created the points in this dataset.
    dataSourceId :: (Core.Maybe Core.Text),
    -- | The largest end time of all data points in this possibly partial representation of the dataset. Time is in nanoseconds from epoch. This should also match the second part of the dataset identifier.
    maxEndTimeNs :: (Core.Maybe Core.Int64),
    -- | The smallest start time of all data points in this possibly partial representation of the dataset. Time is in nanoseconds from epoch. This should also match the first part of the dataset identifier.
    minStartTimeNs :: (Core.Maybe Core.Int64),
    -- | This token will be set when a dataset is received in response to a GET request and the dataset is too large to be included in a single response. Provide this value in a subsequent GET request to return the next page of data points within this dataset.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A partial list of data points contained in the dataset, ordered by endTimeNanos. This list is considered complete when retrieving a small dataset and partial when patching a dataset or retrieving a dataset that is too large to include in a single response.
    point :: (Core.Maybe [DataPoint])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dataset' with the minimum fields required to make a request.
newDataset ::
  Dataset
newDataset =
  Dataset
    { dataSourceId = Core.Nothing,
      maxEndTimeNs = Core.Nothing,
      minStartTimeNs = Core.Nothing,
      nextPageToken = Core.Nothing,
      point = Core.Nothing
    }

instance Core.FromJSON Dataset where
  parseJSON =
    Core.withObject
      "Dataset"
      ( \o ->
          Dataset
            Core.<$> (o Core..:? "dataSourceId")
            Core.<*> (o Core..:? "maxEndTimeNs" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "minStartTimeNs" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "point")
      )

instance Core.ToJSON Dataset where
  toJSON Dataset {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataSourceId" Core..=) Core.<$> dataSourceId,
            ("maxEndTimeNs" Core..=) Core.. Core.AsText Core.<$> maxEndTimeNs,
            ("minStartTimeNs" Core..=)
              Core.. Core.AsText
              Core.<$> minStartTimeNs,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("point" Core..=) Core.<$> point
          ]
      )

-- | Representation of an integrated device (such as a phone or a wearable) that can hold sensors. Each sensor is exposed as a data source. The main purpose of the device information contained in this class is to identify the hardware of a particular data source. This can be useful in different ways, including: - Distinguishing two similar sensors on different devices (the step counter on two nexus 5 phones, for instance) - Display the source of data to the user (by using the device make \/ model) - Treat data differently depending on sensor type (accelerometers on a watch may give different patterns than those on a phone) - Build different analysis models for each device\/version.
--
-- /See:/ 'newDevice' smart constructor.
data Device = Device
  { -- | Manufacturer of the product\/hardware.
    manufacturer :: (Core.Maybe Core.Text),
    -- | End-user visible model name for the device.
    model :: (Core.Maybe Core.Text),
    -- | A constant representing the type of the device.
    type' :: (Core.Maybe Device_Type),
    -- | The serial number or other unique ID for the hardware. This field is obfuscated when read by any REST or Android client that did not create the data source. Only the data source creator will see the uid field in clear and normal form. The obfuscation preserves equality; that is, given two IDs, if id1 == id2, obfuscated(id1) == obfuscated(id2).
    uid :: (Core.Maybe Core.Text),
    -- | Version string for the device hardware\/software.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Device' with the minimum fields required to make a request.
newDevice ::
  Device
newDevice =
  Device
    { manufacturer = Core.Nothing,
      model = Core.Nothing,
      type' = Core.Nothing,
      uid = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON Device where
  parseJSON =
    Core.withObject
      "Device"
      ( \o ->
          Device
            Core.<$> (o Core..:? "manufacturer")
            Core.<*> (o Core..:? "model")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "uid")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON Device where
  toJSON Device {..} =
    Core.object
      ( Core.catMaybes
          [ ("manufacturer" Core..=) Core.<$> manufacturer,
            ("model" Core..=) Core.<$> model,
            ("type" Core..=) Core.<$> type',
            ("uid" Core..=) Core.<$> uid,
            ("version" Core..=) Core.<$> version
          ]
      )

--
-- /See:/ 'newListDataPointChangesResponse' smart constructor.
data ListDataPointChangesResponse = ListDataPointChangesResponse
  { -- | The data stream ID of the data source with data point changes.
    dataSourceId :: (Core.Maybe Core.Text),
    -- | Deleted data points for the user. Note, for modifications this should be parsed before handling insertions.
    deletedDataPoint :: (Core.Maybe [DataPoint]),
    -- | Inserted data points for the user.
    insertedDataPoint :: (Core.Maybe [DataPoint]),
    -- | The continuation token, which is used to page through large result sets. Provide this value in a subsequent request to return the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListDataPointChangesResponse' with the minimum fields required to make a request.
newListDataPointChangesResponse ::
  ListDataPointChangesResponse
newListDataPointChangesResponse =
  ListDataPointChangesResponse
    { dataSourceId = Core.Nothing,
      deletedDataPoint = Core.Nothing,
      insertedDataPoint = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListDataPointChangesResponse where
  parseJSON =
    Core.withObject
      "ListDataPointChangesResponse"
      ( \o ->
          ListDataPointChangesResponse
            Core.<$> (o Core..:? "dataSourceId")
            Core.<*> (o Core..:? "deletedDataPoint")
            Core.<*> (o Core..:? "insertedDataPoint")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListDataPointChangesResponse where
  toJSON ListDataPointChangesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataSourceId" Core..=) Core.<$> dataSourceId,
            ("deletedDataPoint" Core..=) Core.<$> deletedDataPoint,
            ("insertedDataPoint" Core..=) Core.<$> insertedDataPoint,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newListDataSourcesResponse' smart constructor.
newtype ListDataSourcesResponse = ListDataSourcesResponse
  { -- | A previously created data source.
    dataSource :: (Core.Maybe [DataSource])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListDataSourcesResponse' with the minimum fields required to make a request.
newListDataSourcesResponse ::
  ListDataSourcesResponse
newListDataSourcesResponse =
  ListDataSourcesResponse {dataSource = Core.Nothing}

instance Core.FromJSON ListDataSourcesResponse where
  parseJSON =
    Core.withObject
      "ListDataSourcesResponse"
      (\o -> ListDataSourcesResponse Core.<$> (o Core..:? "dataSource"))

instance Core.ToJSON ListDataSourcesResponse where
  toJSON ListDataSourcesResponse {..} =
    Core.object
      (Core.catMaybes [("dataSource" Core..=) Core.<$> dataSource])

--
-- /See:/ 'newListSessionsResponse' smart constructor.
data ListSessionsResponse = ListSessionsResponse
  { -- | If includeDeleted is set to true in the request, and startTime and endTime are omitted, this will include sessions which were deleted since the last sync.
    deletedSession :: (Core.Maybe [Session]),
    -- | Flag to indicate server has more data to transfer. DO NOT USE THIS FIELD. It is never populated in responses from the server.
    hasMoreData :: (Core.Maybe Core.Bool),
    -- | The sync token which is used to sync further changes. This will only be provided if both startTime and endTime are omitted from the request.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Sessions with an end time that is between startTime and endTime of the request.
    session :: (Core.Maybe [Session])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListSessionsResponse' with the minimum fields required to make a request.
newListSessionsResponse ::
  ListSessionsResponse
newListSessionsResponse =
  ListSessionsResponse
    { deletedSession = Core.Nothing,
      hasMoreData = Core.Nothing,
      nextPageToken = Core.Nothing,
      session = Core.Nothing
    }

instance Core.FromJSON ListSessionsResponse where
  parseJSON =
    Core.withObject
      "ListSessionsResponse"
      ( \o ->
          ListSessionsResponse
            Core.<$> (o Core..:? "deletedSession")
            Core.<*> (o Core..:? "hasMoreData")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "session")
      )

instance Core.ToJSON ListSessionsResponse where
  toJSON ListSessionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("deletedSession" Core..=) Core.<$> deletedSession,
            ("hasMoreData" Core..=) Core.<$> hasMoreData,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("session" Core..=) Core.<$> session
          ]
      )

-- | Holder object for the value of an entry in a map field of a data point. A map value supports a subset of the formats that the regular Value supports.
--
-- /See:/ 'newMapValue' smart constructor.
newtype MapValue = MapValue
  { -- | Floating point value.
    fpVal :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MapValue' with the minimum fields required to make a request.
newMapValue ::
  MapValue
newMapValue = MapValue {fpVal = Core.Nothing}

instance Core.FromJSON MapValue where
  parseJSON =
    Core.withObject
      "MapValue"
      (\o -> MapValue Core.<$> (o Core..:? "fpVal"))

instance Core.ToJSON MapValue where
  toJSON MapValue {..} =
    Core.object (Core.catMaybes [("fpVal" Core..=) Core.<$> fpVal])

-- | Sessions contain metadata, such as a user-friendly name and time interval information.
--
-- /See:/ 'newSession' smart constructor.
data Session = Session
  { -- | Session active time. While start/time/millis and end/time/millis define the full session time, the active time can be shorter and specified by active/time/millis. If the inactive time during the session is known, it should also be inserted via a com.google.activity.segment data point with a STILL activity value
    activeTimeMillis :: (Core.Maybe Core.Int64),
    -- | The type of activity this session represents.
    activityType :: (Core.Maybe Core.Int32),
    -- | The application that created the session.
    application :: (Core.Maybe Application),
    -- | A description for this session.
    description :: (Core.Maybe Core.Text),
    -- | An end time, in milliseconds since epoch, inclusive.
    endTimeMillis :: (Core.Maybe Core.Int64),
    -- | A client-generated identifier that is unique across all sessions owned by this particular user.
    id :: (Core.Maybe Core.Text),
    -- | A timestamp that indicates when the session was last modified.
    modifiedTimeMillis :: (Core.Maybe Core.Int64),
    -- | A human readable name of the session.
    name :: (Core.Maybe Core.Text),
    -- | A start time, in milliseconds since epoch, inclusive.
    startTimeMillis :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Session' with the minimum fields required to make a request.
newSession ::
  Session
newSession =
  Session
    { activeTimeMillis = Core.Nothing,
      activityType = Core.Nothing,
      application = Core.Nothing,
      description = Core.Nothing,
      endTimeMillis = Core.Nothing,
      id = Core.Nothing,
      modifiedTimeMillis = Core.Nothing,
      name = Core.Nothing,
      startTimeMillis = Core.Nothing
    }

instance Core.FromJSON Session where
  parseJSON =
    Core.withObject
      "Session"
      ( \o ->
          Session
            Core.<$> (o Core..:? "activeTimeMillis" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "activityType")
            Core.<*> (o Core..:? "application")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "endTimeMillis" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "id")
            Core.<*> ( o
                         Core..:? "modifiedTimeMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "startTimeMillis" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON Session where
  toJSON Session {..} =
    Core.object
      ( Core.catMaybes
          [ ("activeTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> activeTimeMillis,
            ("activityType" Core..=) Core.<$> activityType,
            ("application" Core..=) Core.<$> application,
            ("description" Core..=) Core.<$> description,
            ("endTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> endTimeMillis,
            ("id" Core..=) Core.<$> id,
            ("modifiedTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> modifiedTimeMillis,
            ("name" Core..=) Core.<$> name,
            ("startTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> startTimeMillis
          ]
      )

-- | Holder object for the value of a single field in a data point. A field value has a particular format and is only ever set to one of an integer or a floating point value.
--
-- /See:/ 'newValue' smart constructor.
data Value = Value
  { -- | Floating point value. When this is set, other values must not be set.
    fpVal :: (Core.Maybe Core.Double),
    -- | Integer value. When this is set, other values must not be set.
    intVal :: (Core.Maybe Core.Int32),
    -- | Map value. The valid key space and units for the corresponding value of each entry should be documented as part of the data type definition. Keys should be kept small whenever possible. Data streams with large keys and high data frequency may be down sampled.
    mapVal :: (Core.Maybe [ValueMapValEntry]),
    -- | String value. When this is set, other values must not be set. Strings should be kept small whenever possible. Data streams with large string values and high data frequency may be down sampled.
    stringVal :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Value' with the minimum fields required to make a request.
newValue ::
  Value
newValue =
  Value
    { fpVal = Core.Nothing,
      intVal = Core.Nothing,
      mapVal = Core.Nothing,
      stringVal = Core.Nothing
    }

instance Core.FromJSON Value where
  parseJSON =
    Core.withObject
      "Value"
      ( \o ->
          Value
            Core.<$> (o Core..:? "fpVal")
            Core.<*> (o Core..:? "intVal")
            Core.<*> (o Core..:? "mapVal")
            Core.<*> (o Core..:? "stringVal")
      )

instance Core.ToJSON Value where
  toJSON Value {..} =
    Core.object
      ( Core.catMaybes
          [ ("fpVal" Core..=) Core.<$> fpVal,
            ("intVal" Core..=) Core.<$> intVal,
            ("mapVal" Core..=) Core.<$> mapVal,
            ("stringVal" Core..=) Core.<$> stringVal
          ]
      )

--
-- /See:/ 'newValueMapValEntry' smart constructor.
data ValueMapValEntry = ValueMapValEntry
  { key :: (Core.Maybe Core.Text),
    value :: (Core.Maybe MapValue)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ValueMapValEntry' with the minimum fields required to make a request.
newValueMapValEntry ::
  ValueMapValEntry
newValueMapValEntry =
  ValueMapValEntry {key = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON ValueMapValEntry where
  parseJSON =
    Core.withObject
      "ValueMapValEntry"
      ( \o ->
          ValueMapValEntry
            Core.<$> (o Core..:? "key")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON ValueMapValEntry where
  toJSON ValueMapValEntry {..} =
    Core.object
      ( Core.catMaybes
          [("key" Core..=) Core.<$> key, ("value" Core..=) Core.<$> value]
      )
