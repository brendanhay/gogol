{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Analytics.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Analytics.Types.Product where

import           Network.Google.Analytics.Types.Sum
import           Network.Google.Prelude

-- | JSON template for Analytics account entry.
--
-- /See:/ 'account' smart constructor.
data Account = Account
    { _accChildLink   :: !(Maybe AccountChildLink)
    , _accKind        :: !Text
    , _accCreated     :: !(Maybe UTCTime)
    , _accSelfLink    :: !(Maybe Text)
    , _accName        :: !(Maybe Text)
    , _accId          :: !(Maybe Text)
    , _accUpdated     :: !(Maybe UTCTime)
    , _accPermissions :: !(Maybe AccountPermissions)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Account' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accChildLink'
--
-- * 'accKind'
--
-- * 'accCreated'
--
-- * 'accSelfLink'
--
-- * 'accName'
--
-- * 'accId'
--
-- * 'accUpdated'
--
-- * 'accPermissions'
account
    :: Account
account =
    Account
    { _accChildLink = Nothing
    , _accKind = "analytics#account"
    , _accCreated = Nothing
    , _accSelfLink = Nothing
    , _accName = Nothing
    , _accId = Nothing
    , _accUpdated = Nothing
    , _accPermissions = Nothing
    }

-- | Child link for an account entry. Points to the list of web properties
-- for this account.
accChildLink :: Lens' Account (Maybe AccountChildLink)
accChildLink
  = lens _accChildLink (\ s a -> s{_accChildLink = a})

-- | Resource type for Analytics account.
accKind :: Lens' Account Text
accKind = lens _accKind (\ s a -> s{_accKind = a})

-- | Time the account was created.
accCreated :: Lens' Account (Maybe UTCTime)
accCreated
  = lens _accCreated (\ s a -> s{_accCreated = a})

-- | Link for this account.
accSelfLink :: Lens' Account (Maybe Text)
accSelfLink
  = lens _accSelfLink (\ s a -> s{_accSelfLink = a})

-- | Account name.
accName :: Lens' Account (Maybe Text)
accName = lens _accName (\ s a -> s{_accName = a})

-- | Account ID.
accId :: Lens' Account (Maybe Text)
accId = lens _accId (\ s a -> s{_accId = a})

-- | Time the account was last modified.
accUpdated :: Lens' Account (Maybe UTCTime)
accUpdated
  = lens _accUpdated (\ s a -> s{_accUpdated = a})

-- | Permissions the user has for this account.
accPermissions :: Lens' Account (Maybe AccountPermissions)
accPermissions
  = lens _accPermissions
      (\ s a -> s{_accPermissions = a})

-- | Child link for an account entry. Points to the list of web properties
-- for this account.
--
-- /See:/ 'accountChildLink' smart constructor.
data AccountChildLink = AccountChildLink
    { _aclHref :: !(Maybe Text)
    , _aclType :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountChildLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aclHref'
--
-- * 'aclType'
accountChildLink
    :: AccountChildLink
accountChildLink =
    AccountChildLink
    { _aclHref = Nothing
    , _aclType = "analytics#webproperties"
    }

-- | Link to the list of web properties for this account.
aclHref :: Lens' AccountChildLink (Maybe Text)
aclHref = lens _aclHref (\ s a -> s{_aclHref = a})

-- | Type of the child link. Its value is \"analytics#webproperties\".
aclType :: Lens' AccountChildLink Text
aclType = lens _aclType (\ s a -> s{_aclType = a})

-- | Permissions the user has for this account.
--
-- /See:/ 'accountPermissions' smart constructor.
newtype AccountPermissions = AccountPermissions
    { _apEffective :: Maybe [Text]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apEffective'
accountPermissions
    :: AccountPermissions
accountPermissions =
    AccountPermissions
    { _apEffective = Nothing
    }

-- | All the permissions that the user has for this account. These include
-- any implied permissions (e.g., EDIT implies VIEW).
apEffective :: Lens' AccountPermissions [Text]
apEffective
  = lens _apEffective (\ s a -> s{_apEffective = a}) .
      _Default
      . _Coerce

-- | JSON template for a linked account.
--
-- /See:/ 'accountRef' smart constructor.
data AccountRef = AccountRef
    { _arKind :: !Text
    , _arHref :: !(Maybe Text)
    , _arName :: !(Maybe Text)
    , _arId   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountRef' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arKind'
--
-- * 'arHref'
--
-- * 'arName'
--
-- * 'arId'
accountRef
    :: AccountRef
accountRef =
    AccountRef
    { _arKind = "analytics#accountRef"
    , _arHref = Nothing
    , _arName = Nothing
    , _arId = Nothing
    }

-- | Analytics account reference.
arKind :: Lens' AccountRef Text
arKind = lens _arKind (\ s a -> s{_arKind = a})

-- | Link for this account.
arHref :: Lens' AccountRef (Maybe Text)
arHref = lens _arHref (\ s a -> s{_arHref = a})

-- | Account name.
arName :: Lens' AccountRef (Maybe Text)
arName = lens _arName (\ s a -> s{_arName = a})

-- | Account ID.
arId :: Lens' AccountRef (Maybe Text)
arId = lens _arId (\ s a -> s{_arId = a})

-- | An AccountSummary collection lists a summary of accounts, properties and
-- views (profiles) to which the user has access. Each resource in the
-- collection corresponds to a single AccountSummary.
--
-- /See:/ 'accountSummaries' smart constructor.
data AccountSummaries = AccountSummaries
    { _assNextLink     :: !(Maybe Text)
    , _assItemsPerPage :: !(Maybe Int32)
    , _assKind         :: !Text
    , _assUsername     :: !(Maybe Text)
    , _assItems        :: !(Maybe [Maybe AccountSummary])
    , _assTotalResults :: !(Maybe Int32)
    , _assStartIndex   :: !(Maybe Int32)
    , _assPreviousLink :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountSummaries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assNextLink'
--
-- * 'assItemsPerPage'
--
-- * 'assKind'
--
-- * 'assUsername'
--
-- * 'assItems'
--
-- * 'assTotalResults'
--
-- * 'assStartIndex'
--
-- * 'assPreviousLink'
accountSummaries
    :: AccountSummaries
accountSummaries =
    AccountSummaries
    { _assNextLink = Nothing
    , _assItemsPerPage = Nothing
    , _assKind = "analytics#accountSummaries"
    , _assUsername = Nothing
    , _assItems = Nothing
    , _assTotalResults = Nothing
    , _assStartIndex = Nothing
    , _assPreviousLink = Nothing
    }

-- | Link to next page for this AccountSummary collection.
assNextLink :: Lens' AccountSummaries (Maybe Text)
assNextLink
  = lens _assNextLink (\ s a -> s{_assNextLink = a})

-- | The maximum number of resources the response can contain, regardless of
-- the actual number of resources returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
assItemsPerPage :: Lens' AccountSummaries (Maybe Int32)
assItemsPerPage
  = lens _assItemsPerPage
      (\ s a -> s{_assItemsPerPage = a})

-- | Collection type.
assKind :: Lens' AccountSummaries Text
assKind = lens _assKind (\ s a -> s{_assKind = a})

-- | Email ID of the authenticated user
assUsername :: Lens' AccountSummaries (Maybe Text)
assUsername
  = lens _assUsername (\ s a -> s{_assUsername = a})

-- | A list of AccountSummaries.
assItems :: Lens' AccountSummaries [Maybe AccountSummary]
assItems
  = lens _assItems (\ s a -> s{_assItems = a}) .
      _Default
      . _Coerce

-- | The total number of results for the query, regardless of the number of
-- results in the response.
assTotalResults :: Lens' AccountSummaries (Maybe Int32)
assTotalResults
  = lens _assTotalResults
      (\ s a -> s{_assTotalResults = a})

-- | The starting index of the resources, which is 1 by default or otherwise
-- specified by the start-index query parameter.
assStartIndex :: Lens' AccountSummaries (Maybe Int32)
assStartIndex
  = lens _assStartIndex
      (\ s a -> s{_assStartIndex = a})

-- | Link to previous page for this AccountSummary collection.
assPreviousLink :: Lens' AccountSummaries (Maybe Text)
assPreviousLink
  = lens _assPreviousLink
      (\ s a -> s{_assPreviousLink = a})

-- | JSON template for an Analytics AccountSummary. An AccountSummary is a
-- lightweight tree comprised of properties\/profiles.
--
-- /See:/ 'accountSummary' smart constructor.
data AccountSummary = AccountSummary
    { _asKind          :: !Text
    , _asWebProperties :: !(Maybe [Maybe WebPropertySummary])
    , _asName          :: !(Maybe Text)
    , _asId            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asKind'
--
-- * 'asWebProperties'
--
-- * 'asName'
--
-- * 'asId'
accountSummary
    :: AccountSummary
accountSummary =
    AccountSummary
    { _asKind = "analytics#accountSummary"
    , _asWebProperties = Nothing
    , _asName = Nothing
    , _asId = Nothing
    }

-- | Resource type for Analytics AccountSummary.
asKind :: Lens' AccountSummary Text
asKind = lens _asKind (\ s a -> s{_asKind = a})

-- | List of web properties under this account.
asWebProperties :: Lens' AccountSummary [Maybe WebPropertySummary]
asWebProperties
  = lens _asWebProperties
      (\ s a -> s{_asWebProperties = a})
      . _Default
      . _Coerce

-- | Account name.
asName :: Lens' AccountSummary (Maybe Text)
asName = lens _asName (\ s a -> s{_asName = a})

-- | Account ID.
asId :: Lens' AccountSummary (Maybe Text)
asId = lens _asId (\ s a -> s{_asId = a})

-- | JSON template for an Analytics account ticket. The account ticket
-- consists of the ticket ID and the basic information for the account,
-- property and profile.
--
-- /See:/ 'accountTicket' smart constructor.
data AccountTicket = AccountTicket
    { _atRedirectUri :: !(Maybe Text)
    , _atKind        :: !Text
    , _atProfile     :: !(Maybe (Maybe Profile))
    , _atAccount     :: !(Maybe (Maybe Account))
    , _atWebproperty :: !(Maybe (Maybe Webproperty))
    , _atId          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountTicket' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atRedirectUri'
--
-- * 'atKind'
--
-- * 'atProfile'
--
-- * 'atAccount'
--
-- * 'atWebproperty'
--
-- * 'atId'
accountTicket
    :: AccountTicket
accountTicket =
    AccountTicket
    { _atRedirectUri = Nothing
    , _atKind = "analytics#accountTicket"
    , _atProfile = Nothing
    , _atAccount = Nothing
    , _atWebproperty = Nothing
    , _atId = Nothing
    }

-- | Redirect URI where the user will be sent after accepting Terms of
-- Service. Must be configured in APIs console as a callback URL.
atRedirectUri :: Lens' AccountTicket (Maybe Text)
atRedirectUri
  = lens _atRedirectUri
      (\ s a -> s{_atRedirectUri = a})

-- | Resource type for account ticket.
atKind :: Lens' AccountTicket Text
atKind = lens _atKind (\ s a -> s{_atKind = a})

-- | View (Profile) for the account.
atProfile :: Lens' AccountTicket (Maybe (Maybe Profile))
atProfile
  = lens _atProfile (\ s a -> s{_atProfile = a})

-- | Account for this ticket.
atAccount :: Lens' AccountTicket (Maybe (Maybe Account))
atAccount
  = lens _atAccount (\ s a -> s{_atAccount = a})

-- | Web property for the account.
atWebproperty :: Lens' AccountTicket (Maybe (Maybe Webproperty))
atWebproperty
  = lens _atWebproperty
      (\ s a -> s{_atWebproperty = a})

-- | Account ticket ID used to access the account ticket.
atId :: Lens' AccountTicket (Maybe Text)
atId = lens _atId (\ s a -> s{_atId = a})

-- | An account collection provides a list of Analytics accounts to which a
-- user has access. The account collection is the entry point to all
-- management information. Each resource in the collection corresponds to a
-- single Analytics account.
--
-- /See:/ 'accounts' smart constructor.
data Accounts = Accounts
    { _aNextLink     :: !(Maybe Text)
    , _aItemsPerPage :: !(Maybe Int32)
    , _aKind         :: !Text
    , _aUsername     :: !(Maybe Text)
    , _aItems        :: !(Maybe [Maybe Account])
    , _aTotalResults :: !(Maybe Int32)
    , _aStartIndex   :: !(Maybe Int32)
    , _aPreviousLink :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Accounts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aNextLink'
--
-- * 'aItemsPerPage'
--
-- * 'aKind'
--
-- * 'aUsername'
--
-- * 'aItems'
--
-- * 'aTotalResults'
--
-- * 'aStartIndex'
--
-- * 'aPreviousLink'
accounts
    :: Accounts
accounts =
    Accounts
    { _aNextLink = Nothing
    , _aItemsPerPage = Nothing
    , _aKind = "analytics#accounts"
    , _aUsername = Nothing
    , _aItems = Nothing
    , _aTotalResults = Nothing
    , _aStartIndex = Nothing
    , _aPreviousLink = Nothing
    }

-- | Next link for this account collection.
aNextLink :: Lens' Accounts (Maybe Text)
aNextLink
  = lens _aNextLink (\ s a -> s{_aNextLink = a})

-- | The maximum number of entries the response can contain, regardless of
-- the actual number of entries returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
aItemsPerPage :: Lens' Accounts (Maybe Int32)
aItemsPerPage
  = lens _aItemsPerPage
      (\ s a -> s{_aItemsPerPage = a})

-- | Collection type.
aKind :: Lens' Accounts Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | Email ID of the authenticated user
aUsername :: Lens' Accounts (Maybe Text)
aUsername
  = lens _aUsername (\ s a -> s{_aUsername = a})

-- | A list of accounts.
aItems :: Lens' Accounts [Maybe Account]
aItems
  = lens _aItems (\ s a -> s{_aItems = a}) . _Default .
      _Coerce

-- | The total number of results for the query, regardless of the number of
-- results in the response.
aTotalResults :: Lens' Accounts (Maybe Int32)
aTotalResults
  = lens _aTotalResults
      (\ s a -> s{_aTotalResults = a})

-- | The starting index of the entries, which is 1 by default or otherwise
-- specified by the start-index query parameter.
aStartIndex :: Lens' Accounts (Maybe Int32)
aStartIndex
  = lens _aStartIndex (\ s a -> s{_aStartIndex = a})

-- | Previous link for this account collection.
aPreviousLink :: Lens' Accounts (Maybe Text)
aPreviousLink
  = lens _aPreviousLink
      (\ s a -> s{_aPreviousLink = a})

-- | JSON template for an AdWords account.
--
-- /See:/ 'adWordsAccount' smart constructor.
data AdWordsAccount = AdWordsAccount
    { _awaAutoTaggingEnabled :: !(Maybe Bool)
    , _awaKind               :: !Text
    , _awaCustomerId         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdWordsAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'awaAutoTaggingEnabled'
--
-- * 'awaKind'
--
-- * 'awaCustomerId'
adWordsAccount
    :: AdWordsAccount
adWordsAccount =
    AdWordsAccount
    { _awaAutoTaggingEnabled = Nothing
    , _awaKind = "analytics#adWordsAccount"
    , _awaCustomerId = Nothing
    }

-- | True if auto-tagging is enabled on the AdWords account. Read-only after
-- the insert operation.
awaAutoTaggingEnabled :: Lens' AdWordsAccount (Maybe Bool)
awaAutoTaggingEnabled
  = lens _awaAutoTaggingEnabled
      (\ s a -> s{_awaAutoTaggingEnabled = a})

-- | Resource type for AdWords account.
awaKind :: Lens' AdWordsAccount Text
awaKind = lens _awaKind (\ s a -> s{_awaKind = a})

-- | Customer ID. This field is required when creating an AdWords link.
awaCustomerId :: Lens' AdWordsAccount (Maybe Text)
awaCustomerId
  = lens _awaCustomerId
      (\ s a -> s{_awaCustomerId = a})

-- | Request template for the delete upload data request.
--
-- /See:/ 'analyticsDataimportDeleteUploadDataRequest' smart constructor.
newtype AnalyticsDataimportDeleteUploadDataRequest = AnalyticsDataimportDeleteUploadDataRequest
    { _addudrCustomDataImportUids :: Maybe [Text]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyticsDataimportDeleteUploadDataRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'addudrCustomDataImportUids'
analyticsDataimportDeleteUploadDataRequest
    :: AnalyticsDataimportDeleteUploadDataRequest
analyticsDataimportDeleteUploadDataRequest =
    AnalyticsDataimportDeleteUploadDataRequest
    { _addudrCustomDataImportUids = Nothing
    }

-- | A list of upload UIDs.
addudrCustomDataImportUids :: Lens' AnalyticsDataimportDeleteUploadDataRequest [Text]
addudrCustomDataImportUids
  = lens _addudrCustomDataImportUids
      (\ s a -> s{_addudrCustomDataImportUids = a})
      . _Default
      . _Coerce

-- | JSON template for a metadata column.
--
-- /See:/ 'column' smart constructor.
data Column = Column
    { _ccKind       :: !Text
    , _ccAttributes :: !(Maybe ColumnAttributes)
    , _ccId         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Column' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccKind'
--
-- * 'ccAttributes'
--
-- * 'ccId'
column
    :: Column
column =
    Column
    { _ccKind = "analytics#column"
    , _ccAttributes = Nothing
    , _ccId = Nothing
    }

-- | Resource type for Analytics column.
ccKind :: Lens' Column Text
ccKind = lens _ccKind (\ s a -> s{_ccKind = a})

-- | Map of attribute name and value for this column.
ccAttributes :: Lens' Column (Maybe ColumnAttributes)
ccAttributes
  = lens _ccAttributes (\ s a -> s{_ccAttributes = a})

-- | Column id.
ccId :: Lens' Column (Maybe Text)
ccId = lens _ccId (\ s a -> s{_ccId = a})

-- | Map of attribute name and value for this column.
--
-- /See:/ 'columnAttributes' smart constructor.
data ColumnAttributes =
    ColumnAttributes
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ColumnAttributes' with the minimum fields required to make a request.
--
columnAttributes
    :: ColumnAttributes
columnAttributes = ColumnAttributes

-- | Lists columns (dimensions and metrics) for a particular report type.
--
-- /See:/ 'columns' smart constructor.
data Columns = Columns
    { _colEtag           :: !(Maybe Text)
    , _colKind           :: !Text
    , _colItems          :: !(Maybe [Maybe Column])
    , _colTotalResults   :: !(Maybe Int32)
    , _colAttributeNames :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Columns' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'colEtag'
--
-- * 'colKind'
--
-- * 'colItems'
--
-- * 'colTotalResults'
--
-- * 'colAttributeNames'
columns
    :: Columns
columns =
    Columns
    { _colEtag = Nothing
    , _colKind = "analytics#columns"
    , _colItems = Nothing
    , _colTotalResults = Nothing
    , _colAttributeNames = Nothing
    }

-- | Etag of collection. This etag can be compared with the last response
-- etag to check if response has changed.
colEtag :: Lens' Columns (Maybe Text)
colEtag = lens _colEtag (\ s a -> s{_colEtag = a})

-- | Collection type.
colKind :: Lens' Columns Text
colKind = lens _colKind (\ s a -> s{_colKind = a})

-- | List of columns for a report type.
colItems :: Lens' Columns [Maybe Column]
colItems
  = lens _colItems (\ s a -> s{_colItems = a}) .
      _Default
      . _Coerce

-- | Total number of columns returned in the response.
colTotalResults :: Lens' Columns (Maybe Int32)
colTotalResults
  = lens _colTotalResults
      (\ s a -> s{_colTotalResults = a})

-- | List of attributes names returned by columns.
colAttributeNames :: Lens' Columns [Text]
colAttributeNames
  = lens _colAttributeNames
      (\ s a -> s{_colAttributeNames = a})
      . _Default
      . _Coerce

-- | JSON template for an Analytics custom data source.
--
-- /See:/ 'customDataSource' smart constructor.
data CustomDataSource = CustomDataSource
    { _cdsParentLink     :: !(Maybe CustomDataSourceParentLink)
    , _cdsWebPropertyId  :: !(Maybe Text)
    , _cdsChildLink      :: !(Maybe CustomDataSourceChildLink)
    , _cdsKind           :: !Text
    , _cdsCreated        :: !(Maybe UTCTime)
    , _cdsUploadType     :: !(Maybe Text)
    , _cdsImportBehavior :: !(Maybe Text)
    , _cdsSelfLink       :: !(Maybe Text)
    , _cdsAccountId      :: !(Maybe Text)
    , _cdsName           :: !(Maybe Text)
    , _cdsId             :: !(Maybe Text)
    , _cdsUpdated        :: !(Maybe UTCTime)
    , _cdsType           :: !(Maybe Text)
    , _cdsDescription    :: !(Maybe Text)
    , _cdsProfilesLinked :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomDataSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdsParentLink'
--
-- * 'cdsWebPropertyId'
--
-- * 'cdsChildLink'
--
-- * 'cdsKind'
--
-- * 'cdsCreated'
--
-- * 'cdsUploadType'
--
-- * 'cdsImportBehavior'
--
-- * 'cdsSelfLink'
--
-- * 'cdsAccountId'
--
-- * 'cdsName'
--
-- * 'cdsId'
--
-- * 'cdsUpdated'
--
-- * 'cdsType'
--
-- * 'cdsDescription'
--
-- * 'cdsProfilesLinked'
customDataSource
    :: CustomDataSource
customDataSource =
    CustomDataSource
    { _cdsParentLink = Nothing
    , _cdsWebPropertyId = Nothing
    , _cdsChildLink = Nothing
    , _cdsKind = "analytics#customDataSource"
    , _cdsCreated = Nothing
    , _cdsUploadType = Nothing
    , _cdsImportBehavior = Nothing
    , _cdsSelfLink = Nothing
    , _cdsAccountId = Nothing
    , _cdsName = Nothing
    , _cdsId = Nothing
    , _cdsUpdated = Nothing
    , _cdsType = Nothing
    , _cdsDescription = Nothing
    , _cdsProfilesLinked = Nothing
    }

-- | Parent link for this custom data source. Points to the web property to
-- which this custom data source belongs.
cdsParentLink :: Lens' CustomDataSource (Maybe CustomDataSourceParentLink)
cdsParentLink
  = lens _cdsParentLink
      (\ s a -> s{_cdsParentLink = a})

-- | Web property ID of the form UA-XXXXX-YY to which this custom data source
-- belongs.
cdsWebPropertyId :: Lens' CustomDataSource (Maybe Text)
cdsWebPropertyId
  = lens _cdsWebPropertyId
      (\ s a -> s{_cdsWebPropertyId = a})

cdsChildLink :: Lens' CustomDataSource (Maybe CustomDataSourceChildLink)
cdsChildLink
  = lens _cdsChildLink (\ s a -> s{_cdsChildLink = a})

-- | Resource type for Analytics custom data source.
cdsKind :: Lens' CustomDataSource Text
cdsKind = lens _cdsKind (\ s a -> s{_cdsKind = a})

-- | Time this custom data source was created.
cdsCreated :: Lens' CustomDataSource (Maybe UTCTime)
cdsCreated
  = lens _cdsCreated (\ s a -> s{_cdsCreated = a})

cdsUploadType :: Lens' CustomDataSource (Maybe Text)
cdsUploadType
  = lens _cdsUploadType
      (\ s a -> s{_cdsUploadType = a})

cdsImportBehavior :: Lens' CustomDataSource (Maybe Text)
cdsImportBehavior
  = lens _cdsImportBehavior
      (\ s a -> s{_cdsImportBehavior = a})

-- | Link for this Analytics custom data source.
cdsSelfLink :: Lens' CustomDataSource (Maybe Text)
cdsSelfLink
  = lens _cdsSelfLink (\ s a -> s{_cdsSelfLink = a})

-- | Account ID to which this custom data source belongs.
cdsAccountId :: Lens' CustomDataSource (Maybe Text)
cdsAccountId
  = lens _cdsAccountId (\ s a -> s{_cdsAccountId = a})

-- | Name of this custom data source.
cdsName :: Lens' CustomDataSource (Maybe Text)
cdsName = lens _cdsName (\ s a -> s{_cdsName = a})

-- | Custom data source ID.
cdsId :: Lens' CustomDataSource (Maybe Text)
cdsId = lens _cdsId (\ s a -> s{_cdsId = a})

-- | Time this custom data source was last modified.
cdsUpdated :: Lens' CustomDataSource (Maybe UTCTime)
cdsUpdated
  = lens _cdsUpdated (\ s a -> s{_cdsUpdated = a})

-- | Type of the custom data source.
cdsType :: Lens' CustomDataSource (Maybe Text)
cdsType = lens _cdsType (\ s a -> s{_cdsType = a})

-- | Description of custom data source.
cdsDescription :: Lens' CustomDataSource (Maybe Text)
cdsDescription
  = lens _cdsDescription
      (\ s a -> s{_cdsDescription = a})

-- | IDs of views (profiles) linked to the custom data source.
cdsProfilesLinked :: Lens' CustomDataSource [Text]
cdsProfilesLinked
  = lens _cdsProfilesLinked
      (\ s a -> s{_cdsProfilesLinked = a})
      . _Default
      . _Coerce

--
-- /See:/ 'customDataSourceChildLink' smart constructor.
data CustomDataSourceChildLink = CustomDataSourceChildLink
    { _cdsclHref :: !(Maybe Text)
    , _cdsclType :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomDataSourceChildLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdsclHref'
--
-- * 'cdsclType'
customDataSourceChildLink
    :: CustomDataSourceChildLink
customDataSourceChildLink =
    CustomDataSourceChildLink
    { _cdsclHref = Nothing
    , _cdsclType = Nothing
    }

-- | Link to the list of daily uploads for this custom data source. Link to
-- the list of uploads for this custom data source.
cdsclHref :: Lens' CustomDataSourceChildLink (Maybe Text)
cdsclHref
  = lens _cdsclHref (\ s a -> s{_cdsclHref = a})

-- | Value is \"analytics#dailyUploads\". Value is \"analytics#uploads\".
cdsclType :: Lens' CustomDataSourceChildLink (Maybe Text)
cdsclType
  = lens _cdsclType (\ s a -> s{_cdsclType = a})

-- | Parent link for this custom data source. Points to the web property to
-- which this custom data source belongs.
--
-- /See:/ 'customDataSourceParentLink' smart constructor.
data CustomDataSourceParentLink = CustomDataSourceParentLink
    { _cdsplHref :: !(Maybe Text)
    , _cdsplType :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomDataSourceParentLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdsplHref'
--
-- * 'cdsplType'
customDataSourceParentLink
    :: CustomDataSourceParentLink
customDataSourceParentLink =
    CustomDataSourceParentLink
    { _cdsplHref = Nothing
    , _cdsplType = "analytics#webproperty"
    }

-- | Link to the web property to which this custom data source belongs.
cdsplHref :: Lens' CustomDataSourceParentLink (Maybe Text)
cdsplHref
  = lens _cdsplHref (\ s a -> s{_cdsplHref = a})

-- | Value is \"analytics#webproperty\".
cdsplType :: Lens' CustomDataSourceParentLink Text
cdsplType
  = lens _cdsplType (\ s a -> s{_cdsplType = a})

-- | Lists Analytics custom data sources to which the user has access. Each
-- resource in the collection corresponds to a single Analytics custom data
-- source.
--
-- /See:/ 'customDataSources' smart constructor.
data CustomDataSources = CustomDataSources
    { _cdssNextLink     :: !(Maybe Text)
    , _cdssItemsPerPage :: !(Maybe Int32)
    , _cdssKind         :: !Text
    , _cdssUsername     :: !(Maybe Text)
    , _cdssItems        :: !(Maybe [Maybe CustomDataSource])
    , _cdssTotalResults :: !(Maybe Int32)
    , _cdssStartIndex   :: !(Maybe Int32)
    , _cdssPreviousLink :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomDataSources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdssNextLink'
--
-- * 'cdssItemsPerPage'
--
-- * 'cdssKind'
--
-- * 'cdssUsername'
--
-- * 'cdssItems'
--
-- * 'cdssTotalResults'
--
-- * 'cdssStartIndex'
--
-- * 'cdssPreviousLink'
customDataSources
    :: CustomDataSources
customDataSources =
    CustomDataSources
    { _cdssNextLink = Nothing
    , _cdssItemsPerPage = Nothing
    , _cdssKind = "analytics#customDataSources"
    , _cdssUsername = Nothing
    , _cdssItems = Nothing
    , _cdssTotalResults = Nothing
    , _cdssStartIndex = Nothing
    , _cdssPreviousLink = Nothing
    }

-- | Link to next page for this custom data source collection.
cdssNextLink :: Lens' CustomDataSources (Maybe Text)
cdssNextLink
  = lens _cdssNextLink (\ s a -> s{_cdssNextLink = a})

-- | The maximum number of resources the response can contain, regardless of
-- the actual number of resources returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
cdssItemsPerPage :: Lens' CustomDataSources (Maybe Int32)
cdssItemsPerPage
  = lens _cdssItemsPerPage
      (\ s a -> s{_cdssItemsPerPage = a})

-- | Collection type.
cdssKind :: Lens' CustomDataSources Text
cdssKind = lens _cdssKind (\ s a -> s{_cdssKind = a})

-- | Email ID of the authenticated user
cdssUsername :: Lens' CustomDataSources (Maybe Text)
cdssUsername
  = lens _cdssUsername (\ s a -> s{_cdssUsername = a})

-- | Collection of custom data sources.
cdssItems :: Lens' CustomDataSources [Maybe CustomDataSource]
cdssItems
  = lens _cdssItems (\ s a -> s{_cdssItems = a}) .
      _Default
      . _Coerce

-- | The total number of results for the query, regardless of the number of
-- results in the response.
cdssTotalResults :: Lens' CustomDataSources (Maybe Int32)
cdssTotalResults
  = lens _cdssTotalResults
      (\ s a -> s{_cdssTotalResults = a})

-- | The starting index of the resources, which is 1 by default or otherwise
-- specified by the start-index query parameter.
cdssStartIndex :: Lens' CustomDataSources (Maybe Int32)
cdssStartIndex
  = lens _cdssStartIndex
      (\ s a -> s{_cdssStartIndex = a})

-- | Link to previous page for this custom data source collection.
cdssPreviousLink :: Lens' CustomDataSources (Maybe Text)
cdssPreviousLink
  = lens _cdssPreviousLink
      (\ s a -> s{_cdssPreviousLink = a})

-- | JSON template for Analytics Custom Dimension.
--
-- /See:/ 'customDimension' smart constructor.
data CustomDimension = CustomDimension
    { _cusParentLink    :: !(Maybe CustomDimensionParentLink)
    , _cusWebPropertyId :: !(Maybe Text)
    , _cusKind          :: !Text
    , _cusCreated       :: !(Maybe UTCTime)
    , _cusActive        :: !(Maybe Bool)
    , _cusSelfLink      :: !(Maybe Text)
    , _cusAccountId     :: !(Maybe Text)
    , _cusName          :: !(Maybe Text)
    , _cusScope         :: !(Maybe Text)
    , _cusId            :: !(Maybe Text)
    , _cusUpdated       :: !(Maybe UTCTime)
    , _cusIndex         :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomDimension' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cusParentLink'
--
-- * 'cusWebPropertyId'
--
-- * 'cusKind'
--
-- * 'cusCreated'
--
-- * 'cusActive'
--
-- * 'cusSelfLink'
--
-- * 'cusAccountId'
--
-- * 'cusName'
--
-- * 'cusScope'
--
-- * 'cusId'
--
-- * 'cusUpdated'
--
-- * 'cusIndex'
customDimension
    :: CustomDimension
customDimension =
    CustomDimension
    { _cusParentLink = Nothing
    , _cusWebPropertyId = Nothing
    , _cusKind = "analytics#customDimension"
    , _cusCreated = Nothing
    , _cusActive = Nothing
    , _cusSelfLink = Nothing
    , _cusAccountId = Nothing
    , _cusName = Nothing
    , _cusScope = Nothing
    , _cusId = Nothing
    , _cusUpdated = Nothing
    , _cusIndex = Nothing
    }

-- | Parent link for the custom dimension. Points to the property to which
-- the custom dimension belongs.
cusParentLink :: Lens' CustomDimension (Maybe CustomDimensionParentLink)
cusParentLink
  = lens _cusParentLink
      (\ s a -> s{_cusParentLink = a})

-- | Property ID.
cusWebPropertyId :: Lens' CustomDimension (Maybe Text)
cusWebPropertyId
  = lens _cusWebPropertyId
      (\ s a -> s{_cusWebPropertyId = a})

-- | Kind value for a custom dimension. Set to \"analytics#customDimension\".
-- It is a read-only field.
cusKind :: Lens' CustomDimension Text
cusKind = lens _cusKind (\ s a -> s{_cusKind = a})

-- | Time the custom dimension was created.
cusCreated :: Lens' CustomDimension (Maybe UTCTime)
cusCreated
  = lens _cusCreated (\ s a -> s{_cusCreated = a})

-- | Boolean indicating whether the custom dimension is active.
cusActive :: Lens' CustomDimension (Maybe Bool)
cusActive
  = lens _cusActive (\ s a -> s{_cusActive = a})

-- | Link for the custom dimension
cusSelfLink :: Lens' CustomDimension (Maybe Text)
cusSelfLink
  = lens _cusSelfLink (\ s a -> s{_cusSelfLink = a})

-- | Account ID.
cusAccountId :: Lens' CustomDimension (Maybe Text)
cusAccountId
  = lens _cusAccountId (\ s a -> s{_cusAccountId = a})

-- | Name of the custom dimension.
cusName :: Lens' CustomDimension (Maybe Text)
cusName = lens _cusName (\ s a -> s{_cusName = a})

-- | Scope of the custom dimension: HIT, SESSION, USER or PRODUCT.
cusScope :: Lens' CustomDimension (Maybe Text)
cusScope = lens _cusScope (\ s a -> s{_cusScope = a})

-- | Custom dimension ID.
cusId :: Lens' CustomDimension (Maybe Text)
cusId = lens _cusId (\ s a -> s{_cusId = a})

-- | Time the custom dimension was last modified.
cusUpdated :: Lens' CustomDimension (Maybe UTCTime)
cusUpdated
  = lens _cusUpdated (\ s a -> s{_cusUpdated = a})

-- | Index of the custom dimension.
cusIndex :: Lens' CustomDimension (Maybe Int32)
cusIndex = lens _cusIndex (\ s a -> s{_cusIndex = a})

-- | Parent link for the custom dimension. Points to the property to which
-- the custom dimension belongs.
--
-- /See:/ 'customDimensionParentLink' smart constructor.
data CustomDimensionParentLink = CustomDimensionParentLink
    { _cdplHref :: !(Maybe Text)
    , _cdplType :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomDimensionParentLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdplHref'
--
-- * 'cdplType'
customDimensionParentLink
    :: CustomDimensionParentLink
customDimensionParentLink =
    CustomDimensionParentLink
    { _cdplHref = Nothing
    , _cdplType = "analytics#webproperty"
    }

-- | Link to the property to which the custom dimension belongs.
cdplHref :: Lens' CustomDimensionParentLink (Maybe Text)
cdplHref = lens _cdplHref (\ s a -> s{_cdplHref = a})

-- | Type of the parent link. Set to \"analytics#webproperty\".
cdplType :: Lens' CustomDimensionParentLink Text
cdplType = lens _cdplType (\ s a -> s{_cdplType = a})

-- | A custom dimension collection lists Analytics custom dimensions to which
-- the user has access. Each resource in the collection corresponds to a
-- single Analytics custom dimension.
--
-- /See:/ 'customDimensions' smart constructor.
data CustomDimensions = CustomDimensions
    { _cdNextLink     :: !(Maybe Text)
    , _cdItemsPerPage :: !(Maybe Int32)
    , _cdKind         :: !Text
    , _cdUsername     :: !(Maybe Text)
    , _cdItems        :: !(Maybe [Maybe CustomDimension])
    , _cdTotalResults :: !(Maybe Int32)
    , _cdStartIndex   :: !(Maybe Int32)
    , _cdPreviousLink :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomDimensions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdNextLink'
--
-- * 'cdItemsPerPage'
--
-- * 'cdKind'
--
-- * 'cdUsername'
--
-- * 'cdItems'
--
-- * 'cdTotalResults'
--
-- * 'cdStartIndex'
--
-- * 'cdPreviousLink'
customDimensions
    :: CustomDimensions
customDimensions =
    CustomDimensions
    { _cdNextLink = Nothing
    , _cdItemsPerPage = Nothing
    , _cdKind = "analytics#customDimensions"
    , _cdUsername = Nothing
    , _cdItems = Nothing
    , _cdTotalResults = Nothing
    , _cdStartIndex = Nothing
    , _cdPreviousLink = Nothing
    }

-- | Link to next page for this custom dimension collection.
cdNextLink :: Lens' CustomDimensions (Maybe Text)
cdNextLink
  = lens _cdNextLink (\ s a -> s{_cdNextLink = a})

-- | The maximum number of resources the response can contain, regardless of
-- the actual number of resources returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
cdItemsPerPage :: Lens' CustomDimensions (Maybe Int32)
cdItemsPerPage
  = lens _cdItemsPerPage
      (\ s a -> s{_cdItemsPerPage = a})

-- | Collection type.
cdKind :: Lens' CustomDimensions Text
cdKind = lens _cdKind (\ s a -> s{_cdKind = a})

-- | Email ID of the authenticated user
cdUsername :: Lens' CustomDimensions (Maybe Text)
cdUsername
  = lens _cdUsername (\ s a -> s{_cdUsername = a})

-- | Collection of custom dimensions.
cdItems :: Lens' CustomDimensions [Maybe CustomDimension]
cdItems
  = lens _cdItems (\ s a -> s{_cdItems = a}) . _Default
      . _Coerce

-- | The total number of results for the query, regardless of the number of
-- results in the response.
cdTotalResults :: Lens' CustomDimensions (Maybe Int32)
cdTotalResults
  = lens _cdTotalResults
      (\ s a -> s{_cdTotalResults = a})

-- | The starting index of the resources, which is 1 by default or otherwise
-- specified by the start-index query parameter.
cdStartIndex :: Lens' CustomDimensions (Maybe Int32)
cdStartIndex
  = lens _cdStartIndex (\ s a -> s{_cdStartIndex = a})

-- | Link to previous page for this custom dimension collection.
cdPreviousLink :: Lens' CustomDimensions (Maybe Text)
cdPreviousLink
  = lens _cdPreviousLink
      (\ s a -> s{_cdPreviousLink = a})

-- | JSON template for Analytics Custom Metric.
--
-- /See:/ 'customMetric' smart constructor.
data CustomMetric = CustomMetric
    { _cParentLink    :: !(Maybe CustomMetricParentLink)
    , _cWebPropertyId :: !(Maybe Text)
    , _cKind          :: !Text
    , _cMaxValue      :: !(Maybe Text)
    , _cCreated       :: !(Maybe UTCTime)
    , _cMinValue      :: !(Maybe Text)
    , _cActive        :: !(Maybe Bool)
    , _cSelfLink      :: !(Maybe Text)
    , _cAccountId     :: !(Maybe Text)
    , _cName          :: !(Maybe Text)
    , _cScope         :: !(Maybe Text)
    , _cId            :: !(Maybe Text)
    , _cUpdated       :: !(Maybe UTCTime)
    , _cType          :: !(Maybe Text)
    , _cIndex         :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomMetric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cParentLink'
--
-- * 'cWebPropertyId'
--
-- * 'cKind'
--
-- * 'cMaxValue'
--
-- * 'cCreated'
--
-- * 'cMinValue'
--
-- * 'cActive'
--
-- * 'cSelfLink'
--
-- * 'cAccountId'
--
-- * 'cName'
--
-- * 'cScope'
--
-- * 'cId'
--
-- * 'cUpdated'
--
-- * 'cType'
--
-- * 'cIndex'
customMetric
    :: CustomMetric
customMetric =
    CustomMetric
    { _cParentLink = Nothing
    , _cWebPropertyId = Nothing
    , _cKind = "analytics#customMetric"
    , _cMaxValue = Nothing
    , _cCreated = Nothing
    , _cMinValue = Nothing
    , _cActive = Nothing
    , _cSelfLink = Nothing
    , _cAccountId = Nothing
    , _cName = Nothing
    , _cScope = Nothing
    , _cId = Nothing
    , _cUpdated = Nothing
    , _cType = Nothing
    , _cIndex = Nothing
    }

-- | Parent link for the custom metric. Points to the property to which the
-- custom metric belongs.
cParentLink :: Lens' CustomMetric (Maybe CustomMetricParentLink)
cParentLink
  = lens _cParentLink (\ s a -> s{_cParentLink = a})

-- | Property ID.
cWebPropertyId :: Lens' CustomMetric (Maybe Text)
cWebPropertyId
  = lens _cWebPropertyId
      (\ s a -> s{_cWebPropertyId = a})

-- | Kind value for a custom metric. Set to \"analytics#customMetric\". It is
-- a read-only field.
cKind :: Lens' CustomMetric Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | Max value of custom metric.
cMaxValue :: Lens' CustomMetric (Maybe Text)
cMaxValue
  = lens _cMaxValue (\ s a -> s{_cMaxValue = a})

-- | Time the custom metric was created.
cCreated :: Lens' CustomMetric (Maybe UTCTime)
cCreated = lens _cCreated (\ s a -> s{_cCreated = a})

-- | Min value of custom metric.
cMinValue :: Lens' CustomMetric (Maybe Text)
cMinValue
  = lens _cMinValue (\ s a -> s{_cMinValue = a})

-- | Boolean indicating whether the custom metric is active.
cActive :: Lens' CustomMetric (Maybe Bool)
cActive = lens _cActive (\ s a -> s{_cActive = a})

-- | Link for the custom metric
cSelfLink :: Lens' CustomMetric (Maybe Text)
cSelfLink
  = lens _cSelfLink (\ s a -> s{_cSelfLink = a})

-- | Account ID.
cAccountId :: Lens' CustomMetric (Maybe Text)
cAccountId
  = lens _cAccountId (\ s a -> s{_cAccountId = a})

-- | Name of the custom metric.
cName :: Lens' CustomMetric (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | Scope of the custom metric: HIT or PRODUCT.
cScope :: Lens' CustomMetric (Maybe Text)
cScope = lens _cScope (\ s a -> s{_cScope = a})

-- | Custom metric ID.
cId :: Lens' CustomMetric (Maybe Text)
cId = lens _cId (\ s a -> s{_cId = a})

-- | Time the custom metric was last modified.
cUpdated :: Lens' CustomMetric (Maybe UTCTime)
cUpdated = lens _cUpdated (\ s a -> s{_cUpdated = a})

-- | Data type of custom metric.
cType :: Lens' CustomMetric (Maybe Text)
cType = lens _cType (\ s a -> s{_cType = a})

-- | Index of the custom metric.
cIndex :: Lens' CustomMetric (Maybe Int32)
cIndex = lens _cIndex (\ s a -> s{_cIndex = a})

-- | Parent link for the custom metric. Points to the property to which the
-- custom metric belongs.
--
-- /See:/ 'customMetricParentLink' smart constructor.
data CustomMetricParentLink = CustomMetricParentLink
    { _cmplHref :: !(Maybe Text)
    , _cmplType :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomMetricParentLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmplHref'
--
-- * 'cmplType'
customMetricParentLink
    :: CustomMetricParentLink
customMetricParentLink =
    CustomMetricParentLink
    { _cmplHref = Nothing
    , _cmplType = "analytics#webproperty"
    }

-- | Link to the property to which the custom metric belongs.
cmplHref :: Lens' CustomMetricParentLink (Maybe Text)
cmplHref = lens _cmplHref (\ s a -> s{_cmplHref = a})

-- | Type of the parent link. Set to \"analytics#webproperty\".
cmplType :: Lens' CustomMetricParentLink Text
cmplType = lens _cmplType (\ s a -> s{_cmplType = a})

-- | A custom metric collection lists Analytics custom metrics to which the
-- user has access. Each resource in the collection corresponds to a single
-- Analytics custom metric.
--
-- /See:/ 'customMetrics' smart constructor.
data CustomMetrics = CustomMetrics
    { _cmNextLink     :: !(Maybe Text)
    , _cmItemsPerPage :: !(Maybe Int32)
    , _cmKind         :: !Text
    , _cmUsername     :: !(Maybe Text)
    , _cmItems        :: !(Maybe [Maybe CustomMetric])
    , _cmTotalResults :: !(Maybe Int32)
    , _cmStartIndex   :: !(Maybe Int32)
    , _cmPreviousLink :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmNextLink'
--
-- * 'cmItemsPerPage'
--
-- * 'cmKind'
--
-- * 'cmUsername'
--
-- * 'cmItems'
--
-- * 'cmTotalResults'
--
-- * 'cmStartIndex'
--
-- * 'cmPreviousLink'
customMetrics
    :: CustomMetrics
customMetrics =
    CustomMetrics
    { _cmNextLink = Nothing
    , _cmItemsPerPage = Nothing
    , _cmKind = "analytics#customMetrics"
    , _cmUsername = Nothing
    , _cmItems = Nothing
    , _cmTotalResults = Nothing
    , _cmStartIndex = Nothing
    , _cmPreviousLink = Nothing
    }

-- | Link to next page for this custom metric collection.
cmNextLink :: Lens' CustomMetrics (Maybe Text)
cmNextLink
  = lens _cmNextLink (\ s a -> s{_cmNextLink = a})

-- | The maximum number of resources the response can contain, regardless of
-- the actual number of resources returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
cmItemsPerPage :: Lens' CustomMetrics (Maybe Int32)
cmItemsPerPage
  = lens _cmItemsPerPage
      (\ s a -> s{_cmItemsPerPage = a})

-- | Collection type.
cmKind :: Lens' CustomMetrics Text
cmKind = lens _cmKind (\ s a -> s{_cmKind = a})

-- | Email ID of the authenticated user
cmUsername :: Lens' CustomMetrics (Maybe Text)
cmUsername
  = lens _cmUsername (\ s a -> s{_cmUsername = a})

-- | Collection of custom metrics.
cmItems :: Lens' CustomMetrics [Maybe CustomMetric]
cmItems
  = lens _cmItems (\ s a -> s{_cmItems = a}) . _Default
      . _Coerce

-- | The total number of results for the query, regardless of the number of
-- results in the response.
cmTotalResults :: Lens' CustomMetrics (Maybe Int32)
cmTotalResults
  = lens _cmTotalResults
      (\ s a -> s{_cmTotalResults = a})

-- | The starting index of the resources, which is 1 by default or otherwise
-- specified by the start-index query parameter.
cmStartIndex :: Lens' CustomMetrics (Maybe Int32)
cmStartIndex
  = lens _cmStartIndex (\ s a -> s{_cmStartIndex = a})

-- | Link to previous page for this custom metric collection.
cmPreviousLink :: Lens' CustomMetrics (Maybe Text)
cmPreviousLink
  = lens _cmPreviousLink
      (\ s a -> s{_cmPreviousLink = a})

-- | JSON template for Analytics Entity AdWords Link.
--
-- /See:/ 'entityAdWordsLink' smart constructor.
data EntityAdWordsLink = EntityAdWordsLink
    { _entAdWordsAccounts :: !(Maybe [Maybe AdWordsAccount])
    , _entProfileIds      :: !(Maybe [Text])
    , _entKind            :: !Text
    , _entSelfLink        :: !(Maybe Text)
    , _entName            :: !(Maybe Text)
    , _entId              :: !(Maybe Text)
    , _entEntity          :: !(Maybe EntityAdWordsLinkEntity)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntityAdWordsLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'entAdWordsAccounts'
--
-- * 'entProfileIds'
--
-- * 'entKind'
--
-- * 'entSelfLink'
--
-- * 'entName'
--
-- * 'entId'
--
-- * 'entEntity'
entityAdWordsLink
    :: EntityAdWordsLink
entityAdWordsLink =
    EntityAdWordsLink
    { _entAdWordsAccounts = Nothing
    , _entProfileIds = Nothing
    , _entKind = "analytics#entityAdWordsLink"
    , _entSelfLink = Nothing
    , _entName = Nothing
    , _entId = Nothing
    , _entEntity = Nothing
    }

-- | A list of AdWords client accounts. These cannot be MCC accounts. This
-- field is required when creating an AdWords link. It cannot be empty.
entAdWordsAccounts :: Lens' EntityAdWordsLink [Maybe AdWordsAccount]
entAdWordsAccounts
  = lens _entAdWordsAccounts
      (\ s a -> s{_entAdWordsAccounts = a})
      . _Default
      . _Coerce

-- | IDs of linked Views (Profiles) represented as strings.
entProfileIds :: Lens' EntityAdWordsLink [Text]
entProfileIds
  = lens _entProfileIds
      (\ s a -> s{_entProfileIds = a})
      . _Default
      . _Coerce

-- | Resource type for entity AdWords link.
entKind :: Lens' EntityAdWordsLink Text
entKind = lens _entKind (\ s a -> s{_entKind = a})

-- | URL link for this Google Analytics - Google AdWords link.
entSelfLink :: Lens' EntityAdWordsLink (Maybe Text)
entSelfLink
  = lens _entSelfLink (\ s a -> s{_entSelfLink = a})

-- | Name of the link. This field is required when creating an AdWords link.
entName :: Lens' EntityAdWordsLink (Maybe Text)
entName = lens _entName (\ s a -> s{_entName = a})

-- | Entity AdWords link ID
entId :: Lens' EntityAdWordsLink (Maybe Text)
entId = lens _entId (\ s a -> s{_entId = a})

-- | Web property being linked.
entEntity :: Lens' EntityAdWordsLink (Maybe EntityAdWordsLinkEntity)
entEntity
  = lens _entEntity (\ s a -> s{_entEntity = a})

-- | Web property being linked.
--
-- /See:/ 'entityAdWordsLinkEntity' smart constructor.
newtype EntityAdWordsLinkEntity = EntityAdWordsLinkEntity
    { _eawleWebPropertyRef :: Maybe (Maybe WebPropertyRef)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntityAdWordsLinkEntity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eawleWebPropertyRef'
entityAdWordsLinkEntity
    :: EntityAdWordsLinkEntity
entityAdWordsLinkEntity =
    EntityAdWordsLinkEntity
    { _eawleWebPropertyRef = Nothing
    }

eawleWebPropertyRef :: Lens' EntityAdWordsLinkEntity (Maybe (Maybe WebPropertyRef))
eawleWebPropertyRef
  = lens _eawleWebPropertyRef
      (\ s a -> s{_eawleWebPropertyRef = a})

-- | An entity AdWords link collection provides a list of GA-AdWords links
-- Each resource in this collection corresponds to a single link.
--
-- /See:/ 'entityAdWordsLinks' smart constructor.
data EntityAdWordsLinks = EntityAdWordsLinks
    { _eawlNextLink     :: !(Maybe Text)
    , _eawlItemsPerPage :: !(Maybe Int32)
    , _eawlKind         :: !Text
    , _eawlItems        :: !(Maybe [Maybe EntityAdWordsLink])
    , _eawlTotalResults :: !(Maybe Int32)
    , _eawlStartIndex   :: !(Maybe Int32)
    , _eawlPreviousLink :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntityAdWordsLinks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eawlNextLink'
--
-- * 'eawlItemsPerPage'
--
-- * 'eawlKind'
--
-- * 'eawlItems'
--
-- * 'eawlTotalResults'
--
-- * 'eawlStartIndex'
--
-- * 'eawlPreviousLink'
entityAdWordsLinks
    :: EntityAdWordsLinks
entityAdWordsLinks =
    EntityAdWordsLinks
    { _eawlNextLink = Nothing
    , _eawlItemsPerPage = Nothing
    , _eawlKind = "analytics#entityAdWordsLinks"
    , _eawlItems = Nothing
    , _eawlTotalResults = Nothing
    , _eawlStartIndex = Nothing
    , _eawlPreviousLink = Nothing
    }

-- | Next link for this AdWords link collection.
eawlNextLink :: Lens' EntityAdWordsLinks (Maybe Text)
eawlNextLink
  = lens _eawlNextLink (\ s a -> s{_eawlNextLink = a})

-- | The maximum number of entries the response can contain, regardless of
-- the actual number of entries returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
eawlItemsPerPage :: Lens' EntityAdWordsLinks (Maybe Int32)
eawlItemsPerPage
  = lens _eawlItemsPerPage
      (\ s a -> s{_eawlItemsPerPage = a})

-- | Collection type.
eawlKind :: Lens' EntityAdWordsLinks Text
eawlKind = lens _eawlKind (\ s a -> s{_eawlKind = a})

-- | A list of entity AdWords links.
eawlItems :: Lens' EntityAdWordsLinks [Maybe EntityAdWordsLink]
eawlItems
  = lens _eawlItems (\ s a -> s{_eawlItems = a}) .
      _Default
      . _Coerce

-- | The total number of results for the query, regardless of the number of
-- results in the response.
eawlTotalResults :: Lens' EntityAdWordsLinks (Maybe Int32)
eawlTotalResults
  = lens _eawlTotalResults
      (\ s a -> s{_eawlTotalResults = a})

-- | The starting index of the entries, which is 1 by default or otherwise
-- specified by the start-index query parameter.
eawlStartIndex :: Lens' EntityAdWordsLinks (Maybe Int32)
eawlStartIndex
  = lens _eawlStartIndex
      (\ s a -> s{_eawlStartIndex = a})

-- | Previous link for this AdWords link collection.
eawlPreviousLink :: Lens' EntityAdWordsLinks (Maybe Text)
eawlPreviousLink
  = lens _eawlPreviousLink
      (\ s a -> s{_eawlPreviousLink = a})

-- | JSON template for an Analytics Entity-User Link. Returns permissions
-- that a user has for an entity.
--
-- /See:/ 'entityUserLink' smart constructor.
data EntityUserLink = EntityUserLink
    { _eulKind        :: !Text
    , _eulUserRef     :: !(Maybe (Maybe UserRef))
    , _eulSelfLink    :: !(Maybe Text)
    , _eulId          :: !(Maybe Text)
    , _eulPermissions :: !(Maybe EntityUserLinkPermissions)
    , _eulEntity      :: !(Maybe EntityUserLinkEntity)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntityUserLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eulKind'
--
-- * 'eulUserRef'
--
-- * 'eulSelfLink'
--
-- * 'eulId'
--
-- * 'eulPermissions'
--
-- * 'eulEntity'
entityUserLink
    :: EntityUserLink
entityUserLink =
    EntityUserLink
    { _eulKind = "analytics#entityUserLink"
    , _eulUserRef = Nothing
    , _eulSelfLink = Nothing
    , _eulId = Nothing
    , _eulPermissions = Nothing
    , _eulEntity = Nothing
    }

-- | Resource type for entity user link.
eulKind :: Lens' EntityUserLink Text
eulKind = lens _eulKind (\ s a -> s{_eulKind = a})

-- | User reference.
eulUserRef :: Lens' EntityUserLink (Maybe (Maybe UserRef))
eulUserRef
  = lens _eulUserRef (\ s a -> s{_eulUserRef = a})

-- | Self link for this resource.
eulSelfLink :: Lens' EntityUserLink (Maybe Text)
eulSelfLink
  = lens _eulSelfLink (\ s a -> s{_eulSelfLink = a})

-- | Entity user link ID
eulId :: Lens' EntityUserLink (Maybe Text)
eulId = lens _eulId (\ s a -> s{_eulId = a})

-- | Permissions the user has for this entity.
eulPermissions :: Lens' EntityUserLink (Maybe EntityUserLinkPermissions)
eulPermissions
  = lens _eulPermissions
      (\ s a -> s{_eulPermissions = a})

-- | Entity for this link. It can be an account, a web property, or a view
-- (profile).
eulEntity :: Lens' EntityUserLink (Maybe EntityUserLinkEntity)
eulEntity
  = lens _eulEntity (\ s a -> s{_eulEntity = a})

-- | Entity for this link. It can be an account, a web property, or a view
-- (profile).
--
-- /See:/ 'entityUserLinkEntity' smart constructor.
data EntityUserLinkEntity = EntityUserLinkEntity
    { _euleProfileRef     :: !(Maybe (Maybe ProfileRef))
    , _euleAccountRef     :: !(Maybe (Maybe AccountRef))
    , _euleWebPropertyRef :: !(Maybe (Maybe WebPropertyRef))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntityUserLinkEntity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'euleProfileRef'
--
-- * 'euleAccountRef'
--
-- * 'euleWebPropertyRef'
entityUserLinkEntity
    :: EntityUserLinkEntity
entityUserLinkEntity =
    EntityUserLinkEntity
    { _euleProfileRef = Nothing
    , _euleAccountRef = Nothing
    , _euleWebPropertyRef = Nothing
    }

-- | View (Profile) for this link.
euleProfileRef :: Lens' EntityUserLinkEntity (Maybe (Maybe ProfileRef))
euleProfileRef
  = lens _euleProfileRef
      (\ s a -> s{_euleProfileRef = a})

-- | Account for this link.
euleAccountRef :: Lens' EntityUserLinkEntity (Maybe (Maybe AccountRef))
euleAccountRef
  = lens _euleAccountRef
      (\ s a -> s{_euleAccountRef = a})

-- | Web property for this link.
euleWebPropertyRef :: Lens' EntityUserLinkEntity (Maybe (Maybe WebPropertyRef))
euleWebPropertyRef
  = lens _euleWebPropertyRef
      (\ s a -> s{_euleWebPropertyRef = a})

-- | Permissions the user has for this entity.
--
-- /See:/ 'entityUserLinkPermissions' smart constructor.
data EntityUserLinkPermissions = EntityUserLinkPermissions
    { _eulpLocal     :: !(Maybe [Text])
    , _eulpEffective :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntityUserLinkPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eulpLocal'
--
-- * 'eulpEffective'
entityUserLinkPermissions
    :: EntityUserLinkPermissions
entityUserLinkPermissions =
    EntityUserLinkPermissions
    { _eulpLocal = Nothing
    , _eulpEffective = Nothing
    }

-- | Permissions that a user has been assigned at this very level. Does not
-- include any implied or inherited permissions. Local permissions are
-- modifiable.
eulpLocal :: Lens' EntityUserLinkPermissions [Text]
eulpLocal
  = lens _eulpLocal (\ s a -> s{_eulpLocal = a}) .
      _Default
      . _Coerce

-- | Effective permissions represent all the permissions that a user has for
-- this entity. These include any implied permissions (e.g., EDIT implies
-- VIEW) or inherited permissions from the parent entity. Effective
-- permissions are read-only.
eulpEffective :: Lens' EntityUserLinkPermissions [Text]
eulpEffective
  = lens _eulpEffective
      (\ s a -> s{_eulpEffective = a})
      . _Default
      . _Coerce

-- | An entity user link collection provides a list of Analytics ACL links
-- Each resource in this collection corresponds to a single link.
--
-- /See:/ 'entityUserLinks' smart constructor.
data EntityUserLinks = EntityUserLinks
    { _eulsNextLink     :: !(Maybe Text)
    , _eulsItemsPerPage :: !(Maybe Int32)
    , _eulsKind         :: !Text
    , _eulsItems        :: !(Maybe [Maybe EntityUserLink])
    , _eulsTotalResults :: !(Maybe Int32)
    , _eulsStartIndex   :: !(Maybe Int32)
    , _eulsPreviousLink :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntityUserLinks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eulsNextLink'
--
-- * 'eulsItemsPerPage'
--
-- * 'eulsKind'
--
-- * 'eulsItems'
--
-- * 'eulsTotalResults'
--
-- * 'eulsStartIndex'
--
-- * 'eulsPreviousLink'
entityUserLinks
    :: EntityUserLinks
entityUserLinks =
    EntityUserLinks
    { _eulsNextLink = Nothing
    , _eulsItemsPerPage = Nothing
    , _eulsKind = "analytics#entityUserLinks"
    , _eulsItems = Nothing
    , _eulsTotalResults = Nothing
    , _eulsStartIndex = Nothing
    , _eulsPreviousLink = Nothing
    }

-- | Next link for this account collection.
eulsNextLink :: Lens' EntityUserLinks (Maybe Text)
eulsNextLink
  = lens _eulsNextLink (\ s a -> s{_eulsNextLink = a})

-- | The maximum number of entries the response can contain, regardless of
-- the actual number of entries returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
eulsItemsPerPage :: Lens' EntityUserLinks (Maybe Int32)
eulsItemsPerPage
  = lens _eulsItemsPerPage
      (\ s a -> s{_eulsItemsPerPage = a})

-- | Collection type.
eulsKind :: Lens' EntityUserLinks Text
eulsKind = lens _eulsKind (\ s a -> s{_eulsKind = a})

-- | A list of entity user links.
eulsItems :: Lens' EntityUserLinks [Maybe EntityUserLink]
eulsItems
  = lens _eulsItems (\ s a -> s{_eulsItems = a}) .
      _Default
      . _Coerce

-- | The total number of results for the query, regardless of the number of
-- results in the response.
eulsTotalResults :: Lens' EntityUserLinks (Maybe Int32)
eulsTotalResults
  = lens _eulsTotalResults
      (\ s a -> s{_eulsTotalResults = a})

-- | The starting index of the entries, which is 1 by default or otherwise
-- specified by the start-index query parameter.
eulsStartIndex :: Lens' EntityUserLinks (Maybe Int32)
eulsStartIndex
  = lens _eulsStartIndex
      (\ s a -> s{_eulsStartIndex = a})

-- | Previous link for this account collection.
eulsPreviousLink :: Lens' EntityUserLinks (Maybe Text)
eulsPreviousLink
  = lens _eulsPreviousLink
      (\ s a -> s{_eulsPreviousLink = a})

-- | JSON template for Analytics experiment resource.
--
-- /See:/ 'experiment' smart constructor.
data Experiment = Experiment
    { _expParentLink                     :: !(Maybe ExperimentParentLink)
    , _expEqualWeighting                 :: !(Maybe Bool)
    , _expStatus                         :: !(Maybe Text)
    , _expWebPropertyId                  :: !(Maybe Text)
    , _expStartTime                      :: !(Maybe UTCTime)
    , _expSnippet                        :: !(Maybe Text)
    , _expKind                           :: !Text
    , _expCreated                        :: !(Maybe UTCTime)
    , _expReasonExperimentEnded          :: !(Maybe Text)
    , _expTrafficCoverage                :: !(Maybe Double)
    , _expEditableInGaUi                 :: !(Maybe Bool)
    , _expMinimumExperimentLengthInDays  :: !(Maybe Int32)
    , _expProfileId                      :: !(Maybe Text)
    , _expOptimizationType               :: !(Maybe Text)
    , _expSelfLink                       :: !(Maybe Text)
    , _expAccountId                      :: !(Maybe Text)
    , _expName                           :: !(Maybe Text)
    , _expWinnerFound                    :: !(Maybe Bool)
    , _expEndTime                        :: !(Maybe UTCTime)
    , _expVariations                     :: !(Maybe [ExperimentItemVariations])
    , _expInternalWebPropertyId          :: !(Maybe Text)
    , _expId                             :: !(Maybe Text)
    , _expUpdated                        :: !(Maybe UTCTime)
    , _expRewriteVariationUrlsAsOriginal :: !(Maybe Bool)
    , _expObjectiveMetric                :: !(Maybe Text)
    , _expWinnerConfidenceLevel          :: !(Maybe Double)
    , _expServingFramework               :: !(Maybe Text)
    , _expDescription                    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Experiment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'expParentLink'
--
-- * 'expEqualWeighting'
--
-- * 'expStatus'
--
-- * 'expWebPropertyId'
--
-- * 'expStartTime'
--
-- * 'expSnippet'
--
-- * 'expKind'
--
-- * 'expCreated'
--
-- * 'expReasonExperimentEnded'
--
-- * 'expTrafficCoverage'
--
-- * 'expEditableInGaUi'
--
-- * 'expMinimumExperimentLengthInDays'
--
-- * 'expProfileId'
--
-- * 'expOptimizationType'
--
-- * 'expSelfLink'
--
-- * 'expAccountId'
--
-- * 'expName'
--
-- * 'expWinnerFound'
--
-- * 'expEndTime'
--
-- * 'expVariations'
--
-- * 'expInternalWebPropertyId'
--
-- * 'expId'
--
-- * 'expUpdated'
--
-- * 'expRewriteVariationUrlsAsOriginal'
--
-- * 'expObjectiveMetric'
--
-- * 'expWinnerConfidenceLevel'
--
-- * 'expServingFramework'
--
-- * 'expDescription'
experiment
    :: Experiment
experiment =
    Experiment
    { _expParentLink = Nothing
    , _expEqualWeighting = Nothing
    , _expStatus = Nothing
    , _expWebPropertyId = Nothing
    , _expStartTime = Nothing
    , _expSnippet = Nothing
    , _expKind = "analytics#experiment"
    , _expCreated = Nothing
    , _expReasonExperimentEnded = Nothing
    , _expTrafficCoverage = Nothing
    , _expEditableInGaUi = Nothing
    , _expMinimumExperimentLengthInDays = Nothing
    , _expProfileId = Nothing
    , _expOptimizationType = Nothing
    , _expSelfLink = Nothing
    , _expAccountId = Nothing
    , _expName = Nothing
    , _expWinnerFound = Nothing
    , _expEndTime = Nothing
    , _expVariations = Nothing
    , _expInternalWebPropertyId = Nothing
    , _expId = Nothing
    , _expUpdated = Nothing
    , _expRewriteVariationUrlsAsOriginal = Nothing
    , _expObjectiveMetric = Nothing
    , _expWinnerConfidenceLevel = Nothing
    , _expServingFramework = Nothing
    , _expDescription = Nothing
    }

-- | Parent link for an experiment. Points to the view (profile) to which
-- this experiment belongs.
expParentLink :: Lens' Experiment (Maybe ExperimentParentLink)
expParentLink
  = lens _expParentLink
      (\ s a -> s{_expParentLink = a})

-- | Boolean specifying whether to distribute traffic evenly across all
-- variations. If the value is False, content experiments follows the
-- default behavior of adjusting traffic dynamically based on variation
-- performance. Optional -- defaults to False. This field may not be
-- changed for an experiment whose status is ENDED.
expEqualWeighting :: Lens' Experiment (Maybe Bool)
expEqualWeighting
  = lens _expEqualWeighting
      (\ s a -> s{_expEqualWeighting = a})

-- | Experiment status. Possible values: \"DRAFT\", \"READY_TO_RUN\",
-- \"RUNNING\", \"ENDED\". Experiments can be created in the \"DRAFT\",
-- \"READY_TO_RUN\" or \"RUNNING\" state. This field is required when
-- creating an experiment.
expStatus :: Lens' Experiment (Maybe Text)
expStatus
  = lens _expStatus (\ s a -> s{_expStatus = a})

-- | Web property ID to which this experiment belongs. The web property ID is
-- of the form UA-XXXXX-YY. This field is read-only.
expWebPropertyId :: Lens' Experiment (Maybe Text)
expWebPropertyId
  = lens _expWebPropertyId
      (\ s a -> s{_expWebPropertyId = a})

-- | The starting time of the experiment (the time the status changed from
-- READY_TO_RUN to RUNNING). This field is present only if the experiment
-- has started. This field is read-only.
expStartTime :: Lens' Experiment (Maybe UTCTime)
expStartTime
  = lens _expStartTime (\ s a -> s{_expStartTime = a})

-- | The snippet of code to include on the control page(s). This field is
-- read-only.
expSnippet :: Lens' Experiment (Maybe Text)
expSnippet
  = lens _expSnippet (\ s a -> s{_expSnippet = a})

-- | Resource type for an Analytics experiment. This field is read-only.
expKind :: Lens' Experiment Text
expKind = lens _expKind (\ s a -> s{_expKind = a})

-- | Time the experiment was created. This field is read-only.
expCreated :: Lens' Experiment (Maybe UTCTime)
expCreated
  = lens _expCreated (\ s a -> s{_expCreated = a})

-- | Why the experiment ended. Possible values: \"STOPPED_BY_USER\",
-- \"WINNER_FOUND\", \"EXPERIMENT_EXPIRED\", \"ENDED_WITH_NO_WINNER\",
-- \"GOAL_OBJECTIVE_CHANGED\". \"ENDED_WITH_NO_WINNER\" means that the
-- experiment didn\'t expire but no winner was projected to be found. If
-- the experiment status is changed via the API to ENDED this field is set
-- to STOPPED_BY_USER. This field is read-only.
expReasonExperimentEnded :: Lens' Experiment (Maybe Text)
expReasonExperimentEnded
  = lens _expReasonExperimentEnded
      (\ s a -> s{_expReasonExperimentEnded = a})

-- | A floating-point number in (0, 1]. Specifies the fraction of the traffic
-- that participates in the experiment. Can be changed for a running
-- experiment. This field may not be changed for an experiments whose
-- status is ENDED.
expTrafficCoverage :: Lens' Experiment (Maybe Double)
expTrafficCoverage
  = lens _expTrafficCoverage
      (\ s a -> s{_expTrafficCoverage = a})

-- | If true, the end user will be able to edit the experiment via the Google
-- Analytics user interface.
expEditableInGaUi :: Lens' Experiment (Maybe Bool)
expEditableInGaUi
  = lens _expEditableInGaUi
      (\ s a -> s{_expEditableInGaUi = a})

-- | An integer number in [3, 90]. Specifies the minimum length of the
-- experiment. Can be changed for a running experiment. This field may not
-- be changed for an experiments whose status is ENDED.
expMinimumExperimentLengthInDays :: Lens' Experiment (Maybe Int32)
expMinimumExperimentLengthInDays
  = lens _expMinimumExperimentLengthInDays
      (\ s a -> s{_expMinimumExperimentLengthInDays = a})

-- | View (Profile) ID to which this experiment belongs. This field is
-- read-only.
expProfileId :: Lens' Experiment (Maybe Text)
expProfileId
  = lens _expProfileId (\ s a -> s{_expProfileId = a})

-- | Whether the objectiveMetric should be minimized or maximized. Possible
-- values: \"MAXIMUM\", \"MINIMUM\". Optional--defaults to \"MAXIMUM\".
-- Cannot be specified without objectiveMetric. Cannot be modified when
-- status is \"RUNNING\" or \"ENDED\".
expOptimizationType :: Lens' Experiment (Maybe Text)
expOptimizationType
  = lens _expOptimizationType
      (\ s a -> s{_expOptimizationType = a})

-- | Link for this experiment. This field is read-only.
expSelfLink :: Lens' Experiment (Maybe Text)
expSelfLink
  = lens _expSelfLink (\ s a -> s{_expSelfLink = a})

-- | Account ID to which this experiment belongs. This field is read-only.
expAccountId :: Lens' Experiment (Maybe Text)
expAccountId
  = lens _expAccountId (\ s a -> s{_expAccountId = a})

-- | Experiment name. This field may not be changed for an experiment whose
-- status is ENDED. This field is required when creating an experiment.
expName :: Lens' Experiment (Maybe Text)
expName = lens _expName (\ s a -> s{_expName = a})

-- | Boolean specifying whether a winner has been found for this experiment.
-- This field is read-only.
expWinnerFound :: Lens' Experiment (Maybe Bool)
expWinnerFound
  = lens _expWinnerFound
      (\ s a -> s{_expWinnerFound = a})

-- | The ending time of the experiment (the time the status changed from
-- RUNNING to ENDED). This field is present only if the experiment has
-- ended. This field is read-only.
expEndTime :: Lens' Experiment (Maybe UTCTime)
expEndTime
  = lens _expEndTime (\ s a -> s{_expEndTime = a})

-- | Array of variations. The first variation in the array is the original.
-- The number of variations may not change once an experiment is in the
-- RUNNING state. At least two variations are required before status can be
-- set to RUNNING.
expVariations :: Lens' Experiment [ExperimentItemVariations]
expVariations
  = lens _expVariations
      (\ s a -> s{_expVariations = a})
      . _Default
      . _Coerce

-- | Internal ID for the web property to which this experiment belongs. This
-- field is read-only.
expInternalWebPropertyId :: Lens' Experiment (Maybe Text)
expInternalWebPropertyId
  = lens _expInternalWebPropertyId
      (\ s a -> s{_expInternalWebPropertyId = a})

-- | Experiment ID. Required for patch and update. Disallowed for create.
expId :: Lens' Experiment (Maybe Text)
expId = lens _expId (\ s a -> s{_expId = a})

-- | Time the experiment was last modified. This field is read-only.
expUpdated :: Lens' Experiment (Maybe UTCTime)
expUpdated
  = lens _expUpdated (\ s a -> s{_expUpdated = a})

-- | Boolean specifying whether variations URLS are rewritten to match those
-- of the original. This field may not be changed for an experiments whose
-- status is ENDED.
expRewriteVariationUrlsAsOriginal :: Lens' Experiment (Maybe Bool)
expRewriteVariationUrlsAsOriginal
  = lens _expRewriteVariationUrlsAsOriginal
      (\ s a -> s{_expRewriteVariationUrlsAsOriginal = a})

-- | The metric that the experiment is optimizing. Valid values:
-- \"ga:goal(n)Completions\", \"ga:adsenseAdsClicks\",
-- \"ga:adsenseAdsViewed\", \"ga:adsenseRevenue\", \"ga:bounces\",
-- \"ga:pageviews\", \"ga:sessionDuration\", \"ga:transactions\",
-- \"ga:transactionRevenue\". This field is required if status is
-- \"RUNNING\" and servingFramework is one of \"REDIRECT\" or \"API\".
expObjectiveMetric :: Lens' Experiment (Maybe Text)
expObjectiveMetric
  = lens _expObjectiveMetric
      (\ s a -> s{_expObjectiveMetric = a})

-- | A floating-point number in (0, 1). Specifies the necessary confidence
-- level to choose a winner. This field may not be changed for an
-- experiments whose status is ENDED.
expWinnerConfidenceLevel :: Lens' Experiment (Maybe Double)
expWinnerConfidenceLevel
  = lens _expWinnerConfidenceLevel
      (\ s a -> s{_expWinnerConfidenceLevel = a})

-- | The framework used to serve the experiment variations and evaluate the
-- results. One of: - REDIRECT: Google Analytics redirects traffic to
-- different variation pages, reports the chosen variation and evaluates
-- the results. - API: Google Analytics chooses and reports the variation
-- to serve and evaluates the results; the caller is responsible for
-- serving the selected variation. - EXTERNAL: The variations will be
-- served externally and the chosen variation reported to Google Analytics.
-- The caller is responsible for serving the selected variation and
-- evaluating the results.
expServingFramework :: Lens' Experiment (Maybe Text)
expServingFramework
  = lens _expServingFramework
      (\ s a -> s{_expServingFramework = a})

-- | Notes about this experiment.
expDescription :: Lens' Experiment (Maybe Text)
expDescription
  = lens _expDescription
      (\ s a -> s{_expDescription = a})

--
-- /See:/ 'experimentItemVariations' smart constructor.
data ExperimentItemVariations = ExperimentItemVariations
    { _eivStatus :: !(Maybe Text)
    , _eivWeight :: !(Maybe Double)
    , _eivUrl    :: !(Maybe Text)
    , _eivWon    :: !(Maybe Bool)
    , _eivName   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExperimentItemVariations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eivStatus'
--
-- * 'eivWeight'
--
-- * 'eivUrl'
--
-- * 'eivWon'
--
-- * 'eivName'
experimentItemVariations
    :: ExperimentItemVariations
experimentItemVariations =
    ExperimentItemVariations
    { _eivStatus = Nothing
    , _eivWeight = Nothing
    , _eivUrl = Nothing
    , _eivWon = Nothing
    , _eivName = Nothing
    }

-- | Status of the variation. Possible values: \"ACTIVE\", \"INACTIVE\".
-- INACTIVE variations are not served. This field may not be changed for an
-- experiment whose status is ENDED.
eivStatus :: Lens' ExperimentItemVariations (Maybe Text)
eivStatus
  = lens _eivStatus (\ s a -> s{_eivStatus = a})

-- | Weight that this variation should receive. Only present if the
-- experiment is running. This field is read-only.
eivWeight :: Lens' ExperimentItemVariations (Maybe Double)
eivWeight
  = lens _eivWeight (\ s a -> s{_eivWeight = a})

-- | The URL of the variation. This field may not be changed for an
-- experiment whose status is RUNNING or ENDED.
eivUrl :: Lens' ExperimentItemVariations (Maybe Text)
eivUrl = lens _eivUrl (\ s a -> s{_eivUrl = a})

-- | True if the experiment has ended and this variation performed
-- (statistically) significantly better than the original. This field is
-- read-only.
eivWon :: Lens' ExperimentItemVariations (Maybe Bool)
eivWon = lens _eivWon (\ s a -> s{_eivWon = a})

-- | The name of the variation. This field is required when creating an
-- experiment. This field may not be changed for an experiment whose status
-- is ENDED.
eivName :: Lens' ExperimentItemVariations (Maybe Text)
eivName = lens _eivName (\ s a -> s{_eivName = a})

-- | Parent link for an experiment. Points to the view (profile) to which
-- this experiment belongs.
--
-- /See:/ 'experimentParentLink' smart constructor.
data ExperimentParentLink = ExperimentParentLink
    { _eplHref :: !(Maybe Text)
    , _eplType :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExperimentParentLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eplHref'
--
-- * 'eplType'
experimentParentLink
    :: ExperimentParentLink
experimentParentLink =
    ExperimentParentLink
    { _eplHref = Nothing
    , _eplType = "analytics#profile"
    }

-- | Link to the view (profile) to which this experiment belongs. This field
-- is read-only.
eplHref :: Lens' ExperimentParentLink (Maybe Text)
eplHref = lens _eplHref (\ s a -> s{_eplHref = a})

-- | Value is \"analytics#profile\". This field is read-only.
eplType :: Lens' ExperimentParentLink Text
eplType = lens _eplType (\ s a -> s{_eplType = a})

-- | An experiment collection lists Analytics experiments to which the user
-- has access. Each view (profile) can have a set of experiments. Each
-- resource in the Experiment collection corresponds to a single Analytics
-- experiment.
--
-- /See:/ 'experiments' smart constructor.
data Experiments = Experiments
    { _eNextLink     :: !(Maybe Text)
    , _eItemsPerPage :: !(Maybe Int32)
    , _eKind         :: !Text
    , _eUsername     :: !(Maybe Text)
    , _eItems        :: !(Maybe [Maybe Experiment])
    , _eTotalResults :: !(Maybe Int32)
    , _eStartIndex   :: !(Maybe Int32)
    , _ePreviousLink :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Experiments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eNextLink'
--
-- * 'eItemsPerPage'
--
-- * 'eKind'
--
-- * 'eUsername'
--
-- * 'eItems'
--
-- * 'eTotalResults'
--
-- * 'eStartIndex'
--
-- * 'ePreviousLink'
experiments
    :: Experiments
experiments =
    Experiments
    { _eNextLink = Nothing
    , _eItemsPerPage = Nothing
    , _eKind = "analytics#experiments"
    , _eUsername = Nothing
    , _eItems = Nothing
    , _eTotalResults = Nothing
    , _eStartIndex = Nothing
    , _ePreviousLink = Nothing
    }

-- | Link to next page for this experiment collection.
eNextLink :: Lens' Experiments (Maybe Text)
eNextLink
  = lens _eNextLink (\ s a -> s{_eNextLink = a})

-- | The maximum number of resources the response can contain, regardless of
-- the actual number of resources returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
eItemsPerPage :: Lens' Experiments (Maybe Int32)
eItemsPerPage
  = lens _eItemsPerPage
      (\ s a -> s{_eItemsPerPage = a})

-- | Collection type.
eKind :: Lens' Experiments Text
eKind = lens _eKind (\ s a -> s{_eKind = a})

-- | Email ID of the authenticated user
eUsername :: Lens' Experiments (Maybe Text)
eUsername
  = lens _eUsername (\ s a -> s{_eUsername = a})

-- | A list of experiments.
eItems :: Lens' Experiments [Maybe Experiment]
eItems
  = lens _eItems (\ s a -> s{_eItems = a}) . _Default .
      _Coerce

-- | The total number of results for the query, regardless of the number of
-- resources in the result.
eTotalResults :: Lens' Experiments (Maybe Int32)
eTotalResults
  = lens _eTotalResults
      (\ s a -> s{_eTotalResults = a})

-- | The starting index of the resources, which is 1 by default or otherwise
-- specified by the start-index query parameter.
eStartIndex :: Lens' Experiments (Maybe Int32)
eStartIndex
  = lens _eStartIndex (\ s a -> s{_eStartIndex = a})

-- | Link to previous page for this experiment collection.
ePreviousLink :: Lens' Experiments (Maybe Text)
ePreviousLink
  = lens _ePreviousLink
      (\ s a -> s{_ePreviousLink = a})

-- | JSON template for an Analytics account filter.
--
-- /See:/ 'filter'' smart constructor.
data Filter = Filter
    { _fParentLink              :: !(Maybe FilterParentLink)
    , _fAdvancedDetails         :: !(Maybe FilterAdvancedDetails)
    , _fUppercaseDetails        :: !(Maybe FilterUppercaseDetails)
    , _fLowercaseDetails        :: !(Maybe FilterLowercaseDetails)
    , _fKind                    :: !Text
    , _fCreated                 :: !(Maybe UTCTime)
    , _fIncludeDetails          :: !(Maybe (Maybe FilterExpression))
    , _fExcludeDetails          :: !(Maybe (Maybe FilterExpression))
    , _fSelfLink                :: !(Maybe Text)
    , _fAccountId               :: !(Maybe Text)
    , _fName                    :: !(Maybe Text)
    , _fId                      :: !(Maybe Text)
    , _fUpdated                 :: !(Maybe UTCTime)
    , _fType                    :: !(Maybe Text)
    , _fSearchAndReplaceDetails :: !(Maybe FilterSearchAndReplaceDetails)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Filter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fParentLink'
--
-- * 'fAdvancedDetails'
--
-- * 'fUppercaseDetails'
--
-- * 'fLowercaseDetails'
--
-- * 'fKind'
--
-- * 'fCreated'
--
-- * 'fIncludeDetails'
--
-- * 'fExcludeDetails'
--
-- * 'fSelfLink'
--
-- * 'fAccountId'
--
-- * 'fName'
--
-- * 'fId'
--
-- * 'fUpdated'
--
-- * 'fType'
--
-- * 'fSearchAndReplaceDetails'
filter'
    :: Filter
filter' =
    Filter
    { _fParentLink = Nothing
    , _fAdvancedDetails = Nothing
    , _fUppercaseDetails = Nothing
    , _fLowercaseDetails = Nothing
    , _fKind = "analytics#filter"
    , _fCreated = Nothing
    , _fIncludeDetails = Nothing
    , _fExcludeDetails = Nothing
    , _fSelfLink = Nothing
    , _fAccountId = Nothing
    , _fName = Nothing
    , _fId = Nothing
    , _fUpdated = Nothing
    , _fType = Nothing
    , _fSearchAndReplaceDetails = Nothing
    }

-- | Parent link for this filter. Points to the account to which this filter
-- belongs.
fParentLink :: Lens' Filter (Maybe FilterParentLink)
fParentLink
  = lens _fParentLink (\ s a -> s{_fParentLink = a})

-- | Details for the filter of the type ADVANCED.
fAdvancedDetails :: Lens' Filter (Maybe FilterAdvancedDetails)
fAdvancedDetails
  = lens _fAdvancedDetails
      (\ s a -> s{_fAdvancedDetails = a})

-- | Details for the filter of the type UPPER.
fUppercaseDetails :: Lens' Filter (Maybe FilterUppercaseDetails)
fUppercaseDetails
  = lens _fUppercaseDetails
      (\ s a -> s{_fUppercaseDetails = a})

-- | Details for the filter of the type LOWER.
fLowercaseDetails :: Lens' Filter (Maybe FilterLowercaseDetails)
fLowercaseDetails
  = lens _fLowercaseDetails
      (\ s a -> s{_fLowercaseDetails = a})

-- | Resource type for Analytics filter.
fKind :: Lens' Filter Text
fKind = lens _fKind (\ s a -> s{_fKind = a})

-- | Time this filter was created.
fCreated :: Lens' Filter (Maybe UTCTime)
fCreated = lens _fCreated (\ s a -> s{_fCreated = a})

-- | Details for the filter of the type INCLUDE.
fIncludeDetails :: Lens' Filter (Maybe (Maybe FilterExpression))
fIncludeDetails
  = lens _fIncludeDetails
      (\ s a -> s{_fIncludeDetails = a})

-- | Details for the filter of the type EXCLUDE.
fExcludeDetails :: Lens' Filter (Maybe (Maybe FilterExpression))
fExcludeDetails
  = lens _fExcludeDetails
      (\ s a -> s{_fExcludeDetails = a})

-- | Link for this filter.
fSelfLink :: Lens' Filter (Maybe Text)
fSelfLink
  = lens _fSelfLink (\ s a -> s{_fSelfLink = a})

-- | Account ID to which this filter belongs.
fAccountId :: Lens' Filter (Maybe Text)
fAccountId
  = lens _fAccountId (\ s a -> s{_fAccountId = a})

-- | Name of this filter.
fName :: Lens' Filter (Maybe Text)
fName = lens _fName (\ s a -> s{_fName = a})

-- | Filter ID.
fId :: Lens' Filter (Maybe Text)
fId = lens _fId (\ s a -> s{_fId = a})

-- | Time this filter was last modified.
fUpdated :: Lens' Filter (Maybe UTCTime)
fUpdated = lens _fUpdated (\ s a -> s{_fUpdated = a})

-- | Type of this filter. Possible values are INCLUDE, EXCLUDE, LOWERCASE,
-- UPPERCASE, SEARCH_AND_REPLACE and ADVANCED.
fType :: Lens' Filter (Maybe Text)
fType = lens _fType (\ s a -> s{_fType = a})

-- | Details for the filter of the type SEARCH_AND_REPLACE.
fSearchAndReplaceDetails :: Lens' Filter (Maybe FilterSearchAndReplaceDetails)
fSearchAndReplaceDetails
  = lens _fSearchAndReplaceDetails
      (\ s a -> s{_fSearchAndReplaceDetails = a})

-- | Details for the filter of the type ADVANCED.
--
-- /See:/ 'filterAdvancedDetails' smart constructor.
data FilterAdvancedDetails = FilterAdvancedDetails
    { _fadExtractA            :: !(Maybe Text)
    , _fadFieldARequired      :: !(Maybe Bool)
    , _fadFieldA              :: !(Maybe Text)
    , _fadFieldBIndex         :: !(Maybe Int32)
    , _fadOutputToField       :: !(Maybe Text)
    , _fadOutputConstructor   :: !(Maybe Text)
    , _fadExtractB            :: !(Maybe Text)
    , _fadFieldAIndex         :: !(Maybe Int32)
    , _fadCaseSensitive       :: !(Maybe Bool)
    , _fadOutputToFieldIndex  :: !(Maybe Int32)
    , _fadFieldB              :: !(Maybe Text)
    , _fadFieldBRequired      :: !(Maybe Bool)
    , _fadOverrideOutputField :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilterAdvancedDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fadExtractA'
--
-- * 'fadFieldARequired'
--
-- * 'fadFieldA'
--
-- * 'fadFieldBIndex'
--
-- * 'fadOutputToField'
--
-- * 'fadOutputConstructor'
--
-- * 'fadExtractB'
--
-- * 'fadFieldAIndex'
--
-- * 'fadCaseSensitive'
--
-- * 'fadOutputToFieldIndex'
--
-- * 'fadFieldB'
--
-- * 'fadFieldBRequired'
--
-- * 'fadOverrideOutputField'
filterAdvancedDetails
    :: FilterAdvancedDetails
filterAdvancedDetails =
    FilterAdvancedDetails
    { _fadExtractA = Nothing
    , _fadFieldARequired = Nothing
    , _fadFieldA = Nothing
    , _fadFieldBIndex = Nothing
    , _fadOutputToField = Nothing
    , _fadOutputConstructor = Nothing
    , _fadExtractB = Nothing
    , _fadFieldAIndex = Nothing
    , _fadCaseSensitive = Nothing
    , _fadOutputToFieldIndex = Nothing
    , _fadFieldB = Nothing
    , _fadFieldBRequired = Nothing
    , _fadOverrideOutputField = Nothing
    }

-- | Expression to extract from field A.
fadExtractA :: Lens' FilterAdvancedDetails (Maybe Text)
fadExtractA
  = lens _fadExtractA (\ s a -> s{_fadExtractA = a})

-- | Indicates if field A is required to match.
fadFieldARequired :: Lens' FilterAdvancedDetails (Maybe Bool)
fadFieldARequired
  = lens _fadFieldARequired
      (\ s a -> s{_fadFieldARequired = a})

-- | Field A.
fadFieldA :: Lens' FilterAdvancedDetails (Maybe Text)
fadFieldA
  = lens _fadFieldA (\ s a -> s{_fadFieldA = a})

-- | The Index of the custom dimension. Required if field is a
-- CUSTOM_DIMENSION.
fadFieldBIndex :: Lens' FilterAdvancedDetails (Maybe Int32)
fadFieldBIndex
  = lens _fadFieldBIndex
      (\ s a -> s{_fadFieldBIndex = a})

-- | Output field.
fadOutputToField :: Lens' FilterAdvancedDetails (Maybe Text)
fadOutputToField
  = lens _fadOutputToField
      (\ s a -> s{_fadOutputToField = a})

-- | Expression used to construct the output value.
fadOutputConstructor :: Lens' FilterAdvancedDetails (Maybe Text)
fadOutputConstructor
  = lens _fadOutputConstructor
      (\ s a -> s{_fadOutputConstructor = a})

-- | Expression to extract from field B.
fadExtractB :: Lens' FilterAdvancedDetails (Maybe Text)
fadExtractB
  = lens _fadExtractB (\ s a -> s{_fadExtractB = a})

-- | The Index of the custom dimension. Required if field is a
-- CUSTOM_DIMENSION.
fadFieldAIndex :: Lens' FilterAdvancedDetails (Maybe Int32)
fadFieldAIndex
  = lens _fadFieldAIndex
      (\ s a -> s{_fadFieldAIndex = a})

-- | Indicates if the filter expressions are case sensitive.
fadCaseSensitive :: Lens' FilterAdvancedDetails (Maybe Bool)
fadCaseSensitive
  = lens _fadCaseSensitive
      (\ s a -> s{_fadCaseSensitive = a})

-- | The Index of the custom dimension. Required if field is a
-- CUSTOM_DIMENSION.
fadOutputToFieldIndex :: Lens' FilterAdvancedDetails (Maybe Int32)
fadOutputToFieldIndex
  = lens _fadOutputToFieldIndex
      (\ s a -> s{_fadOutputToFieldIndex = a})

-- | Field B.
fadFieldB :: Lens' FilterAdvancedDetails (Maybe Text)
fadFieldB
  = lens _fadFieldB (\ s a -> s{_fadFieldB = a})

-- | Indicates if field B is required to match.
fadFieldBRequired :: Lens' FilterAdvancedDetails (Maybe Bool)
fadFieldBRequired
  = lens _fadFieldBRequired
      (\ s a -> s{_fadFieldBRequired = a})

-- | Indicates if the existing value of the output field, if any, should be
-- overridden by the output expression.
fadOverrideOutputField :: Lens' FilterAdvancedDetails (Maybe Bool)
fadOverrideOutputField
  = lens _fadOverrideOutputField
      (\ s a -> s{_fadOverrideOutputField = a})

-- | JSON template for an Analytics filter expression.
--
-- /See:/ 'filterExpression' smart constructor.
data FilterExpression = FilterExpression
    { _feFieldIndex      :: !(Maybe Int32)
    , _feField           :: !(Maybe Text)
    , _feKind            :: !Text
    , _feMatchType       :: !(Maybe Text)
    , _feCaseSensitive   :: !(Maybe Bool)
    , _feExpressionValue :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilterExpression' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'feFieldIndex'
--
-- * 'feField'
--
-- * 'feKind'
--
-- * 'feMatchType'
--
-- * 'feCaseSensitive'
--
-- * 'feExpressionValue'
filterExpression
    :: FilterExpression
filterExpression =
    FilterExpression
    { _feFieldIndex = Nothing
    , _feField = Nothing
    , _feKind = "analytics#filterExpression"
    , _feMatchType = Nothing
    , _feCaseSensitive = Nothing
    , _feExpressionValue = Nothing
    }

-- | The Index of the custom dimension. Set only if the field is a is
-- CUSTOM_DIMENSION.
feFieldIndex :: Lens' FilterExpression (Maybe Int32)
feFieldIndex
  = lens _feFieldIndex (\ s a -> s{_feFieldIndex = a})

-- | Field to filter. Possible values: - Content and Traffic -
-- PAGE_REQUEST_URI, - PAGE_HOSTNAME, - PAGE_TITLE, - REFERRAL, -
-- COST_DATA_URI (Campaign target URL), - HIT_TYPE, - INTERNAL_SEARCH_TERM,
-- - INTERNAL_SEARCH_TYPE, - SOURCE_PROPERTY_TRACKING_ID, - Campaign or
-- AdGroup - CAMPAIGN_SOURCE, - CAMPAIGN_MEDIUM, - CAMPAIGN_NAME, -
-- CAMPAIGN_AD_GROUP, - CAMPAIGN_TERM, - CAMPAIGN_CONTENT, - CAMPAIGN_CODE,
-- - CAMPAIGN_REFERRAL_PATH, - E-Commerce - TRANSACTION_COUNTRY, -
-- TRANSACTION_REGION, - TRANSACTION_CITY, - TRANSACTION_AFFILIATION (Store
-- or order location), - ITEM_NAME, - ITEM_CODE, - ITEM_VARIATION, -
-- TRANSACTION_ID, - TRANSACTION_CURRENCY_CODE, - PRODUCT_ACTION_TYPE, -
-- Audience\/Users - BROWSER, - BROWSER_VERSION, - BROWSER_SIZE, -
-- PLATFORM, - PLATFORM_VERSION, - LANGUAGE, - SCREEN_RESOLUTION, -
-- SCREEN_COLORS, - JAVA_ENABLED (Boolean Field), - FLASH_VERSION, -
-- GEO_SPEED (Connection speed), - VISITOR_TYPE, - GEO_ORGANIZATION (ISP
-- organization), - GEO_DOMAIN, - GEO_IP_ADDRESS, - GEO_IP_VERSION, -
-- Location - GEO_COUNTRY, - GEO_REGION, - GEO_CITY, - Event -
-- EVENT_CATEGORY, - EVENT_ACTION, - EVENT_LABEL, - Other - CUSTOM_FIELD_1,
-- - CUSTOM_FIELD_2, - USER_DEFINED_VALUE, - Application - APP_ID, -
-- APP_INSTALLER_ID, - APP_NAME, - APP_VERSION, - SCREEN, - IS_APP (Boolean
-- Field), - IS_FATAL_EXCEPTION (Boolean Field), - EXCEPTION_DESCRIPTION, -
-- Mobile device - IS_MOBILE (Boolean Field, Deprecated. Use
-- DEVICE_CATEGORY=mobile), - IS_TABLET (Boolean Field, Deprecated. Use
-- DEVICE_CATEGORY=tablet), - DEVICE_CATEGORY, - MOBILE_HAS_QWERTY_KEYBOARD
-- (Boolean Field), - MOBILE_HAS_NFC_SUPPORT (Boolean Field), -
-- MOBILE_HAS_CELLULAR_RADIO (Boolean Field), - MOBILE_HAS_WIFI_SUPPORT
-- (Boolean Field), - MOBILE_BRAND_NAME, - MOBILE_MODEL_NAME, -
-- MOBILE_MARKETING_NAME, - MOBILE_POINTING_METHOD, - Social -
-- SOCIAL_NETWORK, - SOCIAL_ACTION, - SOCIAL_ACTION_TARGET, - Custom
-- dimension - CUSTOM_DIMENSION (See accompanying field index),
feField :: Lens' FilterExpression (Maybe Text)
feField = lens _feField (\ s a -> s{_feField = a})

-- | Kind value for filter expression
feKind :: Lens' FilterExpression Text
feKind = lens _feKind (\ s a -> s{_feKind = a})

-- | Match type for this filter. Possible values are BEGINS_WITH, EQUAL,
-- ENDS_WITH, CONTAINS, or MATCHES. GEO_DOMAIN, GEO_IP_ADDRESS,
-- PAGE_REQUEST_URI, or PAGE_HOSTNAME filters can use any match type; all
-- other filters must use MATCHES.
feMatchType :: Lens' FilterExpression (Maybe Text)
feMatchType
  = lens _feMatchType (\ s a -> s{_feMatchType = a})

-- | Determines if the filter is case sensitive.
feCaseSensitive :: Lens' FilterExpression (Maybe Bool)
feCaseSensitive
  = lens _feCaseSensitive
      (\ s a -> s{_feCaseSensitive = a})

-- | Filter expression value
feExpressionValue :: Lens' FilterExpression (Maybe Text)
feExpressionValue
  = lens _feExpressionValue
      (\ s a -> s{_feExpressionValue = a})

-- | Details for the filter of the type LOWER.
--
-- /See:/ 'filterLowercaseDetails' smart constructor.
data FilterLowercaseDetails = FilterLowercaseDetails
    { _fldFieldIndex :: !(Maybe Int32)
    , _fldField      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilterLowercaseDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fldFieldIndex'
--
-- * 'fldField'
filterLowercaseDetails
    :: FilterLowercaseDetails
filterLowercaseDetails =
    FilterLowercaseDetails
    { _fldFieldIndex = Nothing
    , _fldField = Nothing
    }

-- | The Index of the custom dimension. Required if field is a
-- CUSTOM_DIMENSION.
fldFieldIndex :: Lens' FilterLowercaseDetails (Maybe Int32)
fldFieldIndex
  = lens _fldFieldIndex
      (\ s a -> s{_fldFieldIndex = a})

-- | Field to use in the filter.
fldField :: Lens' FilterLowercaseDetails (Maybe Text)
fldField = lens _fldField (\ s a -> s{_fldField = a})

-- | Parent link for this filter. Points to the account to which this filter
-- belongs.
--
-- /See:/ 'filterParentLink' smart constructor.
data FilterParentLink = FilterParentLink
    { _fplHref :: !(Maybe Text)
    , _fplType :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilterParentLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fplHref'
--
-- * 'fplType'
filterParentLink
    :: FilterParentLink
filterParentLink =
    FilterParentLink
    { _fplHref = Nothing
    , _fplType = "analytics#account"
    }

-- | Link to the account to which this filter belongs.
fplHref :: Lens' FilterParentLink (Maybe Text)
fplHref = lens _fplHref (\ s a -> s{_fplHref = a})

-- | Value is \"analytics#account\".
fplType :: Lens' FilterParentLink Text
fplType = lens _fplType (\ s a -> s{_fplType = a})

-- | JSON template for a profile filter link.
--
-- /See:/ 'filterRef' smart constructor.
data FilterRef = FilterRef
    { _frKind      :: !Text
    , _frHref      :: !(Maybe Text)
    , _frAccountId :: !(Maybe Text)
    , _frName      :: !(Maybe Text)
    , _frId        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilterRef' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frKind'
--
-- * 'frHref'
--
-- * 'frAccountId'
--
-- * 'frName'
--
-- * 'frId'
filterRef
    :: FilterRef
filterRef =
    FilterRef
    { _frKind = "analytics#filterRef"
    , _frHref = Nothing
    , _frAccountId = Nothing
    , _frName = Nothing
    , _frId = Nothing
    }

-- | Kind value for filter reference.
frKind :: Lens' FilterRef Text
frKind = lens _frKind (\ s a -> s{_frKind = a})

-- | Link for this filter.
frHref :: Lens' FilterRef (Maybe Text)
frHref = lens _frHref (\ s a -> s{_frHref = a})

-- | Account ID to which this filter belongs.
frAccountId :: Lens' FilterRef (Maybe Text)
frAccountId
  = lens _frAccountId (\ s a -> s{_frAccountId = a})

-- | Name of this filter.
frName :: Lens' FilterRef (Maybe Text)
frName = lens _frName (\ s a -> s{_frName = a})

-- | Filter ID.
frId :: Lens' FilterRef (Maybe Text)
frId = lens _frId (\ s a -> s{_frId = a})

-- | Details for the filter of the type SEARCH_AND_REPLACE.
--
-- /See:/ 'filterSearchAndReplaceDetails' smart constructor.
data FilterSearchAndReplaceDetails = FilterSearchAndReplaceDetails
    { _fsardFieldIndex    :: !(Maybe Int32)
    , _fsardField         :: !(Maybe Text)
    , _fsardSearchString  :: !(Maybe Text)
    , _fsardReplaceString :: !(Maybe Text)
    , _fsardCaseSensitive :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilterSearchAndReplaceDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fsardFieldIndex'
--
-- * 'fsardField'
--
-- * 'fsardSearchString'
--
-- * 'fsardReplaceString'
--
-- * 'fsardCaseSensitive'
filterSearchAndReplaceDetails
    :: FilterSearchAndReplaceDetails
filterSearchAndReplaceDetails =
    FilterSearchAndReplaceDetails
    { _fsardFieldIndex = Nothing
    , _fsardField = Nothing
    , _fsardSearchString = Nothing
    , _fsardReplaceString = Nothing
    , _fsardCaseSensitive = Nothing
    }

-- | The Index of the custom dimension. Required if field is a
-- CUSTOM_DIMENSION.
fsardFieldIndex :: Lens' FilterSearchAndReplaceDetails (Maybe Int32)
fsardFieldIndex
  = lens _fsardFieldIndex
      (\ s a -> s{_fsardFieldIndex = a})

-- | Field to use in the filter.
fsardField :: Lens' FilterSearchAndReplaceDetails (Maybe Text)
fsardField
  = lens _fsardField (\ s a -> s{_fsardField = a})

-- | Term to search.
fsardSearchString :: Lens' FilterSearchAndReplaceDetails (Maybe Text)
fsardSearchString
  = lens _fsardSearchString
      (\ s a -> s{_fsardSearchString = a})

-- | Term to replace the search term with.
fsardReplaceString :: Lens' FilterSearchAndReplaceDetails (Maybe Text)
fsardReplaceString
  = lens _fsardReplaceString
      (\ s a -> s{_fsardReplaceString = a})

-- | Determines if the filter is case sensitive.
fsardCaseSensitive :: Lens' FilterSearchAndReplaceDetails (Maybe Bool)
fsardCaseSensitive
  = lens _fsardCaseSensitive
      (\ s a -> s{_fsardCaseSensitive = a})

-- | Details for the filter of the type UPPER.
--
-- /See:/ 'filterUppercaseDetails' smart constructor.
data FilterUppercaseDetails = FilterUppercaseDetails
    { _fudFieldIndex :: !(Maybe Int32)
    , _fudField      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilterUppercaseDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fudFieldIndex'
--
-- * 'fudField'
filterUppercaseDetails
    :: FilterUppercaseDetails
filterUppercaseDetails =
    FilterUppercaseDetails
    { _fudFieldIndex = Nothing
    , _fudField = Nothing
    }

-- | The Index of the custom dimension. Required if field is a
-- CUSTOM_DIMENSION.
fudFieldIndex :: Lens' FilterUppercaseDetails (Maybe Int32)
fudFieldIndex
  = lens _fudFieldIndex
      (\ s a -> s{_fudFieldIndex = a})

-- | Field to use in the filter.
fudField :: Lens' FilterUppercaseDetails (Maybe Text)
fudField = lens _fudField (\ s a -> s{_fudField = a})

-- | A filter collection lists filters created by users in an Analytics
-- account. Each resource in the collection corresponds to a filter.
--
-- /See:/ 'filters' smart constructor.
data Filters = Filters
    { _filNextLink     :: !(Maybe Text)
    , _filItemsPerPage :: !(Maybe Int32)
    , _filKind         :: !Text
    , _filUsername     :: !(Maybe Text)
    , _filItems        :: !(Maybe [Maybe Filter])
    , _filTotalResults :: !(Maybe Int32)
    , _filStartIndex   :: !(Maybe Int32)
    , _filPreviousLink :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Filters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'filNextLink'
--
-- * 'filItemsPerPage'
--
-- * 'filKind'
--
-- * 'filUsername'
--
-- * 'filItems'
--
-- * 'filTotalResults'
--
-- * 'filStartIndex'
--
-- * 'filPreviousLink'
filters
    :: Filters
filters =
    Filters
    { _filNextLink = Nothing
    , _filItemsPerPage = Nothing
    , _filKind = "analytics#filters"
    , _filUsername = Nothing
    , _filItems = Nothing
    , _filTotalResults = Nothing
    , _filStartIndex = Nothing
    , _filPreviousLink = Nothing
    }

-- | Link to next page for this filter collection.
filNextLink :: Lens' Filters (Maybe Text)
filNextLink
  = lens _filNextLink (\ s a -> s{_filNextLink = a})

-- | The maximum number of resources the response can contain, regardless of
-- the actual number of resources returned. Its value ranges from 1 to
-- 1,000 with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
filItemsPerPage :: Lens' Filters (Maybe Int32)
filItemsPerPage
  = lens _filItemsPerPage
      (\ s a -> s{_filItemsPerPage = a})

-- | Collection type.
filKind :: Lens' Filters Text
filKind = lens _filKind (\ s a -> s{_filKind = a})

-- | Email ID of the authenticated user
filUsername :: Lens' Filters (Maybe Text)
filUsername
  = lens _filUsername (\ s a -> s{_filUsername = a})

-- | A list of filters.
filItems :: Lens' Filters [Maybe Filter]
filItems
  = lens _filItems (\ s a -> s{_filItems = a}) .
      _Default
      . _Coerce

-- | The total number of results for the query, regardless of the number of
-- results in the response.
filTotalResults :: Lens' Filters (Maybe Int32)
filTotalResults
  = lens _filTotalResults
      (\ s a -> s{_filTotalResults = a})

-- | The starting index of the resources, which is 1 by default or otherwise
-- specified by the start-index query parameter.
filStartIndex :: Lens' Filters (Maybe Int32)
filStartIndex
  = lens _filStartIndex
      (\ s a -> s{_filStartIndex = a})

-- | Link to previous page for this filter collection.
filPreviousLink :: Lens' Filters (Maybe Text)
filPreviousLink
  = lens _filPreviousLink
      (\ s a -> s{_filPreviousLink = a})

-- | Analytics data for a given view (profile).
--
-- /See:/ 'gaData' smart constructor.
data GaData = GaData
    { _gdNextLink            :: !(Maybe Text)
    , _gdSampleSpace         :: !(Maybe Int64)
    , _gdItemsPerPage        :: !(Maybe Int32)
    , _gdProfileInfo         :: !(Maybe GaDataProfileInfo)
    , _gdKind                :: !Text
    , _gdSampleSize          :: !(Maybe Int64)
    , _gdRows                :: !(Maybe [[Text]])
    , _gdSelfLink            :: !(Maybe Text)
    , _gdQuery               :: !(Maybe GaDataQuery)
    , _gdColumnHeaders       :: !(Maybe [GaDataItemColumnHeaders])
    , _gdId                  :: !(Maybe Text)
    , _gdTotalResults        :: !(Maybe Int32)
    , _gdDataTable           :: !(Maybe GaDataDataTable)
    , _gdContainsSampledData :: !(Maybe Bool)
    , _gdTotalsForAllResults :: !(Maybe GaDataTotalsForAllResults)
    , _gdPreviousLink        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GaData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdNextLink'
--
-- * 'gdSampleSpace'
--
-- * 'gdItemsPerPage'
--
-- * 'gdProfileInfo'
--
-- * 'gdKind'
--
-- * 'gdSampleSize'
--
-- * 'gdRows'
--
-- * 'gdSelfLink'
--
-- * 'gdQuery'
--
-- * 'gdColumnHeaders'
--
-- * 'gdId'
--
-- * 'gdTotalResults'
--
-- * 'gdDataTable'
--
-- * 'gdContainsSampledData'
--
-- * 'gdTotalsForAllResults'
--
-- * 'gdPreviousLink'
gaData
    :: GaData
gaData =
    GaData
    { _gdNextLink = Nothing
    , _gdSampleSpace = Nothing
    , _gdItemsPerPage = Nothing
    , _gdProfileInfo = Nothing
    , _gdKind = "analytics#gaData"
    , _gdSampleSize = Nothing
    , _gdRows = Nothing
    , _gdSelfLink = Nothing
    , _gdQuery = Nothing
    , _gdColumnHeaders = Nothing
    , _gdId = Nothing
    , _gdTotalResults = Nothing
    , _gdDataTable = Nothing
    , _gdContainsSampledData = Nothing
    , _gdTotalsForAllResults = Nothing
    , _gdPreviousLink = Nothing
    }

-- | Link to next page for this Analytics data query.
gdNextLink :: Lens' GaData (Maybe Text)
gdNextLink
  = lens _gdNextLink (\ s a -> s{_gdNextLink = a})

-- | Total size of the sample space from which the samples were selected.
gdSampleSpace :: Lens' GaData (Maybe Int64)
gdSampleSpace
  = lens _gdSampleSpace
      (\ s a -> s{_gdSampleSpace = a})

-- | The maximum number of rows the response can contain, regardless of the
-- actual number of rows returned. Its value ranges from 1 to 10,000 with a
-- value of 1000 by default, or otherwise specified by the max-results
-- query parameter.
gdItemsPerPage :: Lens' GaData (Maybe Int32)
gdItemsPerPage
  = lens _gdItemsPerPage
      (\ s a -> s{_gdItemsPerPage = a})

-- | Information for the view (profile), for which the Analytics data was
-- requested.
gdProfileInfo :: Lens' GaData (Maybe GaDataProfileInfo)
gdProfileInfo
  = lens _gdProfileInfo
      (\ s a -> s{_gdProfileInfo = a})

-- | Resource type.
gdKind :: Lens' GaData Text
gdKind = lens _gdKind (\ s a -> s{_gdKind = a})

-- | The number of samples used to calculate the result.
gdSampleSize :: Lens' GaData (Maybe Int64)
gdSampleSize
  = lens _gdSampleSize (\ s a -> s{_gdSampleSize = a})

-- | Analytics data rows, where each row contains a list of dimension values
-- followed by the metric values. The order of dimensions and metrics is
-- same as specified in the request.
gdRows :: Lens' GaData [[Text]]
gdRows
  = lens _gdRows (\ s a -> s{_gdRows = a}) . _Default .
      _Coerce

-- | Link to this page.
gdSelfLink :: Lens' GaData (Maybe Text)
gdSelfLink
  = lens _gdSelfLink (\ s a -> s{_gdSelfLink = a})

-- | Analytics data request query parameters.
gdQuery :: Lens' GaData (Maybe GaDataQuery)
gdQuery = lens _gdQuery (\ s a -> s{_gdQuery = a})

-- | Column headers that list dimension names followed by the metric names.
-- The order of dimensions and metrics is same as specified in the request.
gdColumnHeaders :: Lens' GaData [GaDataItemColumnHeaders]
gdColumnHeaders
  = lens _gdColumnHeaders
      (\ s a -> s{_gdColumnHeaders = a})
      . _Default
      . _Coerce

-- | Unique ID for this data response.
gdId :: Lens' GaData (Maybe Text)
gdId = lens _gdId (\ s a -> s{_gdId = a})

-- | The total number of rows for the query, regardless of the number of rows
-- in the response.
gdTotalResults :: Lens' GaData (Maybe Int32)
gdTotalResults
  = lens _gdTotalResults
      (\ s a -> s{_gdTotalResults = a})

gdDataTable :: Lens' GaData (Maybe GaDataDataTable)
gdDataTable
  = lens _gdDataTable (\ s a -> s{_gdDataTable = a})

-- | Determines if Analytics data contains samples.
gdContainsSampledData :: Lens' GaData (Maybe Bool)
gdContainsSampledData
  = lens _gdContainsSampledData
      (\ s a -> s{_gdContainsSampledData = a})

-- | Total values for the requested metrics over all the results, not just
-- the results returned in this response. The order of the metric totals is
-- same as the metric order specified in the request.
gdTotalsForAllResults :: Lens' GaData (Maybe GaDataTotalsForAllResults)
gdTotalsForAllResults
  = lens _gdTotalsForAllResults
      (\ s a -> s{_gdTotalsForAllResults = a})

-- | Link to previous page for this Analytics data query.
gdPreviousLink :: Lens' GaData (Maybe Text)
gdPreviousLink
  = lens _gdPreviousLink
      (\ s a -> s{_gdPreviousLink = a})

--
-- /See:/ 'gaDataDataTable' smart constructor.
data GaDataDataTable = GaDataDataTable
    { _gddtCols :: !(Maybe [GaDataItemColsDataTable])
    , _gddtRows :: !(Maybe [GaDataItemRowsDataTable])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GaDataDataTable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gddtCols'
--
-- * 'gddtRows'
gaDataDataTable
    :: GaDataDataTable
gaDataDataTable =
    GaDataDataTable
    { _gddtCols = Nothing
    , _gddtRows = Nothing
    }

gddtCols :: Lens' GaDataDataTable [GaDataItemColsDataTable]
gddtCols
  = lens _gddtCols (\ s a -> s{_gddtCols = a}) .
      _Default
      . _Coerce

gddtRows :: Lens' GaDataDataTable [GaDataItemRowsDataTable]
gddtRows
  = lens _gddtRows (\ s a -> s{_gddtRows = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'gaDataItemCItemRowsDataTable' smart constructor.
newtype GaDataItemCItemRowsDataTable = GaDataItemCItemRowsDataTable
    { _gdicirdtV :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GaDataItemCItemRowsDataTable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdicirdtV'
gaDataItemCItemRowsDataTable
    :: GaDataItemCItemRowsDataTable
gaDataItemCItemRowsDataTable =
    GaDataItemCItemRowsDataTable
    { _gdicirdtV = Nothing
    }

gdicirdtV :: Lens' GaDataItemCItemRowsDataTable (Maybe Text)
gdicirdtV
  = lens _gdicirdtV (\ s a -> s{_gdicirdtV = a})

--
-- /See:/ 'gaDataItemColsDataTable' smart constructor.
data GaDataItemColsDataTable = GaDataItemColsDataTable
    { _gdicdtId    :: !(Maybe Text)
    , _gdicdtType  :: !(Maybe Text)
    , _gdicdtLabel :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GaDataItemColsDataTable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdicdtId'
--
-- * 'gdicdtType'
--
-- * 'gdicdtLabel'
gaDataItemColsDataTable
    :: GaDataItemColsDataTable
gaDataItemColsDataTable =
    GaDataItemColsDataTable
    { _gdicdtId = Nothing
    , _gdicdtType = Nothing
    , _gdicdtLabel = Nothing
    }

gdicdtId :: Lens' GaDataItemColsDataTable (Maybe Text)
gdicdtId = lens _gdicdtId (\ s a -> s{_gdicdtId = a})

gdicdtType :: Lens' GaDataItemColsDataTable (Maybe Text)
gdicdtType
  = lens _gdicdtType (\ s a -> s{_gdicdtType = a})

gdicdtLabel :: Lens' GaDataItemColsDataTable (Maybe Text)
gdicdtLabel
  = lens _gdicdtLabel (\ s a -> s{_gdicdtLabel = a})

--
-- /See:/ 'gaDataItemColumnHeaders' smart constructor.
data GaDataItemColumnHeaders = GaDataItemColumnHeaders
    { _gdichColumnType :: !(Maybe Text)
    , _gdichName       :: !(Maybe Text)
    , _gdichDataType   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GaDataItemColumnHeaders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdichColumnType'
--
-- * 'gdichName'
--
-- * 'gdichDataType'
gaDataItemColumnHeaders
    :: GaDataItemColumnHeaders
gaDataItemColumnHeaders =
    GaDataItemColumnHeaders
    { _gdichColumnType = Nothing
    , _gdichName = Nothing
    , _gdichDataType = Nothing
    }

-- | Column Type. Either DIMENSION or METRIC.
gdichColumnType :: Lens' GaDataItemColumnHeaders (Maybe Text)
gdichColumnType
  = lens _gdichColumnType
      (\ s a -> s{_gdichColumnType = a})

-- | Column name.
gdichName :: Lens' GaDataItemColumnHeaders (Maybe Text)
gdichName
  = lens _gdichName (\ s a -> s{_gdichName = a})

-- | Data type. Dimension column headers have only STRING as the data type.
-- Metric column headers have data types for metric values such as INTEGER,
-- DOUBLE, CURRENCY etc.
gdichDataType :: Lens' GaDataItemColumnHeaders (Maybe Text)
gdichDataType
  = lens _gdichDataType
      (\ s a -> s{_gdichDataType = a})

--
-- /See:/ 'gaDataItemRowsDataTable' smart constructor.
newtype GaDataItemRowsDataTable = GaDataItemRowsDataTable
    { _gdirdtC :: Maybe [GaDataItemCItemRowsDataTable]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GaDataItemRowsDataTable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdirdtC'
gaDataItemRowsDataTable
    :: GaDataItemRowsDataTable
gaDataItemRowsDataTable =
    GaDataItemRowsDataTable
    { _gdirdtC = Nothing
    }

gdirdtC :: Lens' GaDataItemRowsDataTable [GaDataItemCItemRowsDataTable]
gdirdtC
  = lens _gdirdtC (\ s a -> s{_gdirdtC = a}) . _Default
      . _Coerce

-- | Information for the view (profile), for which the Analytics data was
-- requested.
--
-- /See:/ 'gaDataProfileInfo' smart constructor.
data GaDataProfileInfo = GaDataProfileInfo
    { _gdpiWebPropertyId         :: !(Maybe Text)
    , _gdpiProfileId             :: !(Maybe Text)
    , _gdpiProfileName           :: !(Maybe Text)
    , _gdpiAccountId             :: !(Maybe Text)
    , _gdpiInternalWebPropertyId :: !(Maybe Text)
    , _gdpiTableId               :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GaDataProfileInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdpiWebPropertyId'
--
-- * 'gdpiProfileId'
--
-- * 'gdpiProfileName'
--
-- * 'gdpiAccountId'
--
-- * 'gdpiInternalWebPropertyId'
--
-- * 'gdpiTableId'
gaDataProfileInfo
    :: GaDataProfileInfo
gaDataProfileInfo =
    GaDataProfileInfo
    { _gdpiWebPropertyId = Nothing
    , _gdpiProfileId = Nothing
    , _gdpiProfileName = Nothing
    , _gdpiAccountId = Nothing
    , _gdpiInternalWebPropertyId = Nothing
    , _gdpiTableId = Nothing
    }

-- | Web Property ID to which this view (profile) belongs.
gdpiWebPropertyId :: Lens' GaDataProfileInfo (Maybe Text)
gdpiWebPropertyId
  = lens _gdpiWebPropertyId
      (\ s a -> s{_gdpiWebPropertyId = a})

-- | View (Profile) ID.
gdpiProfileId :: Lens' GaDataProfileInfo (Maybe Text)
gdpiProfileId
  = lens _gdpiProfileId
      (\ s a -> s{_gdpiProfileId = a})

-- | View (Profile) name.
gdpiProfileName :: Lens' GaDataProfileInfo (Maybe Text)
gdpiProfileName
  = lens _gdpiProfileName
      (\ s a -> s{_gdpiProfileName = a})

-- | Account ID to which this view (profile) belongs.
gdpiAccountId :: Lens' GaDataProfileInfo (Maybe Text)
gdpiAccountId
  = lens _gdpiAccountId
      (\ s a -> s{_gdpiAccountId = a})

-- | Internal ID for the web property to which this view (profile) belongs.
gdpiInternalWebPropertyId :: Lens' GaDataProfileInfo (Maybe Text)
gdpiInternalWebPropertyId
  = lens _gdpiInternalWebPropertyId
      (\ s a -> s{_gdpiInternalWebPropertyId = a})

-- | Table ID for view (profile).
gdpiTableId :: Lens' GaDataProfileInfo (Maybe Text)
gdpiTableId
  = lens _gdpiTableId (\ s a -> s{_gdpiTableId = a})

-- | Analytics data request query parameters.
--
-- /See:/ 'gaDataQuery' smart constructor.
data GaDataQuery = GaDataQuery
    { _gdqMetrics       :: !(Maybe [Text])
    , _gdqSamplingLevel :: !(Maybe Text)
    , _gdqFilters       :: !(Maybe Text)
    , _gdqIds           :: !(Maybe Text)
    , _gdqEndDate       :: !(Maybe Text)
    , _gdqSort          :: !(Maybe [Text])
    , _gdqDimensions    :: !(Maybe Text)
    , _gdqStartIndex    :: !(Maybe Int32)
    , _gdqMaxResults    :: !(Maybe Int32)
    , _gdqSegment       :: !(Maybe Text)
    , _gdqStartDate     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GaDataQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdqMetrics'
--
-- * 'gdqSamplingLevel'
--
-- * 'gdqFilters'
--
-- * 'gdqIds'
--
-- * 'gdqEndDate'
--
-- * 'gdqSort'
--
-- * 'gdqDimensions'
--
-- * 'gdqStartIndex'
--
-- * 'gdqMaxResults'
--
-- * 'gdqSegment'
--
-- * 'gdqStartDate'
gaDataQuery
    :: GaDataQuery
gaDataQuery =
    GaDataQuery
    { _gdqMetrics = Nothing
    , _gdqSamplingLevel = Nothing
    , _gdqFilters = Nothing
    , _gdqIds = Nothing
    , _gdqEndDate = Nothing
    , _gdqSort = Nothing
    , _gdqDimensions = Nothing
    , _gdqStartIndex = Nothing
    , _gdqMaxResults = Nothing
    , _gdqSegment = Nothing
    , _gdqStartDate = Nothing
    }

-- | List of analytics metrics.
gdqMetrics :: Lens' GaDataQuery [Text]
gdqMetrics
  = lens _gdqMetrics (\ s a -> s{_gdqMetrics = a}) .
      _Default
      . _Coerce

-- | Desired sampling level
gdqSamplingLevel :: Lens' GaDataQuery (Maybe Text)
gdqSamplingLevel
  = lens _gdqSamplingLevel
      (\ s a -> s{_gdqSamplingLevel = a})

-- | Comma-separated list of dimension or metric filters.
gdqFilters :: Lens' GaDataQuery (Maybe Text)
gdqFilters
  = lens _gdqFilters (\ s a -> s{_gdqFilters = a})

-- | Unique table ID.
gdqIds :: Lens' GaDataQuery (Maybe Text)
gdqIds = lens _gdqIds (\ s a -> s{_gdqIds = a})

-- | End date.
gdqEndDate :: Lens' GaDataQuery (Maybe Text)
gdqEndDate
  = lens _gdqEndDate (\ s a -> s{_gdqEndDate = a})

-- | List of dimensions or metrics based on which Analytics data is sorted.
gdqSort :: Lens' GaDataQuery [Text]
gdqSort
  = lens _gdqSort (\ s a -> s{_gdqSort = a}) . _Default
      . _Coerce

-- | List of analytics dimensions.
gdqDimensions :: Lens' GaDataQuery (Maybe Text)
gdqDimensions
  = lens _gdqDimensions
      (\ s a -> s{_gdqDimensions = a})

-- | Start index.
gdqStartIndex :: Lens' GaDataQuery (Maybe Int32)
gdqStartIndex
  = lens _gdqStartIndex
      (\ s a -> s{_gdqStartIndex = a})

-- | Maximum results per page.
gdqMaxResults :: Lens' GaDataQuery (Maybe Int32)
gdqMaxResults
  = lens _gdqMaxResults
      (\ s a -> s{_gdqMaxResults = a})

-- | Analytics advanced segment.
gdqSegment :: Lens' GaDataQuery (Maybe Text)
gdqSegment
  = lens _gdqSegment (\ s a -> s{_gdqSegment = a})

-- | Start date.
gdqStartDate :: Lens' GaDataQuery (Maybe Text)
gdqStartDate
  = lens _gdqStartDate (\ s a -> s{_gdqStartDate = a})

-- | Total values for the requested metrics over all the results, not just
-- the results returned in this response. The order of the metric totals is
-- same as the metric order specified in the request.
--
-- /See:/ 'gaDataTotalsForAllResults' smart constructor.
data GaDataTotalsForAllResults =
    GaDataTotalsForAllResults
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GaDataTotalsForAllResults' with the minimum fields required to make a request.
--
gaDataTotalsForAllResults
    :: GaDataTotalsForAllResults
gaDataTotalsForAllResults = GaDataTotalsForAllResults

-- | JSON template for Analytics goal resource.
--
-- /See:/ 'goal' smart constructor.
data Goal = Goal
    { _gParentLink             :: !(Maybe GoalParentLink)
    , _gWebPropertyId          :: !(Maybe Text)
    , _gKind                   :: !Text
    , _gCreated                :: !(Maybe UTCTime)
    , _gValue                  :: !(Maybe Float)
    , _gProfileId              :: !(Maybe Text)
    , _gEventDetails           :: !(Maybe GoalEventDetails)
    , _gActive                 :: !(Maybe Bool)
    , _gSelfLink               :: !(Maybe Text)
    , _gVisitTimeOnSiteDetails :: !(Maybe GoalVisitTimeOnSiteDetails)
    , _gAccountId              :: !(Maybe Text)
    , _gName                   :: !(Maybe Text)
    , _gInternalWebPropertyId  :: !(Maybe Text)
    , _gId                     :: !(Maybe Text)
    , _gUrlDestinationDetails  :: !(Maybe GoalUrlDestinationDetails)
    , _gVisitNumPagesDetails   :: !(Maybe GoalVisitNumPagesDetails)
    , _gUpdated                :: !(Maybe UTCTime)
    , _gType                   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Goal' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gParentLink'
--
-- * 'gWebPropertyId'
--
-- * 'gKind'
--
-- * 'gCreated'
--
-- * 'gValue'
--
-- * 'gProfileId'
--
-- * 'gEventDetails'
--
-- * 'gActive'
--
-- * 'gSelfLink'
--
-- * 'gVisitTimeOnSiteDetails'
--
-- * 'gAccountId'
--
-- * 'gName'
--
-- * 'gInternalWebPropertyId'
--
-- * 'gId'
--
-- * 'gUrlDestinationDetails'
--
-- * 'gVisitNumPagesDetails'
--
-- * 'gUpdated'
--
-- * 'gType'
goal
    :: Goal
goal =
    Goal
    { _gParentLink = Nothing
    , _gWebPropertyId = Nothing
    , _gKind = "analytics#goal"
    , _gCreated = Nothing
    , _gValue = Nothing
    , _gProfileId = Nothing
    , _gEventDetails = Nothing
    , _gActive = Nothing
    , _gSelfLink = Nothing
    , _gVisitTimeOnSiteDetails = Nothing
    , _gAccountId = Nothing
    , _gName = Nothing
    , _gInternalWebPropertyId = Nothing
    , _gId = Nothing
    , _gUrlDestinationDetails = Nothing
    , _gVisitNumPagesDetails = Nothing
    , _gUpdated = Nothing
    , _gType = Nothing
    }

-- | Parent link for a goal. Points to the view (profile) to which this goal
-- belongs.
gParentLink :: Lens' Goal (Maybe GoalParentLink)
gParentLink
  = lens _gParentLink (\ s a -> s{_gParentLink = a})

-- | Web property ID to which this goal belongs. The web property ID is of
-- the form UA-XXXXX-YY.
gWebPropertyId :: Lens' Goal (Maybe Text)
gWebPropertyId
  = lens _gWebPropertyId
      (\ s a -> s{_gWebPropertyId = a})

-- | Resource type for an Analytics goal.
gKind :: Lens' Goal Text
gKind = lens _gKind (\ s a -> s{_gKind = a})

-- | Time this goal was created.
gCreated :: Lens' Goal (Maybe UTCTime)
gCreated = lens _gCreated (\ s a -> s{_gCreated = a})

-- | Goal value.
gValue :: Lens' Goal (Maybe Float)
gValue = lens _gValue (\ s a -> s{_gValue = a})

-- | View (Profile) ID to which this goal belongs.
gProfileId :: Lens' Goal (Maybe Text)
gProfileId
  = lens _gProfileId (\ s a -> s{_gProfileId = a})

-- | Details for the goal of the type EVENT.
gEventDetails :: Lens' Goal (Maybe GoalEventDetails)
gEventDetails
  = lens _gEventDetails
      (\ s a -> s{_gEventDetails = a})

-- | Determines whether this goal is active.
gActive :: Lens' Goal (Maybe Bool)
gActive = lens _gActive (\ s a -> s{_gActive = a})

-- | Link for this goal.
gSelfLink :: Lens' Goal (Maybe Text)
gSelfLink
  = lens _gSelfLink (\ s a -> s{_gSelfLink = a})

-- | Details for the goal of the type VISIT_TIME_ON_SITE.
gVisitTimeOnSiteDetails :: Lens' Goal (Maybe GoalVisitTimeOnSiteDetails)
gVisitTimeOnSiteDetails
  = lens _gVisitTimeOnSiteDetails
      (\ s a -> s{_gVisitTimeOnSiteDetails = a})

-- | Account ID to which this goal belongs.
gAccountId :: Lens' Goal (Maybe Text)
gAccountId
  = lens _gAccountId (\ s a -> s{_gAccountId = a})

-- | Goal name.
gName :: Lens' Goal (Maybe Text)
gName = lens _gName (\ s a -> s{_gName = a})

-- | Internal ID for the web property to which this goal belongs.
gInternalWebPropertyId :: Lens' Goal (Maybe Text)
gInternalWebPropertyId
  = lens _gInternalWebPropertyId
      (\ s a -> s{_gInternalWebPropertyId = a})

-- | Goal ID.
gId :: Lens' Goal (Maybe Text)
gId = lens _gId (\ s a -> s{_gId = a})

-- | Details for the goal of the type URL_DESTINATION.
gUrlDestinationDetails :: Lens' Goal (Maybe GoalUrlDestinationDetails)
gUrlDestinationDetails
  = lens _gUrlDestinationDetails
      (\ s a -> s{_gUrlDestinationDetails = a})

-- | Details for the goal of the type VISIT_NUM_PAGES.
gVisitNumPagesDetails :: Lens' Goal (Maybe GoalVisitNumPagesDetails)
gVisitNumPagesDetails
  = lens _gVisitNumPagesDetails
      (\ s a -> s{_gVisitNumPagesDetails = a})

-- | Time this goal was last modified.
gUpdated :: Lens' Goal (Maybe UTCTime)
gUpdated = lens _gUpdated (\ s a -> s{_gUpdated = a})

-- | Goal type. Possible values are URL_DESTINATION, VISIT_TIME_ON_SITE,
-- VISIT_NUM_PAGES, AND EVENT.
gType :: Lens' Goal (Maybe Text)
gType = lens _gType (\ s a -> s{_gType = a})

-- | Details for the goal of the type EVENT.
--
-- /See:/ 'goalEventDetails' smart constructor.
data GoalEventDetails = GoalEventDetails
    { _gedUseEventValue   :: !(Maybe Bool)
    , _gedEventConditions :: !(Maybe [GoalItemEventConditionsEventDetails])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoalEventDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gedUseEventValue'
--
-- * 'gedEventConditions'
goalEventDetails
    :: GoalEventDetails
goalEventDetails =
    GoalEventDetails
    { _gedUseEventValue = Nothing
    , _gedEventConditions = Nothing
    }

-- | Determines if the event value should be used as the value for this goal.
gedUseEventValue :: Lens' GoalEventDetails (Maybe Bool)
gedUseEventValue
  = lens _gedUseEventValue
      (\ s a -> s{_gedUseEventValue = a})

-- | List of event conditions.
gedEventConditions :: Lens' GoalEventDetails [GoalItemEventConditionsEventDetails]
gedEventConditions
  = lens _gedEventConditions
      (\ s a -> s{_gedEventConditions = a})
      . _Default
      . _Coerce

--
-- /See:/ 'goalItemEventConditionsEventDetails' smart constructor.
data GoalItemEventConditionsEventDetails = GoalItemEventConditionsEventDetails
    { _giecedMatchType       :: !(Maybe Text)
    , _giecedExpression      :: !(Maybe Text)
    , _giecedComparisonValue :: !(Maybe Int64)
    , _giecedType            :: !(Maybe Text)
    , _giecedComparisonType  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoalItemEventConditionsEventDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giecedMatchType'
--
-- * 'giecedExpression'
--
-- * 'giecedComparisonValue'
--
-- * 'giecedType'
--
-- * 'giecedComparisonType'
goalItemEventConditionsEventDetails
    :: GoalItemEventConditionsEventDetails
goalItemEventConditionsEventDetails =
    GoalItemEventConditionsEventDetails
    { _giecedMatchType = Nothing
    , _giecedExpression = Nothing
    , _giecedComparisonValue = Nothing
    , _giecedType = Nothing
    , _giecedComparisonType = Nothing
    }

-- | Type of the match to be performed. Possible values are REGEXP,
-- BEGINS_WITH, or EXACT.
giecedMatchType :: Lens' GoalItemEventConditionsEventDetails (Maybe Text)
giecedMatchType
  = lens _giecedMatchType
      (\ s a -> s{_giecedMatchType = a})

-- | Expression used for this match.
giecedExpression :: Lens' GoalItemEventConditionsEventDetails (Maybe Text)
giecedExpression
  = lens _giecedExpression
      (\ s a -> s{_giecedExpression = a})

-- | Value used for this comparison.
giecedComparisonValue :: Lens' GoalItemEventConditionsEventDetails (Maybe Int64)
giecedComparisonValue
  = lens _giecedComparisonValue
      (\ s a -> s{_giecedComparisonValue = a})

-- | Type of this event condition. Possible values are CATEGORY, ACTION,
-- LABEL, or VALUE.
giecedType :: Lens' GoalItemEventConditionsEventDetails (Maybe Text)
giecedType
  = lens _giecedType (\ s a -> s{_giecedType = a})

-- | Type of comparison. Possible values are LESS_THAN, GREATER_THAN or
-- EQUAL.
giecedComparisonType :: Lens' GoalItemEventConditionsEventDetails (Maybe Text)
giecedComparisonType
  = lens _giecedComparisonType
      (\ s a -> s{_giecedComparisonType = a})

--
-- /See:/ 'goalItemStepsUrlDestinationDetails' smart constructor.
data GoalItemStepsUrlDestinationDetails = GoalItemStepsUrlDestinationDetails
    { _gisuddUrl    :: !(Maybe Text)
    , _gisuddName   :: !(Maybe Text)
    , _gisuddNumber :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoalItemStepsUrlDestinationDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gisuddUrl'
--
-- * 'gisuddName'
--
-- * 'gisuddNumber'
goalItemStepsUrlDestinationDetails
    :: GoalItemStepsUrlDestinationDetails
goalItemStepsUrlDestinationDetails =
    GoalItemStepsUrlDestinationDetails
    { _gisuddUrl = Nothing
    , _gisuddName = Nothing
    , _gisuddNumber = Nothing
    }

-- | URL for this step.
gisuddUrl :: Lens' GoalItemStepsUrlDestinationDetails (Maybe Text)
gisuddUrl
  = lens _gisuddUrl (\ s a -> s{_gisuddUrl = a})

-- | Step name.
gisuddName :: Lens' GoalItemStepsUrlDestinationDetails (Maybe Text)
gisuddName
  = lens _gisuddName (\ s a -> s{_gisuddName = a})

-- | Step number.
gisuddNumber :: Lens' GoalItemStepsUrlDestinationDetails (Maybe Int32)
gisuddNumber
  = lens _gisuddNumber (\ s a -> s{_gisuddNumber = a})

-- | Parent link for a goal. Points to the view (profile) to which this goal
-- belongs.
--
-- /See:/ 'goalParentLink' smart constructor.
data GoalParentLink = GoalParentLink
    { _gplHref :: !(Maybe Text)
    , _gplType :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoalParentLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gplHref'
--
-- * 'gplType'
goalParentLink
    :: GoalParentLink
goalParentLink =
    GoalParentLink
    { _gplHref = Nothing
    , _gplType = "analytics#profile"
    }

-- | Link to the view (profile) to which this goal belongs.
gplHref :: Lens' GoalParentLink (Maybe Text)
gplHref = lens _gplHref (\ s a -> s{_gplHref = a})

-- | Value is \"analytics#profile\".
gplType :: Lens' GoalParentLink Text
gplType = lens _gplType (\ s a -> s{_gplType = a})

-- | Details for the goal of the type URL_DESTINATION.
--
-- /See:/ 'goalUrlDestinationDetails' smart constructor.
data GoalUrlDestinationDetails = GoalUrlDestinationDetails
    { _guddUrl               :: !(Maybe Text)
    , _guddMatchType         :: !(Maybe Text)
    , _guddSteps             :: !(Maybe [GoalItemStepsUrlDestinationDetails])
    , _guddCaseSensitive     :: !(Maybe Bool)
    , _guddFirstStepRequired :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoalUrlDestinationDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'guddUrl'
--
-- * 'guddMatchType'
--
-- * 'guddSteps'
--
-- * 'guddCaseSensitive'
--
-- * 'guddFirstStepRequired'
goalUrlDestinationDetails
    :: GoalUrlDestinationDetails
goalUrlDestinationDetails =
    GoalUrlDestinationDetails
    { _guddUrl = Nothing
    , _guddMatchType = Nothing
    , _guddSteps = Nothing
    , _guddCaseSensitive = Nothing
    , _guddFirstStepRequired = Nothing
    }

-- | URL for this goal.
guddUrl :: Lens' GoalUrlDestinationDetails (Maybe Text)
guddUrl = lens _guddUrl (\ s a -> s{_guddUrl = a})

-- | Match type for the goal URL. Possible values are HEAD, EXACT, or REGEX.
guddMatchType :: Lens' GoalUrlDestinationDetails (Maybe Text)
guddMatchType
  = lens _guddMatchType
      (\ s a -> s{_guddMatchType = a})

-- | List of steps configured for this goal funnel.
guddSteps :: Lens' GoalUrlDestinationDetails [GoalItemStepsUrlDestinationDetails]
guddSteps
  = lens _guddSteps (\ s a -> s{_guddSteps = a}) .
      _Default
      . _Coerce

-- | Determines if the goal URL must exactly match the capitalization of
-- visited URLs.
guddCaseSensitive :: Lens' GoalUrlDestinationDetails (Maybe Bool)
guddCaseSensitive
  = lens _guddCaseSensitive
      (\ s a -> s{_guddCaseSensitive = a})

-- | Determines if the first step in this goal is required.
guddFirstStepRequired :: Lens' GoalUrlDestinationDetails (Maybe Bool)
guddFirstStepRequired
  = lens _guddFirstStepRequired
      (\ s a -> s{_guddFirstStepRequired = a})

-- | Details for the goal of the type VISIT_NUM_PAGES.
--
-- /See:/ 'goalVisitNumPagesDetails' smart constructor.
data GoalVisitNumPagesDetails = GoalVisitNumPagesDetails
    { _gvnpdComparisonValue :: !(Maybe Int64)
    , _gvnpdComparisonType  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoalVisitNumPagesDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gvnpdComparisonValue'
--
-- * 'gvnpdComparisonType'
goalVisitNumPagesDetails
    :: GoalVisitNumPagesDetails
goalVisitNumPagesDetails =
    GoalVisitNumPagesDetails
    { _gvnpdComparisonValue = Nothing
    , _gvnpdComparisonType = Nothing
    }

-- | Value used for this comparison.
gvnpdComparisonValue :: Lens' GoalVisitNumPagesDetails (Maybe Int64)
gvnpdComparisonValue
  = lens _gvnpdComparisonValue
      (\ s a -> s{_gvnpdComparisonValue = a})

-- | Type of comparison. Possible values are LESS_THAN, GREATER_THAN, or
-- EQUAL.
gvnpdComparisonType :: Lens' GoalVisitNumPagesDetails (Maybe Text)
gvnpdComparisonType
  = lens _gvnpdComparisonType
      (\ s a -> s{_gvnpdComparisonType = a})

-- | Details for the goal of the type VISIT_TIME_ON_SITE.
--
-- /See:/ 'goalVisitTimeOnSiteDetails' smart constructor.
data GoalVisitTimeOnSiteDetails = GoalVisitTimeOnSiteDetails
    { _gvtosdComparisonValue :: !(Maybe Int64)
    , _gvtosdComparisonType  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoalVisitTimeOnSiteDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gvtosdComparisonValue'
--
-- * 'gvtosdComparisonType'
goalVisitTimeOnSiteDetails
    :: GoalVisitTimeOnSiteDetails
goalVisitTimeOnSiteDetails =
    GoalVisitTimeOnSiteDetails
    { _gvtosdComparisonValue = Nothing
    , _gvtosdComparisonType = Nothing
    }

-- | Value used for this comparison.
gvtosdComparisonValue :: Lens' GoalVisitTimeOnSiteDetails (Maybe Int64)
gvtosdComparisonValue
  = lens _gvtosdComparisonValue
      (\ s a -> s{_gvtosdComparisonValue = a})

-- | Type of comparison. Possible values are LESS_THAN or GREATER_THAN.
gvtosdComparisonType :: Lens' GoalVisitTimeOnSiteDetails (Maybe Text)
gvtosdComparisonType
  = lens _gvtosdComparisonType
      (\ s a -> s{_gvtosdComparisonType = a})

-- | A goal collection lists Analytics goals to which the user has access.
-- Each view (profile) can have a set of goals. Each resource in the Goal
-- collection corresponds to a single Analytics goal.
--
-- /See:/ 'goals' smart constructor.
data Goals = Goals
    { _goaNextLink     :: !(Maybe Text)
    , _goaItemsPerPage :: !(Maybe Int32)
    , _goaKind         :: !Text
    , _goaUsername     :: !(Maybe Text)
    , _goaItems        :: !(Maybe [Maybe Goal])
    , _goaTotalResults :: !(Maybe Int32)
    , _goaStartIndex   :: !(Maybe Int32)
    , _goaPreviousLink :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Goals' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goaNextLink'
--
-- * 'goaItemsPerPage'
--
-- * 'goaKind'
--
-- * 'goaUsername'
--
-- * 'goaItems'
--
-- * 'goaTotalResults'
--
-- * 'goaStartIndex'
--
-- * 'goaPreviousLink'
goals
    :: Goals
goals =
    Goals
    { _goaNextLink = Nothing
    , _goaItemsPerPage = Nothing
    , _goaKind = "analytics#goals"
    , _goaUsername = Nothing
    , _goaItems = Nothing
    , _goaTotalResults = Nothing
    , _goaStartIndex = Nothing
    , _goaPreviousLink = Nothing
    }

-- | Link to next page for this goal collection.
goaNextLink :: Lens' Goals (Maybe Text)
goaNextLink
  = lens _goaNextLink (\ s a -> s{_goaNextLink = a})

-- | The maximum number of resources the response can contain, regardless of
-- the actual number of resources returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
goaItemsPerPage :: Lens' Goals (Maybe Int32)
goaItemsPerPage
  = lens _goaItemsPerPage
      (\ s a -> s{_goaItemsPerPage = a})

-- | Collection type.
goaKind :: Lens' Goals Text
goaKind = lens _goaKind (\ s a -> s{_goaKind = a})

-- | Email ID of the authenticated user
goaUsername :: Lens' Goals (Maybe Text)
goaUsername
  = lens _goaUsername (\ s a -> s{_goaUsername = a})

-- | A list of goals.
goaItems :: Lens' Goals [Maybe Goal]
goaItems
  = lens _goaItems (\ s a -> s{_goaItems = a}) .
      _Default
      . _Coerce

-- | The total number of results for the query, regardless of the number of
-- resources in the result.
goaTotalResults :: Lens' Goals (Maybe Int32)
goaTotalResults
  = lens _goaTotalResults
      (\ s a -> s{_goaTotalResults = a})

-- | The starting index of the resources, which is 1 by default or otherwise
-- specified by the start-index query parameter.
goaStartIndex :: Lens' Goals (Maybe Int32)
goaStartIndex
  = lens _goaStartIndex
      (\ s a -> s{_goaStartIndex = a})

-- | Link to previous page for this goal collection.
goaPreviousLink :: Lens' Goals (Maybe Text)
goaPreviousLink
  = lens _goaPreviousLink
      (\ s a -> s{_goaPreviousLink = a})

-- | Multi-Channel Funnels data for a given view (profile).
--
-- /See:/ 'mcfData' smart constructor.
data McfData = McfData
    { _mdNextLink            :: !(Maybe Text)
    , _mdSampleSpace         :: !(Maybe Int64)
    , _mdItemsPerPage        :: !(Maybe Int32)
    , _mdProfileInfo         :: !(Maybe McfDataProfileInfo)
    , _mdKind                :: !Text
    , _mdSampleSize          :: !(Maybe Int64)
    , _mdRows                :: !(Maybe [[McfDataItemItemRows]])
    , _mdSelfLink            :: !(Maybe Text)
    , _mdQuery               :: !(Maybe McfDataQuery)
    , _mdColumnHeaders       :: !(Maybe [McfDataItemColumnHeaders])
    , _mdId                  :: !(Maybe Text)
    , _mdTotalResults        :: !(Maybe Int32)
    , _mdContainsSampledData :: !(Maybe Bool)
    , _mdTotalsForAllResults :: !(Maybe McfDataTotalsForAllResults)
    , _mdPreviousLink        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'McfData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdNextLink'
--
-- * 'mdSampleSpace'
--
-- * 'mdItemsPerPage'
--
-- * 'mdProfileInfo'
--
-- * 'mdKind'
--
-- * 'mdSampleSize'
--
-- * 'mdRows'
--
-- * 'mdSelfLink'
--
-- * 'mdQuery'
--
-- * 'mdColumnHeaders'
--
-- * 'mdId'
--
-- * 'mdTotalResults'
--
-- * 'mdContainsSampledData'
--
-- * 'mdTotalsForAllResults'
--
-- * 'mdPreviousLink'
mcfData
    :: McfData
mcfData =
    McfData
    { _mdNextLink = Nothing
    , _mdSampleSpace = Nothing
    , _mdItemsPerPage = Nothing
    , _mdProfileInfo = Nothing
    , _mdKind = "analytics#mcfData"
    , _mdSampleSize = Nothing
    , _mdRows = Nothing
    , _mdSelfLink = Nothing
    , _mdQuery = Nothing
    , _mdColumnHeaders = Nothing
    , _mdId = Nothing
    , _mdTotalResults = Nothing
    , _mdContainsSampledData = Nothing
    , _mdTotalsForAllResults = Nothing
    , _mdPreviousLink = Nothing
    }

-- | Link to next page for this Analytics data query.
mdNextLink :: Lens' McfData (Maybe Text)
mdNextLink
  = lens _mdNextLink (\ s a -> s{_mdNextLink = a})

-- | Total size of the sample space from which the samples were selected.
mdSampleSpace :: Lens' McfData (Maybe Int64)
mdSampleSpace
  = lens _mdSampleSpace
      (\ s a -> s{_mdSampleSpace = a})

-- | The maximum number of rows the response can contain, regardless of the
-- actual number of rows returned. Its value ranges from 1 to 10,000 with a
-- value of 1000 by default, or otherwise specified by the max-results
-- query parameter.
mdItemsPerPage :: Lens' McfData (Maybe Int32)
mdItemsPerPage
  = lens _mdItemsPerPage
      (\ s a -> s{_mdItemsPerPage = a})

-- | Information for the view (profile), for which the Analytics data was
-- requested.
mdProfileInfo :: Lens' McfData (Maybe McfDataProfileInfo)
mdProfileInfo
  = lens _mdProfileInfo
      (\ s a -> s{_mdProfileInfo = a})

-- | Resource type.
mdKind :: Lens' McfData Text
mdKind = lens _mdKind (\ s a -> s{_mdKind = a})

-- | The number of samples used to calculate the result.
mdSampleSize :: Lens' McfData (Maybe Int64)
mdSampleSize
  = lens _mdSampleSize (\ s a -> s{_mdSampleSize = a})

-- | Analytics data rows, where each row contains a list of dimension values
-- followed by the metric values. The order of dimensions and metrics is
-- same as specified in the request.
mdRows :: Lens' McfData [[McfDataItemItemRows]]
mdRows
  = lens _mdRows (\ s a -> s{_mdRows = a}) . _Default .
      _Coerce

-- | Link to this page.
mdSelfLink :: Lens' McfData (Maybe Text)
mdSelfLink
  = lens _mdSelfLink (\ s a -> s{_mdSelfLink = a})

-- | Analytics data request query parameters.
mdQuery :: Lens' McfData (Maybe McfDataQuery)
mdQuery = lens _mdQuery (\ s a -> s{_mdQuery = a})

-- | Column headers that list dimension names followed by the metric names.
-- The order of dimensions and metrics is same as specified in the request.
mdColumnHeaders :: Lens' McfData [McfDataItemColumnHeaders]
mdColumnHeaders
  = lens _mdColumnHeaders
      (\ s a -> s{_mdColumnHeaders = a})
      . _Default
      . _Coerce

-- | Unique ID for this data response.
mdId :: Lens' McfData (Maybe Text)
mdId = lens _mdId (\ s a -> s{_mdId = a})

-- | The total number of rows for the query, regardless of the number of rows
-- in the response.
mdTotalResults :: Lens' McfData (Maybe Int32)
mdTotalResults
  = lens _mdTotalResults
      (\ s a -> s{_mdTotalResults = a})

-- | Determines if the Analytics data contains sampled data.
mdContainsSampledData :: Lens' McfData (Maybe Bool)
mdContainsSampledData
  = lens _mdContainsSampledData
      (\ s a -> s{_mdContainsSampledData = a})

-- | Total values for the requested metrics over all the results, not just
-- the results returned in this response. The order of the metric totals is
-- same as the metric order specified in the request.
mdTotalsForAllResults :: Lens' McfData (Maybe McfDataTotalsForAllResults)
mdTotalsForAllResults
  = lens _mdTotalsForAllResults
      (\ s a -> s{_mdTotalsForAllResults = a})

-- | Link to previous page for this Analytics data query.
mdPreviousLink :: Lens' McfData (Maybe Text)
mdPreviousLink
  = lens _mdPreviousLink
      (\ s a -> s{_mdPreviousLink = a})

--
-- /See:/ 'mcfDataItemColumnHeaders' smart constructor.
data McfDataItemColumnHeaders = McfDataItemColumnHeaders
    { _mdichColumnType :: !(Maybe Text)
    , _mdichName       :: !(Maybe Text)
    , _mdichDataType   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'McfDataItemColumnHeaders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdichColumnType'
--
-- * 'mdichName'
--
-- * 'mdichDataType'
mcfDataItemColumnHeaders
    :: McfDataItemColumnHeaders
mcfDataItemColumnHeaders =
    McfDataItemColumnHeaders
    { _mdichColumnType = Nothing
    , _mdichName = Nothing
    , _mdichDataType = Nothing
    }

-- | Column Type. Either DIMENSION or METRIC.
mdichColumnType :: Lens' McfDataItemColumnHeaders (Maybe Text)
mdichColumnType
  = lens _mdichColumnType
      (\ s a -> s{_mdichColumnType = a})

-- | Column name.
mdichName :: Lens' McfDataItemColumnHeaders (Maybe Text)
mdichName
  = lens _mdichName (\ s a -> s{_mdichName = a})

-- | Data type. Dimension and metric values data types such as INTEGER,
-- DOUBLE, CURRENCY, MCF_SEQUENCE etc.
mdichDataType :: Lens' McfDataItemColumnHeaders (Maybe Text)
mdichDataType
  = lens _mdichDataType
      (\ s a -> s{_mdichDataType = a})

--
-- /See:/ 'mcfDataItemConversionPathValueItemItemRows' smart constructor.
data McfDataItemConversionPathValueItemItemRows = McfDataItemConversionPathValueItemItemRows
    { _mdicpviirInteractionType :: !(Maybe Text)
    , _mdicpviirNodeValue       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'McfDataItemConversionPathValueItemItemRows' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdicpviirInteractionType'
--
-- * 'mdicpviirNodeValue'
mcfDataItemConversionPathValueItemItemRows
    :: McfDataItemConversionPathValueItemItemRows
mcfDataItemConversionPathValueItemItemRows =
    McfDataItemConversionPathValueItemItemRows
    { _mdicpviirInteractionType = Nothing
    , _mdicpviirNodeValue = Nothing
    }

-- | Type of an interaction on conversion path. Such as CLICK, IMPRESSION
-- etc.
mdicpviirInteractionType :: Lens' McfDataItemConversionPathValueItemItemRows (Maybe Text)
mdicpviirInteractionType
  = lens _mdicpviirInteractionType
      (\ s a -> s{_mdicpviirInteractionType = a})

-- | Node value of an interaction on conversion path. Such as source, medium
-- etc.
mdicpviirNodeValue :: Lens' McfDataItemConversionPathValueItemItemRows (Maybe Text)
mdicpviirNodeValue
  = lens _mdicpviirNodeValue
      (\ s a -> s{_mdicpviirNodeValue = a})

-- | A union object representing a dimension or metric value. Only one of
-- \"primitiveValue\" or \"conversionPathValue\" attribute will be
-- populated.
--
-- /See:/ 'mcfDataItemItemRows' smart constructor.
data McfDataItemItemRows = McfDataItemItemRows
    { _mdiirPrimitiveValue      :: !(Maybe Text)
    , _mdiirConversionPathValue :: !(Maybe [McfDataItemConversionPathValueItemItemRows])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'McfDataItemItemRows' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdiirPrimitiveValue'
--
-- * 'mdiirConversionPathValue'
mcfDataItemItemRows
    :: McfDataItemItemRows
mcfDataItemItemRows =
    McfDataItemItemRows
    { _mdiirPrimitiveValue = Nothing
    , _mdiirConversionPathValue = Nothing
    }

-- | A primitive dimension value. A primitive metric value.
mdiirPrimitiveValue :: Lens' McfDataItemItemRows (Maybe Text)
mdiirPrimitiveValue
  = lens _mdiirPrimitiveValue
      (\ s a -> s{_mdiirPrimitiveValue = a})

-- | A conversion path dimension value, containing a list of interactions
-- with their attributes.
mdiirConversionPathValue :: Lens' McfDataItemItemRows [McfDataItemConversionPathValueItemItemRows]
mdiirConversionPathValue
  = lens _mdiirConversionPathValue
      (\ s a -> s{_mdiirConversionPathValue = a})
      . _Default
      . _Coerce

-- | Information for the view (profile), for which the Analytics data was
-- requested.
--
-- /See:/ 'mcfDataProfileInfo' smart constructor.
data McfDataProfileInfo = McfDataProfileInfo
    { _mdpiWebPropertyId         :: !(Maybe Text)
    , _mdpiProfileId             :: !(Maybe Text)
    , _mdpiProfileName           :: !(Maybe Text)
    , _mdpiAccountId             :: !(Maybe Text)
    , _mdpiInternalWebPropertyId :: !(Maybe Text)
    , _mdpiTableId               :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'McfDataProfileInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdpiWebPropertyId'
--
-- * 'mdpiProfileId'
--
-- * 'mdpiProfileName'
--
-- * 'mdpiAccountId'
--
-- * 'mdpiInternalWebPropertyId'
--
-- * 'mdpiTableId'
mcfDataProfileInfo
    :: McfDataProfileInfo
mcfDataProfileInfo =
    McfDataProfileInfo
    { _mdpiWebPropertyId = Nothing
    , _mdpiProfileId = Nothing
    , _mdpiProfileName = Nothing
    , _mdpiAccountId = Nothing
    , _mdpiInternalWebPropertyId = Nothing
    , _mdpiTableId = Nothing
    }

-- | Web Property ID to which this view (profile) belongs.
mdpiWebPropertyId :: Lens' McfDataProfileInfo (Maybe Text)
mdpiWebPropertyId
  = lens _mdpiWebPropertyId
      (\ s a -> s{_mdpiWebPropertyId = a})

-- | View (Profile) ID.
mdpiProfileId :: Lens' McfDataProfileInfo (Maybe Text)
mdpiProfileId
  = lens _mdpiProfileId
      (\ s a -> s{_mdpiProfileId = a})

-- | View (Profile) name.
mdpiProfileName :: Lens' McfDataProfileInfo (Maybe Text)
mdpiProfileName
  = lens _mdpiProfileName
      (\ s a -> s{_mdpiProfileName = a})

-- | Account ID to which this view (profile) belongs.
mdpiAccountId :: Lens' McfDataProfileInfo (Maybe Text)
mdpiAccountId
  = lens _mdpiAccountId
      (\ s a -> s{_mdpiAccountId = a})

-- | Internal ID for the web property to which this view (profile) belongs.
mdpiInternalWebPropertyId :: Lens' McfDataProfileInfo (Maybe Text)
mdpiInternalWebPropertyId
  = lens _mdpiInternalWebPropertyId
      (\ s a -> s{_mdpiInternalWebPropertyId = a})

-- | Table ID for view (profile).
mdpiTableId :: Lens' McfDataProfileInfo (Maybe Text)
mdpiTableId
  = lens _mdpiTableId (\ s a -> s{_mdpiTableId = a})

-- | Analytics data request query parameters.
--
-- /See:/ 'mcfDataQuery' smart constructor.
data McfDataQuery = McfDataQuery
    { _mdqMetrics       :: !(Maybe [Text])
    , _mdqSamplingLevel :: !(Maybe Text)
    , _mdqFilters       :: !(Maybe Text)
    , _mdqIds           :: !(Maybe Text)
    , _mdqEndDate       :: !(Maybe Text)
    , _mdqSort          :: !(Maybe [Text])
    , _mdqDimensions    :: !(Maybe Text)
    , _mdqStartIndex    :: !(Maybe Int32)
    , _mdqMaxResults    :: !(Maybe Int32)
    , _mdqSegment       :: !(Maybe Text)
    , _mdqStartDate     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'McfDataQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdqMetrics'
--
-- * 'mdqSamplingLevel'
--
-- * 'mdqFilters'
--
-- * 'mdqIds'
--
-- * 'mdqEndDate'
--
-- * 'mdqSort'
--
-- * 'mdqDimensions'
--
-- * 'mdqStartIndex'
--
-- * 'mdqMaxResults'
--
-- * 'mdqSegment'
--
-- * 'mdqStartDate'
mcfDataQuery
    :: McfDataQuery
mcfDataQuery =
    McfDataQuery
    { _mdqMetrics = Nothing
    , _mdqSamplingLevel = Nothing
    , _mdqFilters = Nothing
    , _mdqIds = Nothing
    , _mdqEndDate = Nothing
    , _mdqSort = Nothing
    , _mdqDimensions = Nothing
    , _mdqStartIndex = Nothing
    , _mdqMaxResults = Nothing
    , _mdqSegment = Nothing
    , _mdqStartDate = Nothing
    }

-- | List of analytics metrics.
mdqMetrics :: Lens' McfDataQuery [Text]
mdqMetrics
  = lens _mdqMetrics (\ s a -> s{_mdqMetrics = a}) .
      _Default
      . _Coerce

-- | Desired sampling level
mdqSamplingLevel :: Lens' McfDataQuery (Maybe Text)
mdqSamplingLevel
  = lens _mdqSamplingLevel
      (\ s a -> s{_mdqSamplingLevel = a})

-- | Comma-separated list of dimension or metric filters.
mdqFilters :: Lens' McfDataQuery (Maybe Text)
mdqFilters
  = lens _mdqFilters (\ s a -> s{_mdqFilters = a})

-- | Unique table ID.
mdqIds :: Lens' McfDataQuery (Maybe Text)
mdqIds = lens _mdqIds (\ s a -> s{_mdqIds = a})

-- | End date.
mdqEndDate :: Lens' McfDataQuery (Maybe Text)
mdqEndDate
  = lens _mdqEndDate (\ s a -> s{_mdqEndDate = a})

-- | List of dimensions or metrics based on which Analytics data is sorted.
mdqSort :: Lens' McfDataQuery [Text]
mdqSort
  = lens _mdqSort (\ s a -> s{_mdqSort = a}) . _Default
      . _Coerce

-- | List of analytics dimensions.
mdqDimensions :: Lens' McfDataQuery (Maybe Text)
mdqDimensions
  = lens _mdqDimensions
      (\ s a -> s{_mdqDimensions = a})

-- | Start index.
mdqStartIndex :: Lens' McfDataQuery (Maybe Int32)
mdqStartIndex
  = lens _mdqStartIndex
      (\ s a -> s{_mdqStartIndex = a})

-- | Maximum results per page.
mdqMaxResults :: Lens' McfDataQuery (Maybe Int32)
mdqMaxResults
  = lens _mdqMaxResults
      (\ s a -> s{_mdqMaxResults = a})

-- | Analytics advanced segment.
mdqSegment :: Lens' McfDataQuery (Maybe Text)
mdqSegment
  = lens _mdqSegment (\ s a -> s{_mdqSegment = a})

-- | Start date.
mdqStartDate :: Lens' McfDataQuery (Maybe Text)
mdqStartDate
  = lens _mdqStartDate (\ s a -> s{_mdqStartDate = a})

-- | Total values for the requested metrics over all the results, not just
-- the results returned in this response. The order of the metric totals is
-- same as the metric order specified in the request.
--
-- /See:/ 'mcfDataTotalsForAllResults' smart constructor.
data McfDataTotalsForAllResults =
    McfDataTotalsForAllResults
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'McfDataTotalsForAllResults' with the minimum fields required to make a request.
--
mcfDataTotalsForAllResults
    :: McfDataTotalsForAllResults
mcfDataTotalsForAllResults = McfDataTotalsForAllResults

-- | JSON template for an Analytics view (profile).
--
-- /See:/ 'profile' smart constructor.
data Profile = Profile
    { _ppParentLink                        :: !(Maybe ProfileParentLink)
    , _ppECommerceTracking                 :: !(Maybe Bool)
    , _ppSiteSearchCategoryParameters      :: !(Maybe Text)
    , _ppWebPropertyId                     :: !(Maybe Text)
    , _ppChildLink                         :: !(Maybe ProfileChildLink)
    , _ppSiteSearchQueryParameters         :: !(Maybe Text)
    , _ppKind                              :: !Text
    , _ppDefaultPage                       :: !(Maybe Text)
    , _ppCreated                           :: !(Maybe UTCTime)
    , _ppSelfLink                          :: !(Maybe Text)
    , _ppAccountId                         :: !(Maybe Text)
    , _ppName                              :: !(Maybe Text)
    , _ppCurrency                          :: !(Maybe Text)
    , _ppInternalWebPropertyId             :: !(Maybe Text)
    , _ppId                                :: !(Maybe Text)
    , _ppUpdated                           :: !(Maybe UTCTime)
    , _ppPermissions                       :: !(Maybe ProfilePermissions)
    , _ppWebsiteUrl                        :: !(Maybe Text)
    , _ppType                              :: !(Maybe Text)
    , _ppStripSiteSearchCategoryParameters :: !(Maybe Bool)
    , _ppTimezone                          :: !(Maybe Text)
    , _ppExcludeQueryParameters            :: !(Maybe Text)
    , _ppEnhancedECommerceTracking         :: !(Maybe Bool)
    , _ppStripSiteSearchQueryParameters    :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Profile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppParentLink'
--
-- * 'ppECommerceTracking'
--
-- * 'ppSiteSearchCategoryParameters'
--
-- * 'ppWebPropertyId'
--
-- * 'ppChildLink'
--
-- * 'ppSiteSearchQueryParameters'
--
-- * 'ppKind'
--
-- * 'ppDefaultPage'
--
-- * 'ppCreated'
--
-- * 'ppSelfLink'
--
-- * 'ppAccountId'
--
-- * 'ppName'
--
-- * 'ppCurrency'
--
-- * 'ppInternalWebPropertyId'
--
-- * 'ppId'
--
-- * 'ppUpdated'
--
-- * 'ppPermissions'
--
-- * 'ppWebsiteUrl'
--
-- * 'ppType'
--
-- * 'ppStripSiteSearchCategoryParameters'
--
-- * 'ppTimezone'
--
-- * 'ppExcludeQueryParameters'
--
-- * 'ppEnhancedECommerceTracking'
--
-- * 'ppStripSiteSearchQueryParameters'
profile
    :: Profile
profile =
    Profile
    { _ppParentLink = Nothing
    , _ppECommerceTracking = Nothing
    , _ppSiteSearchCategoryParameters = Nothing
    , _ppWebPropertyId = Nothing
    , _ppChildLink = Nothing
    , _ppSiteSearchQueryParameters = Nothing
    , _ppKind = "analytics#profile"
    , _ppDefaultPage = Nothing
    , _ppCreated = Nothing
    , _ppSelfLink = Nothing
    , _ppAccountId = Nothing
    , _ppName = Nothing
    , _ppCurrency = Nothing
    , _ppInternalWebPropertyId = Nothing
    , _ppId = Nothing
    , _ppUpdated = Nothing
    , _ppPermissions = Nothing
    , _ppWebsiteUrl = Nothing
    , _ppType = Nothing
    , _ppStripSiteSearchCategoryParameters = Nothing
    , _ppTimezone = Nothing
    , _ppExcludeQueryParameters = Nothing
    , _ppEnhancedECommerceTracking = Nothing
    , _ppStripSiteSearchQueryParameters = Nothing
    }

-- | Parent link for this view (profile). Points to the web property to which
-- this view (profile) belongs.
ppParentLink :: Lens' Profile (Maybe ProfileParentLink)
ppParentLink
  = lens _ppParentLink (\ s a -> s{_ppParentLink = a})

-- | Indicates whether ecommerce tracking is enabled for this view (profile).
ppECommerceTracking :: Lens' Profile (Maybe Bool)
ppECommerceTracking
  = lens _ppECommerceTracking
      (\ s a -> s{_ppECommerceTracking = a})

-- | Site search category parameters for this view (profile).
ppSiteSearchCategoryParameters :: Lens' Profile (Maybe Text)
ppSiteSearchCategoryParameters
  = lens _ppSiteSearchCategoryParameters
      (\ s a -> s{_ppSiteSearchCategoryParameters = a})

-- | Web property ID of the form UA-XXXXX-YY to which this view (profile)
-- belongs.
ppWebPropertyId :: Lens' Profile (Maybe Text)
ppWebPropertyId
  = lens _ppWebPropertyId
      (\ s a -> s{_ppWebPropertyId = a})

-- | Child link for this view (profile). Points to the list of goals for this
-- view (profile).
ppChildLink :: Lens' Profile (Maybe ProfileChildLink)
ppChildLink
  = lens _ppChildLink (\ s a -> s{_ppChildLink = a})

-- | The site search query parameters for this view (profile).
ppSiteSearchQueryParameters :: Lens' Profile (Maybe Text)
ppSiteSearchQueryParameters
  = lens _ppSiteSearchQueryParameters
      (\ s a -> s{_ppSiteSearchQueryParameters = a})

-- | Resource type for Analytics view (profile).
ppKind :: Lens' Profile Text
ppKind = lens _ppKind (\ s a -> s{_ppKind = a})

-- | Default page for this view (profile).
ppDefaultPage :: Lens' Profile (Maybe Text)
ppDefaultPage
  = lens _ppDefaultPage
      (\ s a -> s{_ppDefaultPage = a})

-- | Time this view (profile) was created.
ppCreated :: Lens' Profile (Maybe UTCTime)
ppCreated
  = lens _ppCreated (\ s a -> s{_ppCreated = a})

-- | Link for this view (profile).
ppSelfLink :: Lens' Profile (Maybe Text)
ppSelfLink
  = lens _ppSelfLink (\ s a -> s{_ppSelfLink = a})

-- | Account ID to which this view (profile) belongs.
ppAccountId :: Lens' Profile (Maybe Text)
ppAccountId
  = lens _ppAccountId (\ s a -> s{_ppAccountId = a})

-- | Name of this view (profile).
ppName :: Lens' Profile (Maybe Text)
ppName = lens _ppName (\ s a -> s{_ppName = a})

-- | The currency type associated with this view (profile), defaults to USD.
-- The supported values are: ARS, AUD, BGN, BRL, CAD, CHF, CNY, CZK, DKK,
-- EUR, GBP, HKD, HUF, IDR, INR, JPY, KRW, LTL, MXN, NOK, NZD, PHP, PLN,
-- RUB, SEK, THB, TRY, TWD, USD, VND, ZAR
ppCurrency :: Lens' Profile (Maybe Text)
ppCurrency
  = lens _ppCurrency (\ s a -> s{_ppCurrency = a})

-- | Internal ID for the web property to which this view (profile) belongs.
ppInternalWebPropertyId :: Lens' Profile (Maybe Text)
ppInternalWebPropertyId
  = lens _ppInternalWebPropertyId
      (\ s a -> s{_ppInternalWebPropertyId = a})

-- | View (Profile) ID.
ppId :: Lens' Profile (Maybe Text)
ppId = lens _ppId (\ s a -> s{_ppId = a})

-- | Time this view (profile) was last modified.
ppUpdated :: Lens' Profile (Maybe UTCTime)
ppUpdated
  = lens _ppUpdated (\ s a -> s{_ppUpdated = a})

-- | Permissions the user has for this view (profile).
ppPermissions :: Lens' Profile (Maybe ProfilePermissions)
ppPermissions
  = lens _ppPermissions
      (\ s a -> s{_ppPermissions = a})

-- | Website URL for this view (profile).
ppWebsiteUrl :: Lens' Profile (Maybe Text)
ppWebsiteUrl
  = lens _ppWebsiteUrl (\ s a -> s{_ppWebsiteUrl = a})

-- | View (Profile) type. Supported types: WEB or APP.
ppType :: Lens' Profile (Maybe Text)
ppType = lens _ppType (\ s a -> s{_ppType = a})

-- | Whether or not Analytics will strip search category parameters from the
-- URLs in your reports.
ppStripSiteSearchCategoryParameters :: Lens' Profile (Maybe Bool)
ppStripSiteSearchCategoryParameters
  = lens _ppStripSiteSearchCategoryParameters
      (\ s a ->
         s{_ppStripSiteSearchCategoryParameters = a})

-- | Time zone for which this view (profile) has been configured. Time zones
-- are identified by strings from the TZ database.
ppTimezone :: Lens' Profile (Maybe Text)
ppTimezone
  = lens _ppTimezone (\ s a -> s{_ppTimezone = a})

-- | The query parameters that are excluded from this view (profile).
ppExcludeQueryParameters :: Lens' Profile (Maybe Text)
ppExcludeQueryParameters
  = lens _ppExcludeQueryParameters
      (\ s a -> s{_ppExcludeQueryParameters = a})

-- | Indicates whether enhanced ecommerce tracking is enabled for this view
-- (profile). This property can only be enabled if ecommerce tracking is
-- enabled.
ppEnhancedECommerceTracking :: Lens' Profile (Maybe Bool)
ppEnhancedECommerceTracking
  = lens _ppEnhancedECommerceTracking
      (\ s a -> s{_ppEnhancedECommerceTracking = a})

-- | Whether or not Analytics will strip search query parameters from the
-- URLs in your reports.
ppStripSiteSearchQueryParameters :: Lens' Profile (Maybe Bool)
ppStripSiteSearchQueryParameters
  = lens _ppStripSiteSearchQueryParameters
      (\ s a -> s{_ppStripSiteSearchQueryParameters = a})

-- | Child link for this view (profile). Points to the list of goals for this
-- view (profile).
--
-- /See:/ 'profileChildLink' smart constructor.
data ProfileChildLink = ProfileChildLink
    { _pclHref :: !(Maybe Text)
    , _pclType :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProfileChildLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pclHref'
--
-- * 'pclType'
profileChildLink
    :: ProfileChildLink
profileChildLink =
    ProfileChildLink
    { _pclHref = Nothing
    , _pclType = "analytics#goals"
    }

-- | Link to the list of goals for this view (profile).
pclHref :: Lens' ProfileChildLink (Maybe Text)
pclHref = lens _pclHref (\ s a -> s{_pclHref = a})

-- | Value is \"analytics#goals\".
pclType :: Lens' ProfileChildLink Text
pclType = lens _pclType (\ s a -> s{_pclType = a})

-- | JSON template for an Analytics profile filter link.
--
-- /See:/ 'profileFilterLink' smart constructor.
data ProfileFilterLink = ProfileFilterLink
    { _pProfileRef :: !(Maybe (Maybe ProfileRef))
    , _pKind       :: !Text
    , _pFilterRef  :: !(Maybe (Maybe FilterRef))
    , _pSelfLink   :: !(Maybe Text)
    , _pId         :: !(Maybe Text)
    , _pRank       :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProfileFilterLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pProfileRef'
--
-- * 'pKind'
--
-- * 'pFilterRef'
--
-- * 'pSelfLink'
--
-- * 'pId'
--
-- * 'pRank'
profileFilterLink
    :: ProfileFilterLink
profileFilterLink =
    ProfileFilterLink
    { _pProfileRef = Nothing
    , _pKind = "analytics#profileFilterLink"
    , _pFilterRef = Nothing
    , _pSelfLink = Nothing
    , _pId = Nothing
    , _pRank = Nothing
    }

-- | View (Profile) for this link.
pProfileRef :: Lens' ProfileFilterLink (Maybe (Maybe ProfileRef))
pProfileRef
  = lens _pProfileRef (\ s a -> s{_pProfileRef = a})

-- | Resource type for Analytics filter.
pKind :: Lens' ProfileFilterLink Text
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | Filter for this link.
pFilterRef :: Lens' ProfileFilterLink (Maybe (Maybe FilterRef))
pFilterRef
  = lens _pFilterRef (\ s a -> s{_pFilterRef = a})

-- | Link for this profile filter link.
pSelfLink :: Lens' ProfileFilterLink (Maybe Text)
pSelfLink
  = lens _pSelfLink (\ s a -> s{_pSelfLink = a})

-- | Profile filter link ID.
pId :: Lens' ProfileFilterLink (Maybe Text)
pId = lens _pId (\ s a -> s{_pId = a})

-- | The rank of this profile filter link relative to the other filters
-- linked to the same profile. For readonly (i.e., list and get)
-- operations, the rank always starts at 1. For write (i.e., create,
-- update, or delete) operations, you may specify a value between 0 and 255
-- inclusively, [0, 255]. In order to insert a link at the end of the list,
-- either don\'t specify a rank or set a rank to a number greater than the
-- largest rank in the list. In order to insert a link to the beginning of
-- the list specify a rank that is less than or equal to 1. The new link
-- will move all existing filters with the same or lower rank down the
-- list. After the link is inserted\/updated\/deleted all profile filter
-- links will be renumbered starting at 1.
pRank :: Lens' ProfileFilterLink (Maybe Int32)
pRank = lens _pRank (\ s a -> s{_pRank = a})

-- | A profile filter link collection lists profile filter links between
-- profiles and filters. Each resource in the collection corresponds to a
-- profile filter link.
--
-- /See:/ 'profileFilterLinks' smart constructor.
data ProfileFilterLinks = ProfileFilterLinks
    { _pflNextLink     :: !(Maybe Text)
    , _pflItemsPerPage :: !(Maybe Int32)
    , _pflKind         :: !Text
    , _pflUsername     :: !(Maybe Text)
    , _pflItems        :: !(Maybe [Maybe ProfileFilterLink])
    , _pflTotalResults :: !(Maybe Int32)
    , _pflStartIndex   :: !(Maybe Int32)
    , _pflPreviousLink :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProfileFilterLinks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pflNextLink'
--
-- * 'pflItemsPerPage'
--
-- * 'pflKind'
--
-- * 'pflUsername'
--
-- * 'pflItems'
--
-- * 'pflTotalResults'
--
-- * 'pflStartIndex'
--
-- * 'pflPreviousLink'
profileFilterLinks
    :: ProfileFilterLinks
profileFilterLinks =
    ProfileFilterLinks
    { _pflNextLink = Nothing
    , _pflItemsPerPage = Nothing
    , _pflKind = "analytics#profileFilterLinks"
    , _pflUsername = Nothing
    , _pflItems = Nothing
    , _pflTotalResults = Nothing
    , _pflStartIndex = Nothing
    , _pflPreviousLink = Nothing
    }

-- | Link to next page for this profile filter link collection.
pflNextLink :: Lens' ProfileFilterLinks (Maybe Text)
pflNextLink
  = lens _pflNextLink (\ s a -> s{_pflNextLink = a})

-- | The maximum number of resources the response can contain, regardless of
-- the actual number of resources returned. Its value ranges from 1 to
-- 1,000 with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
pflItemsPerPage :: Lens' ProfileFilterLinks (Maybe Int32)
pflItemsPerPage
  = lens _pflItemsPerPage
      (\ s a -> s{_pflItemsPerPage = a})

-- | Collection type.
pflKind :: Lens' ProfileFilterLinks Text
pflKind = lens _pflKind (\ s a -> s{_pflKind = a})

-- | Email ID of the authenticated user
pflUsername :: Lens' ProfileFilterLinks (Maybe Text)
pflUsername
  = lens _pflUsername (\ s a -> s{_pflUsername = a})

-- | A list of profile filter links.
pflItems :: Lens' ProfileFilterLinks [Maybe ProfileFilterLink]
pflItems
  = lens _pflItems (\ s a -> s{_pflItems = a}) .
      _Default
      . _Coerce

-- | The total number of results for the query, regardless of the number of
-- results in the response.
pflTotalResults :: Lens' ProfileFilterLinks (Maybe Int32)
pflTotalResults
  = lens _pflTotalResults
      (\ s a -> s{_pflTotalResults = a})

-- | The starting index of the resources, which is 1 by default or otherwise
-- specified by the start-index query parameter.
pflStartIndex :: Lens' ProfileFilterLinks (Maybe Int32)
pflStartIndex
  = lens _pflStartIndex
      (\ s a -> s{_pflStartIndex = a})

-- | Link to previous page for this profile filter link collection.
pflPreviousLink :: Lens' ProfileFilterLinks (Maybe Text)
pflPreviousLink
  = lens _pflPreviousLink
      (\ s a -> s{_pflPreviousLink = a})

-- | Parent link for this view (profile). Points to the web property to which
-- this view (profile) belongs.
--
-- /See:/ 'profileParentLink' smart constructor.
data ProfileParentLink = ProfileParentLink
    { _pplHref :: !(Maybe Text)
    , _pplType :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProfileParentLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pplHref'
--
-- * 'pplType'
profileParentLink
    :: ProfileParentLink
profileParentLink =
    ProfileParentLink
    { _pplHref = Nothing
    , _pplType = "analytics#webproperty"
    }

-- | Link to the web property to which this view (profile) belongs.
pplHref :: Lens' ProfileParentLink (Maybe Text)
pplHref = lens _pplHref (\ s a -> s{_pplHref = a})

-- | Value is \"analytics#webproperty\".
pplType :: Lens' ProfileParentLink Text
pplType = lens _pplType (\ s a -> s{_pplType = a})

-- | Permissions the user has for this view (profile).
--
-- /See:/ 'profilePermissions' smart constructor.
newtype ProfilePermissions = ProfilePermissions
    { _ppEffective :: Maybe [Text]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProfilePermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppEffective'
profilePermissions
    :: ProfilePermissions
profilePermissions =
    ProfilePermissions
    { _ppEffective = Nothing
    }

-- | All the permissions that the user has for this view (profile). These
-- include any implied permissions (e.g., EDIT implies VIEW) or inherited
-- permissions from the parent web property.
ppEffective :: Lens' ProfilePermissions [Text]
ppEffective
  = lens _ppEffective (\ s a -> s{_ppEffective = a}) .
      _Default
      . _Coerce

-- | JSON template for a linked view (profile).
--
-- /See:/ 'profileRef' smart constructor.
data ProfileRef = ProfileRef
    { _prWebPropertyId         :: !(Maybe Text)
    , _prKind                  :: !Text
    , _prHref                  :: !(Maybe Text)
    , _prAccountId             :: !(Maybe Text)
    , _prName                  :: !(Maybe Text)
    , _prInternalWebPropertyId :: !(Maybe Text)
    , _prId                    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProfileRef' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prWebPropertyId'
--
-- * 'prKind'
--
-- * 'prHref'
--
-- * 'prAccountId'
--
-- * 'prName'
--
-- * 'prInternalWebPropertyId'
--
-- * 'prId'
profileRef
    :: ProfileRef
profileRef =
    ProfileRef
    { _prWebPropertyId = Nothing
    , _prKind = "analytics#profileRef"
    , _prHref = Nothing
    , _prAccountId = Nothing
    , _prName = Nothing
    , _prInternalWebPropertyId = Nothing
    , _prId = Nothing
    }

-- | Web property ID of the form UA-XXXXX-YY to which this view (profile)
-- belongs.
prWebPropertyId :: Lens' ProfileRef (Maybe Text)
prWebPropertyId
  = lens _prWebPropertyId
      (\ s a -> s{_prWebPropertyId = a})

-- | Analytics view (profile) reference.
prKind :: Lens' ProfileRef Text
prKind = lens _prKind (\ s a -> s{_prKind = a})

-- | Link for this view (profile).
prHref :: Lens' ProfileRef (Maybe Text)
prHref = lens _prHref (\ s a -> s{_prHref = a})

-- | Account ID to which this view (profile) belongs.
prAccountId :: Lens' ProfileRef (Maybe Text)
prAccountId
  = lens _prAccountId (\ s a -> s{_prAccountId = a})

-- | Name of this view (profile).
prName :: Lens' ProfileRef (Maybe Text)
prName = lens _prName (\ s a -> s{_prName = a})

-- | Internal ID for the web property to which this view (profile) belongs.
prInternalWebPropertyId :: Lens' ProfileRef (Maybe Text)
prInternalWebPropertyId
  = lens _prInternalWebPropertyId
      (\ s a -> s{_prInternalWebPropertyId = a})

-- | View (Profile) ID.
prId :: Lens' ProfileRef (Maybe Text)
prId = lens _prId (\ s a -> s{_prId = a})

-- | JSON template for an Analytics ProfileSummary. ProfileSummary returns
-- basic information (i.e., summary) for a profile.
--
-- /See:/ 'profileSummary' smart constructor.
data ProfileSummary = ProfileSummary
    { _psKind :: !Text
    , _psName :: !(Maybe Text)
    , _psId   :: !(Maybe Text)
    , _psType :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProfileSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psKind'
--
-- * 'psName'
--
-- * 'psId'
--
-- * 'psType'
profileSummary
    :: ProfileSummary
profileSummary =
    ProfileSummary
    { _psKind = "analytics#profileSummary"
    , _psName = Nothing
    , _psId = Nothing
    , _psType = Nothing
    }

-- | Resource type for Analytics ProfileSummary.
psKind :: Lens' ProfileSummary Text
psKind = lens _psKind (\ s a -> s{_psKind = a})

-- | View (profile) name.
psName :: Lens' ProfileSummary (Maybe Text)
psName = lens _psName (\ s a -> s{_psName = a})

-- | View (profile) ID.
psId :: Lens' ProfileSummary (Maybe Text)
psId = lens _psId (\ s a -> s{_psId = a})

-- | View (Profile) type. Supported types: WEB or APP.
psType :: Lens' ProfileSummary (Maybe Text)
psType = lens _psType (\ s a -> s{_psType = a})

-- | A view (profile) collection lists Analytics views (profiles) to which
-- the user has access. Each resource in the collection corresponds to a
-- single Analytics view (profile).
--
-- /See:/ 'profiles' smart constructor.
data Profiles = Profiles
    { _proNextLink     :: !(Maybe Text)
    , _proItemsPerPage :: !(Maybe Int32)
    , _proKind         :: !Text
    , _proUsername     :: !(Maybe Text)
    , _proItems        :: !(Maybe [Maybe Profile])
    , _proTotalResults :: !(Maybe Int32)
    , _proStartIndex   :: !(Maybe Int32)
    , _proPreviousLink :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Profiles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proNextLink'
--
-- * 'proItemsPerPage'
--
-- * 'proKind'
--
-- * 'proUsername'
--
-- * 'proItems'
--
-- * 'proTotalResults'
--
-- * 'proStartIndex'
--
-- * 'proPreviousLink'
profiles
    :: Profiles
profiles =
    Profiles
    { _proNextLink = Nothing
    , _proItemsPerPage = Nothing
    , _proKind = "analytics#profiles"
    , _proUsername = Nothing
    , _proItems = Nothing
    , _proTotalResults = Nothing
    , _proStartIndex = Nothing
    , _proPreviousLink = Nothing
    }

-- | Link to next page for this view (profile) collection.
proNextLink :: Lens' Profiles (Maybe Text)
proNextLink
  = lens _proNextLink (\ s a -> s{_proNextLink = a})

-- | The maximum number of resources the response can contain, regardless of
-- the actual number of resources returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
proItemsPerPage :: Lens' Profiles (Maybe Int32)
proItemsPerPage
  = lens _proItemsPerPage
      (\ s a -> s{_proItemsPerPage = a})

-- | Collection type.
proKind :: Lens' Profiles Text
proKind = lens _proKind (\ s a -> s{_proKind = a})

-- | Email ID of the authenticated user
proUsername :: Lens' Profiles (Maybe Text)
proUsername
  = lens _proUsername (\ s a -> s{_proUsername = a})

-- | A list of views (profiles).
proItems :: Lens' Profiles [Maybe Profile]
proItems
  = lens _proItems (\ s a -> s{_proItems = a}) .
      _Default
      . _Coerce

-- | The total number of results for the query, regardless of the number of
-- results in the response.
proTotalResults :: Lens' Profiles (Maybe Int32)
proTotalResults
  = lens _proTotalResults
      (\ s a -> s{_proTotalResults = a})

-- | The starting index of the resources, which is 1 by default or otherwise
-- specified by the start-index query parameter.
proStartIndex :: Lens' Profiles (Maybe Int32)
proStartIndex
  = lens _proStartIndex
      (\ s a -> s{_proStartIndex = a})

-- | Link to previous page for this view (profile) collection.
proPreviousLink :: Lens' Profiles (Maybe Text)
proPreviousLink
  = lens _proPreviousLink
      (\ s a -> s{_proPreviousLink = a})

-- | Real time data for a given view (profile).
--
-- /See:/ 'realtimeData' smart constructor.
data RealtimeData = RealtimeData
    { _rdProfileInfo         :: !(Maybe RealtimeDataProfileInfo)
    , _rdKind                :: !Text
    , _rdRows                :: !(Maybe [[Text]])
    , _rdSelfLink            :: !(Maybe Text)
    , _rdQuery               :: !(Maybe RealtimeDataQuery)
    , _rdColumnHeaders       :: !(Maybe [RealtimeDataItemColumnHeaders])
    , _rdId                  :: !(Maybe Text)
    , _rdTotalResults        :: !(Maybe Int32)
    , _rdTotalsForAllResults :: !(Maybe RealtimeDataTotalsForAllResults)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RealtimeData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdProfileInfo'
--
-- * 'rdKind'
--
-- * 'rdRows'
--
-- * 'rdSelfLink'
--
-- * 'rdQuery'
--
-- * 'rdColumnHeaders'
--
-- * 'rdId'
--
-- * 'rdTotalResults'
--
-- * 'rdTotalsForAllResults'
realtimeData
    :: RealtimeData
realtimeData =
    RealtimeData
    { _rdProfileInfo = Nothing
    , _rdKind = "analytics#realtimeData"
    , _rdRows = Nothing
    , _rdSelfLink = Nothing
    , _rdQuery = Nothing
    , _rdColumnHeaders = Nothing
    , _rdId = Nothing
    , _rdTotalResults = Nothing
    , _rdTotalsForAllResults = Nothing
    }

-- | Information for the view (profile), for which the real time data was
-- requested.
rdProfileInfo :: Lens' RealtimeData (Maybe RealtimeDataProfileInfo)
rdProfileInfo
  = lens _rdProfileInfo
      (\ s a -> s{_rdProfileInfo = a})

-- | Resource type.
rdKind :: Lens' RealtimeData Text
rdKind = lens _rdKind (\ s a -> s{_rdKind = a})

-- | Real time data rows, where each row contains a list of dimension values
-- followed by the metric values. The order of dimensions and metrics is
-- same as specified in the request.
rdRows :: Lens' RealtimeData [[Text]]
rdRows
  = lens _rdRows (\ s a -> s{_rdRows = a}) . _Default .
      _Coerce

-- | Link to this page.
rdSelfLink :: Lens' RealtimeData (Maybe Text)
rdSelfLink
  = lens _rdSelfLink (\ s a -> s{_rdSelfLink = a})

-- | Real time data request query parameters.
rdQuery :: Lens' RealtimeData (Maybe RealtimeDataQuery)
rdQuery = lens _rdQuery (\ s a -> s{_rdQuery = a})

-- | Column headers that list dimension names followed by the metric names.
-- The order of dimensions and metrics is same as specified in the request.
rdColumnHeaders :: Lens' RealtimeData [RealtimeDataItemColumnHeaders]
rdColumnHeaders
  = lens _rdColumnHeaders
      (\ s a -> s{_rdColumnHeaders = a})
      . _Default
      . _Coerce

-- | Unique ID for this data response.
rdId :: Lens' RealtimeData (Maybe Text)
rdId = lens _rdId (\ s a -> s{_rdId = a})

-- | The total number of rows for the query, regardless of the number of rows
-- in the response.
rdTotalResults :: Lens' RealtimeData (Maybe Int32)
rdTotalResults
  = lens _rdTotalResults
      (\ s a -> s{_rdTotalResults = a})

-- | Total values for the requested metrics over all the results, not just
-- the results returned in this response. The order of the metric totals is
-- same as the metric order specified in the request.
rdTotalsForAllResults :: Lens' RealtimeData (Maybe RealtimeDataTotalsForAllResults)
rdTotalsForAllResults
  = lens _rdTotalsForAllResults
      (\ s a -> s{_rdTotalsForAllResults = a})

--
-- /See:/ 'realtimeDataItemColumnHeaders' smart constructor.
data RealtimeDataItemColumnHeaders = RealtimeDataItemColumnHeaders
    { _rdichColumnType :: !(Maybe Text)
    , _rdichName       :: !(Maybe Text)
    , _rdichDataType   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RealtimeDataItemColumnHeaders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdichColumnType'
--
-- * 'rdichName'
--
-- * 'rdichDataType'
realtimeDataItemColumnHeaders
    :: RealtimeDataItemColumnHeaders
realtimeDataItemColumnHeaders =
    RealtimeDataItemColumnHeaders
    { _rdichColumnType = Nothing
    , _rdichName = Nothing
    , _rdichDataType = Nothing
    }

-- | Column Type. Either DIMENSION or METRIC.
rdichColumnType :: Lens' RealtimeDataItemColumnHeaders (Maybe Text)
rdichColumnType
  = lens _rdichColumnType
      (\ s a -> s{_rdichColumnType = a})

-- | Column name.
rdichName :: Lens' RealtimeDataItemColumnHeaders (Maybe Text)
rdichName
  = lens _rdichName (\ s a -> s{_rdichName = a})

-- | Data type. Dimension column headers have only STRING as the data type.
-- Metric column headers have data types for metric values such as INTEGER,
-- DOUBLE, CURRENCY etc.
rdichDataType :: Lens' RealtimeDataItemColumnHeaders (Maybe Text)
rdichDataType
  = lens _rdichDataType
      (\ s a -> s{_rdichDataType = a})

-- | Information for the view (profile), for which the real time data was
-- requested.
--
-- /See:/ 'realtimeDataProfileInfo' smart constructor.
data RealtimeDataProfileInfo = RealtimeDataProfileInfo
    { _rdpiWebPropertyId         :: !(Maybe Text)
    , _rdpiProfileId             :: !(Maybe Text)
    , _rdpiProfileName           :: !(Maybe Text)
    , _rdpiAccountId             :: !(Maybe Text)
    , _rdpiInternalWebPropertyId :: !(Maybe Text)
    , _rdpiTableId               :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RealtimeDataProfileInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdpiWebPropertyId'
--
-- * 'rdpiProfileId'
--
-- * 'rdpiProfileName'
--
-- * 'rdpiAccountId'
--
-- * 'rdpiInternalWebPropertyId'
--
-- * 'rdpiTableId'
realtimeDataProfileInfo
    :: RealtimeDataProfileInfo
realtimeDataProfileInfo =
    RealtimeDataProfileInfo
    { _rdpiWebPropertyId = Nothing
    , _rdpiProfileId = Nothing
    , _rdpiProfileName = Nothing
    , _rdpiAccountId = Nothing
    , _rdpiInternalWebPropertyId = Nothing
    , _rdpiTableId = Nothing
    }

-- | Web Property ID to which this view (profile) belongs.
rdpiWebPropertyId :: Lens' RealtimeDataProfileInfo (Maybe Text)
rdpiWebPropertyId
  = lens _rdpiWebPropertyId
      (\ s a -> s{_rdpiWebPropertyId = a})

-- | View (Profile) ID.
rdpiProfileId :: Lens' RealtimeDataProfileInfo (Maybe Text)
rdpiProfileId
  = lens _rdpiProfileId
      (\ s a -> s{_rdpiProfileId = a})

-- | View (Profile) name.
rdpiProfileName :: Lens' RealtimeDataProfileInfo (Maybe Text)
rdpiProfileName
  = lens _rdpiProfileName
      (\ s a -> s{_rdpiProfileName = a})

-- | Account ID to which this view (profile) belongs.
rdpiAccountId :: Lens' RealtimeDataProfileInfo (Maybe Text)
rdpiAccountId
  = lens _rdpiAccountId
      (\ s a -> s{_rdpiAccountId = a})

-- | Internal ID for the web property to which this view (profile) belongs.
rdpiInternalWebPropertyId :: Lens' RealtimeDataProfileInfo (Maybe Text)
rdpiInternalWebPropertyId
  = lens _rdpiInternalWebPropertyId
      (\ s a -> s{_rdpiInternalWebPropertyId = a})

-- | Table ID for view (profile).
rdpiTableId :: Lens' RealtimeDataProfileInfo (Maybe Text)
rdpiTableId
  = lens _rdpiTableId (\ s a -> s{_rdpiTableId = a})

-- | Real time data request query parameters.
--
-- /See:/ 'realtimeDataQuery' smart constructor.
data RealtimeDataQuery = RealtimeDataQuery
    { _rdqMetrics    :: !(Maybe [Text])
    , _rdqFilters    :: !(Maybe Text)
    , _rdqIds        :: !(Maybe Text)
    , _rdqSort       :: !(Maybe [Text])
    , _rdqDimensions :: !(Maybe Text)
    , _rdqMaxResults :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RealtimeDataQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdqMetrics'
--
-- * 'rdqFilters'
--
-- * 'rdqIds'
--
-- * 'rdqSort'
--
-- * 'rdqDimensions'
--
-- * 'rdqMaxResults'
realtimeDataQuery
    :: RealtimeDataQuery
realtimeDataQuery =
    RealtimeDataQuery
    { _rdqMetrics = Nothing
    , _rdqFilters = Nothing
    , _rdqIds = Nothing
    , _rdqSort = Nothing
    , _rdqDimensions = Nothing
    , _rdqMaxResults = Nothing
    }

-- | List of real time metrics.
rdqMetrics :: Lens' RealtimeDataQuery [Text]
rdqMetrics
  = lens _rdqMetrics (\ s a -> s{_rdqMetrics = a}) .
      _Default
      . _Coerce

-- | Comma-separated list of dimension or metric filters.
rdqFilters :: Lens' RealtimeDataQuery (Maybe Text)
rdqFilters
  = lens _rdqFilters (\ s a -> s{_rdqFilters = a})

-- | Unique table ID.
rdqIds :: Lens' RealtimeDataQuery (Maybe Text)
rdqIds = lens _rdqIds (\ s a -> s{_rdqIds = a})

-- | List of dimensions or metrics based on which real time data is sorted.
rdqSort :: Lens' RealtimeDataQuery [Text]
rdqSort
  = lens _rdqSort (\ s a -> s{_rdqSort = a}) . _Default
      . _Coerce

-- | List of real time dimensions.
rdqDimensions :: Lens' RealtimeDataQuery (Maybe Text)
rdqDimensions
  = lens _rdqDimensions
      (\ s a -> s{_rdqDimensions = a})

-- | Maximum results per page.
rdqMaxResults :: Lens' RealtimeDataQuery (Maybe Int32)
rdqMaxResults
  = lens _rdqMaxResults
      (\ s a -> s{_rdqMaxResults = a})

-- | Total values for the requested metrics over all the results, not just
-- the results returned in this response. The order of the metric totals is
-- same as the metric order specified in the request.
--
-- /See:/ 'realtimeDataTotalsForAllResults' smart constructor.
data RealtimeDataTotalsForAllResults =
    RealtimeDataTotalsForAllResults
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RealtimeDataTotalsForAllResults' with the minimum fields required to make a request.
--
realtimeDataTotalsForAllResults
    :: RealtimeDataTotalsForAllResults
realtimeDataTotalsForAllResults = RealtimeDataTotalsForAllResults

-- | JSON template for an Analytics segment.
--
-- /See:/ 'segment' smart constructor.
data Segment = Segment
    { _segDefinition :: !(Maybe Text)
    , _segKind       :: !Text
    , _segCreated    :: !(Maybe UTCTime)
    , _segSelfLink   :: !(Maybe Text)
    , _segName       :: !(Maybe Text)
    , _segId         :: !(Maybe Text)
    , _segUpdated    :: !(Maybe UTCTime)
    , _segType       :: !(Maybe Text)
    , _segSegmentId  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Segment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'segDefinition'
--
-- * 'segKind'
--
-- * 'segCreated'
--
-- * 'segSelfLink'
--
-- * 'segName'
--
-- * 'segId'
--
-- * 'segUpdated'
--
-- * 'segType'
--
-- * 'segSegmentId'
segment
    :: Segment
segment =
    Segment
    { _segDefinition = Nothing
    , _segKind = "analytics#segment"
    , _segCreated = Nothing
    , _segSelfLink = Nothing
    , _segName = Nothing
    , _segId = Nothing
    , _segUpdated = Nothing
    , _segType = Nothing
    , _segSegmentId = Nothing
    }

-- | Segment definition.
segDefinition :: Lens' Segment (Maybe Text)
segDefinition
  = lens _segDefinition
      (\ s a -> s{_segDefinition = a})

-- | Resource type for Analytics segment.
segKind :: Lens' Segment Text
segKind = lens _segKind (\ s a -> s{_segKind = a})

-- | Time the segment was created.
segCreated :: Lens' Segment (Maybe UTCTime)
segCreated
  = lens _segCreated (\ s a -> s{_segCreated = a})

-- | Link for this segment.
segSelfLink :: Lens' Segment (Maybe Text)
segSelfLink
  = lens _segSelfLink (\ s a -> s{_segSelfLink = a})

-- | Segment name.
segName :: Lens' Segment (Maybe Text)
segName = lens _segName (\ s a -> s{_segName = a})

-- | Segment ID.
segId :: Lens' Segment (Maybe Text)
segId = lens _segId (\ s a -> s{_segId = a})

-- | Time the segment was last modified.
segUpdated :: Lens' Segment (Maybe UTCTime)
segUpdated
  = lens _segUpdated (\ s a -> s{_segUpdated = a})

-- | Type for a segment. Possible values are \"BUILT_IN\" or \"CUSTOM\".
segType :: Lens' Segment (Maybe Text)
segType = lens _segType (\ s a -> s{_segType = a})

-- | Segment ID. Can be used with the \'segment\' parameter in Core Reporting
-- API.
segSegmentId :: Lens' Segment (Maybe Text)
segSegmentId
  = lens _segSegmentId (\ s a -> s{_segSegmentId = a})

-- | An segment collection lists Analytics segments that the user has access
-- to. Each resource in the collection corresponds to a single Analytics
-- segment.
--
-- /See:/ 'segments' smart constructor.
data Segments = Segments
    { _sNextLink     :: !(Maybe Text)
    , _sItemsPerPage :: !(Maybe Int32)
    , _sKind         :: !Text
    , _sUsername     :: !(Maybe Text)
    , _sItems        :: !(Maybe [Maybe Segment])
    , _sTotalResults :: !(Maybe Int32)
    , _sStartIndex   :: !(Maybe Int32)
    , _sPreviousLink :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Segments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sNextLink'
--
-- * 'sItemsPerPage'
--
-- * 'sKind'
--
-- * 'sUsername'
--
-- * 'sItems'
--
-- * 'sTotalResults'
--
-- * 'sStartIndex'
--
-- * 'sPreviousLink'
segments
    :: Segments
segments =
    Segments
    { _sNextLink = Nothing
    , _sItemsPerPage = Nothing
    , _sKind = "analytics#segments"
    , _sUsername = Nothing
    , _sItems = Nothing
    , _sTotalResults = Nothing
    , _sStartIndex = Nothing
    , _sPreviousLink = Nothing
    }

-- | Link to next page for this segment collection.
sNextLink :: Lens' Segments (Maybe Text)
sNextLink
  = lens _sNextLink (\ s a -> s{_sNextLink = a})

-- | The maximum number of resources the response can contain, regardless of
-- the actual number of resources returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
sItemsPerPage :: Lens' Segments (Maybe Int32)
sItemsPerPage
  = lens _sItemsPerPage
      (\ s a -> s{_sItemsPerPage = a})

-- | Collection type for segments.
sKind :: Lens' Segments Text
sKind = lens _sKind (\ s a -> s{_sKind = a})

-- | Email ID of the authenticated user
sUsername :: Lens' Segments (Maybe Text)
sUsername
  = lens _sUsername (\ s a -> s{_sUsername = a})

-- | A list of segments.
sItems :: Lens' Segments [Maybe Segment]
sItems
  = lens _sItems (\ s a -> s{_sItems = a}) . _Default .
      _Coerce

-- | The total number of results for the query, regardless of the number of
-- results in the response.
sTotalResults :: Lens' Segments (Maybe Int32)
sTotalResults
  = lens _sTotalResults
      (\ s a -> s{_sTotalResults = a})

-- | The starting index of the resources, which is 1 by default or otherwise
-- specified by the start-index query parameter.
sStartIndex :: Lens' Segments (Maybe Int32)
sStartIndex
  = lens _sStartIndex (\ s a -> s{_sStartIndex = a})

-- | Link to previous page for this segment collection.
sPreviousLink :: Lens' Segments (Maybe Text)
sPreviousLink
  = lens _sPreviousLink
      (\ s a -> s{_sPreviousLink = a})

-- | JSON template for Analytics unsampled report resource.
--
-- /See:/ 'unsampledReport' smart constructor.
data UnsampledReport = UnsampledReport
    { _unsDownloadType                :: !(Maybe Text)
    , _unsStatus                      :: !(Maybe Text)
    , _unsMetrics                     :: !(Maybe Text)
    , _unsDriveDownloadDetails        :: !(Maybe UnsampledReportDriveDownloadDetails)
    , _unsWebPropertyId               :: !(Maybe Text)
    , _unsKind                        :: !Text
    , _unsCreated                     :: !(Maybe UTCTime)
    , _unsFilters                     :: !(Maybe Text)
    , _unsProfileId                   :: !(Maybe Text)
    , _unsEndDate                     :: !(Maybe Text)
    , _unsSelfLink                    :: !(Maybe Text)
    , _unsAccountId                   :: !(Maybe Text)
    , _unsId                          :: !(Maybe Text)
    , _unsUpdated                     :: !(Maybe UTCTime)
    , _unsTitle                       :: !(Maybe Text)
    , _unsDimensions                  :: !(Maybe Text)
    , _unsSegment                     :: !(Maybe Text)
    , _unsCloudStorageDownloadDetails :: !(Maybe UnsampledReportCloudStorageDownloadDetails)
    , _unsStartDate                   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UnsampledReport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'unsDownloadType'
--
-- * 'unsStatus'
--
-- * 'unsMetrics'
--
-- * 'unsDriveDownloadDetails'
--
-- * 'unsWebPropertyId'
--
-- * 'unsKind'
--
-- * 'unsCreated'
--
-- * 'unsFilters'
--
-- * 'unsProfileId'
--
-- * 'unsEndDate'
--
-- * 'unsSelfLink'
--
-- * 'unsAccountId'
--
-- * 'unsId'
--
-- * 'unsUpdated'
--
-- * 'unsTitle'
--
-- * 'unsDimensions'
--
-- * 'unsSegment'
--
-- * 'unsCloudStorageDownloadDetails'
--
-- * 'unsStartDate'
unsampledReport
    :: UnsampledReport
unsampledReport =
    UnsampledReport
    { _unsDownloadType = Nothing
    , _unsStatus = Nothing
    , _unsMetrics = Nothing
    , _unsDriveDownloadDetails = Nothing
    , _unsWebPropertyId = Nothing
    , _unsKind = "analytics#unsampledReport"
    , _unsCreated = Nothing
    , _unsFilters = Nothing
    , _unsProfileId = Nothing
    , _unsEndDate = Nothing
    , _unsSelfLink = Nothing
    , _unsAccountId = Nothing
    , _unsId = Nothing
    , _unsUpdated = Nothing
    , _unsTitle = Nothing
    , _unsDimensions = Nothing
    , _unsSegment = Nothing
    , _unsCloudStorageDownloadDetails = Nothing
    , _unsStartDate = Nothing
    }

-- | The type of download you need to use for the report data file.
unsDownloadType :: Lens' UnsampledReport (Maybe Text)
unsDownloadType
  = lens _unsDownloadType
      (\ s a -> s{_unsDownloadType = a})

-- | Status of this unsampled report. Possible values are PENDING, COMPLETED,
-- or FAILED.
unsStatus :: Lens' UnsampledReport (Maybe Text)
unsStatus
  = lens _unsStatus (\ s a -> s{_unsStatus = a})

-- | The metrics for the unsampled report.
unsMetrics :: Lens' UnsampledReport (Maybe Text)
unsMetrics
  = lens _unsMetrics (\ s a -> s{_unsMetrics = a})

-- | Download details for a file stored in Google Drive.
unsDriveDownloadDetails :: Lens' UnsampledReport (Maybe UnsampledReportDriveDownloadDetails)
unsDriveDownloadDetails
  = lens _unsDriveDownloadDetails
      (\ s a -> s{_unsDriveDownloadDetails = a})

-- | Web property ID to which this unsampled report belongs. The web property
-- ID is of the form UA-XXXXX-YY.
unsWebPropertyId :: Lens' UnsampledReport (Maybe Text)
unsWebPropertyId
  = lens _unsWebPropertyId
      (\ s a -> s{_unsWebPropertyId = a})

-- | Resource type for an Analytics unsampled report.
unsKind :: Lens' UnsampledReport Text
unsKind = lens _unsKind (\ s a -> s{_unsKind = a})

-- | Time this unsampled report was created.
unsCreated :: Lens' UnsampledReport (Maybe UTCTime)
unsCreated
  = lens _unsCreated (\ s a -> s{_unsCreated = a})

-- | The filters for the unsampled report.
unsFilters :: Lens' UnsampledReport (Maybe Text)
unsFilters
  = lens _unsFilters (\ s a -> s{_unsFilters = a})

-- | View (Profile) ID to which this unsampled report belongs.
unsProfileId :: Lens' UnsampledReport (Maybe Text)
unsProfileId
  = lens _unsProfileId (\ s a -> s{_unsProfileId = a})

-- | The end date for the unsampled report.
unsEndDate :: Lens' UnsampledReport (Maybe Text)
unsEndDate
  = lens _unsEndDate (\ s a -> s{_unsEndDate = a})

-- | Link for this unsampled report.
unsSelfLink :: Lens' UnsampledReport (Maybe Text)
unsSelfLink
  = lens _unsSelfLink (\ s a -> s{_unsSelfLink = a})

-- | Account ID to which this unsampled report belongs.
unsAccountId :: Lens' UnsampledReport (Maybe Text)
unsAccountId
  = lens _unsAccountId (\ s a -> s{_unsAccountId = a})

-- | Unsampled report ID.
unsId :: Lens' UnsampledReport (Maybe Text)
unsId = lens _unsId (\ s a -> s{_unsId = a})

-- | Time this unsampled report was last modified.
unsUpdated :: Lens' UnsampledReport (Maybe UTCTime)
unsUpdated
  = lens _unsUpdated (\ s a -> s{_unsUpdated = a})

-- | Title of the unsampled report.
unsTitle :: Lens' UnsampledReport (Maybe Text)
unsTitle = lens _unsTitle (\ s a -> s{_unsTitle = a})

-- | The dimensions for the unsampled report.
unsDimensions :: Lens' UnsampledReport (Maybe Text)
unsDimensions
  = lens _unsDimensions
      (\ s a -> s{_unsDimensions = a})

-- | The segment for the unsampled report.
unsSegment :: Lens' UnsampledReport (Maybe Text)
unsSegment
  = lens _unsSegment (\ s a -> s{_unsSegment = a})

-- | Download details for a file stored in Google Cloud Storage.
unsCloudStorageDownloadDetails :: Lens' UnsampledReport (Maybe UnsampledReportCloudStorageDownloadDetails)
unsCloudStorageDownloadDetails
  = lens _unsCloudStorageDownloadDetails
      (\ s a -> s{_unsCloudStorageDownloadDetails = a})

-- | The start date for the unsampled report.
unsStartDate :: Lens' UnsampledReport (Maybe Text)
unsStartDate
  = lens _unsStartDate (\ s a -> s{_unsStartDate = a})

-- | Download details for a file stored in Google Cloud Storage.
--
-- /See:/ 'unsampledReportCloudStorageDownloadDetails' smart constructor.
data UnsampledReportCloudStorageDownloadDetails = UnsampledReportCloudStorageDownloadDetails
    { _urcsddObjectId :: !(Maybe Text)
    , _urcsddBucketId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UnsampledReportCloudStorageDownloadDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urcsddObjectId'
--
-- * 'urcsddBucketId'
unsampledReportCloudStorageDownloadDetails
    :: UnsampledReportCloudStorageDownloadDetails
unsampledReportCloudStorageDownloadDetails =
    UnsampledReportCloudStorageDownloadDetails
    { _urcsddObjectId = Nothing
    , _urcsddBucketId = Nothing
    }

-- | Id of the file object containing the report data.
urcsddObjectId :: Lens' UnsampledReportCloudStorageDownloadDetails (Maybe Text)
urcsddObjectId
  = lens _urcsddObjectId
      (\ s a -> s{_urcsddObjectId = a})

-- | Id of the bucket the file object is stored in.
urcsddBucketId :: Lens' UnsampledReportCloudStorageDownloadDetails (Maybe Text)
urcsddBucketId
  = lens _urcsddBucketId
      (\ s a -> s{_urcsddBucketId = a})

-- | Download details for a file stored in Google Drive.
--
-- /See:/ 'unsampledReportDriveDownloadDetails' smart constructor.
newtype UnsampledReportDriveDownloadDetails = UnsampledReportDriveDownloadDetails
    { _urdddDocumentId :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UnsampledReportDriveDownloadDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urdddDocumentId'
unsampledReportDriveDownloadDetails
    :: UnsampledReportDriveDownloadDetails
unsampledReportDriveDownloadDetails =
    UnsampledReportDriveDownloadDetails
    { _urdddDocumentId = Nothing
    }

-- | Id of the document\/file containing the report data.
urdddDocumentId :: Lens' UnsampledReportDriveDownloadDetails (Maybe Text)
urdddDocumentId
  = lens _urdddDocumentId
      (\ s a -> s{_urdddDocumentId = a})

-- | An unsampled report collection lists Analytics unsampled reports to
-- which the user has access. Each view (profile) can have a set of
-- unsampled reports. Each resource in the unsampled report collection
-- corresponds to a single Analytics unsampled report.
--
-- /See:/ 'unsampledReports' smart constructor.
data UnsampledReports = UnsampledReports
    { _urNextLink     :: !(Maybe Text)
    , _urItemsPerPage :: !(Maybe Int32)
    , _urKind         :: !Text
    , _urUsername     :: !(Maybe Text)
    , _urItems        :: !(Maybe [Maybe UnsampledReport])
    , _urTotalResults :: !(Maybe Int32)
    , _urStartIndex   :: !(Maybe Int32)
    , _urPreviousLink :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UnsampledReports' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urNextLink'
--
-- * 'urItemsPerPage'
--
-- * 'urKind'
--
-- * 'urUsername'
--
-- * 'urItems'
--
-- * 'urTotalResults'
--
-- * 'urStartIndex'
--
-- * 'urPreviousLink'
unsampledReports
    :: UnsampledReports
unsampledReports =
    UnsampledReports
    { _urNextLink = Nothing
    , _urItemsPerPage = Nothing
    , _urKind = "analytics#unsampledReports"
    , _urUsername = Nothing
    , _urItems = Nothing
    , _urTotalResults = Nothing
    , _urStartIndex = Nothing
    , _urPreviousLink = Nothing
    }

-- | Link to next page for this unsampled report collection.
urNextLink :: Lens' UnsampledReports (Maybe Text)
urNextLink
  = lens _urNextLink (\ s a -> s{_urNextLink = a})

-- | The maximum number of resources the response can contain, regardless of
-- the actual number of resources returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
urItemsPerPage :: Lens' UnsampledReports (Maybe Int32)
urItemsPerPage
  = lens _urItemsPerPage
      (\ s a -> s{_urItemsPerPage = a})

-- | Collection type.
urKind :: Lens' UnsampledReports Text
urKind = lens _urKind (\ s a -> s{_urKind = a})

-- | Email ID of the authenticated user
urUsername :: Lens' UnsampledReports (Maybe Text)
urUsername
  = lens _urUsername (\ s a -> s{_urUsername = a})

-- | A list of unsampled reports.
urItems :: Lens' UnsampledReports [Maybe UnsampledReport]
urItems
  = lens _urItems (\ s a -> s{_urItems = a}) . _Default
      . _Coerce

-- | The total number of results for the query, regardless of the number of
-- resources in the result.
urTotalResults :: Lens' UnsampledReports (Maybe Int32)
urTotalResults
  = lens _urTotalResults
      (\ s a -> s{_urTotalResults = a})

-- | The starting index of the resources, which is 1 by default or otherwise
-- specified by the start-index query parameter.
urStartIndex :: Lens' UnsampledReports (Maybe Int32)
urStartIndex
  = lens _urStartIndex (\ s a -> s{_urStartIndex = a})

-- | Link to previous page for this unsampled report collection.
urPreviousLink :: Lens' UnsampledReports (Maybe Text)
urPreviousLink
  = lens _urPreviousLink
      (\ s a -> s{_urPreviousLink = a})

-- | Metadata returned for an upload operation.
--
-- /See:/ 'upload' smart constructor.
data Upload = Upload
    { _uplStatus             :: !(Maybe Text)
    , _uplKind               :: !Text
    , _uplCustomDataSourceId :: !(Maybe Text)
    , _uplAccountId          :: !(Maybe Int64)
    , _uplId                 :: !(Maybe Text)
    , _uplErrors             :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Upload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uplStatus'
--
-- * 'uplKind'
--
-- * 'uplCustomDataSourceId'
--
-- * 'uplAccountId'
--
-- * 'uplId'
--
-- * 'uplErrors'
upload
    :: Upload
upload =
    Upload
    { _uplStatus = Nothing
    , _uplKind = "analytics#upload"
    , _uplCustomDataSourceId = Nothing
    , _uplAccountId = Nothing
    , _uplId = Nothing
    , _uplErrors = Nothing
    }

-- | Upload status. Possible values: PENDING, COMPLETED, FAILED, DELETING,
-- DELETED.
uplStatus :: Lens' Upload (Maybe Text)
uplStatus
  = lens _uplStatus (\ s a -> s{_uplStatus = a})

-- | Resource type for Analytics upload.
uplKind :: Lens' Upload Text
uplKind = lens _uplKind (\ s a -> s{_uplKind = a})

-- | Custom data source Id to which this data import belongs.
uplCustomDataSourceId :: Lens' Upload (Maybe Text)
uplCustomDataSourceId
  = lens _uplCustomDataSourceId
      (\ s a -> s{_uplCustomDataSourceId = a})

-- | Account Id to which this upload belongs.
uplAccountId :: Lens' Upload (Maybe Int64)
uplAccountId
  = lens _uplAccountId (\ s a -> s{_uplAccountId = a})

-- | A unique ID for this upload.
uplId :: Lens' Upload (Maybe Text)
uplId = lens _uplId (\ s a -> s{_uplId = a})

-- | Data import errors collection.
uplErrors :: Lens' Upload [Text]
uplErrors
  = lens _uplErrors (\ s a -> s{_uplErrors = a}) .
      _Default
      . _Coerce

-- | Upload collection lists Analytics uploads to which the user has access.
-- Each custom data source can have a set of uploads. Each resource in the
-- upload collection corresponds to a single Analytics data upload.
--
-- /See:/ 'uploads' smart constructor.
data Uploads = Uploads
    { _uNextLink     :: !(Maybe Text)
    , _uItemsPerPage :: !(Maybe Int32)
    , _uKind         :: !Text
    , _uItems        :: !(Maybe [Maybe Upload])
    , _uTotalResults :: !(Maybe Int32)
    , _uStartIndex   :: !(Maybe Int32)
    , _uPreviousLink :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Uploads' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uNextLink'
--
-- * 'uItemsPerPage'
--
-- * 'uKind'
--
-- * 'uItems'
--
-- * 'uTotalResults'
--
-- * 'uStartIndex'
--
-- * 'uPreviousLink'
uploads
    :: Uploads
uploads =
    Uploads
    { _uNextLink = Nothing
    , _uItemsPerPage = Nothing
    , _uKind = "analytics#uploads"
    , _uItems = Nothing
    , _uTotalResults = Nothing
    , _uStartIndex = Nothing
    , _uPreviousLink = Nothing
    }

-- | Link to next page for this upload collection.
uNextLink :: Lens' Uploads (Maybe Text)
uNextLink
  = lens _uNextLink (\ s a -> s{_uNextLink = a})

-- | The maximum number of resources the response can contain, regardless of
-- the actual number of resources returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
uItemsPerPage :: Lens' Uploads (Maybe Int32)
uItemsPerPage
  = lens _uItemsPerPage
      (\ s a -> s{_uItemsPerPage = a})

-- | Collection type.
uKind :: Lens' Uploads Text
uKind = lens _uKind (\ s a -> s{_uKind = a})

-- | A list of uploads.
uItems :: Lens' Uploads [Maybe Upload]
uItems
  = lens _uItems (\ s a -> s{_uItems = a}) . _Default .
      _Coerce

-- | The total number of results for the query, regardless of the number of
-- resources in the result.
uTotalResults :: Lens' Uploads (Maybe Int32)
uTotalResults
  = lens _uTotalResults
      (\ s a -> s{_uTotalResults = a})

-- | The starting index of the resources, which is 1 by default or otherwise
-- specified by the start-index query parameter.
uStartIndex :: Lens' Uploads (Maybe Int32)
uStartIndex
  = lens _uStartIndex (\ s a -> s{_uStartIndex = a})

-- | Link to previous page for this upload collection.
uPreviousLink :: Lens' Uploads (Maybe Text)
uPreviousLink
  = lens _uPreviousLink
      (\ s a -> s{_uPreviousLink = a})

-- | JSON template for a user reference.
--
-- /See:/ 'userRef' smart constructor.
data UserRef = UserRef
    { _useEmail :: !(Maybe Text)
    , _useKind  :: !Text
    , _useId    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRef' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'useEmail'
--
-- * 'useKind'
--
-- * 'useId'
userRef
    :: UserRef
userRef =
    UserRef
    { _useEmail = Nothing
    , _useKind = "analytics#userRef"
    , _useId = Nothing
    }

-- | Email ID of this user.
useEmail :: Lens' UserRef (Maybe Text)
useEmail = lens _useEmail (\ s a -> s{_useEmail = a})

useKind :: Lens' UserRef Text
useKind = lens _useKind (\ s a -> s{_useKind = a})

-- | User ID.
useId :: Lens' UserRef (Maybe Text)
useId = lens _useId (\ s a -> s{_useId = a})

-- | JSON template for a web property reference.
--
-- /See:/ 'webPropertyRef' smart constructor.
data WebPropertyRef = WebPropertyRef
    { _wprKind                  :: !Text
    , _wprHref                  :: !(Maybe Text)
    , _wprAccountId             :: !(Maybe Text)
    , _wprName                  :: !(Maybe Text)
    , _wprInternalWebPropertyId :: !(Maybe Text)
    , _wprId                    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebPropertyRef' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wprKind'
--
-- * 'wprHref'
--
-- * 'wprAccountId'
--
-- * 'wprName'
--
-- * 'wprInternalWebPropertyId'
--
-- * 'wprId'
webPropertyRef
    :: WebPropertyRef
webPropertyRef =
    WebPropertyRef
    { _wprKind = "analytics#webPropertyRef"
    , _wprHref = Nothing
    , _wprAccountId = Nothing
    , _wprName = Nothing
    , _wprInternalWebPropertyId = Nothing
    , _wprId = Nothing
    }

-- | Analytics web property reference.
wprKind :: Lens' WebPropertyRef Text
wprKind = lens _wprKind (\ s a -> s{_wprKind = a})

-- | Link for this web property.
wprHref :: Lens' WebPropertyRef (Maybe Text)
wprHref = lens _wprHref (\ s a -> s{_wprHref = a})

-- | Account ID to which this web property belongs.
wprAccountId :: Lens' WebPropertyRef (Maybe Text)
wprAccountId
  = lens _wprAccountId (\ s a -> s{_wprAccountId = a})

-- | Name of this web property.
wprName :: Lens' WebPropertyRef (Maybe Text)
wprName = lens _wprName (\ s a -> s{_wprName = a})

-- | Internal ID for this web property.
wprInternalWebPropertyId :: Lens' WebPropertyRef (Maybe Text)
wprInternalWebPropertyId
  = lens _wprInternalWebPropertyId
      (\ s a -> s{_wprInternalWebPropertyId = a})

-- | Web property ID of the form UA-XXXXX-YY.
wprId :: Lens' WebPropertyRef (Maybe Text)
wprId = lens _wprId (\ s a -> s{_wprId = a})

-- | JSON template for an Analytics WebPropertySummary. WebPropertySummary
-- returns basic information (i.e., summary) for a web property.
--
-- /See:/ 'webPropertySummary' smart constructor.
data WebPropertySummary = WebPropertySummary
    { _wpsKind                  :: !Text
    , _wpsProfiles              :: !(Maybe [Maybe ProfileSummary])
    , _wpsName                  :: !(Maybe Text)
    , _wpsInternalWebPropertyId :: !(Maybe Text)
    , _wpsId                    :: !(Maybe Text)
    , _wpsWebsiteUrl            :: !(Maybe Text)
    , _wpsLevel                 :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebPropertySummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wpsKind'
--
-- * 'wpsProfiles'
--
-- * 'wpsName'
--
-- * 'wpsInternalWebPropertyId'
--
-- * 'wpsId'
--
-- * 'wpsWebsiteUrl'
--
-- * 'wpsLevel'
webPropertySummary
    :: WebPropertySummary
webPropertySummary =
    WebPropertySummary
    { _wpsKind = "analytics#webPropertySummary"
    , _wpsProfiles = Nothing
    , _wpsName = Nothing
    , _wpsInternalWebPropertyId = Nothing
    , _wpsId = Nothing
    , _wpsWebsiteUrl = Nothing
    , _wpsLevel = Nothing
    }

-- | Resource type for Analytics WebPropertySummary.
wpsKind :: Lens' WebPropertySummary Text
wpsKind = lens _wpsKind (\ s a -> s{_wpsKind = a})

-- | List of profiles under this web property.
wpsProfiles :: Lens' WebPropertySummary [Maybe ProfileSummary]
wpsProfiles
  = lens _wpsProfiles (\ s a -> s{_wpsProfiles = a}) .
      _Default
      . _Coerce

-- | Web property name.
wpsName :: Lens' WebPropertySummary (Maybe Text)
wpsName = lens _wpsName (\ s a -> s{_wpsName = a})

-- | Internal ID for this web property.
wpsInternalWebPropertyId :: Lens' WebPropertySummary (Maybe Text)
wpsInternalWebPropertyId
  = lens _wpsInternalWebPropertyId
      (\ s a -> s{_wpsInternalWebPropertyId = a})

-- | Web property ID of the form UA-XXXXX-YY.
wpsId :: Lens' WebPropertySummary (Maybe Text)
wpsId = lens _wpsId (\ s a -> s{_wpsId = a})

-- | Website url for this web property.
wpsWebsiteUrl :: Lens' WebPropertySummary (Maybe Text)
wpsWebsiteUrl
  = lens _wpsWebsiteUrl
      (\ s a -> s{_wpsWebsiteUrl = a})

-- | Level for this web property. Possible values are STANDARD or PREMIUM.
wpsLevel :: Lens' WebPropertySummary (Maybe Text)
wpsLevel = lens _wpsLevel (\ s a -> s{_wpsLevel = a})

-- | A web property collection lists Analytics web properties to which the
-- user has access. Each resource in the collection corresponds to a single
-- Analytics web property.
--
-- /See:/ 'webproperties' smart constructor.
data Webproperties = Webproperties
    { _webNextLink     :: !(Maybe Text)
    , _webItemsPerPage :: !(Maybe Int32)
    , _webKind         :: !Text
    , _webUsername     :: !(Maybe Text)
    , _webItems        :: !(Maybe [Maybe Webproperty])
    , _webTotalResults :: !(Maybe Int32)
    , _webStartIndex   :: !(Maybe Int32)
    , _webPreviousLink :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Webproperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'webNextLink'
--
-- * 'webItemsPerPage'
--
-- * 'webKind'
--
-- * 'webUsername'
--
-- * 'webItems'
--
-- * 'webTotalResults'
--
-- * 'webStartIndex'
--
-- * 'webPreviousLink'
webproperties
    :: Webproperties
webproperties =
    Webproperties
    { _webNextLink = Nothing
    , _webItemsPerPage = Nothing
    , _webKind = "analytics#webproperties"
    , _webUsername = Nothing
    , _webItems = Nothing
    , _webTotalResults = Nothing
    , _webStartIndex = Nothing
    , _webPreviousLink = Nothing
    }

-- | Link to next page for this web property collection.
webNextLink :: Lens' Webproperties (Maybe Text)
webNextLink
  = lens _webNextLink (\ s a -> s{_webNextLink = a})

-- | The maximum number of resources the response can contain, regardless of
-- the actual number of resources returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
webItemsPerPage :: Lens' Webproperties (Maybe Int32)
webItemsPerPage
  = lens _webItemsPerPage
      (\ s a -> s{_webItemsPerPage = a})

-- | Collection type.
webKind :: Lens' Webproperties Text
webKind = lens _webKind (\ s a -> s{_webKind = a})

-- | Email ID of the authenticated user
webUsername :: Lens' Webproperties (Maybe Text)
webUsername
  = lens _webUsername (\ s a -> s{_webUsername = a})

-- | A list of web properties.
webItems :: Lens' Webproperties [Maybe Webproperty]
webItems
  = lens _webItems (\ s a -> s{_webItems = a}) .
      _Default
      . _Coerce

-- | The total number of results for the query, regardless of the number of
-- results in the response.
webTotalResults :: Lens' Webproperties (Maybe Int32)
webTotalResults
  = lens _webTotalResults
      (\ s a -> s{_webTotalResults = a})

-- | The starting index of the resources, which is 1 by default or otherwise
-- specified by the start-index query parameter.
webStartIndex :: Lens' Webproperties (Maybe Int32)
webStartIndex
  = lens _webStartIndex
      (\ s a -> s{_webStartIndex = a})

-- | Link to previous page for this web property collection.
webPreviousLink :: Lens' Webproperties (Maybe Text)
webPreviousLink
  = lens _webPreviousLink
      (\ s a -> s{_webPreviousLink = a})

-- | JSON template for an Analytics web property.
--
-- /See:/ 'webproperty' smart constructor.
data Webproperty = Webproperty
    { _wParentLink            :: !(Maybe WebpropertyParentLink)
    , _wChildLink             :: !(Maybe WebpropertyChildLink)
    , _wDefaultProfileId      :: !(Maybe Int64)
    , _wKind                  :: !Text
    , _wCreated               :: !(Maybe UTCTime)
    , _wSelfLink              :: !(Maybe Text)
    , _wAccountId             :: !(Maybe Text)
    , _wName                  :: !(Maybe Text)
    , _wInternalWebPropertyId :: !(Maybe Text)
    , _wId                    :: !(Maybe Text)
    , _wUpdated               :: !(Maybe UTCTime)
    , _wProfileCount          :: !(Maybe Int32)
    , _wPermissions           :: !(Maybe WebpropertyPermissions)
    , _wWebsiteUrl            :: !(Maybe Text)
    , _wIndustryVertical      :: !(Maybe Text)
    , _wLevel                 :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Webproperty' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wParentLink'
--
-- * 'wChildLink'
--
-- * 'wDefaultProfileId'
--
-- * 'wKind'
--
-- * 'wCreated'
--
-- * 'wSelfLink'
--
-- * 'wAccountId'
--
-- * 'wName'
--
-- * 'wInternalWebPropertyId'
--
-- * 'wId'
--
-- * 'wUpdated'
--
-- * 'wProfileCount'
--
-- * 'wPermissions'
--
-- * 'wWebsiteUrl'
--
-- * 'wIndustryVertical'
--
-- * 'wLevel'
webproperty
    :: Webproperty
webproperty =
    Webproperty
    { _wParentLink = Nothing
    , _wChildLink = Nothing
    , _wDefaultProfileId = Nothing
    , _wKind = "analytics#webproperty"
    , _wCreated = Nothing
    , _wSelfLink = Nothing
    , _wAccountId = Nothing
    , _wName = Nothing
    , _wInternalWebPropertyId = Nothing
    , _wId = Nothing
    , _wUpdated = Nothing
    , _wProfileCount = Nothing
    , _wPermissions = Nothing
    , _wWebsiteUrl = Nothing
    , _wIndustryVertical = Nothing
    , _wLevel = Nothing
    }

-- | Parent link for this web property. Points to the account to which this
-- web property belongs.
wParentLink :: Lens' Webproperty (Maybe WebpropertyParentLink)
wParentLink
  = lens _wParentLink (\ s a -> s{_wParentLink = a})

-- | Child link for this web property. Points to the list of views (profiles)
-- for this web property.
wChildLink :: Lens' Webproperty (Maybe WebpropertyChildLink)
wChildLink
  = lens _wChildLink (\ s a -> s{_wChildLink = a})

-- | Default view (profile) ID.
wDefaultProfileId :: Lens' Webproperty (Maybe Int64)
wDefaultProfileId
  = lens _wDefaultProfileId
      (\ s a -> s{_wDefaultProfileId = a})

-- | Resource type for Analytics WebProperty.
wKind :: Lens' Webproperty Text
wKind = lens _wKind (\ s a -> s{_wKind = a})

-- | Time this web property was created.
wCreated :: Lens' Webproperty (Maybe UTCTime)
wCreated = lens _wCreated (\ s a -> s{_wCreated = a})

-- | Link for this web property.
wSelfLink :: Lens' Webproperty (Maybe Text)
wSelfLink
  = lens _wSelfLink (\ s a -> s{_wSelfLink = a})

-- | Account ID to which this web property belongs.
wAccountId :: Lens' Webproperty (Maybe Text)
wAccountId
  = lens _wAccountId (\ s a -> s{_wAccountId = a})

-- | Name of this web property.
wName :: Lens' Webproperty (Maybe Text)
wName = lens _wName (\ s a -> s{_wName = a})

-- | Internal ID for this web property.
wInternalWebPropertyId :: Lens' Webproperty (Maybe Text)
wInternalWebPropertyId
  = lens _wInternalWebPropertyId
      (\ s a -> s{_wInternalWebPropertyId = a})

-- | Web property ID of the form UA-XXXXX-YY.
wId :: Lens' Webproperty (Maybe Text)
wId = lens _wId (\ s a -> s{_wId = a})

-- | Time this web property was last modified.
wUpdated :: Lens' Webproperty (Maybe UTCTime)
wUpdated = lens _wUpdated (\ s a -> s{_wUpdated = a})

-- | View (Profile) count for this web property.
wProfileCount :: Lens' Webproperty (Maybe Int32)
wProfileCount
  = lens _wProfileCount
      (\ s a -> s{_wProfileCount = a})

-- | Permissions the user has for this web property.
wPermissions :: Lens' Webproperty (Maybe WebpropertyPermissions)
wPermissions
  = lens _wPermissions (\ s a -> s{_wPermissions = a})

-- | Website url for this web property.
wWebsiteUrl :: Lens' Webproperty (Maybe Text)
wWebsiteUrl
  = lens _wWebsiteUrl (\ s a -> s{_wWebsiteUrl = a})

-- | The industry vertical\/category selected for this web property.
wIndustryVertical :: Lens' Webproperty (Maybe Text)
wIndustryVertical
  = lens _wIndustryVertical
      (\ s a -> s{_wIndustryVertical = a})

-- | Level for this web property. Possible values are STANDARD or PREMIUM.
wLevel :: Lens' Webproperty (Maybe Text)
wLevel = lens _wLevel (\ s a -> s{_wLevel = a})

-- | Child link for this web property. Points to the list of views (profiles)
-- for this web property.
--
-- /See:/ 'webpropertyChildLink' smart constructor.
data WebpropertyChildLink = WebpropertyChildLink
    { _wclHref :: !(Maybe Text)
    , _wclType :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebpropertyChildLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wclHref'
--
-- * 'wclType'
webpropertyChildLink
    :: WebpropertyChildLink
webpropertyChildLink =
    WebpropertyChildLink
    { _wclHref = Nothing
    , _wclType = "analytics#profiles"
    }

-- | Link to the list of views (profiles) for this web property.
wclHref :: Lens' WebpropertyChildLink (Maybe Text)
wclHref = lens _wclHref (\ s a -> s{_wclHref = a})

-- | Type of the parent link. Its value is \"analytics#profiles\".
wclType :: Lens' WebpropertyChildLink Text
wclType = lens _wclType (\ s a -> s{_wclType = a})

-- | Parent link for this web property. Points to the account to which this
-- web property belongs.
--
-- /See:/ 'webpropertyParentLink' smart constructor.
data WebpropertyParentLink = WebpropertyParentLink
    { _wplHref :: !(Maybe Text)
    , _wplType :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebpropertyParentLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wplHref'
--
-- * 'wplType'
webpropertyParentLink
    :: WebpropertyParentLink
webpropertyParentLink =
    WebpropertyParentLink
    { _wplHref = Nothing
    , _wplType = "analytics#account"
    }

-- | Link to the account for this web property.
wplHref :: Lens' WebpropertyParentLink (Maybe Text)
wplHref = lens _wplHref (\ s a -> s{_wplHref = a})

-- | Type of the parent link. Its value is \"analytics#account\".
wplType :: Lens' WebpropertyParentLink Text
wplType = lens _wplType (\ s a -> s{_wplType = a})

-- | Permissions the user has for this web property.
--
-- /See:/ 'webpropertyPermissions' smart constructor.
newtype WebpropertyPermissions = WebpropertyPermissions
    { _wpEffective :: Maybe [Text]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebpropertyPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wpEffective'
webpropertyPermissions
    :: WebpropertyPermissions
webpropertyPermissions =
    WebpropertyPermissions
    { _wpEffective = Nothing
    }

-- | All the permissions that the user has for this web property. These
-- include any implied permissions (e.g., EDIT implies VIEW) or inherited
-- permissions from the parent account.
wpEffective :: Lens' WebpropertyPermissions [Text]
wpEffective
  = lens _wpEffective (\ s a -> s{_wpEffective = a}) .
      _Default
      . _Coerce
