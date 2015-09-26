{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdExchangeBuyer.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdExchangeBuyer.Types.Product where

import           Network.Google.AdExchangeBuyer.Types.Sum
import           Network.Google.Prelude

-- | Configuration data for an Ad Exchange buyer account.
--
-- /See:/ 'account' smart constructor.
data Account = Account
    { _aMaximumTotalQps        :: !(Maybe Int32)
    , _aKind                   :: !Text
    , _aCookieMatchingUrl      :: !(Maybe Text)
    , _aMaximumActiveCreatives :: !(Maybe Int32)
    , _aCookieMatchingNid      :: !(Maybe Text)
    , _aNumberActiveCreatives  :: !(Maybe Int32)
    , _aId                     :: !(Maybe Int32)
    , _aBidderLocation         :: !(Maybe [AccountItemBidderLocation])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Account' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aMaximumTotalQps'
--
-- * 'aKind'
--
-- * 'aCookieMatchingUrl'
--
-- * 'aMaximumActiveCreatives'
--
-- * 'aCookieMatchingNid'
--
-- * 'aNumberActiveCreatives'
--
-- * 'aId'
--
-- * 'aBidderLocation'
account
    :: Account
account =
    Account
    { _aMaximumTotalQps = Nothing
    , _aKind = "adexchangebuyer#account"
    , _aCookieMatchingUrl = Nothing
    , _aMaximumActiveCreatives = Nothing
    , _aCookieMatchingNid = Nothing
    , _aNumberActiveCreatives = Nothing
    , _aId = Nothing
    , _aBidderLocation = Nothing
    }

-- | The sum of all bidderLocation.maximumQps values cannot exceed this.
-- Please contact your technical account manager if you need to change
-- this.
aMaximumTotalQps :: Lens' Account (Maybe Int32)
aMaximumTotalQps
  = lens _aMaximumTotalQps
      (\ s a -> s{_aMaximumTotalQps = a})

-- | Resource type.
aKind :: Lens' Account Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | The base URL used in cookie match requests.
aCookieMatchingUrl :: Lens' Account (Maybe Text)
aCookieMatchingUrl
  = lens _aCookieMatchingUrl
      (\ s a -> s{_aCookieMatchingUrl = a})

-- | The maximum number of active creatives that an account can have, where a
-- creative is active if it was inserted or bid with in the last 30 days.
-- Please contact your technical account manager if you need to change
-- this.
aMaximumActiveCreatives :: Lens' Account (Maybe Int32)
aMaximumActiveCreatives
  = lens _aMaximumActiveCreatives
      (\ s a -> s{_aMaximumActiveCreatives = a})

-- | The nid parameter value used in cookie match requests. Please contact
-- your technical account manager if you need to change this.
aCookieMatchingNid :: Lens' Account (Maybe Text)
aCookieMatchingNid
  = lens _aCookieMatchingNid
      (\ s a -> s{_aCookieMatchingNid = a})

-- | The number of creatives that this account inserted or bid with in the
-- last 30 days.
aNumberActiveCreatives :: Lens' Account (Maybe Int32)
aNumberActiveCreatives
  = lens _aNumberActiveCreatives
      (\ s a -> s{_aNumberActiveCreatives = a})

-- | Account id.
aId :: Lens' Account (Maybe Int32)
aId = lens _aId (\ s a -> s{_aId = a})

-- | Your bidder locations that have distinct URLs.
aBidderLocation :: Lens' Account [AccountItemBidderLocation]
aBidderLocation
  = lens _aBidderLocation
      (\ s a -> s{_aBidderLocation = a})
      . _Default
      . _Coerce

--
-- /See:/ 'accountItemBidderLocation' smart constructor.
data AccountItemBidderLocation = AccountItemBidderLocation
    { _aiblUrl        :: !(Maybe Text)
    , _aiblMaximumQps :: !(Maybe Int32)
    , _aiblRegion     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountItemBidderLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiblUrl'
--
-- * 'aiblMaximumQps'
--
-- * 'aiblRegion'
accountItemBidderLocation
    :: AccountItemBidderLocation
accountItemBidderLocation =
    AccountItemBidderLocation
    { _aiblUrl = Nothing
    , _aiblMaximumQps = Nothing
    , _aiblRegion = Nothing
    }

-- | The URL to which the Ad Exchange will send bid requests.
aiblUrl :: Lens' AccountItemBidderLocation (Maybe Text)
aiblUrl = lens _aiblUrl (\ s a -> s{_aiblUrl = a})

-- | The maximum queries per second the Ad Exchange will send.
aiblMaximumQps :: Lens' AccountItemBidderLocation (Maybe Int32)
aiblMaximumQps
  = lens _aiblMaximumQps
      (\ s a -> s{_aiblMaximumQps = a})

-- | The geographical region the Ad Exchange should send requests from. Only
-- used by some quota systems, but always setting the value is recommended.
-- Allowed values: - ASIA - EUROPE - US_EAST - US_WEST
aiblRegion :: Lens' AccountItemBidderLocation (Maybe Text)
aiblRegion
  = lens _aiblRegion (\ s a -> s{_aiblRegion = a})

-- | An account feed lists Ad Exchange buyer accounts that the user has
-- access to. Each entry in the feed corresponds to a single buyer account.
--
-- /See:/ 'accountsList' smart constructor.
data AccountsList = AccountsList
    { _alKind  :: !Text
    , _alItems :: !(Maybe [Maybe Account])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alKind'
--
-- * 'alItems'
accountsList
    :: AccountsList
accountsList =
    AccountsList
    { _alKind = "adexchangebuyer#accountsList"
    , _alItems = Nothing
    }

-- | Resource type.
alKind :: Lens' AccountsList Text
alKind = lens _alKind (\ s a -> s{_alKind = a})

-- | A list of accounts.
alItems :: Lens' AccountsList [Maybe Account]
alItems
  = lens _alItems (\ s a -> s{_alItems = a}) . _Default
      . _Coerce

--
-- /See:/ 'adSize' smart constructor.
data AdSize = AdSize
    { _asHeight :: !(Maybe Int32)
    , _asWidth  :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdSize' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asHeight'
--
-- * 'asWidth'
adSize
    :: AdSize
adSize =
    AdSize
    { _asHeight = Nothing
    , _asWidth = Nothing
    }

asHeight :: Lens' AdSize (Maybe Int32)
asHeight = lens _asHeight (\ s a -> s{_asHeight = a})

asWidth :: Lens' AdSize (Maybe Int32)
asWidth = lens _asWidth (\ s a -> s{_asWidth = a})

--
-- /See:/ 'adSlotDto' smart constructor.
data AdSlotDto = AdSlotDto
    { _asdWebPropertyId :: !(Maybe Int32)
    , _asdSize          :: !(Maybe Text)
    , _asdChannelCode   :: !(Maybe Text)
    , _asdChannelId     :: !(Maybe Int32)
    , _asdName          :: !(Maybe Text)
    , _asdDescription   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdSlotDto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asdWebPropertyId'
--
-- * 'asdSize'
--
-- * 'asdChannelCode'
--
-- * 'asdChannelId'
--
-- * 'asdName'
--
-- * 'asdDescription'
adSlotDto
    :: AdSlotDto
adSlotDto =
    AdSlotDto
    { _asdWebPropertyId = Nothing
    , _asdSize = Nothing
    , _asdChannelCode = Nothing
    , _asdChannelId = Nothing
    , _asdName = Nothing
    , _asdDescription = Nothing
    }

asdWebPropertyId :: Lens' AdSlotDto (Maybe Int32)
asdWebPropertyId
  = lens _asdWebPropertyId
      (\ s a -> s{_asdWebPropertyId = a})

asdSize :: Lens' AdSlotDto (Maybe Text)
asdSize = lens _asdSize (\ s a -> s{_asdSize = a})

asdChannelCode :: Lens' AdSlotDto (Maybe Text)
asdChannelCode
  = lens _asdChannelCode
      (\ s a -> s{_asdChannelCode = a})

asdChannelId :: Lens' AdSlotDto (Maybe Int32)
asdChannelId
  = lens _asdChannelId (\ s a -> s{_asdChannelId = a})

asdName :: Lens' AdSlotDto (Maybe Text)
asdName = lens _asdName (\ s a -> s{_asdName = a})

asdDescription :: Lens' AdSlotDto (Maybe Text)
asdDescription
  = lens _asdDescription
      (\ s a -> s{_asdDescription = a})

--
-- /See:/ 'addOrderDealsRequest' smart constructor.
data AddOrderDealsRequest = AddOrderDealsRequest
    { _aodrUpdateAction        :: !(Maybe Text)
    , _aodrDeals               :: !(Maybe [Maybe MarketplaceDeal])
    , _aodrOrderRevisionNumber :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddOrderDealsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aodrUpdateAction'
--
-- * 'aodrDeals'
--
-- * 'aodrOrderRevisionNumber'
addOrderDealsRequest
    :: AddOrderDealsRequest
addOrderDealsRequest =
    AddOrderDealsRequest
    { _aodrUpdateAction = Nothing
    , _aodrDeals = Nothing
    , _aodrOrderRevisionNumber = Nothing
    }

-- | Indicates an optional action to take on the order
aodrUpdateAction :: Lens' AddOrderDealsRequest (Maybe Text)
aodrUpdateAction
  = lens _aodrUpdateAction
      (\ s a -> s{_aodrUpdateAction = a})

-- | The list of deals to add
aodrDeals :: Lens' AddOrderDealsRequest [Maybe MarketplaceDeal]
aodrDeals
  = lens _aodrDeals (\ s a -> s{_aodrDeals = a}) .
      _Default
      . _Coerce

-- | The last known order revision number.
aodrOrderRevisionNumber :: Lens' AddOrderDealsRequest (Maybe Int64)
aodrOrderRevisionNumber
  = lens _aodrOrderRevisionNumber
      (\ s a -> s{_aodrOrderRevisionNumber = a})

--
-- /See:/ 'addOrderDealsResponse' smart constructor.
data AddOrderDealsResponse = AddOrderDealsResponse
    { _aDeals               :: !(Maybe [Maybe MarketplaceDeal])
    , _aOrderRevisionNumber :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddOrderDealsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aDeals'
--
-- * 'aOrderRevisionNumber'
addOrderDealsResponse
    :: AddOrderDealsResponse
addOrderDealsResponse =
    AddOrderDealsResponse
    { _aDeals = Nothing
    , _aOrderRevisionNumber = Nothing
    }

-- | List of deals added (in the same order as passed in the request)
aDeals :: Lens' AddOrderDealsResponse [Maybe MarketplaceDeal]
aDeals
  = lens _aDeals (\ s a -> s{_aDeals = a}) . _Default .
      _Coerce

-- | The updated revision number for the order.
aOrderRevisionNumber :: Lens' AddOrderDealsResponse (Maybe Int64)
aOrderRevisionNumber
  = lens _aOrderRevisionNumber
      (\ s a -> s{_aOrderRevisionNumber = a})

--
-- /See:/ 'addOrderNotesRequest' smart constructor.
newtype AddOrderNotesRequest = AddOrderNotesRequest
    { _aNotes :: Maybe [Maybe MarketplaceNote]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddOrderNotesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aNotes'
addOrderNotesRequest
    :: AddOrderNotesRequest
addOrderNotesRequest =
    AddOrderNotesRequest
    { _aNotes = Nothing
    }

-- | The list of notes to add.
aNotes :: Lens' AddOrderNotesRequest [Maybe MarketplaceNote]
aNotes
  = lens _aNotes (\ s a -> s{_aNotes = a}) . _Default .
      _Coerce

--
-- /See:/ 'addOrderNotesResponse' smart constructor.
newtype AddOrderNotesResponse = AddOrderNotesResponse
    { _aonrNotes :: Maybe [Maybe MarketplaceNote]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddOrderNotesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aonrNotes'
addOrderNotesResponse
    :: AddOrderNotesResponse
addOrderNotesResponse =
    AddOrderNotesResponse
    { _aonrNotes = Nothing
    }

aonrNotes :: Lens' AddOrderNotesResponse [Maybe MarketplaceNote]
aonrNotes
  = lens _aonrNotes (\ s a -> s{_aonrNotes = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'advertiserDto' smart constructor.
data AdvertiserDto = AdvertiserDto
    { _adStatus :: !(Maybe Text)
    , _adBrands :: !(Maybe [Maybe BrandDto])
    , _adName   :: !(Maybe Text)
    , _adId     :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertiserDto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adStatus'
--
-- * 'adBrands'
--
-- * 'adName'
--
-- * 'adId'
advertiserDto
    :: AdvertiserDto
advertiserDto =
    AdvertiserDto
    { _adStatus = Nothing
    , _adBrands = Nothing
    , _adName = Nothing
    , _adId = Nothing
    }

adStatus :: Lens' AdvertiserDto (Maybe Text)
adStatus = lens _adStatus (\ s a -> s{_adStatus = a})

adBrands :: Lens' AdvertiserDto [Maybe BrandDto]
adBrands
  = lens _adBrands (\ s a -> s{_adBrands = a}) .
      _Default
      . _Coerce

adName :: Lens' AdvertiserDto (Maybe Text)
adName = lens _adName (\ s a -> s{_adName = a})

adId :: Lens' AdvertiserDto (Maybe Int64)
adId = lens _adId (\ s a -> s{_adId = a})

--
-- /See:/ 'audienceSegment' smart constructor.
data AudienceSegment = AudienceSegment
    { _asNumCookies  :: !(Maybe Int64)
    , _asName        :: !(Maybe Text)
    , _asId          :: !(Maybe Int64)
    , _asDescription :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AudienceSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asNumCookies'
--
-- * 'asName'
--
-- * 'asId'
--
-- * 'asDescription'
audienceSegment
    :: AudienceSegment
audienceSegment =
    AudienceSegment
    { _asNumCookies = Nothing
    , _asName = Nothing
    , _asId = Nothing
    , _asDescription = Nothing
    }

asNumCookies :: Lens' AudienceSegment (Maybe Int64)
asNumCookies
  = lens _asNumCookies (\ s a -> s{_asNumCookies = a})

asName :: Lens' AudienceSegment (Maybe Text)
asName = lens _asName (\ s a -> s{_asName = a})

asId :: Lens' AudienceSegment (Maybe Int64)
asId = lens _asId (\ s a -> s{_asId = a})

asDescription :: Lens' AudienceSegment (Maybe Text)
asDescription
  = lens _asDescription
      (\ s a -> s{_asDescription = a})

-- | The configuration data for an Ad Exchange billing info.
--
-- /See:/ 'billingInfo' smart constructor.
data BillingInfo = BillingInfo
    { _biKind        :: !Text
    , _biAccountName :: !(Maybe Text)
    , _biAccountId   :: !(Maybe Int32)
    , _biBillingId   :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BillingInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'biKind'
--
-- * 'biAccountName'
--
-- * 'biAccountId'
--
-- * 'biBillingId'
billingInfo
    :: BillingInfo
billingInfo =
    BillingInfo
    { _biKind = "adexchangebuyer#billingInfo"
    , _biAccountName = Nothing
    , _biAccountId = Nothing
    , _biBillingId = Nothing
    }

-- | Resource type.
biKind :: Lens' BillingInfo Text
biKind = lens _biKind (\ s a -> s{_biKind = a})

-- | Account name.
biAccountName :: Lens' BillingInfo (Maybe Text)
biAccountName
  = lens _biAccountName
      (\ s a -> s{_biAccountName = a})

-- | Account id.
biAccountId :: Lens' BillingInfo (Maybe Int32)
biAccountId
  = lens _biAccountId (\ s a -> s{_biAccountId = a})

-- | A list of adgroup IDs associated with this particular account. These IDs
-- may show up as part of a realtime bidding BidRequest, which indicates a
-- bid request for this account.
biBillingId :: Lens' BillingInfo [Text]
biBillingId
  = lens _biBillingId (\ s a -> s{_biBillingId = a}) .
      _Default
      . _Coerce

-- | A billing info feed lists Billing Info the Ad Exchange buyer account has
-- access to. Each entry in the feed corresponds to a single billing info.
--
-- /See:/ 'billingInfoList' smart constructor.
data BillingInfoList = BillingInfoList
    { _bilKind  :: !Text
    , _bilItems :: !(Maybe [Maybe BillingInfo])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BillingInfoList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bilKind'
--
-- * 'bilItems'
billingInfoList
    :: BillingInfoList
billingInfoList =
    BillingInfoList
    { _bilKind = "adexchangebuyer#billingInfoList"
    , _bilItems = Nothing
    }

-- | Resource type.
bilKind :: Lens' BillingInfoList Text
bilKind = lens _bilKind (\ s a -> s{_bilKind = a})

-- | A list of billing info relevant for your account.
bilItems :: Lens' BillingInfoList [Maybe BillingInfo]
bilItems
  = lens _bilItems (\ s a -> s{_bilItems = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'brandDto' smart constructor.
data BrandDto = BrandDto
    { _bAdvertiserId :: !(Maybe Int64)
    , _bName         :: !(Maybe Text)
    , _bId           :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BrandDto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bAdvertiserId'
--
-- * 'bName'
--
-- * 'bId'
brandDto
    :: BrandDto
brandDto =
    BrandDto
    { _bAdvertiserId = Nothing
    , _bName = Nothing
    , _bId = Nothing
    }

bAdvertiserId :: Lens' BrandDto (Maybe Int64)
bAdvertiserId
  = lens _bAdvertiserId
      (\ s a -> s{_bAdvertiserId = a})

bName :: Lens' BrandDto (Maybe Text)
bName = lens _bName (\ s a -> s{_bName = a})

bId :: Lens' BrandDto (Maybe Int64)
bId = lens _bId (\ s a -> s{_bId = a})

-- | The configuration data for Ad Exchange RTB - Budget API.
--
-- /See:/ 'budget' smart constructor.
data Budget = Budget
    { _budCurrencyCode :: !(Maybe Text)
    , _budKind         :: !Text
    , _budBudgetAmount :: !(Maybe Int64)
    , _budAccountId    :: !(Maybe Int64)
    , _budId           :: !(Maybe Text)
    , _budBillingId    :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Budget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'budCurrencyCode'
--
-- * 'budKind'
--
-- * 'budBudgetAmount'
--
-- * 'budAccountId'
--
-- * 'budId'
--
-- * 'budBillingId'
budget
    :: Budget
budget =
    Budget
    { _budCurrencyCode = Nothing
    , _budKind = "adexchangebuyer#budget"
    , _budBudgetAmount = Nothing
    , _budAccountId = Nothing
    , _budId = Nothing
    , _budBillingId = Nothing
    }

-- | The currency code for the buyer. This cannot be altered here.
budCurrencyCode :: Lens' Budget (Maybe Text)
budCurrencyCode
  = lens _budCurrencyCode
      (\ s a -> s{_budCurrencyCode = a})

-- | The kind of the resource, i.e. \"adexchangebuyer#budget\".
budKind :: Lens' Budget Text
budKind = lens _budKind (\ s a -> s{_budKind = a})

-- | The budget amount to apply for the billingId provided. This is required
-- for update requests.
budBudgetAmount :: Lens' Budget (Maybe Int64)
budBudgetAmount
  = lens _budBudgetAmount
      (\ s a -> s{_budBudgetAmount = a})

-- | The id of the account. This is required for get and update requests.
budAccountId :: Lens' Budget (Maybe Int64)
budAccountId
  = lens _budAccountId (\ s a -> s{_budAccountId = a})

-- | The unique id that describes this item.
budId :: Lens' Budget (Maybe Text)
budId = lens _budId (\ s a -> s{_budId = a})

-- | The billing id to determine which adgroup to provide budget information
-- for. This is required for get and update requests.
budBillingId :: Lens' Budget (Maybe Int64)
budBillingId
  = lens _budBillingId (\ s a -> s{_budBillingId = a})

--
-- /See:/ 'buyer' smart constructor.
newtype Buyer = Buyer
    { _bAccountId :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Buyer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bAccountId'
buyer
    :: Buyer
buyer =
    Buyer
    { _bAccountId = Nothing
    }

-- | Adx account id of the buyer.
bAccountId :: Lens' Buyer (Maybe Text)
bAccountId
  = lens _bAccountId (\ s a -> s{_bAccountId = a})

--
-- /See:/ 'buyerDto' smart constructor.
data BuyerDto = BuyerDto
    { _bdSponsorAccountId                 :: !(Maybe Int32)
    , _bdEnabledForInterestTargetingDeals :: !(Maybe Bool)
    , _bdCustomerId                       :: !(Maybe Int32)
    , _bdEnabledForPreferredDeals         :: !(Maybe Bool)
    , _bdAccountId                        :: !(Maybe Int32)
    , _bdDisplayName                      :: !(Maybe Text)
    , _bdId                               :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BuyerDto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdSponsorAccountId'
--
-- * 'bdEnabledForInterestTargetingDeals'
--
-- * 'bdCustomerId'
--
-- * 'bdEnabledForPreferredDeals'
--
-- * 'bdAccountId'
--
-- * 'bdDisplayName'
--
-- * 'bdId'
buyerDto
    :: BuyerDto
buyerDto =
    BuyerDto
    { _bdSponsorAccountId = Nothing
    , _bdEnabledForInterestTargetingDeals = Nothing
    , _bdCustomerId = Nothing
    , _bdEnabledForPreferredDeals = Nothing
    , _bdAccountId = Nothing
    , _bdDisplayName = Nothing
    , _bdId = Nothing
    }

bdSponsorAccountId :: Lens' BuyerDto (Maybe Int32)
bdSponsorAccountId
  = lens _bdSponsorAccountId
      (\ s a -> s{_bdSponsorAccountId = a})

bdEnabledForInterestTargetingDeals :: Lens' BuyerDto (Maybe Bool)
bdEnabledForInterestTargetingDeals
  = lens _bdEnabledForInterestTargetingDeals
      (\ s a -> s{_bdEnabledForInterestTargetingDeals = a})

bdCustomerId :: Lens' BuyerDto (Maybe Int32)
bdCustomerId
  = lens _bdCustomerId (\ s a -> s{_bdCustomerId = a})

bdEnabledForPreferredDeals :: Lens' BuyerDto (Maybe Bool)
bdEnabledForPreferredDeals
  = lens _bdEnabledForPreferredDeals
      (\ s a -> s{_bdEnabledForPreferredDeals = a})

bdAccountId :: Lens' BuyerDto (Maybe Int32)
bdAccountId
  = lens _bdAccountId (\ s a -> s{_bdAccountId = a})

bdDisplayName :: Lens' BuyerDto (Maybe Text)
bdDisplayName
  = lens _bdDisplayName
      (\ s a -> s{_bdDisplayName = a})

bdId :: Lens' BuyerDto (Maybe Int32)
bdId = lens _bdId (\ s a -> s{_bdId = a})

--
-- /See:/ 'clientAccessCapabilities' smart constructor.
data ClientAccessCapabilities = ClientAccessCapabilities
    { _cacClientAccountId :: !(Maybe Int64)
    , _cacCapabilities    :: !(Maybe [Int32])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientAccessCapabilities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cacClientAccountId'
--
-- * 'cacCapabilities'
clientAccessCapabilities
    :: ClientAccessCapabilities
clientAccessCapabilities =
    ClientAccessCapabilities
    { _cacClientAccountId = Nothing
    , _cacCapabilities = Nothing
    }

cacClientAccountId :: Lens' ClientAccessCapabilities (Maybe Int64)
cacClientAccountId
  = lens _cacClientAccountId
      (\ s a -> s{_cacClientAccountId = a})

cacCapabilities :: Lens' ClientAccessCapabilities [Int32]
cacCapabilities
  = lens _cacCapabilities
      (\ s a -> s{_cacCapabilities = a})
      . _Default
      . _Coerce

--
-- /See:/ 'contactInformation' smart constructor.
data ContactInformation = ContactInformation
    { _ciEmail :: !(Maybe Text)
    , _ciName  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContactInformation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciEmail'
--
-- * 'ciName'
contactInformation
    :: ContactInformation
contactInformation =
    ContactInformation
    { _ciEmail = Nothing
    , _ciName = Nothing
    }

-- | Email address of the contact.
ciEmail :: Lens' ContactInformation (Maybe Text)
ciEmail = lens _ciEmail (\ s a -> s{_ciEmail = a})

-- | The name of the contact.
ciName :: Lens' ContactInformation (Maybe Text)
ciName = lens _ciName (\ s a -> s{_ciName = a})

--
-- /See:/ 'createOrdersRequest' smart constructor.
data CreateOrdersRequest = CreateOrdersRequest
    { _cWebPropertyCode :: !(Maybe Text)
    , _cOrders          :: !(Maybe [Maybe MarketplaceOrder])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateOrdersRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cWebPropertyCode'
--
-- * 'cOrders'
createOrdersRequest
    :: CreateOrdersRequest
createOrdersRequest =
    CreateOrdersRequest
    { _cWebPropertyCode = Nothing
    , _cOrders = Nothing
    }

cWebPropertyCode :: Lens' CreateOrdersRequest (Maybe Text)
cWebPropertyCode
  = lens _cWebPropertyCode
      (\ s a -> s{_cWebPropertyCode = a})

-- | The list of orders to create.
cOrders :: Lens' CreateOrdersRequest [Maybe MarketplaceOrder]
cOrders
  = lens _cOrders (\ s a -> s{_cOrders = a}) . _Default
      . _Coerce

--
-- /See:/ 'createOrdersResponse' smart constructor.
newtype CreateOrdersResponse = CreateOrdersResponse
    { _corOrders :: Maybe [Maybe MarketplaceOrder]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateOrdersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'corOrders'
createOrdersResponse
    :: CreateOrdersResponse
createOrdersResponse =
    CreateOrdersResponse
    { _corOrders = Nothing
    }

-- | The list of orders successfully created.
corOrders :: Lens' CreateOrdersResponse [Maybe MarketplaceOrder]
corOrders
  = lens _corOrders (\ s a -> s{_corOrders = a}) .
      _Default
      . _Coerce

-- | A creative and its classification data.
--
-- /See:/ 'creative' smart constructor.
data Creative = Creative
    { _cAttribute             :: !(Maybe [Int32])
    , _cNativeAd              :: !(Maybe CreativeNativeAd)
    , _cHeight                :: !(Maybe Int32)
    , _cBuyerCreativeId       :: !(Maybe Text)
    , _cAdvertiserName        :: !(Maybe Text)
    , _cAgencyId              :: !(Maybe Int64)
    , _cCorrections           :: !(Maybe [CreativeItemCorrections])
    , _cProductCategories     :: !(Maybe [Int32])
    , _cKind                  :: !Text
    , _cHTMLSnippet           :: !(Maybe Text)
    , _cAdvertiserId          :: !(Maybe [Int64])
    , _cRestrictedCategories  :: !(Maybe [Int32])
    , _cDealsStatus           :: !(Maybe Text)
    , _cWidth                 :: !(Maybe Int32)
    , _cClickThroughUrl       :: !(Maybe [Text])
    , _cVendorType            :: !(Maybe [Int32])
    , _cAccountId             :: !(Maybe Int32)
    , _cImpressionTrackingUrl :: !(Maybe [Text])
    , _cFilteringReasons      :: !(Maybe CreativeFilteringReasons)
    , _cVersion               :: !(Maybe Int32)
    , _cSensitiveCategories   :: !(Maybe [Int32])
    , _cVideoURL              :: !(Maybe Text)
    , _cApiUploadTimestamp    :: !(Maybe UTCTime)
    , _cServingRestrictions   :: !(Maybe [CreativeItemServingRestrictions])
    , _cOpenAuctionStatus     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Creative' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cAttribute'
--
-- * 'cNativeAd'
--
-- * 'cHeight'
--
-- * 'cBuyerCreativeId'
--
-- * 'cAdvertiserName'
--
-- * 'cAgencyId'
--
-- * 'cCorrections'
--
-- * 'cProductCategories'
--
-- * 'cKind'
--
-- * 'cHTMLSnippet'
--
-- * 'cAdvertiserId'
--
-- * 'cRestrictedCategories'
--
-- * 'cDealsStatus'
--
-- * 'cWidth'
--
-- * 'cClickThroughUrl'
--
-- * 'cVendorType'
--
-- * 'cAccountId'
--
-- * 'cImpressionTrackingUrl'
--
-- * 'cFilteringReasons'
--
-- * 'cVersion'
--
-- * 'cSensitiveCategories'
--
-- * 'cVideoURL'
--
-- * 'cApiUploadTimestamp'
--
-- * 'cServingRestrictions'
--
-- * 'cOpenAuctionStatus'
creative
    :: Creative
creative =
    Creative
    { _cAttribute = Nothing
    , _cNativeAd = Nothing
    , _cHeight = Nothing
    , _cBuyerCreativeId = Nothing
    , _cAdvertiserName = Nothing
    , _cAgencyId = Nothing
    , _cCorrections = Nothing
    , _cProductCategories = Nothing
    , _cKind = "adexchangebuyer#creative"
    , _cHTMLSnippet = Nothing
    , _cAdvertiserId = Nothing
    , _cRestrictedCategories = Nothing
    , _cDealsStatus = Nothing
    , _cWidth = Nothing
    , _cClickThroughUrl = Nothing
    , _cVendorType = Nothing
    , _cAccountId = Nothing
    , _cImpressionTrackingUrl = Nothing
    , _cFilteringReasons = Nothing
    , _cVersion = Nothing
    , _cSensitiveCategories = Nothing
    , _cVideoURL = Nothing
    , _cApiUploadTimestamp = Nothing
    , _cServingRestrictions = Nothing
    , _cOpenAuctionStatus = Nothing
    }

-- | All attributes for the ads that may be shown from this snippet.
cAttribute :: Lens' Creative [Int32]
cAttribute
  = lens _cAttribute (\ s a -> s{_cAttribute = a}) .
      _Default
      . _Coerce

-- | If nativeAd is set, HTMLSnippet and videoURL should not be set.
cNativeAd :: Lens' Creative (Maybe CreativeNativeAd)
cNativeAd
  = lens _cNativeAd (\ s a -> s{_cNativeAd = a})

-- | Ad height.
cHeight :: Lens' Creative (Maybe Int32)
cHeight = lens _cHeight (\ s a -> s{_cHeight = a})

-- | A buyer-specific id identifying the creative in this ad.
cBuyerCreativeId :: Lens' Creative (Maybe Text)
cBuyerCreativeId
  = lens _cBuyerCreativeId
      (\ s a -> s{_cBuyerCreativeId = a})

-- | The name of the company being advertised in the creative.
cAdvertiserName :: Lens' Creative (Maybe Text)
cAdvertiserName
  = lens _cAdvertiserName
      (\ s a -> s{_cAdvertiserName = a})

-- | The agency id for this creative.
cAgencyId :: Lens' Creative (Maybe Int64)
cAgencyId
  = lens _cAgencyId (\ s a -> s{_cAgencyId = a})

-- | Shows any corrections that were applied to this creative. Read-only.
-- This field should not be set in requests.
cCorrections :: Lens' Creative [CreativeItemCorrections]
cCorrections
  = lens _cCorrections (\ s a -> s{_cCorrections = a})
      . _Default
      . _Coerce

-- | Detected product categories, if any. Read-only. This field should not be
-- set in requests.
cProductCategories :: Lens' Creative [Int32]
cProductCategories
  = lens _cProductCategories
      (\ s a -> s{_cProductCategories = a})
      . _Default
      . _Coerce

-- | Resource type.
cKind :: Lens' Creative Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | The HTML snippet that displays the ad when inserted in the web page. If
-- set, videoURL should not be set.
cHTMLSnippet :: Lens' Creative (Maybe Text)
cHTMLSnippet
  = lens _cHTMLSnippet (\ s a -> s{_cHTMLSnippet = a})

-- | Detected advertiser id, if any. Read-only. This field should not be set
-- in requests.
cAdvertiserId :: Lens' Creative [Int64]
cAdvertiserId
  = lens _cAdvertiserId
      (\ s a -> s{_cAdvertiserId = a})
      . _Default
      . _Coerce

-- | All restricted categories for the ads that may be shown from this
-- snippet.
cRestrictedCategories :: Lens' Creative [Int32]
cRestrictedCategories
  = lens _cRestrictedCategories
      (\ s a -> s{_cRestrictedCategories = a})
      . _Default
      . _Coerce

-- | Top-level deals status. Read-only. This field should not be set in
-- requests. If disapproved, an entry for auctionType=DIRECT_DEALS (or ALL)
-- in servingRestrictions will also exist. Note that this may be nuanced
-- with other contextual restrictions, in which case it may be preferable
-- to read from servingRestrictions directly.
cDealsStatus :: Lens' Creative (Maybe Text)
cDealsStatus
  = lens _cDealsStatus (\ s a -> s{_cDealsStatus = a})

-- | Ad width.
cWidth :: Lens' Creative (Maybe Int32)
cWidth = lens _cWidth (\ s a -> s{_cWidth = a})

-- | The set of destination urls for the snippet.
cClickThroughUrl :: Lens' Creative [Text]
cClickThroughUrl
  = lens _cClickThroughUrl
      (\ s a -> s{_cClickThroughUrl = a})
      . _Default
      . _Coerce

-- | All vendor types for the ads that may be shown from this snippet.
cVendorType :: Lens' Creative [Int32]
cVendorType
  = lens _cVendorType (\ s a -> s{_cVendorType = a}) .
      _Default
      . _Coerce

-- | Account id.
cAccountId :: Lens' Creative (Maybe Int32)
cAccountId
  = lens _cAccountId (\ s a -> s{_cAccountId = a})

-- | The set of urls to be called to record an impression.
cImpressionTrackingUrl :: Lens' Creative [Text]
cImpressionTrackingUrl
  = lens _cImpressionTrackingUrl
      (\ s a -> s{_cImpressionTrackingUrl = a})
      . _Default
      . _Coerce

-- | The filtering reasons for the creative. Read-only. This field should not
-- be set in requests.
cFilteringReasons :: Lens' Creative (Maybe CreativeFilteringReasons)
cFilteringReasons
  = lens _cFilteringReasons
      (\ s a -> s{_cFilteringReasons = a})

-- | The version for this creative. Read-only. This field should not be set
-- in requests.
cVersion :: Lens' Creative (Maybe Int32)
cVersion = lens _cVersion (\ s a -> s{_cVersion = a})

-- | Detected sensitive categories, if any. Read-only. This field should not
-- be set in requests.
cSensitiveCategories :: Lens' Creative [Int32]
cSensitiveCategories
  = lens _cSensitiveCategories
      (\ s a -> s{_cSensitiveCategories = a})
      . _Default
      . _Coerce

-- | The url to fetch a video ad. If set, HTMLSnippet should not be set.
cVideoURL :: Lens' Creative (Maybe Text)
cVideoURL
  = lens _cVideoURL (\ s a -> s{_cVideoURL = a})

-- | The last upload timestamp of this creative if it was uploaded via API.
-- Read-only. The value of this field is generated, and will be ignored for
-- uploads. (formatted RFC 3339 timestamp).
cApiUploadTimestamp :: Lens' Creative (Maybe UTCTime)
cApiUploadTimestamp
  = lens _cApiUploadTimestamp
      (\ s a -> s{_cApiUploadTimestamp = a})

-- | The granular status of this ad in specific contexts. A context here
-- relates to where something ultimately serves (for example, a physical
-- location, a platform, an HTTPS vs HTTP request, or the type of auction).
-- Read-only. This field should not be set in requests.
cServingRestrictions :: Lens' Creative [CreativeItemServingRestrictions]
cServingRestrictions
  = lens _cServingRestrictions
      (\ s a -> s{_cServingRestrictions = a})
      . _Default
      . _Coerce

-- | Top-level open auction status. Read-only. This field should not be set
-- in requests. If disapproved, an entry for auctionType=OPEN_AUCTION (or
-- ALL) in servingRestrictions will also exist. Note that this may be
-- nuanced with other contextual restrictions, in which case it may be
-- preferable to read from ServingRestrictions directly.
cOpenAuctionStatus :: Lens' Creative (Maybe Text)
cOpenAuctionStatus
  = lens _cOpenAuctionStatus
      (\ s a -> s{_cOpenAuctionStatus = a})

-- | The app icon, for app download ads.
--
-- /See:/ 'creativeAppIconNativeAd' smart constructor.
data CreativeAppIconNativeAd = CreativeAppIconNativeAd
    { _cainaHeight :: !(Maybe Int32)
    , _cainaUrl    :: !(Maybe Text)
    , _cainaWidth  :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeAppIconNativeAd' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cainaHeight'
--
-- * 'cainaUrl'
--
-- * 'cainaWidth'
creativeAppIconNativeAd
    :: CreativeAppIconNativeAd
creativeAppIconNativeAd =
    CreativeAppIconNativeAd
    { _cainaHeight = Nothing
    , _cainaUrl = Nothing
    , _cainaWidth = Nothing
    }

cainaHeight :: Lens' CreativeAppIconNativeAd (Maybe Int32)
cainaHeight
  = lens _cainaHeight (\ s a -> s{_cainaHeight = a})

cainaUrl :: Lens' CreativeAppIconNativeAd (Maybe Text)
cainaUrl = lens _cainaUrl (\ s a -> s{_cainaUrl = a})

cainaWidth :: Lens' CreativeAppIconNativeAd (Maybe Int32)
cainaWidth
  = lens _cainaWidth (\ s a -> s{_cainaWidth = a})

-- | The filtering reasons for the creative. Read-only. This field should not
-- be set in requests.
--
-- /See:/ 'creativeFilteringReasons' smart constructor.
data CreativeFilteringReasons = CreativeFilteringReasons
    { _cfrReasons :: !(Maybe [CreativeItemReasonsFilteringReasons])
    , _cfrDate    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFilteringReasons' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfrReasons'
--
-- * 'cfrDate'
creativeFilteringReasons
    :: CreativeFilteringReasons
creativeFilteringReasons =
    CreativeFilteringReasons
    { _cfrReasons = Nothing
    , _cfrDate = Nothing
    }

-- | The filtering reasons.
cfrReasons :: Lens' CreativeFilteringReasons [CreativeItemReasonsFilteringReasons]
cfrReasons
  = lens _cfrReasons (\ s a -> s{_cfrReasons = a}) .
      _Default
      . _Coerce

-- | The date in ISO 8601 format for the data. The data is collected from
-- 00:00:00 to 23:59:59 in PST.
cfrDate :: Lens' CreativeFilteringReasons (Maybe Text)
cfrDate = lens _cfrDate (\ s a -> s{_cfrDate = a})

-- | A large image.
--
-- /See:/ 'creativeImageNativeAd' smart constructor.
data CreativeImageNativeAd = CreativeImageNativeAd
    { _cinaHeight :: !(Maybe Int32)
    , _cinaUrl    :: !(Maybe Text)
    , _cinaWidth  :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeImageNativeAd' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cinaHeight'
--
-- * 'cinaUrl'
--
-- * 'cinaWidth'
creativeImageNativeAd
    :: CreativeImageNativeAd
creativeImageNativeAd =
    CreativeImageNativeAd
    { _cinaHeight = Nothing
    , _cinaUrl = Nothing
    , _cinaWidth = Nothing
    }

cinaHeight :: Lens' CreativeImageNativeAd (Maybe Int32)
cinaHeight
  = lens _cinaHeight (\ s a -> s{_cinaHeight = a})

cinaUrl :: Lens' CreativeImageNativeAd (Maybe Text)
cinaUrl = lens _cinaUrl (\ s a -> s{_cinaUrl = a})

cinaWidth :: Lens' CreativeImageNativeAd (Maybe Int32)
cinaWidth
  = lens _cinaWidth (\ s a -> s{_cinaWidth = a})

--
-- /See:/ 'creativeItemContextsItemServingRestrictions' smart constructor.
data CreativeItemContextsItemServingRestrictions = CreativeItemContextsItemServingRestrictions
    { _cicisrPlatform      :: !(Maybe [Text])
    , _cicisrContextType   :: !(Maybe Text)
    , _cicisrAuctionType   :: !(Maybe [Text])
    , _cicisrGeoCriteriaId :: !(Maybe [Int32])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeItemContextsItemServingRestrictions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cicisrPlatform'
--
-- * 'cicisrContextType'
--
-- * 'cicisrAuctionType'
--
-- * 'cicisrGeoCriteriaId'
creativeItemContextsItemServingRestrictions
    :: CreativeItemContextsItemServingRestrictions
creativeItemContextsItemServingRestrictions =
    CreativeItemContextsItemServingRestrictions
    { _cicisrPlatform = Nothing
    , _cicisrContextType = Nothing
    , _cicisrAuctionType = Nothing
    , _cicisrGeoCriteriaId = Nothing
    }

-- | Only set when contextType=PLATFORM. Represents the platforms this
-- restriction applies to.
cicisrPlatform :: Lens' CreativeItemContextsItemServingRestrictions [Text]
cicisrPlatform
  = lens _cicisrPlatform
      (\ s a -> s{_cicisrPlatform = a})
      . _Default
      . _Coerce

-- | The type of context (e.g., location, platform, auction type, SSL-ness).
cicisrContextType :: Lens' CreativeItemContextsItemServingRestrictions (Maybe Text)
cicisrContextType
  = lens _cicisrContextType
      (\ s a -> s{_cicisrContextType = a})

-- | Only set when contextType=AUCTION_TYPE. Represents the auction types
-- this restriction applies to.
cicisrAuctionType :: Lens' CreativeItemContextsItemServingRestrictions [Text]
cicisrAuctionType
  = lens _cicisrAuctionType
      (\ s a -> s{_cicisrAuctionType = a})
      . _Default
      . _Coerce

-- | Only set when contextType=LOCATION. Represents the geo criterias this
-- restriction applies to.
cicisrGeoCriteriaId :: Lens' CreativeItemContextsItemServingRestrictions [Int32]
cicisrGeoCriteriaId
  = lens _cicisrGeoCriteriaId
      (\ s a -> s{_cicisrGeoCriteriaId = a})
      . _Default
      . _Coerce

--
-- /See:/ 'creativeItemCorrections' smart constructor.
data CreativeItemCorrections = CreativeItemCorrections
    { _cicReason  :: !(Maybe Text)
    , _cicDetails :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeItemCorrections' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cicReason'
--
-- * 'cicDetails'
creativeItemCorrections
    :: CreativeItemCorrections
creativeItemCorrections =
    CreativeItemCorrections
    { _cicReason = Nothing
    , _cicDetails = Nothing
    }

-- | The type of correction that was applied to the creative.
cicReason :: Lens' CreativeItemCorrections (Maybe Text)
cicReason
  = lens _cicReason (\ s a -> s{_cicReason = a})

-- | Additional details about the correction.
cicDetails :: Lens' CreativeItemCorrections [Text]
cicDetails
  = lens _cicDetails (\ s a -> s{_cicDetails = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'creativeItemDisapprovalReasonsItemServingRestrictions' smart constructor.
data CreativeItemDisapprovalReasonsItemServingRestrictions = CreativeItemDisapprovalReasonsItemServingRestrictions
    { _cidrisrReason  :: !(Maybe Text)
    , _cidrisrDetails :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeItemDisapprovalReasonsItemServingRestrictions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cidrisrReason'
--
-- * 'cidrisrDetails'
creativeItemDisapprovalReasonsItemServingRestrictions
    :: CreativeItemDisapprovalReasonsItemServingRestrictions
creativeItemDisapprovalReasonsItemServingRestrictions =
    CreativeItemDisapprovalReasonsItemServingRestrictions
    { _cidrisrReason = Nothing
    , _cidrisrDetails = Nothing
    }

-- | The categorized reason for disapproval.
cidrisrReason :: Lens' CreativeItemDisapprovalReasonsItemServingRestrictions (Maybe Text)
cidrisrReason
  = lens _cidrisrReason
      (\ s a -> s{_cidrisrReason = a})

-- | Additional details about the reason for disapproval.
cidrisrDetails :: Lens' CreativeItemDisapprovalReasonsItemServingRestrictions [Text]
cidrisrDetails
  = lens _cidrisrDetails
      (\ s a -> s{_cidrisrDetails = a})
      . _Default
      . _Coerce

--
-- /See:/ 'creativeItemReasonsFilteringReasons' smart constructor.
data CreativeItemReasonsFilteringReasons = CreativeItemReasonsFilteringReasons
    { _cirfrFilteringStatus :: !(Maybe Int32)
    , _cirfrFilteringCount  :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeItemReasonsFilteringReasons' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirfrFilteringStatus'
--
-- * 'cirfrFilteringCount'
creativeItemReasonsFilteringReasons
    :: CreativeItemReasonsFilteringReasons
creativeItemReasonsFilteringReasons =
    CreativeItemReasonsFilteringReasons
    { _cirfrFilteringStatus = Nothing
    , _cirfrFilteringCount = Nothing
    }

-- | The filtering status code. Please refer to the creative-status-codes.txt
-- file for different statuses.
cirfrFilteringStatus :: Lens' CreativeItemReasonsFilteringReasons (Maybe Int32)
cirfrFilteringStatus
  = lens _cirfrFilteringStatus
      (\ s a -> s{_cirfrFilteringStatus = a})

-- | The number of times the creative was filtered for the status. The count
-- is aggregated across all publishers on the exchange.
cirfrFilteringCount :: Lens' CreativeItemReasonsFilteringReasons (Maybe Int64)
cirfrFilteringCount
  = lens _cirfrFilteringCount
      (\ s a -> s{_cirfrFilteringCount = a})

--
-- /See:/ 'creativeItemServingRestrictions' smart constructor.
data CreativeItemServingRestrictions = CreativeItemServingRestrictions
    { _cisrContexts           :: !(Maybe [CreativeItemContextsItemServingRestrictions])
    , _cisrReason             :: !(Maybe Text)
    , _cisrDisapprovalReasons :: !(Maybe [CreativeItemDisapprovalReasonsItemServingRestrictions])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeItemServingRestrictions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cisrContexts'
--
-- * 'cisrReason'
--
-- * 'cisrDisapprovalReasons'
creativeItemServingRestrictions
    :: CreativeItemServingRestrictions
creativeItemServingRestrictions =
    CreativeItemServingRestrictions
    { _cisrContexts = Nothing
    , _cisrReason = Nothing
    , _cisrDisapprovalReasons = Nothing
    }

-- | All known contexts\/restrictions.
cisrContexts :: Lens' CreativeItemServingRestrictions [CreativeItemContextsItemServingRestrictions]
cisrContexts
  = lens _cisrContexts (\ s a -> s{_cisrContexts = a})
      . _Default
      . _Coerce

-- | Why the creative is ineligible to serve in this context (e.g., it has
-- been explicitly disapproved or is pending review).
cisrReason :: Lens' CreativeItemServingRestrictions (Maybe Text)
cisrReason
  = lens _cisrReason (\ s a -> s{_cisrReason = a})

-- | The reasons for disapproval within this restriction, if any. Note that
-- not all disapproval reasons may be categorized, so it is possible for
-- the creative to have a status of DISAPPROVED or CONDITIONALLY_APPROVED
-- with an empty list for disapproval_reasons. In this case, please reach
-- out to your TAM to help debug the issue.
cisrDisapprovalReasons :: Lens' CreativeItemServingRestrictions [CreativeItemDisapprovalReasonsItemServingRestrictions]
cisrDisapprovalReasons
  = lens _cisrDisapprovalReasons
      (\ s a -> s{_cisrDisapprovalReasons = a})
      . _Default
      . _Coerce

-- | A smaller image, for the advertiser logo.
--
-- /See:/ 'creativeLogoNativeAd' smart constructor.
data CreativeLogoNativeAd = CreativeLogoNativeAd
    { _clnaHeight :: !(Maybe Int32)
    , _clnaUrl    :: !(Maybe Text)
    , _clnaWidth  :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeLogoNativeAd' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clnaHeight'
--
-- * 'clnaUrl'
--
-- * 'clnaWidth'
creativeLogoNativeAd
    :: CreativeLogoNativeAd
creativeLogoNativeAd =
    CreativeLogoNativeAd
    { _clnaHeight = Nothing
    , _clnaUrl = Nothing
    , _clnaWidth = Nothing
    }

clnaHeight :: Lens' CreativeLogoNativeAd (Maybe Int32)
clnaHeight
  = lens _clnaHeight (\ s a -> s{_clnaHeight = a})

clnaUrl :: Lens' CreativeLogoNativeAd (Maybe Text)
clnaUrl = lens _clnaUrl (\ s a -> s{_clnaUrl = a})

clnaWidth :: Lens' CreativeLogoNativeAd (Maybe Int32)
clnaWidth
  = lens _clnaWidth (\ s a -> s{_clnaWidth = a})

-- | If nativeAd is set, HTMLSnippet and videoURL should not be set.
--
-- /See:/ 'creativeNativeAd' smart constructor.
data CreativeNativeAd = CreativeNativeAd
    { _cnaImage                 :: !(Maybe CreativeImageNativeAd)
    , _cnaAppIcon               :: !(Maybe CreativeAppIconNativeAd)
    , _cnaClickTrackingUrl      :: !(Maybe Text)
    , _cnaBody                  :: !(Maybe Text)
    , _cnaHeadline              :: !(Maybe Text)
    , _cnaImpressionTrackingUrl :: !(Maybe [Text])
    , _cnaCallToAction          :: !(Maybe Text)
    , _cnaStore                 :: !(Maybe Text)
    , _cnaPrice                 :: !(Maybe Text)
    , _cnaAdvertiser            :: !(Maybe Text)
    , _cnaStarRating            :: !(Maybe Double)
    , _cnaLogo                  :: !(Maybe CreativeLogoNativeAd)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeNativeAd' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnaImage'
--
-- * 'cnaAppIcon'
--
-- * 'cnaClickTrackingUrl'
--
-- * 'cnaBody'
--
-- * 'cnaHeadline'
--
-- * 'cnaImpressionTrackingUrl'
--
-- * 'cnaCallToAction'
--
-- * 'cnaStore'
--
-- * 'cnaPrice'
--
-- * 'cnaAdvertiser'
--
-- * 'cnaStarRating'
--
-- * 'cnaLogo'
creativeNativeAd
    :: CreativeNativeAd
creativeNativeAd =
    CreativeNativeAd
    { _cnaImage = Nothing
    , _cnaAppIcon = Nothing
    , _cnaClickTrackingUrl = Nothing
    , _cnaBody = Nothing
    , _cnaHeadline = Nothing
    , _cnaImpressionTrackingUrl = Nothing
    , _cnaCallToAction = Nothing
    , _cnaStore = Nothing
    , _cnaPrice = Nothing
    , _cnaAdvertiser = Nothing
    , _cnaStarRating = Nothing
    , _cnaLogo = Nothing
    }

-- | A large image.
cnaImage :: Lens' CreativeNativeAd (Maybe CreativeImageNativeAd)
cnaImage = lens _cnaImage (\ s a -> s{_cnaImage = a})

-- | The app icon, for app download ads.
cnaAppIcon :: Lens' CreativeNativeAd (Maybe CreativeAppIconNativeAd)
cnaAppIcon
  = lens _cnaAppIcon (\ s a -> s{_cnaAppIcon = a})

-- | The URL to use for click tracking.
cnaClickTrackingUrl :: Lens' CreativeNativeAd (Maybe Text)
cnaClickTrackingUrl
  = lens _cnaClickTrackingUrl
      (\ s a -> s{_cnaClickTrackingUrl = a})

-- | A long description of the ad.
cnaBody :: Lens' CreativeNativeAd (Maybe Text)
cnaBody = lens _cnaBody (\ s a -> s{_cnaBody = a})

-- | A short title for the ad.
cnaHeadline :: Lens' CreativeNativeAd (Maybe Text)
cnaHeadline
  = lens _cnaHeadline (\ s a -> s{_cnaHeadline = a})

-- | The URLs are called when the impression is rendered.
cnaImpressionTrackingUrl :: Lens' CreativeNativeAd [Text]
cnaImpressionTrackingUrl
  = lens _cnaImpressionTrackingUrl
      (\ s a -> s{_cnaImpressionTrackingUrl = a})
      . _Default
      . _Coerce

-- | A label for the button that the user is supposed to click.
cnaCallToAction :: Lens' CreativeNativeAd (Maybe Text)
cnaCallToAction
  = lens _cnaCallToAction
      (\ s a -> s{_cnaCallToAction = a})

-- | The URL to the app store to purchase\/download the promoted app.
cnaStore :: Lens' CreativeNativeAd (Maybe Text)
cnaStore = lens _cnaStore (\ s a -> s{_cnaStore = a})

-- | The price of the promoted app including the currency info.
cnaPrice :: Lens' CreativeNativeAd (Maybe Text)
cnaPrice = lens _cnaPrice (\ s a -> s{_cnaPrice = a})

cnaAdvertiser :: Lens' CreativeNativeAd (Maybe Text)
cnaAdvertiser
  = lens _cnaAdvertiser
      (\ s a -> s{_cnaAdvertiser = a})

-- | The app rating in the app store. Must be in the range [0-5].
cnaStarRating :: Lens' CreativeNativeAd (Maybe Double)
cnaStarRating
  = lens _cnaStarRating
      (\ s a -> s{_cnaStarRating = a})

-- | A smaller image, for the advertiser logo.
cnaLogo :: Lens' CreativeNativeAd (Maybe CreativeLogoNativeAd)
cnaLogo = lens _cnaLogo (\ s a -> s{_cnaLogo = a})

-- | The creatives feed lists the active creatives for the Ad Exchange buyer
-- accounts that the user has access to. Each entry in the feed corresponds
-- to a single creative.
--
-- /See:/ 'creativesList' smart constructor.
data CreativesList = CreativesList
    { _clNextPageToken :: !(Maybe Text)
    , _clKind          :: !Text
    , _clItems         :: !(Maybe [Maybe Creative])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clNextPageToken'
--
-- * 'clKind'
--
-- * 'clItems'
creativesList
    :: CreativesList
creativesList =
    CreativesList
    { _clNextPageToken = Nothing
    , _clKind = "adexchangebuyer#creativesList"
    , _clItems = Nothing
    }

-- | Continuation token used to page through creatives. To retrieve the next
-- page of results, set the next request\'s \"pageToken\" value to this.
clNextPageToken :: Lens' CreativesList (Maybe Text)
clNextPageToken
  = lens _clNextPageToken
      (\ s a -> s{_clNextPageToken = a})

-- | Resource type.
clKind :: Lens' CreativesList Text
clKind = lens _clKind (\ s a -> s{_clKind = a})

-- | A list of creatives.
clItems :: Lens' CreativesList [Maybe Creative]
clItems
  = lens _clItems (\ s a -> s{_clItems = a}) . _Default
      . _Coerce

--
-- /See:/ 'dateTime' smart constructor.
data DateTime = DateTime
    { _dtSecond     :: !(Maybe Int32)
    , _dtDay        :: !(Maybe Int32)
    , _dtYear       :: !(Maybe Int32)
    , _dtHour       :: !(Maybe Int32)
    , _dtMonth      :: !(Maybe Int32)
    , _dtMinute     :: !(Maybe Int32)
    , _dtTimeZoneId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DateTime' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtSecond'
--
-- * 'dtDay'
--
-- * 'dtYear'
--
-- * 'dtHour'
--
-- * 'dtMonth'
--
-- * 'dtMinute'
--
-- * 'dtTimeZoneId'
dateTime
    :: DateTime
dateTime =
    DateTime
    { _dtSecond = Nothing
    , _dtDay = Nothing
    , _dtYear = Nothing
    , _dtHour = Nothing
    , _dtMonth = Nothing
    , _dtMinute = Nothing
    , _dtTimeZoneId = Nothing
    }

dtSecond :: Lens' DateTime (Maybe Int32)
dtSecond = lens _dtSecond (\ s a -> s{_dtSecond = a})

dtDay :: Lens' DateTime (Maybe Int32)
dtDay = lens _dtDay (\ s a -> s{_dtDay = a})

dtYear :: Lens' DateTime (Maybe Int32)
dtYear = lens _dtYear (\ s a -> s{_dtYear = a})

dtHour :: Lens' DateTime (Maybe Int32)
dtHour = lens _dtHour (\ s a -> s{_dtHour = a})

dtMonth :: Lens' DateTime (Maybe Int32)
dtMonth = lens _dtMonth (\ s a -> s{_dtMonth = a})

dtMinute :: Lens' DateTime (Maybe Int32)
dtMinute = lens _dtMinute (\ s a -> s{_dtMinute = a})

dtTimeZoneId :: Lens' DateTime (Maybe Text)
dtTimeZoneId
  = lens _dtTimeZoneId (\ s a -> s{_dtTimeZoneId = a})

--
-- /See:/ 'dealPartyDto' smart constructor.
data DealPartyDto = DealPartyDto
    { _dpdBuyerSellerRole :: !(Maybe Text)
    , _dpdCustomerId      :: !(Maybe Int32)
    , _dpdName            :: !(Maybe Text)
    , _dpdWebProperty     :: !(Maybe (Maybe WebPropertyDto))
    , _dpdBuyer           :: !(Maybe (Maybe BuyerDto))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DealPartyDto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpdBuyerSellerRole'
--
-- * 'dpdCustomerId'
--
-- * 'dpdName'
--
-- * 'dpdWebProperty'
--
-- * 'dpdBuyer'
dealPartyDto
    :: DealPartyDto
dealPartyDto =
    DealPartyDto
    { _dpdBuyerSellerRole = Nothing
    , _dpdCustomerId = Nothing
    , _dpdName = Nothing
    , _dpdWebProperty = Nothing
    , _dpdBuyer = Nothing
    }

dpdBuyerSellerRole :: Lens' DealPartyDto (Maybe Text)
dpdBuyerSellerRole
  = lens _dpdBuyerSellerRole
      (\ s a -> s{_dpdBuyerSellerRole = a})

dpdCustomerId :: Lens' DealPartyDto (Maybe Int32)
dpdCustomerId
  = lens _dpdCustomerId
      (\ s a -> s{_dpdCustomerId = a})

dpdName :: Lens' DealPartyDto (Maybe Text)
dpdName = lens _dpdName (\ s a -> s{_dpdName = a})

dpdWebProperty :: Lens' DealPartyDto (Maybe (Maybe WebPropertyDto))
dpdWebProperty
  = lens _dpdWebProperty
      (\ s a -> s{_dpdWebProperty = a})

dpdBuyer :: Lens' DealPartyDto (Maybe (Maybe BuyerDto))
dpdBuyer = lens _dpdBuyer (\ s a -> s{_dpdBuyer = a})

--
-- /See:/ 'dealTerms' smart constructor.
data DealTerms = DealTerms
    { _dtNonGuaranteedFixedPriceTerms :: !(Maybe (Maybe DealTermsNonGuaranteedFixedPriceTerms))
    , _dtNonGuaranteedAuctionTerms    :: !(Maybe (Maybe DealTermsNonGuaranteedAuctionTerms))
    , _dtGuaranteedFixedPriceTerms    :: !(Maybe (Maybe DealTermsGuaranteedFixedPriceTerms))
    , _dtDescription                  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DealTerms' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtNonGuaranteedFixedPriceTerms'
--
-- * 'dtNonGuaranteedAuctionTerms'
--
-- * 'dtGuaranteedFixedPriceTerms'
--
-- * 'dtDescription'
dealTerms
    :: DealTerms
dealTerms =
    DealTerms
    { _dtNonGuaranteedFixedPriceTerms = Nothing
    , _dtNonGuaranteedAuctionTerms = Nothing
    , _dtGuaranteedFixedPriceTerms = Nothing
    , _dtDescription = Nothing
    }

-- | The terms for non-guaranteed fixed price deals.
dtNonGuaranteedFixedPriceTerms :: Lens' DealTerms (Maybe (Maybe DealTermsNonGuaranteedFixedPriceTerms))
dtNonGuaranteedFixedPriceTerms
  = lens _dtNonGuaranteedFixedPriceTerms
      (\ s a -> s{_dtNonGuaranteedFixedPriceTerms = a})

-- | The terms for non-guaranteed auction deals.
dtNonGuaranteedAuctionTerms :: Lens' DealTerms (Maybe (Maybe DealTermsNonGuaranteedAuctionTerms))
dtNonGuaranteedAuctionTerms
  = lens _dtNonGuaranteedAuctionTerms
      (\ s a -> s{_dtNonGuaranteedAuctionTerms = a})

-- | The terms for guaranteed fixed price deals.
dtGuaranteedFixedPriceTerms :: Lens' DealTerms (Maybe (Maybe DealTermsGuaranteedFixedPriceTerms))
dtGuaranteedFixedPriceTerms
  = lens _dtGuaranteedFixedPriceTerms
      (\ s a -> s{_dtGuaranteedFixedPriceTerms = a})

-- | Description for the proposed terms of the deal.
dtDescription :: Lens' DealTerms (Maybe Text)
dtDescription
  = lens _dtDescription
      (\ s a -> s{_dtDescription = a})

--
-- /See:/ 'dealTermsGuaranteedFixedPriceTerms' smart constructor.
data DealTermsGuaranteedFixedPriceTerms = DealTermsGuaranteedFixedPriceTerms
    { _dtgfptGuaranteedLooks       :: !(Maybe Int64)
    , _dtgfptGuaranteedImpressions :: !(Maybe Int64)
    , _dtgfptFixedPrices           :: !(Maybe [Maybe PricePerBuyer])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DealTermsGuaranteedFixedPriceTerms' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgfptGuaranteedLooks'
--
-- * 'dtgfptGuaranteedImpressions'
--
-- * 'dtgfptFixedPrices'
dealTermsGuaranteedFixedPriceTerms
    :: DealTermsGuaranteedFixedPriceTerms
dealTermsGuaranteedFixedPriceTerms =
    DealTermsGuaranteedFixedPriceTerms
    { _dtgfptGuaranteedLooks = Nothing
    , _dtgfptGuaranteedImpressions = Nothing
    , _dtgfptFixedPrices = Nothing
    }

-- | Count of guaranteed looks. Required for deal, optional for offer.
dtgfptGuaranteedLooks :: Lens' DealTermsGuaranteedFixedPriceTerms (Maybe Int64)
dtgfptGuaranteedLooks
  = lens _dtgfptGuaranteedLooks
      (\ s a -> s{_dtgfptGuaranteedLooks = a})

-- | Guaranteed impressions as a percentage. This is the percentage of
-- guaranteed looks that the buyer is guaranteeing to buy.
dtgfptGuaranteedImpressions :: Lens' DealTermsGuaranteedFixedPriceTerms (Maybe Int64)
dtgfptGuaranteedImpressions
  = lens _dtgfptGuaranteedImpressions
      (\ s a -> s{_dtgfptGuaranteedImpressions = a})

-- | Fixed price for the specified buyer.
dtgfptFixedPrices :: Lens' DealTermsGuaranteedFixedPriceTerms [Maybe PricePerBuyer]
dtgfptFixedPrices
  = lens _dtgfptFixedPrices
      (\ s a -> s{_dtgfptFixedPrices = a})
      . _Default
      . _Coerce

--
-- /See:/ 'dealTermsNonGuaranteedAuctionTerms' smart constructor.
data DealTermsNonGuaranteedAuctionTerms = DealTermsNonGuaranteedAuctionTerms
    { _dtngatReservePricePerBuyers :: !(Maybe [Maybe PricePerBuyer])
    , _dtngatPrivateAuctionId      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DealTermsNonGuaranteedAuctionTerms' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtngatReservePricePerBuyers'
--
-- * 'dtngatPrivateAuctionId'
dealTermsNonGuaranteedAuctionTerms
    :: DealTermsNonGuaranteedAuctionTerms
dealTermsNonGuaranteedAuctionTerms =
    DealTermsNonGuaranteedAuctionTerms
    { _dtngatReservePricePerBuyers = Nothing
    , _dtngatPrivateAuctionId = Nothing
    }

-- | Reserve price for the specified buyer.
dtngatReservePricePerBuyers :: Lens' DealTermsNonGuaranteedAuctionTerms [Maybe PricePerBuyer]
dtngatReservePricePerBuyers
  = lens _dtngatReservePricePerBuyers
      (\ s a -> s{_dtngatReservePricePerBuyers = a})
      . _Default
      . _Coerce

-- | Id of the corresponding private auction.
dtngatPrivateAuctionId :: Lens' DealTermsNonGuaranteedAuctionTerms (Maybe Text)
dtngatPrivateAuctionId
  = lens _dtngatPrivateAuctionId
      (\ s a -> s{_dtngatPrivateAuctionId = a})

--
-- /See:/ 'dealTermsNonGuaranteedFixedPriceTerms' smart constructor.
newtype DealTermsNonGuaranteedFixedPriceTerms = DealTermsNonGuaranteedFixedPriceTerms
    { _dtngfptFixedPrices :: Maybe [Maybe PricePerBuyer]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DealTermsNonGuaranteedFixedPriceTerms' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtngfptFixedPrices'
dealTermsNonGuaranteedFixedPriceTerms
    :: DealTermsNonGuaranteedFixedPriceTerms
dealTermsNonGuaranteedFixedPriceTerms =
    DealTermsNonGuaranteedFixedPriceTerms
    { _dtngfptFixedPrices = Nothing
    }

-- | Fixed price for the specified buyer.
dtngfptFixedPrices :: Lens' DealTermsNonGuaranteedFixedPriceTerms [Maybe PricePerBuyer]
dtngfptFixedPrices
  = lens _dtngfptFixedPrices
      (\ s a -> s{_dtngfptFixedPrices = a})
      . _Default
      . _Coerce

--
-- /See:/ 'deleteOrderDealsRequest' smart constructor.
data DeleteOrderDealsRequest = DeleteOrderDealsRequest
    { _dUpdateAction        :: !(Maybe Text)
    , _dDealIds             :: !(Maybe [Text])
    , _dOrderRevisionNumber :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeleteOrderDealsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dUpdateAction'
--
-- * 'dDealIds'
--
-- * 'dOrderRevisionNumber'
deleteOrderDealsRequest
    :: DeleteOrderDealsRequest
deleteOrderDealsRequest =
    DeleteOrderDealsRequest
    { _dUpdateAction = Nothing
    , _dDealIds = Nothing
    , _dOrderRevisionNumber = Nothing
    }

dUpdateAction :: Lens' DeleteOrderDealsRequest (Maybe Text)
dUpdateAction
  = lens _dUpdateAction
      (\ s a -> s{_dUpdateAction = a})

-- | List of deals to delete for a given order
dDealIds :: Lens' DeleteOrderDealsRequest [Text]
dDealIds
  = lens _dDealIds (\ s a -> s{_dDealIds = a}) .
      _Default
      . _Coerce

-- | The last known order revision number.
dOrderRevisionNumber :: Lens' DeleteOrderDealsRequest (Maybe Int64)
dOrderRevisionNumber
  = lens _dOrderRevisionNumber
      (\ s a -> s{_dOrderRevisionNumber = a})

--
-- /See:/ 'deleteOrderDealsResponse' smart constructor.
data DeleteOrderDealsResponse = DeleteOrderDealsResponse
    { _dodrDeals               :: !(Maybe [Maybe MarketplaceDeal])
    , _dodrOrderRevisionNumber :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeleteOrderDealsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dodrDeals'
--
-- * 'dodrOrderRevisionNumber'
deleteOrderDealsResponse
    :: DeleteOrderDealsResponse
deleteOrderDealsResponse =
    DeleteOrderDealsResponse
    { _dodrDeals = Nothing
    , _dodrOrderRevisionNumber = Nothing
    }

-- | List of deals deleted (in the same order as passed in the request)
dodrDeals :: Lens' DeleteOrderDealsResponse [Maybe MarketplaceDeal]
dodrDeals
  = lens _dodrDeals (\ s a -> s{_dodrDeals = a}) .
      _Default
      . _Coerce

-- | The updated revision number for the order.
dodrOrderRevisionNumber :: Lens' DeleteOrderDealsResponse (Maybe Int64)
dodrOrderRevisionNumber
  = lens _dodrOrderRevisionNumber
      (\ s a -> s{_dodrOrderRevisionNumber = a})

--
-- /See:/ 'deliveryControl' smart constructor.
data DeliveryControl = DeliveryControl
    { _dcFrequencyCaps    :: !(Maybe [Maybe DeliveryControlFrequencyCap])
    , _dcDeliveryRateType :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeliveryControl' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcFrequencyCaps'
--
-- * 'dcDeliveryRateType'
deliveryControl
    :: DeliveryControl
deliveryControl =
    DeliveryControl
    { _dcFrequencyCaps = Nothing
    , _dcDeliveryRateType = Nothing
    }

dcFrequencyCaps :: Lens' DeliveryControl [Maybe DeliveryControlFrequencyCap]
dcFrequencyCaps
  = lens _dcFrequencyCaps
      (\ s a -> s{_dcFrequencyCaps = a})
      . _Default
      . _Coerce

dcDeliveryRateType :: Lens' DeliveryControl (Maybe Text)
dcDeliveryRateType
  = lens _dcDeliveryRateType
      (\ s a -> s{_dcDeliveryRateType = a})

--
-- /See:/ 'deliveryControlFrequencyCap' smart constructor.
data DeliveryControlFrequencyCap = DeliveryControlFrequencyCap
    { _dcfcMaxImpressions :: !(Maybe Int32)
    , _dcfcNumTimeUnits   :: !(Maybe Int32)
    , _dcfcTimeUnitType   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeliveryControlFrequencyCap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcfcMaxImpressions'
--
-- * 'dcfcNumTimeUnits'
--
-- * 'dcfcTimeUnitType'
deliveryControlFrequencyCap
    :: DeliveryControlFrequencyCap
deliveryControlFrequencyCap =
    DeliveryControlFrequencyCap
    { _dcfcMaxImpressions = Nothing
    , _dcfcNumTimeUnits = Nothing
    , _dcfcTimeUnitType = Nothing
    }

dcfcMaxImpressions :: Lens' DeliveryControlFrequencyCap (Maybe Int32)
dcfcMaxImpressions
  = lens _dcfcMaxImpressions
      (\ s a -> s{_dcfcMaxImpressions = a})

dcfcNumTimeUnits :: Lens' DeliveryControlFrequencyCap (Maybe Int32)
dcfcNumTimeUnits
  = lens _dcfcNumTimeUnits
      (\ s a -> s{_dcfcNumTimeUnits = a})

dcfcTimeUnitType :: Lens' DeliveryControlFrequencyCap (Maybe Text)
dcfcTimeUnitType
  = lens _dcfcTimeUnitType
      (\ s a -> s{_dcfcTimeUnitType = a})

--
-- /See:/ 'editAllOrderDealsRequest' smart constructor.
data EditAllOrderDealsRequest = EditAllOrderDealsRequest
    { _eaodrUpdateAction        :: !(Maybe Text)
    , _eaodrDeals               :: !(Maybe [Maybe MarketplaceDeal])
    , _eaodrOrder               :: !(Maybe (Maybe MarketplaceOrder))
    , _eaodrOrderRevisionNumber :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditAllOrderDealsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eaodrUpdateAction'
--
-- * 'eaodrDeals'
--
-- * 'eaodrOrder'
--
-- * 'eaodrOrderRevisionNumber'
editAllOrderDealsRequest
    :: EditAllOrderDealsRequest
editAllOrderDealsRequest =
    EditAllOrderDealsRequest
    { _eaodrUpdateAction = Nothing
    , _eaodrDeals = Nothing
    , _eaodrOrder = Nothing
    , _eaodrOrderRevisionNumber = Nothing
    }

-- | Indicates an optional action to take on the order
eaodrUpdateAction :: Lens' EditAllOrderDealsRequest (Maybe Text)
eaodrUpdateAction
  = lens _eaodrUpdateAction
      (\ s a -> s{_eaodrUpdateAction = a})

-- | List of deals to edit. Service may perform 3 different operations based
-- on comparison of deals in this list vs deals already persisted in
-- database: 1. Add new deal to order If a deal in this list does not exist
-- in the order, the service will create a new deal and add it to the
-- order. Validation will follow AddOrderDealsRequest. 2. Update existing
-- deal in the order If a deal in this list already exist in the order, the
-- service will update that existing deal to this new deal in the request.
-- Validation will follow UpdateOrderDealsRequest. 3. Delete deals from the
-- order (just need the id) If a existing deal in the order is not present
-- in this list, the service will delete that deal from the order.
-- Validation will follow DeleteOrderDealsRequest.
eaodrDeals :: Lens' EditAllOrderDealsRequest [Maybe MarketplaceDeal]
eaodrDeals
  = lens _eaodrDeals (\ s a -> s{_eaodrDeals = a}) .
      _Default
      . _Coerce

-- | If specified, also updates the order in the batch transaction. This is
-- useful when the order and the deals need to be updated in one
-- transaction.
eaodrOrder :: Lens' EditAllOrderDealsRequest (Maybe (Maybe MarketplaceOrder))
eaodrOrder
  = lens _eaodrOrder (\ s a -> s{_eaodrOrder = a})

-- | The last known revision number for the order.
eaodrOrderRevisionNumber :: Lens' EditAllOrderDealsRequest (Maybe Int64)
eaodrOrderRevisionNumber
  = lens _eaodrOrderRevisionNumber
      (\ s a -> s{_eaodrOrderRevisionNumber = a})

--
-- /See:/ 'editAllOrderDealsResponse' smart constructor.
newtype EditAllOrderDealsResponse = EditAllOrderDealsResponse
    { _eDeals :: Maybe [Maybe MarketplaceDeal]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditAllOrderDealsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eDeals'
editAllOrderDealsResponse
    :: EditAllOrderDealsResponse
editAllOrderDealsResponse =
    EditAllOrderDealsResponse
    { _eDeals = Nothing
    }

-- | List of all deals in the order after edit.
eDeals :: Lens' EditAllOrderDealsResponse [Maybe MarketplaceDeal]
eDeals
  = lens _eDeals (\ s a -> s{_eDeals = a}) . _Default .
      _Coerce

--
-- /See:/ 'editHistoryDto' smart constructor.
data EditHistoryDto = EditHistoryDto
    { _ehdLastUpdatedByLoginName :: !(Maybe Text)
    , _ehdCreatedByLoginName     :: !(Maybe Text)
    , _ehdLastUpdateTimeStamp    :: !(Maybe Int64)
    , _ehdCreatedTimeStamp       :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditHistoryDto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ehdLastUpdatedByLoginName'
--
-- * 'ehdCreatedByLoginName'
--
-- * 'ehdLastUpdateTimeStamp'
--
-- * 'ehdCreatedTimeStamp'
editHistoryDto
    :: EditHistoryDto
editHistoryDto =
    EditHistoryDto
    { _ehdLastUpdatedByLoginName = Nothing
    , _ehdCreatedByLoginName = Nothing
    , _ehdLastUpdateTimeStamp = Nothing
    , _ehdCreatedTimeStamp = Nothing
    }

ehdLastUpdatedByLoginName :: Lens' EditHistoryDto (Maybe Text)
ehdLastUpdatedByLoginName
  = lens _ehdLastUpdatedByLoginName
      (\ s a -> s{_ehdLastUpdatedByLoginName = a})

ehdCreatedByLoginName :: Lens' EditHistoryDto (Maybe Text)
ehdCreatedByLoginName
  = lens _ehdCreatedByLoginName
      (\ s a -> s{_ehdCreatedByLoginName = a})

ehdLastUpdateTimeStamp :: Lens' EditHistoryDto (Maybe Int64)
ehdLastUpdateTimeStamp
  = lens _ehdLastUpdateTimeStamp
      (\ s a -> s{_ehdLastUpdateTimeStamp = a})

ehdCreatedTimeStamp :: Lens' EditHistoryDto (Maybe Int64)
ehdCreatedTimeStamp
  = lens _ehdCreatedTimeStamp
      (\ s a -> s{_ehdCreatedTimeStamp = a})

--
-- /See:/ 'getFinalizedNegotiationByExternalDealIdRequest' smart constructor.
newtype GetFinalizedNegotiationByExternalDealIdRequest = GetFinalizedNegotiationByExternalDealIdRequest
    { _gfnbedirIncludePrivateAuctions :: Maybe Bool
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetFinalizedNegotiationByExternalDealIdRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfnbedirIncludePrivateAuctions'
getFinalizedNegotiationByExternalDealIdRequest
    :: GetFinalizedNegotiationByExternalDealIdRequest
getFinalizedNegotiationByExternalDealIdRequest =
    GetFinalizedNegotiationByExternalDealIdRequest
    { _gfnbedirIncludePrivateAuctions = Nothing
    }

gfnbedirIncludePrivateAuctions :: Lens' GetFinalizedNegotiationByExternalDealIdRequest (Maybe Bool)
gfnbedirIncludePrivateAuctions
  = lens _gfnbedirIncludePrivateAuctions
      (\ s a -> s{_gfnbedirIncludePrivateAuctions = a})

--
-- /See:/ 'getNegotiationByIdRequest' smart constructor.
newtype GetNegotiationByIdRequest = GetNegotiationByIdRequest
    { _gnbirIncludePrivateAuctions :: Maybe Bool
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetNegotiationByIdRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gnbirIncludePrivateAuctions'
getNegotiationByIdRequest
    :: GetNegotiationByIdRequest
getNegotiationByIdRequest =
    GetNegotiationByIdRequest
    { _gnbirIncludePrivateAuctions = Nothing
    }

gnbirIncludePrivateAuctions :: Lens' GetNegotiationByIdRequest (Maybe Bool)
gnbirIncludePrivateAuctions
  = lens _gnbirIncludePrivateAuctions
      (\ s a -> s{_gnbirIncludePrivateAuctions = a})

--
-- /See:/ 'getNegotiationsRequest' smart constructor.
data GetNegotiationsRequest = GetNegotiationsRequest
    { _gnrSinceTimestampMillis   :: !(Maybe Int64)
    , _gnrFinalized              :: !(Maybe Bool)
    , _gnrIncludePrivateAuctions :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetNegotiationsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gnrSinceTimestampMillis'
--
-- * 'gnrFinalized'
--
-- * 'gnrIncludePrivateAuctions'
getNegotiationsRequest
    :: GetNegotiationsRequest
getNegotiationsRequest =
    GetNegotiationsRequest
    { _gnrSinceTimestampMillis = Nothing
    , _gnrFinalized = Nothing
    , _gnrIncludePrivateAuctions = Nothing
    }

gnrSinceTimestampMillis :: Lens' GetNegotiationsRequest (Maybe Int64)
gnrSinceTimestampMillis
  = lens _gnrSinceTimestampMillis
      (\ s a -> s{_gnrSinceTimestampMillis = a})

gnrFinalized :: Lens' GetNegotiationsRequest (Maybe Bool)
gnrFinalized
  = lens _gnrFinalized (\ s a -> s{_gnrFinalized = a})

gnrIncludePrivateAuctions :: Lens' GetNegotiationsRequest (Maybe Bool)
gnrIncludePrivateAuctions
  = lens _gnrIncludePrivateAuctions
      (\ s a -> s{_gnrIncludePrivateAuctions = a})

--
-- /See:/ 'getNegotiationsResponse' smart constructor.
data GetNegotiationsResponse = GetNegotiationsResponse
    { _gnrKind         :: !Text
    , _gnrNegotiations :: !(Maybe [Maybe NegotiationDto])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetNegotiationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gnrKind'
--
-- * 'gnrNegotiations'
getNegotiationsResponse
    :: GetNegotiationsResponse
getNegotiationsResponse =
    GetNegotiationsResponse
    { _gnrKind = "adexchangebuyer#negotiationsList"
    , _gnrNegotiations = Nothing
    }

gnrKind :: Lens' GetNegotiationsResponse Text
gnrKind = lens _gnrKind (\ s a -> s{_gnrKind = a})

gnrNegotiations :: Lens' GetNegotiationsResponse [Maybe NegotiationDto]
gnrNegotiations
  = lens _gnrNegotiations
      (\ s a -> s{_gnrNegotiations = a})
      . _Default
      . _Coerce

--
-- /See:/ 'getOffersResponse' smart constructor.
newtype GetOffersResponse = GetOffersResponse
    { _gorOffers :: Maybe [Maybe MarketplaceOffer]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetOffersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gorOffers'
getOffersResponse
    :: GetOffersResponse
getOffersResponse =
    GetOffersResponse
    { _gorOffers = Nothing
    }

-- | The returned list of offers.
gorOffers :: Lens' GetOffersResponse [Maybe MarketplaceOffer]
gorOffers
  = lens _gorOffers (\ s a -> s{_gorOffers = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'getOrderDealsResponse' smart constructor.
newtype GetOrderDealsResponse = GetOrderDealsResponse
    { _godrDeals :: Maybe [Maybe MarketplaceDeal]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetOrderDealsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'godrDeals'
getOrderDealsResponse
    :: GetOrderDealsResponse
getOrderDealsResponse =
    GetOrderDealsResponse
    { _godrDeals = Nothing
    }

-- | List of deals for the order
godrDeals :: Lens' GetOrderDealsResponse [Maybe MarketplaceDeal]
godrDeals
  = lens _godrDeals (\ s a -> s{_godrDeals = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'getOrderNotesResponse' smart constructor.
newtype GetOrderNotesResponse = GetOrderNotesResponse
    { _gonrNotes :: Maybe [Maybe MarketplaceNote]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetOrderNotesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gonrNotes'
getOrderNotesResponse
    :: GetOrderNotesResponse
getOrderNotesResponse =
    GetOrderNotesResponse
    { _gonrNotes = Nothing
    }

-- | The list of matching notes.
gonrNotes :: Lens' GetOrderNotesResponse [Maybe MarketplaceNote]
gonrNotes
  = lens _gonrNotes (\ s a -> s{_gonrNotes = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'getOrdersResponse' smart constructor.
newtype GetOrdersResponse = GetOrdersResponse
    { _gorOrders :: Maybe [Maybe MarketplaceOrder]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetOrdersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gorOrders'
getOrdersResponse
    :: GetOrdersResponse
getOrdersResponse =
    GetOrdersResponse
    { _gorOrders = Nothing
    }

-- | The list of matching orders.
gorOrders :: Lens' GetOrdersResponse [Maybe MarketplaceOrder]
gorOrders
  = lens _gorOrders (\ s a -> s{_gorOrders = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'inventorySegmentTargeting' smart constructor.
data InventorySegmentTargeting = InventorySegmentTargeting
    { _istNegativeVideoDurationSegments   :: !(Maybe [Int64])
    , _istNegativeIcmBrands               :: !(Maybe [Int64])
    , _istNegativeKeyValues               :: !(Maybe [Maybe RuleKeyValuePair])
    , _istPositiveAudienceSegments        :: !(Maybe [Int64])
    , _istPositiveXfpPlacements           :: !(Maybe [Int64])
    , _istNegativeXfpAdSlots              :: !(Maybe [Int64])
    , _istPositiveOperatingSystemVersions :: !(Maybe [Int64])
    , _istPositiveSizes                   :: !(Maybe [Int64])
    , _istPositiveDeviceCategories        :: !(Maybe [Int64])
    , _istPositiveLocations               :: !(Maybe [Int64])
    , _istNegativeAdSizes                 :: !(Maybe [Maybe AdSize])
    , _istPositiveOperatingSystems        :: !(Maybe [Int64])
    , _istPositiveSiteUrls                :: !(Maybe [Text])
    , _istNegativeInventorySlots          :: !(Maybe [Text])
    , _istNegativeVideoAdPositionSegments :: !(Maybe [Text])
    , _istPositiveAdTypeSegments          :: !(Maybe [Text])
    , _istPositiveIcmInterests            :: !(Maybe [Int64])
    , _istPositiveMobileApps              :: !(Maybe [Text])
    , _istPositiveKeyValues               :: !(Maybe [Maybe RuleKeyValuePair])
    , _istPositiveIcmBrands               :: !(Maybe [Int64])
    , _istPositiveVideoDurationSegments   :: !(Maybe [Int64])
    , _istNegativeAudienceSegments        :: !(Maybe [Int64])
    , _istNegativeXfpPlacements           :: !(Maybe [Int64])
    , _istPositiveXfpAdSlots              :: !(Maybe [Int64])
    , _istNegativeOperatingSystemVersions :: !(Maybe [Int64])
    , _istNegativeSizes                   :: !(Maybe [Int64])
    , _istNegativeLocations               :: !(Maybe [Int64])
    , _istNegativeDeviceCategories        :: !(Maybe [Int64])
    , _istNegativeOperatingSystems        :: !(Maybe [Int64])
    , _istPositiveAdSizes                 :: !(Maybe [Maybe AdSize])
    , _istNegativeSiteUrls                :: !(Maybe [Text])
    , _istNegativeAdTypeSegments          :: !(Maybe [Text])
    , _istPositiveVideoAdPositionSegments :: !(Maybe [Text])
    , _istPositiveInventorySlots          :: !(Maybe [Text])
    , _istNegativeMobileApps              :: !(Maybe [Text])
    , _istNegativeIcmInterests            :: !(Maybe [Int64])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InventorySegmentTargeting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'istNegativeVideoDurationSegments'
--
-- * 'istNegativeIcmBrands'
--
-- * 'istNegativeKeyValues'
--
-- * 'istPositiveAudienceSegments'
--
-- * 'istPositiveXfpPlacements'
--
-- * 'istNegativeXfpAdSlots'
--
-- * 'istPositiveOperatingSystemVersions'
--
-- * 'istPositiveSizes'
--
-- * 'istPositiveDeviceCategories'
--
-- * 'istPositiveLocations'
--
-- * 'istNegativeAdSizes'
--
-- * 'istPositiveOperatingSystems'
--
-- * 'istPositiveSiteUrls'
--
-- * 'istNegativeInventorySlots'
--
-- * 'istNegativeVideoAdPositionSegments'
--
-- * 'istPositiveAdTypeSegments'
--
-- * 'istPositiveIcmInterests'
--
-- * 'istPositiveMobileApps'
--
-- * 'istPositiveKeyValues'
--
-- * 'istPositiveIcmBrands'
--
-- * 'istPositiveVideoDurationSegments'
--
-- * 'istNegativeAudienceSegments'
--
-- * 'istNegativeXfpPlacements'
--
-- * 'istPositiveXfpAdSlots'
--
-- * 'istNegativeOperatingSystemVersions'
--
-- * 'istNegativeSizes'
--
-- * 'istNegativeLocations'
--
-- * 'istNegativeDeviceCategories'
--
-- * 'istNegativeOperatingSystems'
--
-- * 'istPositiveAdSizes'
--
-- * 'istNegativeSiteUrls'
--
-- * 'istNegativeAdTypeSegments'
--
-- * 'istPositiveVideoAdPositionSegments'
--
-- * 'istPositiveInventorySlots'
--
-- * 'istNegativeMobileApps'
--
-- * 'istNegativeIcmInterests'
inventorySegmentTargeting
    :: InventorySegmentTargeting
inventorySegmentTargeting =
    InventorySegmentTargeting
    { _istNegativeVideoDurationSegments = Nothing
    , _istNegativeIcmBrands = Nothing
    , _istNegativeKeyValues = Nothing
    , _istPositiveAudienceSegments = Nothing
    , _istPositiveXfpPlacements = Nothing
    , _istNegativeXfpAdSlots = Nothing
    , _istPositiveOperatingSystemVersions = Nothing
    , _istPositiveSizes = Nothing
    , _istPositiveDeviceCategories = Nothing
    , _istPositiveLocations = Nothing
    , _istNegativeAdSizes = Nothing
    , _istPositiveOperatingSystems = Nothing
    , _istPositiveSiteUrls = Nothing
    , _istNegativeInventorySlots = Nothing
    , _istNegativeVideoAdPositionSegments = Nothing
    , _istPositiveAdTypeSegments = Nothing
    , _istPositiveIcmInterests = Nothing
    , _istPositiveMobileApps = Nothing
    , _istPositiveKeyValues = Nothing
    , _istPositiveIcmBrands = Nothing
    , _istPositiveVideoDurationSegments = Nothing
    , _istNegativeAudienceSegments = Nothing
    , _istNegativeXfpPlacements = Nothing
    , _istPositiveXfpAdSlots = Nothing
    , _istNegativeOperatingSystemVersions = Nothing
    , _istNegativeSizes = Nothing
    , _istNegativeLocations = Nothing
    , _istNegativeDeviceCategories = Nothing
    , _istNegativeOperatingSystems = Nothing
    , _istPositiveAdSizes = Nothing
    , _istNegativeSiteUrls = Nothing
    , _istNegativeAdTypeSegments = Nothing
    , _istPositiveVideoAdPositionSegments = Nothing
    , _istPositiveInventorySlots = Nothing
    , _istNegativeMobileApps = Nothing
    , _istNegativeIcmInterests = Nothing
    }

istNegativeVideoDurationSegments :: Lens' InventorySegmentTargeting [Int64]
istNegativeVideoDurationSegments
  = lens _istNegativeVideoDurationSegments
      (\ s a -> s{_istNegativeVideoDurationSegments = a})
      . _Default
      . _Coerce

istNegativeIcmBrands :: Lens' InventorySegmentTargeting [Int64]
istNegativeIcmBrands
  = lens _istNegativeIcmBrands
      (\ s a -> s{_istNegativeIcmBrands = a})
      . _Default
      . _Coerce

istNegativeKeyValues :: Lens' InventorySegmentTargeting [Maybe RuleKeyValuePair]
istNegativeKeyValues
  = lens _istNegativeKeyValues
      (\ s a -> s{_istNegativeKeyValues = a})
      . _Default
      . _Coerce

istPositiveAudienceSegments :: Lens' InventorySegmentTargeting [Int64]
istPositiveAudienceSegments
  = lens _istPositiveAudienceSegments
      (\ s a -> s{_istPositiveAudienceSegments = a})
      . _Default
      . _Coerce

istPositiveXfpPlacements :: Lens' InventorySegmentTargeting [Int64]
istPositiveXfpPlacements
  = lens _istPositiveXfpPlacements
      (\ s a -> s{_istPositiveXfpPlacements = a})
      . _Default
      . _Coerce

istNegativeXfpAdSlots :: Lens' InventorySegmentTargeting [Int64]
istNegativeXfpAdSlots
  = lens _istNegativeXfpAdSlots
      (\ s a -> s{_istNegativeXfpAdSlots = a})
      . _Default
      . _Coerce

istPositiveOperatingSystemVersions :: Lens' InventorySegmentTargeting [Int64]
istPositiveOperatingSystemVersions
  = lens _istPositiveOperatingSystemVersions
      (\ s a -> s{_istPositiveOperatingSystemVersions = a})
      . _Default
      . _Coerce

istPositiveSizes :: Lens' InventorySegmentTargeting [Int64]
istPositiveSizes
  = lens _istPositiveSizes
      (\ s a -> s{_istPositiveSizes = a})
      . _Default
      . _Coerce

istPositiveDeviceCategories :: Lens' InventorySegmentTargeting [Int64]
istPositiveDeviceCategories
  = lens _istPositiveDeviceCategories
      (\ s a -> s{_istPositiveDeviceCategories = a})
      . _Default
      . _Coerce

istPositiveLocations :: Lens' InventorySegmentTargeting [Int64]
istPositiveLocations
  = lens _istPositiveLocations
      (\ s a -> s{_istPositiveLocations = a})
      . _Default
      . _Coerce

istNegativeAdSizes :: Lens' InventorySegmentTargeting [Maybe AdSize]
istNegativeAdSizes
  = lens _istNegativeAdSizes
      (\ s a -> s{_istNegativeAdSizes = a})
      . _Default
      . _Coerce

istPositiveOperatingSystems :: Lens' InventorySegmentTargeting [Int64]
istPositiveOperatingSystems
  = lens _istPositiveOperatingSystems
      (\ s a -> s{_istPositiveOperatingSystems = a})
      . _Default
      . _Coerce

istPositiveSiteUrls :: Lens' InventorySegmentTargeting [Text]
istPositiveSiteUrls
  = lens _istPositiveSiteUrls
      (\ s a -> s{_istPositiveSiteUrls = a})
      . _Default
      . _Coerce

istNegativeInventorySlots :: Lens' InventorySegmentTargeting [Text]
istNegativeInventorySlots
  = lens _istNegativeInventorySlots
      (\ s a -> s{_istNegativeInventorySlots = a})
      . _Default
      . _Coerce

istNegativeVideoAdPositionSegments :: Lens' InventorySegmentTargeting [Text]
istNegativeVideoAdPositionSegments
  = lens _istNegativeVideoAdPositionSegments
      (\ s a -> s{_istNegativeVideoAdPositionSegments = a})
      . _Default
      . _Coerce

istPositiveAdTypeSegments :: Lens' InventorySegmentTargeting [Text]
istPositiveAdTypeSegments
  = lens _istPositiveAdTypeSegments
      (\ s a -> s{_istPositiveAdTypeSegments = a})
      . _Default
      . _Coerce

istPositiveIcmInterests :: Lens' InventorySegmentTargeting [Int64]
istPositiveIcmInterests
  = lens _istPositiveIcmInterests
      (\ s a -> s{_istPositiveIcmInterests = a})
      . _Default
      . _Coerce

istPositiveMobileApps :: Lens' InventorySegmentTargeting [Text]
istPositiveMobileApps
  = lens _istPositiveMobileApps
      (\ s a -> s{_istPositiveMobileApps = a})
      . _Default
      . _Coerce

istPositiveKeyValues :: Lens' InventorySegmentTargeting [Maybe RuleKeyValuePair]
istPositiveKeyValues
  = lens _istPositiveKeyValues
      (\ s a -> s{_istPositiveKeyValues = a})
      . _Default
      . _Coerce

istPositiveIcmBrands :: Lens' InventorySegmentTargeting [Int64]
istPositiveIcmBrands
  = lens _istPositiveIcmBrands
      (\ s a -> s{_istPositiveIcmBrands = a})
      . _Default
      . _Coerce

istPositiveVideoDurationSegments :: Lens' InventorySegmentTargeting [Int64]
istPositiveVideoDurationSegments
  = lens _istPositiveVideoDurationSegments
      (\ s a -> s{_istPositiveVideoDurationSegments = a})
      . _Default
      . _Coerce

istNegativeAudienceSegments :: Lens' InventorySegmentTargeting [Int64]
istNegativeAudienceSegments
  = lens _istNegativeAudienceSegments
      (\ s a -> s{_istNegativeAudienceSegments = a})
      . _Default
      . _Coerce

istNegativeXfpPlacements :: Lens' InventorySegmentTargeting [Int64]
istNegativeXfpPlacements
  = lens _istNegativeXfpPlacements
      (\ s a -> s{_istNegativeXfpPlacements = a})
      . _Default
      . _Coerce

istPositiveXfpAdSlots :: Lens' InventorySegmentTargeting [Int64]
istPositiveXfpAdSlots
  = lens _istPositiveXfpAdSlots
      (\ s a -> s{_istPositiveXfpAdSlots = a})
      . _Default
      . _Coerce

istNegativeOperatingSystemVersions :: Lens' InventorySegmentTargeting [Int64]
istNegativeOperatingSystemVersions
  = lens _istNegativeOperatingSystemVersions
      (\ s a -> s{_istNegativeOperatingSystemVersions = a})
      . _Default
      . _Coerce

istNegativeSizes :: Lens' InventorySegmentTargeting [Int64]
istNegativeSizes
  = lens _istNegativeSizes
      (\ s a -> s{_istNegativeSizes = a})
      . _Default
      . _Coerce

istNegativeLocations :: Lens' InventorySegmentTargeting [Int64]
istNegativeLocations
  = lens _istNegativeLocations
      (\ s a -> s{_istNegativeLocations = a})
      . _Default
      . _Coerce

istNegativeDeviceCategories :: Lens' InventorySegmentTargeting [Int64]
istNegativeDeviceCategories
  = lens _istNegativeDeviceCategories
      (\ s a -> s{_istNegativeDeviceCategories = a})
      . _Default
      . _Coerce

istNegativeOperatingSystems :: Lens' InventorySegmentTargeting [Int64]
istNegativeOperatingSystems
  = lens _istNegativeOperatingSystems
      (\ s a -> s{_istNegativeOperatingSystems = a})
      . _Default
      . _Coerce

istPositiveAdSizes :: Lens' InventorySegmentTargeting [Maybe AdSize]
istPositiveAdSizes
  = lens _istPositiveAdSizes
      (\ s a -> s{_istPositiveAdSizes = a})
      . _Default
      . _Coerce

istNegativeSiteUrls :: Lens' InventorySegmentTargeting [Text]
istNegativeSiteUrls
  = lens _istNegativeSiteUrls
      (\ s a -> s{_istNegativeSiteUrls = a})
      . _Default
      . _Coerce

istNegativeAdTypeSegments :: Lens' InventorySegmentTargeting [Text]
istNegativeAdTypeSegments
  = lens _istNegativeAdTypeSegments
      (\ s a -> s{_istNegativeAdTypeSegments = a})
      . _Default
      . _Coerce

istPositiveVideoAdPositionSegments :: Lens' InventorySegmentTargeting [Text]
istPositiveVideoAdPositionSegments
  = lens _istPositiveVideoAdPositionSegments
      (\ s a -> s{_istPositiveVideoAdPositionSegments = a})
      . _Default
      . _Coerce

istPositiveInventorySlots :: Lens' InventorySegmentTargeting [Text]
istPositiveInventorySlots
  = lens _istPositiveInventorySlots
      (\ s a -> s{_istPositiveInventorySlots = a})
      . _Default
      . _Coerce

istNegativeMobileApps :: Lens' InventorySegmentTargeting [Text]
istNegativeMobileApps
  = lens _istNegativeMobileApps
      (\ s a -> s{_istNegativeMobileApps = a})
      . _Default
      . _Coerce

istNegativeIcmInterests :: Lens' InventorySegmentTargeting [Int64]
istNegativeIcmInterests
  = lens _istNegativeIcmInterests
      (\ s a -> s{_istNegativeIcmInterests = a})
      . _Default
      . _Coerce

--
-- /See:/ 'listClientAccessCapabilitiesRequest' smart constructor.
newtype ListClientAccessCapabilitiesRequest = ListClientAccessCapabilitiesRequest
    { _lcacrSponsorAccountId :: Maybe Int64
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListClientAccessCapabilitiesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcacrSponsorAccountId'
listClientAccessCapabilitiesRequest
    :: ListClientAccessCapabilitiesRequest
listClientAccessCapabilitiesRequest =
    ListClientAccessCapabilitiesRequest
    { _lcacrSponsorAccountId = Nothing
    }

lcacrSponsorAccountId :: Lens' ListClientAccessCapabilitiesRequest (Maybe Int64)
lcacrSponsorAccountId
  = lens _lcacrSponsorAccountId
      (\ s a -> s{_lcacrSponsorAccountId = a})

--
-- /See:/ 'listClientAccessCapabilitiesResponse' smart constructor.
newtype ListClientAccessCapabilitiesResponse = ListClientAccessCapabilitiesResponse
    { _lcacrClientAccessPermissions :: Maybe [Maybe ClientAccessCapabilities]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListClientAccessCapabilitiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcacrClientAccessPermissions'
listClientAccessCapabilitiesResponse
    :: ListClientAccessCapabilitiesResponse
listClientAccessCapabilitiesResponse =
    ListClientAccessCapabilitiesResponse
    { _lcacrClientAccessPermissions = Nothing
    }

lcacrClientAccessPermissions :: Lens' ListClientAccessCapabilitiesResponse [Maybe ClientAccessCapabilities]
lcacrClientAccessPermissions
  = lens _lcacrClientAccessPermissions
      (\ s a -> s{_lcacrClientAccessPermissions = a})
      . _Default
      . _Coerce

--
-- /See:/ 'listOffersRequest' smart constructor.
newtype ListOffersRequest = ListOffersRequest
    { _lorSinceTimestampMillis :: Maybe Int64
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListOffersRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorSinceTimestampMillis'
listOffersRequest
    :: ListOffersRequest
listOffersRequest =
    ListOffersRequest
    { _lorSinceTimestampMillis = Nothing
    }

lorSinceTimestampMillis :: Lens' ListOffersRequest (Maybe Int64)
lorSinceTimestampMillis
  = lens _lorSinceTimestampMillis
      (\ s a -> s{_lorSinceTimestampMillis = a})

--
-- /See:/ 'listOffersResponse' smart constructor.
data ListOffersResponse = ListOffersResponse
    { _lorKind   :: !Text
    , _lorOffers :: !(Maybe [Maybe OfferDto])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListOffersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorKind'
--
-- * 'lorOffers'
listOffersResponse
    :: ListOffersResponse
listOffersResponse =
    ListOffersResponse
    { _lorKind = "adexchangebuyer#offersList"
    , _lorOffers = Nothing
    }

lorKind :: Lens' ListOffersResponse Text
lorKind = lens _lorKind (\ s a -> s{_lorKind = a})

lorOffers :: Lens' ListOffersResponse [Maybe OfferDto]
lorOffers
  = lens _lorOffers (\ s a -> s{_lorOffers = a}) .
      _Default
      . _Coerce

-- | An order can contain multiple deals. A deal contains the terms and
-- targeting information that is used for serving.
--
-- /See:/ 'marketplaceDeal' smart constructor.
data MarketplaceDeal = MarketplaceDeal
    { _mdExternalDealId       :: !(Maybe Text)
    , _mdBuyerPrivateData     :: !(Maybe (Maybe PrivateData))
    , _mdWebPropertyCode      :: !(Maybe Text)
    , _mdCreationTimeMs       :: !(Maybe Int64)
    , _mdTerms                :: !(Maybe (Maybe DealTerms))
    , _mdOfferRevisionNumber  :: !(Maybe Int64)
    , _mdLastUpdateTimeMs     :: !(Maybe Int64)
    , _mdKind                 :: !Text
    , _mdDeliveryControl      :: !(Maybe (Maybe DeliveryControl))
    , _mdFlightStartTimeMs    :: !(Maybe Int64)
    , _mdSharedTargetings     :: !(Maybe [Maybe SharedTargeting])
    , _mdDealId               :: !(Maybe Text)
    , _mdInventoryDescription :: !(Maybe Text)
    , _mdSyndicationProduct   :: !(Maybe Text)
    , _mdFlightEndTimeMs      :: !(Maybe Int64)
    , _mdName                 :: !(Maybe Text)
    , _mdSellerContacts       :: !(Maybe [Maybe ContactInformation])
    , _mdOfferId              :: !(Maybe Text)
    , _mdOrderId              :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceDeal' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdExternalDealId'
--
-- * 'mdBuyerPrivateData'
--
-- * 'mdWebPropertyCode'
--
-- * 'mdCreationTimeMs'
--
-- * 'mdTerms'
--
-- * 'mdOfferRevisionNumber'
--
-- * 'mdLastUpdateTimeMs'
--
-- * 'mdKind'
--
-- * 'mdDeliveryControl'
--
-- * 'mdFlightStartTimeMs'
--
-- * 'mdSharedTargetings'
--
-- * 'mdDealId'
--
-- * 'mdInventoryDescription'
--
-- * 'mdSyndicationProduct'
--
-- * 'mdFlightEndTimeMs'
--
-- * 'mdName'
--
-- * 'mdSellerContacts'
--
-- * 'mdOfferId'
--
-- * 'mdOrderId'
marketplaceDeal
    :: MarketplaceDeal
marketplaceDeal =
    MarketplaceDeal
    { _mdExternalDealId = Nothing
    , _mdBuyerPrivateData = Nothing
    , _mdWebPropertyCode = Nothing
    , _mdCreationTimeMs = Nothing
    , _mdTerms = Nothing
    , _mdOfferRevisionNumber = Nothing
    , _mdLastUpdateTimeMs = Nothing
    , _mdKind = "adexchangebuyer#marketplaceDeal"
    , _mdDeliveryControl = Nothing
    , _mdFlightStartTimeMs = Nothing
    , _mdSharedTargetings = Nothing
    , _mdDealId = Nothing
    , _mdInventoryDescription = Nothing
    , _mdSyndicationProduct = Nothing
    , _mdFlightEndTimeMs = Nothing
    , _mdName = Nothing
    , _mdSellerContacts = Nothing
    , _mdOfferId = Nothing
    , _mdOrderId = Nothing
    }

-- | The external deal id assigned to this deal once the deal is finalized.
-- This is the deal-id that shows up in serving\/reporting etc. (readonly)
mdExternalDealId :: Lens' MarketplaceDeal (Maybe Text)
mdExternalDealId
  = lens _mdExternalDealId
      (\ s a -> s{_mdExternalDealId = a})

-- | Buyer private data (hidden from seller).
mdBuyerPrivateData :: Lens' MarketplaceDeal (Maybe (Maybe PrivateData))
mdBuyerPrivateData
  = lens _mdBuyerPrivateData
      (\ s a -> s{_mdBuyerPrivateData = a})

mdWebPropertyCode :: Lens' MarketplaceDeal (Maybe Text)
mdWebPropertyCode
  = lens _mdWebPropertyCode
      (\ s a -> s{_mdWebPropertyCode = a})

-- | The time (ms since epoch) of the deal creation. (readonly)
mdCreationTimeMs :: Lens' MarketplaceDeal (Maybe Int64)
mdCreationTimeMs
  = lens _mdCreationTimeMs
      (\ s a -> s{_mdCreationTimeMs = a})

-- | The negotiable terms of the deal. (updatable)
mdTerms :: Lens' MarketplaceDeal (Maybe (Maybe DealTerms))
mdTerms = lens _mdTerms (\ s a -> s{_mdTerms = a})

-- | The revision number of the offer that the deal was created from
-- (readonly, except on create)
mdOfferRevisionNumber :: Lens' MarketplaceDeal (Maybe Int64)
mdOfferRevisionNumber
  = lens _mdOfferRevisionNumber
      (\ s a -> s{_mdOfferRevisionNumber = a})

-- | The time (ms since epoch) when the deal was last updated. (readonly)
mdLastUpdateTimeMs :: Lens' MarketplaceDeal (Maybe Int64)
mdLastUpdateTimeMs
  = lens _mdLastUpdateTimeMs
      (\ s a -> s{_mdLastUpdateTimeMs = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"adexchangebuyer#marketplaceDeal\".
mdKind :: Lens' MarketplaceDeal Text
mdKind = lens _mdKind (\ s a -> s{_mdKind = a})

-- | The set of fields around delivery control that are interesting for a
-- buyer to see but are non-negotiable. These are set by the publisher.
-- This message is assigned an id of 100 since some day we would want to
-- model this as a protobuf extension.
mdDeliveryControl :: Lens' MarketplaceDeal (Maybe (Maybe DeliveryControl))
mdDeliveryControl
  = lens _mdDeliveryControl
      (\ s a -> s{_mdDeliveryControl = a})

-- | Proposed flight start time of the deal (ms since epoch) This will
-- generally be stored in a granularity of a second. (updatable)
mdFlightStartTimeMs :: Lens' MarketplaceDeal (Maybe Int64)
mdFlightStartTimeMs
  = lens _mdFlightStartTimeMs
      (\ s a -> s{_mdFlightStartTimeMs = a})

-- | The shared targeting visible to buyers and sellers. (updatable)
mdSharedTargetings :: Lens' MarketplaceDeal [Maybe SharedTargeting]
mdSharedTargetings
  = lens _mdSharedTargetings
      (\ s a -> s{_mdSharedTargetings = a})
      . _Default
      . _Coerce

-- | A unique deal=id for the deal (readonly).
mdDealId :: Lens' MarketplaceDeal (Maybe Text)
mdDealId = lens _mdDealId (\ s a -> s{_mdDealId = a})

-- | Description for the deal terms. (updatable)
mdInventoryDescription :: Lens' MarketplaceDeal (Maybe Text)
mdInventoryDescription
  = lens _mdInventoryDescription
      (\ s a -> s{_mdInventoryDescription = a})

-- | The syndication product associated with the deal. (readonly, except on
-- create)
mdSyndicationProduct :: Lens' MarketplaceDeal (Maybe Text)
mdSyndicationProduct
  = lens _mdSyndicationProduct
      (\ s a -> s{_mdSyndicationProduct = a})

-- | Proposed flight end time of the deal (ms since epoch) This will
-- generally be stored in a granularity of a second. (updatable)
mdFlightEndTimeMs :: Lens' MarketplaceDeal (Maybe Int64)
mdFlightEndTimeMs
  = lens _mdFlightEndTimeMs
      (\ s a -> s{_mdFlightEndTimeMs = a})

-- | The name of the deal. (updatable)
mdName :: Lens' MarketplaceDeal (Maybe Text)
mdName = lens _mdName (\ s a -> s{_mdName = a})

-- | Optional Seller contact information for the deal (buyer-readonly)
mdSellerContacts :: Lens' MarketplaceDeal [Maybe ContactInformation]
mdSellerContacts
  = lens _mdSellerContacts
      (\ s a -> s{_mdSellerContacts = a})
      . _Default
      . _Coerce

-- | The offer-id from which this deal was created. (readonly, except on
-- create)
mdOfferId :: Lens' MarketplaceDeal (Maybe Text)
mdOfferId
  = lens _mdOfferId (\ s a -> s{_mdOfferId = a})

mdOrderId :: Lens' MarketplaceDeal (Maybe Text)
mdOrderId
  = lens _mdOrderId (\ s a -> s{_mdOrderId = a})

--
-- /See:/ 'marketplaceDealParty' smart constructor.
data MarketplaceDealParty = MarketplaceDealParty
    { _mdpSeller :: !(Maybe (Maybe Seller))
    , _mdpBuyer  :: !(Maybe (Maybe Buyer))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceDealParty' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdpSeller'
--
-- * 'mdpBuyer'
marketplaceDealParty
    :: MarketplaceDealParty
marketplaceDealParty =
    MarketplaceDealParty
    { _mdpSeller = Nothing
    , _mdpBuyer = Nothing
    }

-- | The buyer\/seller associated with the deal. One of buyer\/seller is
-- specified for a deal party.
mdpSeller :: Lens' MarketplaceDealParty (Maybe (Maybe Seller))
mdpSeller
  = lens _mdpSeller (\ s a -> s{_mdpSeller = a})

-- | The buyer\/seller associated with the deal. One of buyer\/seller is
-- specified for a deal-party.
mdpBuyer :: Lens' MarketplaceDealParty (Maybe (Maybe Buyer))
mdpBuyer = lens _mdpBuyer (\ s a -> s{_mdpBuyer = a})

--
-- /See:/ 'marketplaceLabel' smart constructor.
data MarketplaceLabel = MarketplaceLabel
    { _mlDeprecatedMarketplaceDealParty :: !(Maybe (Maybe MarketplaceDealParty))
    , _mlAccountId                      :: !(Maybe Text)
    , _mlCreateTimeMs                   :: !(Maybe Int64)
    , _mlLabel                          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceLabel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlDeprecatedMarketplaceDealParty'
--
-- * 'mlAccountId'
--
-- * 'mlCreateTimeMs'
--
-- * 'mlLabel'
marketplaceLabel
    :: MarketplaceLabel
marketplaceLabel =
    MarketplaceLabel
    { _mlDeprecatedMarketplaceDealParty = Nothing
    , _mlAccountId = Nothing
    , _mlCreateTimeMs = Nothing
    , _mlLabel = Nothing
    }

-- | Information about the party that created the label.
mlDeprecatedMarketplaceDealParty :: Lens' MarketplaceLabel (Maybe (Maybe MarketplaceDealParty))
mlDeprecatedMarketplaceDealParty
  = lens _mlDeprecatedMarketplaceDealParty
      (\ s a -> s{_mlDeprecatedMarketplaceDealParty = a})

-- | The accountId of the party that created the label.
mlAccountId :: Lens' MarketplaceLabel (Maybe Text)
mlAccountId
  = lens _mlAccountId (\ s a -> s{_mlAccountId = a})

-- | The creation time (in ms since epoch) for the label.
mlCreateTimeMs :: Lens' MarketplaceLabel (Maybe Int64)
mlCreateTimeMs
  = lens _mlCreateTimeMs
      (\ s a -> s{_mlCreateTimeMs = a})

-- | The label to use.
mlLabel :: Lens' MarketplaceLabel (Maybe Text)
mlLabel = lens _mlLabel (\ s a -> s{_mlLabel = a})

-- | An order is associated with a bunch of notes which may optionally be
-- associated with a deal and\/or revision number.
--
-- /See:/ 'marketplaceNote' smart constructor.
data MarketplaceNote = MarketplaceNote
    { _mnNote                :: !(Maybe Text)
    , _mnKind                :: !Text
    , _mnTimestampMs         :: !(Maybe Int64)
    , _mnDealId              :: !(Maybe Text)
    , _mnNoteId              :: !(Maybe Text)
    , _mnCreatorRole         :: !(Maybe Text)
    , _mnOrderId             :: !(Maybe Text)
    , _mnOrderRevisionNumber :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceNote' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mnNote'
--
-- * 'mnKind'
--
-- * 'mnTimestampMs'
--
-- * 'mnDealId'
--
-- * 'mnNoteId'
--
-- * 'mnCreatorRole'
--
-- * 'mnOrderId'
--
-- * 'mnOrderRevisionNumber'
marketplaceNote
    :: MarketplaceNote
marketplaceNote =
    MarketplaceNote
    { _mnNote = Nothing
    , _mnKind = "adexchangebuyer#marketplaceNote"
    , _mnTimestampMs = Nothing
    , _mnDealId = Nothing
    , _mnNoteId = Nothing
    , _mnCreatorRole = Nothing
    , _mnOrderId = Nothing
    , _mnOrderRevisionNumber = Nothing
    }

-- | The actual note to attach. (readonly, except on create)
mnNote :: Lens' MarketplaceNote (Maybe Text)
mnNote = lens _mnNote (\ s a -> s{_mnNote = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"adexchangebuyer#marketplaceNote\".
mnKind :: Lens' MarketplaceNote Text
mnKind = lens _mnKind (\ s a -> s{_mnKind = a})

-- | The timestamp (ms since epoch) that this note was created. (readonly)
mnTimestampMs :: Lens' MarketplaceNote (Maybe Int64)
mnTimestampMs
  = lens _mnTimestampMs
      (\ s a -> s{_mnTimestampMs = a})

-- | Notes can optionally be associated with a deal. (readonly, except on
-- create)
mnDealId :: Lens' MarketplaceNote (Maybe Text)
mnDealId = lens _mnDealId (\ s a -> s{_mnDealId = a})

-- | The unique id for the note. (readonly)
mnNoteId :: Lens' MarketplaceNote (Maybe Text)
mnNoteId = lens _mnNoteId (\ s a -> s{_mnNoteId = a})

-- | The role of the person (buyer\/seller) creating the note. (readonly)
mnCreatorRole :: Lens' MarketplaceNote (Maybe Text)
mnCreatorRole
  = lens _mnCreatorRole
      (\ s a -> s{_mnCreatorRole = a})

-- | The order_id that a note is attached to. (readonly)
mnOrderId :: Lens' MarketplaceNote (Maybe Text)
mnOrderId
  = lens _mnOrderId (\ s a -> s{_mnOrderId = a})

-- | If the note is associated with an order revision number, then store that
-- here. (readonly, except on create)
mnOrderRevisionNumber :: Lens' MarketplaceNote (Maybe Int64)
mnOrderRevisionNumber
  = lens _mnOrderRevisionNumber
      (\ s a -> s{_mnOrderRevisionNumber = a})

-- | An offer is segment of inventory that a seller wishes to sell. It is
-- associated with certain terms and targeting information which helps
-- buyer know more about the inventory. Each field in an order can have one
-- of the following setting: (readonly) - It is an error to try and set
-- this field. (buyer-readonly) - Only the seller can set this field.
-- (seller-readonly) - Only the buyer can set this field. (updatable) - The
-- field is updatable at all times by either buyer or the seller.
--
-- /See:/ 'marketplaceOffer' smart constructor.
data MarketplaceOffer = MarketplaceOffer
    { _moState               :: !(Maybe Text)
    , _moWebPropertyCode     :: !(Maybe Text)
    , _moCreationTimeMs      :: !(Maybe Int64)
    , _moTerms               :: !(Maybe (Maybe DealTerms))
    , _moLastUpdateTimeMs    :: !(Maybe Int64)
    , _moKind                :: !Text
    , _moRevisionNumber      :: !(Maybe Int64)
    , _moHasCreatorSignedOff :: !(Maybe Bool)
    , _moFlightStartTimeMs   :: !(Maybe Int64)
    , _moSharedTargetings    :: !(Maybe [Maybe SharedTargeting])
    , _moSeller              :: !(Maybe (Maybe Seller))
    , _moSyndicationProduct  :: !(Maybe Text)
    , _moFlightEndTimeMs     :: !(Maybe Int64)
    , _moName                :: !(Maybe Text)
    , _moCreatorContacts     :: !(Maybe [Maybe ContactInformation])
    , _moOfferId             :: !(Maybe Text)
    , _moLabels              :: !(Maybe [Maybe MarketplaceLabel])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceOffer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'moState'
--
-- * 'moWebPropertyCode'
--
-- * 'moCreationTimeMs'
--
-- * 'moTerms'
--
-- * 'moLastUpdateTimeMs'
--
-- * 'moKind'
--
-- * 'moRevisionNumber'
--
-- * 'moHasCreatorSignedOff'
--
-- * 'moFlightStartTimeMs'
--
-- * 'moSharedTargetings'
--
-- * 'moSeller'
--
-- * 'moSyndicationProduct'
--
-- * 'moFlightEndTimeMs'
--
-- * 'moName'
--
-- * 'moCreatorContacts'
--
-- * 'moOfferId'
--
-- * 'moLabels'
marketplaceOffer
    :: MarketplaceOffer
marketplaceOffer =
    MarketplaceOffer
    { _moState = Nothing
    , _moWebPropertyCode = Nothing
    , _moCreationTimeMs = Nothing
    , _moTerms = Nothing
    , _moLastUpdateTimeMs = Nothing
    , _moKind = "adexchangebuyer#marketplaceOffer"
    , _moRevisionNumber = Nothing
    , _moHasCreatorSignedOff = Nothing
    , _moFlightStartTimeMs = Nothing
    , _moSharedTargetings = Nothing
    , _moSeller = Nothing
    , _moSyndicationProduct = Nothing
    , _moFlightEndTimeMs = Nothing
    , _moName = Nothing
    , _moCreatorContacts = Nothing
    , _moOfferId = Nothing
    , _moLabels = Nothing
    }

-- | The state of the offer. (buyer-readonly)
moState :: Lens' MarketplaceOffer (Maybe Text)
moState = lens _moState (\ s a -> s{_moState = a})

moWebPropertyCode :: Lens' MarketplaceOffer (Maybe Text)
moWebPropertyCode
  = lens _moWebPropertyCode
      (\ s a -> s{_moWebPropertyCode = a})

-- | Creation time in ms. since epoch (readonly)
moCreationTimeMs :: Lens' MarketplaceOffer (Maybe Int64)
moCreationTimeMs
  = lens _moCreationTimeMs
      (\ s a -> s{_moCreationTimeMs = a})

-- | The negotiable terms of the deal (buyer-readonly)
moTerms :: Lens' MarketplaceOffer (Maybe (Maybe DealTerms))
moTerms = lens _moTerms (\ s a -> s{_moTerms = a})

-- | Time of last update in ms. since epoch (readonly)
moLastUpdateTimeMs :: Lens' MarketplaceOffer (Maybe Int64)
moLastUpdateTimeMs
  = lens _moLastUpdateTimeMs
      (\ s a -> s{_moLastUpdateTimeMs = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"adexchangebuyer#marketplaceOffer\".
moKind :: Lens' MarketplaceOffer Text
moKind = lens _moKind (\ s a -> s{_moKind = a})

-- | The revision number of the offer. (readonly)
moRevisionNumber :: Lens' MarketplaceOffer (Maybe Int64)
moRevisionNumber
  = lens _moRevisionNumber
      (\ s a -> s{_moRevisionNumber = a})

-- | If the creator has already signed off on the offer, then the buyer can
-- finalize the deal by accepting the offer as is. When copying to an
-- order, if any of the terms are changed, then auto_finalize is
-- automatically set to false.
moHasCreatorSignedOff :: Lens' MarketplaceOffer (Maybe Bool)
moHasCreatorSignedOff
  = lens _moHasCreatorSignedOff
      (\ s a -> s{_moHasCreatorSignedOff = a})

-- | Inventory availability dates. (times are in ms since epoch) The
-- granularity is generally in the order of seconds. (buyer-readonly)
moFlightStartTimeMs :: Lens' MarketplaceOffer (Maybe Int64)
moFlightStartTimeMs
  = lens _moFlightStartTimeMs
      (\ s a -> s{_moFlightStartTimeMs = a})

-- | Targeting that is shared between the buyer and the seller. Each
-- targeting criteria has a specified key and for each key there is a list
-- of inclusion value or exclusion values. (buyer-readonly)
moSharedTargetings :: Lens' MarketplaceOffer [Maybe SharedTargeting]
moSharedTargetings
  = lens _moSharedTargetings
      (\ s a -> s{_moSharedTargetings = a})
      . _Default
      . _Coerce

-- | Information about the seller that created this offer (readonly, except
-- on create)
moSeller :: Lens' MarketplaceOffer (Maybe (Maybe Seller))
moSeller = lens _moSeller (\ s a -> s{_moSeller = a})

-- | The syndication product associated with the deal. (readonly, except on
-- create)
moSyndicationProduct :: Lens' MarketplaceOffer (Maybe Text)
moSyndicationProduct
  = lens _moSyndicationProduct
      (\ s a -> s{_moSyndicationProduct = a})

-- | The proposed end time for the deal (ms since epoch) (buyer-readonly)
moFlightEndTimeMs :: Lens' MarketplaceOffer (Maybe Int64)
moFlightEndTimeMs
  = lens _moFlightEndTimeMs
      (\ s a -> s{_moFlightEndTimeMs = a})

-- | The name for this offer as set by the seller. (buyer-readonly)
moName :: Lens' MarketplaceOffer (Maybe Text)
moName = lens _moName (\ s a -> s{_moName = a})

-- | Optional contact information for the creator of this offer.
-- (buyer-readonly)
moCreatorContacts :: Lens' MarketplaceOffer [Maybe ContactInformation]
moCreatorContacts
  = lens _moCreatorContacts
      (\ s a -> s{_moCreatorContacts = a})
      . _Default
      . _Coerce

-- | The unique id for the offer (readonly)
moOfferId :: Lens' MarketplaceOffer (Maybe Text)
moOfferId
  = lens _moOfferId (\ s a -> s{_moOfferId = a})

-- | Optional List of labels for the offer (optional, buyer-readonly).
moLabels :: Lens' MarketplaceOffer [Maybe MarketplaceLabel]
moLabels
  = lens _moLabels (\ s a -> s{_moLabels = a}) .
      _Default
      . _Coerce

-- | Represents an order in the marketplace. An order is the unit of
-- negotiation between a seller and a buyer and contains deals which are
-- served. Each field in an order can have one of the following setting:
-- (readonly) - It is an error to try and set this field. (buyer-readonly)
-- - Only the seller can set this field. (seller-readonly) - Only the buyer
-- can set this field. (updatable) - The field is updatable at all times by
-- either buyer or the seller.
--
-- /See:/ 'marketplaceOrder' smart constructor.
data MarketplaceOrder = MarketplaceOrder
    { _mBuyerPrivateData           :: !(Maybe (Maybe PrivateData))
    , _mIsSetupComplete            :: !(Maybe Bool)
    , _mBuyerContacts              :: !(Maybe [Maybe ContactInformation])
    , _mKind                       :: !Text
    , _mOriginatorRole             :: !(Maybe Text)
    , _mRevisionNumber             :: !(Maybe Int64)
    , _mBilledBuyer                :: !(Maybe (Maybe Buyer))
    , _mIsRenegotiating            :: !(Maybe Bool)
    , _mHasSellerSignedOff         :: !(Maybe Bool)
    , _mSeller                     :: !(Maybe (Maybe Seller))
    , _mOrderState                 :: !(Maybe Text)
    , _mName                       :: !(Maybe Text)
    , _mSellerContacts             :: !(Maybe [Maybe ContactInformation])
    , _mLastUpdaterRole            :: !(Maybe Text)
    , _mLabels                     :: !(Maybe [Maybe MarketplaceLabel])
    , _mRevisionTimeMs             :: !(Maybe Int64)
    , _mOrderId                    :: !(Maybe Text)
    , _mLastUpdaterOrCommentorRole :: !(Maybe Text)
    , _mHasBuyerSignedOff          :: !(Maybe Bool)
    , _mBuyer                      :: !(Maybe (Maybe Buyer))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceOrder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mBuyerPrivateData'
--
-- * 'mIsSetupComplete'
--
-- * 'mBuyerContacts'
--
-- * 'mKind'
--
-- * 'mOriginatorRole'
--
-- * 'mRevisionNumber'
--
-- * 'mBilledBuyer'
--
-- * 'mIsRenegotiating'
--
-- * 'mHasSellerSignedOff'
--
-- * 'mSeller'
--
-- * 'mOrderState'
--
-- * 'mName'
--
-- * 'mSellerContacts'
--
-- * 'mLastUpdaterRole'
--
-- * 'mLabels'
--
-- * 'mRevisionTimeMs'
--
-- * 'mOrderId'
--
-- * 'mLastUpdaterOrCommentorRole'
--
-- * 'mHasBuyerSignedOff'
--
-- * 'mBuyer'
marketplaceOrder
    :: MarketplaceOrder
marketplaceOrder =
    MarketplaceOrder
    { _mBuyerPrivateData = Nothing
    , _mIsSetupComplete = Nothing
    , _mBuyerContacts = Nothing
    , _mKind = "adexchangebuyer#marketplaceOrder"
    , _mOriginatorRole = Nothing
    , _mRevisionNumber = Nothing
    , _mBilledBuyer = Nothing
    , _mIsRenegotiating = Nothing
    , _mHasSellerSignedOff = Nothing
    , _mSeller = Nothing
    , _mOrderState = Nothing
    , _mName = Nothing
    , _mSellerContacts = Nothing
    , _mLastUpdaterRole = Nothing
    , _mLabels = Nothing
    , _mRevisionTimeMs = Nothing
    , _mOrderId = Nothing
    , _mLastUpdaterOrCommentorRole = Nothing
    , _mHasBuyerSignedOff = Nothing
    , _mBuyer = Nothing
    }

-- | Private data for buyer. (hidden from seller).
mBuyerPrivateData :: Lens' MarketplaceOrder (Maybe (Maybe PrivateData))
mBuyerPrivateData
  = lens _mBuyerPrivateData
      (\ s a -> s{_mBuyerPrivateData = a})

-- | True, if the buyside inventory setup is complete for this order.
-- (readonly)
mIsSetupComplete :: Lens' MarketplaceOrder (Maybe Bool)
mIsSetupComplete
  = lens _mIsSetupComplete
      (\ s a -> s{_mIsSetupComplete = a})

-- | Optional contact information fort the buyer. (seller-readonly)
mBuyerContacts :: Lens' MarketplaceOrder [Maybe ContactInformation]
mBuyerContacts
  = lens _mBuyerContacts
      (\ s a -> s{_mBuyerContacts = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"adexchangebuyer#marketplaceOrder\".
mKind :: Lens' MarketplaceOrder Text
mKind = lens _mKind (\ s a -> s{_mKind = a})

-- | Indicates whether the buyer\/seller created the offer.(readonly)
mOriginatorRole :: Lens' MarketplaceOrder (Maybe Text)
mOriginatorRole
  = lens _mOriginatorRole
      (\ s a -> s{_mOriginatorRole = a})

-- | The revision number for the order (readonly).
mRevisionNumber :: Lens' MarketplaceOrder (Maybe Int64)
mRevisionNumber
  = lens _mRevisionNumber
      (\ s a -> s{_mRevisionNumber = a})

-- | Reference to the buyer that will get billed for this order. (readonly)
mBilledBuyer :: Lens' MarketplaceOrder (Maybe (Maybe Buyer))
mBilledBuyer
  = lens _mBilledBuyer (\ s a -> s{_mBilledBuyer = a})

-- | True if the order is being renegotiated (readonly).
mIsRenegotiating :: Lens' MarketplaceOrder (Maybe Bool)
mIsRenegotiating
  = lens _mIsRenegotiating
      (\ s a -> s{_mIsRenegotiating = a})

-- | When an order is in an accepted state, indicates whether the buyer has
-- signed off Once both sides have signed off on a deal, the order can be
-- finalized by the seller. (buyer-readonly)
mHasSellerSignedOff :: Lens' MarketplaceOrder (Maybe Bool)
mHasSellerSignedOff
  = lens _mHasSellerSignedOff
      (\ s a -> s{_mHasSellerSignedOff = a})

-- | Reference to the seller on the order. (readonly, except on create)
mSeller :: Lens' MarketplaceOrder (Maybe (Maybe Seller))
mSeller = lens _mSeller (\ s a -> s{_mSeller = a})

-- | The current state of the order. (readonly)
mOrderState :: Lens' MarketplaceOrder (Maybe Text)
mOrderState
  = lens _mOrderState (\ s a -> s{_mOrderState = a})

-- | The name for the order (updatable)
mName :: Lens' MarketplaceOrder (Maybe Text)
mName = lens _mName (\ s a -> s{_mName = a})

-- | Optional contact information for the seller (buyer-readonly).
mSellerContacts :: Lens' MarketplaceOrder [Maybe ContactInformation]
mSellerContacts
  = lens _mSellerContacts
      (\ s a -> s{_mSellerContacts = a})
      . _Default
      . _Coerce

mLastUpdaterRole :: Lens' MarketplaceOrder (Maybe Text)
mLastUpdaterRole
  = lens _mLastUpdaterRole
      (\ s a -> s{_mLastUpdaterRole = a})

-- | List of labels associated with the order. (readonly)
mLabels :: Lens' MarketplaceOrder [Maybe MarketplaceLabel]
mLabels
  = lens _mLabels (\ s a -> s{_mLabels = a}) . _Default
      . _Coerce

-- | The time (ms since epoch) when the order was last revised (readonly).
mRevisionTimeMs :: Lens' MarketplaceOrder (Maybe Int64)
mRevisionTimeMs
  = lens _mRevisionTimeMs
      (\ s a -> s{_mRevisionTimeMs = a})

-- | The unique id of the order. (readonly).
mOrderId :: Lens' MarketplaceOrder (Maybe Text)
mOrderId = lens _mOrderId (\ s a -> s{_mOrderId = a})

-- | The role of the last user that either updated the order or left a
-- comment. (readonly)
mLastUpdaterOrCommentorRole :: Lens' MarketplaceOrder (Maybe Text)
mLastUpdaterOrCommentorRole
  = lens _mLastUpdaterOrCommentorRole
      (\ s a -> s{_mLastUpdaterOrCommentorRole = a})

-- | When an order is in an accepted state, indicates whether the buyer has
-- signed off Once both sides have signed off on a deal, the order can be
-- finalized by the seller. (seller-readonly)
mHasBuyerSignedOff :: Lens' MarketplaceOrder (Maybe Bool)
mHasBuyerSignedOff
  = lens _mHasBuyerSignedOff
      (\ s a -> s{_mHasBuyerSignedOff = a})

-- | Reference to the buyer on the order. (readonly, except on create)
mBuyer :: Lens' MarketplaceOrder (Maybe (Maybe Buyer))
mBuyer = lens _mBuyer (\ s a -> s{_mBuyer = a})

--
-- /See:/ 'moneyDto' smart constructor.
data MoneyDto = MoneyDto
    { _mdCurrencyCode :: !(Maybe Text)
    , _mdMicros       :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MoneyDto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdCurrencyCode'
--
-- * 'mdMicros'
moneyDto
    :: MoneyDto
moneyDto =
    MoneyDto
    { _mdCurrencyCode = Nothing
    , _mdMicros = Nothing
    }

mdCurrencyCode :: Lens' MoneyDto (Maybe Text)
mdCurrencyCode
  = lens _mdCurrencyCode
      (\ s a -> s{_mdCurrencyCode = a})

mdMicros :: Lens' MoneyDto (Maybe Int64)
mdMicros = lens _mdMicros (\ s a -> s{_mdMicros = a})

--
-- /See:/ 'negotiationDto' smart constructor.
data NegotiationDto = NegotiationDto
    { _ndNegotiationState    :: !(Maybe Text)
    , _ndExternalDealId      :: !(Maybe Int64)
    , _ndStatus              :: !(Maybe Text)
    , _ndDealType            :: !(Maybe Text)
    , _ndNegotiationRounds   :: !(Maybe [Maybe NegotiationRoundDto])
    , _ndKind                :: !Text
    , _ndBilledBuyer         :: !(Maybe (Maybe DealPartyDto))
    , _ndBuyerEmailContacts  :: !(Maybe [Text])
    , _ndStats               :: !(Maybe (Maybe StatsDto))
    , _ndSeller              :: !(Maybe (Maybe DealPartyDto))
    , _ndLabelNames          :: !(Maybe [Text])
    , _ndOfferId             :: !(Maybe Int64)
    , _ndNegotiationId       :: !(Maybe Int64)
    , _ndSellerEmailContacts :: !(Maybe [Text])
    , _ndBuyer               :: !(Maybe (Maybe DealPartyDto))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'NegotiationDto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ndNegotiationState'
--
-- * 'ndExternalDealId'
--
-- * 'ndStatus'
--
-- * 'ndDealType'
--
-- * 'ndNegotiationRounds'
--
-- * 'ndKind'
--
-- * 'ndBilledBuyer'
--
-- * 'ndBuyerEmailContacts'
--
-- * 'ndStats'
--
-- * 'ndSeller'
--
-- * 'ndLabelNames'
--
-- * 'ndOfferId'
--
-- * 'ndNegotiationId'
--
-- * 'ndSellerEmailContacts'
--
-- * 'ndBuyer'
negotiationDto
    :: NegotiationDto
negotiationDto =
    NegotiationDto
    { _ndNegotiationState = Nothing
    , _ndExternalDealId = Nothing
    , _ndStatus = Nothing
    , _ndDealType = Nothing
    , _ndNegotiationRounds = Nothing
    , _ndKind = "adexchangebuyer#negotiation"
    , _ndBilledBuyer = Nothing
    , _ndBuyerEmailContacts = Nothing
    , _ndStats = Nothing
    , _ndSeller = Nothing
    , _ndLabelNames = Nothing
    , _ndOfferId = Nothing
    , _ndNegotiationId = Nothing
    , _ndSellerEmailContacts = Nothing
    , _ndBuyer = Nothing
    }

-- | The state of this negotiation.
ndNegotiationState :: Lens' NegotiationDto (Maybe Text)
ndNegotiationState
  = lens _ndNegotiationState
      (\ s a -> s{_ndNegotiationState = a})

-- | For finalized negotiations, the ID of the finalized deal.
ndExternalDealId :: Lens' NegotiationDto (Maybe Int64)
ndExternalDealId
  = lens _ndExternalDealId
      (\ s a -> s{_ndExternalDealId = a})

-- | The status of this negotiation.
ndStatus :: Lens' NegotiationDto (Maybe Text)
ndStatus = lens _ndStatus (\ s a -> s{_ndStatus = a})

-- | The type of this deal.
ndDealType :: Lens' NegotiationDto (Maybe Text)
ndDealType
  = lens _ndDealType (\ s a -> s{_ndDealType = a})

-- | The series of negotiation rounds for this negotiation.
ndNegotiationRounds :: Lens' NegotiationDto [Maybe NegotiationRoundDto]
ndNegotiationRounds
  = lens _ndNegotiationRounds
      (\ s a -> s{_ndNegotiationRounds = a})
      . _Default
      . _Coerce

ndKind :: Lens' NegotiationDto Text
ndKind = lens _ndKind (\ s a -> s{_ndKind = a})

-- | The billed buyer; Specified by a buyer buying through an intermediary.
ndBilledBuyer :: Lens' NegotiationDto (Maybe (Maybe DealPartyDto))
ndBilledBuyer
  = lens _ndBilledBuyer
      (\ s a -> s{_ndBilledBuyer = a})

-- | The buyer party\'s contact email.
ndBuyerEmailContacts :: Lens' NegotiationDto [Text]
ndBuyerEmailContacts
  = lens _ndBuyerEmailContacts
      (\ s a -> s{_ndBuyerEmailContacts = a})
      . _Default
      . _Coerce

-- | The stats for this negotiation.
ndStats :: Lens' NegotiationDto (Maybe (Maybe StatsDto))
ndStats = lens _ndStats (\ s a -> s{_ndStats = a})

-- | Details of the seller party in this negotiation.
ndSeller :: Lens' NegotiationDto (Maybe (Maybe DealPartyDto))
ndSeller = lens _ndSeller (\ s a -> s{_ndSeller = a})

-- | A list of label names applicable to this negotiation.
ndLabelNames :: Lens' NegotiationDto [Text]
ndLabelNames
  = lens _ndLabelNames (\ s a -> s{_ndLabelNames = a})
      . _Default
      . _Coerce

-- | The ID of this negotiation\'s original offer.
ndOfferId :: Lens' NegotiationDto (Maybe Int64)
ndOfferId
  = lens _ndOfferId (\ s a -> s{_ndOfferId = a})

-- | The unique ID of this negotiation.
ndNegotiationId :: Lens' NegotiationDto (Maybe Int64)
ndNegotiationId
  = lens _ndNegotiationId
      (\ s a -> s{_ndNegotiationId = a})

-- | The seller party\'s contact email.
ndSellerEmailContacts :: Lens' NegotiationDto [Text]
ndSellerEmailContacts
  = lens _ndSellerEmailContacts
      (\ s a -> s{_ndSellerEmailContacts = a})
      . _Default
      . _Coerce

-- | Details of the buyer party in this negotiation.
ndBuyer :: Lens' NegotiationDto (Maybe (Maybe DealPartyDto))
ndBuyer = lens _ndBuyer (\ s a -> s{_ndBuyer = a})

--
-- /See:/ 'negotiationRoundDto' smart constructor.
data NegotiationRoundDto = NegotiationRoundDto
    { _nrdTerms          :: !(Maybe (Maybe TermsDto))
    , _nrdKind           :: !Text
    , _nrdOriginatorRole :: !(Maybe Text)
    , _nrdAction         :: !(Maybe Text)
    , _nrdDbmPartnerId   :: !(Maybe Int64)
    , _nrdNotes          :: !(Maybe Text)
    , _nrdNegotiationId  :: !(Maybe Int64)
    , _nrdEditHistory    :: !(Maybe (Maybe EditHistoryDto))
    , _nrdRoundNumber    :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'NegotiationRoundDto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nrdTerms'
--
-- * 'nrdKind'
--
-- * 'nrdOriginatorRole'
--
-- * 'nrdAction'
--
-- * 'nrdDbmPartnerId'
--
-- * 'nrdNotes'
--
-- * 'nrdNegotiationId'
--
-- * 'nrdEditHistory'
--
-- * 'nrdRoundNumber'
negotiationRoundDto
    :: NegotiationRoundDto
negotiationRoundDto =
    NegotiationRoundDto
    { _nrdTerms = Nothing
    , _nrdKind = "adexchangebuyer#negotiationRound"
    , _nrdOriginatorRole = Nothing
    , _nrdAction = Nothing
    , _nrdDbmPartnerId = Nothing
    , _nrdNotes = Nothing
    , _nrdNegotiationId = Nothing
    , _nrdEditHistory = Nothing
    , _nrdRoundNumber = Nothing
    }

-- | The detailed terms proposed in this negotiation round.
nrdTerms :: Lens' NegotiationRoundDto (Maybe (Maybe TermsDto))
nrdTerms = lens _nrdTerms (\ s a -> s{_nrdTerms = a})

nrdKind :: Lens' NegotiationRoundDto Text
nrdKind = lens _nrdKind (\ s a -> s{_nrdKind = a})

-- | The role, either buyer or seller, initiating this negotiation round.
nrdOriginatorRole :: Lens' NegotiationRoundDto (Maybe Text)
nrdOriginatorRole
  = lens _nrdOriginatorRole
      (\ s a -> s{_nrdOriginatorRole = a})

-- | The action performed by this negotiation round.
nrdAction :: Lens' NegotiationRoundDto (Maybe Text)
nrdAction
  = lens _nrdAction (\ s a -> s{_nrdAction = a})

-- | Stores DBM partner ID for use by DBM
nrdDbmPartnerId :: Lens' NegotiationRoundDto (Maybe Int64)
nrdDbmPartnerId
  = lens _nrdDbmPartnerId
      (\ s a -> s{_nrdDbmPartnerId = a})

-- | Notes regarding this negotiation round.
nrdNotes :: Lens' NegotiationRoundDto (Maybe Text)
nrdNotes = lens _nrdNotes (\ s a -> s{_nrdNotes = a})

-- | The ID of the negotiation to which this negotiation round applies.
nrdNegotiationId :: Lens' NegotiationRoundDto (Maybe Int64)
nrdNegotiationId
  = lens _nrdNegotiationId
      (\ s a -> s{_nrdNegotiationId = a})

-- | The edit history of this negotiation round.
nrdEditHistory :: Lens' NegotiationRoundDto (Maybe (Maybe EditHistoryDto))
nrdEditHistory
  = lens _nrdEditHistory
      (\ s a -> s{_nrdEditHistory = a})

-- | The number of this negotiation round, in sequence.
nrdRoundNumber :: Lens' NegotiationRoundDto (Maybe Int64)
nrdRoundNumber
  = lens _nrdRoundNumber
      (\ s a -> s{_nrdRoundNumber = a})

--
-- /See:/ 'offerDto' smart constructor.
data OfferDto = OfferDto
    { _odCreator             :: !(Maybe (Maybe DealPartyDto))
    , _odStatus              :: !(Maybe Text)
    , _odOfferState          :: !(Maybe Text)
    , _odPointOfContact      :: !(Maybe Text)
    , _odTerms               :: !(Maybe (Maybe TermsDto))
    , _odKind                :: !Text
    , _odBilledBuyer         :: !(Maybe (Maybe DealPartyDto))
    , _odOpenToDealParties   :: !(Maybe [Maybe DealPartyDto])
    , _odEmailContacts       :: !(Maybe [Text])
    , _odLabelNames          :: !(Maybe [Text])
    , _odOfferId             :: !(Maybe Int64)
    , _odClosedToDealParties :: !(Maybe [Maybe DealPartyDto])
    , _odAnonymous           :: !(Maybe Bool)
    , _odIsOpen              :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OfferDto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odCreator'
--
-- * 'odStatus'
--
-- * 'odOfferState'
--
-- * 'odPointOfContact'
--
-- * 'odTerms'
--
-- * 'odKind'
--
-- * 'odBilledBuyer'
--
-- * 'odOpenToDealParties'
--
-- * 'odEmailContacts'
--
-- * 'odLabelNames'
--
-- * 'odOfferId'
--
-- * 'odClosedToDealParties'
--
-- * 'odAnonymous'
--
-- * 'odIsOpen'
offerDto
    :: OfferDto
offerDto =
    OfferDto
    { _odCreator = Nothing
    , _odStatus = Nothing
    , _odOfferState = Nothing
    , _odPointOfContact = Nothing
    , _odTerms = Nothing
    , _odKind = "adexchangebuyer#offer"
    , _odBilledBuyer = Nothing
    , _odOpenToDealParties = Nothing
    , _odEmailContacts = Nothing
    , _odLabelNames = Nothing
    , _odOfferId = Nothing
    , _odClosedToDealParties = Nothing
    , _odAnonymous = Nothing
    , _odIsOpen = Nothing
    }

-- | The creator of this offer.
odCreator :: Lens' OfferDto (Maybe (Maybe DealPartyDto))
odCreator
  = lens _odCreator (\ s a -> s{_odCreator = a})

-- | The status of this offer.
odStatus :: Lens' OfferDto (Maybe Text)
odStatus = lens _odStatus (\ s a -> s{_odStatus = a})

-- | The state of this offer.
odOfferState :: Lens' OfferDto (Maybe Text)
odOfferState
  = lens _odOfferState (\ s a -> s{_odOfferState = a})

-- | The point of contact for this offer.
odPointOfContact :: Lens' OfferDto (Maybe Text)
odPointOfContact
  = lens _odPointOfContact
      (\ s a -> s{_odPointOfContact = a})

-- | The terms of this offer.
odTerms :: Lens' OfferDto (Maybe (Maybe TermsDto))
odTerms = lens _odTerms (\ s a -> s{_odTerms = a})

odKind :: Lens' OfferDto Text
odKind = lens _odKind (\ s a -> s{_odKind = a})

-- | The billed buyer; For buyer initiated offers, buying through an
-- intermediary.
odBilledBuyer :: Lens' OfferDto (Maybe (Maybe DealPartyDto))
odBilledBuyer
  = lens _odBilledBuyer
      (\ s a -> s{_odBilledBuyer = a})

-- | The list of buyer or seller parties this offer is open to.
odOpenToDealParties :: Lens' OfferDto [Maybe DealPartyDto]
odOpenToDealParties
  = lens _odOpenToDealParties
      (\ s a -> s{_odOpenToDealParties = a})
      . _Default
      . _Coerce

-- | The list of email contacts for this offer.
odEmailContacts :: Lens' OfferDto [Text]
odEmailContacts
  = lens _odEmailContacts
      (\ s a -> s{_odEmailContacts = a})
      . _Default
      . _Coerce

-- | The list of label names applicable to this offer.
odLabelNames :: Lens' OfferDto [Text]
odLabelNames
  = lens _odLabelNames (\ s a -> s{_odLabelNames = a})
      . _Default
      . _Coerce

-- | The unique ID of this offer.
odOfferId :: Lens' OfferDto (Maybe Int64)
odOfferId
  = lens _odOfferId (\ s a -> s{_odOfferId = a})

-- | The list of buyer or seller parties this offer is closed to.
odClosedToDealParties :: Lens' OfferDto [Maybe DealPartyDto]
odClosedToDealParties
  = lens _odClosedToDealParties
      (\ s a -> s{_odClosedToDealParties = a})
      . _Default
      . _Coerce

-- | Whether this offer is anonymous.
odAnonymous :: Lens' OfferDto (Maybe Bool)
odAnonymous
  = lens _odAnonymous (\ s a -> s{_odAnonymous = a})

-- | Whether this offer is open.
odIsOpen :: Lens' OfferDto (Maybe Bool)
odIsOpen = lens _odIsOpen (\ s a -> s{_odIsOpen = a})

-- | The configuration data for an Ad Exchange performance report list.
--
-- /See:/ 'performanceReport' smart constructor.
data PerformanceReport = PerformanceReport
    { _prFilteredBidRate         :: !(Maybe Double)
    , _prKind                    :: !Text
    , _prLatency95thPercentile   :: !(Maybe Double)
    , _prCookieMatcherStatusRate :: !(Maybe [Either Text Int64])
    , _prHostedMatchStatusRate   :: !(Maybe [Either Text Int64])
    , _prUnsuccessfulRequestRate :: !(Maybe Double)
    , _prBidRequestRate          :: !(Maybe Double)
    , _prQuotaThrottledLimit     :: !(Maybe Double)
    , _prQuotaConfiguredLimit    :: !(Maybe Double)
    , _prSuccessfulRequestRate   :: !(Maybe Double)
    , _prLatency85thPercentile   :: !(Maybe Double)
    , _prCalloutStatusRate       :: !(Maybe [Either Text Int64])
    , _prLatency50thPercentile   :: !(Maybe Double)
    , _prBidRate                 :: !(Maybe Double)
    , _prCreativeStatusRate      :: !(Maybe [Either Text Int64])
    , _prNoQuotaInRegion         :: !(Maybe Double)
    , _prRegion                  :: !(Maybe Text)
    , _prInventoryMatchRate      :: !(Maybe Double)
    , _prPixelMatchResponses     :: !(Maybe Double)
    , _prTimestamp               :: !(Maybe Int64)
    , _prPixelMatchRequests      :: !(Maybe Double)
    , _prOutOfQuota              :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PerformanceReport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prFilteredBidRate'
--
-- * 'prKind'
--
-- * 'prLatency95thPercentile'
--
-- * 'prCookieMatcherStatusRate'
--
-- * 'prHostedMatchStatusRate'
--
-- * 'prUnsuccessfulRequestRate'
--
-- * 'prBidRequestRate'
--
-- * 'prQuotaThrottledLimit'
--
-- * 'prQuotaConfiguredLimit'
--
-- * 'prSuccessfulRequestRate'
--
-- * 'prLatency85thPercentile'
--
-- * 'prCalloutStatusRate'
--
-- * 'prLatency50thPercentile'
--
-- * 'prBidRate'
--
-- * 'prCreativeStatusRate'
--
-- * 'prNoQuotaInRegion'
--
-- * 'prRegion'
--
-- * 'prInventoryMatchRate'
--
-- * 'prPixelMatchResponses'
--
-- * 'prTimestamp'
--
-- * 'prPixelMatchRequests'
--
-- * 'prOutOfQuota'
performanceReport
    :: PerformanceReport
performanceReport =
    PerformanceReport
    { _prFilteredBidRate = Nothing
    , _prKind = "adexchangebuyer#performanceReport"
    , _prLatency95thPercentile = Nothing
    , _prCookieMatcherStatusRate = Nothing
    , _prHostedMatchStatusRate = Nothing
    , _prUnsuccessfulRequestRate = Nothing
    , _prBidRequestRate = Nothing
    , _prQuotaThrottledLimit = Nothing
    , _prQuotaConfiguredLimit = Nothing
    , _prSuccessfulRequestRate = Nothing
    , _prLatency85thPercentile = Nothing
    , _prCalloutStatusRate = Nothing
    , _prLatency50thPercentile = Nothing
    , _prBidRate = Nothing
    , _prCreativeStatusRate = Nothing
    , _prNoQuotaInRegion = Nothing
    , _prRegion = Nothing
    , _prInventoryMatchRate = Nothing
    , _prPixelMatchResponses = Nothing
    , _prTimestamp = Nothing
    , _prPixelMatchRequests = Nothing
    , _prOutOfQuota = Nothing
    }

-- | The number of bid responses that were filtered due to a policy violation
-- or other errors.
prFilteredBidRate :: Lens' PerformanceReport (Maybe Double)
prFilteredBidRate
  = lens _prFilteredBidRate
      (\ s a -> s{_prFilteredBidRate = a})

-- | Resource type.
prKind :: Lens' PerformanceReport Text
prKind = lens _prKind (\ s a -> s{_prKind = a})

-- | The 95th percentile round trip latency(ms) as perceived from Google
-- servers for the duration period covered by the report.
prLatency95thPercentile :: Lens' PerformanceReport (Maybe Double)
prLatency95thPercentile
  = lens _prLatency95thPercentile
      (\ s a -> s{_prLatency95thPercentile = a})

-- | Average QPS for cookie matcher operations.
prCookieMatcherStatusRate :: Lens' PerformanceReport [Either Text Int64]
prCookieMatcherStatusRate
  = lens _prCookieMatcherStatusRate
      (\ s a -> s{_prCookieMatcherStatusRate = a})
      . _Default
      . _Coerce

-- | Average QPS for hosted match operations.
prHostedMatchStatusRate :: Lens' PerformanceReport [Either Text Int64]
prHostedMatchStatusRate
  = lens _prHostedMatchStatusRate
      (\ s a -> s{_prHostedMatchStatusRate = a})
      . _Default
      . _Coerce

-- | The number of bid responses that were unsuccessful due to timeouts,
-- incorrect formatting, etc.
prUnsuccessfulRequestRate :: Lens' PerformanceReport (Maybe Double)
prUnsuccessfulRequestRate
  = lens _prUnsuccessfulRequestRate
      (\ s a -> s{_prUnsuccessfulRequestRate = a})

-- | The number of bid requests sent to your bidder.
prBidRequestRate :: Lens' PerformanceReport (Maybe Double)
prBidRequestRate
  = lens _prBidRequestRate
      (\ s a -> s{_prBidRequestRate = a})

-- | The throttled quota limits for this account.
prQuotaThrottledLimit :: Lens' PerformanceReport (Maybe Double)
prQuotaThrottledLimit
  = lens _prQuotaThrottledLimit
      (\ s a -> s{_prQuotaThrottledLimit = a})

-- | The configured quota limits for this account.
prQuotaConfiguredLimit :: Lens' PerformanceReport (Maybe Double)
prQuotaConfiguredLimit
  = lens _prQuotaConfiguredLimit
      (\ s a -> s{_prQuotaConfiguredLimit = a})

-- | The number of properly formed bid responses received by our servers
-- within the deadline.
prSuccessfulRequestRate :: Lens' PerformanceReport (Maybe Double)
prSuccessfulRequestRate
  = lens _prSuccessfulRequestRate
      (\ s a -> s{_prSuccessfulRequestRate = a})

-- | The 85th percentile round trip latency(ms) as perceived from Google
-- servers for the duration period covered by the report.
prLatency85thPercentile :: Lens' PerformanceReport (Maybe Double)
prLatency85thPercentile
  = lens _prLatency85thPercentile
      (\ s a -> s{_prLatency85thPercentile = a})

-- | Rate of various prefiltering statuses per match. Please refer to the
-- callout-status-codes.txt file for different statuses.
prCalloutStatusRate :: Lens' PerformanceReport [Either Text Int64]
prCalloutStatusRate
  = lens _prCalloutStatusRate
      (\ s a -> s{_prCalloutStatusRate = a})
      . _Default
      . _Coerce

-- | The 50th percentile round trip latency(ms) as perceived from Google
-- servers for the duration period covered by the report.
prLatency50thPercentile :: Lens' PerformanceReport (Maybe Double)
prLatency50thPercentile
  = lens _prLatency50thPercentile
      (\ s a -> s{_prLatency50thPercentile = a})

-- | The number of bid responses with an ad.
prBidRate :: Lens' PerformanceReport (Maybe Double)
prBidRate
  = lens _prBidRate (\ s a -> s{_prBidRate = a})

-- | Rate of ads with a given status. Please refer to the
-- creative-status-codes.txt file for different statuses.
prCreativeStatusRate :: Lens' PerformanceReport [Either Text Int64]
prCreativeStatusRate
  = lens _prCreativeStatusRate
      (\ s a -> s{_prCreativeStatusRate = a})
      . _Default
      . _Coerce

-- | Rate of various quota account statuses per quota check.
prNoQuotaInRegion :: Lens' PerformanceReport (Maybe Double)
prNoQuotaInRegion
  = lens _prNoQuotaInRegion
      (\ s a -> s{_prNoQuotaInRegion = a})

-- | The trading location of this data.
prRegion :: Lens' PerformanceReport (Maybe Text)
prRegion = lens _prRegion (\ s a -> s{_prRegion = a})

-- | The number of potential queries based on your pretargeting settings.
prInventoryMatchRate :: Lens' PerformanceReport (Maybe Double)
prInventoryMatchRate
  = lens _prInventoryMatchRate
      (\ s a -> s{_prInventoryMatchRate = a})

-- | Average QPS for pixel match responses from clients.
prPixelMatchResponses :: Lens' PerformanceReport (Maybe Double)
prPixelMatchResponses
  = lens _prPixelMatchResponses
      (\ s a -> s{_prPixelMatchResponses = a})

-- | The unix timestamp of the starting time of this performance data.
prTimestamp :: Lens' PerformanceReport (Maybe Int64)
prTimestamp
  = lens _prTimestamp (\ s a -> s{_prTimestamp = a})

-- | Average QPS for pixel match requests from clients.
prPixelMatchRequests :: Lens' PerformanceReport (Maybe Double)
prPixelMatchRequests
  = lens _prPixelMatchRequests
      (\ s a -> s{_prPixelMatchRequests = a})

-- | Rate of various quota account statuses per quota check.
prOutOfQuota :: Lens' PerformanceReport (Maybe Double)
prOutOfQuota
  = lens _prOutOfQuota (\ s a -> s{_prOutOfQuota = a})

-- | The configuration data for an Ad Exchange performance report list.
-- https:\/\/sites.google.com\/a\/google.com\/adx-integration\/Home\/engineering\/binary-releases\/rtb-api-release
-- https:\/\/cs.corp.google.com\/#piper\/\/\/depot\/google3\/contentads\/adx\/tools\/rtb_api\/adxrtb.py
--
-- /See:/ 'performanceReportList' smart constructor.
data PerformanceReportList = PerformanceReportList
    { _prlKind              :: !Text
    , _prlPerformanceReport :: !(Maybe [Maybe PerformanceReport])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PerformanceReportList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prlKind'
--
-- * 'prlPerformanceReport'
performanceReportList
    :: PerformanceReportList
performanceReportList =
    PerformanceReportList
    { _prlKind = "adexchangebuyer#performanceReportList"
    , _prlPerformanceReport = Nothing
    }

-- | Resource type.
prlKind :: Lens' PerformanceReportList Text
prlKind = lens _prlKind (\ s a -> s{_prlKind = a})

-- | A list of performance reports relevant for the account.
prlPerformanceReport :: Lens' PerformanceReportList [Maybe PerformanceReport]
prlPerformanceReport
  = lens _prlPerformanceReport
      (\ s a -> s{_prlPerformanceReport = a})
      . _Default
      . _Coerce

--
-- /See:/ 'pretargetingConfig' smart constructor.
data PretargetingConfig = PretargetingConfig
    { _pcPlatforms                     :: !(Maybe [Text])
    , _pcMobileCarriers                :: !(Maybe [Int64])
    , _pcVendorTypes                   :: !(Maybe [Int64])
    , _pcExcludedGeoCriteriaIds        :: !(Maybe [Int64])
    , _pcSupportedCreativeAttributes   :: !(Maybe [Int64])
    , _pcUserLists                     :: !(Maybe [Int64])
    , _pcKind                          :: !Text
    , _pcExcludedPlacements            :: !(Maybe [PretargetingConfigItemExcludedPlacements])
    , _pcMobileDevices                 :: !(Maybe [Int64])
    , _pcLanguages                     :: !(Maybe [Text])
    , _pcVerticals                     :: !(Maybe [Int64])
    , _pcConfigId                      :: !(Maybe Int64)
    , _pcPlacements                    :: !(Maybe [PretargetingConfigItemPlacements])
    , _pcExcludedUserLists             :: !(Maybe [Int64])
    , _pcConfigName                    :: !(Maybe Text)
    , _pcGeoCriteriaIds                :: !(Maybe [Int64])
    , _pcDimensions                    :: !(Maybe [PretargetingConfigItemDimensions])
    , _pcExcludedVerticals             :: !(Maybe [Int64])
    , _pcCreativeType                  :: !(Maybe [Text])
    , _pcIsActive                      :: !(Maybe Bool)
    , _pcExcludedContentLabels         :: !(Maybe [Int64])
    , _pcBillingId                     :: !(Maybe Int64)
    , _pcMobileOperatingSystemVersions :: !(Maybe [Int64])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PretargetingConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcPlatforms'
--
-- * 'pcMobileCarriers'
--
-- * 'pcVendorTypes'
--
-- * 'pcExcludedGeoCriteriaIds'
--
-- * 'pcSupportedCreativeAttributes'
--
-- * 'pcUserLists'
--
-- * 'pcKind'
--
-- * 'pcExcludedPlacements'
--
-- * 'pcMobileDevices'
--
-- * 'pcLanguages'
--
-- * 'pcVerticals'
--
-- * 'pcConfigId'
--
-- * 'pcPlacements'
--
-- * 'pcExcludedUserLists'
--
-- * 'pcConfigName'
--
-- * 'pcGeoCriteriaIds'
--
-- * 'pcDimensions'
--
-- * 'pcExcludedVerticals'
--
-- * 'pcCreativeType'
--
-- * 'pcIsActive'
--
-- * 'pcExcludedContentLabels'
--
-- * 'pcBillingId'
--
-- * 'pcMobileOperatingSystemVersions'
pretargetingConfig
    :: PretargetingConfig
pretargetingConfig =
    PretargetingConfig
    { _pcPlatforms = Nothing
    , _pcMobileCarriers = Nothing
    , _pcVendorTypes = Nothing
    , _pcExcludedGeoCriteriaIds = Nothing
    , _pcSupportedCreativeAttributes = Nothing
    , _pcUserLists = Nothing
    , _pcKind = "adexchangebuyer#pretargetingConfig"
    , _pcExcludedPlacements = Nothing
    , _pcMobileDevices = Nothing
    , _pcLanguages = Nothing
    , _pcVerticals = Nothing
    , _pcConfigId = Nothing
    , _pcPlacements = Nothing
    , _pcExcludedUserLists = Nothing
    , _pcConfigName = Nothing
    , _pcGeoCriteriaIds = Nothing
    , _pcDimensions = Nothing
    , _pcExcludedVerticals = Nothing
    , _pcCreativeType = Nothing
    , _pcIsActive = Nothing
    , _pcExcludedContentLabels = Nothing
    , _pcBillingId = Nothing
    , _pcMobileOperatingSystemVersions = Nothing
    }

-- | Requests matching any of these platforms will match. Possible values are
-- PRETARGETING_PLATFORM_MOBILE, PRETARGETING_PLATFORM_DESKTOP, and
-- PRETARGETING_PLATFORM_TABLET.
pcPlatforms :: Lens' PretargetingConfig [Text]
pcPlatforms
  = lens _pcPlatforms (\ s a -> s{_pcPlatforms = a}) .
      _Default
      . _Coerce

-- | Requests containing any of these mobile carrier ids will match. Values
-- are from mobile-carriers.csv in the downloadable files section.
pcMobileCarriers :: Lens' PretargetingConfig [Int64]
pcMobileCarriers
  = lens _pcMobileCarriers
      (\ s a -> s{_pcMobileCarriers = a})
      . _Default
      . _Coerce

-- | Requests that allow any of these vendor ids will match. Values are from
-- vendors.txt in the downloadable files section.
pcVendorTypes :: Lens' PretargetingConfig [Int64]
pcVendorTypes
  = lens _pcVendorTypes
      (\ s a -> s{_pcVendorTypes = a})
      . _Default
      . _Coerce

-- | Requests containing any of these geo criteria ids will not match.
pcExcludedGeoCriteriaIds :: Lens' PretargetingConfig [Int64]
pcExcludedGeoCriteriaIds
  = lens _pcExcludedGeoCriteriaIds
      (\ s a -> s{_pcExcludedGeoCriteriaIds = a})
      . _Default
      . _Coerce

-- | Creative attributes should be declared here if all creatives
-- corresponding to this pretargeting configuration have that creative
-- attribute. Values are from pretargetable-creative-attributes.txt in the
-- downloadable files section.
pcSupportedCreativeAttributes :: Lens' PretargetingConfig [Int64]
pcSupportedCreativeAttributes
  = lens _pcSupportedCreativeAttributes
      (\ s a -> s{_pcSupportedCreativeAttributes = a})
      . _Default
      . _Coerce

-- | Requests containing any of these user list ids will match.
pcUserLists :: Lens' PretargetingConfig [Int64]
pcUserLists
  = lens _pcUserLists (\ s a -> s{_pcUserLists = a}) .
      _Default
      . _Coerce

-- | The kind of the resource, i.e. \"adexchangebuyer#pretargetingConfig\".
pcKind :: Lens' PretargetingConfig Text
pcKind = lens _pcKind (\ s a -> s{_pcKind = a})

-- | Requests containing any of these placements will not match.
pcExcludedPlacements :: Lens' PretargetingConfig [PretargetingConfigItemExcludedPlacements]
pcExcludedPlacements
  = lens _pcExcludedPlacements
      (\ s a -> s{_pcExcludedPlacements = a})
      . _Default
      . _Coerce

-- | Requests containing any of these mobile device ids will match. Values
-- are from mobile-devices.csv in the downloadable files section.
pcMobileDevices :: Lens' PretargetingConfig [Int64]
pcMobileDevices
  = lens _pcMobileDevices
      (\ s a -> s{_pcMobileDevices = a})
      . _Default
      . _Coerce

-- | Request containing any of these language codes will match.
pcLanguages :: Lens' PretargetingConfig [Text]
pcLanguages
  = lens _pcLanguages (\ s a -> s{_pcLanguages = a}) .
      _Default
      . _Coerce

-- | Requests containing any of these vertical ids will match.
pcVerticals :: Lens' PretargetingConfig [Int64]
pcVerticals
  = lens _pcVerticals (\ s a -> s{_pcVerticals = a}) .
      _Default
      . _Coerce

-- | The config id; generated automatically. Leave this field blank for
-- insert requests.
pcConfigId :: Lens' PretargetingConfig (Maybe Int64)
pcConfigId
  = lens _pcConfigId (\ s a -> s{_pcConfigId = a})

-- | Requests containing any of these placements will match.
pcPlacements :: Lens' PretargetingConfig [PretargetingConfigItemPlacements]
pcPlacements
  = lens _pcPlacements (\ s a -> s{_pcPlacements = a})
      . _Default
      . _Coerce

-- | Requests containing any of these users list ids will not match.
pcExcludedUserLists :: Lens' PretargetingConfig [Int64]
pcExcludedUserLists
  = lens _pcExcludedUserLists
      (\ s a -> s{_pcExcludedUserLists = a})
      . _Default
      . _Coerce

-- | The name of the config. Must be unique. Required for all requests.
pcConfigName :: Lens' PretargetingConfig (Maybe Text)
pcConfigName
  = lens _pcConfigName (\ s a -> s{_pcConfigName = a})

-- | Requests containing any of these geo criteria ids will match.
pcGeoCriteriaIds :: Lens' PretargetingConfig [Int64]
pcGeoCriteriaIds
  = lens _pcGeoCriteriaIds
      (\ s a -> s{_pcGeoCriteriaIds = a})
      . _Default
      . _Coerce

-- | Requests which allow one of these (width, height) pairs will match. All
-- pairs must be supported ad dimensions.
pcDimensions :: Lens' PretargetingConfig [PretargetingConfigItemDimensions]
pcDimensions
  = lens _pcDimensions (\ s a -> s{_pcDimensions = a})
      . _Default
      . _Coerce

-- | Requests containing any of these vertical ids will not match. Values are
-- from the publisher-verticals.txt file in the downloadable files section.
pcExcludedVerticals :: Lens' PretargetingConfig [Int64]
pcExcludedVerticals
  = lens _pcExcludedVerticals
      (\ s a -> s{_pcExcludedVerticals = a})
      . _Default
      . _Coerce

-- | List must contain exactly one of PRETARGETING_CREATIVE_TYPE_HTML or
-- PRETARGETING_CREATIVE_TYPE_VIDEO.
pcCreativeType :: Lens' PretargetingConfig [Text]
pcCreativeType
  = lens _pcCreativeType
      (\ s a -> s{_pcCreativeType = a})
      . _Default
      . _Coerce

-- | Whether this config is active. Required for all requests.
pcIsActive :: Lens' PretargetingConfig (Maybe Bool)
pcIsActive
  = lens _pcIsActive (\ s a -> s{_pcIsActive = a})

-- | Requests with any of these content labels will not match. Values are
-- from content-labels.txt in the downloadable files section.
pcExcludedContentLabels :: Lens' PretargetingConfig [Int64]
pcExcludedContentLabels
  = lens _pcExcludedContentLabels
      (\ s a -> s{_pcExcludedContentLabels = a})
      . _Default
      . _Coerce

-- | The id for billing purposes, provided for reference. Leave this field
-- blank for insert requests; the id will be generated automatically.
pcBillingId :: Lens' PretargetingConfig (Maybe Int64)
pcBillingId
  = lens _pcBillingId (\ s a -> s{_pcBillingId = a})

-- | Requests containing any of these mobile operating system version ids
-- will match. Values are from mobile-os.csv in the downloadable files
-- section.
pcMobileOperatingSystemVersions :: Lens' PretargetingConfig [Int64]
pcMobileOperatingSystemVersions
  = lens _pcMobileOperatingSystemVersions
      (\ s a -> s{_pcMobileOperatingSystemVersions = a})
      . _Default
      . _Coerce

--
-- /See:/ 'pretargetingConfigItemDimensions' smart constructor.
data PretargetingConfigItemDimensions = PretargetingConfigItemDimensions
    { _pcidHeight :: !(Maybe Int64)
    , _pcidWidth  :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PretargetingConfigItemDimensions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcidHeight'
--
-- * 'pcidWidth'
pretargetingConfigItemDimensions
    :: PretargetingConfigItemDimensions
pretargetingConfigItemDimensions =
    PretargetingConfigItemDimensions
    { _pcidHeight = Nothing
    , _pcidWidth = Nothing
    }

-- | Height in pixels.
pcidHeight :: Lens' PretargetingConfigItemDimensions (Maybe Int64)
pcidHeight
  = lens _pcidHeight (\ s a -> s{_pcidHeight = a})

-- | Width in pixels.
pcidWidth :: Lens' PretargetingConfigItemDimensions (Maybe Int64)
pcidWidth
  = lens _pcidWidth (\ s a -> s{_pcidWidth = a})

--
-- /See:/ 'pretargetingConfigItemExcludedPlacements' smart constructor.
data PretargetingConfigItemExcludedPlacements = PretargetingConfigItemExcludedPlacements
    { _pciepToken :: !(Maybe Text)
    , _pciepType  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PretargetingConfigItemExcludedPlacements' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pciepToken'
--
-- * 'pciepType'
pretargetingConfigItemExcludedPlacements
    :: PretargetingConfigItemExcludedPlacements
pretargetingConfigItemExcludedPlacements =
    PretargetingConfigItemExcludedPlacements
    { _pciepToken = Nothing
    , _pciepType = Nothing
    }

-- | The value of the placement. Interpretation depends on the placement
-- type, e.g. URL for a site placement, channel name for a channel
-- placement, app id for a mobile app placement.
pciepToken :: Lens' PretargetingConfigItemExcludedPlacements (Maybe Text)
pciepToken
  = lens _pciepToken (\ s a -> s{_pciepToken = a})

-- | The type of the placement.
pciepType :: Lens' PretargetingConfigItemExcludedPlacements (Maybe Text)
pciepType
  = lens _pciepType (\ s a -> s{_pciepType = a})

--
-- /See:/ 'pretargetingConfigItemPlacements' smart constructor.
data PretargetingConfigItemPlacements = PretargetingConfigItemPlacements
    { _pcipToken :: !(Maybe Text)
    , _pcipType  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PretargetingConfigItemPlacements' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcipToken'
--
-- * 'pcipType'
pretargetingConfigItemPlacements
    :: PretargetingConfigItemPlacements
pretargetingConfigItemPlacements =
    PretargetingConfigItemPlacements
    { _pcipToken = Nothing
    , _pcipType = Nothing
    }

-- | The value of the placement. Interpretation depends on the placement
-- type, e.g. URL for a site placement, channel name for a channel
-- placement, app id for a mobile app placement.
pcipToken :: Lens' PretargetingConfigItemPlacements (Maybe Text)
pcipToken
  = lens _pcipToken (\ s a -> s{_pcipToken = a})

-- | The type of the placement.
pcipType :: Lens' PretargetingConfigItemPlacements (Maybe Text)
pcipType = lens _pcipType (\ s a -> s{_pcipType = a})

--
-- /See:/ 'pretargetingConfigList' smart constructor.
data PretargetingConfigList = PretargetingConfigList
    { _pclKind  :: !Text
    , _pclItems :: !(Maybe [Maybe PretargetingConfig])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PretargetingConfigList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pclKind'
--
-- * 'pclItems'
pretargetingConfigList
    :: PretargetingConfigList
pretargetingConfigList =
    PretargetingConfigList
    { _pclKind = "adexchangebuyer#pretargetingConfigList"
    , _pclItems = Nothing
    }

-- | Resource type.
pclKind :: Lens' PretargetingConfigList Text
pclKind = lens _pclKind (\ s a -> s{_pclKind = a})

-- | A list of pretargeting configs
pclItems :: Lens' PretargetingConfigList [Maybe PretargetingConfig]
pclItems
  = lens _pclItems (\ s a -> s{_pclItems = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'price' smart constructor.
data Price = Price
    { _pCurrencyCode :: !(Maybe Text)
    , _pAmountMicros :: !(Maybe Double)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Price' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pCurrencyCode'
--
-- * 'pAmountMicros'
price
    :: Price
price =
    Price
    { _pCurrencyCode = Nothing
    , _pAmountMicros = Nothing
    }

-- | The currency code for the price.
pCurrencyCode :: Lens' Price (Maybe Text)
pCurrencyCode
  = lens _pCurrencyCode
      (\ s a -> s{_pCurrencyCode = a})

-- | The CPM value in micros.
pAmountMicros :: Lens' Price (Maybe Double)
pAmountMicros
  = lens _pAmountMicros
      (\ s a -> s{_pAmountMicros = a})

-- | Used to specify pricing rules for buyers\/advertisers. Each
-- PricePerBuyer in an offer can become [0,1] deals. To check if there is a
-- PricePerBuyer for a particular buyer or buyer\/advertiser pair, we look
-- for the most specific matching rule - we first look for a rule matching
-- the buyer and advertiser, next a rule with the buyer but an empty
-- advertiser list, and otherwise look for a matching rule where no buyer
-- is set.
--
-- /See:/ 'pricePerBuyer' smart constructor.
data PricePerBuyer = PricePerBuyer
    { _ppbPrice :: !(Maybe (Maybe Price))
    , _ppbBuyer :: !(Maybe (Maybe Buyer))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PricePerBuyer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppbPrice'
--
-- * 'ppbBuyer'
pricePerBuyer
    :: PricePerBuyer
pricePerBuyer =
    PricePerBuyer
    { _ppbPrice = Nothing
    , _ppbBuyer = Nothing
    }

-- | The specified price
ppbPrice :: Lens' PricePerBuyer (Maybe (Maybe Price))
ppbPrice = lens _ppbPrice (\ s a -> s{_ppbPrice = a})

-- | The buyer who will pay this price. If unset, all buyers can pay this
-- price (if the advertisers match, and there\'s no more specific rule
-- matching the buyer).
ppbBuyer :: Lens' PricePerBuyer (Maybe (Maybe Buyer))
ppbBuyer = lens _ppbBuyer (\ s a -> s{_ppbBuyer = a})

--
-- /See:/ 'privateData' smart constructor.
data PrivateData = PrivateData
    { _pdReferencePayload :: !(Maybe Word8)
    , _pdReferenceId      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PrivateData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdReferencePayload'
--
-- * 'pdReferenceId'
privateData
    :: PrivateData
privateData =
    PrivateData
    { _pdReferencePayload = Nothing
    , _pdReferenceId = Nothing
    }

pdReferencePayload :: Lens' PrivateData (Maybe Word8)
pdReferencePayload
  = lens _pdReferencePayload
      (\ s a -> s{_pdReferencePayload = a})

pdReferenceId :: Lens' PrivateData (Maybe Text)
pdReferenceId
  = lens _pdReferenceId
      (\ s a -> s{_pdReferenceId = a})

--
-- /See:/ 'ruleKeyValuePair' smart constructor.
data RuleKeyValuePair = RuleKeyValuePair
    { _rkvpKeyName :: !(Maybe Text)
    , _rkvpValue   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RuleKeyValuePair' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rkvpKeyName'
--
-- * 'rkvpValue'
ruleKeyValuePair
    :: RuleKeyValuePair
ruleKeyValuePair =
    RuleKeyValuePair
    { _rkvpKeyName = Nothing
    , _rkvpValue = Nothing
    }

rkvpKeyName :: Lens' RuleKeyValuePair (Maybe Text)
rkvpKeyName
  = lens _rkvpKeyName (\ s a -> s{_rkvpKeyName = a})

rkvpValue :: Lens' RuleKeyValuePair (Maybe Text)
rkvpValue
  = lens _rkvpValue (\ s a -> s{_rkvpValue = a})

--
-- /See:/ 'seller' smart constructor.
data Seller = Seller
    { _sAccountId    :: !(Maybe Text)
    , _sSubAccountId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Seller' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sAccountId'
--
-- * 'sSubAccountId'
seller
    :: Seller
seller =
    Seller
    { _sAccountId = Nothing
    , _sSubAccountId = Nothing
    }

-- | The unique id for the seller. The seller fills in this field. The seller
-- account id is then available to buyer in the offer.
sAccountId :: Lens' Seller (Maybe Text)
sAccountId
  = lens _sAccountId (\ s a -> s{_sAccountId = a})

-- | Optional sub-account id for the seller.
sSubAccountId :: Lens' Seller (Maybe Text)
sSubAccountId
  = lens _sSubAccountId
      (\ s a -> s{_sSubAccountId = a})

--
-- /See:/ 'sharedTargeting' smart constructor.
data SharedTargeting = SharedTargeting
    { _stKey        :: !(Maybe Text)
    , _stExclusions :: !(Maybe [Maybe TargetingValue])
    , _stInclusions :: !(Maybe [Maybe TargetingValue])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SharedTargeting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stKey'
--
-- * 'stExclusions'
--
-- * 'stInclusions'
sharedTargeting
    :: SharedTargeting
sharedTargeting =
    SharedTargeting
    { _stKey = Nothing
    , _stExclusions = Nothing
    , _stInclusions = Nothing
    }

-- | The key representing the shared targeting criterion.
stKey :: Lens' SharedTargeting (Maybe Text)
stKey = lens _stKey (\ s a -> s{_stKey = a})

-- | The list of values to exclude from targeting.
stExclusions :: Lens' SharedTargeting [Maybe TargetingValue]
stExclusions
  = lens _stExclusions (\ s a -> s{_stExclusions = a})
      . _Default
      . _Coerce

-- | The list of value to include as part of the targeting.
stInclusions :: Lens' SharedTargeting [Maybe TargetingValue]
stInclusions
  = lens _stInclusions (\ s a -> s{_stInclusions = a})
      . _Default
      . _Coerce

--
-- /See:/ 'statsDto' smart constructor.
data StatsDto = StatsDto
    { _sdBids        :: !(Maybe Int64)
    , _sdSpend       :: !(Maybe (Maybe MoneyDto))
    , _sdImpressions :: !(Maybe Int64)
    , _sdGoodBids    :: !(Maybe Int64)
    , _sdRevenue     :: !(Maybe (Maybe MoneyDto))
    , _sdRequests    :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatsDto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdBids'
--
-- * 'sdSpend'
--
-- * 'sdImpressions'
--
-- * 'sdGoodBids'
--
-- * 'sdRevenue'
--
-- * 'sdRequests'
statsDto
    :: StatsDto
statsDto =
    StatsDto
    { _sdBids = Nothing
    , _sdSpend = Nothing
    , _sdImpressions = Nothing
    , _sdGoodBids = Nothing
    , _sdRevenue = Nothing
    , _sdRequests = Nothing
    }

sdBids :: Lens' StatsDto (Maybe Int64)
sdBids = lens _sdBids (\ s a -> s{_sdBids = a})

sdSpend :: Lens' StatsDto (Maybe (Maybe MoneyDto))
sdSpend = lens _sdSpend (\ s a -> s{_sdSpend = a})

sdImpressions :: Lens' StatsDto (Maybe Int64)
sdImpressions
  = lens _sdImpressions
      (\ s a -> s{_sdImpressions = a})

sdGoodBids :: Lens' StatsDto (Maybe Int64)
sdGoodBids
  = lens _sdGoodBids (\ s a -> s{_sdGoodBids = a})

sdRevenue :: Lens' StatsDto (Maybe (Maybe MoneyDto))
sdRevenue
  = lens _sdRevenue (\ s a -> s{_sdRevenue = a})

sdRequests :: Lens' StatsDto (Maybe Int64)
sdRequests
  = lens _sdRequests (\ s a -> s{_sdRequests = a})

--
-- /See:/ 'targetingValue' smart constructor.
data TargetingValue = TargetingValue
    { _tvCreativeSizeValue     :: !(Maybe (Maybe TargetingValueCreativeSize))
    , _tvStringValue           :: !(Maybe Text)
    , _tvLongValue             :: !(Maybe Int64)
    , _tvDayPartTargetingValue :: !(Maybe (Maybe TargetingValueDayPartTargeting))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetingValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvCreativeSizeValue'
--
-- * 'tvStringValue'
--
-- * 'tvLongValue'
--
-- * 'tvDayPartTargetingValue'
targetingValue
    :: TargetingValue
targetingValue =
    TargetingValue
    { _tvCreativeSizeValue = Nothing
    , _tvStringValue = Nothing
    , _tvLongValue = Nothing
    , _tvDayPartTargetingValue = Nothing
    }

-- | The creative size value to exclude\/include.
tvCreativeSizeValue :: Lens' TargetingValue (Maybe (Maybe TargetingValueCreativeSize))
tvCreativeSizeValue
  = lens _tvCreativeSizeValue
      (\ s a -> s{_tvCreativeSizeValue = a})

-- | The string value to exclude\/include.
tvStringValue :: Lens' TargetingValue (Maybe Text)
tvStringValue
  = lens _tvStringValue
      (\ s a -> s{_tvStringValue = a})

-- | The long value to exclude\/include.
tvLongValue :: Lens' TargetingValue (Maybe Int64)
tvLongValue
  = lens _tvLongValue (\ s a -> s{_tvLongValue = a})

-- | The daypart targeting to include \/ exclude. Filled in when the key is
-- GOOG_DAYPART_TARGETING.
tvDayPartTargetingValue :: Lens' TargetingValue (Maybe (Maybe TargetingValueDayPartTargeting))
tvDayPartTargetingValue
  = lens _tvDayPartTargetingValue
      (\ s a -> s{_tvDayPartTargetingValue = a})

--
-- /See:/ 'targetingValueCreativeSize' smart constructor.
data TargetingValueCreativeSize = TargetingValueCreativeSize
    { _tvcsSize             :: !(Maybe (Maybe TargetingValueSize))
    , _tvcsCompanionSizes   :: !(Maybe [Maybe TargetingValueSize])
    , _tvcsCreativeSizeType :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetingValueCreativeSize' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvcsSize'
--
-- * 'tvcsCompanionSizes'
--
-- * 'tvcsCreativeSizeType'
targetingValueCreativeSize
    :: TargetingValueCreativeSize
targetingValueCreativeSize =
    TargetingValueCreativeSize
    { _tvcsSize = Nothing
    , _tvcsCompanionSizes = Nothing
    , _tvcsCreativeSizeType = Nothing
    }

-- | For regular creative size type, specifies the size of the creative.
tvcsSize :: Lens' TargetingValueCreativeSize (Maybe (Maybe TargetingValueSize))
tvcsSize = lens _tvcsSize (\ s a -> s{_tvcsSize = a})

-- | For video size type, the list of companion sizes.
tvcsCompanionSizes :: Lens' TargetingValueCreativeSize [Maybe TargetingValueSize]
tvcsCompanionSizes
  = lens _tvcsCompanionSizes
      (\ s a -> s{_tvcsCompanionSizes = a})
      . _Default
      . _Coerce

-- | The Creative size type.
tvcsCreativeSizeType :: Lens' TargetingValueCreativeSize (Maybe Text)
tvcsCreativeSizeType
  = lens _tvcsCreativeSizeType
      (\ s a -> s{_tvcsCreativeSizeType = a})

--
-- /See:/ 'targetingValueDayPartTargeting' smart constructor.
data TargetingValueDayPartTargeting = TargetingValueDayPartTargeting
    { _tvdptTimeZoneType :: !(Maybe Text)
    , _tvdptDayParts     :: !(Maybe [Maybe TargetingValueDayPartTargetingDayPart])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetingValueDayPartTargeting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvdptTimeZoneType'
--
-- * 'tvdptDayParts'
targetingValueDayPartTargeting
    :: TargetingValueDayPartTargeting
targetingValueDayPartTargeting =
    TargetingValueDayPartTargeting
    { _tvdptTimeZoneType = Nothing
    , _tvdptDayParts = Nothing
    }

tvdptTimeZoneType :: Lens' TargetingValueDayPartTargeting (Maybe Text)
tvdptTimeZoneType
  = lens _tvdptTimeZoneType
      (\ s a -> s{_tvdptTimeZoneType = a})

tvdptDayParts :: Lens' TargetingValueDayPartTargeting [Maybe TargetingValueDayPartTargetingDayPart]
tvdptDayParts
  = lens _tvdptDayParts
      (\ s a -> s{_tvdptDayParts = a})
      . _Default
      . _Coerce

--
-- /See:/ 'targetingValueDayPartTargetingDayPart' smart constructor.
data TargetingValueDayPartTargetingDayPart = TargetingValueDayPartTargetingDayPart
    { _tvdptdpEndHour     :: !(Maybe Int32)
    , _tvdptdpStartHour   :: !(Maybe Int32)
    , _tvdptdpStartMinute :: !(Maybe Int32)
    , _tvdptdpDayOfWeek   :: !(Maybe Text)
    , _tvdptdpEndMinute   :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetingValueDayPartTargetingDayPart' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvdptdpEndHour'
--
-- * 'tvdptdpStartHour'
--
-- * 'tvdptdpStartMinute'
--
-- * 'tvdptdpDayOfWeek'
--
-- * 'tvdptdpEndMinute'
targetingValueDayPartTargetingDayPart
    :: TargetingValueDayPartTargetingDayPart
targetingValueDayPartTargetingDayPart =
    TargetingValueDayPartTargetingDayPart
    { _tvdptdpEndHour = Nothing
    , _tvdptdpStartHour = Nothing
    , _tvdptdpStartMinute = Nothing
    , _tvdptdpDayOfWeek = Nothing
    , _tvdptdpEndMinute = Nothing
    }

tvdptdpEndHour :: Lens' TargetingValueDayPartTargetingDayPart (Maybe Int32)
tvdptdpEndHour
  = lens _tvdptdpEndHour
      (\ s a -> s{_tvdptdpEndHour = a})

tvdptdpStartHour :: Lens' TargetingValueDayPartTargetingDayPart (Maybe Int32)
tvdptdpStartHour
  = lens _tvdptdpStartHour
      (\ s a -> s{_tvdptdpStartHour = a})

tvdptdpStartMinute :: Lens' TargetingValueDayPartTargetingDayPart (Maybe Int32)
tvdptdpStartMinute
  = lens _tvdptdpStartMinute
      (\ s a -> s{_tvdptdpStartMinute = a})

tvdptdpDayOfWeek :: Lens' TargetingValueDayPartTargetingDayPart (Maybe Text)
tvdptdpDayOfWeek
  = lens _tvdptdpDayOfWeek
      (\ s a -> s{_tvdptdpDayOfWeek = a})

tvdptdpEndMinute :: Lens' TargetingValueDayPartTargetingDayPart (Maybe Int32)
tvdptdpEndMinute
  = lens _tvdptdpEndMinute
      (\ s a -> s{_tvdptdpEndMinute = a})

--
-- /See:/ 'targetingValueSize' smart constructor.
data TargetingValueSize = TargetingValueSize
    { _tvsHeight :: !(Maybe Int32)
    , _tvsWidth  :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetingValueSize' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvsHeight'
--
-- * 'tvsWidth'
targetingValueSize
    :: TargetingValueSize
targetingValueSize =
    TargetingValueSize
    { _tvsHeight = Nothing
    , _tvsWidth = Nothing
    }

-- | The height of the creative.
tvsHeight :: Lens' TargetingValueSize (Maybe Int32)
tvsHeight
  = lens _tvsHeight (\ s a -> s{_tvsHeight = a})

-- | The width of the creative.
tvsWidth :: Lens' TargetingValueSize (Maybe Int32)
tvsWidth = lens _tvsWidth (\ s a -> s{_tvsWidth = a})

--
-- /See:/ 'termsDto' smart constructor.
data TermsDto = TermsDto
    { _tdFinalizeAutomatically      :: !(Maybe Bool)
    , _tdBuyerBillingType           :: !(Maybe Text)
    , _tdTargetingAllAdSlots        :: !(Maybe Bool)
    , _tdUrls                       :: !(Maybe [Text])
    , _tdEndDate                    :: !(Maybe (Maybe DateTime))
    , _tdCpm                        :: !(Maybe (Maybe MoneyDto))
    , _tdEstimatedSpend             :: !(Maybe (Maybe MoneyDto))
    , _tdAdvertisers                :: !(Maybe [Maybe AdvertiserDto])
    , _tdEstimatedImpressionsPerDay :: !(Maybe Int64)
    , _tdMonetizerType              :: !(Maybe Text)
    , _tdAudienceSegmentDescription :: !(Maybe Text)
    , _tdCreativeReviewPolicy       :: !(Maybe Text)
    , _tdMinimumTrueLooks           :: !(Maybe Int64)
    , _tdStartDate                  :: !(Maybe (Maybe DateTime))
    , _tdCreativeBlockingLevel      :: !(Maybe Text)
    , _tdSemiTransparent            :: !(Maybe Bool)
    , _tdAudienceSegment            :: !(Maybe (Maybe AudienceSegment))
    , _tdDealPremium                :: !(Maybe (Maybe MoneyDto))
    , _tdIsReservation              :: !(Maybe Bool)
    , _tdAdSlots                    :: !(Maybe [Maybe AdSlotDto])
    , _tdTermsAttributes            :: !(Maybe [Text])
    , _tdInventorySegmentTargeting  :: !(Maybe (Maybe InventorySegmentTargeting))
    , _tdDescriptiveName            :: !(Maybe Text)
    , _tdMinimumSpendMicros         :: !(Maybe Int64)
    , _tdTargetByDealId             :: !(Maybe Bool)
    , _tdBillingTerms               :: !(Maybe Text)
    , _tdDescription                :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TermsDto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdFinalizeAutomatically'
--
-- * 'tdBuyerBillingType'
--
-- * 'tdTargetingAllAdSlots'
--
-- * 'tdUrls'
--
-- * 'tdEndDate'
--
-- * 'tdCpm'
--
-- * 'tdEstimatedSpend'
--
-- * 'tdAdvertisers'
--
-- * 'tdEstimatedImpressionsPerDay'
--
-- * 'tdMonetizerType'
--
-- * 'tdAudienceSegmentDescription'
--
-- * 'tdCreativeReviewPolicy'
--
-- * 'tdMinimumTrueLooks'
--
-- * 'tdStartDate'
--
-- * 'tdCreativeBlockingLevel'
--
-- * 'tdSemiTransparent'
--
-- * 'tdAudienceSegment'
--
-- * 'tdDealPremium'
--
-- * 'tdIsReservation'
--
-- * 'tdAdSlots'
--
-- * 'tdTermsAttributes'
--
-- * 'tdInventorySegmentTargeting'
--
-- * 'tdDescriptiveName'
--
-- * 'tdMinimumSpendMicros'
--
-- * 'tdTargetByDealId'
--
-- * 'tdBillingTerms'
--
-- * 'tdDescription'
termsDto
    :: TermsDto
termsDto =
    TermsDto
    { _tdFinalizeAutomatically = Nothing
    , _tdBuyerBillingType = Nothing
    , _tdTargetingAllAdSlots = Nothing
    , _tdUrls = Nothing
    , _tdEndDate = Nothing
    , _tdCpm = Nothing
    , _tdEstimatedSpend = Nothing
    , _tdAdvertisers = Nothing
    , _tdEstimatedImpressionsPerDay = Nothing
    , _tdMonetizerType = Nothing
    , _tdAudienceSegmentDescription = Nothing
    , _tdCreativeReviewPolicy = Nothing
    , _tdMinimumTrueLooks = Nothing
    , _tdStartDate = Nothing
    , _tdCreativeBlockingLevel = Nothing
    , _tdSemiTransparent = Nothing
    , _tdAudienceSegment = Nothing
    , _tdDealPremium = Nothing
    , _tdIsReservation = Nothing
    , _tdAdSlots = Nothing
    , _tdTermsAttributes = Nothing
    , _tdInventorySegmentTargeting = Nothing
    , _tdDescriptiveName = Nothing
    , _tdMinimumSpendMicros = Nothing
    , _tdTargetByDealId = Nothing
    , _tdBillingTerms = Nothing
    , _tdDescription = Nothing
    }

-- | If true, the offer will finalize automatically when accepted.
tdFinalizeAutomatically :: Lens' TermsDto (Maybe Bool)
tdFinalizeAutomatically
  = lens _tdFinalizeAutomatically
      (\ s a -> s{_tdFinalizeAutomatically = a})

-- | The buyer billing type.
tdBuyerBillingType :: Lens' TermsDto (Maybe Text)
tdBuyerBillingType
  = lens _tdBuyerBillingType
      (\ s a -> s{_tdBuyerBillingType = a})

-- | If true, the offer targets all ad slots.
tdTargetingAllAdSlots :: Lens' TermsDto (Maybe Bool)
tdTargetingAllAdSlots
  = lens _tdTargetingAllAdSlots
      (\ s a -> s{_tdTargetingAllAdSlots = a})

-- | The urls applicable to the offer.
tdUrls :: Lens' TermsDto [Text]
tdUrls
  = lens _tdUrls (\ s a -> s{_tdUrls = a}) . _Default .
      _Coerce

-- | The end date for the offer.
tdEndDate :: Lens' TermsDto (Maybe (Maybe DateTime))
tdEndDate
  = lens _tdEndDate (\ s a -> s{_tdEndDate = a})

-- | The cpm terms.
tdCpm :: Lens' TermsDto (Maybe (Maybe MoneyDto))
tdCpm = lens _tdCpm (\ s a -> s{_tdCpm = a})

-- | The estimated spend for the offer.
tdEstimatedSpend :: Lens' TermsDto (Maybe (Maybe MoneyDto))
tdEstimatedSpend
  = lens _tdEstimatedSpend
      (\ s a -> s{_tdEstimatedSpend = a})

-- | A list of advertisers for this offer.
tdAdvertisers :: Lens' TermsDto [Maybe AdvertiserDto]
tdAdvertisers
  = lens _tdAdvertisers
      (\ s a -> s{_tdAdvertisers = a})
      . _Default
      . _Coerce

-- | The estimated daily impressions for the offer.
tdEstimatedImpressionsPerDay :: Lens' TermsDto (Maybe Int64)
tdEstimatedImpressionsPerDay
  = lens _tdEstimatedImpressionsPerDay
      (\ s a -> s{_tdEstimatedImpressionsPerDay = a})

-- | The monetizer type.
tdMonetizerType :: Lens' TermsDto (Maybe Text)
tdMonetizerType
  = lens _tdMonetizerType
      (\ s a -> s{_tdMonetizerType = a})

-- | A description of the audience segment for the offer.
tdAudienceSegmentDescription :: Lens' TermsDto (Maybe Text)
tdAudienceSegmentDescription
  = lens _tdAudienceSegmentDescription
      (\ s a -> s{_tdAudienceSegmentDescription = a})

-- | Whether to use publisher review policy or AdX review policy.
tdCreativeReviewPolicy :: Lens' TermsDto (Maybe Text)
tdCreativeReviewPolicy
  = lens _tdCreativeReviewPolicy
      (\ s a -> s{_tdCreativeReviewPolicy = a})

-- | The minimum true looks for the offer.
tdMinimumTrueLooks :: Lens' TermsDto (Maybe Int64)
tdMinimumTrueLooks
  = lens _tdMinimumTrueLooks
      (\ s a -> s{_tdMinimumTrueLooks = a})

-- | The start date for the offer.
tdStartDate :: Lens' TermsDto (Maybe (Maybe DateTime))
tdStartDate
  = lens _tdStartDate (\ s a -> s{_tdStartDate = a})

-- | Whether to use or ignore publisher blocking rules.
tdCreativeBlockingLevel :: Lens' TermsDto (Maybe Text)
tdCreativeBlockingLevel
  = lens _tdCreativeBlockingLevel
      (\ s a -> s{_tdCreativeBlockingLevel = a})

-- | Whether this offer is semi-transparent.
tdSemiTransparent :: Lens' TermsDto (Maybe Bool)
tdSemiTransparent
  = lens _tdSemiTransparent
      (\ s a -> s{_tdSemiTransparent = a})

-- | The audience segment for the offer.
tdAudienceSegment :: Lens' TermsDto (Maybe (Maybe AudienceSegment))
tdAudienceSegment
  = lens _tdAudienceSegment
      (\ s a -> s{_tdAudienceSegment = a})

-- | The premium terms.
tdDealPremium :: Lens' TermsDto (Maybe (Maybe MoneyDto))
tdDealPremium
  = lens _tdDealPremium
      (\ s a -> s{_tdDealPremium = a})

-- | Whether the offer is a reservation.
tdIsReservation :: Lens' TermsDto (Maybe Bool)
tdIsReservation
  = lens _tdIsReservation
      (\ s a -> s{_tdIsReservation = a})

-- | The particular ad slots targeted by the offer.
tdAdSlots :: Lens' TermsDto [Maybe AdSlotDto]
tdAdSlots
  = lens _tdAdSlots (\ s a -> s{_tdAdSlots = a}) .
      _Default
      . _Coerce

-- | A list of terms attributes.
tdTermsAttributes :: Lens' TermsDto [Text]
tdTermsAttributes
  = lens _tdTermsAttributes
      (\ s a -> s{_tdTermsAttributes = a})
      . _Default
      . _Coerce

-- | The inventory segment targeting for the offer.
tdInventorySegmentTargeting :: Lens' TermsDto (Maybe (Maybe InventorySegmentTargeting))
tdInventorySegmentTargeting
  = lens _tdInventorySegmentTargeting
      (\ s a -> s{_tdInventorySegmentTargeting = a})

-- | A descriptive name for these terms.
tdDescriptiveName :: Lens' TermsDto (Maybe Text)
tdDescriptiveName
  = lens _tdDescriptiveName
      (\ s a -> s{_tdDescriptiveName = a})

-- | The minimum spend for the offer.
tdMinimumSpendMicros :: Lens' TermsDto (Maybe Int64)
tdMinimumSpendMicros
  = lens _tdMinimumSpendMicros
      (\ s a -> s{_tdMinimumSpendMicros = a})

-- | Whether to target by deal id.
tdTargetByDealId :: Lens' TermsDto (Maybe Bool)
tdTargetByDealId
  = lens _tdTargetByDealId
      (\ s a -> s{_tdTargetByDealId = a})

-- | The billing terms.
tdBillingTerms :: Lens' TermsDto (Maybe Text)
tdBillingTerms
  = lens _tdBillingTerms
      (\ s a -> s{_tdBillingTerms = a})

-- | A description for these terms.
tdDescription :: Lens' TermsDto (Maybe Text)
tdDescription
  = lens _tdDescription
      (\ s a -> s{_tdDescription = a})

--
-- /See:/ 'webPropertyDto' smart constructor.
data WebPropertyDto = WebPropertyDto
    { _wpdEnabledForPreferredDeals :: !(Maybe Bool)
    , _wpdSyndicationProduct       :: !(Maybe Text)
    , _wpdName                     :: !(Maybe Text)
    , _wpdPropertyCode             :: !(Maybe Text)
    , _wpdId                       :: !(Maybe Int32)
    , _wpdSiteUrls                 :: !(Maybe [Text])
    , _wpdAllowInterestTargetedAds :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebPropertyDto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wpdEnabledForPreferredDeals'
--
-- * 'wpdSyndicationProduct'
--
-- * 'wpdName'
--
-- * 'wpdPropertyCode'
--
-- * 'wpdId'
--
-- * 'wpdSiteUrls'
--
-- * 'wpdAllowInterestTargetedAds'
webPropertyDto
    :: WebPropertyDto
webPropertyDto =
    WebPropertyDto
    { _wpdEnabledForPreferredDeals = Nothing
    , _wpdSyndicationProduct = Nothing
    , _wpdName = Nothing
    , _wpdPropertyCode = Nothing
    , _wpdId = Nothing
    , _wpdSiteUrls = Nothing
    , _wpdAllowInterestTargetedAds = Nothing
    }

wpdEnabledForPreferredDeals :: Lens' WebPropertyDto (Maybe Bool)
wpdEnabledForPreferredDeals
  = lens _wpdEnabledForPreferredDeals
      (\ s a -> s{_wpdEnabledForPreferredDeals = a})

wpdSyndicationProduct :: Lens' WebPropertyDto (Maybe Text)
wpdSyndicationProduct
  = lens _wpdSyndicationProduct
      (\ s a -> s{_wpdSyndicationProduct = a})

wpdName :: Lens' WebPropertyDto (Maybe Text)
wpdName = lens _wpdName (\ s a -> s{_wpdName = a})

wpdPropertyCode :: Lens' WebPropertyDto (Maybe Text)
wpdPropertyCode
  = lens _wpdPropertyCode
      (\ s a -> s{_wpdPropertyCode = a})

wpdId :: Lens' WebPropertyDto (Maybe Int32)
wpdId = lens _wpdId (\ s a -> s{_wpdId = a})

wpdSiteUrls :: Lens' WebPropertyDto [Text]
wpdSiteUrls
  = lens _wpdSiteUrls (\ s a -> s{_wpdSiteUrls = a}) .
      _Default
      . _Coerce

wpdAllowInterestTargetedAds :: Lens' WebPropertyDto (Maybe Bool)
wpdAllowInterestTargetedAds
  = lens _wpdAllowInterestTargetedAds
      (\ s a -> s{_wpdAllowInterestTargetedAds = a})
