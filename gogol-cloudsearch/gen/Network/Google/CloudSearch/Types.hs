{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudSearch.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudSearch.Types
    (
    -- * Service Configuration
      cloudSearchService

    -- * OAuth Scopes
    , cloudSearchSettingsQueryScope
    , cloudSearchStatsIndexingScope
    , cloudSearchIndexingScope
    , cloudSearchScope
    , cloudSearchSettingsIndexingScope
    , cloudSearchQueryScope
    , cloudSearchDebugScope
    , cloudSearchStatsScope
    , cloudSearchSettingsScope

    -- * QueryInterpretationReason
    , QueryInterpretationReason (..)

    -- * DriveMimeTypeRestrictType
    , DriveMimeTypeRestrictType (..)

    -- * DriveFollowUpRestrictType
    , DriveFollowUpRestrictType (..)

    -- * ItemContent
    , ItemContent
    , itemContent
    , icHash
    , icContentFormat
    , icContentDataRef
    , icInlineContent

    -- * CustomerUserStats
    , CustomerUserStats
    , customerUserStats
    , cusThirtyDaysActiveUsersCount
    , cusDate
    , cusOneDayActiveUsersCount
    , cusSevenDaysActiveUsersCount

    -- * Photo
    , Photo
    , photo
    , pURL

    -- * SearchItemsByViewURLRequest
    , SearchItemsByViewURLRequest
    , searchItemsByViewURLRequest
    , sibvurDebugOptions
    , sibvurPageToken
    , sibvurViewURL

    -- * SearchApplication
    , SearchApplication
    , searchApplication
    , saDataSourceRestrictions
    , saOperationIds
    , saDefaultFacetOptions
    , saScoringConfig
    , saName
    , saSourceConfig
    , saQueryInterpretationConfig
    , saDisplayName
    , saEnableAuditLog
    , saDefaultSortOptions

    -- * BooleanOperatorOptions
    , BooleanOperatorOptions
    , booleanOperatorOptions
    , booOperatorName

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * EnumPropertyOptions
    , EnumPropertyOptions
    , enumPropertyOptions
    , epoPossibleValues
    , epoOrderedRanking
    , epoOperatorOptions

    -- * ItemStatusCode
    , ItemStatusCode (..)

    -- * UnreserveItemsRequest
    , UnreserveItemsRequest
    , unreserveItemsRequest
    , uirQueue
    , uirDebugOptions
    , uirConnectorName

    -- * DateOperatorOptions
    , DateOperatorOptions
    , dateOperatorOptions
    , dooOperatorName
    , dooLessThanOperatorName
    , dooGreaterThanOperatorName

    -- * GetDataSourceIndexStatsResponse
    , GetDataSourceIndexStatsResponse
    , getDataSourceIndexStatsResponse
    , gdsisrStats

    -- * ObjectDisplayOptions
    , ObjectDisplayOptions
    , objectDisplayOptions
    , odoMetalines
    , odoObjectDisplayLabel

    -- * QueryItem
    , QueryItem
    , queryItem
    , qiIsSynthetic

    -- * CustomerQueryStats
    , CustomerQueryStats
    , customerQueryStats
    , cqsQueryCountByStatus
    , cqsDate

    -- * ListUnmAppedIdentitiesResponse
    , ListUnmAppedIdentitiesResponse
    , listUnmAppedIdentitiesResponse
    , luairNextPageToken
    , luairUnmAppedIdentities

    -- * DeleteQueueItemsRequest
    , DeleteQueueItemsRequest
    , deleteQueueItemsRequest
    , dqirQueue
    , dqirDebugOptions
    , dqirConnectorName

    -- * SearchResult
    , SearchResult
    , searchResult
    , srDebugInfo
    , srSnippet
    , srURL
    , srClusteredResults
    , srMetadata
    , srTitle

    -- * SpellResult
    , SpellResult
    , spellResult
    , srSuggestedQuery

    -- * PeopleSuggestion
    , PeopleSuggestion
    , peopleSuggestion
    , psPerson

    -- * QuerySource
    , QuerySource
    , querySource
    , qsShortName
    , qsDisplayName
    , qsSource
    , qsOperators

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * SuggestResponse
    , SuggestResponse
    , suggestResponse
    , srSuggestResults

    -- * GetSearchApplicationQueryStatsResponse
    , GetSearchApplicationQueryStatsResponse
    , getSearchApplicationQueryStatsResponse
    , gsaqsrStats

    -- * RepositoryError
    , RepositoryError
    , repositoryError
    , reHTTPStatusCode
    , reType
    , reErrorMessage

    -- * QueryInterpretationInterpretationType
    , QueryInterpretationInterpretationType (..)

    -- * HTMLPropertyOptions
    , HTMLPropertyOptions
    , htmlPropertyOptions
    , hpoRetrievalImportance
    , hpoOperatorOptions

    -- * PropertyDefinition
    , PropertyDefinition
    , propertyDefinition
    , pdIsSuggestable
    , pdEnumPropertyOptions
    , pdHTMLPropertyOptions
    , pdObjectPropertyOptions
    , pdIsReturnable
    , pdTimestampPropertyOptions
    , pdIntegerPropertyOptions
    , pdIsWildcardSearchable
    , pdName
    , pdIsRepeatable
    , pdDoublePropertyOptions
    , pdDisplayOptions
    , pdTextPropertyOptions
    , pdIsSortable
    , pdIsFacetable
    , pdBooleanPropertyOptions
    , pdDatePropertyOptions

    -- * SortOptions
    , SortOptions
    , sortOptions
    , soSortOrder
    , soOperatorName

    -- * ObjectPropertyOptions
    , ObjectPropertyOptions
    , objectPropertyOptions
    , opoSubobjectProperties

    -- * InteractionType
    , InteractionType (..)

    -- * QueryOperatorType
    , QueryOperatorType (..)

    -- * SearchResponse
    , SearchResponse
    , searchResponse
    , sSpellResults
    , sFacetResults
    , sDebugInfo
    , sResults
    , sHasMoreResults
    , sResultCounts
    , sResultCountExact
    , sResultCountEstimate
    , sQueryInterpretation
    , sStructuredResults
    , sErrorInfo

    -- * SuggestResult
    , SuggestResult
    , suggestResult
    , sPeopleSuggestion
    , sQuerySuggestion
    , sSuggestedQuery
    , sSource

    -- * TextValues
    , TextValues
    , textValues
    , tvValues

    -- * DriveLocationRestrict
    , DriveLocationRestrict
    , driveLocationRestrict
    , dlrType

    -- * ListQuerySourcesResponse
    , ListQuerySourcesResponse
    , listQuerySourcesResponse
    , lqsrNextPageToken
    , lqsrSources

    -- * DoubleOperatorOptions
    , DoubleOperatorOptions
    , doubleOperatorOptions
    , dOperatorName

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * Person
    , Person
    , person
    , pEmailAddresses
    , pPersonNames
    , pPhotos
    , pName
    , pObfuscatedId

    -- * CompositeFilter
    , CompositeFilter
    , compositeFilter
    , cfSubFilters
    , cfLogicOperator

    -- * ResultDisplayLine
    , ResultDisplayLine
    , resultDisplayLine
    , rdlFields

    -- * DoubleValues
    , DoubleValues
    , doubleValues
    , dvValues

    -- * Snippet
    , Snippet
    , snippet
    , sMatchRanges
    , sSnippet

    -- * TextOperatorOptions
    , TextOperatorOptions
    , textOperatorOptions
    , tooOperatorName
    , tooExactMatchWithOperator

    -- * EnumPropertyOptionsOrderedRanking
    , EnumPropertyOptionsOrderedRanking (..)

    -- * QueryInterpretationOptions
    , QueryInterpretationOptions
    , queryInterpretationOptions
    , qioDisableNlInterpretation
    , qioEnableVerbatimMode
    , qioDisableSupplementalResults

    -- * ResetSearchApplicationRequest
    , ResetSearchApplicationRequest
    , resetSearchApplicationRequest
    , rsarDebugOptions

    -- * IntegerPropertyOptionsOrderedRanking
    , IntegerPropertyOptionsOrderedRanking (..)

    -- * ItemMetadata
    , ItemMetadata
    , itemMetadata
    , imSourceRepositoryURL
    , imHash
    , imObjectType
    , imContainerName
    , imInteractions
    , imMimeType
    , imUpdateTime
    , imKeywords
    , imContextAttributes
    , imTitle
    , imContentLanguage
    , imSearchQualityMetadata
    , imCreateTime

    -- * FilterOptions
    , FilterOptions
    , filterOptions
    , foObjectType
    , foFilter

    -- * StructuredResult
    , StructuredResult
    , structuredResult
    , srPerson

    -- * ProcessingError
    , ProcessingError
    , processingError
    , peFieldViolations
    , peCode
    , peErrorMessage

    -- * PushItemType
    , PushItemType (..)

    -- * ListItemNamesForUnmAppedIdentityResponse
    , ListItemNamesForUnmAppedIdentityResponse
    , listItemNamesForUnmAppedIdentityResponse
    , linfuairNextPageToken
    , linfuairItemNames

    -- * CompositeFilterLogicOperator
    , CompositeFilterLogicOperator (..)

    -- * ItemACL
    , ItemACL
    , itemACL
    , iaOwners
    , iaReaders
    , iaACLInheritanceType
    , iaInheritACLFrom
    , iaDeniedReaders

    -- * Value
    , Value
    , value
    , vIntegerValue
    , vTimestampValue
    , vDoubleValue
    , vStringValue
    , vDateValue
    , vBooleanValue

    -- * FieldViolation
    , FieldViolation
    , fieldViolation
    , fvField
    , fvDescription

    -- * SourceScoringConfigSourceImportance
    , SourceScoringConfigSourceImportance (..)

    -- * Metaline
    , Metaline
    , metaline
    , mProperties

    -- * SearchApplicationSessionStats
    , SearchApplicationSessionStats
    , searchApplicationSessionStats
    , sassSearchSessionsCount
    , sassDate

    -- * FacetBucket
    , FacetBucket
    , facetBucket
    , fbValue
    , fbCount
    , fbPercentage

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * AuditLoggingSettings
    , AuditLoggingSettings
    , auditLoggingSettings
    , alsProject
    , alsLogDataReadActions
    , alsLogDataWriteActions
    , alsLogAdminReadActions

    -- * RetrievalImportanceImportance
    , RetrievalImportanceImportance (..)

    -- * TimestampOperatorOptions
    , TimestampOperatorOptions
    , timestampOperatorOptions
    , tOperatorName
    , tLessThanOperatorName
    , tGreaterThanOperatorName

    -- * ProcessingErrorCode
    , ProcessingErrorCode (..)

    -- * GetSearchApplicationSessionStatsResponse
    , GetSearchApplicationSessionStatsResponse
    , getSearchApplicationSessionStatsResponse
    , gsassrStats

    -- * IntegerOperatorOptions
    , IntegerOperatorOptions
    , integerOperatorOptions
    , iooOperatorName
    , iooLessThanOperatorName
    , iooGreaterThanOperatorName

    -- * SortOptionsSortOrder
    , SortOptionsSortOrder (..)

    -- * QuerySuggestion
    , QuerySuggestion
    , querySuggestion

    -- * ListSearchApplicationsResponse
    , ListSearchApplicationsResponse
    , listSearchApplicationsResponse
    , lsarNextPageToken
    , lsarSearchApplications

    -- * ResultDebugInfo
    , ResultDebugInfo
    , resultDebugInfo
    , rdiFormattedDebugInfo

    -- * QueryCountByStatus
    , QueryCountByStatus
    , queryCountByStatus
    , qcbsCount
    , qcbsStatusCode

    -- * ItemCountByStatus
    , ItemCountByStatus
    , itemCountByStatus
    , icbsCount
    , icbsStatusCode

    -- * TimestampPropertyOptions
    , TimestampPropertyOptions
    , timestampPropertyOptions
    , tpoOperatorOptions

    -- * ResultCounts
    , ResultCounts
    , resultCounts
    , rcSourceResultCounts

    -- * FreshnessOptions
    , FreshnessOptions
    , freshnessOptions
    , foFreshnessDuration
    , foFreshnessProperty

    -- * DebugOptions
    , DebugOptions
    , debugOptions
    , doEnableDebugging

    -- * IntegerPropertyOptions
    , IntegerPropertyOptions
    , integerPropertyOptions
    , ipoMaximumValue
    , ipoOrderedRanking
    , ipoMinimumValue
    , ipoOperatorOptions

    -- * DataSourceRestriction
    , DataSourceRestriction
    , dataSourceRestriction
    , dsrFilterOptions
    , dsrSource

    -- * Schema
    , Schema
    , schema
    , sObjectDefinitions
    , sOperationIds

    -- * GetSearchApplicationUserStatsResponse
    , GetSearchApplicationUserStatsResponse
    , getSearchApplicationUserStatsResponse
    , gsausrStats

    -- * DriveTimeSpanRestrict
    , DriveTimeSpanRestrict
    , driveTimeSpanRestrict
    , dtsrType

    -- * ResultDisplayField
    , ResultDisplayField
    , resultDisplayField
    , rdfProperty
    , rdfOperatorName
    , rdfLabel

    -- * UpdateSchemaRequest
    , UpdateSchemaRequest
    , updateSchemaRequest
    , usrValidateOnly
    , usrSchema
    , usrDebugOptions

    -- * Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- * IndexingDatasourcesItemsDeleteMode
    , IndexingDatasourcesItemsDeleteMode (..)

    -- * DisplayedProperty
    , DisplayedProperty
    , displayedProperty
    , dpPropertyName

    -- * FacetResult
    , FacetResult
    , facetResult
    , frSourceName
    , frBuckets
    , frObjectType
    , frOperatorName

    -- * DriveMimeTypeRestrict
    , DriveMimeTypeRestrict
    , driveMimeTypeRestrict
    , dmtrType

    -- * StructuredDataObject
    , StructuredDataObject
    , structuredDataObject
    , sdoProperties

    -- * Media
    , Media
    , media
    , mResourceName

    -- * ItemStructuredData
    , ItemStructuredData
    , itemStructuredData
    , isdHash
    , isdObject

    -- * DriveFollowUpRestrict
    , DriveFollowUpRestrict
    , driveFollowUpRestrict
    , dfurType

    -- * DateValues
    , DateValues
    , dateValues
    , dValues

    -- * SearchApplicationUserStats
    , SearchApplicationUserStats
    , searchApplicationUserStats
    , sausThirtyDaysActiveUsersCount
    , sausDate
    , sausOneDayActiveUsersCount
    , sausSevenDaysActiveUsersCount

    -- * NamedProperty
    , NamedProperty
    , namedProperty
    , npDoubleValues
    , npTextValues
    , npDateValues
    , npName
    , npBooleanValue
    , npObjectValues
    , npHTMLValues
    , npEnumValues
    , npTimestampValues
    , npIntegerValues

    -- * DebugIdentitysourcesUnmAppedidsListResolutionStatusCode
    , DebugIdentitysourcesUnmAppedidsListResolutionStatusCode (..)

    -- * MatchRange
    , MatchRange
    , matchRange
    , mrStart
    , mrEnd

    -- * ResponseDebugInfo
    , ResponseDebugInfo
    , responseDebugInfo
    , rFormattedDebugInfo

    -- * ListDataSourceResponse
    , ListDataSourceResponse
    , listDataSourceResponse
    , ldsrNextPageToken
    , ldsrSources

    -- * SearchRequest
    , SearchRequest
    , searchRequest
    , srSortOptions
    , srDataSourceRestrictions
    , srQueryInterpretationOptions
    , srStart
    , srQuery
    , srFacetOptions
    , srContextAttributes
    , srPageSize
    , srRequestOptions

    -- * Name
    , Name
    , name
    , nDisplayName

    -- * SourceResultCount
    , SourceResultCount
    , sourceResultCount
    , srcHasMoreResults
    , srcResultCountExact
    , srcResultCountEstimate
    , srcSource

    -- * PollItemsRequestStatusCodesItem
    , PollItemsRequestStatusCodesItem (..)

    -- * SearchApplicationQueryStats
    , SearchApplicationQueryStats
    , searchApplicationQueryStats
    , saqsQueryCountByStatus
    , saqsDate

    -- * SourceConfig
    , SourceConfig
    , sourceConfig
    , scCrowdingConfig
    , scScoringConfig
    , scSource

    -- * UnmAppedIdentityResolutionStatusCode
    , UnmAppedIdentityResolutionStatusCode (..)

    -- * ListItemsResponse
    , ListItemsResponse
    , listItemsResponse
    , lirNextPageToken
    , lirItems

    -- * ScoringConfig
    , ScoringConfig
    , scoringConfig
    , scDisablePersonalization
    , scDisableFreshness

    -- * StartUploadItemRequest
    , StartUploadItemRequest
    , startUploadItemRequest
    , suirDebugOptions
    , suirConnectorName

    -- * UploadItemRef
    , UploadItemRef
    , uploadItemRef
    , uirName

    -- * PushItemRequest
    , PushItemRequest
    , pushItemRequest
    , pirDebugOptions
    , pirConnectorName
    , pirItem

    -- * GetCustomerQueryStatsResponse
    , GetCustomerQueryStatsResponse
    , getCustomerQueryStatsResponse
    , gcqsrStats

    -- * DoublePropertyOptions
    , DoublePropertyOptions
    , doublePropertyOptions
    , dpoOperatorOptions

    -- * QueryOperator
    , QueryOperator
    , queryOperator
    , qoIsSuggestable
    , qoIsReturnable
    , qoObjectType
    , qoIsRepeatable
    , qoOperatorName
    , qoIsSortable
    , qoIsFacetable
    , qoDisplayName
    , qoLessThanOperatorName
    , qoType
    , qoEnumValues
    , qoGreaterThanOperatorName

    -- * Xgafv
    , Xgafv (..)

    -- * PollItemsResponse
    , PollItemsResponse
    , pollItemsResponse
    , pirItems

    -- * SourceScoringConfig
    , SourceScoringConfig
    , sourceScoringConfig
    , sscSourceImportance

    -- * EmailAddress
    , EmailAddress
    , emailAddress
    , eaEmailAddress

    -- * RetrievalImportance
    , RetrievalImportance
    , retrievalImportance
    , riImportance

    -- * DataSourceIndexStats
    , DataSourceIndexStats
    , dataSourceIndexStats
    , dsisItemCountByStatus
    , dsisDate

    -- * SourceCrowdingConfig
    , SourceCrowdingConfig
    , sourceCrowdingConfig
    , sccNumSuggestions
    , sccNumResults

    -- * QueryInterpretationConfig
    , QueryInterpretationConfig
    , queryInterpretationConfig
    , qicForceDisableSupplementalResults
    , qicForceVerbatimMode

    -- * Interaction
    , Interaction
    , interaction
    , iInteractionTime
    , iPrincipal
    , iType

    -- * Principal
    , Principal
    , principal
    , pUserResourceName
    , pGroupResourceName
    , pGsuitePrincipal

    -- * IndexItemRequest
    , IndexItemRequest
    , indexItemRequest
    , iirMode
    , iirDebugOptions
    , iirConnectorName
    , iirItem
    , iirIndexItemOptions

    -- * RepositoryErrorType
    , RepositoryErrorType (..)

    -- * TextPropertyOptions
    , TextPropertyOptions
    , textPropertyOptions
    , tRetrievalImportance
    , tOperatorOptions

    -- * EnumValuePair
    , EnumValuePair
    , enumValuePair
    , evpIntegerValue
    , evpStringValue

    -- * DriveLocationRestrictType
    , DriveLocationRestrictType (..)

    -- * Metadata
    , Metadata
    , metadata
    , mObjectType
    , mOwner
    , mMimeType
    , mUpdateTime
    , mDisplayOptions
    , mSource
    , mCreateTime
    , mFields

    -- * UpdateDataSourceRequest
    , UpdateDataSourceRequest
    , updateDataSourceRequest
    , udsrDebugOptions
    , udsrSource

    -- * DataSource
    , DataSource
    , dataSource
    , dsShortName
    , dsItemsVisibility
    , dsOperationIds
    , dsDisableServing
    , dsIndexingServiceAccounts
    , dsDisableModifications
    , dsName
    , dsDisplayName

    -- * HTMLValues
    , HTMLValues
    , htmlValues
    , hvValues

    -- * HTMLOperatorOptions
    , HTMLOperatorOptions
    , htmlOperatorOptions
    , hooOperatorName

    -- * Item
    , Item
    , item
    , iStatus
    , iItemType
    , iPayload
    , iStructuredData
    , iQueue
    , iContent
    , iName
    , iVersion
    , iMetadata
    , iACL

    -- * Source
    , Source
    , source
    , sName
    , sPredefinedSource

    -- * PropertyDisplayOptions
    , PropertyDisplayOptions
    , propertyDisplayOptions
    , pdoDisplayLabel

    -- * ObjectValues
    , ObjectValues
    , objectValues
    , ovValues

    -- * ObjectOptions
    , ObjectOptions
    , objectOptions
    , ooFreshnessOptions
    , ooDisplayOptions

    -- * FacetOptions
    , FacetOptions
    , facetOptions
    , fSourceName
    , fObjectType
    , fNumFacetBuckets
    , fOperatorName

    -- * SuggestRequest
    , SuggestRequest
    , suggestRequest
    , sDataSourceRestrictions
    , sQuery
    , sRequestOptions

    -- * Filter
    , Filter
    , filter'
    , fCompositeFilter
    , fValueFilter

    -- * ObjectDefinition
    , ObjectDefinition
    , objectDefinition
    , odName
    , odOptions
    , odPropertyDefinitions

    -- * ItemItemType
    , ItemItemType (..)

    -- * ItemCountByStatusStatusCode
    , ItemCountByStatusStatusCode (..)

    -- * VPCSettings
    , VPCSettings
    , vpcSettings
    , vsProject

    -- * PollItemsRequest
    , PollItemsRequest
    , pollItemsRequest
    , pQueue
    , pDebugOptions
    , pConnectorName
    , pStatusCodes
    , pLimit

    -- * QueryInterpretation
    , QueryInterpretation
    , queryInterpretation
    , qiInterpretedQuery
    , qiReason
    , qiInterpretationType

    -- * UnmAppedIdentity
    , UnmAppedIdentity
    , unmAppedIdentity
    , uaiResolutionStatusCode
    , uaiExternalIdentity

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * CustomerIndexStats
    , CustomerIndexStats
    , customerIndexStats
    , cisItemCountByStatus
    , cisDate

    -- * PushItem
    , PushItem
    , pushItem
    , piRepositoryError
    , piContentHash
    , piStructuredDataHash
    , piPayload
    , piQueue
    , piMetadataHash
    , piType

    -- * CustomerSessionStats
    , CustomerSessionStats
    , customerSessionStats
    , cssSearchSessionsCount
    , cssDate

    -- * ErrorMessage
    , ErrorMessage
    , errorMessage
    , emSource
    , emErrorMessage

    -- * BooleanPropertyOptions
    , BooleanPropertyOptions
    , booleanPropertyOptions
    , bpoOperatorOptions

    -- * ValueFilter
    , ValueFilter
    , valueFilter
    , vfValue
    , vfOperatorName

    -- * EnumOperatorOptions
    , EnumOperatorOptions
    , enumOperatorOptions
    , eooOperatorName

    -- * ContextAttribute
    , ContextAttribute
    , contextAttribute
    , caValues
    , caName

    -- * DatePropertyOptions
    , DatePropertyOptions
    , datePropertyOptions
    , dOperatorOptions

    -- * EnumValues
    , EnumValues
    , enumValues
    , evValues

    -- * GSuitePrincipal
    , GSuitePrincipal
    , gSuitePrincipal
    , gspGsuiteGroupEmail
    , gspGsuiteUserEmail
    , gspGsuiteDomain

    -- * IndexItemOptions
    , IndexItemOptions
    , indexItemOptions
    , iioAllowUnknownGsuitePrincipals

    -- * SearchQualityMetadata
    , SearchQualityMetadata
    , searchQualityMetadata
    , sqmQuality

    -- * ItemContentContentFormat
    , ItemContentContentFormat (..)

    -- * TimestampValues
    , TimestampValues
    , timestampValues
    , tValues

    -- * ErrorInfo
    , ErrorInfo
    , errorInfo
    , eiErrorMessages

    -- * ResultDisplayMetadata
    , ResultDisplayMetadata
    , resultDisplayMetadata
    , rdmMetalines
    , rdmObjectTypeLabel

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * IntegerValues
    , IntegerValues
    , integerValues
    , ivValues

    -- * GetCustomerSessionStatsResponse
    , GetCustomerSessionStatsResponse
    , getCustomerSessionStatsResponse
    , gcssrStats

    -- * SearchItemsByViewURLResponse
    , SearchItemsByViewURLResponse
    , searchItemsByViewURLResponse
    , sibvurNextPageToken
    , sibvurItems

    -- * SourcePredefinedSource
    , SourcePredefinedSource (..)

    -- * GetCustomerIndexStatsResponse
    , GetCustomerIndexStatsResponse
    , getCustomerIndexStatsResponse
    , gcisrStats

    -- * RestrictItem
    , RestrictItem
    , restrictItem
    , riDriveLocationRestrict
    , riDriveTimeSpanRestrict
    , riDriveMimeTypeRestrict
    , riDriveFollowUpRestrict
    , riSearchOperator

    -- * DriveTimeSpanRestrictType
    , DriveTimeSpanRestrictType (..)

    -- * IndexItemRequestMode
    , IndexItemRequestMode (..)

    -- * CustomerSettings
    , CustomerSettings
    , customerSettings
    , csAuditLoggingSettings
    , csVPCSettings

    -- * ItemACLACLInheritanceType
    , ItemACLACLInheritanceType (..)

    -- * CheckAccessResponse
    , CheckAccessResponse
    , checkAccessResponse
    , carHasAccess

    -- * RequestOptions
    , RequestOptions
    , requestOptions
    , roLanguageCode
    , roDebugOptions
    , roTimeZone
    , roSearchApplicationId

    -- * ItemStatus
    , ItemStatus
    , itemStatus
    , isProcessingErrors
    , isCode
    , isRepositoryErrors

    -- * GetCustomerUserStatsResponse
    , GetCustomerUserStatsResponse
    , getCustomerUserStatsResponse
    , gcusrStats
    ) where

import Network.Google.CloudSearch.Types.Product
import Network.Google.CloudSearch.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Cloud Search API. This contains the host and root path used as a starting point for constructing service requests.
cloudSearchService :: ServiceConfig
cloudSearchService
  = defaultService (ServiceId "cloudsearch:v1")
      "cloudsearch.googleapis.com"

-- | Index and serve your organization\'s data with Cloud Search
cloudSearchSettingsQueryScope :: Proxy '["https://www.googleapis.com/auth/cloud_search.settings.query"]
cloudSearchSettingsQueryScope = Proxy

-- | Index and serve your organization\'s data with Cloud Search
cloudSearchStatsIndexingScope :: Proxy '["https://www.googleapis.com/auth/cloud_search.stats.indexing"]
cloudSearchStatsIndexingScope = Proxy

-- | Index and serve your organization\'s data with Cloud Search
cloudSearchIndexingScope :: Proxy '["https://www.googleapis.com/auth/cloud_search.indexing"]
cloudSearchIndexingScope = Proxy

-- | Index and serve your organization\'s data with Cloud Search
cloudSearchScope :: Proxy '["https://www.googleapis.com/auth/cloud_search"]
cloudSearchScope = Proxy

-- | Index and serve your organization\'s data with Cloud Search
cloudSearchSettingsIndexingScope :: Proxy '["https://www.googleapis.com/auth/cloud_search.settings.indexing"]
cloudSearchSettingsIndexingScope = Proxy

-- | Search your organization\'s data in the Cloud Search index
cloudSearchQueryScope :: Proxy '["https://www.googleapis.com/auth/cloud_search.query"]
cloudSearchQueryScope = Proxy

-- | Index and serve your organization\'s data with Cloud Search
cloudSearchDebugScope :: Proxy '["https://www.googleapis.com/auth/cloud_search.debug"]
cloudSearchDebugScope = Proxy

-- | Index and serve your organization\'s data with Cloud Search
cloudSearchStatsScope :: Proxy '["https://www.googleapis.com/auth/cloud_search.stats"]
cloudSearchStatsScope = Proxy

-- | Index and serve your organization\'s data with Cloud Search
cloudSearchSettingsScope :: Proxy '["https://www.googleapis.com/auth/cloud_search.settings"]
cloudSearchSettingsScope = Proxy
