{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Jobs.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Jobs.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Required. Type of filter.
data CompensationFilterType
    = FilterTypeUnspecified
      -- ^ @FILTER_TYPE_UNSPECIFIED@
      -- Filter type unspecified. Position holder, INVALID, should never be used.
    | UnitOnly
      -- ^ @UNIT_ONLY@
      -- Filter by \`base compensation entry\'s\` unit. A job is a match if and
      -- only if the job contains a base CompensationEntry and the base
      -- CompensationEntry\'s unit matches provided units. Populate one or more
      -- units. See CompensationInfo.CompensationEntry for definition of base
      -- compensation entry.
    | UnitAndAmount
      -- ^ @UNIT_AND_AMOUNT@
      -- Filter by \`base compensation entry\'s\` unit and amount \/ range. A job
      -- is a match if and only if the job contains a base CompensationEntry, and
      -- the base entry\'s unit matches provided compensation_units and amount or
      -- range overlaps with provided compensation_range. See
      -- CompensationInfo.CompensationEntry for definition of base compensation
      -- entry. Set exactly one units and populate range.
    | AnnualizedBaseAmount
      -- ^ @ANNUALIZED_BASE_AMOUNT@
      -- Filter by annualized base compensation amount and \`base compensation
      -- entry\'s\` unit. Populate range and zero or more units.
    | AnnualizedTotalAmount
      -- ^ @ANNUALIZED_TOTAL_AMOUNT@
      -- Filter by annualized total compensation amount and \`base compensation
      -- entry\'s\` unit . Populate range and zero or more units.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CompensationFilterType

instance FromHttpApiData CompensationFilterType where
    parseQueryParam = \case
        "FILTER_TYPE_UNSPECIFIED" -> Right FilterTypeUnspecified
        "UNIT_ONLY" -> Right UnitOnly
        "UNIT_AND_AMOUNT" -> Right UnitAndAmount
        "ANNUALIZED_BASE_AMOUNT" -> Right AnnualizedBaseAmount
        "ANNUALIZED_TOTAL_AMOUNT" -> Right AnnualizedTotalAmount
        x -> Left ("Unable to parse CompensationFilterType from: " <> x)

instance ToHttpApiData CompensationFilterType where
    toQueryParam = \case
        FilterTypeUnspecified -> "FILTER_TYPE_UNSPECIFIED"
        UnitOnly -> "UNIT_ONLY"
        UnitAndAmount -> "UNIT_AND_AMOUNT"
        AnnualizedBaseAmount -> "ANNUALIZED_BASE_AMOUNT"
        AnnualizedTotalAmount -> "ANNUALIZED_TOTAL_AMOUNT"

instance FromJSON CompensationFilterType where
    parseJSON = parseJSONText "CompensationFilterType"

instance ToJSON CompensationFilterType where
    toJSON = toJSONText

-- | The Histogram search filters.
data HistogramResultSearchType
    = SearchTypeUnspecified
      -- ^ @SEARCH_TYPE_UNSPECIFIED@
      -- The default value if search type is not specified.
    | CompanyId
      -- ^ @COMPANY_ID@
      -- Filter by the company id field.
    | EmploymentType
      -- ^ @EMPLOYMENT_TYPE@
      -- Filter by the employment type field, such as \`FULL_TIME\` or
      -- \`PART_TIME\`.
    | CompanySize
      -- ^ @COMPANY_SIZE@
      -- Filter by the company size type field, such as \`BIG\`, \`SMALL\` or
      -- \`BIGGER\`.
    | DatePublished
      -- ^ @DATE_PUBLISHED@
      -- Filter by the date published field. Possible return values are: *
      -- PAST_24_HOURS (The past 24 hours) * PAST_3_DAYS (The past 3 days) *
      -- PAST_WEEK (The past 7 days) * PAST_MONTH (The past 30 days) * PAST_YEAR
      -- (The past 365 days)
    | EducationLevel
      -- ^ @EDUCATION_LEVEL@
      -- Filter by the required education level of the job.
    | ExperienceLevel
      -- ^ @EXPERIENCE_LEVEL@
      -- Filter by the required experience level of the job.
    | Admin1
      -- ^ @ADMIN_1@
      -- Filter by Admin1, which is a global placeholder for referring to state,
      -- province, or the particular term a country uses to define the geographic
      -- structure below the country level. Examples include states codes such as
      -- \"CA\", \"IL\", \"NY\", and provinces, such as \"BC\".
    | Country
      -- ^ @COUNTRY@
      -- Filter by the country code of job, such as US, JP, FR.
    | City
      -- ^ @CITY@
      -- Filter by the \"city name\", \"Admin1 code\", for example, \"Mountain
      -- View, CA\" or \"New York, NY\".
    | Locale
      -- ^ @LOCALE@
      -- Filter by the locale field of a job, such as \"en-US\", \"fr-FR\". This
      -- is the BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more
      -- information, see [Tags for Identifying
      -- Languages](https:\/\/tools.ietf.org\/html\/bcp47).
    | Language
      -- ^ @LANGUAGE@
      -- Filter by the language code portion of the locale field, such as \"en\"
      -- or \"fr\".
    | Category
      -- ^ @CATEGORY@
      -- Filter by the Category.
    | CityCoordinate
      -- ^ @CITY_COORDINATE@
      -- Filter by the city center GPS coordinate (latitude and longitude), for
      -- example, 37.4038522,-122.0987765. Since the coordinates of a city center
      -- can change, clients may need to refresh them periodically.
    | Admin1Country
      -- ^ @ADMIN_1_COUNTRY@
      -- A combination of state or province code with a country code. This field
      -- differs from \`JOB_ADMIN1\`, which can be used in multiple countries.
    | CompanyDisplayName
      -- ^ @COMPANY_DISPLAY_NAME@
      -- Company display name.
    | BaseCompensationUnit
      -- ^ @BASE_COMPENSATION_UNIT@
      -- Base compensation unit.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HistogramResultSearchType

instance FromHttpApiData HistogramResultSearchType where
    parseQueryParam = \case
        "SEARCH_TYPE_UNSPECIFIED" -> Right SearchTypeUnspecified
        "COMPANY_ID" -> Right CompanyId
        "EMPLOYMENT_TYPE" -> Right EmploymentType
        "COMPANY_SIZE" -> Right CompanySize
        "DATE_PUBLISHED" -> Right DatePublished
        "EDUCATION_LEVEL" -> Right EducationLevel
        "EXPERIENCE_LEVEL" -> Right ExperienceLevel
        "ADMIN_1" -> Right Admin1
        "COUNTRY" -> Right Country
        "CITY" -> Right City
        "LOCALE" -> Right Locale
        "LANGUAGE" -> Right Language
        "CATEGORY" -> Right Category
        "CITY_COORDINATE" -> Right CityCoordinate
        "ADMIN_1_COUNTRY" -> Right Admin1Country
        "COMPANY_DISPLAY_NAME" -> Right CompanyDisplayName
        "BASE_COMPENSATION_UNIT" -> Right BaseCompensationUnit
        x -> Left ("Unable to parse HistogramResultSearchType from: " <> x)

instance ToHttpApiData HistogramResultSearchType where
    toQueryParam = \case
        SearchTypeUnspecified -> "SEARCH_TYPE_UNSPECIFIED"
        CompanyId -> "COMPANY_ID"
        EmploymentType -> "EMPLOYMENT_TYPE"
        CompanySize -> "COMPANY_SIZE"
        DatePublished -> "DATE_PUBLISHED"
        EducationLevel -> "EDUCATION_LEVEL"
        ExperienceLevel -> "EXPERIENCE_LEVEL"
        Admin1 -> "ADMIN_1"
        Country -> "COUNTRY"
        City -> "CITY"
        Locale -> "LOCALE"
        Language -> "LANGUAGE"
        Category -> "CATEGORY"
        CityCoordinate -> "CITY_COORDINATE"
        Admin1Country -> "ADMIN_1_COUNTRY"
        CompanyDisplayName -> "COMPANY_DISPLAY_NAME"
        BaseCompensationUnit -> "BASE_COMPENSATION_UNIT"

instance FromJSON HistogramResultSearchType where
    parseJSON = parseJSONText "HistogramResultSearchType"

instance ToJSON HistogramResultSearchType where
    toJSON = toJSONText

-- | Required. The method of transportation for which to calculate the
-- commute time.
data CommuteFilterCommuteMethod
    = CommuteMethodUnspecified
      -- ^ @COMMUTE_METHOD_UNSPECIFIED@
      -- Commute method is not specified.
    | Driving
      -- ^ @DRIVING@
      -- Commute time is calculated based on driving time.
    | Transit
      -- ^ @TRANSIT@
      -- Commute time is calculated based on public transit including bus, metro,
      -- subway, etc.
    | Walking
      -- ^ @WALKING@
      -- Commute time is calculated based on walking time.
    | Cycling
      -- ^ @CYCLING@
      -- Commute time is calculated based on biking time.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommuteFilterCommuteMethod

instance FromHttpApiData CommuteFilterCommuteMethod where
    parseQueryParam = \case
        "COMMUTE_METHOD_UNSPECIFIED" -> Right CommuteMethodUnspecified
        "DRIVING" -> Right Driving
        "TRANSIT" -> Right Transit
        "WALKING" -> Right Walking
        "CYCLING" -> Right Cycling
        x -> Left ("Unable to parse CommuteFilterCommuteMethod from: " <> x)

instance ToHttpApiData CommuteFilterCommuteMethod where
    toQueryParam = \case
        CommuteMethodUnspecified -> "COMMUTE_METHOD_UNSPECIFIED"
        Driving -> "DRIVING"
        Transit -> "TRANSIT"
        Walking -> "WALKING"
        Cycling -> "CYCLING"

instance FromJSON CommuteFilterCommuteMethod where
    parseJSON = parseJSONText "CommuteFilterCommuteMethod"

instance ToJSON CommuteFilterCommuteMethod where
    toJSON = toJSONText

-- | Optional. Controls whether highly similar jobs are returned next to each
-- other in the search results. Jobs are identified as highly similar based
-- on their titles, job categories, and locations. Highly similar results
-- are clustered so that only one representative job of the cluster is
-- displayed to the job seeker higher up in the results, with the other
-- jobs being displayed lower down in the results. Defaults to
-- DiversificationLevel.SIMPLE if no value is specified.
data SearchJobsRequestDiversificationLevel
    = DiversificationLevelUnspecified
      -- ^ @DIVERSIFICATION_LEVEL_UNSPECIFIED@
      -- The diversification level isn\'t specified.
    | Disabled
      -- ^ @DISABLED@
      -- Disables diversification. Jobs that would normally be pushed to the last
      -- page would not have their positions altered. This may result in highly
      -- similar jobs appearing in sequence in the search results.
    | Simple
      -- ^ @SIMPLE@
      -- Default diversifying behavior. The result list is ordered so that highly
      -- similar results are pushed to the end of the last page of search
      -- results.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchJobsRequestDiversificationLevel

instance FromHttpApiData SearchJobsRequestDiversificationLevel where
    parseQueryParam = \case
        "DIVERSIFICATION_LEVEL_UNSPECIFIED" -> Right DiversificationLevelUnspecified
        "DISABLED" -> Right Disabled
        "SIMPLE" -> Right Simple
        x -> Left ("Unable to parse SearchJobsRequestDiversificationLevel from: " <> x)

instance ToHttpApiData SearchJobsRequestDiversificationLevel where
    toQueryParam = \case
        DiversificationLevelUnspecified -> "DIVERSIFICATION_LEVEL_UNSPECIFIED"
        Disabled -> "DISABLED"
        Simple -> "SIMPLE"

instance FromJSON SearchJobsRequestDiversificationLevel where
    parseJSON = parseJSONText "SearchJobsRequestDiversificationLevel"

instance ToJSON SearchJobsRequestDiversificationLevel where
    toJSON = toJSONText

-- | Type of the request, corresponding to CompensationHistogramRequest.type.
data CompensationHistogramResultType
    = CompensationHistogramRequestTypeUnspecified
      -- ^ @COMPENSATION_HISTOGRAM_REQUEST_TYPE_UNSPECIFIED@
      -- Default value. Invalid.
    | Base
      -- ^ @BASE@
      -- Histogram by job\'s base compensation. See CompensationEntry for
      -- definition of base compensation.
    | AnnualizedBase
      -- ^ @ANNUALIZED_BASE@
      -- Histogram by job\'s annualized base compensation. See CompensationEntry
      -- for definition of annualized base compensation.
    | AnnualizedTotal
      -- ^ @ANNUALIZED_TOTAL@
      -- Histogram by job\'s annualized total compensation. See CompensationEntry
      -- for definition of annualized total compensation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CompensationHistogramResultType

instance FromHttpApiData CompensationHistogramResultType where
    parseQueryParam = \case
        "COMPENSATION_HISTOGRAM_REQUEST_TYPE_UNSPECIFIED" -> Right CompensationHistogramRequestTypeUnspecified
        "BASE" -> Right Base
        "ANNUALIZED_BASE" -> Right AnnualizedBase
        "ANNUALIZED_TOTAL" -> Right AnnualizedTotal
        x -> Left ("Unable to parse CompensationHistogramResultType from: " <> x)

instance ToHttpApiData CompensationHistogramResultType where
    toQueryParam = \case
        CompensationHistogramRequestTypeUnspecified -> "COMPENSATION_HISTOGRAM_REQUEST_TYPE_UNSPECIFIED"
        Base -> "BASE"
        AnnualizedBase -> "ANNUALIZED_BASE"
        AnnualizedTotal -> "ANNUALIZED_TOTAL"

instance FromJSON CompensationHistogramResultType where
    parseJSON = parseJSONText "CompensationHistogramResultType"

instance ToJSON CompensationHistogramResultType where
    toJSON = toJSONText

-- | Optional. Compensation type. Default is
-- CompensationUnit.OTHER_COMPENSATION_TYPE.
data CompensationEntryType
    = CETCompensationTypeUnspecified
      -- ^ @COMPENSATION_TYPE_UNSPECIFIED@
      -- Default value.
    | CETBase
      -- ^ @BASE@
      -- Base compensation: Refers to the fixed amount of money paid to an
      -- employee by an employer in return for work performed. Base compensation
      -- does not include benefits, bonuses or any other potential compensation
      -- from an employer.
    | CETBonus
      -- ^ @BONUS@
      -- Bonus.
    | CETSigningBonus
      -- ^ @SIGNING_BONUS@
      -- Signing bonus.
    | CETEquity
      -- ^ @EQUITY@
      -- Equity.
    | CETProfitSharing
      -- ^ @PROFIT_SHARING@
      -- Profit sharing.
    | CETCommissions
      -- ^ @COMMISSIONS@
      -- Commission.
    | CETTips
      -- ^ @TIPS@
      -- Tips.
    | CETOtherCompensationType
      -- ^ @OTHER_COMPENSATION_TYPE@
      -- Other compensation type.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CompensationEntryType

instance FromHttpApiData CompensationEntryType where
    parseQueryParam = \case
        "COMPENSATION_TYPE_UNSPECIFIED" -> Right CETCompensationTypeUnspecified
        "BASE" -> Right CETBase
        "BONUS" -> Right CETBonus
        "SIGNING_BONUS" -> Right CETSigningBonus
        "EQUITY" -> Right CETEquity
        "PROFIT_SHARING" -> Right CETProfitSharing
        "COMMISSIONS" -> Right CETCommissions
        "TIPS" -> Right CETTips
        "OTHER_COMPENSATION_TYPE" -> Right CETOtherCompensationType
        x -> Left ("Unable to parse CompensationEntryType from: " <> x)

instance ToHttpApiData CompensationEntryType where
    toQueryParam = \case
        CETCompensationTypeUnspecified -> "COMPENSATION_TYPE_UNSPECIFIED"
        CETBase -> "BASE"
        CETBonus -> "BONUS"
        CETSigningBonus -> "SIGNING_BONUS"
        CETEquity -> "EQUITY"
        CETProfitSharing -> "PROFIT_SHARING"
        CETCommissions -> "COMMISSIONS"
        CETTips -> "TIPS"
        CETOtherCompensationType -> "OTHER_COMPENSATION_TYPE"

instance FromJSON CompensationEntryType where
    parseJSON = parseJSONText "CompensationEntryType"

instance ToJSON CompensationEntryType where
    toJSON = toJSONText

-- | Optional. Type of the device.
data DeviceInfoDeviceType
    = DeviceTypeUnspecified
      -- ^ @DEVICE_TYPE_UNSPECIFIED@
      -- The device type isn\'t specified.
    | Web
      -- ^ @WEB@
      -- A desktop web browser, such as, Chrome, Firefox, Safari, or Internet
      -- Explorer)
    | MobileWeb
      -- ^ @MOBILE_WEB@
      -- A mobile device web browser, such as a phone or tablet with a Chrome
      -- browser.
    | Android
      -- ^ @ANDROID@
      -- An Android device native application.
    | Ios
      -- ^ @IOS@
      -- An iOS device native application.
    | Bot
      -- ^ @BOT@
      -- A bot, as opposed to a device operated by human beings, such as a web
      -- crawler.
    | Other
      -- ^ @OTHER@
      -- Other devices types.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeviceInfoDeviceType

instance FromHttpApiData DeviceInfoDeviceType where
    parseQueryParam = \case
        "DEVICE_TYPE_UNSPECIFIED" -> Right DeviceTypeUnspecified
        "WEB" -> Right Web
        "MOBILE_WEB" -> Right MobileWeb
        "ANDROID" -> Right Android
        "IOS" -> Right Ios
        "BOT" -> Right Bot
        "OTHER" -> Right Other
        x -> Left ("Unable to parse DeviceInfoDeviceType from: " <> x)

instance ToHttpApiData DeviceInfoDeviceType where
    toQueryParam = \case
        DeviceTypeUnspecified -> "DEVICE_TYPE_UNSPECIFIED"
        Web -> "WEB"
        MobileWeb -> "MOBILE_WEB"
        Android -> "ANDROID"
        Ios -> "IOS"
        Bot -> "BOT"
        Other -> "OTHER"

instance FromJSON DeviceInfoDeviceType where
    parseJSON = parseJSONText "DeviceInfoDeviceType"

instance ToJSON DeviceInfoDeviceType where
    toJSON = toJSONText

-- | Optional. Frequency of the specified amount. Default is
-- CompensationUnit.OTHER_COMPENSATION_UNIT.
data CompensationEntryUnit
    = CompensationUnitUnspecified
      -- ^ @COMPENSATION_UNIT_UNSPECIFIED@
      -- Default value.
    | Hourly
      -- ^ @HOURLY@
      -- Hourly.
    | Daily
      -- ^ @DAILY@
      -- Daily.
    | Weekly
      -- ^ @WEEKLY@
      -- Weekly
    | Monthly
      -- ^ @MONTHLY@
      -- Monthly.
    | Yearly
      -- ^ @YEARLY@
      -- Yearly.
    | OneTime
      -- ^ @ONE_TIME@
      -- One time.
    | OtherCompensationUnit
      -- ^ @OTHER_COMPENSATION_UNIT@
      -- Other compensation units.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CompensationEntryUnit

instance FromHttpApiData CompensationEntryUnit where
    parseQueryParam = \case
        "COMPENSATION_UNIT_UNSPECIFIED" -> Right CompensationUnitUnspecified
        "HOURLY" -> Right Hourly
        "DAILY" -> Right Daily
        "WEEKLY" -> Right Weekly
        "MONTHLY" -> Right Monthly
        "YEARLY" -> Right Yearly
        "ONE_TIME" -> Right OneTime
        "OTHER_COMPENSATION_UNIT" -> Right OtherCompensationUnit
        x -> Left ("Unable to parse CompensationEntryUnit from: " <> x)

instance ToHttpApiData CompensationEntryUnit where
    toQueryParam = \case
        CompensationUnitUnspecified -> "COMPENSATION_UNIT_UNSPECIFIED"
        Hourly -> "HOURLY"
        Daily -> "DAILY"
        Weekly -> "WEEKLY"
        Monthly -> "MONTHLY"
        Yearly -> "YEARLY"
        OneTime -> "ONE_TIME"
        OtherCompensationUnit -> "OTHER_COMPENSATION_UNIT"

instance FromJSON CompensationEntryUnit where
    parseJSON = parseJSONText "CompensationEntryUnit"

instance ToJSON CompensationEntryUnit where
    toJSON = toJSONText

-- | Optional. The experience level associated with the job, such as \"Entry
-- Level\".
data JobJobLevel
    = JobLevelUnspecified
      -- ^ @JOB_LEVEL_UNSPECIFIED@
      -- The default value if the level is not specified.
    | EntryLevel
      -- ^ @ENTRY_LEVEL@
      -- Entry-level individual contributors, typically with less than 2 years of
      -- experience in a similar role. Includes interns.
    | Experienced
      -- ^ @EXPERIENCED@
      -- Experienced individual contributors, typically with 2+ years of
      -- experience in a similar role.
    | Manager
      -- ^ @MANAGER@
      -- Entry- to mid-level managers responsible for managing a team of people.
    | Director
      -- ^ @DIRECTOR@
      -- Senior-level managers responsible for managing teams of managers.
    | Executive
      -- ^ @EXECUTIVE@
      -- Executive-level managers and above, including C-level positions.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable JobJobLevel

instance FromHttpApiData JobJobLevel where
    parseQueryParam = \case
        "JOB_LEVEL_UNSPECIFIED" -> Right JobLevelUnspecified
        "ENTRY_LEVEL" -> Right EntryLevel
        "EXPERIENCED" -> Right Experienced
        "MANAGER" -> Right Manager
        "DIRECTOR" -> Right Director
        "EXECUTIVE" -> Right Executive
        x -> Left ("Unable to parse JobJobLevel from: " <> x)

instance ToHttpApiData JobJobLevel where
    toQueryParam = \case
        JobLevelUnspecified -> "JOB_LEVEL_UNSPECIFIED"
        EntryLevel -> "ENTRY_LEVEL"
        Experienced -> "EXPERIENCED"
        Manager -> "MANAGER"
        Director -> "DIRECTOR"
        Executive -> "EXECUTIVE"

instance FromJSON JobJobLevel where
    parseJSON = parseJSONText "JobJobLevel"

instance ToJSON JobJobLevel where
    toJSON = toJSONText

-- | Optional. The visibility of the job. Defaults to Visibility.ACCOUNT_ONLY
-- if not specified.
data JobVisibility
    = VisibilityUnspecified
      -- ^ @VISIBILITY_UNSPECIFIED@
      -- Default value.
    | AccountOnly
      -- ^ @ACCOUNT_ONLY@
      -- The resource is only visible to the GCP account who owns it.
    | SharedWithGoogle
      -- ^ @SHARED_WITH_GOOGLE@
      -- The resource is visible to the owner and may be visible to other
      -- applications and processes at Google.
    | SharedWithPublic
      -- ^ @SHARED_WITH_PUBLIC@
      -- The resource is visible to the owner and may be visible to all other API
      -- clients.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable JobVisibility

instance FromHttpApiData JobVisibility where
    parseQueryParam = \case
        "VISIBILITY_UNSPECIFIED" -> Right VisibilityUnspecified
        "ACCOUNT_ONLY" -> Right AccountOnly
        "SHARED_WITH_GOOGLE" -> Right SharedWithGoogle
        "SHARED_WITH_PUBLIC" -> Right SharedWithPublic
        x -> Left ("Unable to parse JobVisibility from: " <> x)

instance ToHttpApiData JobVisibility where
    toQueryParam = \case
        VisibilityUnspecified -> "VISIBILITY_UNSPECIFIED"
        AccountOnly -> "ACCOUNT_ONLY"
        SharedWithGoogle -> "SHARED_WITH_GOOGLE"
        SharedWithPublic -> "SHARED_WITH_PUBLIC"

instance FromJSON JobVisibility where
    parseJSON = parseJSONText "JobVisibility"

instance ToJSON JobVisibility where
    toJSON = toJSONText

-- | Required. Controls over how important the score of
-- CustomRankingInfo.ranking_expression gets applied to job\'s final
-- ranking position. An error is thrown if not specified.
data CustomRankingInfoImportanceLevel
    = ImportanceLevelUnspecified
      -- ^ @IMPORTANCE_LEVEL_UNSPECIFIED@
      -- Default value if the importance level is not specified.
    | None
      -- ^ @NONE@
      -- The given ranking expression is of None importance, existing relevance
      -- score (determined by API algorithm) dominates job\'s final ranking
      -- position.
    | Low
      -- ^ @LOW@
      -- The given ranking expression is of Low importance in terms of job\'s
      -- final ranking position compared to existing relevance score (determined
      -- by API algorithm).
    | Mild
      -- ^ @MILD@
      -- The given ranking expression is of Mild importance in terms of job\'s
      -- final ranking position compared to existing relevance score (determined
      -- by API algorithm).
    | Medium
      -- ^ @MEDIUM@
      -- The given ranking expression is of Medium importance in terms of job\'s
      -- final ranking position compared to existing relevance score (determined
      -- by API algorithm).
    | High
      -- ^ @HIGH@
      -- The given ranking expression is of High importance in terms of job\'s
      -- final ranking position compared to existing relevance score (determined
      -- by API algorithm).
    | Extreme
      -- ^ @EXTREME@
      -- The given ranking expression is of Extreme importance, and dominates
      -- job\'s final ranking position with existing relevance score (determined
      -- by API algorithm) ignored.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CustomRankingInfoImportanceLevel

instance FromHttpApiData CustomRankingInfoImportanceLevel where
    parseQueryParam = \case
        "IMPORTANCE_LEVEL_UNSPECIFIED" -> Right ImportanceLevelUnspecified
        "NONE" -> Right None
        "LOW" -> Right Low
        "MILD" -> Right Mild
        "MEDIUM" -> Right Medium
        "HIGH" -> Right High
        "EXTREME" -> Right Extreme
        x -> Left ("Unable to parse CustomRankingInfoImportanceLevel from: " <> x)

instance ToHttpApiData CustomRankingInfoImportanceLevel where
    toQueryParam = \case
        ImportanceLevelUnspecified -> "IMPORTANCE_LEVEL_UNSPECIFIED"
        None -> "NONE"
        Low -> "LOW"
        Mild -> "MILD"
        Medium -> "MEDIUM"
        High -> "HIGH"
        Extreme -> "EXTREME"

instance FromJSON CustomRankingInfoImportanceLevel where
    parseJSON = parseJSONText "CustomRankingInfoImportanceLevel"

instance ToJSON CustomRankingInfoImportanceLevel where
    toJSON = toJSONText

-- | Optional. The job PostingRegion (for example, state, country) throughout
-- which the job is available. If this field is set, a LocationFilter in a
-- search query within the job region finds this job posting if an exact
-- location match isn\'t specified. If this field is set to
-- PostingRegion.NATION or PostingRegion.ADMINISTRATIVE_AREA, setting job
-- Job.addresses to the same location level as this field is strongly
-- recommended.
data JobPostingRegion
    = PostingRegionUnspecified
      -- ^ @POSTING_REGION_UNSPECIFIED@
      -- If the region is unspecified, the job is only returned if it matches the
      -- LocationFilter.
    | AdministrativeArea
      -- ^ @ADMINISTRATIVE_AREA@
      -- In addition to exact location matching, job posting is returned when the
      -- LocationFilter in the search query is in the same administrative area as
      -- the returned job posting. For example, if a \`ADMINISTRATIVE_AREA\` job
      -- is posted in \"CA, USA\", it\'s returned if LocationFilter has
      -- \"Mountain View\". Administrative area refers to top-level
      -- administrative subdivision of this country. For example, US state, IT
      -- region, UK constituent nation and JP prefecture.
    | NATion
      -- ^ @NATION@
      -- In addition to exact location matching, job is returned when
      -- LocationFilter in search query is in the same country as this job. For
      -- example, if a \`NATION_WIDE\` job is posted in \"USA\", it\'s returned
      -- if LocationFilter has \'Mountain View\'.
    | Telecommute
      -- ^ @TELECOMMUTE@
      -- Job allows employees to work remotely (telecommute). If locations are
      -- provided with this value, the job is considered as having a location,
      -- but telecommuting is allowed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable JobPostingRegion

instance FromHttpApiData JobPostingRegion where
    parseQueryParam = \case
        "POSTING_REGION_UNSPECIFIED" -> Right PostingRegionUnspecified
        "ADMINISTRATIVE_AREA" -> Right AdministrativeArea
        "NATION" -> Right NATion
        "TELECOMMUTE" -> Right Telecommute
        x -> Left ("Unable to parse JobPostingRegion from: " <> x)

instance ToHttpApiData JobPostingRegion where
    toQueryParam = \case
        PostingRegionUnspecified -> "POSTING_REGION_UNSPECIFIED"
        AdministrativeArea -> "ADMINISTRATIVE_AREA"
        NATion -> "NATION"
        Telecommute -> "TELECOMMUTE"

instance FromJSON JobPostingRegion where
    parseJSON = parseJSONText "JobPostingRegion"

instance ToJSON JobPostingRegion where
    toJSON = toJSONText

-- | Optional. The employer\'s company size.
data CompanySize
    = CSCompanySizeUnspecified
      -- ^ @COMPANY_SIZE_UNSPECIFIED@
      -- Default value if the size is not specified.
    | CSMini
      -- ^ @MINI@
      -- The company has less than 50 employees.
    | CSSmall
      -- ^ @SMALL@
      -- The company has between 50 and 99 employees.
    | CSSmedium
      -- ^ @SMEDIUM@
      -- The company has between 100 and 499 employees.
    | CSMedium
      -- ^ @MEDIUM@
      -- The company has between 500 and 999 employees.
    | CSBig
      -- ^ @BIG@
      -- The company has between 1,000 and 4,999 employees.
    | CSBigger
      -- ^ @BIGGER@
      -- The company has between 5,000 and 9,999 employees.
    | CSGiant
      -- ^ @GIANT@
      -- The company has 10,000 or more employees.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CompanySize

instance FromHttpApiData CompanySize where
    parseQueryParam = \case
        "COMPANY_SIZE_UNSPECIFIED" -> Right CSCompanySizeUnspecified
        "MINI" -> Right CSMini
        "SMALL" -> Right CSSmall
        "SMEDIUM" -> Right CSSmedium
        "MEDIUM" -> Right CSMedium
        "BIG" -> Right CSBig
        "BIGGER" -> Right CSBigger
        "GIANT" -> Right CSGiant
        x -> Left ("Unable to parse CompanySize from: " <> x)

instance ToHttpApiData CompanySize where
    toQueryParam = \case
        CSCompanySizeUnspecified -> "COMPANY_SIZE_UNSPECIFIED"
        CSMini -> "MINI"
        CSSmall -> "SMALL"
        CSSmedium -> "SMEDIUM"
        CSMedium -> "MEDIUM"
        CSBig -> "BIG"
        CSBigger -> "BIGGER"
        CSGiant -> "GIANT"

instance FromJSON CompanySize where
    parseJSON = parseJSONText "CompanySize"

instance ToJSON CompanySize where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Optional. Specifies the traffic density to use when calculating commute
-- time.
data CommuteFilterRoadTraffic
    = RoadTrafficUnspecified
      -- ^ @ROAD_TRAFFIC_UNSPECIFIED@
      -- Road traffic situation is not specified.
    | TrafficFree
      -- ^ @TRAFFIC_FREE@
      -- Optimal commute time without considering any traffic impact.
    | BusyHour
      -- ^ @BUSY_HOUR@
      -- Commute time calculation takes in account the peak traffic impact.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommuteFilterRoadTraffic

instance FromHttpApiData CommuteFilterRoadTraffic where
    parseQueryParam = \case
        "ROAD_TRAFFIC_UNSPECIFIED" -> Right RoadTrafficUnspecified
        "TRAFFIC_FREE" -> Right TrafficFree
        "BUSY_HOUR" -> Right BusyHour
        x -> Left ("Unable to parse CommuteFilterRoadTraffic from: " <> x)

instance ToHttpApiData CommuteFilterRoadTraffic where
    toQueryParam = \case
        RoadTrafficUnspecified -> "ROAD_TRAFFIC_UNSPECIFIED"
        TrafficFree -> "TRAFFIC_FREE"
        BusyHour -> "BUSY_HOUR"

instance FromJSON CommuteFilterRoadTraffic where
    parseJSON = parseJSONText "CommuteFilterRoadTraffic"

instance ToJSON CommuteFilterRoadTraffic where
    toJSON = toJSONText

-- | Required. Type of the request, representing which field the
-- histogramming should be performed over. A single request can only
-- specify one histogram of each \`CompensationHistogramRequestType\`.
data CompensationHistogramRequestType
    = CHRTCompensationHistogramRequestTypeUnspecified
      -- ^ @COMPENSATION_HISTOGRAM_REQUEST_TYPE_UNSPECIFIED@
      -- Default value. Invalid.
    | CHRTBase
      -- ^ @BASE@
      -- Histogram by job\'s base compensation. See CompensationEntry for
      -- definition of base compensation.
    | CHRTAnnualizedBase
      -- ^ @ANNUALIZED_BASE@
      -- Histogram by job\'s annualized base compensation. See CompensationEntry
      -- for definition of annualized base compensation.
    | CHRTAnnualizedTotal
      -- ^ @ANNUALIZED_TOTAL@
      -- Histogram by job\'s annualized total compensation. See CompensationEntry
      -- for definition of annualized total compensation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CompensationHistogramRequestType

instance FromHttpApiData CompensationHistogramRequestType where
    parseQueryParam = \case
        "COMPENSATION_HISTOGRAM_REQUEST_TYPE_UNSPECIFIED" -> Right CHRTCompensationHistogramRequestTypeUnspecified
        "BASE" -> Right CHRTBase
        "ANNUALIZED_BASE" -> Right CHRTAnnualizedBase
        "ANNUALIZED_TOTAL" -> Right CHRTAnnualizedTotal
        x -> Left ("Unable to parse CompensationHistogramRequestType from: " <> x)

instance ToHttpApiData CompensationHistogramRequestType where
    toQueryParam = \case
        CHRTCompensationHistogramRequestTypeUnspecified -> "COMPENSATION_HISTOGRAM_REQUEST_TYPE_UNSPECIFIED"
        CHRTBase -> "BASE"
        CHRTAnnualizedBase -> "ANNUALIZED_BASE"
        CHRTAnnualizedTotal -> "ANNUALIZED_TOTAL"

instance FromJSON CompensationHistogramRequestType where
    parseJSON = parseJSONText "CompensationHistogramRequestType"

instance ToJSON CompensationHistogramRequestType where
    toJSON = toJSONText

-- | The completion topic.
data CompletionResultType
    = CompletionTypeUnspecified
      -- ^ @COMPLETION_TYPE_UNSPECIFIED@
      -- Default value.
    | JobTitle
      -- ^ @JOB_TITLE@
      -- Only suggest job titles.
    | CompanyName
      -- ^ @COMPANY_NAME@
      -- Only suggest company names.
    | Combined
      -- ^ @COMBINED@
      -- Suggest both job titles and company names.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CompletionResultType

instance FromHttpApiData CompletionResultType where
    parseQueryParam = \case
        "COMPLETION_TYPE_UNSPECIFIED" -> Right CompletionTypeUnspecified
        "JOB_TITLE" -> Right JobTitle
        "COMPANY_NAME" -> Right CompanyName
        "COMBINED" -> Right Combined
        x -> Left ("Unable to parse CompletionResultType from: " <> x)

instance ToHttpApiData CompletionResultType where
    toQueryParam = \case
        CompletionTypeUnspecified -> "COMPLETION_TYPE_UNSPECIFIED"
        JobTitle -> "JOB_TITLE"
        CompanyName -> "COMPANY_NAME"
        Combined -> "COMBINED"

instance FromJSON CompletionResultType where
    parseJSON = parseJSONText "CompletionResultType"

instance ToJSON CompletionResultType where
    toJSON = toJSONText

-- | The type of a location, which corresponds to the address lines field of
-- PostalAddress. For example, \"Downtown, Atlanta, GA, USA\" has a type of
-- LocationType#NEIGHBORHOOD, and \"Kansas City, KS, USA\" has a type of
-- LocationType#LOCALITY.
data LocationLocationType
    = LLTLocationTypeUnspecified
      -- ^ @LOCATION_TYPE_UNSPECIFIED@
      -- Default value if the type is not specified.
    | LLTCountry
      -- ^ @COUNTRY@
      -- A country level location.
    | LLTAdministrativeArea
      -- ^ @ADMINISTRATIVE_AREA@
      -- A state or equivalent level location.
    | LLTSubAdministrativeArea
      -- ^ @SUB_ADMINISTRATIVE_AREA@
      -- A county or equivalent level location.
    | LLTLocality
      -- ^ @LOCALITY@
      -- A city or equivalent level location.
    | LLTPostalCode
      -- ^ @POSTAL_CODE@
      -- A postal code level location.
    | LLTSubLocality
      -- ^ @SUB_LOCALITY@
      -- A sublocality is a subdivision of a locality, for example a city
      -- borough, ward, or arrondissement. Sublocalities are usually recognized
      -- by a local political authority. For example, Manhattan and Brooklyn are
      -- recognized as boroughs by the City of New York, and are therefore
      -- modeled as sublocalities.
    | LLTSubLocality1
      -- ^ @SUB_LOCALITY_1@
      -- A district or equivalent level location.
    | LLTSubLocality2
      -- ^ @SUB_LOCALITY_2@
      -- A smaller district or equivalent level display.
    | LLTNeighborhood
      -- ^ @NEIGHBORHOOD@
      -- A neighborhood level location.
    | LLTStreetAddress
      -- ^ @STREET_ADDRESS@
      -- A street address level location.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LocationLocationType

instance FromHttpApiData LocationLocationType where
    parseQueryParam = \case
        "LOCATION_TYPE_UNSPECIFIED" -> Right LLTLocationTypeUnspecified
        "COUNTRY" -> Right LLTCountry
        "ADMINISTRATIVE_AREA" -> Right LLTAdministrativeArea
        "SUB_ADMINISTRATIVE_AREA" -> Right LLTSubAdministrativeArea
        "LOCALITY" -> Right LLTLocality
        "POSTAL_CODE" -> Right LLTPostalCode
        "SUB_LOCALITY" -> Right LLTSubLocality
        "SUB_LOCALITY_1" -> Right LLTSubLocality1
        "SUB_LOCALITY_2" -> Right LLTSubLocality2
        "NEIGHBORHOOD" -> Right LLTNeighborhood
        "STREET_ADDRESS" -> Right LLTStreetAddress
        x -> Left ("Unable to parse LocationLocationType from: " <> x)

instance ToHttpApiData LocationLocationType where
    toQueryParam = \case
        LLTLocationTypeUnspecified -> "LOCATION_TYPE_UNSPECIFIED"
        LLTCountry -> "COUNTRY"
        LLTAdministrativeArea -> "ADMINISTRATIVE_AREA"
        LLTSubAdministrativeArea -> "SUB_ADMINISTRATIVE_AREA"
        LLTLocality -> "LOCALITY"
        LLTPostalCode -> "POSTAL_CODE"
        LLTSubLocality -> "SUB_LOCALITY"
        LLTSubLocality1 -> "SUB_LOCALITY_1"
        LLTSubLocality2 -> "SUB_LOCALITY_2"
        LLTNeighborhood -> "NEIGHBORHOOD"
        LLTStreetAddress -> "STREET_ADDRESS"

instance FromJSON LocationLocationType where
    parseJSON = parseJSONText "LocationLocationType"

instance ToJSON LocationLocationType where
    toJSON = toJSONText

-- | Required. The type of the event (see JobEventType).
data JobEventType
    = JobEventTypeUnspecified
      -- ^ @JOB_EVENT_TYPE_UNSPECIFIED@
      -- The event is unspecified by other provided values.
    | Impression
      -- ^ @IMPRESSION@
      -- The job seeker or other entity interacting with the service has had a
      -- job rendered in their view, such as in a list of search results in a
      -- compressed or clipped format. This event is typically associated with
      -- the viewing of a jobs list on a single page by a job seeker.
    | View
      -- ^ @VIEW@
      -- The job seeker, or other entity interacting with the service, has viewed
      -- the details of a job, including the full description. This event
      -- doesn\'t apply to the viewing a snippet of a job appearing as a part of
      -- the job search results. Viewing a snippet is associated with an
      -- impression).
    | ViewRedirect
      -- ^ @VIEW_REDIRECT@
      -- The job seeker or other entity interacting with the service performed an
      -- action to view a job and was redirected to a different website for job.
    | ApplicationStart
      -- ^ @APPLICATION_START@
      -- The job seeker or other entity interacting with the service began the
      -- process or demonstrated the intention of applying for a job.
    | ApplicationFinish
      -- ^ @APPLICATION_FINISH@
      -- The job seeker or other entity interacting with the service submitted an
      -- application for a job.
    | ApplicationQuickSubmission
      -- ^ @APPLICATION_QUICK_SUBMISSION@
      -- The job seeker or other entity interacting with the service submitted an
      -- application for a job with a single click without entering information.
      -- If a job seeker performs this action, send only this event to the
      -- service. Do not also send JobEventType.APPLICATION_START or
      -- JobEventType.APPLICATION_FINISH events.
    | ApplicationRedirect
      -- ^ @APPLICATION_REDIRECT@
      -- The job seeker or other entity interacting with the service performed an
      -- action to apply to a job and was redirected to a different website to
      -- complete the application.
    | ApplicationStartFromSearch
      -- ^ @APPLICATION_START_FROM_SEARCH@
      -- The job seeker or other entity interacting with the service began the
      -- process or demonstrated the intention of applying for a job from the
      -- search results page without viewing the details of the job posting. If
      -- sending this event, JobEventType.VIEW event shouldn\'t be sent.
    | ApplicationRedirectFromSearch
      -- ^ @APPLICATION_REDIRECT_FROM_SEARCH@
      -- The job seeker, or other entity interacting with the service, performs
      -- an action with a single click from the search results page to apply to a
      -- job (without viewing the details of the job posting), and is redirected
      -- to a different website to complete the application. If a candidate
      -- performs this action, send only this event to the service. Do not also
      -- send JobEventType.APPLICATION_START, JobEventType.APPLICATION_FINISH or
      -- JobEventType.VIEW events.
    | ApplicationCompanySubmit
      -- ^ @APPLICATION_COMPANY_SUBMIT@
      -- This event should be used when a company submits an application on
      -- behalf of a job seeker. This event is intended for use by staffing
      -- agencies attempting to place candidates.
    | Bookmark
      -- ^ @BOOKMARK@
      -- The job seeker or other entity interacting with the service demonstrated
      -- an interest in a job by bookmarking or saving it.
    | Notification
      -- ^ @NOTIFICATION@
      -- The job seeker or other entity interacting with the service was sent a
      -- notification, such as an email alert or device notification, containing
      -- one or more jobs listings generated by the service.
    | Hired
      -- ^ @HIRED@
      -- The job seeker or other entity interacting with the service was employed
      -- by the hiring entity (employer). Send this event only if the job seeker
      -- was hired through an application that was initiated by a search
      -- conducted through the Cloud Talent Solution service.
    | SentCv
      -- ^ @SENT_CV@
      -- A recruiter or staffing agency submitted an application on behalf of the
      -- candidate after interacting with the service to identify a suitable job
      -- posting.
    | InterviewGranted
      -- ^ @INTERVIEW_GRANTED@
      -- The entity interacting with the service (for example, the job seeker),
      -- was granted an initial interview by the hiring entity (employer). This
      -- event should only be sent if the job seeker was granted an interview as
      -- part of an application that was initiated by a search conducted through
      -- \/ recommendation provided by the Cloud Talent Solution service.
    | NotInterested
      -- ^ @NOT_INTERESTED@
      -- The job seeker or other entity interacting with the service showed no
      -- interest in the job.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable JobEventType

instance FromHttpApiData JobEventType where
    parseQueryParam = \case
        "JOB_EVENT_TYPE_UNSPECIFIED" -> Right JobEventTypeUnspecified
        "IMPRESSION" -> Right Impression
        "VIEW" -> Right View
        "VIEW_REDIRECT" -> Right ViewRedirect
        "APPLICATION_START" -> Right ApplicationStart
        "APPLICATION_FINISH" -> Right ApplicationFinish
        "APPLICATION_QUICK_SUBMISSION" -> Right ApplicationQuickSubmission
        "APPLICATION_REDIRECT" -> Right ApplicationRedirect
        "APPLICATION_START_FROM_SEARCH" -> Right ApplicationStartFromSearch
        "APPLICATION_REDIRECT_FROM_SEARCH" -> Right ApplicationRedirectFromSearch
        "APPLICATION_COMPANY_SUBMIT" -> Right ApplicationCompanySubmit
        "BOOKMARK" -> Right Bookmark
        "NOTIFICATION" -> Right Notification
        "HIRED" -> Right Hired
        "SENT_CV" -> Right SentCv
        "INTERVIEW_GRANTED" -> Right InterviewGranted
        "NOT_INTERESTED" -> Right NotInterested
        x -> Left ("Unable to parse JobEventType from: " <> x)

instance ToHttpApiData JobEventType where
    toQueryParam = \case
        JobEventTypeUnspecified -> "JOB_EVENT_TYPE_UNSPECIFIED"
        Impression -> "IMPRESSION"
        View -> "VIEW"
        ViewRedirect -> "VIEW_REDIRECT"
        ApplicationStart -> "APPLICATION_START"
        ApplicationFinish -> "APPLICATION_FINISH"
        ApplicationQuickSubmission -> "APPLICATION_QUICK_SUBMISSION"
        ApplicationRedirect -> "APPLICATION_REDIRECT"
        ApplicationStartFromSearch -> "APPLICATION_START_FROM_SEARCH"
        ApplicationRedirectFromSearch -> "APPLICATION_REDIRECT_FROM_SEARCH"
        ApplicationCompanySubmit -> "APPLICATION_COMPANY_SUBMIT"
        Bookmark -> "BOOKMARK"
        Notification -> "NOTIFICATION"
        Hired -> "HIRED"
        SentCv -> "SENT_CV"
        InterviewGranted -> "INTERVIEW_GRANTED"
        NotInterested -> "NOT_INTERESTED"

instance FromJSON JobEventType where
    parseJSON = parseJSONText "JobEventType"

instance ToJSON JobEventType where
    toJSON = toJSONText

-- | Optional. Mode of a search. Defaults to SearchMode.JOB_SEARCH.
data SearchJobsRequestSearchMode
    = SearchModeUnspecified
      -- ^ @SEARCH_MODE_UNSPECIFIED@
      -- The mode of the search method isn\'t specified.
    | JobSearch
      -- ^ @JOB_SEARCH@
      -- The job search matches against all jobs, and featured jobs (jobs with
      -- promotionValue > 0) are not specially handled.
    | FeaturedJobSearch
      -- ^ @FEATURED_JOB_SEARCH@
      -- The job search matches only against featured jobs (jobs with a
      -- promotionValue > 0). This method doesn\'t return any jobs having a
      -- promotionValue \<= 0. The search results order is determined by the
      -- promotionValue (jobs with a higher promotionValue are returned higher up
      -- in the search results), with relevance being used as a tiebreaker.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchJobsRequestSearchMode

instance FromHttpApiData SearchJobsRequestSearchMode where
    parseQueryParam = \case
        "SEARCH_MODE_UNSPECIFIED" -> Right SearchModeUnspecified
        "JOB_SEARCH" -> Right JobSearch
        "FEATURED_JOB_SEARCH" -> Right FeaturedJobSearch
        x -> Left ("Unable to parse SearchJobsRequestSearchMode from: " <> x)

instance ToHttpApiData SearchJobsRequestSearchMode where
    toQueryParam = \case
        SearchModeUnspecified -> "SEARCH_MODE_UNSPECIFIED"
        JobSearch -> "JOB_SEARCH"
        FeaturedJobSearch -> "FEATURED_JOB_SEARCH"

instance FromJSON SearchJobsRequestSearchMode where
    parseJSON = parseJSONText "SearchJobsRequestSearchMode"

instance ToJSON SearchJobsRequestSearchMode where
    toJSON = toJSONText

-- | Optional. Allows the client to return jobs without a set location,
-- specifically, telecommuting jobs (telecomuting is considered by the
-- service as a special location. Job.posting_region indicates if a job
-- permits telecommuting. If this field is set to
-- TelecommutePreference.TELECOMMUTE_ALLOWED, telecommuting jobs are
-- searched, and address and lat_lng are ignored. If not set or set to
-- TelecommutePreference.TELECOMMUTE_EXCLUDED, telecommute job are not
-- searched. This filter can be used by itself to search exclusively for
-- telecommuting jobs, or it can be combined with another location filter
-- to search for a combination of job locations, such as \"Mountain View\"
-- or \"telecommuting\" jobs. However, when used in combination with other
-- location filters, telecommuting jobs can be treated as less relevant
-- than other jobs in the search response.
data LocationFilterTelecommutePreference
    = TelecommutePreferenceUnspecified
      -- ^ @TELECOMMUTE_PREFERENCE_UNSPECIFIED@
      -- Default value if the telecommute preference is not specified.
    | TelecommuteExcluded
      -- ^ @TELECOMMUTE_EXCLUDED@
      -- Exclude telecommute jobs.
    | TelecommuteAllowed
      -- ^ @TELECOMMUTE_ALLOWED@
      -- Allow telecommute jobs.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LocationFilterTelecommutePreference

instance FromHttpApiData LocationFilterTelecommutePreference where
    parseQueryParam = \case
        "TELECOMMUTE_PREFERENCE_UNSPECIFIED" -> Right TelecommutePreferenceUnspecified
        "TELECOMMUTE_EXCLUDED" -> Right TelecommuteExcluded
        "TELECOMMUTE_ALLOWED" -> Right TelecommuteAllowed
        x -> Left ("Unable to parse LocationFilterTelecommutePreference from: " <> x)

instance ToHttpApiData LocationFilterTelecommutePreference where
    toQueryParam = \case
        TelecommutePreferenceUnspecified -> "TELECOMMUTE_PREFERENCE_UNSPECIFIED"
        TelecommuteExcluded -> "TELECOMMUTE_EXCLUDED"
        TelecommuteAllowed -> "TELECOMMUTE_ALLOWED"

instance FromJSON LocationFilterTelecommutePreference where
    parseJSON = parseJSONText "LocationFilterTelecommutePreference"

instance ToJSON LocationFilterTelecommutePreference where
    toJSON = toJSONText

-- | Optional. Option for job HTML content sanitization. Applied fields are:
-- * description * applicationInfo.instruction * incentives *
-- qualifications * responsibilities HTML tags in these fields may be
-- stripped if sanitiazation is not disabled. Defaults to
-- HtmlSanitization.SIMPLE_FORMATTING_ONLY.
data ProcessingOptionsHTMLSanitization
    = HTMLSanitizationUnspecified
      -- ^ @HTML_SANITIZATION_UNSPECIFIED@
      -- Default value.
    | HTMLSanitizationDisabled
      -- ^ @HTML_SANITIZATION_DISABLED@
      -- Disables sanitization on HTML input.
    | SimpleFormattingOnly
      -- ^ @SIMPLE_FORMATTING_ONLY@
      -- Sanitizes HTML input, only accepts bold, italic, ordered list, and
      -- unordered list markup tags.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProcessingOptionsHTMLSanitization

instance FromHttpApiData ProcessingOptionsHTMLSanitization where
    parseQueryParam = \case
        "HTML_SANITIZATION_UNSPECIFIED" -> Right HTMLSanitizationUnspecified
        "HTML_SANITIZATION_DISABLED" -> Right HTMLSanitizationDisabled
        "SIMPLE_FORMATTING_ONLY" -> Right SimpleFormattingOnly
        x -> Left ("Unable to parse ProcessingOptionsHTMLSanitization from: " <> x)

instance ToHttpApiData ProcessingOptionsHTMLSanitization where
    toQueryParam = \case
        HTMLSanitizationUnspecified -> "HTML_SANITIZATION_UNSPECIFIED"
        HTMLSanitizationDisabled -> "HTML_SANITIZATION_DISABLED"
        SimpleFormattingOnly -> "SIMPLE_FORMATTING_ONLY"

instance FromJSON ProcessingOptionsHTMLSanitization where
    parseJSON = parseJSONText "ProcessingOptionsHTMLSanitization"

instance ToJSON ProcessingOptionsHTMLSanitization where
    toJSON = toJSONText

-- | Optional. The desired job attributes returned for jobs in the search
-- response. Defaults to JobView.SMALL if no value is specified.
data SearchJobsRequestJobView
    = JobViewUnspecified
      -- ^ @JOB_VIEW_UNSPECIFIED@
      -- Default value.
    | JobViewIdOnly
      -- ^ @JOB_VIEW_ID_ONLY@
      -- A ID only view of job, with following attributes: Job.name,
      -- Job.requisition_id, Job.language_code.
    | JobViewMinimal
      -- ^ @JOB_VIEW_MINIMAL@
      -- A minimal view of the job, with the following attributes: Job.name,
      -- Job.requisition_id, Job.title, Job.company_name,
      -- Job.DerivedInfo.locations, Job.language_code.
    | JobViewSmall
      -- ^ @JOB_VIEW_SMALL@
      -- A small view of the job, with the following attributes in the search
      -- results: Job.name, Job.requisition_id, Job.title, Job.company_name,
      -- Job.DerivedInfo.locations, Job.visibility, Job.language_code,
      -- Job.description.
    | JobViewFull
      -- ^ @JOB_VIEW_FULL@
      -- All available attributes are included in the search results.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchJobsRequestJobView

instance FromHttpApiData SearchJobsRequestJobView where
    parseQueryParam = \case
        "JOB_VIEW_UNSPECIFIED" -> Right JobViewUnspecified
        "JOB_VIEW_ID_ONLY" -> Right JobViewIdOnly
        "JOB_VIEW_MINIMAL" -> Right JobViewMinimal
        "JOB_VIEW_SMALL" -> Right JobViewSmall
        "JOB_VIEW_FULL" -> Right JobViewFull
        x -> Left ("Unable to parse SearchJobsRequestJobView from: " <> x)

instance ToHttpApiData SearchJobsRequestJobView where
    toQueryParam = \case
        JobViewUnspecified -> "JOB_VIEW_UNSPECIFIED"
        JobViewIdOnly -> "JOB_VIEW_ID_ONLY"
        JobViewMinimal -> "JOB_VIEW_MINIMAL"
        JobViewSmall -> "JOB_VIEW_SMALL"
        JobViewFull -> "JOB_VIEW_FULL"

instance FromJSON SearchJobsRequestJobView where
    parseJSON = parseJSONText "SearchJobsRequestJobView"

instance ToJSON SearchJobsRequestJobView where
    toJSON = toJSONText
