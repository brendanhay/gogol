{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.CloudSearch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cloud Search provides cloud-based search capabilities over G Suite data.
-- The Cloud Search API allows indexing of non-G Suite data into Cloud
-- Search.
--
-- /See:/ <https://gsuite.google.com/products/cloud-search/ Cloud Search API Reference>
module Network.Google.CloudSearch
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

    -- * API Declaration
    , CloudSearchAPI

    -- * Resources

    -- ** cloudsearch.debug.datasources.items.checkAccess
    , module Network.Google.Resource.CloudSearch.Debug.Datasources.Items.CheckAccess

    -- ** cloudsearch.debug.datasources.items.searchByViewUrl
    , module Network.Google.Resource.CloudSearch.Debug.Datasources.Items.SearchByViewURL

    -- ** cloudsearch.debug.datasources.items.unmappedids.list
    , module Network.Google.Resource.CloudSearch.Debug.Datasources.Items.UnmAppedids.List

    -- ** cloudsearch.debug.identitysources.items.listForunmappedidentity
    , module Network.Google.Resource.CloudSearch.Debug.Identitysources.Items.ListForunmAppedidentity

    -- ** cloudsearch.debug.identitysources.unmappedids.list
    , module Network.Google.Resource.CloudSearch.Debug.Identitysources.UnmAppedids.List

    -- ** cloudsearch.indexing.datasources.deleteSchema
    , module Network.Google.Resource.CloudSearch.Indexing.Datasources.DeleteSchema

    -- ** cloudsearch.indexing.datasources.getSchema
    , module Network.Google.Resource.CloudSearch.Indexing.Datasources.GetSchema

    -- ** cloudsearch.indexing.datasources.items.delete
    , module Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Delete

    -- ** cloudsearch.indexing.datasources.items.deleteQueueItems
    , module Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.DeleteQueueItems

    -- ** cloudsearch.indexing.datasources.items.get
    , module Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Get

    -- ** cloudsearch.indexing.datasources.items.index
    , module Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Index

    -- ** cloudsearch.indexing.datasources.items.list
    , module Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.List

    -- ** cloudsearch.indexing.datasources.items.poll
    , module Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Poll

    -- ** cloudsearch.indexing.datasources.items.push
    , module Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Push

    -- ** cloudsearch.indexing.datasources.items.unreserve
    , module Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Unreserve

    -- ** cloudsearch.indexing.datasources.items.upload
    , module Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Upload

    -- ** cloudsearch.indexing.datasources.updateSchema
    , module Network.Google.Resource.CloudSearch.Indexing.Datasources.UpdateSchema

    -- ** cloudsearch.media.upload
    , module Network.Google.Resource.CloudSearch.Media.Upload

    -- ** cloudsearch.operations.get
    , module Network.Google.Resource.CloudSearch.Operations.Get

    -- ** cloudsearch.query.search
    , module Network.Google.Resource.CloudSearch.Query.Search

    -- ** cloudsearch.query.sources.list
    , module Network.Google.Resource.CloudSearch.Query.Sources.List

    -- ** cloudsearch.query.suggest
    , module Network.Google.Resource.CloudSearch.Query.Suggest

    -- ** cloudsearch.settings.datasources.create
    , module Network.Google.Resource.CloudSearch.Settings.Datasources.Create

    -- ** cloudsearch.settings.datasources.delete
    , module Network.Google.Resource.CloudSearch.Settings.Datasources.Delete

    -- ** cloudsearch.settings.datasources.get
    , module Network.Google.Resource.CloudSearch.Settings.Datasources.Get

    -- ** cloudsearch.settings.datasources.list
    , module Network.Google.Resource.CloudSearch.Settings.Datasources.List

    -- ** cloudsearch.settings.datasources.update
    , module Network.Google.Resource.CloudSearch.Settings.Datasources.Update

    -- ** cloudsearch.settings.searchapplications.create
    , module Network.Google.Resource.CloudSearch.Settings.SearchApplications.Create

    -- ** cloudsearch.settings.searchapplications.delete
    , module Network.Google.Resource.CloudSearch.Settings.SearchApplications.Delete

    -- ** cloudsearch.settings.searchapplications.get
    , module Network.Google.Resource.CloudSearch.Settings.SearchApplications.Get

    -- ** cloudsearch.settings.searchapplications.list
    , module Network.Google.Resource.CloudSearch.Settings.SearchApplications.List

    -- ** cloudsearch.settings.searchapplications.reset
    , module Network.Google.Resource.CloudSearch.Settings.SearchApplications.Reset

    -- ** cloudsearch.settings.searchapplications.update
    , module Network.Google.Resource.CloudSearch.Settings.SearchApplications.Update

    -- ** cloudsearch.stats.getIndex
    , module Network.Google.Resource.CloudSearch.Stats.GetIndex

    -- ** cloudsearch.stats.index.datasources.get
    , module Network.Google.Resource.CloudSearch.Stats.Index.Datasources.Get

    -- * Types

    -- ** DriveMimeTypeRestrictType
    , DriveMimeTypeRestrictType (..)

    -- ** DriveFollowUpRestrictType
    , DriveFollowUpRestrictType (..)

    -- ** GmailFolderRestrict
    , GmailFolderRestrict
    , gmailFolderRestrict
    , gfrType

    -- ** ItemContent
    , ItemContent
    , itemContent
    , icHash
    , icContentFormat
    , icContentDataRef
    , icInlineContent

    -- ** Photo
    , Photo
    , photo
    , pURL

    -- ** SearchItemsByViewURLRequest
    , SearchItemsByViewURLRequest
    , searchItemsByViewURLRequest
    , sibvurDebugOptions
    , sibvurPageToken
    , sibvurViewURL

    -- ** SearchApplication
    , SearchApplication
    , searchApplication
    , saDataSourceRestrictions
    , saOperationIds
    , saDefaultFacetOptions
    , saScoringConfig
    , saName
    , saSourceConfig
    , saDisplayName
    , saDefaultSortOptions

    -- ** BooleanOperatorOptions
    , BooleanOperatorOptions
    , booleanOperatorOptions
    , booOperatorName

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** EnumPropertyOptions
    , EnumPropertyOptions
    , enumPropertyOptions
    , epoPossibleValues
    , epoOrderedRanking
    , epoOperatorOptions

    -- ** ItemStatusCode
    , ItemStatusCode (..)

    -- ** GmailActionRestrict
    , GmailActionRestrict
    , gmailActionRestrict
    , garType

    -- ** UnreserveItemsRequest
    , UnreserveItemsRequest
    , unreserveItemsRequest
    , uirQueue
    , uirDebugOptions
    , uirConnectorName

    -- ** DateOperatorOptions
    , DateOperatorOptions
    , dateOperatorOptions
    , dooOperatorName
    , dooLessThanOperatorName
    , dooGreaterThanOperatorName

    -- ** GetDataSourceIndexStatsResponse
    , GetDataSourceIndexStatsResponse
    , getDataSourceIndexStatsResponse
    , gdsisrStats

    -- ** ObjectDisplayOptions
    , ObjectDisplayOptions
    , objectDisplayOptions
    , odoMetalines
    , odoObjectDisplayLabel

    -- ** QueryItem
    , QueryItem
    , queryItem
    , qiIsSynthetic

    -- ** ListUnmAppedIdentitiesResponse
    , ListUnmAppedIdentitiesResponse
    , listUnmAppedIdentitiesResponse
    , luairNextPageToken
    , luairUnmAppedIdentities

    -- ** DeleteQueueItemsRequest
    , DeleteQueueItemsRequest
    , deleteQueueItemsRequest
    , dqirQueue
    , dqirDebugOptions
    , dqirConnectorName

    -- ** SearchResult
    , SearchResult
    , searchResult
    , srDebugInfo
    , srSnippet
    , srURL
    , srClusteredResults
    , srMetadata
    , srTitle

    -- ** SpellResult
    , SpellResult
    , spellResult
    , srSuggestedQuery

    -- ** PeopleSuggestion
    , PeopleSuggestion
    , peopleSuggestion
    , psPerson

    -- ** QuerySource
    , QuerySource
    , querySource
    , qsShortName
    , qsDisplayName
    , qsSource
    , qsOperators

    -- ** GmailTimeRestrictType
    , GmailTimeRestrictType (..)

    -- ** SuggestResponse
    , SuggestResponse
    , suggestResponse
    , srSuggestResults

    -- ** RepositoryError
    , RepositoryError
    , repositoryError
    , reHTTPStatusCode
    , reType
    , reErrorMessage

    -- ** QueryInterpretationInterpretationType
    , QueryInterpretationInterpretationType (..)

    -- ** HTMLPropertyOptions
    , HTMLPropertyOptions
    , htmlPropertyOptions
    , hpoRetrievalImportance
    , hpoOperatorOptions

    -- ** PropertyDefinition
    , PropertyDefinition
    , propertyDefinition
    , pdEnumPropertyOptions
    , pdHTMLPropertyOptions
    , pdObjectPropertyOptions
    , pdIsReturnable
    , pdTimestampPropertyOptions
    , pdIntegerPropertyOptions
    , pdName
    , pdIsRepeatable
    , pdDoublePropertyOptions
    , pdDisplayOptions
    , pdTextPropertyOptions
    , pdIsSortable
    , pdIsFacetable
    , pdBooleanPropertyOptions
    , pdDatePropertyOptions

    -- ** SortOptions
    , SortOptions
    , sortOptions
    , soSortOrder
    , soOperatorName

    -- ** ObjectPropertyOptions
    , ObjectPropertyOptions
    , objectPropertyOptions
    , opoSubobjectProperties

    -- ** InteractionType
    , InteractionType (..)

    -- ** QueryOperatorType
    , QueryOperatorType (..)

    -- ** SearchResponse
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

    -- ** SuggestResult
    , SuggestResult
    , suggestResult
    , sPeopleSuggestion
    , sQuerySuggestion
    , sSuggestedQuery
    , sSource

    -- ** TextValues
    , TextValues
    , textValues
    , tvValues

    -- ** DriveLocationRestrict
    , DriveLocationRestrict
    , driveLocationRestrict
    , dlrType

    -- ** ListQuerySourcesResponse
    , ListQuerySourcesResponse
    , listQuerySourcesResponse
    , lqsrNextPageToken
    , lqsrSources

    -- ** DoubleOperatorOptions
    , DoubleOperatorOptions
    , doubleOperatorOptions
    , dOperatorName

    -- ** GmailIntelligentRestrictType
    , GmailIntelligentRestrictType (..)

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** Person
    , Person
    , person
    , pEmailAddresses
    , pPersonNames
    , pPhotos
    , pName
    , pObfuscatedId

    -- ** CompositeFilter
    , CompositeFilter
    , compositeFilter
    , cfSubFilters
    , cfLogicOperator

    -- ** ResultDisplayLine
    , ResultDisplayLine
    , resultDisplayLine
    , rdlFields

    -- ** DoubleValues
    , DoubleValues
    , doubleValues
    , dvValues

    -- ** Snippet
    , Snippet
    , snippet
    , sMatchRanges
    , sSnippet

    -- ** TextOperatorOptions
    , TextOperatorOptions
    , textOperatorOptions
    , tooOperatorName
    , tooExactMatchWithOperator

    -- ** EnumPropertyOptionsOrderedRanking
    , EnumPropertyOptionsOrderedRanking (..)

    -- ** QueryInterpretationOptions
    , QueryInterpretationOptions
    , queryInterpretationOptions
    , qioDisableNlInterpretation

    -- ** ResetSearchApplicationRequest
    , ResetSearchApplicationRequest
    , resetSearchApplicationRequest
    , rsarDebugOptions

    -- ** IntegerPropertyOptionsOrderedRanking
    , IntegerPropertyOptionsOrderedRanking (..)

    -- ** ItemMetadata
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
    , imTitle
    , imContentLanguage
    , imSearchQualityMetadata
    , imCreateTime

    -- ** FilterOptions
    , FilterOptions
    , filterOptions
    , foObjectType
    , foFilter

    -- ** StructuredResult
    , StructuredResult
    , structuredResult
    , srPerson

    -- ** ProcessingError
    , ProcessingError
    , processingError
    , peFieldViolations
    , peCode
    , peErrorMessage

    -- ** PushItemType
    , PushItemType (..)

    -- ** ListItemNamesForUnmAppedIdentityResponse
    , ListItemNamesForUnmAppedIdentityResponse
    , listItemNamesForUnmAppedIdentityResponse
    , linfuairNextPageToken
    , linfuairItemNames

    -- ** CompositeFilterLogicOperator
    , CompositeFilterLogicOperator (..)

    -- ** ItemACL
    , ItemACL
    , itemACL
    , iaOwners
    , iaReaders
    , iaACLInheritanceType
    , iaInheritACLFrom
    , iaDeniedReaders

    -- ** Value
    , Value
    , value
    , vIntegerValue
    , vTimestampValue
    , vDoubleValue
    , vStringValue
    , vDateValue
    , vBooleanValue

    -- ** FieldViolation
    , FieldViolation
    , fieldViolation
    , fvField
    , fvDescription

    -- ** SourceScoringConfigSourceImportance
    , SourceScoringConfigSourceImportance (..)

    -- ** GmailAttachmentRestrictType
    , GmailAttachmentRestrictType (..)

    -- ** Metaline
    , Metaline
    , metaline
    , mProperties

    -- ** FacetBucket
    , FacetBucket
    , facetBucket
    , fbValue
    , fbCount
    , fbPercentage

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** RetrievalImportanceImportance
    , RetrievalImportanceImportance (..)

    -- ** TimestampOperatorOptions
    , TimestampOperatorOptions
    , timestampOperatorOptions
    , tOperatorName
    , tLessThanOperatorName
    , tGreaterThanOperatorName

    -- ** ProcessingErrorCode
    , ProcessingErrorCode (..)

    -- ** IntegerOperatorOptions
    , IntegerOperatorOptions
    , integerOperatorOptions
    , iooOperatorName
    , iooLessThanOperatorName
    , iooGreaterThanOperatorName

    -- ** SortOptionsSortOrder
    , SortOptionsSortOrder (..)

    -- ** QuerySuggestion
    , QuerySuggestion
    , querySuggestion

    -- ** ListSearchApplicationsResponse
    , ListSearchApplicationsResponse
    , listSearchApplicationsResponse
    , lsarNextPageToken
    , lsarSearchApplications

    -- ** ResultDebugInfo
    , ResultDebugInfo
    , resultDebugInfo
    , rdiFormattedDebugInfo

    -- ** ItemCountByStatus
    , ItemCountByStatus
    , itemCountByStatus
    , icbsCount
    , icbsStatusCode

    -- ** TimestampPropertyOptions
    , TimestampPropertyOptions
    , timestampPropertyOptions
    , tpoOperatorOptions

    -- ** ResultCounts
    , ResultCounts
    , resultCounts
    , rcSourceResultCounts

    -- ** FreshnessOptions
    , FreshnessOptions
    , freshnessOptions
    , foFreshnessDuration
    , foFreshnessProperty

    -- ** DebugOptions
    , DebugOptions
    , debugOptions
    , doEnableDebugging

    -- ** IntegerPropertyOptions
    , IntegerPropertyOptions
    , integerPropertyOptions
    , ipoMaximumValue
    , ipoOrderedRanking
    , ipoMinimumValue
    , ipoOperatorOptions

    -- ** DataSourceRestriction
    , DataSourceRestriction
    , dataSourceRestriction
    , dsrFilterOptions
    , dsrSource

    -- ** Schema
    , Schema
    , schema
    , sObjectDefinitions
    , sOperationIds

    -- ** DriveTimeSpanRestrict
    , DriveTimeSpanRestrict
    , driveTimeSpanRestrict
    , dtsrType

    -- ** ResultDisplayField
    , ResultDisplayField
    , resultDisplayField
    , rdfProperty
    , rdfOperatorName
    , rdfLabel

    -- ** UpdateSchemaRequest
    , UpdateSchemaRequest
    , updateSchemaRequest
    , usrValidateOnly
    , usrSchema
    , usrDebugOptions

    -- ** Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- ** DisplayedProperty
    , DisplayedProperty
    , displayedProperty
    , dpPropertyName

    -- ** GmailActionRestrictType
    , GmailActionRestrictType (..)

    -- ** FacetResult
    , FacetResult
    , facetResult
    , frSourceName
    , frBuckets
    , frObjectType
    , frOperatorName

    -- ** DriveMimeTypeRestrict
    , DriveMimeTypeRestrict
    , driveMimeTypeRestrict
    , dmtrType

    -- ** StructuredDataObject
    , StructuredDataObject
    , structuredDataObject
    , sdoProperties

    -- ** Media
    , Media
    , media
    , mResourceName

    -- ** ItemStructuredData
    , ItemStructuredData
    , itemStructuredData
    , isdHash
    , isdObject

    -- ** DriveFollowUpRestrict
    , DriveFollowUpRestrict
    , driveFollowUpRestrict
    , dfurType

    -- ** DateValues
    , DateValues
    , dateValues
    , dValues

    -- ** GmailFolderRestrictType
    , GmailFolderRestrictType (..)

    -- ** NamedProperty
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

    -- ** MatchRange
    , MatchRange
    , matchRange
    , mrStart
    , mrEnd

    -- ** ResponseDebugInfo
    , ResponseDebugInfo
    , responseDebugInfo
    , rFormattedDebugInfo

    -- ** ListDataSourceResponse
    , ListDataSourceResponse
    , listDataSourceResponse
    , ldsrNextPageToken
    , ldsrSources

    -- ** SearchRequest
    , SearchRequest
    , searchRequest
    , srSortOptions
    , srDataSourceRestrictions
    , srQueryInterpretationOptions
    , srStart
    , srQuery
    , srFacetOptions
    , srPageSize
    , srRequestOptions

    -- ** Name
    , Name
    , name
    , nDisplayName

    -- ** SourceResultCount
    , SourceResultCount
    , sourceResultCount
    , srcHasMoreResults
    , srcResultCountExact
    , srcResultCountEstimate
    , srcSource

    -- ** SourceConfig
    , SourceConfig
    , sourceConfig
    , scCrowdingConfig
    , scScoringConfig
    , scSource

    -- ** UnmAppedIdentityResolutionStatusCode
    , UnmAppedIdentityResolutionStatusCode (..)

    -- ** ListItemsResponse
    , ListItemsResponse
    , listItemsResponse
    , lirNextPageToken
    , lirItems

    -- ** ScoringConfig
    , ScoringConfig
    , scoringConfig
    , scDisablePersonalization
    , scDisableFreshness

    -- ** StartUploadItemRequest
    , StartUploadItemRequest
    , startUploadItemRequest
    , suirDebugOptions
    , suirConnectorName

    -- ** UploadItemRef
    , UploadItemRef
    , uploadItemRef
    , uirName

    -- ** GmailTimeRestrict
    , GmailTimeRestrict
    , gmailTimeRestrict
    , gtrType

    -- ** PushItemRequest
    , PushItemRequest
    , pushItemRequest
    , pirDebugOptions
    , pirConnectorName
    , pirItem

    -- ** DoublePropertyOptions
    , DoublePropertyOptions
    , doublePropertyOptions
    , dpoOperatorOptions

    -- ** QueryOperator
    , QueryOperator
    , queryOperator
    , qoIsSuggestable
    , qoIsReturnable
    , qoIsRepeatable
    , qoOperatorName
    , qoIsSortable
    , qoIsFacetable
    , qoDisplayName
    , qoLessThanOperatorName
    , qoType
    , qoEnumValues
    , qoGreaterThanOperatorName

    -- ** Xgafv
    , Xgafv (..)

    -- ** PollItemsResponse
    , PollItemsResponse
    , pollItemsResponse
    , pirItems

    -- ** SourceScoringConfig
    , SourceScoringConfig
    , sourceScoringConfig
    , sscSourceImportance

    -- ** EmailAddress
    , EmailAddress
    , emailAddress
    , eaEmailAddress

    -- ** RetrievalImportance
    , RetrievalImportance
    , retrievalImportance
    , riImportance

    -- ** DataSourceIndexStats
    , DataSourceIndexStats
    , dataSourceIndexStats
    , dsisItemCountByStatus
    , dsisDate

    -- ** SourceCrowdingConfig
    , SourceCrowdingConfig
    , sourceCrowdingConfig
    , sccField
    , sccNumSuggestions
    , sccNumResults
    , sccSource

    -- ** Interaction
    , Interaction
    , interaction
    , iInteractionTime
    , iPrincipal
    , iType

    -- ** Principal
    , Principal
    , principal
    , pUserResourceName
    , pGroupResourceName
    , pGsuitePrincipal

    -- ** IndexItemRequest
    , IndexItemRequest
    , indexItemRequest
    , iirMode
    , iirDebugOptions
    , iirConnectorName
    , iirItem
    , iirIndexItemOptions

    -- ** RepositoryErrorType
    , RepositoryErrorType (..)

    -- ** TextPropertyOptions
    , TextPropertyOptions
    , textPropertyOptions
    , tRetrievalImportance
    , tOperatorOptions

    -- ** EnumValuePair
    , EnumValuePair
    , enumValuePair
    , evpIntegerValue
    , evpStringValue

    -- ** DriveLocationRestrictType
    , DriveLocationRestrictType (..)

    -- ** Metadata
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

    -- ** UpdateDataSourceRequest
    , UpdateDataSourceRequest
    , updateDataSourceRequest
    , udsrDebugOptions
    , udsrSource

    -- ** DataSource
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

    -- ** HTMLValues
    , HTMLValues
    , htmlValues
    , hvValues

    -- ** GmailIntelligentRestrict
    , GmailIntelligentRestrict
    , gmailIntelligentRestrict
    , girType

    -- ** HTMLOperatorOptions
    , HTMLOperatorOptions
    , htmlOperatorOptions
    , hooOperatorName

    -- ** Item
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

    -- ** Source
    , Source
    , source
    , sName
    , sPredefinedSource

    -- ** PropertyDisplayOptions
    , PropertyDisplayOptions
    , propertyDisplayOptions
    , pdoDisplayLabel

    -- ** ObjectValues
    , ObjectValues
    , objectValues
    , ovValues

    -- ** ObjectOptions
    , ObjectOptions
    , objectOptions
    , ooFreshnessOptions
    , ooDisplayOptions

    -- ** FacetOptions
    , FacetOptions
    , facetOptions
    , fSourceName
    , fObjectType
    , fNumFacetBuckets
    , fOperatorName

    -- ** SuggestRequest
    , SuggestRequest
    , suggestRequest
    , sDataSourceRestrictions
    , sQuery
    , sRequestOptions

    -- ** Filter
    , Filter
    , filter'
    , fCompositeFilter
    , fValueFilter

    -- ** ObjectDefinition
    , ObjectDefinition
    , objectDefinition
    , odName
    , odOptions
    , odPropertyDefinitions

    -- ** ItemItemType
    , ItemItemType (..)

    -- ** ItemCountByStatusStatusCode
    , ItemCountByStatusStatusCode (..)

    -- ** PollItemsRequest
    , PollItemsRequest
    , pollItemsRequest
    , pQueue
    , pDebugOptions
    , pConnectorName
    , pStatusCodes
    , pLimit

    -- ** QueryInterpretation
    , QueryInterpretation
    , queryInterpretation
    , qiInterpretedQuery
    , qiInterpretationType

    -- ** UnmAppedIdentity
    , UnmAppedIdentity
    , unmAppedIdentity
    , uaiResolutionStatusCode
    , uaiExternalIdentity

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** CustomerIndexStats
    , CustomerIndexStats
    , customerIndexStats
    , cisItemCountByStatus
    , cisDate

    -- ** PushItem
    , PushItem
    , pushItem
    , piRepositoryError
    , piContentHash
    , piStructuredDataHash
    , piPayload
    , piQueue
    , piMetadataHash
    , piType

    -- ** ErrorMessage
    , ErrorMessage
    , errorMessage
    , emSource
    , emErrorMessage

    -- ** BooleanPropertyOptions
    , BooleanPropertyOptions
    , booleanPropertyOptions
    , bpoOperatorOptions

    -- ** ValueFilter
    , ValueFilter
    , valueFilter
    , vfValue
    , vfOperatorName

    -- ** EnumOperatorOptions
    , EnumOperatorOptions
    , enumOperatorOptions
    , eooOperatorName

    -- ** GmailAttachmentRestrict
    , GmailAttachmentRestrict
    , gmailAttachmentRestrict
    , gType

    -- ** DatePropertyOptions
    , DatePropertyOptions
    , datePropertyOptions
    , dOperatorOptions

    -- ** EnumValues
    , EnumValues
    , enumValues
    , evValues

    -- ** GSuitePrincipal
    , GSuitePrincipal
    , gSuitePrincipal
    , gspGsuiteGroupEmail
    , gspGsuiteUserEmail
    , gspGsuiteDomain

    -- ** IndexItemOptions
    , IndexItemOptions
    , indexItemOptions
    , iioAllowUnknownGsuitePrincipals

    -- ** SearchQualityMetadata
    , SearchQualityMetadata
    , searchQualityMetadata
    , sqmQuality

    -- ** ItemContentContentFormat
    , ItemContentContentFormat (..)

    -- ** TimestampValues
    , TimestampValues
    , timestampValues
    , tValues

    -- ** ErrorInfo
    , ErrorInfo
    , errorInfo
    , eiErrorMessages

    -- ** ResultDisplayMetadata
    , ResultDisplayMetadata
    , resultDisplayMetadata
    , rdmMetalines
    , rdmObjectTypeLabel

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** IntegerValues
    , IntegerValues
    , integerValues
    , ivValues

    -- ** SearchItemsByViewURLResponse
    , SearchItemsByViewURLResponse
    , searchItemsByViewURLResponse
    , sibvurNextPageToken
    , sibvurItems

    -- ** SourcePredefinedSource
    , SourcePredefinedSource (..)

    -- ** GetCustomerIndexStatsResponse
    , GetCustomerIndexStatsResponse
    , getCustomerIndexStatsResponse
    , gcisrStats

    -- ** RestrictItem
    , RestrictItem
    , restrictItem
    , riGmailFolderRestrict
    , riGmailActionRestrict
    , riDriveLocationRestrict
    , riDriveTimeSpanRestrict
    , riDriveMimeTypeRestrict
    , riDriveFollowUpRestrict
    , riGmailTimeRestrict
    , riGmailIntelligentRestrict
    , riGmailAttachmentRestrict
    , riSearchOperator

    -- ** DriveTimeSpanRestrictType
    , DriveTimeSpanRestrictType (..)

    -- ** IndexItemRequestMode
    , IndexItemRequestMode (..)

    -- ** ItemACLACLInheritanceType
    , ItemACLACLInheritanceType (..)

    -- ** CheckAccessResponse
    , CheckAccessResponse
    , checkAccessResponse
    , carHasAccess

    -- ** RequestOptions
    , RequestOptions
    , requestOptions
    , roLanguageCode
    , roDebugOptions
    , roTimeZone
    , roSearchApplicationId

    -- ** ItemStatus
    , ItemStatus
    , itemStatus
    , isProcessingErrors
    , isCode
    , isRepositoryErrors
    ) where

import           Network.Google.CloudSearch.Types
import           Network.Google.Prelude
import           Network.Google.Resource.CloudSearch.Debug.Datasources.Items.CheckAccess
import           Network.Google.Resource.CloudSearch.Debug.Datasources.Items.SearchByViewURL
import           Network.Google.Resource.CloudSearch.Debug.Datasources.Items.UnmAppedids.List
import           Network.Google.Resource.CloudSearch.Debug.Identitysources.Items.ListForunmAppedidentity
import           Network.Google.Resource.CloudSearch.Debug.Identitysources.UnmAppedids.List
import           Network.Google.Resource.CloudSearch.Indexing.Datasources.DeleteSchema
import           Network.Google.Resource.CloudSearch.Indexing.Datasources.GetSchema
import           Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Delete
import           Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.DeleteQueueItems
import           Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Get
import           Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Index
import           Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.List
import           Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Poll
import           Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Push
import           Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Unreserve
import           Network.Google.Resource.CloudSearch.Indexing.Datasources.Items.Upload
import           Network.Google.Resource.CloudSearch.Indexing.Datasources.UpdateSchema
import           Network.Google.Resource.CloudSearch.Media.Upload
import           Network.Google.Resource.CloudSearch.Operations.Get
import           Network.Google.Resource.CloudSearch.Query.Search
import           Network.Google.Resource.CloudSearch.Query.Sources.List
import           Network.Google.Resource.CloudSearch.Query.Suggest
import           Network.Google.Resource.CloudSearch.Settings.Datasources.Create
import           Network.Google.Resource.CloudSearch.Settings.Datasources.Delete
import           Network.Google.Resource.CloudSearch.Settings.Datasources.Get
import           Network.Google.Resource.CloudSearch.Settings.Datasources.List
import           Network.Google.Resource.CloudSearch.Settings.Datasources.Update
import           Network.Google.Resource.CloudSearch.Settings.SearchApplications.Create
import           Network.Google.Resource.CloudSearch.Settings.SearchApplications.Delete
import           Network.Google.Resource.CloudSearch.Settings.SearchApplications.Get
import           Network.Google.Resource.CloudSearch.Settings.SearchApplications.List
import           Network.Google.Resource.CloudSearch.Settings.SearchApplications.Reset
import           Network.Google.Resource.CloudSearch.Settings.SearchApplications.Update
import           Network.Google.Resource.CloudSearch.Stats.GetIndex
import           Network.Google.Resource.CloudSearch.Stats.Index.Datasources.Get

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Search API service.
type CloudSearchAPI =
     SettingsDatasourcesListResource :<|>
       SettingsDatasourcesGetResource
       :<|> SettingsDatasourcesCreateResource
       :<|> SettingsDatasourcesDeleteResource
       :<|> SettingsDatasourcesUpdateResource
       :<|> SettingsSearchApplicationsListResource
       :<|> SettingsSearchApplicationsGetResource
       :<|> SettingsSearchApplicationsCreateResource
       :<|> SettingsSearchApplicationsResetResource
       :<|> SettingsSearchApplicationsDeleteResource
       :<|> SettingsSearchApplicationsUpdateResource
       :<|> StatsIndexDatasourcesGetResource
       :<|> StatsGetIndexResource
       :<|> DebugDatasourcesItemsUnmAppedidsListResource
       :<|> DebugDatasourcesItemsCheckAccessResource
       :<|> DebugDatasourcesItemsSearchByViewURLResource
       :<|> DebugIdentitysourcesUnmAppedidsListResource
       :<|>
       DebugIdentitysourcesItemsListForunmAppedidentityResource
       :<|> MediaUploadResource
       :<|> QuerySourcesListResource
       :<|> QuerySuggestResource
       :<|> QuerySearchResource
       :<|> OperationsGetResource
       :<|> IndexingDatasourcesItemsListResource
       :<|> IndexingDatasourcesItemsUnreserveResource
       :<|> IndexingDatasourcesItemsGetResource
       :<|> IndexingDatasourcesItemsDeleteQueueItemsResource
       :<|> IndexingDatasourcesItemsPollResource
       :<|> IndexingDatasourcesItemsUploadResource
       :<|> IndexingDatasourcesItemsIndexResource
       :<|> IndexingDatasourcesItemsPushResource
       :<|> IndexingDatasourcesItemsDeleteResource
       :<|> IndexingDatasourcesGetSchemaResource
       :<|> IndexingDatasourcesUpdateSchemaResource
       :<|> IndexingDatasourcesDeleteSchemaResource
