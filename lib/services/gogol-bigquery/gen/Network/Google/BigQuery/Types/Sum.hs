{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.BigQuery.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.BigQuery.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The data frequency of a time series.
data TrainingOptionsDataFrequency
    = DataFrequencyUnspecified
      -- ^ @DATA_FREQUENCY_UNSPECIFIED@
    | AutoFrequency
      -- ^ @AUTO_FREQUENCY@
      -- Automatically inferred from timestamps.
    | Yearly
      -- ^ @YEARLY@
      -- Yearly data.
    | Quarterly
      -- ^ @QUARTERLY@
      -- Quarterly data.
    | Monthly
      -- ^ @MONTHLY@
      -- Monthly data.
    | Weekly
      -- ^ @WEEKLY@
      -- Weekly data.
    | Daily
      -- ^ @DAILY@
      -- Daily data.
    | Hourly
      -- ^ @HOURLY@
      -- Hourly data.
    | PerMinute
      -- ^ @PER_MINUTE@
      -- Per-minute data.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TrainingOptionsDataFrequency

instance FromHttpApiData TrainingOptionsDataFrequency where
    parseQueryParam = \case
        "DATA_FREQUENCY_UNSPECIFIED" -> Right DataFrequencyUnspecified
        "AUTO_FREQUENCY" -> Right AutoFrequency
        "YEARLY" -> Right Yearly
        "QUARTERLY" -> Right Quarterly
        "MONTHLY" -> Right Monthly
        "WEEKLY" -> Right Weekly
        "DAILY" -> Right Daily
        "HOURLY" -> Right Hourly
        "PER_MINUTE" -> Right PerMinute
        x -> Left ("Unable to parse TrainingOptionsDataFrequency from: " <> x)

instance ToHttpApiData TrainingOptionsDataFrequency where
    toQueryParam = \case
        DataFrequencyUnspecified -> "DATA_FREQUENCY_UNSPECIFIED"
        AutoFrequency -> "AUTO_FREQUENCY"
        Yearly -> "YEARLY"
        Quarterly -> "QUARTERLY"
        Monthly -> "MONTHLY"
        Weekly -> "WEEKLY"
        Daily -> "DAILY"
        Hourly -> "HOURLY"
        PerMinute -> "PER_MINUTE"

instance FromJSON TrainingOptionsDataFrequency where
    parseJSON = parseJSONText "TrainingOptionsDataFrequency"

instance ToJSON TrainingOptionsDataFrequency where
    toJSON = toJSONText

data ArimaSingleModelForecastingMetricsSeasonalPeriodsItem
    = ASMFMSPISeasonalPeriodTypeUnspecified
      -- ^ @SEASONAL_PERIOD_TYPE_UNSPECIFIED@
    | ASMFMSPINoSeasonality
      -- ^ @NO_SEASONALITY@
      -- No seasonality
    | ASMFMSPIDaily
      -- ^ @DAILY@
      -- Daily period, 24 hours.
    | ASMFMSPIWeekly
      -- ^ @WEEKLY@
      -- Weekly period, 7 days.
    | ASMFMSPIMonthly
      -- ^ @MONTHLY@
      -- Monthly period, 30 days or irregular.
    | ASMFMSPIQuarterly
      -- ^ @QUARTERLY@
      -- Quarterly period, 90 days or irregular.
    | ASMFMSPIYearly
      -- ^ @YEARLY@
      -- Yearly period, 365 days or irregular.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ArimaSingleModelForecastingMetricsSeasonalPeriodsItem

instance FromHttpApiData ArimaSingleModelForecastingMetricsSeasonalPeriodsItem where
    parseQueryParam = \case
        "SEASONAL_PERIOD_TYPE_UNSPECIFIED" -> Right ASMFMSPISeasonalPeriodTypeUnspecified
        "NO_SEASONALITY" -> Right ASMFMSPINoSeasonality
        "DAILY" -> Right ASMFMSPIDaily
        "WEEKLY" -> Right ASMFMSPIWeekly
        "MONTHLY" -> Right ASMFMSPIMonthly
        "QUARTERLY" -> Right ASMFMSPIQuarterly
        "YEARLY" -> Right ASMFMSPIYearly
        x -> Left ("Unable to parse ArimaSingleModelForecastingMetricsSeasonalPeriodsItem from: " <> x)

instance ToHttpApiData ArimaSingleModelForecastingMetricsSeasonalPeriodsItem where
    toQueryParam = \case
        ASMFMSPISeasonalPeriodTypeUnspecified -> "SEASONAL_PERIOD_TYPE_UNSPECIFIED"
        ASMFMSPINoSeasonality -> "NO_SEASONALITY"
        ASMFMSPIDaily -> "DAILY"
        ASMFMSPIWeekly -> "WEEKLY"
        ASMFMSPIMonthly -> "MONTHLY"
        ASMFMSPIQuarterly -> "QUARTERLY"
        ASMFMSPIYearly -> "YEARLY"

instance FromJSON ArimaSingleModelForecastingMetricsSeasonalPeriodsItem where
    parseJSON = parseJSONText "ArimaSingleModelForecastingMetricsSeasonalPeriodsItem"

instance ToJSON ArimaSingleModelForecastingMetricsSeasonalPeriodsItem where
    toJSON = toJSONText

data ArimaResultSeasonalPeriodsItem
    = ARSPISeasonalPeriodTypeUnspecified
      -- ^ @SEASONAL_PERIOD_TYPE_UNSPECIFIED@
    | ARSPINoSeasonality
      -- ^ @NO_SEASONALITY@
      -- No seasonality
    | ARSPIDaily
      -- ^ @DAILY@
      -- Daily period, 24 hours.
    | ARSPIWeekly
      -- ^ @WEEKLY@
      -- Weekly period, 7 days.
    | ARSPIMonthly
      -- ^ @MONTHLY@
      -- Monthly period, 30 days or irregular.
    | ARSPIQuarterly
      -- ^ @QUARTERLY@
      -- Quarterly period, 90 days or irregular.
    | ARSPIYearly
      -- ^ @YEARLY@
      -- Yearly period, 365 days or irregular.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ArimaResultSeasonalPeriodsItem

instance FromHttpApiData ArimaResultSeasonalPeriodsItem where
    parseQueryParam = \case
        "SEASONAL_PERIOD_TYPE_UNSPECIFIED" -> Right ARSPISeasonalPeriodTypeUnspecified
        "NO_SEASONALITY" -> Right ARSPINoSeasonality
        "DAILY" -> Right ARSPIDaily
        "WEEKLY" -> Right ARSPIWeekly
        "MONTHLY" -> Right ARSPIMonthly
        "QUARTERLY" -> Right ARSPIQuarterly
        "YEARLY" -> Right ARSPIYearly
        x -> Left ("Unable to parse ArimaResultSeasonalPeriodsItem from: " <> x)

instance ToHttpApiData ArimaResultSeasonalPeriodsItem where
    toQueryParam = \case
        ARSPISeasonalPeriodTypeUnspecified -> "SEASONAL_PERIOD_TYPE_UNSPECIFIED"
        ARSPINoSeasonality -> "NO_SEASONALITY"
        ARSPIDaily -> "DAILY"
        ARSPIWeekly -> "WEEKLY"
        ARSPIMonthly -> "MONTHLY"
        ARSPIQuarterly -> "QUARTERLY"
        ARSPIYearly -> "YEARLY"

instance FromJSON ArimaResultSeasonalPeriodsItem where
    parseJSON = parseJSONText "ArimaResultSeasonalPeriodsItem"

instance ToJSON ArimaResultSeasonalPeriodsItem where
    toJSON = toJSONText

-- | Optional. [Experimental] The determinism level of the JavaScript UDF if
-- defined.
data RoutineDeterminismLevel
    = DeterminismLevelUnspecified
      -- ^ @DETERMINISM_LEVEL_UNSPECIFIED@
      -- The determinism of the UDF is unspecified.
    | Deterministic
      -- ^ @DETERMINISTIC@
      -- The UDF is deterministic, meaning that 2 function calls with the same
      -- inputs always produce the same result, even across 2 query runs.
    | NotDeterministic
      -- ^ @NOT_DETERMINISTIC@
      -- The UDF is not deterministic.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RoutineDeterminismLevel

instance FromHttpApiData RoutineDeterminismLevel where
    parseQueryParam = \case
        "DETERMINISM_LEVEL_UNSPECIFIED" -> Right DeterminismLevelUnspecified
        "DETERMINISTIC" -> Right Deterministic
        "NOT_DETERMINISTIC" -> Right NotDeterministic
        x -> Left ("Unable to parse RoutineDeterminismLevel from: " <> x)

instance ToHttpApiData RoutineDeterminismLevel where
    toQueryParam = \case
        DeterminismLevelUnspecified -> "DETERMINISM_LEVEL_UNSPECIFIED"
        Deterministic -> "DETERMINISTIC"
        NotDeterministic -> "NOT_DETERMINISTIC"

instance FromJSON RoutineDeterminismLevel where
    parseJSON = parseJSONText "RoutineDeterminismLevel"

instance ToJSON RoutineDeterminismLevel where
    toJSON = toJSONText

-- | The method used to initialize the centroids for kmeans algorithm.
data TrainingOptionsKmeansInitializationMethod
    = KmeansInitializationMethodUnspecified
      -- ^ @KMEANS_INITIALIZATION_METHOD_UNSPECIFIED@
      -- Unspecified initialization method.
    | Random
      -- ^ @RANDOM@
      -- Initializes the centroids randomly.
    | Custom
      -- ^ @CUSTOM@
      -- Initializes the centroids using data specified in
      -- kmeans_initialization_column.
    | KmeansPlusPlus
      -- ^ @KMEANS_PLUS_PLUS@
      -- Initializes with kmeans++.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TrainingOptionsKmeansInitializationMethod

instance FromHttpApiData TrainingOptionsKmeansInitializationMethod where
    parseQueryParam = \case
        "KMEANS_INITIALIZATION_METHOD_UNSPECIFIED" -> Right KmeansInitializationMethodUnspecified
        "RANDOM" -> Right Random
        "CUSTOM" -> Right Custom
        "KMEANS_PLUS_PLUS" -> Right KmeansPlusPlus
        x -> Left ("Unable to parse TrainingOptionsKmeansInitializationMethod from: " <> x)

instance ToHttpApiData TrainingOptionsKmeansInitializationMethod where
    toQueryParam = \case
        KmeansInitializationMethodUnspecified -> "KMEANS_INITIALIZATION_METHOD_UNSPECIFIED"
        Random -> "RANDOM"
        Custom -> "CUSTOM"
        KmeansPlusPlus -> "KMEANS_PLUS_PLUS"

instance FromJSON TrainingOptionsKmeansInitializationMethod where
    parseJSON = parseJSONText "TrainingOptionsKmeansInitializationMethod"

instance ToJSON TrainingOptionsKmeansInitializationMethod where
    toJSON = toJSONText

-- | Optional. Defaults to FIXED_TYPE.
data ArgumentArgumentKind
    = ArgumentKindUnspecified
      -- ^ @ARGUMENT_KIND_UNSPECIFIED@
    | FixedType
      -- ^ @FIXED_TYPE@
      -- The argument is a variable with fully specified type, which can be a
      -- struct or an array, but not a table.
    | AnyType
      -- ^ @ANY_TYPE@
      -- The argument is any type, including struct or array, but not a table. To
      -- be added: FIXED_TABLE, ANY_TABLE
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ArgumentArgumentKind

instance FromHttpApiData ArgumentArgumentKind where
    parseQueryParam = \case
        "ARGUMENT_KIND_UNSPECIFIED" -> Right ArgumentKindUnspecified
        "FIXED_TYPE" -> Right FixedType
        "ANY_TYPE" -> Right AnyType
        x -> Left ("Unable to parse ArgumentArgumentKind from: " <> x)

instance ToHttpApiData ArgumentArgumentKind where
    toQueryParam = \case
        ArgumentKindUnspecified -> "ARGUMENT_KIND_UNSPECIFIED"
        FixedType -> "FIXED_TYPE"
        AnyType -> "ANY_TYPE"

instance FromJSON ArgumentArgumentKind where
    parseJSON = parseJSONText "ArgumentArgumentKind"

instance ToJSON ArgumentArgumentKind where
    toJSON = toJSONText

-- | Optional. Specifies whether the argument is input or output. Can be set
-- for procedures only.
data ArgumentMode
    = ModeUnspecified
      -- ^ @MODE_UNSPECIFIED@
    | IN
      -- ^ @IN@
      -- The argument is input-only.
    | Out
      -- ^ @OUT@
      -- The argument is output-only.
    | Inout
      -- ^ @INOUT@
      -- The argument is both an input and an output.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ArgumentMode

instance FromHttpApiData ArgumentMode where
    parseQueryParam = \case
        "MODE_UNSPECIFIED" -> Right ModeUnspecified
        "IN" -> Right IN
        "OUT" -> Right Out
        "INOUT" -> Right Inout
        x -> Left ("Unable to parse ArgumentMode from: " <> x)

instance ToHttpApiData ArgumentMode where
    toQueryParam = \case
        ModeUnspecified -> "MODE_UNSPECIFIED"
        IN -> "IN"
        Out -> "OUT"
        Inout -> "INOUT"

instance FromJSON ArgumentMode where
    parseJSON = parseJSONText "ArgumentMode"

instance ToJSON ArgumentMode where
    toJSON = toJSONText

-- | Output only. Type of the model resource.
data ModelModelType
    = ModelTypeUnspecified
      -- ^ @MODEL_TYPE_UNSPECIFIED@
    | LinearRegression
      -- ^ @LINEAR_REGRESSION@
      -- Linear regression model.
    | LogisticRegression
      -- ^ @LOGISTIC_REGRESSION@
      -- Logistic regression based classification model.
    | Kmeans
      -- ^ @KMEANS@
      -- K-means clustering model.
    | MatrixFactorization
      -- ^ @MATRIX_FACTORIZATION@
      -- Matrix factorization model.
    | DnnClassifier
      -- ^ @DNN_CLASSIFIER@
      -- DNN classifier model.
    | Tensorflow
      -- ^ @TENSORFLOW@
      -- An imported TensorFlow model.
    | DnnRegressor
      -- ^ @DNN_REGRESSOR@
      -- DNN regressor model.
    | BoostedTreeRegressor
      -- ^ @BOOSTED_TREE_REGRESSOR@
      -- Boosted tree regressor model.
    | BoostedTreeClassifier
      -- ^ @BOOSTED_TREE_CLASSIFIER@
      -- Boosted tree classifier model.
    | Arima
      -- ^ @ARIMA@
      -- ARIMA model.
    | AutomlRegressor
      -- ^ @AUTOML_REGRESSOR@
      -- [Beta] AutoML Tables regression model.
    | AutomlClassifier
      -- ^ @AUTOML_CLASSIFIER@
      -- [Beta] AutoML Tables classification model.
    | ArimaPlus
      -- ^ @ARIMA_PLUS@
      -- New name for the ARIMA model.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ModelModelType

instance FromHttpApiData ModelModelType where
    parseQueryParam = \case
        "MODEL_TYPE_UNSPECIFIED" -> Right ModelTypeUnspecified
        "LINEAR_REGRESSION" -> Right LinearRegression
        "LOGISTIC_REGRESSION" -> Right LogisticRegression
        "KMEANS" -> Right Kmeans
        "MATRIX_FACTORIZATION" -> Right MatrixFactorization
        "DNN_CLASSIFIER" -> Right DnnClassifier
        "TENSORFLOW" -> Right Tensorflow
        "DNN_REGRESSOR" -> Right DnnRegressor
        "BOOSTED_TREE_REGRESSOR" -> Right BoostedTreeRegressor
        "BOOSTED_TREE_CLASSIFIER" -> Right BoostedTreeClassifier
        "ARIMA" -> Right Arima
        "AUTOML_REGRESSOR" -> Right AutomlRegressor
        "AUTOML_CLASSIFIER" -> Right AutomlClassifier
        "ARIMA_PLUS" -> Right ArimaPlus
        x -> Left ("Unable to parse ModelModelType from: " <> x)

instance ToHttpApiData ModelModelType where
    toQueryParam = \case
        ModelTypeUnspecified -> "MODEL_TYPE_UNSPECIFIED"
        LinearRegression -> "LINEAR_REGRESSION"
        LogisticRegression -> "LOGISTIC_REGRESSION"
        Kmeans -> "KMEANS"
        MatrixFactorization -> "MATRIX_FACTORIZATION"
        DnnClassifier -> "DNN_CLASSIFIER"
        Tensorflow -> "TENSORFLOW"
        DnnRegressor -> "DNN_REGRESSOR"
        BoostedTreeRegressor -> "BOOSTED_TREE_REGRESSOR"
        BoostedTreeClassifier -> "BOOSTED_TREE_CLASSIFIER"
        Arima -> "ARIMA"
        AutomlRegressor -> "AUTOML_REGRESSOR"
        AutomlClassifier -> "AUTOML_CLASSIFIER"
        ArimaPlus -> "ARIMA_PLUS"

instance FromJSON ModelModelType where
    parseJSON = parseJSONText "ModelModelType"

instance ToJSON ModelModelType where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields
data JobsListProjection
    = Full
      -- ^ @full@
      -- Includes all job data
    | Minimal
      -- ^ @minimal@
      -- Does not include the job configuration
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable JobsListProjection

instance FromHttpApiData JobsListProjection where
    parseQueryParam = \case
        "full" -> Right Full
        "minimal" -> Right Minimal
        x -> Left ("Unable to parse JobsListProjection from: " <> x)

instance ToHttpApiData JobsListProjection where
    toQueryParam = \case
        Full -> "full"
        Minimal -> "minimal"

instance FromJSON JobsListProjection where
    parseJSON = parseJSONText "JobsListProjection"

instance ToJSON JobsListProjection where
    toJSON = toJSONText

-- | The geographical region based on which the holidays are considered in
-- time series modeling. If a valid value is specified, then holiday
-- effects modeling is enabled.
data TrainingOptionsHolidayRegion
    = TOHRHolidayRegionUnspecified
      -- ^ @HOLIDAY_REGION_UNSPECIFIED@
      -- Holiday region unspecified.
    | TOHRGlobal
      -- ^ @GLOBAL@
      -- Global.
    | TOHRNA
      -- ^ @NA@
      -- North America.
    | TOHRJapac
      -- ^ @JAPAC@
      -- Japan and Asia Pacific: Korea, Greater China, India, Australia, and New
      -- Zealand.
    | TOHREmea
      -- ^ @EMEA@
      -- Europe, the Middle East and Africa.
    | TOHRLac
      -- ^ @LAC@
      -- Latin America and the Caribbean.
    | TOHRAE
      -- ^ @AE@
      -- United Arab Emirates
    | TOHRAR
      -- ^ @AR@
      -- Argentina
    | TOHRAT
      -- ^ @AT@
      -- Austria
    | TOHRAU
      -- ^ @AU@
      -- Australia
    | TOHRBE
      -- ^ @BE@
      -- Belgium
    | TOHRBR
      -- ^ @BR@
      -- Brazil
    | TOHRCA
      -- ^ @CA@
      -- Canada
    | TOHRCH
      -- ^ @CH@
      -- Switzerland
    | TOHRCL
      -- ^ @CL@
      -- Chile
    | TOHRCN
      -- ^ @CN@
      -- China
    | TOHRCO
      -- ^ @CO@
      -- Colombia
    | TOHRCS
      -- ^ @CS@
      -- Czechoslovakia
    | TOHRCZ
      -- ^ @CZ@
      -- Czech Republic
    | TOHRDE
      -- ^ @DE@
      -- Germany
    | TOHRDK
      -- ^ @DK@
      -- Denmark
    | TOHRDZ
      -- ^ @DZ@
      -- Algeria
    | TOHREC
      -- ^ @EC@
      -- Ecuador
    | TOHREE
      -- ^ @EE@
      -- Estonia
    | TOHREG
      -- ^ @EG@
      -- Egypt
    | TOHRES
      -- ^ @ES@
      -- Spain
    | TOHRFI
      -- ^ @FI@
      -- Finland
    | TOHRFR
      -- ^ @FR@
      -- France
    | TOHRGB
      -- ^ @GB@
      -- Great Britain (United Kingdom)
    | TOHRGR
      -- ^ @GR@
      -- Greece
    | TOHRHK
      -- ^ @HK@
      -- Hong Kong
    | TOHRHU
      -- ^ @HU@
      -- Hungary
    | TOHRID
      -- ^ @ID@
      -- Indonesia
    | TOHRIE
      -- ^ @IE@
      -- Ireland
    | TOHRIL
      -- ^ @IL@
      -- Israel
    | TOHRIN
      -- ^ @IN@
      -- India
    | TOHRIR
      -- ^ @IR@
      -- Iran
    | TOHRIT
      -- ^ @IT@
      -- Italy
    | TOHRJP
      -- ^ @JP@
      -- Japan
    | TOHRKR
      -- ^ @KR@
      -- Korea (South)
    | TOHRLV
      -- ^ @LV@
      -- Latvia
    | TOHRMA
      -- ^ @MA@
      -- Morocco
    | TOHRMX
      -- ^ @MX@
      -- Mexico
    | TOHRMY
      -- ^ @MY@
      -- Malaysia
    | TOHRNG
      -- ^ @NG@
      -- Nigeria
    | TOHRNL
      -- ^ @NL@
      -- Netherlands
    | TOHRNO
      -- ^ @NO@
      -- Norway
    | TOHRNZ
      -- ^ @NZ@
      -- New Zealand
    | TOHRPE
      -- ^ @PE@
      -- Peru
    | TOHRPH
      -- ^ @PH@
      -- Philippines
    | TOHRPK
      -- ^ @PK@
      -- Pakistan
    | TOHRPL
      -- ^ @PL@
      -- Poland
    | TOHRPT
      -- ^ @PT@
      -- Portugal
    | TOHRRO
      -- ^ @RO@
      -- Romania
    | TOHRRS
      -- ^ @RS@
      -- Serbia
    | TOHRRU
      -- ^ @RU@
      -- Russian Federation
    | TOHRSA
      -- ^ @SA@
      -- Saudi Arabia
    | TOHRSE
      -- ^ @SE@
      -- Sweden
    | TOHRSG
      -- ^ @SG@
      -- Singapore
    | TOHRSI
      -- ^ @SI@
      -- Slovenia
    | TOHRSK
      -- ^ @SK@
      -- Slovakia
    | TOHRTH
      -- ^ @TH@
      -- Thailand
    | TOHRTR
      -- ^ @TR@
      -- Turkey
    | TOHRTW
      -- ^ @TW@
      -- Taiwan
    | TOHRUA
      -- ^ @UA@
      -- Ukraine
    | TOHRUS
      -- ^ @US@
      -- United States
    | TOHRVE
      -- ^ @VE@
      -- Venezuela
    | TOHRVN
      -- ^ @VN@
      -- Viet Nam
    | TOHRZA
      -- ^ @ZA@
      -- South Africa
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TrainingOptionsHolidayRegion

instance FromHttpApiData TrainingOptionsHolidayRegion where
    parseQueryParam = \case
        "HOLIDAY_REGION_UNSPECIFIED" -> Right TOHRHolidayRegionUnspecified
        "GLOBAL" -> Right TOHRGlobal
        "NA" -> Right TOHRNA
        "JAPAC" -> Right TOHRJapac
        "EMEA" -> Right TOHREmea
        "LAC" -> Right TOHRLac
        "AE" -> Right TOHRAE
        "AR" -> Right TOHRAR
        "AT" -> Right TOHRAT
        "AU" -> Right TOHRAU
        "BE" -> Right TOHRBE
        "BR" -> Right TOHRBR
        "CA" -> Right TOHRCA
        "CH" -> Right TOHRCH
        "CL" -> Right TOHRCL
        "CN" -> Right TOHRCN
        "CO" -> Right TOHRCO
        "CS" -> Right TOHRCS
        "CZ" -> Right TOHRCZ
        "DE" -> Right TOHRDE
        "DK" -> Right TOHRDK
        "DZ" -> Right TOHRDZ
        "EC" -> Right TOHREC
        "EE" -> Right TOHREE
        "EG" -> Right TOHREG
        "ES" -> Right TOHRES
        "FI" -> Right TOHRFI
        "FR" -> Right TOHRFR
        "GB" -> Right TOHRGB
        "GR" -> Right TOHRGR
        "HK" -> Right TOHRHK
        "HU" -> Right TOHRHU
        "ID" -> Right TOHRID
        "IE" -> Right TOHRIE
        "IL" -> Right TOHRIL
        "IN" -> Right TOHRIN
        "IR" -> Right TOHRIR
        "IT" -> Right TOHRIT
        "JP" -> Right TOHRJP
        "KR" -> Right TOHRKR
        "LV" -> Right TOHRLV
        "MA" -> Right TOHRMA
        "MX" -> Right TOHRMX
        "MY" -> Right TOHRMY
        "NG" -> Right TOHRNG
        "NL" -> Right TOHRNL
        "NO" -> Right TOHRNO
        "NZ" -> Right TOHRNZ
        "PE" -> Right TOHRPE
        "PH" -> Right TOHRPH
        "PK" -> Right TOHRPK
        "PL" -> Right TOHRPL
        "PT" -> Right TOHRPT
        "RO" -> Right TOHRRO
        "RS" -> Right TOHRRS
        "RU" -> Right TOHRRU
        "SA" -> Right TOHRSA
        "SE" -> Right TOHRSE
        "SG" -> Right TOHRSG
        "SI" -> Right TOHRSI
        "SK" -> Right TOHRSK
        "TH" -> Right TOHRTH
        "TR" -> Right TOHRTR
        "TW" -> Right TOHRTW
        "UA" -> Right TOHRUA
        "US" -> Right TOHRUS
        "VE" -> Right TOHRVE
        "VN" -> Right TOHRVN
        "ZA" -> Right TOHRZA
        x -> Left ("Unable to parse TrainingOptionsHolidayRegion from: " <> x)

instance ToHttpApiData TrainingOptionsHolidayRegion where
    toQueryParam = \case
        TOHRHolidayRegionUnspecified -> "HOLIDAY_REGION_UNSPECIFIED"
        TOHRGlobal -> "GLOBAL"
        TOHRNA -> "NA"
        TOHRJapac -> "JAPAC"
        TOHREmea -> "EMEA"
        TOHRLac -> "LAC"
        TOHRAE -> "AE"
        TOHRAR -> "AR"
        TOHRAT -> "AT"
        TOHRAU -> "AU"
        TOHRBE -> "BE"
        TOHRBR -> "BR"
        TOHRCA -> "CA"
        TOHRCH -> "CH"
        TOHRCL -> "CL"
        TOHRCN -> "CN"
        TOHRCO -> "CO"
        TOHRCS -> "CS"
        TOHRCZ -> "CZ"
        TOHRDE -> "DE"
        TOHRDK -> "DK"
        TOHRDZ -> "DZ"
        TOHREC -> "EC"
        TOHREE -> "EE"
        TOHREG -> "EG"
        TOHRES -> "ES"
        TOHRFI -> "FI"
        TOHRFR -> "FR"
        TOHRGB -> "GB"
        TOHRGR -> "GR"
        TOHRHK -> "HK"
        TOHRHU -> "HU"
        TOHRID -> "ID"
        TOHRIE -> "IE"
        TOHRIL -> "IL"
        TOHRIN -> "IN"
        TOHRIR -> "IR"
        TOHRIT -> "IT"
        TOHRJP -> "JP"
        TOHRKR -> "KR"
        TOHRLV -> "LV"
        TOHRMA -> "MA"
        TOHRMX -> "MX"
        TOHRMY -> "MY"
        TOHRNG -> "NG"
        TOHRNL -> "NL"
        TOHRNO -> "NO"
        TOHRNZ -> "NZ"
        TOHRPE -> "PE"
        TOHRPH -> "PH"
        TOHRPK -> "PK"
        TOHRPL -> "PL"
        TOHRPT -> "PT"
        TOHRRO -> "RO"
        TOHRRS -> "RS"
        TOHRRU -> "RU"
        TOHRSA -> "SA"
        TOHRSE -> "SE"
        TOHRSG -> "SG"
        TOHRSI -> "SI"
        TOHRSK -> "SK"
        TOHRTH -> "TH"
        TOHRTR -> "TR"
        TOHRTW -> "TW"
        TOHRUA -> "UA"
        TOHRUS -> "US"
        TOHRVE -> "VE"
        TOHRVN -> "VN"
        TOHRZA -> "ZA"

instance FromJSON TrainingOptionsHolidayRegion where
    parseJSON = parseJSONText "TrainingOptionsHolidayRegion"

instance ToJSON TrainingOptionsHolidayRegion where
    toJSON = toJSONText

-- | Filter for job state
data JobsListStateFilter
    = Done
      -- ^ @done@
      -- Finished jobs
    | Pending
      -- ^ @pending@
      -- Pending jobs
    | Running
      -- ^ @running@
      -- Running jobs
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable JobsListStateFilter

instance FromHttpApiData JobsListStateFilter where
    parseQueryParam = \case
        "done" -> Right Done
        "pending" -> Right Pending
        "running" -> Right Running
        x -> Left ("Unable to parse JobsListStateFilter from: " <> x)

instance ToHttpApiData JobsListStateFilter where
    toQueryParam = \case
        Done -> "done"
        Pending -> "pending"
        Running -> "running"

instance FromJSON JobsListStateFilter where
    parseJSON = parseJSONText "JobsListStateFilter"

instance ToJSON JobsListStateFilter where
    toJSON = toJSONText

-- | Feedback type that specifies which algorithm to run for matrix
-- factorization.
data TrainingOptionsFeedbackType
    = FeedbackTypeUnspecified
      -- ^ @FEEDBACK_TYPE_UNSPECIFIED@
    | Implicit
      -- ^ @IMPLICIT@
      -- Use weighted-als for implicit feedback problems.
    | Explicit
      -- ^ @EXPLICIT@
      -- Use nonweighted-als for explicit feedback problems.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TrainingOptionsFeedbackType

instance FromHttpApiData TrainingOptionsFeedbackType where
    parseQueryParam = \case
        "FEEDBACK_TYPE_UNSPECIFIED" -> Right FeedbackTypeUnspecified
        "IMPLICIT" -> Right Implicit
        "EXPLICIT" -> Right Explicit
        x -> Left ("Unable to parse TrainingOptionsFeedbackType from: " <> x)

instance ToHttpApiData TrainingOptionsFeedbackType where
    toQueryParam = \case
        FeedbackTypeUnspecified -> "FEEDBACK_TYPE_UNSPECIFIED"
        Implicit -> "IMPLICIT"
        Explicit -> "EXPLICIT"

instance FromJSON TrainingOptionsFeedbackType where
    parseJSON = parseJSONText "TrainingOptionsFeedbackType"

instance ToJSON TrainingOptionsFeedbackType where
    toJSON = toJSONText

-- | Optional. Defaults to \"SQL\".
data RoutineLanguage
    = LanguageUnspecified
      -- ^ @LANGUAGE_UNSPECIFIED@
    | SQL
      -- ^ @SQL@
      -- SQL language.
    | Javascript
      -- ^ @JAVASCRIPT@
      -- JavaScript language.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RoutineLanguage

instance FromHttpApiData RoutineLanguage where
    parseQueryParam = \case
        "LANGUAGE_UNSPECIFIED" -> Right LanguageUnspecified
        "SQL" -> Right SQL
        "JAVASCRIPT" -> Right Javascript
        x -> Left ("Unable to parse RoutineLanguage from: " <> x)

instance ToHttpApiData RoutineLanguage where
    toQueryParam = \case
        LanguageUnspecified -> "LANGUAGE_UNSPECIFIED"
        SQL -> "SQL"
        Javascript -> "JAVASCRIPT"

instance FromJSON RoutineLanguage where
    parseJSON = parseJSONText "RoutineLanguage"

instance ToJSON RoutineLanguage where
    toJSON = toJSONText

data ArimaModelInfoSeasonalPeriodsItem
    = AMISPISeasonalPeriodTypeUnspecified
      -- ^ @SEASONAL_PERIOD_TYPE_UNSPECIFIED@
    | AMISPINoSeasonality
      -- ^ @NO_SEASONALITY@
      -- No seasonality
    | AMISPIDaily
      -- ^ @DAILY@
      -- Daily period, 24 hours.
    | AMISPIWeekly
      -- ^ @WEEKLY@
      -- Weekly period, 7 days.
    | AMISPIMonthly
      -- ^ @MONTHLY@
      -- Monthly period, 30 days or irregular.
    | AMISPIQuarterly
      -- ^ @QUARTERLY@
      -- Quarterly period, 90 days or irregular.
    | AMISPIYearly
      -- ^ @YEARLY@
      -- Yearly period, 365 days or irregular.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ArimaModelInfoSeasonalPeriodsItem

instance FromHttpApiData ArimaModelInfoSeasonalPeriodsItem where
    parseQueryParam = \case
        "SEASONAL_PERIOD_TYPE_UNSPECIFIED" -> Right AMISPISeasonalPeriodTypeUnspecified
        "NO_SEASONALITY" -> Right AMISPINoSeasonality
        "DAILY" -> Right AMISPIDaily
        "WEEKLY" -> Right AMISPIWeekly
        "MONTHLY" -> Right AMISPIMonthly
        "QUARTERLY" -> Right AMISPIQuarterly
        "YEARLY" -> Right AMISPIYearly
        x -> Left ("Unable to parse ArimaModelInfoSeasonalPeriodsItem from: " <> x)

instance ToHttpApiData ArimaModelInfoSeasonalPeriodsItem where
    toQueryParam = \case
        AMISPISeasonalPeriodTypeUnspecified -> "SEASONAL_PERIOD_TYPE_UNSPECIFIED"
        AMISPINoSeasonality -> "NO_SEASONALITY"
        AMISPIDaily -> "DAILY"
        AMISPIWeekly -> "WEEKLY"
        AMISPIMonthly -> "MONTHLY"
        AMISPIQuarterly -> "QUARTERLY"
        AMISPIYearly -> "YEARLY"

instance FromJSON ArimaModelInfoSeasonalPeriodsItem where
    parseJSON = parseJSONText "ArimaModelInfoSeasonalPeriodsItem"

instance ToJSON ArimaModelInfoSeasonalPeriodsItem where
    toJSON = toJSONText

-- | The log type that this config enables.
data AuditLogConfigLogType
    = LogTypeUnspecified
      -- ^ @LOG_TYPE_UNSPECIFIED@
      -- Default case. Should never be this.
    | AdminRead
      -- ^ @ADMIN_READ@
      -- Admin reads. Example: CloudIAM getIamPolicy
    | DataWrite
      -- ^ @DATA_WRITE@
      -- Data writes. Example: CloudSQL Users create
    | DataRead
      -- ^ @DATA_READ@
      -- Data reads. Example: CloudSQL Users list
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AuditLogConfigLogType

instance FromHttpApiData AuditLogConfigLogType where
    parseQueryParam = \case
        "LOG_TYPE_UNSPECIFIED" -> Right LogTypeUnspecified
        "ADMIN_READ" -> Right AdminRead
        "DATA_WRITE" -> Right DataWrite
        "DATA_READ" -> Right DataRead
        x -> Left ("Unable to parse AuditLogConfigLogType from: " <> x)

instance ToHttpApiData AuditLogConfigLogType where
    toQueryParam = \case
        LogTypeUnspecified -> "LOG_TYPE_UNSPECIFIED"
        AdminRead -> "ADMIN_READ"
        DataWrite -> "DATA_WRITE"
        DataRead -> "DATA_READ"

instance FromJSON AuditLogConfigLogType where
    parseJSON = parseJSONText "AuditLogConfigLogType"

instance ToJSON AuditLogConfigLogType where
    toJSON = toJSONText

-- | Optimization strategy for training linear regression models.
data TrainingOptionsOptimizationStrategy
    = OptimizationStrategyUnspecified
      -- ^ @OPTIMIZATION_STRATEGY_UNSPECIFIED@
    | BatchGradientDescent
      -- ^ @BATCH_GRADIENT_DESCENT@
      -- Uses an iterative batch gradient descent algorithm.
    | NormalEquation
      -- ^ @NORMAL_EQUATION@
      -- Uses a normal equation to solve linear regression problem.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TrainingOptionsOptimizationStrategy

instance FromHttpApiData TrainingOptionsOptimizationStrategy where
    parseQueryParam = \case
        "OPTIMIZATION_STRATEGY_UNSPECIFIED" -> Right OptimizationStrategyUnspecified
        "BATCH_GRADIENT_DESCENT" -> Right BatchGradientDescent
        "NORMAL_EQUATION" -> Right NormalEquation
        x -> Left ("Unable to parse TrainingOptionsOptimizationStrategy from: " <> x)

instance ToHttpApiData TrainingOptionsOptimizationStrategy where
    toQueryParam = \case
        OptimizationStrategyUnspecified -> "OPTIMIZATION_STRATEGY_UNSPECIFIED"
        BatchGradientDescent -> "BATCH_GRADIENT_DESCENT"
        NormalEquation -> "NORMAL_EQUATION"

instance FromJSON TrainingOptionsOptimizationStrategy where
    parseJSON = parseJSONText "TrainingOptionsOptimizationStrategy"

instance ToJSON TrainingOptionsOptimizationStrategy where
    toJSON = toJSONText

-- | The data split type for training and evaluation, e.g. RANDOM.
data TrainingOptionsDataSplitMethod
    = TODSMDataSplitMethodUnspecified
      -- ^ @DATA_SPLIT_METHOD_UNSPECIFIED@
    | TODSMRandom
      -- ^ @RANDOM@
      -- Splits data randomly.
    | TODSMCustom
      -- ^ @CUSTOM@
      -- Splits data with the user provided tags.
    | TODSMSequential
      -- ^ @SEQUENTIAL@
      -- Splits data sequentially.
    | TODSMNoSplit
      -- ^ @NO_SPLIT@
      -- Data split will be skipped.
    | TODSMAutoSplit
      -- ^ @AUTO_SPLIT@
      -- Splits data automatically: Uses NO_SPLIT if the data size is small.
      -- Otherwise uses RANDOM.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TrainingOptionsDataSplitMethod

instance FromHttpApiData TrainingOptionsDataSplitMethod where
    parseQueryParam = \case
        "DATA_SPLIT_METHOD_UNSPECIFIED" -> Right TODSMDataSplitMethodUnspecified
        "RANDOM" -> Right TODSMRandom
        "CUSTOM" -> Right TODSMCustom
        "SEQUENTIAL" -> Right TODSMSequential
        "NO_SPLIT" -> Right TODSMNoSplit
        "AUTO_SPLIT" -> Right TODSMAutoSplit
        x -> Left ("Unable to parse TrainingOptionsDataSplitMethod from: " <> x)

instance ToHttpApiData TrainingOptionsDataSplitMethod where
    toQueryParam = \case
        TODSMDataSplitMethodUnspecified -> "DATA_SPLIT_METHOD_UNSPECIFIED"
        TODSMRandom -> "RANDOM"
        TODSMCustom -> "CUSTOM"
        TODSMSequential -> "SEQUENTIAL"
        TODSMNoSplit -> "NO_SPLIT"
        TODSMAutoSplit -> "AUTO_SPLIT"

instance FromJSON TrainingOptionsDataSplitMethod where
    parseJSON = parseJSONText "TrainingOptionsDataSplitMethod"

instance ToJSON TrainingOptionsDataSplitMethod where
    toJSON = toJSONText

-- | Required. The top level type of this field. Can be any standard SQL data
-- type (e.g., \"INT64\", \"DATE\", \"ARRAY\").
data StandardSQLDataTypeTypeKind
    = TypeKindUnspecified
      -- ^ @TYPE_KIND_UNSPECIFIED@
      -- Invalid type.
    | INT64
      -- ^ @INT64@
      -- Encoded as a string in decimal format.
    | Bool
      -- ^ @BOOL@
      -- Encoded as a boolean \"false\" or \"true\".
    | FLOAT64
      -- ^ @FLOAT64@
      -- Encoded as a number, or string \"NaN\", \"Infinity\" or \"-Infinity\".
    | String
      -- ^ @STRING@
      -- Encoded as a string value.
    | Bytes
      -- ^ @BYTES@
      -- Encoded as a base64 string per RFC 4648, section 4.
    | Timestamp
      -- ^ @TIMESTAMP@
      -- Encoded as an RFC 3339 timestamp with mandatory \"Z\" time zone string:
      -- 1985-04-12T23:20:50.52Z
    | Date
      -- ^ @DATE@
      -- Encoded as RFC 3339 full-date format string: 1985-04-12
    | Time
      -- ^ @TIME@
      -- Encoded as RFC 3339 partial-time format string: 23:20:50.52
    | Datetime
      -- ^ @DATETIME@
      -- Encoded as RFC 3339 full-date \"T\" partial-time: 1985-04-12T23:20:50.52
    | Interval
      -- ^ @INTERVAL@
      -- Encoded as fully qualified 3 part: 0-5 15 2:30:45.6
    | Geography
      -- ^ @GEOGRAPHY@
      -- Encoded as WKT
    | Numeric
      -- ^ @NUMERIC@
      -- Encoded as a decimal string.
    | Bignumeric
      -- ^ @BIGNUMERIC@
      -- Encoded as a decimal string.
    | JSON
      -- ^ @JSON@
      -- Encoded as a string.
    | Array
      -- ^ @ARRAY@
      -- Encoded as a list with types matching Type.array_type.
    | Struct
      -- ^ @STRUCT@
      -- Encoded as a list with fields of type Type.struct_type[i]. List is used
      -- because a JSON object cannot have duplicate field names.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable StandardSQLDataTypeTypeKind

instance FromHttpApiData StandardSQLDataTypeTypeKind where
    parseQueryParam = \case
        "TYPE_KIND_UNSPECIFIED" -> Right TypeKindUnspecified
        "INT64" -> Right INT64
        "BOOL" -> Right Bool
        "FLOAT64" -> Right FLOAT64
        "STRING" -> Right String
        "BYTES" -> Right Bytes
        "TIMESTAMP" -> Right Timestamp
        "DATE" -> Right Date
        "TIME" -> Right Time
        "DATETIME" -> Right Datetime
        "INTERVAL" -> Right Interval
        "GEOGRAPHY" -> Right Geography
        "NUMERIC" -> Right Numeric
        "BIGNUMERIC" -> Right Bignumeric
        "JSON" -> Right JSON
        "ARRAY" -> Right Array
        "STRUCT" -> Right Struct
        x -> Left ("Unable to parse StandardSQLDataTypeTypeKind from: " <> x)

instance ToHttpApiData StandardSQLDataTypeTypeKind where
    toQueryParam = \case
        TypeKindUnspecified -> "TYPE_KIND_UNSPECIFIED"
        INT64 -> "INT64"
        Bool -> "BOOL"
        FLOAT64 -> "FLOAT64"
        String -> "STRING"
        Bytes -> "BYTES"
        Timestamp -> "TIMESTAMP"
        Date -> "DATE"
        Time -> "TIME"
        Datetime -> "DATETIME"
        Interval -> "INTERVAL"
        Geography -> "GEOGRAPHY"
        Numeric -> "NUMERIC"
        Bignumeric -> "BIGNUMERIC"
        JSON -> "JSON"
        Array -> "ARRAY"
        Struct -> "STRUCT"

instance FromJSON StandardSQLDataTypeTypeKind where
    parseJSON = parseJSONText "StandardSQLDataTypeTypeKind"

instance ToJSON StandardSQLDataTypeTypeKind where
    toJSON = toJSONText

-- | The strategy to determine learn rate for the current iteration.
data TrainingOptionsLearnRateStrategy
    = LearnRateStrategyUnspecified
      -- ^ @LEARN_RATE_STRATEGY_UNSPECIFIED@
    | LineSearch
      -- ^ @LINE_SEARCH@
      -- Use line search to determine learning rate.
    | Constant
      -- ^ @CONSTANT@
      -- Use a constant learning rate.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TrainingOptionsLearnRateStrategy

instance FromHttpApiData TrainingOptionsLearnRateStrategy where
    parseQueryParam = \case
        "LEARN_RATE_STRATEGY_UNSPECIFIED" -> Right LearnRateStrategyUnspecified
        "LINE_SEARCH" -> Right LineSearch
        "CONSTANT" -> Right Constant
        x -> Left ("Unable to parse TrainingOptionsLearnRateStrategy from: " <> x)

instance ToHttpApiData TrainingOptionsLearnRateStrategy where
    toQueryParam = \case
        LearnRateStrategyUnspecified -> "LEARN_RATE_STRATEGY_UNSPECIFIED"
        LineSearch -> "LINE_SEARCH"
        Constant -> "CONSTANT"

instance FromJSON TrainingOptionsLearnRateStrategy where
    parseJSON = parseJSONText "TrainingOptionsLearnRateStrategy"

instance ToJSON TrainingOptionsLearnRateStrategy where
    toJSON = toJSONText

-- | Required. The type of routine.
data RoutineRoutineType
    = RoutineTypeUnspecified
      -- ^ @ROUTINE_TYPE_UNSPECIFIED@
    | ScalarFunction
      -- ^ @SCALAR_FUNCTION@
      -- Non-builtin permanent scalar function.
    | Procedure
      -- ^ @PROCEDURE@
      -- Stored procedure.
    | TableValuedFunction
      -- ^ @TABLE_VALUED_FUNCTION@
      -- Non-builtin permanent TVF.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RoutineRoutineType

instance FromHttpApiData RoutineRoutineType where
    parseQueryParam = \case
        "ROUTINE_TYPE_UNSPECIFIED" -> Right RoutineTypeUnspecified
        "SCALAR_FUNCTION" -> Right ScalarFunction
        "PROCEDURE" -> Right Procedure
        "TABLE_VALUED_FUNCTION" -> Right TableValuedFunction
        x -> Left ("Unable to parse RoutineRoutineType from: " <> x)

instance ToHttpApiData RoutineRoutineType where
    toQueryParam = \case
        RoutineTypeUnspecified -> "ROUTINE_TYPE_UNSPECIFIED"
        ScalarFunction -> "SCALAR_FUNCTION"
        Procedure -> "PROCEDURE"
        TableValuedFunction -> "TABLE_VALUED_FUNCTION"

instance FromJSON RoutineRoutineType where
    parseJSON = parseJSONText "RoutineRoutineType"

instance ToJSON RoutineRoutineType where
    toJSON = toJSONText

-- | Type of loss function used during training run.
data TrainingOptionsLossType
    = LossTypeUnspecified
      -- ^ @LOSS_TYPE_UNSPECIFIED@
    | MeanSquaredLoss
      -- ^ @MEAN_SQUARED_LOSS@
      -- Mean squared loss, used for linear regression.
    | MeanLogLoss
      -- ^ @MEAN_LOG_LOSS@
      -- Mean log loss, used for logistic regression.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TrainingOptionsLossType

instance FromHttpApiData TrainingOptionsLossType where
    parseQueryParam = \case
        "LOSS_TYPE_UNSPECIFIED" -> Right LossTypeUnspecified
        "MEAN_SQUARED_LOSS" -> Right MeanSquaredLoss
        "MEAN_LOG_LOSS" -> Right MeanLogLoss
        x -> Left ("Unable to parse TrainingOptionsLossType from: " <> x)

instance ToHttpApiData TrainingOptionsLossType where
    toQueryParam = \case
        LossTypeUnspecified -> "LOSS_TYPE_UNSPECIFIED"
        MeanSquaredLoss -> "MEAN_SQUARED_LOSS"
        MeanLogLoss -> "MEAN_LOG_LOSS"

instance FromJSON TrainingOptionsLossType where
    parseJSON = parseJSONText "TrainingOptionsLossType"

instance ToJSON TrainingOptionsLossType where
    toJSON = toJSONText

-- | Distance type for clustering models.
data TrainingOptionsDistanceType
    = DistanceTypeUnspecified
      -- ^ @DISTANCE_TYPE_UNSPECIFIED@
    | Euclidean
      -- ^ @EUCLIDEAN@
      -- Eculidean distance.
    | Cosine
      -- ^ @COSINE@
      -- Cosine distance.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TrainingOptionsDistanceType

instance FromHttpApiData TrainingOptionsDistanceType where
    parseQueryParam = \case
        "DISTANCE_TYPE_UNSPECIFIED" -> Right DistanceTypeUnspecified
        "EUCLIDEAN" -> Right Euclidean
        "COSINE" -> Right Cosine
        x -> Left ("Unable to parse TrainingOptionsDistanceType from: " <> x)

instance ToHttpApiData TrainingOptionsDistanceType where
    toQueryParam = \case
        DistanceTypeUnspecified -> "DISTANCE_TYPE_UNSPECIFIED"
        Euclidean -> "EUCLIDEAN"
        Cosine -> "COSINE"

instance FromJSON TrainingOptionsDistanceType where
    parseJSON = parseJSONText "TrainingOptionsDistanceType"

instance ToJSON TrainingOptionsDistanceType where
    toJSON = toJSONText

data ArimaForecastingMetricsSeasonalPeriodsItem
    = AFMSPISeasonalPeriodTypeUnspecified
      -- ^ @SEASONAL_PERIOD_TYPE_UNSPECIFIED@
    | AFMSPINoSeasonality
      -- ^ @NO_SEASONALITY@
      -- No seasonality
    | AFMSPIDaily
      -- ^ @DAILY@
      -- Daily period, 24 hours.
    | AFMSPIWeekly
      -- ^ @WEEKLY@
      -- Weekly period, 7 days.
    | AFMSPIMonthly
      -- ^ @MONTHLY@
      -- Monthly period, 30 days or irregular.
    | AFMSPIQuarterly
      -- ^ @QUARTERLY@
      -- Quarterly period, 90 days or irregular.
    | AFMSPIYearly
      -- ^ @YEARLY@
      -- Yearly period, 365 days or irregular.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ArimaForecastingMetricsSeasonalPeriodsItem

instance FromHttpApiData ArimaForecastingMetricsSeasonalPeriodsItem where
    parseQueryParam = \case
        "SEASONAL_PERIOD_TYPE_UNSPECIFIED" -> Right AFMSPISeasonalPeriodTypeUnspecified
        "NO_SEASONALITY" -> Right AFMSPINoSeasonality
        "DAILY" -> Right AFMSPIDaily
        "WEEKLY" -> Right AFMSPIWeekly
        "MONTHLY" -> Right AFMSPIMonthly
        "QUARTERLY" -> Right AFMSPIQuarterly
        "YEARLY" -> Right AFMSPIYearly
        x -> Left ("Unable to parse ArimaForecastingMetricsSeasonalPeriodsItem from: " <> x)

instance ToHttpApiData ArimaForecastingMetricsSeasonalPeriodsItem where
    toQueryParam = \case
        AFMSPISeasonalPeriodTypeUnspecified -> "SEASONAL_PERIOD_TYPE_UNSPECIFIED"
        AFMSPINoSeasonality -> "NO_SEASONALITY"
        AFMSPIDaily -> "DAILY"
        AFMSPIWeekly -> "WEEKLY"
        AFMSPIMonthly -> "MONTHLY"
        AFMSPIQuarterly -> "QUARTERLY"
        AFMSPIYearly -> "YEARLY"

instance FromJSON ArimaForecastingMetricsSeasonalPeriodsItem where
    parseJSON = parseJSONText "ArimaForecastingMetricsSeasonalPeriodsItem"

instance ToJSON ArimaForecastingMetricsSeasonalPeriodsItem where
    toJSON = toJSONText
