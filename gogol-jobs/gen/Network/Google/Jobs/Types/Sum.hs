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

import Network.Google.Prelude hiding (Bytes)

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
      -- the base entry\'s unit matches provided CompensationUnit and amount or
      -- range overlaps with provided CompensationRange. See
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

-- | Required. The method of transportation to calculate the commute time
-- for.
data CommuteFilterCommuteMethod
    = CommuteMethodUnspecified
      -- ^ @COMMUTE_METHOD_UNSPECIFIED@
      -- Commute method isn\'t specified.
    | Driving
      -- ^ @DRIVING@
      -- Commute time is calculated based on driving time.
    | Transit
      -- ^ @TRANSIT@
      -- Commute time is calculated based on public transit including bus, metro,
      -- subway, and so on.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommuteFilterCommuteMethod

instance FromHttpApiData CommuteFilterCommuteMethod where
    parseQueryParam = \case
        "COMMUTE_METHOD_UNSPECIFIED" -> Right CommuteMethodUnspecified
        "DRIVING" -> Right Driving
        "TRANSIT" -> Right Transit
        x -> Left ("Unable to parse CommuteFilterCommuteMethod from: " <> x)

instance ToHttpApiData CommuteFilterCommuteMethod where
    toQueryParam = \case
        CommuteMethodUnspecified -> "COMMUTE_METHOD_UNSPECIFIED"
        Driving -> "DRIVING"
        Transit -> "TRANSIT"

instance FromJSON CommuteFilterCommuteMethod where
    parseJSON = parseJSONText "CommuteFilterCommuteMethod"

instance ToJSON CommuteFilterCommuteMethod where
    toJSON = toJSONText

-- | Controls whether highly similar jobs are returned next to each other in
-- the search results. Jobs are identified as highly similar based on their
-- titles, job categories, and locations. Highly similar results are
-- clustered so that only one representative job of the cluster is
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
      -- results. If you are using pageToken to page through the result set,
      -- latency might be lower but we can\'t guarantee that all results are
      -- returned. If you are using page offset, latency might be higher but all
      -- results are returned.
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

data JobDegreeTypesItem
    = DegreeTypeUnspecified
      -- ^ @DEGREE_TYPE_UNSPECIFIED@
      -- Default value. Represents no degree, or early childhood education. Maps
      -- to ISCED code 0. Ex) Kindergarten
    | PrimaryEducation
      -- ^ @PRIMARY_EDUCATION@
      -- Primary education which is typically the first stage of compulsory
      -- education. ISCED code 1. Ex) Elementary school
    | LowerSecondaryEducation
      -- ^ @LOWER_SECONDARY_EDUCATION@
      -- Lower secondary education; First stage of secondary education building
      -- on primary education, typically with a more subject-oriented curriculum.
      -- ISCED code 2. Ex) Middle school
    | UpperSecondaryEducation
      -- ^ @UPPER_SECONDARY_EDUCATION@
      -- Middle education; Second\/final stage of secondary education preparing
      -- for tertiary education and\/or providing skills relevant to employment.
      -- Usually with an increased range of subject options and streams. ISCED
      -- code 3. Ex) High school
    | AdultRemedialEducation
      -- ^ @ADULT_REMEDIAL_EDUCATION@
      -- Adult Remedial Education; Programmes providing learning experiences that
      -- build on secondary education and prepare for labour market entry and\/or
      -- tertiary education. The content is broader than secondary but not as
      -- complex as tertiary education. ISCED code 4.
    | AssociatesOrEquivalent
      -- ^ @ASSOCIATES_OR_EQUIVALENT@
      -- Associate\'s or equivalent; Short first tertiary programmes that are
      -- typically practically-based, occupationally-specific and prepare for
      -- labour market entry. These programmes may also provide a pathway to
      -- other tertiary programmes. ISCED code 5.
    | BachelorsOrEquivalent
      -- ^ @BACHELORS_OR_EQUIVALENT@
      -- Bachelor\'s or equivalent; Programmes designed to provide intermediate
      -- academic and\/or professional knowledge, skills and competencies leading
      -- to a first tertiary degree or equivalent qualification. ISCED code 6.
    | MastersOrEquivalent
      -- ^ @MASTERS_OR_EQUIVALENT@
      -- Master\'s or equivalent; Programmes designed to provide advanced
      -- academic and\/or professional knowledge, skills and competencies leading
      -- to a second tertiary degree or equivalent qualification. ISCED code 7.
    | DoctoralOrEquivalent
      -- ^ @DOCTORAL_OR_EQUIVALENT@
      -- Doctoral or equivalent; Programmes designed primarily to lead to an
      -- advanced research qualification, usually concluding with the submission
      -- and defense of a substantive dissertation of publishable quality based
      -- on original research. ISCED code 8.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable JobDegreeTypesItem

instance FromHttpApiData JobDegreeTypesItem where
    parseQueryParam = \case
        "DEGREE_TYPE_UNSPECIFIED" -> Right DegreeTypeUnspecified
        "PRIMARY_EDUCATION" -> Right PrimaryEducation
        "LOWER_SECONDARY_EDUCATION" -> Right LowerSecondaryEducation
        "UPPER_SECONDARY_EDUCATION" -> Right UpperSecondaryEducation
        "ADULT_REMEDIAL_EDUCATION" -> Right AdultRemedialEducation
        "ASSOCIATES_OR_EQUIVALENT" -> Right AssociatesOrEquivalent
        "BACHELORS_OR_EQUIVALENT" -> Right BachelorsOrEquivalent
        "MASTERS_OR_EQUIVALENT" -> Right MastersOrEquivalent
        "DOCTORAL_OR_EQUIVALENT" -> Right DoctoralOrEquivalent
        x -> Left ("Unable to parse JobDegreeTypesItem from: " <> x)

instance ToHttpApiData JobDegreeTypesItem where
    toQueryParam = \case
        DegreeTypeUnspecified -> "DEGREE_TYPE_UNSPECIFIED"
        PrimaryEducation -> "PRIMARY_EDUCATION"
        LowerSecondaryEducation -> "LOWER_SECONDARY_EDUCATION"
        UpperSecondaryEducation -> "UPPER_SECONDARY_EDUCATION"
        AdultRemedialEducation -> "ADULT_REMEDIAL_EDUCATION"
        AssociatesOrEquivalent -> "ASSOCIATES_OR_EQUIVALENT"
        BachelorsOrEquivalent -> "BACHELORS_OR_EQUIVALENT"
        MastersOrEquivalent -> "MASTERS_OR_EQUIVALENT"
        DoctoralOrEquivalent -> "DOCTORAL_OR_EQUIVALENT"

instance FromJSON JobDegreeTypesItem where
    parseJSON = parseJSONText "JobDegreeTypesItem"

instance ToJSON JobDegreeTypesItem where
    toJSON = toJSONText

-- | The desired job attributes returned for jobs in the search response.
-- Defaults to JobView.JOB_VIEW_FULL if no value is specified.
data ProjectsTenantsJobsListJobView
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
      -- Job.requisition_id, Job.title, Job.company, Job.DerivedInfo.locations,
      -- Job.language_code.
    | JobViewSmall
      -- ^ @JOB_VIEW_SMALL@
      -- A small view of the job, with the following attributes in the search
      -- results: Job.name, Job.requisition_id, Job.title, Job.company,
      -- Job.DerivedInfo.locations, Job.visibility, Job.language_code,
      -- Job.description.
    | JobViewFull
      -- ^ @JOB_VIEW_FULL@
      -- All available attributes are included in the search results.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsTenantsJobsListJobView

instance FromHttpApiData ProjectsTenantsJobsListJobView where
    parseQueryParam = \case
        "JOB_VIEW_UNSPECIFIED" -> Right JobViewUnspecified
        "JOB_VIEW_ID_ONLY" -> Right JobViewIdOnly
        "JOB_VIEW_MINIMAL" -> Right JobViewMinimal
        "JOB_VIEW_SMALL" -> Right JobViewSmall
        "JOB_VIEW_FULL" -> Right JobViewFull
        x -> Left ("Unable to parse ProjectsTenantsJobsListJobView from: " <> x)

instance ToHttpApiData ProjectsTenantsJobsListJobView where
    toQueryParam = \case
        JobViewUnspecified -> "JOB_VIEW_UNSPECIFIED"
        JobViewIdOnly -> "JOB_VIEW_ID_ONLY"
        JobViewMinimal -> "JOB_VIEW_MINIMAL"
        JobViewSmall -> "JOB_VIEW_SMALL"
        JobViewFull -> "JOB_VIEW_FULL"

instance FromJSON ProjectsTenantsJobsListJobView where
    parseJSON = parseJSONText "ProjectsTenantsJobsListJobView"

instance ToJSON ProjectsTenantsJobsListJobView where
    toJSON = toJSONText

data JobDerivedInfoJobCategoriesItem
    = JobCategoryUnspecified
      -- ^ @JOB_CATEGORY_UNSPECIFIED@
      -- The default value if the category isn\'t specified.
    | AccountingAndFinance
      -- ^ @ACCOUNTING_AND_FINANCE@
      -- An accounting and finance job, such as an Accountant.
    | AdministrativeAndOffice
      -- ^ @ADMINISTRATIVE_AND_OFFICE@
      -- An administrative and office job, such as an Administrative Assistant.
    | AdvertisingAndMarketing
      -- ^ @ADVERTISING_AND_MARKETING@
      -- An advertising and marketing job, such as Marketing Manager.
    | AnimalCare
      -- ^ @ANIMAL_CARE@
      -- An animal care job, such as Veterinarian.
    | ArtFashionAndDesign
      -- ^ @ART_FASHION_AND_DESIGN@
      -- An art, fashion, or design job, such as Designer.
    | BusinessOperations
      -- ^ @BUSINESS_OPERATIONS@
      -- A business operations job, such as Business Operations Manager.
    | CleaningAndFacilities
      -- ^ @CLEANING_AND_FACILITIES@
      -- A cleaning and facilities job, such as Custodial Staff.
    | ComputerAndIt
      -- ^ @COMPUTER_AND_IT@
      -- A computer and IT job, such as Systems Administrator.
    | Construction
      -- ^ @CONSTRUCTION@
      -- A construction job, such as General Laborer.
    | CustomerService
      -- ^ @CUSTOMER_SERVICE@
      -- A customer service job, such s Cashier.
    | Education
      -- ^ @EDUCATION@
      -- An education job, such as School Teacher.
    | EntertainmentAndTravel
      -- ^ @ENTERTAINMENT_AND_TRAVEL@
      -- An entertainment and travel job, such as Flight Attendant.
    | FarmingAndOutdoors
      -- ^ @FARMING_AND_OUTDOORS@
      -- A farming or outdoor job, such as Park Ranger.
    | Healthcare
      -- ^ @HEALTHCARE@
      -- A healthcare job, such as Registered Nurse.
    | HumanResources
      -- ^ @HUMAN_RESOURCES@
      -- A human resources job, such as Human Resources Director.
    | InstallationMaintenanceAndRepair
      -- ^ @INSTALLATION_MAINTENANCE_AND_REPAIR@
      -- An installation, maintenance, or repair job, such as Electrician.
    | Legal
      -- ^ @LEGAL@
      -- A legal job, such as Law Clerk.
    | Management
      -- ^ @MANAGEMENT@
      -- A management job, often used in conjunction with another category, such
      -- as Store Manager.
    | ManufacturingAndWarehouse
      -- ^ @MANUFACTURING_AND_WAREHOUSE@
      -- A manufacturing or warehouse job, such as Assembly Technician.
    | MediaCommunicationsAndWriting
      -- ^ @MEDIA_COMMUNICATIONS_AND_WRITING@
      -- A media, communications, or writing job, such as Media Relations.
    | OilGasAndMining
      -- ^ @OIL_GAS_AND_MINING@
      -- An oil, gas or mining job, such as Offshore Driller.
    | PersonalCareAndServices
      -- ^ @PERSONAL_CARE_AND_SERVICES@
      -- A personal care and services job, such as Hair Stylist.
    | ProtectiveServices
      -- ^ @PROTECTIVE_SERVICES@
      -- A protective services job, such as Security Guard.
    | RealEState
      -- ^ @REAL_ESTATE@
      -- A real estate job, such as Buyer\'s Agent.
    | RestaurantAndHospitality
      -- ^ @RESTAURANT_AND_HOSPITALITY@
      -- A restaurant and hospitality job, such as Restaurant Server.
    | SalesAndRetail
      -- ^ @SALES_AND_RETAIL@
      -- A sales and\/or retail job, such Sales Associate.
    | ScienceAndEngineering
      -- ^ @SCIENCE_AND_ENGINEERING@
      -- A science and engineering job, such as Lab Technician.
    | SocialServicesAndNonProfit
      -- ^ @SOCIAL_SERVICES_AND_NON_PROFIT@
      -- A social services or non-profit job, such as Case Worker.
    | SportsFitnessAndRecreation
      -- ^ @SPORTS_FITNESS_AND_RECREATION@
      -- A sports, fitness, or recreation job, such as Personal Trainer.
    | TransportationAndLogistics
      -- ^ @TRANSPORTATION_AND_LOGISTICS@
      -- A transportation or logistics job, such as Truck Driver.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable JobDerivedInfoJobCategoriesItem

instance FromHttpApiData JobDerivedInfoJobCategoriesItem where
    parseQueryParam = \case
        "JOB_CATEGORY_UNSPECIFIED" -> Right JobCategoryUnspecified
        "ACCOUNTING_AND_FINANCE" -> Right AccountingAndFinance
        "ADMINISTRATIVE_AND_OFFICE" -> Right AdministrativeAndOffice
        "ADVERTISING_AND_MARKETING" -> Right AdvertisingAndMarketing
        "ANIMAL_CARE" -> Right AnimalCare
        "ART_FASHION_AND_DESIGN" -> Right ArtFashionAndDesign
        "BUSINESS_OPERATIONS" -> Right BusinessOperations
        "CLEANING_AND_FACILITIES" -> Right CleaningAndFacilities
        "COMPUTER_AND_IT" -> Right ComputerAndIt
        "CONSTRUCTION" -> Right Construction
        "CUSTOMER_SERVICE" -> Right CustomerService
        "EDUCATION" -> Right Education
        "ENTERTAINMENT_AND_TRAVEL" -> Right EntertainmentAndTravel
        "FARMING_AND_OUTDOORS" -> Right FarmingAndOutdoors
        "HEALTHCARE" -> Right Healthcare
        "HUMAN_RESOURCES" -> Right HumanResources
        "INSTALLATION_MAINTENANCE_AND_REPAIR" -> Right InstallationMaintenanceAndRepair
        "LEGAL" -> Right Legal
        "MANAGEMENT" -> Right Management
        "MANUFACTURING_AND_WAREHOUSE" -> Right ManufacturingAndWarehouse
        "MEDIA_COMMUNICATIONS_AND_WRITING" -> Right MediaCommunicationsAndWriting
        "OIL_GAS_AND_MINING" -> Right OilGasAndMining
        "PERSONAL_CARE_AND_SERVICES" -> Right PersonalCareAndServices
        "PROTECTIVE_SERVICES" -> Right ProtectiveServices
        "REAL_ESTATE" -> Right RealEState
        "RESTAURANT_AND_HOSPITALITY" -> Right RestaurantAndHospitality
        "SALES_AND_RETAIL" -> Right SalesAndRetail
        "SCIENCE_AND_ENGINEERING" -> Right ScienceAndEngineering
        "SOCIAL_SERVICES_AND_NON_PROFIT" -> Right SocialServicesAndNonProfit
        "SPORTS_FITNESS_AND_RECREATION" -> Right SportsFitnessAndRecreation
        "TRANSPORTATION_AND_LOGISTICS" -> Right TransportationAndLogistics
        x -> Left ("Unable to parse JobDerivedInfoJobCategoriesItem from: " <> x)

instance ToHttpApiData JobDerivedInfoJobCategoriesItem where
    toQueryParam = \case
        JobCategoryUnspecified -> "JOB_CATEGORY_UNSPECIFIED"
        AccountingAndFinance -> "ACCOUNTING_AND_FINANCE"
        AdministrativeAndOffice -> "ADMINISTRATIVE_AND_OFFICE"
        AdvertisingAndMarketing -> "ADVERTISING_AND_MARKETING"
        AnimalCare -> "ANIMAL_CARE"
        ArtFashionAndDesign -> "ART_FASHION_AND_DESIGN"
        BusinessOperations -> "BUSINESS_OPERATIONS"
        CleaningAndFacilities -> "CLEANING_AND_FACILITIES"
        ComputerAndIt -> "COMPUTER_AND_IT"
        Construction -> "CONSTRUCTION"
        CustomerService -> "CUSTOMER_SERVICE"
        Education -> "EDUCATION"
        EntertainmentAndTravel -> "ENTERTAINMENT_AND_TRAVEL"
        FarmingAndOutdoors -> "FARMING_AND_OUTDOORS"
        Healthcare -> "HEALTHCARE"
        HumanResources -> "HUMAN_RESOURCES"
        InstallationMaintenanceAndRepair -> "INSTALLATION_MAINTENANCE_AND_REPAIR"
        Legal -> "LEGAL"
        Management -> "MANAGEMENT"
        ManufacturingAndWarehouse -> "MANUFACTURING_AND_WAREHOUSE"
        MediaCommunicationsAndWriting -> "MEDIA_COMMUNICATIONS_AND_WRITING"
        OilGasAndMining -> "OIL_GAS_AND_MINING"
        PersonalCareAndServices -> "PERSONAL_CARE_AND_SERVICES"
        ProtectiveServices -> "PROTECTIVE_SERVICES"
        RealEState -> "REAL_ESTATE"
        RestaurantAndHospitality -> "RESTAURANT_AND_HOSPITALITY"
        SalesAndRetail -> "SALES_AND_RETAIL"
        ScienceAndEngineering -> "SCIENCE_AND_ENGINEERING"
        SocialServicesAndNonProfit -> "SOCIAL_SERVICES_AND_NON_PROFIT"
        SportsFitnessAndRecreation -> "SPORTS_FITNESS_AND_RECREATION"
        TransportationAndLogistics -> "TRANSPORTATION_AND_LOGISTICS"

instance FromJSON JobDerivedInfoJobCategoriesItem where
    parseJSON = parseJSONText "JobDerivedInfoJobCategoriesItem"

instance ToJSON JobDerivedInfoJobCategoriesItem where
    toJSON = toJSONText

-- | Compensation type. Default is
-- CompensationType.COMPENSATION_TYPE_UNSPECIFIED.
data CompensationEntryType
    = CompensationTypeUnspecified
      -- ^ @COMPENSATION_TYPE_UNSPECIFIED@
      -- Default value.
    | Base
      -- ^ @BASE@
      -- Base compensation: Refers to the fixed amount of money paid to an
      -- employee by an employer in return for work performed. Base compensation
      -- does not include benefits, bonuses or any other potential compensation
      -- from an employer.
    | Bonus
      -- ^ @BONUS@
      -- Bonus.
    | SigningBonus
      -- ^ @SIGNING_BONUS@
      -- Signing bonus.
    | Equity
      -- ^ @EQUITY@
      -- Equity.
    | ProfitSharing
      -- ^ @PROFIT_SHARING@
      -- Profit sharing.
    | Commissions
      -- ^ @COMMISSIONS@
      -- Commission.
    | Tips
      -- ^ @TIPS@
      -- Tips.
    | OtherCompensationType
      -- ^ @OTHER_COMPENSATION_TYPE@
      -- Other compensation type.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CompensationEntryType

instance FromHttpApiData CompensationEntryType where
    parseQueryParam = \case
        "COMPENSATION_TYPE_UNSPECIFIED" -> Right CompensationTypeUnspecified
        "BASE" -> Right Base
        "BONUS" -> Right Bonus
        "SIGNING_BONUS" -> Right SigningBonus
        "EQUITY" -> Right Equity
        "PROFIT_SHARING" -> Right ProfitSharing
        "COMMISSIONS" -> Right Commissions
        "TIPS" -> Right Tips
        "OTHER_COMPENSATION_TYPE" -> Right OtherCompensationType
        x -> Left ("Unable to parse CompensationEntryType from: " <> x)

instance ToHttpApiData CompensationEntryType where
    toQueryParam = \case
        CompensationTypeUnspecified -> "COMPENSATION_TYPE_UNSPECIFIED"
        Base -> "BASE"
        Bonus -> "BONUS"
        SigningBonus -> "SIGNING_BONUS"
        Equity -> "EQUITY"
        ProfitSharing -> "PROFIT_SHARING"
        Commissions -> "COMMISSIONS"
        Tips -> "TIPS"
        OtherCompensationType -> "OTHER_COMPENSATION_TYPE"

instance FromJSON CompensationEntryType where
    parseJSON = parseJSONText "CompensationEntryType"

instance ToJSON CompensationEntryType where
    toJSON = toJSONText

data JobQueryEmploymentTypesItem
    = EmploymentTypeUnspecified
      -- ^ @EMPLOYMENT_TYPE_UNSPECIFIED@
      -- The default value if the employment type isn\'t specified.
    | FullTime
      -- ^ @FULL_TIME@
      -- The job requires working a number of hours that constitute full time
      -- employment, typically 40 or more hours per week.
    | PartTime
      -- ^ @PART_TIME@
      -- The job entails working fewer hours than a full time job, typically less
      -- than 40 hours a week.
    | Contractor
      -- ^ @CONTRACTOR@
      -- The job is offered as a contracted, as opposed to a salaried employee,
      -- position.
    | ContractToHire
      -- ^ @CONTRACT_TO_HIRE@
      -- The job is offered as a contracted position with the understanding that
      -- it\'s converted into a full-time position at the end of the contract.
      -- Jobs of this type are also returned by a search for
      -- EmploymentType.CONTRACTOR jobs.
    | Temporary
      -- ^ @TEMPORARY@
      -- The job is offered as a temporary employment opportunity, usually a
      -- short-term engagement.
    | Intern
      -- ^ @INTERN@
      -- The job is a fixed-term opportunity for students or entry-level job
      -- seekers to obtain on-the-job training, typically offered as a summer
      -- position.
    | Volunteer
      -- ^ @VOLUNTEER@
      -- The is an opportunity for an individual to volunteer, where there\'s no
      -- expectation of compensation for the provided services.
    | PerDiem
      -- ^ @PER_DIEM@
      -- The job requires an employee to work on an as-needed basis with a
      -- flexible schedule.
    | FlyInFlyOut
      -- ^ @FLY_IN_FLY_OUT@
      -- The job involves employing people in remote areas and flying them
      -- temporarily to the work site instead of relocating employees and their
      -- families permanently.
    | OtherEmploymentType
      -- ^ @OTHER_EMPLOYMENT_TYPE@
      -- The job does not fit any of the other listed types.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable JobQueryEmploymentTypesItem

instance FromHttpApiData JobQueryEmploymentTypesItem where
    parseQueryParam = \case
        "EMPLOYMENT_TYPE_UNSPECIFIED" -> Right EmploymentTypeUnspecified
        "FULL_TIME" -> Right FullTime
        "PART_TIME" -> Right PartTime
        "CONTRACTOR" -> Right Contractor
        "CONTRACT_TO_HIRE" -> Right ContractToHire
        "TEMPORARY" -> Right Temporary
        "INTERN" -> Right Intern
        "VOLUNTEER" -> Right Volunteer
        "PER_DIEM" -> Right PerDiem
        "FLY_IN_FLY_OUT" -> Right FlyInFlyOut
        "OTHER_EMPLOYMENT_TYPE" -> Right OtherEmploymentType
        x -> Left ("Unable to parse JobQueryEmploymentTypesItem from: " <> x)

instance ToHttpApiData JobQueryEmploymentTypesItem where
    toQueryParam = \case
        EmploymentTypeUnspecified -> "EMPLOYMENT_TYPE_UNSPECIFIED"
        FullTime -> "FULL_TIME"
        PartTime -> "PART_TIME"
        Contractor -> "CONTRACTOR"
        ContractToHire -> "CONTRACT_TO_HIRE"
        Temporary -> "TEMPORARY"
        Intern -> "INTERN"
        Volunteer -> "VOLUNTEER"
        PerDiem -> "PER_DIEM"
        FlyInFlyOut -> "FLY_IN_FLY_OUT"
        OtherEmploymentType -> "OTHER_EMPLOYMENT_TYPE"

instance FromJSON JobQueryEmploymentTypesItem where
    parseJSON = parseJSONText "JobQueryEmploymentTypesItem"

instance ToJSON JobQueryEmploymentTypesItem where
    toJSON = toJSONText

-- | Type of the device.
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

-- | Frequency of the specified amount. Default is
-- CompensationUnit.COMPENSATION_UNIT_UNSPECIFIED.
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

-- | The experience level associated with the job, such as \"Entry Level\".
data JobJobLevel
    = JobLevelUnspecified
      -- ^ @JOB_LEVEL_UNSPECIFIED@
      -- The default value if the level isn\'t specified.
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

-- | Deprecated. The job is only visible to the owner. The visibility of the
-- job. Defaults to Visibility.ACCOUNT_ONLY if not specified.
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

data JobEmploymentTypesItem
    = JETIEmploymentTypeUnspecified
      -- ^ @EMPLOYMENT_TYPE_UNSPECIFIED@
      -- The default value if the employment type isn\'t specified.
    | JETIFullTime
      -- ^ @FULL_TIME@
      -- The job requires working a number of hours that constitute full time
      -- employment, typically 40 or more hours per week.
    | JETIPartTime
      -- ^ @PART_TIME@
      -- The job entails working fewer hours than a full time job, typically less
      -- than 40 hours a week.
    | JETIContractor
      -- ^ @CONTRACTOR@
      -- The job is offered as a contracted, as opposed to a salaried employee,
      -- position.
    | JETIContractToHire
      -- ^ @CONTRACT_TO_HIRE@
      -- The job is offered as a contracted position with the understanding that
      -- it\'s converted into a full-time position at the end of the contract.
      -- Jobs of this type are also returned by a search for
      -- EmploymentType.CONTRACTOR jobs.
    | JETITemporary
      -- ^ @TEMPORARY@
      -- The job is offered as a temporary employment opportunity, usually a
      -- short-term engagement.
    | JETIIntern
      -- ^ @INTERN@
      -- The job is a fixed-term opportunity for students or entry-level job
      -- seekers to obtain on-the-job training, typically offered as a summer
      -- position.
    | JETIVolunteer
      -- ^ @VOLUNTEER@
      -- The is an opportunity for an individual to volunteer, where there\'s no
      -- expectation of compensation for the provided services.
    | JETIPerDiem
      -- ^ @PER_DIEM@
      -- The job requires an employee to work on an as-needed basis with a
      -- flexible schedule.
    | JETIFlyInFlyOut
      -- ^ @FLY_IN_FLY_OUT@
      -- The job involves employing people in remote areas and flying them
      -- temporarily to the work site instead of relocating employees and their
      -- families permanently.
    | JETIOtherEmploymentType
      -- ^ @OTHER_EMPLOYMENT_TYPE@
      -- The job does not fit any of the other listed types.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable JobEmploymentTypesItem

instance FromHttpApiData JobEmploymentTypesItem where
    parseQueryParam = \case
        "EMPLOYMENT_TYPE_UNSPECIFIED" -> Right JETIEmploymentTypeUnspecified
        "FULL_TIME" -> Right JETIFullTime
        "PART_TIME" -> Right JETIPartTime
        "CONTRACTOR" -> Right JETIContractor
        "CONTRACT_TO_HIRE" -> Right JETIContractToHire
        "TEMPORARY" -> Right JETITemporary
        "INTERN" -> Right JETIIntern
        "VOLUNTEER" -> Right JETIVolunteer
        "PER_DIEM" -> Right JETIPerDiem
        "FLY_IN_FLY_OUT" -> Right JETIFlyInFlyOut
        "OTHER_EMPLOYMENT_TYPE" -> Right JETIOtherEmploymentType
        x -> Left ("Unable to parse JobEmploymentTypesItem from: " <> x)

instance ToHttpApiData JobEmploymentTypesItem where
    toQueryParam = \case
        JETIEmploymentTypeUnspecified -> "EMPLOYMENT_TYPE_UNSPECIFIED"
        JETIFullTime -> "FULL_TIME"
        JETIPartTime -> "PART_TIME"
        JETIContractor -> "CONTRACTOR"
        JETIContractToHire -> "CONTRACT_TO_HIRE"
        JETITemporary -> "TEMPORARY"
        JETIIntern -> "INTERN"
        JETIVolunteer -> "VOLUNTEER"
        JETIPerDiem -> "PER_DIEM"
        JETIFlyInFlyOut -> "FLY_IN_FLY_OUT"
        JETIOtherEmploymentType -> "OTHER_EMPLOYMENT_TYPE"

instance FromJSON JobEmploymentTypesItem where
    parseJSON = parseJSONText "JobEmploymentTypesItem"

instance ToJSON JobEmploymentTypesItem where
    toJSON = toJSONText

-- | Required. Controls over how important the score of
-- CustomRankingInfo.ranking_expression gets applied to job\'s final
-- ranking position. An error is thrown if not specified.
data CustomRankingInfoImportanceLevel
    = ImportanceLevelUnspecified
      -- ^ @IMPORTANCE_LEVEL_UNSPECIFIED@
      -- Default value if the importance level isn\'t specified.
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

data CompensationFilterUnitsItem
    = CFUICompensationUnitUnspecified
      -- ^ @COMPENSATION_UNIT_UNSPECIFIED@
      -- Default value.
    | CFUIHourly
      -- ^ @HOURLY@
      -- Hourly.
    | CFUIDaily
      -- ^ @DAILY@
      -- Daily.
    | CFUIWeekly
      -- ^ @WEEKLY@
      -- Weekly
    | CFUIMonthly
      -- ^ @MONTHLY@
      -- Monthly.
    | CFUIYearly
      -- ^ @YEARLY@
      -- Yearly.
    | CFUIOneTime
      -- ^ @ONE_TIME@
      -- One time.
    | CFUIOtherCompensationUnit
      -- ^ @OTHER_COMPENSATION_UNIT@
      -- Other compensation units.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CompensationFilterUnitsItem

instance FromHttpApiData CompensationFilterUnitsItem where
    parseQueryParam = \case
        "COMPENSATION_UNIT_UNSPECIFIED" -> Right CFUICompensationUnitUnspecified
        "HOURLY" -> Right CFUIHourly
        "DAILY" -> Right CFUIDaily
        "WEEKLY" -> Right CFUIWeekly
        "MONTHLY" -> Right CFUIMonthly
        "YEARLY" -> Right CFUIYearly
        "ONE_TIME" -> Right CFUIOneTime
        "OTHER_COMPENSATION_UNIT" -> Right CFUIOtherCompensationUnit
        x -> Left ("Unable to parse CompensationFilterUnitsItem from: " <> x)

instance ToHttpApiData CompensationFilterUnitsItem where
    toQueryParam = \case
        CFUICompensationUnitUnspecified -> "COMPENSATION_UNIT_UNSPECIFIED"
        CFUIHourly -> "HOURLY"
        CFUIDaily -> "DAILY"
        CFUIWeekly -> "WEEKLY"
        CFUIMonthly -> "MONTHLY"
        CFUIYearly -> "YEARLY"
        CFUIOneTime -> "ONE_TIME"
        CFUIOtherCompensationUnit -> "OTHER_COMPENSATION_UNIT"

instance FromJSON CompensationFilterUnitsItem where
    parseJSON = parseJSONText "CompensationFilterUnitsItem"

instance ToJSON CompensationFilterUnitsItem where
    toJSON = toJSONText

-- | The job PostingRegion (for example, state, country) throughout which the
-- job is available. If this field is set, a LocationFilter in a search
-- query within the job region finds this job posting if an exact location
-- match isn\'t specified. If this field is set to PostingRegion.NATION or
-- PostingRegion.ADMINISTRATIVE_AREA, setting job Job.addresses to the same
-- location level as this field is strongly recommended.
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

-- | The employer\'s company size.
data CompanySize
    = CSCompanySizeUnspecified
      -- ^ @COMPANY_SIZE_UNSPECIFIED@
      -- Default value if the size isn\'t specified.
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

-- | The completion topic. The default is CompletionType.COMBINED.
data ProjectsTenantsCompleteQueryType
    = CompletionTypeUnspecified
      -- ^ @COMPLETION_TYPE_UNSPECIFIED@
      -- Default value.
    | JobTitle
      -- ^ @JOB_TITLE@
      -- Suggest job titles for jobs autocomplete. For CompletionType.JOB_TITLE
      -- type, only open jobs with the same language_codes are returned.
    | CompanyName
      -- ^ @COMPANY_NAME@
      -- Suggest company names for jobs autocomplete. For
      -- CompletionType.COMPANY_NAME type, only companies having open jobs with
      -- the same language_codes are returned.
    | Combined
      -- ^ @COMBINED@
      -- Suggest both job titles and company names for jobs autocomplete. For
      -- CompletionType.COMBINED type, only open jobs with the same
      -- language_codes or companies having open jobs with the same
      -- language_codes are returned.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsTenantsCompleteQueryType

instance FromHttpApiData ProjectsTenantsCompleteQueryType where
    parseQueryParam = \case
        "COMPLETION_TYPE_UNSPECIFIED" -> Right CompletionTypeUnspecified
        "JOB_TITLE" -> Right JobTitle
        "COMPANY_NAME" -> Right CompanyName
        "COMBINED" -> Right Combined
        x -> Left ("Unable to parse ProjectsTenantsCompleteQueryType from: " <> x)

instance ToHttpApiData ProjectsTenantsCompleteQueryType where
    toQueryParam = \case
        CompletionTypeUnspecified -> "COMPLETION_TYPE_UNSPECIFIED"
        JobTitle -> "JOB_TITLE"
        CompanyName -> "COMPANY_NAME"
        Combined -> "COMBINED"

instance FromJSON ProjectsTenantsCompleteQueryType where
    parseJSON = parseJSONText "ProjectsTenantsCompleteQueryType"

instance ToJSON ProjectsTenantsCompleteQueryType where
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

-- | Specifies the traffic density to use when calculating commute time.
data CommuteFilterRoadTraffic
    = RoadTrafficUnspecified
      -- ^ @ROAD_TRAFFIC_UNSPECIFIED@
      -- Road traffic situation isn\'t specified.
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

-- | The completion topic.
data CompletionResultType
    = CRTCompletionTypeUnspecified
      -- ^ @COMPLETION_TYPE_UNSPECIFIED@
      -- Default value.
    | CRTJobTitle
      -- ^ @JOB_TITLE@
      -- Suggest job titles for jobs autocomplete. For CompletionType.JOB_TITLE
      -- type, only open jobs with the same language_codes are returned.
    | CRTCompanyName
      -- ^ @COMPANY_NAME@
      -- Suggest company names for jobs autocomplete. For
      -- CompletionType.COMPANY_NAME type, only companies having open jobs with
      -- the same language_codes are returned.
    | CRTCombined
      -- ^ @COMBINED@
      -- Suggest both job titles and company names for jobs autocomplete. For
      -- CompletionType.COMBINED type, only open jobs with the same
      -- language_codes or companies having open jobs with the same
      -- language_codes are returned.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CompletionResultType

instance FromHttpApiData CompletionResultType where
    parseQueryParam = \case
        "COMPLETION_TYPE_UNSPECIFIED" -> Right CRTCompletionTypeUnspecified
        "JOB_TITLE" -> Right CRTJobTitle
        "COMPANY_NAME" -> Right CRTCompanyName
        "COMBINED" -> Right CRTCombined
        x -> Left ("Unable to parse CompletionResultType from: " <> x)

instance ToHttpApiData CompletionResultType where
    toQueryParam = \case
        CRTCompletionTypeUnspecified -> "COMPLETION_TYPE_UNSPECIFIED"
        CRTJobTitle -> "JOB_TITLE"
        CRTCompanyName -> "COMPANY_NAME"
        CRTCombined -> "COMBINED"

instance FromJSON CompletionResultType where
    parseJSON = parseJSONText "CompletionResultType"

instance ToJSON CompletionResultType where
    toJSON = toJSONText

-- | The scope of the completion. The defaults is CompletionScope.PUBLIC.
data ProjectsTenantsCompleteQueryScope
    = PTCQSCompletionScopeUnspecified
      -- ^ @COMPLETION_SCOPE_UNSPECIFIED@
      -- Default value.
    | PTCQSTenant
      -- ^ @TENANT@
      -- Suggestions are based only on the data provided by the client.
    | PTCQSPublic
      -- ^ @PUBLIC@
      -- Suggestions are based on all jobs data in the system that\'s visible to
      -- the client
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsTenantsCompleteQueryScope

instance FromHttpApiData ProjectsTenantsCompleteQueryScope where
    parseQueryParam = \case
        "COMPLETION_SCOPE_UNSPECIFIED" -> Right PTCQSCompletionScopeUnspecified
        "TENANT" -> Right PTCQSTenant
        "PUBLIC" -> Right PTCQSPublic
        x -> Left ("Unable to parse ProjectsTenantsCompleteQueryScope from: " <> x)

instance ToHttpApiData ProjectsTenantsCompleteQueryScope where
    toQueryParam = \case
        PTCQSCompletionScopeUnspecified -> "COMPLETION_SCOPE_UNSPECIFIED"
        PTCQSTenant -> "TENANT"
        PTCQSPublic -> "PUBLIC"

instance FromJSON ProjectsTenantsCompleteQueryScope where
    parseJSON = parseJSONText "ProjectsTenantsCompleteQueryScope"

instance ToJSON ProjectsTenantsCompleteQueryScope where
    toJSON = toJSONText

-- | The type of a location, which corresponds to the address lines field of
-- google.type.PostalAddress. For example, \"Downtown, Atlanta, GA, USA\"
-- has a type of LocationType.NEIGHBORHOOD, and \"Kansas City, KS, USA\"
-- has a type of LocationType.LOCALITY.
data LocationLocationType
    = LLTLocationTypeUnspecified
      -- ^ @LOCATION_TYPE_UNSPECIFIED@
      -- Default value if the type isn\'t specified.
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

instance FromJSON JobEventType where
    parseJSON = parseJSONText "JobEventType"

instance ToJSON JobEventType where
    toJSON = toJSONText

-- | The state of a long running operation.
data BatchOperationMetadataState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Default value.
    | Initializing
      -- ^ @INITIALIZING@
      -- The batch operation is being prepared for processing.
    | Processing
      -- ^ @PROCESSING@
      -- The batch operation is actively being processed.
    | Succeeded
      -- ^ @SUCCEEDED@
      -- The batch operation is processed, and at least one item has been
      -- successfully processed.
    | Failed
      -- ^ @FAILED@
      -- The batch operation is done and no item has been successfully processed.
    | Cancelling
      -- ^ @CANCELLING@
      -- The batch operation is in the process of cancelling after
      -- google.longrunning.Operations.CancelOperation is called.
    | Cancelled
      -- ^ @CANCELLED@
      -- The batch operation is done after
      -- google.longrunning.Operations.CancelOperation is called. Any items
      -- processed before cancelling are returned in the response.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BatchOperationMetadataState

instance FromHttpApiData BatchOperationMetadataState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "INITIALIZING" -> Right Initializing
        "PROCESSING" -> Right Processing
        "SUCCEEDED" -> Right Succeeded
        "FAILED" -> Right Failed
        "CANCELLING" -> Right Cancelling
        "CANCELLED" -> Right Cancelled
        x -> Left ("Unable to parse BatchOperationMetadataState from: " <> x)

instance ToHttpApiData BatchOperationMetadataState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Initializing -> "INITIALIZING"
        Processing -> "PROCESSING"
        Succeeded -> "SUCCEEDED"
        Failed -> "FAILED"
        Cancelling -> "CANCELLING"
        Cancelled -> "CANCELLED"

instance FromJSON BatchOperationMetadataState where
    parseJSON = parseJSONText "BatchOperationMetadataState"

instance ToJSON BatchOperationMetadataState where
    toJSON = toJSONText

-- | Mode of a search. Defaults to SearchMode.JOB_SEARCH.
data SearchJobsRequestSearchMode
    = SearchModeUnspecified
      -- ^ @SEARCH_MODE_UNSPECIFIED@
      -- The mode of the search method isn\'t specified. The default search
      -- behavior is identical to JOB_SEARCH search behavior.
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

-- | Allows the client to return jobs without a set location, specifically,
-- telecommuting jobs (telecommuting is considered by the service as a
-- special location. Job.posting_region indicates if a job permits
-- telecommuting. If this field is set to
-- TelecommutePreference.TELECOMMUTE_ALLOWED, telecommuting jobs are
-- searched, and address and lat_lng are ignored. If not set or set to
-- TelecommutePreference.TELECOMMUTE_EXCLUDED, telecommute job are not
-- searched. This filter can be used by itself to search exclusively for
-- telecommuting jobs, or it can be combined with another location filter
-- to search for a combination of job locations, such as \"Mountain View\"
-- or \"telecommuting\" jobs. However, when used in combination with other
-- location filters, telecommuting jobs can be treated as less relevant
-- than other jobs in the search response. This field is only used for job
-- search requests.
data LocationFilterTelecommutePreference
    = TelecommutePreferenceUnspecified
      -- ^ @TELECOMMUTE_PREFERENCE_UNSPECIFIED@
      -- Default value if the telecommute preference isn\'t specified.
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

-- | Option for job HTML content sanitization. Applied fields are: *
-- description * applicationInfo.instruction * incentives * qualifications
-- * responsibilities HTML tags in these fields may be stripped if
-- sanitiazation isn\'t disabled. Defaults to
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

data JobQueryJobCategoriesItem
    = JQJCIJobCategoryUnspecified
      -- ^ @JOB_CATEGORY_UNSPECIFIED@
      -- The default value if the category isn\'t specified.
    | JQJCIAccountingAndFinance
      -- ^ @ACCOUNTING_AND_FINANCE@
      -- An accounting and finance job, such as an Accountant.
    | JQJCIAdministrativeAndOffice
      -- ^ @ADMINISTRATIVE_AND_OFFICE@
      -- An administrative and office job, such as an Administrative Assistant.
    | JQJCIAdvertisingAndMarketing
      -- ^ @ADVERTISING_AND_MARKETING@
      -- An advertising and marketing job, such as Marketing Manager.
    | JQJCIAnimalCare
      -- ^ @ANIMAL_CARE@
      -- An animal care job, such as Veterinarian.
    | JQJCIArtFashionAndDesign
      -- ^ @ART_FASHION_AND_DESIGN@
      -- An art, fashion, or design job, such as Designer.
    | JQJCIBusinessOperations
      -- ^ @BUSINESS_OPERATIONS@
      -- A business operations job, such as Business Operations Manager.
    | JQJCICleaningAndFacilities
      -- ^ @CLEANING_AND_FACILITIES@
      -- A cleaning and facilities job, such as Custodial Staff.
    | JQJCIComputerAndIt
      -- ^ @COMPUTER_AND_IT@
      -- A computer and IT job, such as Systems Administrator.
    | JQJCIConstruction
      -- ^ @CONSTRUCTION@
      -- A construction job, such as General Laborer.
    | JQJCICustomerService
      -- ^ @CUSTOMER_SERVICE@
      -- A customer service job, such s Cashier.
    | JQJCIEducation
      -- ^ @EDUCATION@
      -- An education job, such as School Teacher.
    | JQJCIEntertainmentAndTravel
      -- ^ @ENTERTAINMENT_AND_TRAVEL@
      -- An entertainment and travel job, such as Flight Attendant.
    | JQJCIFarmingAndOutdoors
      -- ^ @FARMING_AND_OUTDOORS@
      -- A farming or outdoor job, such as Park Ranger.
    | JQJCIHealthcare
      -- ^ @HEALTHCARE@
      -- A healthcare job, such as Registered Nurse.
    | JQJCIHumanResources
      -- ^ @HUMAN_RESOURCES@
      -- A human resources job, such as Human Resources Director.
    | JQJCIInstallationMaintenanceAndRepair
      -- ^ @INSTALLATION_MAINTENANCE_AND_REPAIR@
      -- An installation, maintenance, or repair job, such as Electrician.
    | JQJCILegal
      -- ^ @LEGAL@
      -- A legal job, such as Law Clerk.
    | JQJCIManagement
      -- ^ @MANAGEMENT@
      -- A management job, often used in conjunction with another category, such
      -- as Store Manager.
    | JQJCIManufacturingAndWarehouse
      -- ^ @MANUFACTURING_AND_WAREHOUSE@
      -- A manufacturing or warehouse job, such as Assembly Technician.
    | JQJCIMediaCommunicationsAndWriting
      -- ^ @MEDIA_COMMUNICATIONS_AND_WRITING@
      -- A media, communications, or writing job, such as Media Relations.
    | JQJCIOilGasAndMining
      -- ^ @OIL_GAS_AND_MINING@
      -- An oil, gas or mining job, such as Offshore Driller.
    | JQJCIPersonalCareAndServices
      -- ^ @PERSONAL_CARE_AND_SERVICES@
      -- A personal care and services job, such as Hair Stylist.
    | JQJCIProtectiveServices
      -- ^ @PROTECTIVE_SERVICES@
      -- A protective services job, such as Security Guard.
    | JQJCIRealEState
      -- ^ @REAL_ESTATE@
      -- A real estate job, such as Buyer\'s Agent.
    | JQJCIRestaurantAndHospitality
      -- ^ @RESTAURANT_AND_HOSPITALITY@
      -- A restaurant and hospitality job, such as Restaurant Server.
    | JQJCISalesAndRetail
      -- ^ @SALES_AND_RETAIL@
      -- A sales and\/or retail job, such Sales Associate.
    | JQJCIScienceAndEngineering
      -- ^ @SCIENCE_AND_ENGINEERING@
      -- A science and engineering job, such as Lab Technician.
    | JQJCISocialServicesAndNonProfit
      -- ^ @SOCIAL_SERVICES_AND_NON_PROFIT@
      -- A social services or non-profit job, such as Case Worker.
    | JQJCISportsFitnessAndRecreation
      -- ^ @SPORTS_FITNESS_AND_RECREATION@
      -- A sports, fitness, or recreation job, such as Personal Trainer.
    | JQJCITransportationAndLogistics
      -- ^ @TRANSPORTATION_AND_LOGISTICS@
      -- A transportation or logistics job, such as Truck Driver.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable JobQueryJobCategoriesItem

instance FromHttpApiData JobQueryJobCategoriesItem where
    parseQueryParam = \case
        "JOB_CATEGORY_UNSPECIFIED" -> Right JQJCIJobCategoryUnspecified
        "ACCOUNTING_AND_FINANCE" -> Right JQJCIAccountingAndFinance
        "ADMINISTRATIVE_AND_OFFICE" -> Right JQJCIAdministrativeAndOffice
        "ADVERTISING_AND_MARKETING" -> Right JQJCIAdvertisingAndMarketing
        "ANIMAL_CARE" -> Right JQJCIAnimalCare
        "ART_FASHION_AND_DESIGN" -> Right JQJCIArtFashionAndDesign
        "BUSINESS_OPERATIONS" -> Right JQJCIBusinessOperations
        "CLEANING_AND_FACILITIES" -> Right JQJCICleaningAndFacilities
        "COMPUTER_AND_IT" -> Right JQJCIComputerAndIt
        "CONSTRUCTION" -> Right JQJCIConstruction
        "CUSTOMER_SERVICE" -> Right JQJCICustomerService
        "EDUCATION" -> Right JQJCIEducation
        "ENTERTAINMENT_AND_TRAVEL" -> Right JQJCIEntertainmentAndTravel
        "FARMING_AND_OUTDOORS" -> Right JQJCIFarmingAndOutdoors
        "HEALTHCARE" -> Right JQJCIHealthcare
        "HUMAN_RESOURCES" -> Right JQJCIHumanResources
        "INSTALLATION_MAINTENANCE_AND_REPAIR" -> Right JQJCIInstallationMaintenanceAndRepair
        "LEGAL" -> Right JQJCILegal
        "MANAGEMENT" -> Right JQJCIManagement
        "MANUFACTURING_AND_WAREHOUSE" -> Right JQJCIManufacturingAndWarehouse
        "MEDIA_COMMUNICATIONS_AND_WRITING" -> Right JQJCIMediaCommunicationsAndWriting
        "OIL_GAS_AND_MINING" -> Right JQJCIOilGasAndMining
        "PERSONAL_CARE_AND_SERVICES" -> Right JQJCIPersonalCareAndServices
        "PROTECTIVE_SERVICES" -> Right JQJCIProtectiveServices
        "REAL_ESTATE" -> Right JQJCIRealEState
        "RESTAURANT_AND_HOSPITALITY" -> Right JQJCIRestaurantAndHospitality
        "SALES_AND_RETAIL" -> Right JQJCISalesAndRetail
        "SCIENCE_AND_ENGINEERING" -> Right JQJCIScienceAndEngineering
        "SOCIAL_SERVICES_AND_NON_PROFIT" -> Right JQJCISocialServicesAndNonProfit
        "SPORTS_FITNESS_AND_RECREATION" -> Right JQJCISportsFitnessAndRecreation
        "TRANSPORTATION_AND_LOGISTICS" -> Right JQJCITransportationAndLogistics
        x -> Left ("Unable to parse JobQueryJobCategoriesItem from: " <> x)

instance ToHttpApiData JobQueryJobCategoriesItem where
    toQueryParam = \case
        JQJCIJobCategoryUnspecified -> "JOB_CATEGORY_UNSPECIFIED"
        JQJCIAccountingAndFinance -> "ACCOUNTING_AND_FINANCE"
        JQJCIAdministrativeAndOffice -> "ADMINISTRATIVE_AND_OFFICE"
        JQJCIAdvertisingAndMarketing -> "ADVERTISING_AND_MARKETING"
        JQJCIAnimalCare -> "ANIMAL_CARE"
        JQJCIArtFashionAndDesign -> "ART_FASHION_AND_DESIGN"
        JQJCIBusinessOperations -> "BUSINESS_OPERATIONS"
        JQJCICleaningAndFacilities -> "CLEANING_AND_FACILITIES"
        JQJCIComputerAndIt -> "COMPUTER_AND_IT"
        JQJCIConstruction -> "CONSTRUCTION"
        JQJCICustomerService -> "CUSTOMER_SERVICE"
        JQJCIEducation -> "EDUCATION"
        JQJCIEntertainmentAndTravel -> "ENTERTAINMENT_AND_TRAVEL"
        JQJCIFarmingAndOutdoors -> "FARMING_AND_OUTDOORS"
        JQJCIHealthcare -> "HEALTHCARE"
        JQJCIHumanResources -> "HUMAN_RESOURCES"
        JQJCIInstallationMaintenanceAndRepair -> "INSTALLATION_MAINTENANCE_AND_REPAIR"
        JQJCILegal -> "LEGAL"
        JQJCIManagement -> "MANAGEMENT"
        JQJCIManufacturingAndWarehouse -> "MANUFACTURING_AND_WAREHOUSE"
        JQJCIMediaCommunicationsAndWriting -> "MEDIA_COMMUNICATIONS_AND_WRITING"
        JQJCIOilGasAndMining -> "OIL_GAS_AND_MINING"
        JQJCIPersonalCareAndServices -> "PERSONAL_CARE_AND_SERVICES"
        JQJCIProtectiveServices -> "PROTECTIVE_SERVICES"
        JQJCIRealEState -> "REAL_ESTATE"
        JQJCIRestaurantAndHospitality -> "RESTAURANT_AND_HOSPITALITY"
        JQJCISalesAndRetail -> "SALES_AND_RETAIL"
        JQJCIScienceAndEngineering -> "SCIENCE_AND_ENGINEERING"
        JQJCISocialServicesAndNonProfit -> "SOCIAL_SERVICES_AND_NON_PROFIT"
        JQJCISportsFitnessAndRecreation -> "SPORTS_FITNESS_AND_RECREATION"
        JQJCITransportationAndLogistics -> "TRANSPORTATION_AND_LOGISTICS"

instance FromJSON JobQueryJobCategoriesItem where
    parseJSON = parseJSONText "JobQueryJobCategoriesItem"

instance ToJSON JobQueryJobCategoriesItem where
    toJSON = toJSONText

data JobJobBenefitsItem
    = JobBenefitUnspecified
      -- ^ @JOB_BENEFIT_UNSPECIFIED@
      -- Default value if the type isn\'t specified.
    | ChildCare
      -- ^ @CHILD_CARE@
      -- The job includes access to programs that support child care, such as
      -- daycare.
    | Dental
      -- ^ @DENTAL@
      -- The job includes dental services covered by a dental insurance plan.
    | DomesticPartner
      -- ^ @DOMESTIC_PARTNER@
      -- The job offers specific benefits to domestic partners.
    | FlexibleHours
      -- ^ @FLEXIBLE_HOURS@
      -- The job allows for a flexible work schedule.
    | Medical
      -- ^ @MEDICAL@
      -- The job includes health services covered by a medical insurance plan.
    | LifeInsurance
      -- ^ @LIFE_INSURANCE@
      -- The job includes a life insurance plan provided by the employer or
      -- available for purchase by the employee.
    | ParentalLeave
      -- ^ @PARENTAL_LEAVE@
      -- The job allows for a leave of absence to a parent to care for a newborn
      -- child.
    | RetirementPlan
      -- ^ @RETIREMENT_PLAN@
      -- The job includes a workplace retirement plan provided by the employer or
      -- available for purchase by the employee.
    | SickDays
      -- ^ @SICK_DAYS@
      -- The job allows for paid time off due to illness.
    | Vacation
      -- ^ @VACATION@
      -- The job includes paid time off for vacation.
    | Vision
      -- ^ @VISION@
      -- The job includes vision services covered by a vision insurance plan.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable JobJobBenefitsItem

instance FromHttpApiData JobJobBenefitsItem where
    parseQueryParam = \case
        "JOB_BENEFIT_UNSPECIFIED" -> Right JobBenefitUnspecified
        "CHILD_CARE" -> Right ChildCare
        "DENTAL" -> Right Dental
        "DOMESTIC_PARTNER" -> Right DomesticPartner
        "FLEXIBLE_HOURS" -> Right FlexibleHours
        "MEDICAL" -> Right Medical
        "LIFE_INSURANCE" -> Right LifeInsurance
        "PARENTAL_LEAVE" -> Right ParentalLeave
        "RETIREMENT_PLAN" -> Right RetirementPlan
        "SICK_DAYS" -> Right SickDays
        "VACATION" -> Right Vacation
        "VISION" -> Right Vision
        x -> Left ("Unable to parse JobJobBenefitsItem from: " <> x)

instance ToHttpApiData JobJobBenefitsItem where
    toQueryParam = \case
        JobBenefitUnspecified -> "JOB_BENEFIT_UNSPECIFIED"
        ChildCare -> "CHILD_CARE"
        Dental -> "DENTAL"
        DomesticPartner -> "DOMESTIC_PARTNER"
        FlexibleHours -> "FLEXIBLE_HOURS"
        Medical -> "MEDICAL"
        LifeInsurance -> "LIFE_INSURANCE"
        ParentalLeave -> "PARENTAL_LEAVE"
        RetirementPlan -> "RETIREMENT_PLAN"
        SickDays -> "SICK_DAYS"
        Vacation -> "VACATION"
        Vision -> "VISION"

instance FromJSON JobJobBenefitsItem where
    parseJSON = parseJSONText "JobJobBenefitsItem"

instance ToJSON JobJobBenefitsItem where
    toJSON = toJSONText

-- | The desired job attributes returned for jobs in the search response.
-- Defaults to JobView.JOB_VIEW_SMALL if no value is specified.
data SearchJobsRequestJobView
    = SJRJVJobViewUnspecified
      -- ^ @JOB_VIEW_UNSPECIFIED@
      -- Default value.
    | SJRJVJobViewIdOnly
      -- ^ @JOB_VIEW_ID_ONLY@
      -- A ID only view of job, with following attributes: Job.name,
      -- Job.requisition_id, Job.language_code.
    | SJRJVJobViewMinimal
      -- ^ @JOB_VIEW_MINIMAL@
      -- A minimal view of the job, with the following attributes: Job.name,
      -- Job.requisition_id, Job.title, Job.company, Job.DerivedInfo.locations,
      -- Job.language_code.
    | SJRJVJobViewSmall
      -- ^ @JOB_VIEW_SMALL@
      -- A small view of the job, with the following attributes in the search
      -- results: Job.name, Job.requisition_id, Job.title, Job.company,
      -- Job.DerivedInfo.locations, Job.visibility, Job.language_code,
      -- Job.description.
    | SJRJVJobViewFull
      -- ^ @JOB_VIEW_FULL@
      -- All available attributes are included in the search results.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SearchJobsRequestJobView

instance FromHttpApiData SearchJobsRequestJobView where
    parseQueryParam = \case
        "JOB_VIEW_UNSPECIFIED" -> Right SJRJVJobViewUnspecified
        "JOB_VIEW_ID_ONLY" -> Right SJRJVJobViewIdOnly
        "JOB_VIEW_MINIMAL" -> Right SJRJVJobViewMinimal
        "JOB_VIEW_SMALL" -> Right SJRJVJobViewSmall
        "JOB_VIEW_FULL" -> Right SJRJVJobViewFull
        x -> Left ("Unable to parse SearchJobsRequestJobView from: " <> x)

instance ToHttpApiData SearchJobsRequestJobView where
    toQueryParam = \case
        SJRJVJobViewUnspecified -> "JOB_VIEW_UNSPECIFIED"
        SJRJVJobViewIdOnly -> "JOB_VIEW_ID_ONLY"
        SJRJVJobViewMinimal -> "JOB_VIEW_MINIMAL"
        SJRJVJobViewSmall -> "JOB_VIEW_SMALL"
        SJRJVJobViewFull -> "JOB_VIEW_FULL"

instance FromJSON SearchJobsRequestJobView where
    parseJSON = parseJSONText "SearchJobsRequestJobView"

instance ToJSON SearchJobsRequestJobView where
    toJSON = toJSONText
