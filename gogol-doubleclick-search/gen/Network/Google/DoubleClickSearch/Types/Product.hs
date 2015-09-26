{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DoubleClickSearch.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DoubleClickSearch.Types.Product where

import           Network.Google.DoubleClickSearch.Types.Sum
import           Network.Google.Prelude

-- | A message containing availability data relevant to DoubleClick Search.
--
-- /See:/ 'availability' smart constructor.
data Availability = Availability
    { _aAgencyId              :: !(Maybe Int64)
    , _aAdvertiserId          :: !(Maybe Int64)
    , _aSegmentationId        :: !(Maybe Int64)
    , _aSegmentationName      :: !(Maybe Text)
    , _aAvailabilityTimestamp :: !(Maybe Word64)
    , _aSegmentationType      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Availability' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aAgencyId'
--
-- * 'aAdvertiserId'
--
-- * 'aSegmentationId'
--
-- * 'aSegmentationName'
--
-- * 'aAvailabilityTimestamp'
--
-- * 'aSegmentationType'
availability
    :: Availability
availability =
    Availability
    { _aAgencyId = Nothing
    , _aAdvertiserId = Nothing
    , _aSegmentationId = Nothing
    , _aSegmentationName = Nothing
    , _aAvailabilityTimestamp = Nothing
    , _aSegmentationType = Nothing
    }

-- | DS agency ID.
aAgencyId :: Lens' Availability (Maybe Int64)
aAgencyId
  = lens _aAgencyId (\ s a -> s{_aAgencyId = a})

-- | DS advertiser ID.
aAdvertiserId :: Lens' Availability (Maybe Int64)
aAdvertiserId
  = lens _aAdvertiserId
      (\ s a -> s{_aAdvertiserId = a})

-- | The numeric segmentation identifier (for example, DoubleClick Search
-- Floodlight activity ID).
aSegmentationId :: Lens' Availability (Maybe Int64)
aSegmentationId
  = lens _aSegmentationId
      (\ s a -> s{_aSegmentationId = a})

-- | The friendly segmentation identifier (for example, DoubleClick Search
-- Floodlight activity name).
aSegmentationName :: Lens' Availability (Maybe Text)
aSegmentationName
  = lens _aSegmentationName
      (\ s a -> s{_aSegmentationName = a})

-- | The time by which all conversions have been uploaded, in epoch millis
-- UTC.
aAvailabilityTimestamp :: Lens' Availability (Maybe Word64)
aAvailabilityTimestamp
  = lens _aAvailabilityTimestamp
      (\ s a -> s{_aAvailabilityTimestamp = a})

-- | The segmentation type that this availability is for (its default value
-- is FLOODLIGHT).
aSegmentationType :: Lens' Availability (Maybe Text)
aSegmentationType
  = lens _aSegmentationType
      (\ s a -> s{_aSegmentationType = a})

-- | A conversion containing data relevant to DoubleClick Search.
--
-- /See:/ 'conversion' smart constructor.
data Conversion = Conversion
    { _cAdGroupId                   :: !(Maybe Int64)
    , _cConversionModifiedTimestamp :: !(Maybe Word64)
    , _cState                       :: !(Maybe Text)
    , _cEngineAccountId             :: !(Maybe Int64)
    , _cAgencyId                    :: !(Maybe Int64)
    , _cCurrencyCode                :: !(Maybe Text)
    , _cStoreId                     :: !(Maybe Text)
    , _cDsConversionId              :: !(Maybe Int64)
    , _cConversionId                :: !(Maybe Text)
    , _cAdvertiserId                :: !(Maybe Int64)
    , _cSegmentationId              :: !(Maybe Int64)
    , _cChannel                     :: !(Maybe Text)
    , _cProductCountry              :: !(Maybe Text)
    , _cCampaignId                  :: !(Maybe Int64)
    , _cCriterionId                 :: !(Maybe Int64)
    , _cConversionTimestamp         :: !(Maybe Word64)
    , _cAttributionModel            :: !(Maybe Text)
    , _cSegmentationName            :: !(Maybe Text)
    , _cProductLanguage             :: !(Maybe Text)
    , _cCustomMetric                :: !(Maybe [Maybe CustomMetric])
    , _cCountMillis                 :: !(Maybe Int64)
    , _cQuantityMillis              :: !(Maybe Int64)
    , _cAdId                        :: !(Maybe Int64)
    , _cDeviceType                  :: !(Maybe Text)
    , _cType                        :: !(Maybe Text)
    , _cCustomDimension             :: !(Maybe [Maybe CustomDimension])
    , _cFloodlightOrderId           :: !(Maybe Text)
    , _cRevenueMicros               :: !(Maybe Int64)
    , _cClickId                     :: !(Maybe Text)
    , _cInventoryAccountId          :: !(Maybe Int64)
    , _cSegmentationType            :: !(Maybe Text)
    , _cProductId                   :: !(Maybe Text)
    , _cProductGroupId              :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Conversion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cAdGroupId'
--
-- * 'cConversionModifiedTimestamp'
--
-- * 'cState'
--
-- * 'cEngineAccountId'
--
-- * 'cAgencyId'
--
-- * 'cCurrencyCode'
--
-- * 'cStoreId'
--
-- * 'cDsConversionId'
--
-- * 'cConversionId'
--
-- * 'cAdvertiserId'
--
-- * 'cSegmentationId'
--
-- * 'cChannel'
--
-- * 'cProductCountry'
--
-- * 'cCampaignId'
--
-- * 'cCriterionId'
--
-- * 'cConversionTimestamp'
--
-- * 'cAttributionModel'
--
-- * 'cSegmentationName'
--
-- * 'cProductLanguage'
--
-- * 'cCustomMetric'
--
-- * 'cCountMillis'
--
-- * 'cQuantityMillis'
--
-- * 'cAdId'
--
-- * 'cDeviceType'
--
-- * 'cType'
--
-- * 'cCustomDimension'
--
-- * 'cFloodlightOrderId'
--
-- * 'cRevenueMicros'
--
-- * 'cClickId'
--
-- * 'cInventoryAccountId'
--
-- * 'cSegmentationType'
--
-- * 'cProductId'
--
-- * 'cProductGroupId'
conversion
    :: Conversion
conversion =
    Conversion
    { _cAdGroupId = Nothing
    , _cConversionModifiedTimestamp = Nothing
    , _cState = Nothing
    , _cEngineAccountId = Nothing
    , _cAgencyId = Nothing
    , _cCurrencyCode = Nothing
    , _cStoreId = Nothing
    , _cDsConversionId = Nothing
    , _cConversionId = Nothing
    , _cAdvertiserId = Nothing
    , _cSegmentationId = Nothing
    , _cChannel = Nothing
    , _cProductCountry = Nothing
    , _cCampaignId = Nothing
    , _cCriterionId = Nothing
    , _cConversionTimestamp = Nothing
    , _cAttributionModel = Nothing
    , _cSegmentationName = Nothing
    , _cProductLanguage = Nothing
    , _cCustomMetric = Nothing
    , _cCountMillis = Nothing
    , _cQuantityMillis = Nothing
    , _cAdId = Nothing
    , _cDeviceType = Nothing
    , _cType = Nothing
    , _cCustomDimension = Nothing
    , _cFloodlightOrderId = Nothing
    , _cRevenueMicros = Nothing
    , _cClickId = Nothing
    , _cInventoryAccountId = Nothing
    , _cSegmentationType = Nothing
    , _cProductId = Nothing
    , _cProductGroupId = Nothing
    }

-- | DS ad group ID.
cAdGroupId :: Lens' Conversion (Maybe Int64)
cAdGroupId
  = lens _cAdGroupId (\ s a -> s{_cAdGroupId = a})

-- | The time at which the conversion was last modified, in epoch millis UTC.
cConversionModifiedTimestamp :: Lens' Conversion (Maybe Word64)
cConversionModifiedTimestamp
  = lens _cConversionModifiedTimestamp
      (\ s a -> s{_cConversionModifiedTimestamp = a})

-- | The state of the conversion, that is, either ACTIVE or REMOVED. Note:
-- state DELETED is deprecated.
cState :: Lens' Conversion (Maybe Text)
cState = lens _cState (\ s a -> s{_cState = a})

-- | DS engine account ID.
cEngineAccountId :: Lens' Conversion (Maybe Int64)
cEngineAccountId
  = lens _cEngineAccountId
      (\ s a -> s{_cEngineAccountId = a})

-- | DS agency ID.
cAgencyId :: Lens' Conversion (Maybe Int64)
cAgencyId
  = lens _cAgencyId (\ s a -> s{_cAgencyId = a})

-- | The currency code for the conversion\'s revenue. Should be in ISO 4217
-- alphabetic (3-char) format.
cCurrencyCode :: Lens' Conversion (Maybe Text)
cCurrencyCode
  = lens _cCurrencyCode
      (\ s a -> s{_cCurrencyCode = a})

-- | The ID of the local store for which the product was advertised.
-- Applicable only when the channel is \"local\".
cStoreId :: Lens' Conversion (Maybe Text)
cStoreId = lens _cStoreId (\ s a -> s{_cStoreId = a})

-- | ID that DoubleClick Search generates for each conversion.
cDsConversionId :: Lens' Conversion (Maybe Int64)
cDsConversionId
  = lens _cDsConversionId
      (\ s a -> s{_cDsConversionId = a})

-- | For offline conversions, this is an ID provided by advertisers.
-- Advertisers can use this property to specify an ID that is meaningful to
-- them. If an advertiser doesn\'t specify a conversionId, DoubleClick
-- Search generates one. For online conversions, DS copies the
-- dsConversionId or floodlightOrderId into this property depending on the
-- advertiser\'s Floodlight instructions.
cConversionId :: Lens' Conversion (Maybe Text)
cConversionId
  = lens _cConversionId
      (\ s a -> s{_cConversionId = a})

-- | DS advertiser ID.
cAdvertiserId :: Lens' Conversion (Maybe Int64)
cAdvertiserId
  = lens _cAdvertiserId
      (\ s a -> s{_cAdvertiserId = a})

-- | The numeric segmentation identifier (for example, DoubleClick Search
-- Floodlight activity ID).
cSegmentationId :: Lens' Conversion (Maybe Int64)
cSegmentationId
  = lens _cSegmentationId
      (\ s a -> s{_cSegmentationId = a})

-- | Sales channel for the product. Acceptable values are: - \"local\": a
-- physical store - \"online\": an online store
cChannel :: Lens' Conversion (Maybe Text)
cChannel = lens _cChannel (\ s a -> s{_cChannel = a})

-- | The country registered for the Merchant Center feed that contains the
-- product. Use an ISO 3166 code to specify a country.
cProductCountry :: Lens' Conversion (Maybe Text)
cProductCountry
  = lens _cProductCountry
      (\ s a -> s{_cProductCountry = a})

-- | DS campaign ID.
cCampaignId :: Lens' Conversion (Maybe Int64)
cCampaignId
  = lens _cCampaignId (\ s a -> s{_cCampaignId = a})

-- | DS criterion (keyword) ID.
cCriterionId :: Lens' Conversion (Maybe Int64)
cCriterionId
  = lens _cCriterionId (\ s a -> s{_cCriterionId = a})

-- | The time at which the conversion took place, in epoch millis UTC.
cConversionTimestamp :: Lens' Conversion (Maybe Word64)
cConversionTimestamp
  = lens _cConversionTimestamp
      (\ s a -> s{_cConversionTimestamp = a})

-- | This field is ignored.
cAttributionModel :: Lens' Conversion (Maybe Text)
cAttributionModel
  = lens _cAttributionModel
      (\ s a -> s{_cAttributionModel = a})

-- | The friendly segmentation identifier (for example, DoubleClick Search
-- Floodlight activity name).
cSegmentationName :: Lens' Conversion (Maybe Text)
cSegmentationName
  = lens _cSegmentationName
      (\ s a -> s{_cSegmentationName = a})

-- | The language registered for the Merchant Center feed that contains the
-- product. Use an ISO 639 code to specify a language.
cProductLanguage :: Lens' Conversion (Maybe Text)
cProductLanguage
  = lens _cProductLanguage
      (\ s a -> s{_cProductLanguage = a})

-- | Custom metrics for the conversion.
cCustomMetric :: Lens' Conversion [Maybe CustomMetric]
cCustomMetric
  = lens _cCustomMetric
      (\ s a -> s{_cCustomMetric = a})
      . _Default
      . _Coerce

-- | This field is ignored.
cCountMillis :: Lens' Conversion (Maybe Int64)
cCountMillis
  = lens _cCountMillis (\ s a -> s{_cCountMillis = a})

-- | The quantity of this conversion, in millis.
cQuantityMillis :: Lens' Conversion (Maybe Int64)
cQuantityMillis
  = lens _cQuantityMillis
      (\ s a -> s{_cQuantityMillis = a})

-- | DS ad ID.
cAdId :: Lens' Conversion (Maybe Int64)
cAdId = lens _cAdId (\ s a -> s{_cAdId = a})

-- | The type of device on which the conversion occurred.
cDeviceType :: Lens' Conversion (Maybe Text)
cDeviceType
  = lens _cDeviceType (\ s a -> s{_cDeviceType = a})

-- | The type of the conversion, that is, either ACTION or TRANSACTION. An
-- ACTION conversion is an action by the user that has no monetarily
-- quantifiable value, while a TRANSACTION conversion is an action that
-- does have a monetarily quantifiable value. Examples are email list
-- signups (ACTION) versus ecommerce purchases (TRANSACTION).
cType :: Lens' Conversion (Maybe Text)
cType = lens _cType (\ s a -> s{_cType = a})

-- | Custom dimensions for the conversion, which can be used to filter data
-- in a report.
cCustomDimension :: Lens' Conversion [Maybe CustomDimension]
cCustomDimension
  = lens _cCustomDimension
      (\ s a -> s{_cCustomDimension = a})
      . _Default
      . _Coerce

-- | The Floodlight order ID provided by the advertiser for the conversion.
cFloodlightOrderId :: Lens' Conversion (Maybe Text)
cFloodlightOrderId
  = lens _cFloodlightOrderId
      (\ s a -> s{_cFloodlightOrderId = a})

-- | The revenue amount of this TRANSACTION conversion, in micros.
cRevenueMicros :: Lens' Conversion (Maybe Int64)
cRevenueMicros
  = lens _cRevenueMicros
      (\ s a -> s{_cRevenueMicros = a})

-- | DS click ID for the conversion.
cClickId :: Lens' Conversion (Maybe Text)
cClickId = lens _cClickId (\ s a -> s{_cClickId = a})

-- | ID that DS generates and uses to uniquely identify the inventory account
-- that contains the product.
cInventoryAccountId :: Lens' Conversion (Maybe Int64)
cInventoryAccountId
  = lens _cInventoryAccountId
      (\ s a -> s{_cInventoryAccountId = a})

-- | The segmentation type of this conversion (for example, FLOODLIGHT).
cSegmentationType :: Lens' Conversion (Maybe Text)
cSegmentationType
  = lens _cSegmentationType
      (\ s a -> s{_cSegmentationType = a})

-- | The product ID (SKU).
cProductId :: Lens' Conversion (Maybe Text)
cProductId
  = lens _cProductId (\ s a -> s{_cProductId = a})

-- | DS product group ID.
cProductGroupId :: Lens' Conversion (Maybe Int64)
cProductGroupId
  = lens _cProductGroupId
      (\ s a -> s{_cProductGroupId = a})

-- | A list of conversions.
--
-- /See:/ 'conversionList' smart constructor.
data ConversionList = ConversionList
    { _clKind       :: !Text
    , _clConversion :: !(Maybe [Maybe Conversion])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConversionList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clKind'
--
-- * 'clConversion'
conversionList
    :: ConversionList
conversionList =
    ConversionList
    { _clKind = "doubleclicksearch#conversionList"
    , _clConversion = Nothing
    }

-- | Identifies this as a ConversionList resource. Value: the fixed string
-- doubleclicksearch#conversionList.
clKind :: Lens' ConversionList Text
clKind = lens _clKind (\ s a -> s{_clKind = a})

-- | The conversions being requested.
clConversion :: Lens' ConversionList [Maybe Conversion]
clConversion
  = lens _clConversion (\ s a -> s{_clConversion = a})
      . _Default
      . _Coerce

-- | A message containing the custome dimension.
--
-- /See:/ 'customDimension' smart constructor.
data CustomDimension = CustomDimension
    { _cdValue :: !(Maybe Text)
    , _cdName  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomDimension' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdValue'
--
-- * 'cdName'
customDimension
    :: CustomDimension
customDimension =
    CustomDimension
    { _cdValue = Nothing
    , _cdName = Nothing
    }

-- | Custom dimension value.
cdValue :: Lens' CustomDimension (Maybe Text)
cdValue = lens _cdValue (\ s a -> s{_cdValue = a})

-- | Custom dimension name.
cdName :: Lens' CustomDimension (Maybe Text)
cdName = lens _cdName (\ s a -> s{_cdName = a})

-- | A message containing the custome metric.
--
-- /See:/ 'customMetric' smart constructor.
data CustomMetric = CustomMetric
    { _cmValue :: !(Maybe Double)
    , _cmName  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomMetric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmValue'
--
-- * 'cmName'
customMetric
    :: CustomMetric
customMetric =
    CustomMetric
    { _cmValue = Nothing
    , _cmName = Nothing
    }

-- | Custom metric numeric value.
cmValue :: Lens' CustomMetric (Maybe Double)
cmValue = lens _cmValue (\ s a -> s{_cmValue = a})

-- | Custom metric name.
cmName :: Lens' CustomMetric (Maybe Text)
cmName = lens _cmName (\ s a -> s{_cmName = a})

-- | A DoubleClick Search report. This object contains the report request,
-- some report metadata such as currency code, and the generated report
-- rows or report files.
--
-- /See:/ 'report' smart constructor.
data Report = Report
    { _rKind                   :: !Text
    , _rRows                   :: !(Maybe [Maybe ReportRow])
    , _rStatisticsCurrencyCode :: !(Maybe Text)
    , _rIsReportReady          :: !(Maybe Bool)
    , _rFiles                  :: !(Maybe [ReportItemFiles])
    , _rId                     :: !(Maybe Text)
    , _rStatisticsTimeZone     :: !(Maybe Text)
    , _rRowCount               :: !(Maybe Int32)
    , _rRequest                :: !(Maybe (Maybe ReportRequest))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Report' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rKind'
--
-- * 'rRows'
--
-- * 'rStatisticsCurrencyCode'
--
-- * 'rIsReportReady'
--
-- * 'rFiles'
--
-- * 'rId'
--
-- * 'rStatisticsTimeZone'
--
-- * 'rRowCount'
--
-- * 'rRequest'
report
    :: Report
report =
    Report
    { _rKind = "doubleclicksearch#report"
    , _rRows = Nothing
    , _rStatisticsCurrencyCode = Nothing
    , _rIsReportReady = Nothing
    , _rFiles = Nothing
    , _rId = Nothing
    , _rStatisticsTimeZone = Nothing
    , _rRowCount = Nothing
    , _rRequest = Nothing
    }

-- | Identifies this as a Report resource. Value: the fixed string
-- doubleclicksearch#report.
rKind :: Lens' Report Text
rKind = lens _rKind (\ s a -> s{_rKind = a})

-- | Synchronous report only. Generated report rows.
rRows :: Lens' Report [Maybe ReportRow]
rRows
  = lens _rRows (\ s a -> s{_rRows = a}) . _Default .
      _Coerce

-- | The currency code of all monetary values produced in the report,
-- including values that are set by users (e.g., keyword bid settings) and
-- metrics (e.g., cost and revenue). The currency code of a report is
-- determined by the statisticsCurrency field of the report request.
rStatisticsCurrencyCode :: Lens' Report (Maybe Text)
rStatisticsCurrencyCode
  = lens _rStatisticsCurrencyCode
      (\ s a -> s{_rStatisticsCurrencyCode = a})

-- | Asynchronous report only. True if and only if the report has completed
-- successfully and the report files are ready to be downloaded.
rIsReportReady :: Lens' Report (Maybe Bool)
rIsReportReady
  = lens _rIsReportReady
      (\ s a -> s{_rIsReportReady = a})

-- | Asynchronous report only. Contains a list of generated report files once
-- the report has succesfully completed.
rFiles :: Lens' Report [ReportItemFiles]
rFiles
  = lens _rFiles (\ s a -> s{_rFiles = a}) . _Default .
      _Coerce

-- | Asynchronous report only. Id of the report.
rId :: Lens' Report (Maybe Text)
rId = lens _rId (\ s a -> s{_rId = a})

-- | If all statistics of the report are sourced from the same time zone,
-- this would be it. Otherwise the field is unset.
rStatisticsTimeZone :: Lens' Report (Maybe Text)
rStatisticsTimeZone
  = lens _rStatisticsTimeZone
      (\ s a -> s{_rStatisticsTimeZone = a})

-- | The number of report rows generated by the report, not including
-- headers.
rRowCount :: Lens' Report (Maybe Int32)
rRowCount
  = lens _rRowCount (\ s a -> s{_rRowCount = a})

-- | The request that created the report. Optional fields not specified in
-- the original request are filled with default values.
rRequest :: Lens' Report (Maybe (Maybe ReportRequest))
rRequest = lens _rRequest (\ s a -> s{_rRequest = a})

-- | A request object used to create a DoubleClick Search report.
--
-- /See:/ 'reportApiColumnSpec' smart constructor.
data ReportApiColumnSpec = ReportApiColumnSpec
    { _racsCustomDimensionName :: !(Maybe Text)
    , _racsSavedColumnName     :: !(Maybe Text)
    , _racsGroupByColumn       :: !Bool
    , _racsCustomMetricName    :: !(Maybe Text)
    , _racsEndDate             :: !(Maybe Text)
    , _racsStartDate           :: !(Maybe Text)
    , _racsHeaderText          :: !(Maybe Text)
    , _racsPlatformSource      :: !(Maybe Text)
    , _racsColumnName          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportApiColumnSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'racsCustomDimensionName'
--
-- * 'racsSavedColumnName'
--
-- * 'racsGroupByColumn'
--
-- * 'racsCustomMetricName'
--
-- * 'racsEndDate'
--
-- * 'racsStartDate'
--
-- * 'racsHeaderText'
--
-- * 'racsPlatformSource'
--
-- * 'racsColumnName'
reportApiColumnSpec
    :: ReportApiColumnSpec
reportApiColumnSpec =
    ReportApiColumnSpec
    { _racsCustomDimensionName = Nothing
    , _racsSavedColumnName = Nothing
    , _racsGroupByColumn = False
    , _racsCustomMetricName = Nothing
    , _racsEndDate = Nothing
    , _racsStartDate = Nothing
    , _racsHeaderText = Nothing
    , _racsPlatformSource = Nothing
    , _racsColumnName = Nothing
    }

-- | Segments a report by a custom dimension. The report must be scoped to an
-- advertiser or lower, and the custom dimension must already be set up in
-- DoubleClick Search. The custom dimension name, which appears in
-- DoubleClick Search, is case sensitive. If used in a conversion report,
-- returns the value of the specified custom dimension for the given
-- conversion, if set. This column does not segment the conversion report.
racsCustomDimensionName :: Lens' ReportApiColumnSpec (Maybe Text)
racsCustomDimensionName
  = lens _racsCustomDimensionName
      (\ s a -> s{_racsCustomDimensionName = a})

-- | Name of a saved column to include in the report. The report must be
-- scoped at advertiser or lower, and this saved column must already be
-- created in the DoubleClick Search UI.
racsSavedColumnName :: Lens' ReportApiColumnSpec (Maybe Text)
racsSavedColumnName
  = lens _racsSavedColumnName
      (\ s a -> s{_racsSavedColumnName = a})

-- | Synchronous report only. Set to true to group by this column. Defaults
-- to false.
racsGroupByColumn :: Lens' ReportApiColumnSpec Bool
racsGroupByColumn
  = lens _racsGroupByColumn
      (\ s a -> s{_racsGroupByColumn = a})

-- | Name of a custom metric to include in the report. The report must be
-- scoped to an advertiser or lower, and the custom metric must already be
-- set up in DoubleClick Search. The custom metric name, which appears in
-- DoubleClick Search, is case sensitive.
racsCustomMetricName :: Lens' ReportApiColumnSpec (Maybe Text)
racsCustomMetricName
  = lens _racsCustomMetricName
      (\ s a -> s{_racsCustomMetricName = a})

-- | Inclusive day in YYYY-MM-DD format. When provided, this overrides the
-- overall time range of the report for this column only. Must be provided
-- together with startDate.
racsEndDate :: Lens' ReportApiColumnSpec (Maybe Text)
racsEndDate
  = lens _racsEndDate (\ s a -> s{_racsEndDate = a})

-- | Inclusive date in YYYY-MM-DD format. When provided, this overrides the
-- overall time range of the report for this column only. Must be provided
-- together with endDate.
racsStartDate :: Lens' ReportApiColumnSpec (Maybe Text)
racsStartDate
  = lens _racsStartDate
      (\ s a -> s{_racsStartDate = a})

-- | Text used to identify this column in the report output; defaults to
-- columnName or savedColumnName when not specified. This can be used to
-- prevent collisions between DoubleClick Search columns and saved columns
-- with the same name.
racsHeaderText :: Lens' ReportApiColumnSpec (Maybe Text)
racsHeaderText
  = lens _racsHeaderText
      (\ s a -> s{_racsHeaderText = a})

-- | The platform that is used to provide data for the custom dimension.
-- Acceptable values are \"Floodlight\".
racsPlatformSource :: Lens' ReportApiColumnSpec (Maybe Text)
racsPlatformSource
  = lens _racsPlatformSource
      (\ s a -> s{_racsPlatformSource = a})

-- | Name of a DoubleClick Search column to include in the report.
racsColumnName :: Lens' ReportApiColumnSpec (Maybe Text)
racsColumnName
  = lens _racsColumnName
      (\ s a -> s{_racsColumnName = a})

--
-- /See:/ 'reportItemFiles' smart constructor.
data ReportItemFiles = ReportItemFiles
    { _rifUrl       :: !(Maybe Text)
    , _rifByteCount :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportItemFiles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rifUrl'
--
-- * 'rifByteCount'
reportItemFiles
    :: ReportItemFiles
reportItemFiles =
    ReportItemFiles
    { _rifUrl = Nothing
    , _rifByteCount = Nothing
    }

-- | Use this url to download the report file.
rifUrl :: Lens' ReportItemFiles (Maybe Text)
rifUrl = lens _rifUrl (\ s a -> s{_rifUrl = a})

-- | The size of this report file in bytes.
rifByteCount :: Lens' ReportItemFiles (Maybe Int64)
rifByteCount
  = lens _rifByteCount (\ s a -> s{_rifByteCount = a})

-- | A request object used to create a DoubleClick Search report.
--
-- /See:/ 'reportRequest' smart constructor.
data ReportRequest = ReportRequest
    { _rrMaxRowsPerFile         :: !(Maybe Natural)
    , _rrReportScope            :: !(Maybe ReportRequestReportScope)
    , _rrStatisticsCurrency     :: !(Maybe Text)
    , _rrTimeRange              :: !(Maybe ReportRequestTimeRange)
    , _rrOrderBy                :: !(Maybe [ReportRequestItemOrderBy])
    , _rrFilters                :: !(Maybe [ReportRequestItemFilters])
    , _rrIncludeRemovedEntities :: !Bool
    , _rrIncludeDeletedEntities :: !Bool
    , _rrDownloadFormat         :: !(Maybe Text)
    , _rrStartRow               :: !Int32
    , _rrColumns                :: !(Maybe [Maybe ReportApiColumnSpec])
    , _rrReportType             :: !(Maybe Text)
    , _rrVerifySingleTimeZone   :: !Bool
    , _rrRowCount               :: !Int32
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrMaxRowsPerFile'
--
-- * 'rrReportScope'
--
-- * 'rrStatisticsCurrency'
--
-- * 'rrTimeRange'
--
-- * 'rrOrderBy'
--
-- * 'rrFilters'
--
-- * 'rrIncludeRemovedEntities'
--
-- * 'rrIncludeDeletedEntities'
--
-- * 'rrDownloadFormat'
--
-- * 'rrStartRow'
--
-- * 'rrColumns'
--
-- * 'rrReportType'
--
-- * 'rrVerifySingleTimeZone'
--
-- * 'rrRowCount'
reportRequest
    :: ReportRequest
reportRequest =
    ReportRequest
    { _rrMaxRowsPerFile = Nothing
    , _rrReportScope = Nothing
    , _rrStatisticsCurrency = Nothing
    , _rrTimeRange = Nothing
    , _rrOrderBy = Nothing
    , _rrFilters = Nothing
    , _rrIncludeRemovedEntities = False
    , _rrIncludeDeletedEntities = False
    , _rrDownloadFormat = Nothing
    , _rrStartRow = 0
    , _rrColumns = Nothing
    , _rrReportType = Nothing
    , _rrVerifySingleTimeZone = False
    , _rrRowCount = 10000
    }

-- | Asynchronous report only. The maximum number of rows per report file. A
-- large report is split into many files based on this field. Acceptable
-- values are 1000000 to 100000000, inclusive.
rrMaxRowsPerFile :: Lens' ReportRequest (Maybe Natural)
rrMaxRowsPerFile
  = lens _rrMaxRowsPerFile
      (\ s a -> s{_rrMaxRowsPerFile = a})

-- | The reportScope is a set of IDs that are used to determine which subset
-- of entities will be returned in the report. The full lineage of IDs from
-- the lowest scoped level desired up through agency is required.
rrReportScope :: Lens' ReportRequest (Maybe ReportRequestReportScope)
rrReportScope
  = lens _rrReportScope
      (\ s a -> s{_rrReportScope = a})

-- | Specifies the currency in which monetary will be returned. Possible
-- values are: usd, agency (valid if the report is scoped to agency or
-- lower), advertiser (valid if the report is scoped to * advertiser or
-- lower), or account (valid if the report is scoped to engine account or
-- lower).
rrStatisticsCurrency :: Lens' ReportRequest (Maybe Text)
rrStatisticsCurrency
  = lens _rrStatisticsCurrency
      (\ s a -> s{_rrStatisticsCurrency = a})

-- | If metrics are requested in a report, this argument will be used to
-- restrict the metrics to a specific time range.
rrTimeRange :: Lens' ReportRequest (Maybe ReportRequestTimeRange)
rrTimeRange
  = lens _rrTimeRange (\ s a -> s{_rrTimeRange = a})

-- | Synchronous report only. A list of columns and directions defining
-- sorting to be performed on the report rows.
rrOrderBy :: Lens' ReportRequest [ReportRequestItemOrderBy]
rrOrderBy
  = lens _rrOrderBy (\ s a -> s{_rrOrderBy = a}) .
      _Default
      . _Coerce

-- | A list of filters to be applied to the report.
rrFilters :: Lens' ReportRequest [ReportRequestItemFilters]
rrFilters
  = lens _rrFilters (\ s a -> s{_rrFilters = a}) .
      _Default
      . _Coerce

-- | Determines if removed entities should be included in the report.
-- Defaults to false.
rrIncludeRemovedEntities :: Lens' ReportRequest Bool
rrIncludeRemovedEntities
  = lens _rrIncludeRemovedEntities
      (\ s a -> s{_rrIncludeRemovedEntities = a})

-- | Determines if removed entities should be included in the report.
-- Defaults to false. Deprecated, please use includeRemovedEntities
-- instead.
rrIncludeDeletedEntities :: Lens' ReportRequest Bool
rrIncludeDeletedEntities
  = lens _rrIncludeDeletedEntities
      (\ s a -> s{_rrIncludeDeletedEntities = a})

-- | Format that the report should be returned in. Currently csv or tsv is
-- supported.
rrDownloadFormat :: Lens' ReportRequest (Maybe Text)
rrDownloadFormat
  = lens _rrDownloadFormat
      (\ s a -> s{_rrDownloadFormat = a})

-- | Synchronous report only. Zero-based index of the first row to return.
-- Acceptable values are 0 to 50000, inclusive. Defaults to 0.
rrStartRow :: Lens' ReportRequest Int32
rrStartRow
  = lens _rrStartRow (\ s a -> s{_rrStartRow = a})

-- | The columns to include in the report. This includes both DoubleClick
-- Search columns and saved columns. For DoubleClick Search columns, only
-- the columnName parameter is required. For saved columns only the
-- savedColumnName parameter is required. Both columnName and
-- savedColumnName cannot be set in the same stanza.
rrColumns :: Lens' ReportRequest [Maybe ReportApiColumnSpec]
rrColumns
  = lens _rrColumns (\ s a -> s{_rrColumns = a}) .
      _Default
      . _Coerce

-- | Determines the type of rows that are returned in the report. For
-- example, if you specify reportType: keyword, each row in the report will
-- contain data about a keyword. See the Types of Reports reference for the
-- columns that are available for each type.
rrReportType :: Lens' ReportRequest (Maybe Text)
rrReportType
  = lens _rrReportType (\ s a -> s{_rrReportType = a})

-- | If true, the report would only be created if all the requested stat data
-- are sourced from a single timezone. Defaults to false.
rrVerifySingleTimeZone :: Lens' ReportRequest Bool
rrVerifySingleTimeZone
  = lens _rrVerifySingleTimeZone
      (\ s a -> s{_rrVerifySingleTimeZone = a})

-- | Synchronous report only. The maxinum number of rows to return;
-- additional rows are dropped. Acceptable values are 0 to 10000,
-- inclusive. Defaults to 10000.
rrRowCount :: Lens' ReportRequest Int32
rrRowCount
  = lens _rrRowCount (\ s a -> s{_rrRowCount = a})

--
-- /See:/ 'reportRequestItemFilters' smart constructor.
data ReportRequestItemFilters = ReportRequestItemFilters
    { _rrifOperator :: !(Maybe Text)
    , _rrifValues   :: !(Maybe [Either Text Int64])
    , _rrifColumn   :: !(Maybe (Maybe ReportApiColumnSpec))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportRequestItemFilters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrifOperator'
--
-- * 'rrifValues'
--
-- * 'rrifColumn'
reportRequestItemFilters
    :: ReportRequestItemFilters
reportRequestItemFilters =
    ReportRequestItemFilters
    { _rrifOperator = Nothing
    , _rrifValues = Nothing
    , _rrifColumn = Nothing
    }

-- | Operator to use in the filter. See the filter reference for a list of
-- available operators.
rrifOperator :: Lens' ReportRequestItemFilters (Maybe Text)
rrifOperator
  = lens _rrifOperator (\ s a -> s{_rrifOperator = a})

-- | A list of values to filter the column value against.
rrifValues :: Lens' ReportRequestItemFilters [Either Text Int64]
rrifValues
  = lens _rrifValues (\ s a -> s{_rrifValues = a}) .
      _Default
      . _Coerce

-- | Column to perform the filter on. This can be a DoubleClick Search column
-- or a saved column.
rrifColumn :: Lens' ReportRequestItemFilters (Maybe (Maybe ReportApiColumnSpec))
rrifColumn
  = lens _rrifColumn (\ s a -> s{_rrifColumn = a})

--
-- /See:/ 'reportRequestItemOrderBy' smart constructor.
data ReportRequestItemOrderBy = ReportRequestItemOrderBy
    { _rriobSortOrder :: !(Maybe Text)
    , _rriobColumn    :: !(Maybe (Maybe ReportApiColumnSpec))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportRequestItemOrderBy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rriobSortOrder'
--
-- * 'rriobColumn'
reportRequestItemOrderBy
    :: ReportRequestItemOrderBy
reportRequestItemOrderBy =
    ReportRequestItemOrderBy
    { _rriobSortOrder = Nothing
    , _rriobColumn = Nothing
    }

-- | The sort direction, which is either ascending or descending.
rriobSortOrder :: Lens' ReportRequestItemOrderBy (Maybe Text)
rriobSortOrder
  = lens _rriobSortOrder
      (\ s a -> s{_rriobSortOrder = a})

-- | Column to perform the sort on. This can be a DoubleClick Search-defined
-- column or a saved column.
rriobColumn :: Lens' ReportRequestItemOrderBy (Maybe (Maybe ReportApiColumnSpec))
rriobColumn
  = lens _rriobColumn (\ s a -> s{_rriobColumn = a})

-- | The reportScope is a set of IDs that are used to determine which subset
-- of entities will be returned in the report. The full lineage of IDs from
-- the lowest scoped level desired up through agency is required.
--
-- /See:/ 'reportRequestReportScope' smart constructor.
data ReportRequestReportScope = ReportRequestReportScope
    { _rrrsKeywordId       :: !(Maybe Int64)
    , _rrrsAdGroupId       :: !(Maybe Int64)
    , _rrrsEngineAccountId :: !(Maybe Int64)
    , _rrrsAgencyId        :: !(Maybe Int64)
    , _rrrsAdvertiserId    :: !(Maybe Int64)
    , _rrrsCampaignId      :: !(Maybe Int64)
    , _rrrsAdId            :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportRequestReportScope' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrrsKeywordId'
--
-- * 'rrrsAdGroupId'
--
-- * 'rrrsEngineAccountId'
--
-- * 'rrrsAgencyId'
--
-- * 'rrrsAdvertiserId'
--
-- * 'rrrsCampaignId'
--
-- * 'rrrsAdId'
reportRequestReportScope
    :: ReportRequestReportScope
reportRequestReportScope =
    ReportRequestReportScope
    { _rrrsKeywordId = Nothing
    , _rrrsAdGroupId = Nothing
    , _rrrsEngineAccountId = Nothing
    , _rrrsAgencyId = Nothing
    , _rrrsAdvertiserId = Nothing
    , _rrrsCampaignId = Nothing
    , _rrrsAdId = Nothing
    }

-- | DS keyword ID.
rrrsKeywordId :: Lens' ReportRequestReportScope (Maybe Int64)
rrrsKeywordId
  = lens _rrrsKeywordId
      (\ s a -> s{_rrrsKeywordId = a})

-- | DS ad group ID.
rrrsAdGroupId :: Lens' ReportRequestReportScope (Maybe Int64)
rrrsAdGroupId
  = lens _rrrsAdGroupId
      (\ s a -> s{_rrrsAdGroupId = a})

-- | DS engine account ID.
rrrsEngineAccountId :: Lens' ReportRequestReportScope (Maybe Int64)
rrrsEngineAccountId
  = lens _rrrsEngineAccountId
      (\ s a -> s{_rrrsEngineAccountId = a})

-- | DS agency ID.
rrrsAgencyId :: Lens' ReportRequestReportScope (Maybe Int64)
rrrsAgencyId
  = lens _rrrsAgencyId (\ s a -> s{_rrrsAgencyId = a})

-- | DS advertiser ID.
rrrsAdvertiserId :: Lens' ReportRequestReportScope (Maybe Int64)
rrrsAdvertiserId
  = lens _rrrsAdvertiserId
      (\ s a -> s{_rrrsAdvertiserId = a})

-- | DS campaign ID.
rrrsCampaignId :: Lens' ReportRequestReportScope (Maybe Int64)
rrrsCampaignId
  = lens _rrrsCampaignId
      (\ s a -> s{_rrrsCampaignId = a})

-- | DS ad ID.
rrrsAdId :: Lens' ReportRequestReportScope (Maybe Int64)
rrrsAdId = lens _rrrsAdId (\ s a -> s{_rrrsAdId = a})

-- | If metrics are requested in a report, this argument will be used to
-- restrict the metrics to a specific time range.
--
-- /See:/ 'reportRequestTimeRange' smart constructor.
data ReportRequestTimeRange = ReportRequestTimeRange
    { _rrtrEndDate                         :: !(Maybe Text)
    , _rrtrChangedAttributesSinceTimestamp :: !(Maybe UTCTime)
    , _rrtrStartDate                       :: !(Maybe Text)
    , _rrtrChangedMetricsSinceTimestamp    :: !(Maybe UTCTime)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportRequestTimeRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrtrEndDate'
--
-- * 'rrtrChangedAttributesSinceTimestamp'
--
-- * 'rrtrStartDate'
--
-- * 'rrtrChangedMetricsSinceTimestamp'
reportRequestTimeRange
    :: ReportRequestTimeRange
reportRequestTimeRange =
    ReportRequestTimeRange
    { _rrtrEndDate = Nothing
    , _rrtrChangedAttributesSinceTimestamp = Nothing
    , _rrtrStartDate = Nothing
    , _rrtrChangedMetricsSinceTimestamp = Nothing
    }

-- | Inclusive date in YYYY-MM-DD format.
rrtrEndDate :: Lens' ReportRequestTimeRange (Maybe Text)
rrtrEndDate
  = lens _rrtrEndDate (\ s a -> s{_rrtrEndDate = a})

-- | Inclusive UTC timestamp in RFC format, e.g., 2013-07-16T10:16:23.555Z.
-- See additional references on how changed attribute reports work.
rrtrChangedAttributesSinceTimestamp :: Lens' ReportRequestTimeRange (Maybe UTCTime)
rrtrChangedAttributesSinceTimestamp
  = lens _rrtrChangedAttributesSinceTimestamp
      (\ s a ->
         s{_rrtrChangedAttributesSinceTimestamp = a})

-- | Inclusive date in YYYY-MM-DD format.
rrtrStartDate :: Lens' ReportRequestTimeRange (Maybe Text)
rrtrStartDate
  = lens _rrtrStartDate
      (\ s a -> s{_rrtrStartDate = a})

-- | Inclusive UTC timestamp in RFC format, e.g., 2013-07-16T10:16:23.555Z.
-- See additional references on how changed metrics reports work.
rrtrChangedMetricsSinceTimestamp :: Lens' ReportRequestTimeRange (Maybe UTCTime)
rrtrChangedMetricsSinceTimestamp
  = lens _rrtrChangedMetricsSinceTimestamp
      (\ s a -> s{_rrtrChangedMetricsSinceTimestamp = a})

-- | A row in a DoubleClick Search report.
--
-- /See:/ 'reportRow' smart constructor.
data ReportRow =
    ReportRow
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportRow' with the minimum fields required to make a request.
--
reportRow
    :: ReportRow
reportRow = ReportRow

-- | A saved column
--
-- /See:/ 'savedColumn' smart constructor.
data SavedColumn = SavedColumn
    { _scSavedColumnName :: !(Maybe Text)
    , _scKind            :: !Text
    , _scType            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SavedColumn' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scSavedColumnName'
--
-- * 'scKind'
--
-- * 'scType'
savedColumn
    :: SavedColumn
savedColumn =
    SavedColumn
    { _scSavedColumnName = Nothing
    , _scKind = "doubleclicksearch#savedColumn"
    , _scType = Nothing
    }

-- | The name of the saved column.
scSavedColumnName :: Lens' SavedColumn (Maybe Text)
scSavedColumnName
  = lens _scSavedColumnName
      (\ s a -> s{_scSavedColumnName = a})

-- | Identifies this as a SavedColumn resource. Value: the fixed string
-- doubleclicksearch#savedColumn.
scKind :: Lens' SavedColumn Text
scKind = lens _scKind (\ s a -> s{_scKind = a})

-- | The type of data this saved column will produce.
scType :: Lens' SavedColumn (Maybe Text)
scType = lens _scType (\ s a -> s{_scType = a})

-- | A list of saved columns. Advertisers create saved columns to report on
-- Floodlight activities, Google Analytics goals, or custom KPIs. To
-- request reports with saved columns, you\'ll need the saved column names
-- that are available from this list.
--
-- /See:/ 'savedColumnList' smart constructor.
data SavedColumnList = SavedColumnList
    { _sclKind  :: !Text
    , _sclItems :: !(Maybe [Maybe SavedColumn])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SavedColumnList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sclKind'
--
-- * 'sclItems'
savedColumnList
    :: SavedColumnList
savedColumnList =
    SavedColumnList
    { _sclKind = "doubleclicksearch#savedColumnList"
    , _sclItems = Nothing
    }

-- | Identifies this as a SavedColumnList resource. Value: the fixed string
-- doubleclicksearch#savedColumnList.
sclKind :: Lens' SavedColumnList Text
sclKind = lens _sclKind (\ s a -> s{_sclKind = a})

-- | The saved columns being requested.
sclItems :: Lens' SavedColumnList [Maybe SavedColumn]
sclItems
  = lens _sclItems (\ s a -> s{_sclItems = a}) .
      _Default
      . _Coerce

-- | The request to update availability.
--
-- /See:/ 'updateAvailabilityRequest' smart constructor.
newtype UpdateAvailabilityRequest = UpdateAvailabilityRequest
    { _uAvailabilities :: Maybe [Maybe Availability]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UpdateAvailabilityRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uAvailabilities'
updateAvailabilityRequest
    :: UpdateAvailabilityRequest
updateAvailabilityRequest =
    UpdateAvailabilityRequest
    { _uAvailabilities = Nothing
    }

-- | The availabilities being requested.
uAvailabilities :: Lens' UpdateAvailabilityRequest [Maybe Availability]
uAvailabilities
  = lens _uAvailabilities
      (\ s a -> s{_uAvailabilities = a})
      . _Default
      . _Coerce

-- | The response to a update availability request.
--
-- /See:/ 'updateAvailabilityResponse' smart constructor.
newtype UpdateAvailabilityResponse = UpdateAvailabilityResponse
    { _uarAvailabilities :: Maybe [Maybe Availability]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UpdateAvailabilityResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uarAvailabilities'
updateAvailabilityResponse
    :: UpdateAvailabilityResponse
updateAvailabilityResponse =
    UpdateAvailabilityResponse
    { _uarAvailabilities = Nothing
    }

-- | The availabilities being returned.
uarAvailabilities :: Lens' UpdateAvailabilityResponse [Maybe Availability]
uarAvailabilities
  = lens _uarAvailabilities
      (\ s a -> s{_uarAvailabilities = a})
      . _Default
      . _Coerce
