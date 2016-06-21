{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdExchangeBuyer.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdExchangeBuyer.Types.Product where

import           Network.Google.AdExchangeBuyer.Types.Sum
import           Network.Google.Prelude

-- | A proposal is associated with a bunch of notes which may optionally be
-- associated with a deal and\/or revision number.
--
-- /See:/ 'marketplaceNote' smart constructor.
data MarketplaceNote = MarketplaceNote'
    { _mnNote                   :: !(Maybe Text)
    , _mnKind                   :: !Text
    , _mnTimestampMs            :: !(Maybe (Textual Int64))
    , _mnProposalId             :: !(Maybe Text)
    , _mnDealId                 :: !(Maybe Text)
    , _mnProposalRevisionNumber :: !(Maybe (Textual Int64))
    , _mnNoteId                 :: !(Maybe Text)
    , _mnCreatorRole            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'mnProposalId'
--
-- * 'mnDealId'
--
-- * 'mnProposalRevisionNumber'
--
-- * 'mnNoteId'
--
-- * 'mnCreatorRole'
marketplaceNote
    :: MarketplaceNote
marketplaceNote =
    MarketplaceNote'
    { _mnNote = Nothing
    , _mnKind = "adexchangebuyer#marketplaceNote"
    , _mnTimestampMs = Nothing
    , _mnProposalId = Nothing
    , _mnDealId = Nothing
    , _mnProposalRevisionNumber = Nothing
    , _mnNoteId = Nothing
    , _mnCreatorRole = Nothing
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
      . mapping _Coerce

-- | The proposalId that a note is attached to. (readonly)
mnProposalId :: Lens' MarketplaceNote (Maybe Text)
mnProposalId
  = lens _mnProposalId (\ s a -> s{_mnProposalId = a})

-- | Notes can optionally be associated with a deal. (readonly, except on
-- create)
mnDealId :: Lens' MarketplaceNote (Maybe Text)
mnDealId = lens _mnDealId (\ s a -> s{_mnDealId = a})

-- | If the note is associated with a proposal revision number, then store
-- that here. (readonly, except on create)
mnProposalRevisionNumber :: Lens' MarketplaceNote (Maybe Int64)
mnProposalRevisionNumber
  = lens _mnProposalRevisionNumber
      (\ s a -> s{_mnProposalRevisionNumber = a})
      . mapping _Coerce

-- | The unique id for the note. (readonly)
mnNoteId :: Lens' MarketplaceNote (Maybe Text)
mnNoteId = lens _mnNoteId (\ s a -> s{_mnNoteId = a})

-- | The role of the person (buyer\/seller) creating the note. (readonly)
mnCreatorRole :: Lens' MarketplaceNote (Maybe Text)
mnCreatorRole
  = lens _mnCreatorRole
      (\ s a -> s{_mnCreatorRole = a})

instance FromJSON MarketplaceNote where
        parseJSON
          = withObject "MarketplaceNote"
              (\ o ->
                 MarketplaceNote' <$>
                   (o .:? "note") <*>
                     (o .:? "kind" .!= "adexchangebuyer#marketplaceNote")
                     <*> (o .:? "timestampMs")
                     <*> (o .:? "proposalId")
                     <*> (o .:? "dealId")
                     <*> (o .:? "proposalRevisionNumber")
                     <*> (o .:? "noteId")
                     <*> (o .:? "creatorRole"))

instance ToJSON MarketplaceNote where
        toJSON MarketplaceNote'{..}
          = object
              (catMaybes
                 [("note" .=) <$> _mnNote, Just ("kind" .= _mnKind),
                  ("timestampMs" .=) <$> _mnTimestampMs,
                  ("proposalId" .=) <$> _mnProposalId,
                  ("dealId" .=) <$> _mnDealId,
                  ("proposalRevisionNumber" .=) <$>
                    _mnProposalRevisionNumber,
                  ("noteId" .=) <$> _mnNoteId,
                  ("creatorRole" .=) <$> _mnCreatorRole])

-- | If nativeAd is set, HTMLSnippet and videoURL should not be set.
--
-- /See:/ 'creativeNATiveAd' smart constructor.
data CreativeNATiveAd = CreativeNATiveAd'
    { _cnataImage                 :: !(Maybe CreativeNATiveAdImage)
    , _cnataAppIcon               :: !(Maybe CreativeNATiveAdAppIcon)
    , _cnataClickTrackingURL      :: !(Maybe Text)
    , _cnataBody                  :: !(Maybe Text)
    , _cnataHeadline              :: !(Maybe Text)
    , _cnataImpressionTrackingURL :: !(Maybe [Text])
    , _cnataCallToAction          :: !(Maybe Text)
    , _cnataStore                 :: !(Maybe Text)
    , _cnataPrice                 :: !(Maybe Text)
    , _cnataAdvertiser            :: !(Maybe Text)
    , _cnataStarRating            :: !(Maybe (Textual Double))
    , _cnataLogo                  :: !(Maybe CreativeNATiveAdLogo)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeNATiveAd' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnataImage'
--
-- * 'cnataAppIcon'
--
-- * 'cnataClickTrackingURL'
--
-- * 'cnataBody'
--
-- * 'cnataHeadline'
--
-- * 'cnataImpressionTrackingURL'
--
-- * 'cnataCallToAction'
--
-- * 'cnataStore'
--
-- * 'cnataPrice'
--
-- * 'cnataAdvertiser'
--
-- * 'cnataStarRating'
--
-- * 'cnataLogo'
creativeNATiveAd
    :: CreativeNATiveAd
creativeNATiveAd =
    CreativeNATiveAd'
    { _cnataImage = Nothing
    , _cnataAppIcon = Nothing
    , _cnataClickTrackingURL = Nothing
    , _cnataBody = Nothing
    , _cnataHeadline = Nothing
    , _cnataImpressionTrackingURL = Nothing
    , _cnataCallToAction = Nothing
    , _cnataStore = Nothing
    , _cnataPrice = Nothing
    , _cnataAdvertiser = Nothing
    , _cnataStarRating = Nothing
    , _cnataLogo = Nothing
    }

-- | A large image.
cnataImage :: Lens' CreativeNATiveAd (Maybe CreativeNATiveAdImage)
cnataImage
  = lens _cnataImage (\ s a -> s{_cnataImage = a})

-- | The app icon, for app download ads.
cnataAppIcon :: Lens' CreativeNATiveAd (Maybe CreativeNATiveAdAppIcon)
cnataAppIcon
  = lens _cnataAppIcon (\ s a -> s{_cnataAppIcon = a})

-- | The URL to use for click tracking.
cnataClickTrackingURL :: Lens' CreativeNATiveAd (Maybe Text)
cnataClickTrackingURL
  = lens _cnataClickTrackingURL
      (\ s a -> s{_cnataClickTrackingURL = a})

-- | A long description of the ad.
cnataBody :: Lens' CreativeNATiveAd (Maybe Text)
cnataBody
  = lens _cnataBody (\ s a -> s{_cnataBody = a})

-- | A short title for the ad.
cnataHeadline :: Lens' CreativeNATiveAd (Maybe Text)
cnataHeadline
  = lens _cnataHeadline
      (\ s a -> s{_cnataHeadline = a})

-- | The URLs are called when the impression is rendered.
cnataImpressionTrackingURL :: Lens' CreativeNATiveAd [Text]
cnataImpressionTrackingURL
  = lens _cnataImpressionTrackingURL
      (\ s a -> s{_cnataImpressionTrackingURL = a})
      . _Default
      . _Coerce

-- | A label for the button that the user is supposed to click.
cnataCallToAction :: Lens' CreativeNATiveAd (Maybe Text)
cnataCallToAction
  = lens _cnataCallToAction
      (\ s a -> s{_cnataCallToAction = a})

-- | The URL to the app store to purchase\/download the promoted app.
cnataStore :: Lens' CreativeNATiveAd (Maybe Text)
cnataStore
  = lens _cnataStore (\ s a -> s{_cnataStore = a})

-- | The price of the promoted app including the currency info.
cnataPrice :: Lens' CreativeNATiveAd (Maybe Text)
cnataPrice
  = lens _cnataPrice (\ s a -> s{_cnataPrice = a})

cnataAdvertiser :: Lens' CreativeNATiveAd (Maybe Text)
cnataAdvertiser
  = lens _cnataAdvertiser
      (\ s a -> s{_cnataAdvertiser = a})

-- | The app rating in the app store. Must be in the range [0-5].
cnataStarRating :: Lens' CreativeNATiveAd (Maybe Double)
cnataStarRating
  = lens _cnataStarRating
      (\ s a -> s{_cnataStarRating = a})
      . mapping _Coerce

-- | A smaller image, for the advertiser logo.
cnataLogo :: Lens' CreativeNATiveAd (Maybe CreativeNATiveAdLogo)
cnataLogo
  = lens _cnataLogo (\ s a -> s{_cnataLogo = a})

instance FromJSON CreativeNATiveAd where
        parseJSON
          = withObject "CreativeNATiveAd"
              (\ o ->
                 CreativeNATiveAd' <$>
                   (o .:? "image") <*> (o .:? "appIcon") <*>
                     (o .:? "clickTrackingUrl")
                     <*> (o .:? "body")
                     <*> (o .:? "headline")
                     <*> (o .:? "impressionTrackingUrl" .!= mempty)
                     <*> (o .:? "callToAction")
                     <*> (o .:? "store")
                     <*> (o .:? "price")
                     <*> (o .:? "advertiser")
                     <*> (o .:? "starRating")
                     <*> (o .:? "logo"))

instance ToJSON CreativeNATiveAd where
        toJSON CreativeNATiveAd'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _cnataImage,
                  ("appIcon" .=) <$> _cnataAppIcon,
                  ("clickTrackingUrl" .=) <$> _cnataClickTrackingURL,
                  ("body" .=) <$> _cnataBody,
                  ("headline" .=) <$> _cnataHeadline,
                  ("impressionTrackingUrl" .=) <$>
                    _cnataImpressionTrackingURL,
                  ("callToAction" .=) <$> _cnataCallToAction,
                  ("store" .=) <$> _cnataStore,
                  ("price" .=) <$> _cnataPrice,
                  ("advertiser" .=) <$> _cnataAdvertiser,
                  ("starRating" .=) <$> _cnataStarRating,
                  ("logo" .=) <$> _cnataLogo])

--
-- /See:/ 'editAllOrderDealsResponse' smart constructor.
data EditAllOrderDealsResponse = EditAllOrderDealsResponse'
    { _eaodrDeals               :: !(Maybe [MarketplaceDeal])
    , _eaodrOrderRevisionNumber :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditAllOrderDealsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eaodrDeals'
--
-- * 'eaodrOrderRevisionNumber'
editAllOrderDealsResponse
    :: EditAllOrderDealsResponse
editAllOrderDealsResponse =
    EditAllOrderDealsResponse'
    { _eaodrDeals = Nothing
    , _eaodrOrderRevisionNumber = Nothing
    }

-- | List of all deals in the proposal after edit.
eaodrDeals :: Lens' EditAllOrderDealsResponse [MarketplaceDeal]
eaodrDeals
  = lens _eaodrDeals (\ s a -> s{_eaodrDeals = a}) .
      _Default
      . _Coerce

-- | The latest revision number after the update has been applied.
eaodrOrderRevisionNumber :: Lens' EditAllOrderDealsResponse (Maybe Int64)
eaodrOrderRevisionNumber
  = lens _eaodrOrderRevisionNumber
      (\ s a -> s{_eaodrOrderRevisionNumber = a})
      . mapping _Coerce

instance FromJSON EditAllOrderDealsResponse where
        parseJSON
          = withObject "EditAllOrderDealsResponse"
              (\ o ->
                 EditAllOrderDealsResponse' <$>
                   (o .:? "deals" .!= mempty) <*>
                     (o .:? "orderRevisionNumber"))

instance ToJSON EditAllOrderDealsResponse where
        toJSON EditAllOrderDealsResponse'{..}
          = object
              (catMaybes
                 [("deals" .=) <$> _eaodrDeals,
                  ("orderRevisionNumber" .=) <$>
                    _eaodrOrderRevisionNumber])

-- | The creatives feed lists the active creatives for the Ad Exchange buyer
-- accounts that the user has access to. Each entry in the feed corresponds
-- to a single creative.
--
-- /See:/ 'creativesList' smart constructor.
data CreativesList = CreativesList'
    { _clNextPageToken :: !(Maybe Text)
    , _clKind          :: !Text
    , _clItems         :: !(Maybe [Creative])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    CreativesList'
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
clItems :: Lens' CreativesList [Creative]
clItems
  = lens _clItems (\ s a -> s{_clItems = a}) . _Default
      . _Coerce

instance FromJSON CreativesList where
        parseJSON
          = withObject "CreativesList"
              (\ o ->
                 CreativesList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "adexchangebuyer#creativesList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON CreativesList where
        toJSON CreativesList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _clNextPageToken,
                  Just ("kind" .= _clKind), ("items" .=) <$> _clItems])

--
-- /See:/ 'creativeServingRestrictionsItemContextsItem' smart constructor.
data CreativeServingRestrictionsItemContextsItem = CreativeServingRestrictionsItemContextsItem'
    { _csriciPlatform      :: !(Maybe [Text])
    , _csriciContextType   :: !(Maybe Text)
    , _csriciAuctionType   :: !(Maybe [Text])
    , _csriciGeoCriteriaId :: !(Maybe [Textual Int32])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeServingRestrictionsItemContextsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csriciPlatform'
--
-- * 'csriciContextType'
--
-- * 'csriciAuctionType'
--
-- * 'csriciGeoCriteriaId'
creativeServingRestrictionsItemContextsItem
    :: CreativeServingRestrictionsItemContextsItem
creativeServingRestrictionsItemContextsItem =
    CreativeServingRestrictionsItemContextsItem'
    { _csriciPlatform = Nothing
    , _csriciContextType = Nothing
    , _csriciAuctionType = Nothing
    , _csriciGeoCriteriaId = Nothing
    }

-- | Only set when contextType=PLATFORM. Represents the platforms this
-- restriction applies to.
csriciPlatform :: Lens' CreativeServingRestrictionsItemContextsItem [Text]
csriciPlatform
  = lens _csriciPlatform
      (\ s a -> s{_csriciPlatform = a})
      . _Default
      . _Coerce

-- | The type of context (e.g., location, platform, auction type, SSL-ness).
csriciContextType :: Lens' CreativeServingRestrictionsItemContextsItem (Maybe Text)
csriciContextType
  = lens _csriciContextType
      (\ s a -> s{_csriciContextType = a})

-- | Only set when contextType=AUCTION_TYPE. Represents the auction types
-- this restriction applies to.
csriciAuctionType :: Lens' CreativeServingRestrictionsItemContextsItem [Text]
csriciAuctionType
  = lens _csriciAuctionType
      (\ s a -> s{_csriciAuctionType = a})
      . _Default
      . _Coerce

-- | Only set when contextType=LOCATION. Represents the geo criterias this
-- restriction applies to.
csriciGeoCriteriaId :: Lens' CreativeServingRestrictionsItemContextsItem [Int32]
csriciGeoCriteriaId
  = lens _csriciGeoCriteriaId
      (\ s a -> s{_csriciGeoCriteriaId = a})
      . _Default
      . _Coerce

instance FromJSON
         CreativeServingRestrictionsItemContextsItem where
        parseJSON
          = withObject
              "CreativeServingRestrictionsItemContextsItem"
              (\ o ->
                 CreativeServingRestrictionsItemContextsItem' <$>
                   (o .:? "platform" .!= mempty) <*>
                     (o .:? "contextType")
                     <*> (o .:? "auctionType" .!= mempty)
                     <*> (o .:? "geoCriteriaId" .!= mempty))

instance ToJSON
         CreativeServingRestrictionsItemContextsItem where
        toJSON
          CreativeServingRestrictionsItemContextsItem'{..}
          = object
              (catMaybes
                 [("platform" .=) <$> _csriciPlatform,
                  ("contextType" .=) <$> _csriciContextType,
                  ("auctionType" .=) <$> _csriciAuctionType,
                  ("geoCriteriaId" .=) <$> _csriciGeoCriteriaId])

--
-- /See:/ 'createOrdersResponse' smart constructor.
newtype CreateOrdersResponse = CreateOrdersResponse'
    { _corProposals :: Maybe [Proposal]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateOrdersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'corProposals'
createOrdersResponse
    :: CreateOrdersResponse
createOrdersResponse =
    CreateOrdersResponse'
    { _corProposals = Nothing
    }

-- | The list of proposals successfully created.
corProposals :: Lens' CreateOrdersResponse [Proposal]
corProposals
  = lens _corProposals (\ s a -> s{_corProposals = a})
      . _Default
      . _Coerce

instance FromJSON CreateOrdersResponse where
        parseJSON
          = withObject "CreateOrdersResponse"
              (\ o ->
                 CreateOrdersResponse' <$>
                   (o .:? "proposals" .!= mempty))

instance ToJSON CreateOrdersResponse where
        toJSON CreateOrdersResponse'{..}
          = object
              (catMaybes [("proposals" .=) <$> _corProposals])

--
-- /See:/ 'accountBidderLocationItem' smart constructor.
data AccountBidderLocationItem = AccountBidderLocationItem'
    { _abliURL         :: !(Maybe Text)
    , _abliMaximumQps  :: !(Maybe (Textual Int32))
    , _abliRegion      :: !(Maybe Text)
    , _abliBidProtocol :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountBidderLocationItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'abliURL'
--
-- * 'abliMaximumQps'
--
-- * 'abliRegion'
--
-- * 'abliBidProtocol'
accountBidderLocationItem
    :: AccountBidderLocationItem
accountBidderLocationItem =
    AccountBidderLocationItem'
    { _abliURL = Nothing
    , _abliMaximumQps = Nothing
    , _abliRegion = Nothing
    , _abliBidProtocol = Nothing
    }

-- | The URL to which the Ad Exchange will send bid requests.
abliURL :: Lens' AccountBidderLocationItem (Maybe Text)
abliURL = lens _abliURL (\ s a -> s{_abliURL = a})

-- | The maximum queries per second the Ad Exchange will send.
abliMaximumQps :: Lens' AccountBidderLocationItem (Maybe Int32)
abliMaximumQps
  = lens _abliMaximumQps
      (\ s a -> s{_abliMaximumQps = a})
      . mapping _Coerce

-- | The geographical region the Ad Exchange should send requests from. Only
-- used by some quota systems, but always setting the value is recommended.
-- Allowed values: - ASIA - EUROPE - US_EAST - US_WEST
abliRegion :: Lens' AccountBidderLocationItem (Maybe Text)
abliRegion
  = lens _abliRegion (\ s a -> s{_abliRegion = a})

-- | The protocol that the bidder endpoint is using. By default, OpenRTB
-- protocols use JSON, except PROTOCOL_OPENRTB_PROTOBUF.
-- PROTOCOL_OPENRTB_PROTOBUF uses protobuf encoding over the latest OpenRTB
-- protocol version, which is 2.3 right now. Allowed values: - PROTOCOL_ADX
-- - PROTOCOL_OPENRTB_2_2 - PROTOCOL_OPENRTB_2_3 -
-- PROTOCOL_OPENRTB_PROTOBUF
abliBidProtocol :: Lens' AccountBidderLocationItem (Maybe Text)
abliBidProtocol
  = lens _abliBidProtocol
      (\ s a -> s{_abliBidProtocol = a})

instance FromJSON AccountBidderLocationItem where
        parseJSON
          = withObject "AccountBidderLocationItem"
              (\ o ->
                 AccountBidderLocationItem' <$>
                   (o .:? "url") <*> (o .:? "maximumQps") <*>
                     (o .:? "region")
                     <*> (o .:? "bidProtocol"))

instance ToJSON AccountBidderLocationItem where
        toJSON AccountBidderLocationItem'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _abliURL,
                  ("maximumQps" .=) <$> _abliMaximumQps,
                  ("region" .=) <$> _abliRegion,
                  ("bidProtocol" .=) <$> _abliBidProtocol])

--
-- /See:/ 'privateData' smart constructor.
data PrivateData = PrivateData'
    { _pdReferencePayload :: !(Maybe Base64)
    , _pdReferenceId      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    PrivateData'
    { _pdReferencePayload = Nothing
    , _pdReferenceId = Nothing
    }

pdReferencePayload :: Lens' PrivateData (Maybe ByteString)
pdReferencePayload
  = lens _pdReferencePayload
      (\ s a -> s{_pdReferencePayload = a})
      . mapping _Base64

pdReferenceId :: Lens' PrivateData (Maybe Text)
pdReferenceId
  = lens _pdReferenceId
      (\ s a -> s{_pdReferenceId = a})

instance FromJSON PrivateData where
        parseJSON
          = withObject "PrivateData"
              (\ o ->
                 PrivateData' <$>
                   (o .:? "referencePayload") <*> (o .:? "referenceId"))

instance ToJSON PrivateData where
        toJSON PrivateData'{..}
          = object
              (catMaybes
                 [("referencePayload" .=) <$> _pdReferencePayload,
                  ("referenceId" .=) <$> _pdReferenceId])

-- | The configuration data for Ad Exchange RTB - Budget API.
--
-- /See:/ 'budget' smart constructor.
data Budget = Budget'
    { _bCurrencyCode :: !(Maybe Text)
    , _bKind         :: !Text
    , _bBudgetAmount :: !(Maybe (Textual Int64))
    , _bAccountId    :: !(Maybe (Textual Int64))
    , _bId           :: !(Maybe Text)
    , _bBillingId    :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Budget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bCurrencyCode'
--
-- * 'bKind'
--
-- * 'bBudgetAmount'
--
-- * 'bAccountId'
--
-- * 'bId'
--
-- * 'bBillingId'
budget
    :: Budget
budget =
    Budget'
    { _bCurrencyCode = Nothing
    , _bKind = "adexchangebuyer#budget"
    , _bBudgetAmount = Nothing
    , _bAccountId = Nothing
    , _bId = Nothing
    , _bBillingId = Nothing
    }

-- | The currency code for the buyer. This cannot be altered here.
bCurrencyCode :: Lens' Budget (Maybe Text)
bCurrencyCode
  = lens _bCurrencyCode
      (\ s a -> s{_bCurrencyCode = a})

-- | The kind of the resource, i.e. \"adexchangebuyer#budget\".
bKind :: Lens' Budget Text
bKind = lens _bKind (\ s a -> s{_bKind = a})

-- | The daily budget amount in unit amount of the account currency to apply
-- for the billingId provided. This is required for update requests.
bBudgetAmount :: Lens' Budget (Maybe Int64)
bBudgetAmount
  = lens _bBudgetAmount
      (\ s a -> s{_bBudgetAmount = a})
      . mapping _Coerce

-- | The id of the account. This is required for get and update requests.
bAccountId :: Lens' Budget (Maybe Int64)
bAccountId
  = lens _bAccountId (\ s a -> s{_bAccountId = a}) .
      mapping _Coerce

-- | The unique id that describes this item.
bId :: Lens' Budget (Maybe Text)
bId = lens _bId (\ s a -> s{_bId = a})

-- | The billing id to determine which adgroup to provide budget information
-- for. This is required for get and update requests.
bBillingId :: Lens' Budget (Maybe Int64)
bBillingId
  = lens _bBillingId (\ s a -> s{_bBillingId = a}) .
      mapping _Coerce

instance FromJSON Budget where
        parseJSON
          = withObject "Budget"
              (\ o ->
                 Budget' <$>
                   (o .:? "currencyCode") <*>
                     (o .:? "kind" .!= "adexchangebuyer#budget")
                     <*> (o .:? "budgetAmount")
                     <*> (o .:? "accountId")
                     <*> (o .:? "id")
                     <*> (o .:? "billingId"))

instance ToJSON Budget where
        toJSON Budget'{..}
          = object
              (catMaybes
                 [("currencyCode" .=) <$> _bCurrencyCode,
                  Just ("kind" .= _bKind),
                  ("budgetAmount" .=) <$> _bBudgetAmount,
                  ("accountId" .=) <$> _bAccountId, ("id" .=) <$> _bId,
                  ("billingId" .=) <$> _bBillingId])

--
-- /See:/ 'addOrderNotesRequest' smart constructor.
newtype AddOrderNotesRequest = AddOrderNotesRequest'
    { _aonrNotes :: Maybe [MarketplaceNote]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddOrderNotesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aonrNotes'
addOrderNotesRequest
    :: AddOrderNotesRequest
addOrderNotesRequest =
    AddOrderNotesRequest'
    { _aonrNotes = Nothing
    }

-- | The list of notes to add.
aonrNotes :: Lens' AddOrderNotesRequest [MarketplaceNote]
aonrNotes
  = lens _aonrNotes (\ s a -> s{_aonrNotes = a}) .
      _Default
      . _Coerce

instance FromJSON AddOrderNotesRequest where
        parseJSON
          = withObject "AddOrderNotesRequest"
              (\ o ->
                 AddOrderNotesRequest' <$> (o .:? "notes" .!= mempty))

instance ToJSON AddOrderNotesRequest where
        toJSON AddOrderNotesRequest'{..}
          = object (catMaybes [("notes" .=) <$> _aonrNotes])

--
-- /See:/ 'deliveryControlFrequencyCap' smart constructor.
data DeliveryControlFrequencyCap = DeliveryControlFrequencyCap'
    { _dcfcMaxImpressions :: !(Maybe (Textual Int32))
    , _dcfcNumTimeUnits   :: !(Maybe (Textual Int32))
    , _dcfcTimeUnitType   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    DeliveryControlFrequencyCap'
    { _dcfcMaxImpressions = Nothing
    , _dcfcNumTimeUnits = Nothing
    , _dcfcTimeUnitType = Nothing
    }

dcfcMaxImpressions :: Lens' DeliveryControlFrequencyCap (Maybe Int32)
dcfcMaxImpressions
  = lens _dcfcMaxImpressions
      (\ s a -> s{_dcfcMaxImpressions = a})
      . mapping _Coerce

dcfcNumTimeUnits :: Lens' DeliveryControlFrequencyCap (Maybe Int32)
dcfcNumTimeUnits
  = lens _dcfcNumTimeUnits
      (\ s a -> s{_dcfcNumTimeUnits = a})
      . mapping _Coerce

dcfcTimeUnitType :: Lens' DeliveryControlFrequencyCap (Maybe Text)
dcfcTimeUnitType
  = lens _dcfcTimeUnitType
      (\ s a -> s{_dcfcTimeUnitType = a})

instance FromJSON DeliveryControlFrequencyCap where
        parseJSON
          = withObject "DeliveryControlFrequencyCap"
              (\ o ->
                 DeliveryControlFrequencyCap' <$>
                   (o .:? "maxImpressions") <*> (o .:? "numTimeUnits")
                     <*> (o .:? "timeUnitType"))

instance ToJSON DeliveryControlFrequencyCap where
        toJSON DeliveryControlFrequencyCap'{..}
          = object
              (catMaybes
                 [("maxImpressions" .=) <$> _dcfcMaxImpressions,
                  ("numTimeUnits" .=) <$> _dcfcNumTimeUnits,
                  ("timeUnitType" .=) <$> _dcfcTimeUnitType])

--
-- /See:/ 'marketplaceDealParty' smart constructor.
data MarketplaceDealParty = MarketplaceDealParty'
    { _mdpSeller :: !(Maybe Seller)
    , _mdpBuyer  :: !(Maybe Buyer)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    MarketplaceDealParty'
    { _mdpSeller = Nothing
    , _mdpBuyer = Nothing
    }

-- | The buyer\/seller associated with the deal. One of buyer\/seller is
-- specified for a deal party.
mdpSeller :: Lens' MarketplaceDealParty (Maybe Seller)
mdpSeller
  = lens _mdpSeller (\ s a -> s{_mdpSeller = a})

-- | The buyer\/seller associated with the deal. One of buyer\/seller is
-- specified for a deal-party.
mdpBuyer :: Lens' MarketplaceDealParty (Maybe Buyer)
mdpBuyer = lens _mdpBuyer (\ s a -> s{_mdpBuyer = a})

instance FromJSON MarketplaceDealParty where
        parseJSON
          = withObject "MarketplaceDealParty"
              (\ o ->
                 MarketplaceDealParty' <$>
                   (o .:? "seller") <*> (o .:? "buyer"))

instance ToJSON MarketplaceDealParty where
        toJSON MarketplaceDealParty'{..}
          = object
              (catMaybes
                 [("seller" .=) <$> _mdpSeller,
                  ("buyer" .=) <$> _mdpBuyer])

--
-- /See:/ 'getOrderNotesResponse' smart constructor.
newtype GetOrderNotesResponse = GetOrderNotesResponse'
    { _gonrNotes :: Maybe [MarketplaceNote]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetOrderNotesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gonrNotes'
getOrderNotesResponse
    :: GetOrderNotesResponse
getOrderNotesResponse =
    GetOrderNotesResponse'
    { _gonrNotes = Nothing
    }

-- | The list of matching notes.
gonrNotes :: Lens' GetOrderNotesResponse [MarketplaceNote]
gonrNotes
  = lens _gonrNotes (\ s a -> s{_gonrNotes = a}) .
      _Default
      . _Coerce

instance FromJSON GetOrderNotesResponse where
        parseJSON
          = withObject "GetOrderNotesResponse"
              (\ o ->
                 GetOrderNotesResponse' <$>
                   (o .:? "notes" .!= mempty))

instance ToJSON GetOrderNotesResponse where
        toJSON GetOrderNotesResponse'{..}
          = object (catMaybes [("notes" .=) <$> _gonrNotes])

--
-- /See:/ 'getOrdersResponse' smart constructor.
newtype GetOrdersResponse = GetOrdersResponse'
    { _gorProposals :: Maybe [Proposal]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetOrdersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gorProposals'
getOrdersResponse
    :: GetOrdersResponse
getOrdersResponse =
    GetOrdersResponse'
    { _gorProposals = Nothing
    }

-- | The list of matching proposals.
gorProposals :: Lens' GetOrdersResponse [Proposal]
gorProposals
  = lens _gorProposals (\ s a -> s{_gorProposals = a})
      . _Default
      . _Coerce

instance FromJSON GetOrdersResponse where
        parseJSON
          = withObject "GetOrdersResponse"
              (\ o ->
                 GetOrdersResponse' <$>
                   (o .:? "proposals" .!= mempty))

instance ToJSON GetOrdersResponse where
        toJSON GetOrdersResponse'{..}
          = object
              (catMaybes [("proposals" .=) <$> _gorProposals])

--
-- /See:/ 'creativeServingRestrictionsItemDisApprovalReasonsItem' smart constructor.
data CreativeServingRestrictionsItemDisApprovalReasonsItem = CreativeServingRestrictionsItemDisApprovalReasonsItem'
    { _csridariReason  :: !(Maybe Text)
    , _csridariDetails :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeServingRestrictionsItemDisApprovalReasonsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csridariReason'
--
-- * 'csridariDetails'
creativeServingRestrictionsItemDisApprovalReasonsItem
    :: CreativeServingRestrictionsItemDisApprovalReasonsItem
creativeServingRestrictionsItemDisApprovalReasonsItem =
    CreativeServingRestrictionsItemDisApprovalReasonsItem'
    { _csridariReason = Nothing
    , _csridariDetails = Nothing
    }

-- | The categorized reason for disapproval.
csridariReason :: Lens' CreativeServingRestrictionsItemDisApprovalReasonsItem (Maybe Text)
csridariReason
  = lens _csridariReason
      (\ s a -> s{_csridariReason = a})

-- | Additional details about the reason for disapproval.
csridariDetails :: Lens' CreativeServingRestrictionsItemDisApprovalReasonsItem [Text]
csridariDetails
  = lens _csridariDetails
      (\ s a -> s{_csridariDetails = a})
      . _Default
      . _Coerce

instance FromJSON
         CreativeServingRestrictionsItemDisApprovalReasonsItem
         where
        parseJSON
          = withObject
              "CreativeServingRestrictionsItemDisApprovalReasonsItem"
              (\ o ->
                 CreativeServingRestrictionsItemDisApprovalReasonsItem'
                   <$>
                   (o .:? "reason") <*> (o .:? "details" .!= mempty))

instance ToJSON
         CreativeServingRestrictionsItemDisApprovalReasonsItem
         where
        toJSON
          CreativeServingRestrictionsItemDisApprovalReasonsItem'{..}
          = object
              (catMaybes
                 [("reason" .=) <$> _csridariReason,
                  ("details" .=) <$> _csridariDetails])

-- | An account feed lists Ad Exchange buyer accounts that the user has
-- access to. Each entry in the feed corresponds to a single buyer account.
--
-- /See:/ 'accountsList' smart constructor.
data AccountsList = AccountsList'
    { _alKind  :: !Text
    , _alItems :: !(Maybe [Account])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AccountsList'
    { _alKind = "adexchangebuyer#accountsList"
    , _alItems = Nothing
    }

-- | Resource type.
alKind :: Lens' AccountsList Text
alKind = lens _alKind (\ s a -> s{_alKind = a})

-- | A list of accounts.
alItems :: Lens' AccountsList [Account]
alItems
  = lens _alItems (\ s a -> s{_alItems = a}) . _Default
      . _Coerce

instance FromJSON AccountsList where
        parseJSON
          = withObject "AccountsList"
              (\ o ->
                 AccountsList' <$>
                   (o .:? "kind" .!= "adexchangebuyer#accountsList") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON AccountsList where
        toJSON AccountsList'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _alKind),
                  ("items" .=) <$> _alItems])

-- | This message carries publisher provided breakdown. E.g. {dimension_type:
-- \'COUNTRY\', [{dimension_value: {id: 1, name: \'US\'}},
-- {dimension_value: {id: 2, name: \'UK\'}}]}
--
-- /See:/ 'dimension' smart constructor.
data Dimension = Dimension'
    { _dDimensionValues :: !(Maybe [DimensionDimensionValue])
    , _dDimensionType   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Dimension' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDimensionValues'
--
-- * 'dDimensionType'
dimension
    :: Dimension
dimension =
    Dimension'
    { _dDimensionValues = Nothing
    , _dDimensionType = Nothing
    }

dDimensionValues :: Lens' Dimension [DimensionDimensionValue]
dDimensionValues
  = lens _dDimensionValues
      (\ s a -> s{_dDimensionValues = a})
      . _Default
      . _Coerce

dDimensionType :: Lens' Dimension (Maybe Text)
dDimensionType
  = lens _dDimensionType
      (\ s a -> s{_dDimensionType = a})

instance FromJSON Dimension where
        parseJSON
          = withObject "Dimension"
              (\ o ->
                 Dimension' <$>
                   (o .:? "dimensionValues" .!= mempty) <*>
                     (o .:? "dimensionType"))

instance ToJSON Dimension where
        toJSON Dimension'{..}
          = object
              (catMaybes
                 [("dimensionValues" .=) <$> _dDimensionValues,
                  ("dimensionType" .=) <$> _dDimensionType])

--
-- /See:/ 'createOrdersRequest' smart constructor.
data CreateOrdersRequest = CreateOrdersRequest'
    { _cProposals       :: !(Maybe [Proposal])
    , _cWebPropertyCode :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreateOrdersRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cProposals'
--
-- * 'cWebPropertyCode'
createOrdersRequest
    :: CreateOrdersRequest
createOrdersRequest =
    CreateOrdersRequest'
    { _cProposals = Nothing
    , _cWebPropertyCode = Nothing
    }

-- | The list of proposals to create.
cProposals :: Lens' CreateOrdersRequest [Proposal]
cProposals
  = lens _cProposals (\ s a -> s{_cProposals = a}) .
      _Default
      . _Coerce

-- | Web property id of the seller creating these orders
cWebPropertyCode :: Lens' CreateOrdersRequest (Maybe Text)
cWebPropertyCode
  = lens _cWebPropertyCode
      (\ s a -> s{_cWebPropertyCode = a})

instance FromJSON CreateOrdersRequest where
        parseJSON
          = withObject "CreateOrdersRequest"
              (\ o ->
                 CreateOrdersRequest' <$>
                   (o .:? "proposals" .!= mempty) <*>
                     (o .:? "webPropertyCode"))

instance ToJSON CreateOrdersRequest where
        toJSON CreateOrdersRequest'{..}
          = object
              (catMaybes
                 [("proposals" .=) <$> _cProposals,
                  ("webPropertyCode" .=) <$> _cWebPropertyCode])

--
-- /See:/ 'creativeCorrectionsItem' smart constructor.
data CreativeCorrectionsItem = CreativeCorrectionsItem'
    { _cciReason  :: !(Maybe Text)
    , _cciDetails :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeCorrectionsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cciReason'
--
-- * 'cciDetails'
creativeCorrectionsItem
    :: CreativeCorrectionsItem
creativeCorrectionsItem =
    CreativeCorrectionsItem'
    { _cciReason = Nothing
    , _cciDetails = Nothing
    }

-- | The type of correction that was applied to the creative.
cciReason :: Lens' CreativeCorrectionsItem (Maybe Text)
cciReason
  = lens _cciReason (\ s a -> s{_cciReason = a})

-- | Additional details about the correction.
cciDetails :: Lens' CreativeCorrectionsItem [Text]
cciDetails
  = lens _cciDetails (\ s a -> s{_cciDetails = a}) .
      _Default
      . _Coerce

instance FromJSON CreativeCorrectionsItem where
        parseJSON
          = withObject "CreativeCorrectionsItem"
              (\ o ->
                 CreativeCorrectionsItem' <$>
                   (o .:? "reason") <*> (o .:? "details" .!= mempty))

instance ToJSON CreativeCorrectionsItem where
        toJSON CreativeCorrectionsItem'{..}
          = object
              (catMaybes
                 [("reason" .=) <$> _cciReason,
                  ("details" .=) <$> _cciDetails])

--
-- /See:/ 'dealServingMetadata' smart constructor.
newtype DealServingMetadata = DealServingMetadata'
    { _dsmDealPauseStatus :: Maybe DealServingMetadataDealPauseStatus
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DealServingMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsmDealPauseStatus'
dealServingMetadata
    :: DealServingMetadata
dealServingMetadata =
    DealServingMetadata'
    { _dsmDealPauseStatus = Nothing
    }

-- | Tracks which parties (if any) have paused a deal. (readonly, except via
-- PauseResumeOrderDeals action)
dsmDealPauseStatus :: Lens' DealServingMetadata (Maybe DealServingMetadataDealPauseStatus)
dsmDealPauseStatus
  = lens _dsmDealPauseStatus
      (\ s a -> s{_dsmDealPauseStatus = a})

instance FromJSON DealServingMetadata where
        parseJSON
          = withObject "DealServingMetadata"
              (\ o ->
                 DealServingMetadata' <$> (o .:? "dealPauseStatus"))

instance ToJSON DealServingMetadata where
        toJSON DealServingMetadata'{..}
          = object
              (catMaybes
                 [("dealPauseStatus" .=) <$> _dsmDealPauseStatus])

--
-- /See:/ 'addOrderDealsResponse' smart constructor.
data AddOrderDealsResponse = AddOrderDealsResponse'
    { _aodrDeals                  :: !(Maybe [MarketplaceDeal])
    , _aodrProposalRevisionNumber :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddOrderDealsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aodrDeals'
--
-- * 'aodrProposalRevisionNumber'
addOrderDealsResponse
    :: AddOrderDealsResponse
addOrderDealsResponse =
    AddOrderDealsResponse'
    { _aodrDeals = Nothing
    , _aodrProposalRevisionNumber = Nothing
    }

-- | List of deals added (in the same proposal as passed in the request)
aodrDeals :: Lens' AddOrderDealsResponse [MarketplaceDeal]
aodrDeals
  = lens _aodrDeals (\ s a -> s{_aodrDeals = a}) .
      _Default
      . _Coerce

-- | The updated revision number for the proposal.
aodrProposalRevisionNumber :: Lens' AddOrderDealsResponse (Maybe Int64)
aodrProposalRevisionNumber
  = lens _aodrProposalRevisionNumber
      (\ s a -> s{_aodrProposalRevisionNumber = a})
      . mapping _Coerce

instance FromJSON AddOrderDealsResponse where
        parseJSON
          = withObject "AddOrderDealsResponse"
              (\ o ->
                 AddOrderDealsResponse' <$>
                   (o .:? "deals" .!= mempty) <*>
                     (o .:? "proposalRevisionNumber"))

instance ToJSON AddOrderDealsResponse where
        toJSON AddOrderDealsResponse'{..}
          = object
              (catMaybes
                 [("deals" .=) <$> _aodrDeals,
                  ("proposalRevisionNumber" .=) <$>
                    _aodrProposalRevisionNumber])

--
-- /See:/ 'deliveryControl' smart constructor.
data DeliveryControl = DeliveryControl'
    { _dcCreativeBlockingLevel :: !(Maybe Text)
    , _dcFrequencyCaps         :: !(Maybe [DeliveryControlFrequencyCap])
    , _dcDeliveryRateType      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeliveryControl' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcCreativeBlockingLevel'
--
-- * 'dcFrequencyCaps'
--
-- * 'dcDeliveryRateType'
deliveryControl
    :: DeliveryControl
deliveryControl =
    DeliveryControl'
    { _dcCreativeBlockingLevel = Nothing
    , _dcFrequencyCaps = Nothing
    , _dcDeliveryRateType = Nothing
    }

dcCreativeBlockingLevel :: Lens' DeliveryControl (Maybe Text)
dcCreativeBlockingLevel
  = lens _dcCreativeBlockingLevel
      (\ s a -> s{_dcCreativeBlockingLevel = a})

dcFrequencyCaps :: Lens' DeliveryControl [DeliveryControlFrequencyCap]
dcFrequencyCaps
  = lens _dcFrequencyCaps
      (\ s a -> s{_dcFrequencyCaps = a})
      . _Default
      . _Coerce

dcDeliveryRateType :: Lens' DeliveryControl (Maybe Text)
dcDeliveryRateType
  = lens _dcDeliveryRateType
      (\ s a -> s{_dcDeliveryRateType = a})

instance FromJSON DeliveryControl where
        parseJSON
          = withObject "DeliveryControl"
              (\ o ->
                 DeliveryControl' <$>
                   (o .:? "creativeBlockingLevel") <*>
                     (o .:? "frequencyCaps" .!= mempty)
                     <*> (o .:? "deliveryRateType"))

instance ToJSON DeliveryControl where
        toJSON DeliveryControl'{..}
          = object
              (catMaybes
                 [("creativeBlockingLevel" .=) <$>
                    _dcCreativeBlockingLevel,
                  ("frequencyCaps" .=) <$> _dcFrequencyCaps,
                  ("deliveryRateType" .=) <$> _dcDeliveryRateType])

-- | Used to specify pricing rules for buyers\/advertisers. Each
-- PricePerBuyer in an product can become [0,1] deals. To check if there is
-- a PricePerBuyer for a particular buyer or buyer\/advertiser pair, we
-- look for the most specific matching rule - we first look for a rule
-- matching the buyer and advertiser, next a rule with the buyer but an
-- empty advertiser list, and otherwise look for a matching rule where no
-- buyer is set.
--
-- /See:/ 'pricePerBuyer' smart constructor.
data PricePerBuyer = PricePerBuyer'
    { _ppbPrice       :: !(Maybe Price)
    , _ppbAuctionTier :: !(Maybe Text)
    , _ppbBuyer       :: !(Maybe Buyer)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PricePerBuyer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppbPrice'
--
-- * 'ppbAuctionTier'
--
-- * 'ppbBuyer'
pricePerBuyer
    :: PricePerBuyer
pricePerBuyer =
    PricePerBuyer'
    { _ppbPrice = Nothing
    , _ppbAuctionTier = Nothing
    , _ppbBuyer = Nothing
    }

-- | The specified price
ppbPrice :: Lens' PricePerBuyer (Maybe Price)
ppbPrice = lens _ppbPrice (\ s a -> s{_ppbPrice = a})

-- | Optional access type for this buyer.
ppbAuctionTier :: Lens' PricePerBuyer (Maybe Text)
ppbAuctionTier
  = lens _ppbAuctionTier
      (\ s a -> s{_ppbAuctionTier = a})

-- | The buyer who will pay this price. If unset, all buyers can pay this
-- price (if the advertisers match, and there\'s no more specific rule
-- matching the buyer).
ppbBuyer :: Lens' PricePerBuyer (Maybe Buyer)
ppbBuyer = lens _ppbBuyer (\ s a -> s{_ppbBuyer = a})

instance FromJSON PricePerBuyer where
        parseJSON
          = withObject "PricePerBuyer"
              (\ o ->
                 PricePerBuyer' <$>
                   (o .:? "price") <*> (o .:? "auctionTier") <*>
                     (o .:? "buyer"))

instance ToJSON PricePerBuyer where
        toJSON PricePerBuyer'{..}
          = object
              (catMaybes
                 [("price" .=) <$> _ppbPrice,
                  ("auctionTier" .=) <$> _ppbAuctionTier,
                  ("buyer" .=) <$> _ppbBuyer])

-- | A creative and its classification data.
--
-- /See:/ 'creative' smart constructor.
data Creative = Creative'
    { _cAttribute               :: !(Maybe [Textual Int32])
    , _cNATiveAd                :: !(Maybe CreativeNATiveAd)
    , _cHeight                  :: !(Maybe (Textual Int32))
    , _cBuyerCreativeId         :: !(Maybe Text)
    , _cAdvertiserName          :: !(Maybe Text)
    , _cAdChoicesDestinationURL :: !(Maybe Text)
    , _cAgencyId                :: !(Maybe (Textual Int64))
    , _cCorrections             :: !(Maybe [CreativeCorrectionsItem])
    , _cProductCategories       :: !(Maybe [Textual Int32])
    , _cKind                    :: !Text
    , _cHTMLSnippet             :: !(Maybe Text)
    , _cAdvertiserId            :: !(Maybe [Textual Int64])
    , _cRestrictedCategories    :: !(Maybe [Textual Int32])
    , _cDealsStatus             :: !(Maybe Text)
    , _cWidth                   :: !(Maybe (Textual Int32))
    , _cClickThroughURL         :: !(Maybe [Text])
    , _cVendorType              :: !(Maybe [Textual Int32])
    , _cAccountId               :: !(Maybe (Textual Int32))
    , _cImpressionTrackingURL   :: !(Maybe [Text])
    , _cFilteringReasons        :: !(Maybe CreativeFilteringReasons)
    , _cVersion                 :: !(Maybe (Textual Int32))
    , _cSensitiveCategories     :: !(Maybe [Textual Int32])
    , _cVideoURL                :: !(Maybe Text)
    , _cAPIUploadTimestamp      :: !(Maybe DateTime')
    , _cServingRestrictions     :: !(Maybe [CreativeServingRestrictionsItem])
    , _cOpenAuctionStatus       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Creative' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cAttribute'
--
-- * 'cNATiveAd'
--
-- * 'cHeight'
--
-- * 'cBuyerCreativeId'
--
-- * 'cAdvertiserName'
--
-- * 'cAdChoicesDestinationURL'
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
-- * 'cClickThroughURL'
--
-- * 'cVendorType'
--
-- * 'cAccountId'
--
-- * 'cImpressionTrackingURL'
--
-- * 'cFilteringReasons'
--
-- * 'cVersion'
--
-- * 'cSensitiveCategories'
--
-- * 'cVideoURL'
--
-- * 'cAPIUploadTimestamp'
--
-- * 'cServingRestrictions'
--
-- * 'cOpenAuctionStatus'
creative
    :: Creative
creative =
    Creative'
    { _cAttribute = Nothing
    , _cNATiveAd = Nothing
    , _cHeight = Nothing
    , _cBuyerCreativeId = Nothing
    , _cAdvertiserName = Nothing
    , _cAdChoicesDestinationURL = Nothing
    , _cAgencyId = Nothing
    , _cCorrections = Nothing
    , _cProductCategories = Nothing
    , _cKind = "adexchangebuyer#creative"
    , _cHTMLSnippet = Nothing
    , _cAdvertiserId = Nothing
    , _cRestrictedCategories = Nothing
    , _cDealsStatus = Nothing
    , _cWidth = Nothing
    , _cClickThroughURL = Nothing
    , _cVendorType = Nothing
    , _cAccountId = Nothing
    , _cImpressionTrackingURL = Nothing
    , _cFilteringReasons = Nothing
    , _cVersion = Nothing
    , _cSensitiveCategories = Nothing
    , _cVideoURL = Nothing
    , _cAPIUploadTimestamp = Nothing
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
cNATiveAd :: Lens' Creative (Maybe CreativeNATiveAd)
cNATiveAd
  = lens _cNATiveAd (\ s a -> s{_cNATiveAd = a})

-- | Ad height.
cHeight :: Lens' Creative (Maybe Int32)
cHeight
  = lens _cHeight (\ s a -> s{_cHeight = a}) .
      mapping _Coerce

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

-- | The link to the Ad Preferences page. This is only supported for native
-- ads.
cAdChoicesDestinationURL :: Lens' Creative (Maybe Text)
cAdChoicesDestinationURL
  = lens _cAdChoicesDestinationURL
      (\ s a -> s{_cAdChoicesDestinationURL = a})

-- | The agency id for this creative.
cAgencyId :: Lens' Creative (Maybe Int64)
cAgencyId
  = lens _cAgencyId (\ s a -> s{_cAgencyId = a}) .
      mapping _Coerce

-- | Shows any corrections that were applied to this creative. Read-only.
-- This field should not be set in requests.
cCorrections :: Lens' Creative [CreativeCorrectionsItem]
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
cWidth
  = lens _cWidth (\ s a -> s{_cWidth = a}) .
      mapping _Coerce

-- | The set of destination urls for the snippet.
cClickThroughURL :: Lens' Creative [Text]
cClickThroughURL
  = lens _cClickThroughURL
      (\ s a -> s{_cClickThroughURL = a})
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
  = lens _cAccountId (\ s a -> s{_cAccountId = a}) .
      mapping _Coerce

-- | The set of urls to be called to record an impression.
cImpressionTrackingURL :: Lens' Creative [Text]
cImpressionTrackingURL
  = lens _cImpressionTrackingURL
      (\ s a -> s{_cImpressionTrackingURL = a})
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
cVersion
  = lens _cVersion (\ s a -> s{_cVersion = a}) .
      mapping _Coerce

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
cAPIUploadTimestamp :: Lens' Creative (Maybe UTCTime)
cAPIUploadTimestamp
  = lens _cAPIUploadTimestamp
      (\ s a -> s{_cAPIUploadTimestamp = a})
      . mapping _DateTime

-- | The granular status of this ad in specific contexts. A context here
-- relates to where something ultimately serves (for example, a physical
-- location, a platform, an HTTPS vs HTTP request, or the type of auction).
-- Read-only. This field should not be set in requests.
cServingRestrictions :: Lens' Creative [CreativeServingRestrictionsItem]
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

instance FromJSON Creative where
        parseJSON
          = withObject "Creative"
              (\ o ->
                 Creative' <$>
                   (o .:? "attribute" .!= mempty) <*> (o .:? "nativeAd")
                     <*> (o .:? "height")
                     <*> (o .:? "buyerCreativeId")
                     <*> (o .:? "advertiserName")
                     <*> (o .:? "adChoicesDestinationUrl")
                     <*> (o .:? "agencyId")
                     <*> (o .:? "corrections" .!= mempty)
                     <*> (o .:? "productCategories" .!= mempty)
                     <*> (o .:? "kind" .!= "adexchangebuyer#creative")
                     <*> (o .:? "HTMLSnippet")
                     <*> (o .:? "advertiserId" .!= mempty)
                     <*> (o .:? "restrictedCategories" .!= mempty)
                     <*> (o .:? "dealsStatus")
                     <*> (o .:? "width")
                     <*> (o .:? "clickThroughUrl" .!= mempty)
                     <*> (o .:? "vendorType" .!= mempty)
                     <*> (o .:? "accountId")
                     <*> (o .:? "impressionTrackingUrl" .!= mempty)
                     <*> (o .:? "filteringReasons")
                     <*> (o .:? "version")
                     <*> (o .:? "sensitiveCategories" .!= mempty)
                     <*> (o .:? "videoURL")
                     <*> (o .:? "apiUploadTimestamp")
                     <*> (o .:? "servingRestrictions" .!= mempty)
                     <*> (o .:? "openAuctionStatus"))

instance ToJSON Creative where
        toJSON Creative'{..}
          = object
              (catMaybes
                 [("attribute" .=) <$> _cAttribute,
                  ("nativeAd" .=) <$> _cNATiveAd,
                  ("height" .=) <$> _cHeight,
                  ("buyerCreativeId" .=) <$> _cBuyerCreativeId,
                  ("advertiserName" .=) <$> _cAdvertiserName,
                  ("adChoicesDestinationUrl" .=) <$>
                    _cAdChoicesDestinationURL,
                  ("agencyId" .=) <$> _cAgencyId,
                  ("corrections" .=) <$> _cCorrections,
                  ("productCategories" .=) <$> _cProductCategories,
                  Just ("kind" .= _cKind),
                  ("HTMLSnippet" .=) <$> _cHTMLSnippet,
                  ("advertiserId" .=) <$> _cAdvertiserId,
                  ("restrictedCategories" .=) <$>
                    _cRestrictedCategories,
                  ("dealsStatus" .=) <$> _cDealsStatus,
                  ("width" .=) <$> _cWidth,
                  ("clickThroughUrl" .=) <$> _cClickThroughURL,
                  ("vendorType" .=) <$> _cVendorType,
                  ("accountId" .=) <$> _cAccountId,
                  ("impressionTrackingUrl" .=) <$>
                    _cImpressionTrackingURL,
                  ("filteringReasons" .=) <$> _cFilteringReasons,
                  ("version" .=) <$> _cVersion,
                  ("sensitiveCategories" .=) <$> _cSensitiveCategories,
                  ("videoURL" .=) <$> _cVideoURL,
                  ("apiUploadTimestamp" .=) <$> _cAPIUploadTimestamp,
                  ("servingRestrictions" .=) <$> _cServingRestrictions,
                  ("openAuctionStatus" .=) <$> _cOpenAuctionStatus])

--
-- /See:/ 'targetingValueDayPartTargetingDayPart' smart constructor.
data TargetingValueDayPartTargetingDayPart = TargetingValueDayPartTargetingDayPart'
    { _tvdptdpEndHour     :: !(Maybe (Textual Int32))
    , _tvdptdpStartHour   :: !(Maybe (Textual Int32))
    , _tvdptdpStartMinute :: !(Maybe (Textual Int32))
    , _tvdptdpDayOfWeek   :: !(Maybe Text)
    , _tvdptdpEndMinute   :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    TargetingValueDayPartTargetingDayPart'
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
      . mapping _Coerce

tvdptdpStartHour :: Lens' TargetingValueDayPartTargetingDayPart (Maybe Int32)
tvdptdpStartHour
  = lens _tvdptdpStartHour
      (\ s a -> s{_tvdptdpStartHour = a})
      . mapping _Coerce

tvdptdpStartMinute :: Lens' TargetingValueDayPartTargetingDayPart (Maybe Int32)
tvdptdpStartMinute
  = lens _tvdptdpStartMinute
      (\ s a -> s{_tvdptdpStartMinute = a})
      . mapping _Coerce

tvdptdpDayOfWeek :: Lens' TargetingValueDayPartTargetingDayPart (Maybe Text)
tvdptdpDayOfWeek
  = lens _tvdptdpDayOfWeek
      (\ s a -> s{_tvdptdpDayOfWeek = a})

tvdptdpEndMinute :: Lens' TargetingValueDayPartTargetingDayPart (Maybe Int32)
tvdptdpEndMinute
  = lens _tvdptdpEndMinute
      (\ s a -> s{_tvdptdpEndMinute = a})
      . mapping _Coerce

instance FromJSON
         TargetingValueDayPartTargetingDayPart where
        parseJSON
          = withObject "TargetingValueDayPartTargetingDayPart"
              (\ o ->
                 TargetingValueDayPartTargetingDayPart' <$>
                   (o .:? "endHour") <*> (o .:? "startHour") <*>
                     (o .:? "startMinute")
                     <*> (o .:? "dayOfWeek")
                     <*> (o .:? "endMinute"))

instance ToJSON TargetingValueDayPartTargetingDayPart
         where
        toJSON TargetingValueDayPartTargetingDayPart'{..}
          = object
              (catMaybes
                 [("endHour" .=) <$> _tvdptdpEndHour,
                  ("startHour" .=) <$> _tvdptdpStartHour,
                  ("startMinute" .=) <$> _tvdptdpStartMinute,
                  ("dayOfWeek" .=) <$> _tvdptdpDayOfWeek,
                  ("endMinute" .=) <$> _tvdptdpEndMinute])

-- | Value of the dimension.
--
-- /See:/ 'dimensionDimensionValue' smart constructor.
data DimensionDimensionValue = DimensionDimensionValue'
    { _ddvName :: !(Maybe Text)
    , _ddvId   :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DimensionDimensionValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddvName'
--
-- * 'ddvId'
dimensionDimensionValue
    :: DimensionDimensionValue
dimensionDimensionValue =
    DimensionDimensionValue'
    { _ddvName = Nothing
    , _ddvId = Nothing
    }

-- | Name of the dimension mainly for debugging purposes.
ddvName :: Lens' DimensionDimensionValue (Maybe Text)
ddvName = lens _ddvName (\ s a -> s{_ddvName = a})

-- | Id of the dimension.
ddvId :: Lens' DimensionDimensionValue (Maybe Int32)
ddvId
  = lens _ddvId (\ s a -> s{_ddvId = a}) .
      mapping _Coerce

instance FromJSON DimensionDimensionValue where
        parseJSON
          = withObject "DimensionDimensionValue"
              (\ o ->
                 DimensionDimensionValue' <$>
                   (o .:? "name") <*> (o .:? "id"))

instance ToJSON DimensionDimensionValue where
        toJSON DimensionDimensionValue'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _ddvName, ("id" .=) <$> _ddvId])

--
-- /See:/ 'pretargetingConfigList' smart constructor.
data PretargetingConfigList = PretargetingConfigList'
    { _pclKind  :: !Text
    , _pclItems :: !(Maybe [PretargetingConfig])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    PretargetingConfigList'
    { _pclKind = "adexchangebuyer#pretargetingConfigList"
    , _pclItems = Nothing
    }

-- | Resource type.
pclKind :: Lens' PretargetingConfigList Text
pclKind = lens _pclKind (\ s a -> s{_pclKind = a})

-- | A list of pretargeting configs
pclItems :: Lens' PretargetingConfigList [PretargetingConfig]
pclItems
  = lens _pclItems (\ s a -> s{_pclItems = a}) .
      _Default
      . _Coerce

instance FromJSON PretargetingConfigList where
        parseJSON
          = withObject "PretargetingConfigList"
              (\ o ->
                 PretargetingConfigList' <$>
                   (o .:? "kind" .!=
                      "adexchangebuyer#pretargetingConfigList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON PretargetingConfigList where
        toJSON PretargetingConfigList'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _pclKind),
                  ("items" .=) <$> _pclItems])

--
-- /See:/ 'dealTermsNonGuaranteedFixedPriceTerms' smart constructor.
newtype DealTermsNonGuaranteedFixedPriceTerms = DealTermsNonGuaranteedFixedPriceTerms'
    { _dtngfptFixedPrices :: Maybe [PricePerBuyer]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DealTermsNonGuaranteedFixedPriceTerms' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtngfptFixedPrices'
dealTermsNonGuaranteedFixedPriceTerms
    :: DealTermsNonGuaranteedFixedPriceTerms
dealTermsNonGuaranteedFixedPriceTerms =
    DealTermsNonGuaranteedFixedPriceTerms'
    { _dtngfptFixedPrices = Nothing
    }

-- | Fixed price for the specified buyer.
dtngfptFixedPrices :: Lens' DealTermsNonGuaranteedFixedPriceTerms [PricePerBuyer]
dtngfptFixedPrices
  = lens _dtngfptFixedPrices
      (\ s a -> s{_dtngfptFixedPrices = a})
      . _Default
      . _Coerce

instance FromJSON
         DealTermsNonGuaranteedFixedPriceTerms where
        parseJSON
          = withObject "DealTermsNonGuaranteedFixedPriceTerms"
              (\ o ->
                 DealTermsNonGuaranteedFixedPriceTerms' <$>
                   (o .:? "fixedPrices" .!= mempty))

instance ToJSON DealTermsNonGuaranteedFixedPriceTerms
         where
        toJSON DealTermsNonGuaranteedFixedPriceTerms'{..}
          = object
              (catMaybes
                 [("fixedPrices" .=) <$> _dtngfptFixedPrices])

-- | The configuration data for an Ad Exchange performance report list.
--
-- /See:/ 'performanceReport' smart constructor.
data PerformanceReport = PerformanceReport'
    { _prFilteredBidRate         :: !(Maybe (Textual Double))
    , _prKind                    :: !Text
    , _prLatency95thPercentile   :: !(Maybe (Textual Double))
    , _prCookieMatcherStatusRate :: !(Maybe [JSONValue])
    , _prHostedMatchStatusRate   :: !(Maybe [JSONValue])
    , _prUnsuccessfulRequestRate :: !(Maybe (Textual Double))
    , _prBidRequestRate          :: !(Maybe (Textual Double))
    , _prQuotaThrottledLimit     :: !(Maybe (Textual Double))
    , _prQuotaConfiguredLimit    :: !(Maybe (Textual Double))
    , _prSuccessfulRequestRate   :: !(Maybe (Textual Double))
    , _prLatency85thPercentile   :: !(Maybe (Textual Double))
    , _prCalloutStatusRate       :: !(Maybe [JSONValue])
    , _prLatency50thPercentile   :: !(Maybe (Textual Double))
    , _prBidRate                 :: !(Maybe (Textual Double))
    , _prCreativeStatusRate      :: !(Maybe [JSONValue])
    , _prNoQuotaInRegion         :: !(Maybe (Textual Double))
    , _prRegion                  :: !(Maybe Text)
    , _prInventoryMatchRate      :: !(Maybe (Textual Double))
    , _prPixelMatchResponses     :: !(Maybe (Textual Double))
    , _prTimestamp               :: !(Maybe (Textual Int64))
    , _prPixelMatchRequests      :: !(Maybe (Textual Double))
    , _prOutOfQuota              :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    PerformanceReport'
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
      . mapping _Coerce

-- | Resource type.
prKind :: Lens' PerformanceReport Text
prKind = lens _prKind (\ s a -> s{_prKind = a})

-- | The 95th percentile round trip latency(ms) as perceived from Google
-- servers for the duration period covered by the report.
prLatency95thPercentile :: Lens' PerformanceReport (Maybe Double)
prLatency95thPercentile
  = lens _prLatency95thPercentile
      (\ s a -> s{_prLatency95thPercentile = a})
      . mapping _Coerce

-- | Average QPS for cookie matcher operations.
prCookieMatcherStatusRate :: Lens' PerformanceReport [JSONValue]
prCookieMatcherStatusRate
  = lens _prCookieMatcherStatusRate
      (\ s a -> s{_prCookieMatcherStatusRate = a})
      . _Default
      . _Coerce

-- | Average QPS for hosted match operations.
prHostedMatchStatusRate :: Lens' PerformanceReport [JSONValue]
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
      . mapping _Coerce

-- | The number of bid requests sent to your bidder.
prBidRequestRate :: Lens' PerformanceReport (Maybe Double)
prBidRequestRate
  = lens _prBidRequestRate
      (\ s a -> s{_prBidRequestRate = a})
      . mapping _Coerce

-- | The throttled quota limits for this account.
prQuotaThrottledLimit :: Lens' PerformanceReport (Maybe Double)
prQuotaThrottledLimit
  = lens _prQuotaThrottledLimit
      (\ s a -> s{_prQuotaThrottledLimit = a})
      . mapping _Coerce

-- | The configured quota limits for this account.
prQuotaConfiguredLimit :: Lens' PerformanceReport (Maybe Double)
prQuotaConfiguredLimit
  = lens _prQuotaConfiguredLimit
      (\ s a -> s{_prQuotaConfiguredLimit = a})
      . mapping _Coerce

-- | The number of properly formed bid responses received by our servers
-- within the deadline.
prSuccessfulRequestRate :: Lens' PerformanceReport (Maybe Double)
prSuccessfulRequestRate
  = lens _prSuccessfulRequestRate
      (\ s a -> s{_prSuccessfulRequestRate = a})
      . mapping _Coerce

-- | The 85th percentile round trip latency(ms) as perceived from Google
-- servers for the duration period covered by the report.
prLatency85thPercentile :: Lens' PerformanceReport (Maybe Double)
prLatency85thPercentile
  = lens _prLatency85thPercentile
      (\ s a -> s{_prLatency85thPercentile = a})
      . mapping _Coerce

-- | Rate of various prefiltering statuses per match. Please refer to the
-- callout-status-codes.txt file for different statuses.
prCalloutStatusRate :: Lens' PerformanceReport [JSONValue]
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
      . mapping _Coerce

-- | The number of bid responses with an ad.
prBidRate :: Lens' PerformanceReport (Maybe Double)
prBidRate
  = lens _prBidRate (\ s a -> s{_prBidRate = a}) .
      mapping _Coerce

-- | Rate of ads with a given status. Please refer to the
-- creative-status-codes.txt file for different statuses.
prCreativeStatusRate :: Lens' PerformanceReport [JSONValue]
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
      . mapping _Coerce

-- | The trading location of this data.
prRegion :: Lens' PerformanceReport (Maybe Text)
prRegion = lens _prRegion (\ s a -> s{_prRegion = a})

-- | The number of potential queries based on your pretargeting settings.
prInventoryMatchRate :: Lens' PerformanceReport (Maybe Double)
prInventoryMatchRate
  = lens _prInventoryMatchRate
      (\ s a -> s{_prInventoryMatchRate = a})
      . mapping _Coerce

-- | Average QPS for pixel match responses from clients.
prPixelMatchResponses :: Lens' PerformanceReport (Maybe Double)
prPixelMatchResponses
  = lens _prPixelMatchResponses
      (\ s a -> s{_prPixelMatchResponses = a})
      . mapping _Coerce

-- | The unix timestamp of the starting time of this performance data.
prTimestamp :: Lens' PerformanceReport (Maybe Int64)
prTimestamp
  = lens _prTimestamp (\ s a -> s{_prTimestamp = a}) .
      mapping _Coerce

-- | Average QPS for pixel match requests from clients.
prPixelMatchRequests :: Lens' PerformanceReport (Maybe Double)
prPixelMatchRequests
  = lens _prPixelMatchRequests
      (\ s a -> s{_prPixelMatchRequests = a})
      . mapping _Coerce

-- | Rate of various quota account statuses per quota check.
prOutOfQuota :: Lens' PerformanceReport (Maybe Double)
prOutOfQuota
  = lens _prOutOfQuota (\ s a -> s{_prOutOfQuota = a})
      . mapping _Coerce

instance FromJSON PerformanceReport where
        parseJSON
          = withObject "PerformanceReport"
              (\ o ->
                 PerformanceReport' <$>
                   (o .:? "filteredBidRate") <*>
                     (o .:? "kind" .!=
                        "adexchangebuyer#performanceReport")
                     <*> (o .:? "latency95thPercentile")
                     <*> (o .:? "cookieMatcherStatusRate" .!= mempty)
                     <*> (o .:? "hostedMatchStatusRate" .!= mempty)
                     <*> (o .:? "unsuccessfulRequestRate")
                     <*> (o .:? "bidRequestRate")
                     <*> (o .:? "quotaThrottledLimit")
                     <*> (o .:? "quotaConfiguredLimit")
                     <*> (o .:? "successfulRequestRate")
                     <*> (o .:? "latency85thPercentile")
                     <*> (o .:? "calloutStatusRate" .!= mempty)
                     <*> (o .:? "latency50thPercentile")
                     <*> (o .:? "bidRate")
                     <*> (o .:? "creativeStatusRate" .!= mempty)
                     <*> (o .:? "noQuotaInRegion")
                     <*> (o .:? "region")
                     <*> (o .:? "inventoryMatchRate")
                     <*> (o .:? "pixelMatchResponses")
                     <*> (o .:? "timestamp")
                     <*> (o .:? "pixelMatchRequests")
                     <*> (o .:? "outOfQuota"))

instance ToJSON PerformanceReport where
        toJSON PerformanceReport'{..}
          = object
              (catMaybes
                 [("filteredBidRate" .=) <$> _prFilteredBidRate,
                  Just ("kind" .= _prKind),
                  ("latency95thPercentile" .=) <$>
                    _prLatency95thPercentile,
                  ("cookieMatcherStatusRate" .=) <$>
                    _prCookieMatcherStatusRate,
                  ("hostedMatchStatusRate" .=) <$>
                    _prHostedMatchStatusRate,
                  ("unsuccessfulRequestRate" .=) <$>
                    _prUnsuccessfulRequestRate,
                  ("bidRequestRate" .=) <$> _prBidRequestRate,
                  ("quotaThrottledLimit" .=) <$>
                    _prQuotaThrottledLimit,
                  ("quotaConfiguredLimit" .=) <$>
                    _prQuotaConfiguredLimit,
                  ("successfulRequestRate" .=) <$>
                    _prSuccessfulRequestRate,
                  ("latency85thPercentile" .=) <$>
                    _prLatency85thPercentile,
                  ("calloutStatusRate" .=) <$> _prCalloutStatusRate,
                  ("latency50thPercentile" .=) <$>
                    _prLatency50thPercentile,
                  ("bidRate" .=) <$> _prBidRate,
                  ("creativeStatusRate" .=) <$> _prCreativeStatusRate,
                  ("noQuotaInRegion" .=) <$> _prNoQuotaInRegion,
                  ("region" .=) <$> _prRegion,
                  ("inventoryMatchRate" .=) <$> _prInventoryMatchRate,
                  ("pixelMatchResponses" .=) <$>
                    _prPixelMatchResponses,
                  ("timestamp" .=) <$> _prTimestamp,
                  ("pixelMatchRequests" .=) <$> _prPixelMatchRequests,
                  ("outOfQuota" .=) <$> _prOutOfQuota])

--
-- /See:/ 'pretargetingConfigExcludedPlacementsItem' smart constructor.
data PretargetingConfigExcludedPlacementsItem = PretargetingConfigExcludedPlacementsItem'
    { _pcepiToken :: !(Maybe Text)
    , _pcepiType  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PretargetingConfigExcludedPlacementsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcepiToken'
--
-- * 'pcepiType'
pretargetingConfigExcludedPlacementsItem
    :: PretargetingConfigExcludedPlacementsItem
pretargetingConfigExcludedPlacementsItem =
    PretargetingConfigExcludedPlacementsItem'
    { _pcepiToken = Nothing
    , _pcepiType = Nothing
    }

-- | The value of the placement. Interpretation depends on the placement
-- type, e.g. URL for a site placement, channel name for a channel
-- placement, app id for a mobile app placement.
pcepiToken :: Lens' PretargetingConfigExcludedPlacementsItem (Maybe Text)
pcepiToken
  = lens _pcepiToken (\ s a -> s{_pcepiToken = a})

-- | The type of the placement.
pcepiType :: Lens' PretargetingConfigExcludedPlacementsItem (Maybe Text)
pcepiType
  = lens _pcepiType (\ s a -> s{_pcepiType = a})

instance FromJSON
         PretargetingConfigExcludedPlacementsItem where
        parseJSON
          = withObject
              "PretargetingConfigExcludedPlacementsItem"
              (\ o ->
                 PretargetingConfigExcludedPlacementsItem' <$>
                   (o .:? "token") <*> (o .:? "type"))

instance ToJSON
         PretargetingConfigExcludedPlacementsItem where
        toJSON PretargetingConfigExcludedPlacementsItem'{..}
          = object
              (catMaybes
                 [("token" .=) <$> _pcepiToken,
                  ("type" .=) <$> _pcepiType])

--
-- /See:/ 'seller' smart constructor.
data Seller = Seller'
    { _sAccountId    :: !(Maybe Text)
    , _sSubAccountId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Seller'
    { _sAccountId = Nothing
    , _sSubAccountId = Nothing
    }

-- | The unique id for the seller. The seller fills in this field. The seller
-- account id is then available to buyer in the product.
sAccountId :: Lens' Seller (Maybe Text)
sAccountId
  = lens _sAccountId (\ s a -> s{_sAccountId = a})

-- | Optional sub-account id for the seller.
sSubAccountId :: Lens' Seller (Maybe Text)
sSubAccountId
  = lens _sSubAccountId
      (\ s a -> s{_sSubAccountId = a})

instance FromJSON Seller where
        parseJSON
          = withObject "Seller"
              (\ o ->
                 Seller' <$>
                   (o .:? "accountId") <*> (o .:? "subAccountId"))

instance ToJSON Seller where
        toJSON Seller'{..}
          = object
              (catMaybes
                 [("accountId" .=) <$> _sAccountId,
                  ("subAccountId" .=) <$> _sSubAccountId])

-- | Configuration data for an Ad Exchange buyer account.
--
-- /See:/ 'account' smart constructor.
data Account = Account'
    { _aMaximumTotalQps        :: !(Maybe (Textual Int32))
    , _aKind                   :: !Text
    , _aCookieMatchingURL      :: !(Maybe Text)
    , _aMaximumActiveCreatives :: !(Maybe (Textual Int32))
    , _aCookieMatchingNid      :: !(Maybe Text)
    , _aNumberActiveCreatives  :: !(Maybe (Textual Int32))
    , _aId                     :: !(Maybe (Textual Int32))
    , _aBidderLocation         :: !(Maybe [AccountBidderLocationItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Account' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aMaximumTotalQps'
--
-- * 'aKind'
--
-- * 'aCookieMatchingURL'
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
    Account'
    { _aMaximumTotalQps = Nothing
    , _aKind = "adexchangebuyer#account"
    , _aCookieMatchingURL = Nothing
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
      . mapping _Coerce

-- | Resource type.
aKind :: Lens' Account Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | The base URL used in cookie match requests.
aCookieMatchingURL :: Lens' Account (Maybe Text)
aCookieMatchingURL
  = lens _aCookieMatchingURL
      (\ s a -> s{_aCookieMatchingURL = a})

-- | The maximum number of active creatives that an account can have, where a
-- creative is active if it was inserted or bid with in the last 30 days.
-- Please contact your technical account manager if you need to change
-- this.
aMaximumActiveCreatives :: Lens' Account (Maybe Int32)
aMaximumActiveCreatives
  = lens _aMaximumActiveCreatives
      (\ s a -> s{_aMaximumActiveCreatives = a})
      . mapping _Coerce

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
      . mapping _Coerce

-- | Account id.
aId :: Lens' Account (Maybe Int32)
aId
  = lens _aId (\ s a -> s{_aId = a}) . mapping _Coerce

-- | Your bidder locations that have distinct URLs.
aBidderLocation :: Lens' Account [AccountBidderLocationItem]
aBidderLocation
  = lens _aBidderLocation
      (\ s a -> s{_aBidderLocation = a})
      . _Default
      . _Coerce

instance FromJSON Account where
        parseJSON
          = withObject "Account"
              (\ o ->
                 Account' <$>
                   (o .:? "maximumTotalQps") <*>
                     (o .:? "kind" .!= "adexchangebuyer#account")
                     <*> (o .:? "cookieMatchingUrl")
                     <*> (o .:? "maximumActiveCreatives")
                     <*> (o .:? "cookieMatchingNid")
                     <*> (o .:? "numberActiveCreatives")
                     <*> (o .:? "id")
                     <*> (o .:? "bidderLocation" .!= mempty))

instance ToJSON Account where
        toJSON Account'{..}
          = object
              (catMaybes
                 [("maximumTotalQps" .=) <$> _aMaximumTotalQps,
                  Just ("kind" .= _aKind),
                  ("cookieMatchingUrl" .=) <$> _aCookieMatchingURL,
                  ("maximumActiveCreatives" .=) <$>
                    _aMaximumActiveCreatives,
                  ("cookieMatchingNid" .=) <$> _aCookieMatchingNid,
                  ("numberActiveCreatives" .=) <$>
                    _aNumberActiveCreatives,
                  ("id" .=) <$> _aId,
                  ("bidderLocation" .=) <$> _aBidderLocation])

--
-- /See:/ 'deleteOrderDealsRequest' smart constructor.
data DeleteOrderDealsRequest = DeleteOrderDealsRequest'
    { _dodrUpdateAction           :: !(Maybe Text)
    , _dodrDealIds                :: !(Maybe [Text])
    , _dodrProposalRevisionNumber :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeleteOrderDealsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dodrUpdateAction'
--
-- * 'dodrDealIds'
--
-- * 'dodrProposalRevisionNumber'
deleteOrderDealsRequest
    :: DeleteOrderDealsRequest
deleteOrderDealsRequest =
    DeleteOrderDealsRequest'
    { _dodrUpdateAction = Nothing
    , _dodrDealIds = Nothing
    , _dodrProposalRevisionNumber = Nothing
    }

-- | Indicates an optional action to take on the proposal
dodrUpdateAction :: Lens' DeleteOrderDealsRequest (Maybe Text)
dodrUpdateAction
  = lens _dodrUpdateAction
      (\ s a -> s{_dodrUpdateAction = a})

-- | List of deals to delete for a given proposal
dodrDealIds :: Lens' DeleteOrderDealsRequest [Text]
dodrDealIds
  = lens _dodrDealIds (\ s a -> s{_dodrDealIds = a}) .
      _Default
      . _Coerce

-- | The last known proposal revision number.
dodrProposalRevisionNumber :: Lens' DeleteOrderDealsRequest (Maybe Int64)
dodrProposalRevisionNumber
  = lens _dodrProposalRevisionNumber
      (\ s a -> s{_dodrProposalRevisionNumber = a})
      . mapping _Coerce

instance FromJSON DeleteOrderDealsRequest where
        parseJSON
          = withObject "DeleteOrderDealsRequest"
              (\ o ->
                 DeleteOrderDealsRequest' <$>
                   (o .:? "updateAction") <*>
                     (o .:? "dealIds" .!= mempty)
                     <*> (o .:? "proposalRevisionNumber"))

instance ToJSON DeleteOrderDealsRequest where
        toJSON DeleteOrderDealsRequest'{..}
          = object
              (catMaybes
                 [("updateAction" .=) <$> _dodrUpdateAction,
                  ("dealIds" .=) <$> _dodrDealIds,
                  ("proposalRevisionNumber" .=) <$>
                    _dodrProposalRevisionNumber])

--
-- /See:/ 'contactInformation' smart constructor.
data ContactInformation = ContactInformation'
    { _ciEmail :: !(Maybe Text)
    , _ciName  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    ContactInformation'
    { _ciEmail = Nothing
    , _ciName = Nothing
    }

-- | Email address of the contact.
ciEmail :: Lens' ContactInformation (Maybe Text)
ciEmail = lens _ciEmail (\ s a -> s{_ciEmail = a})

-- | The name of the contact.
ciName :: Lens' ContactInformation (Maybe Text)
ciName = lens _ciName (\ s a -> s{_ciName = a})

instance FromJSON ContactInformation where
        parseJSON
          = withObject "ContactInformation"
              (\ o ->
                 ContactInformation' <$>
                   (o .:? "email") <*> (o .:? "name"))

instance ToJSON ContactInformation where
        toJSON ContactInformation'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _ciEmail, ("name" .=) <$> _ciName])

-- | A smaller image, for the advertiser logo.
--
-- /See:/ 'creativeNATiveAdLogo' smart constructor.
data CreativeNATiveAdLogo = CreativeNATiveAdLogo'
    { _cnatalHeight :: !(Maybe (Textual Int32))
    , _cnatalURL    :: !(Maybe Text)
    , _cnatalWidth  :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeNATiveAdLogo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnatalHeight'
--
-- * 'cnatalURL'
--
-- * 'cnatalWidth'
creativeNATiveAdLogo
    :: CreativeNATiveAdLogo
creativeNATiveAdLogo =
    CreativeNATiveAdLogo'
    { _cnatalHeight = Nothing
    , _cnatalURL = Nothing
    , _cnatalWidth = Nothing
    }

cnatalHeight :: Lens' CreativeNATiveAdLogo (Maybe Int32)
cnatalHeight
  = lens _cnatalHeight (\ s a -> s{_cnatalHeight = a})
      . mapping _Coerce

cnatalURL :: Lens' CreativeNATiveAdLogo (Maybe Text)
cnatalURL
  = lens _cnatalURL (\ s a -> s{_cnatalURL = a})

cnatalWidth :: Lens' CreativeNATiveAdLogo (Maybe Int32)
cnatalWidth
  = lens _cnatalWidth (\ s a -> s{_cnatalWidth = a}) .
      mapping _Coerce

instance FromJSON CreativeNATiveAdLogo where
        parseJSON
          = withObject "CreativeNATiveAdLogo"
              (\ o ->
                 CreativeNATiveAdLogo' <$>
                   (o .:? "height") <*> (o .:? "url") <*>
                     (o .:? "width"))

instance ToJSON CreativeNATiveAdLogo where
        toJSON CreativeNATiveAdLogo'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _cnatalHeight,
                  ("url" .=) <$> _cnatalURL,
                  ("width" .=) <$> _cnatalWidth])

--
-- /See:/ 'getOrderDealsResponse' smart constructor.
newtype GetOrderDealsResponse = GetOrderDealsResponse'
    { _godrDeals :: Maybe [MarketplaceDeal]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetOrderDealsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'godrDeals'
getOrderDealsResponse
    :: GetOrderDealsResponse
getOrderDealsResponse =
    GetOrderDealsResponse'
    { _godrDeals = Nothing
    }

-- | List of deals for the proposal
godrDeals :: Lens' GetOrderDealsResponse [MarketplaceDeal]
godrDeals
  = lens _godrDeals (\ s a -> s{_godrDeals = a}) .
      _Default
      . _Coerce

instance FromJSON GetOrderDealsResponse where
        parseJSON
          = withObject "GetOrderDealsResponse"
              (\ o ->
                 GetOrderDealsResponse' <$>
                   (o .:? "deals" .!= mempty))

instance ToJSON GetOrderDealsResponse where
        toJSON GetOrderDealsResponse'{..}
          = object (catMaybes [("deals" .=) <$> _godrDeals])

-- | The configuration data for an Ad Exchange performance report list.
--
-- /See:/ 'performanceReportList' smart constructor.
data PerformanceReportList = PerformanceReportList'
    { _prlKind              :: !Text
    , _prlPerformanceReport :: !(Maybe [PerformanceReport])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    PerformanceReportList'
    { _prlKind = "adexchangebuyer#performanceReportList"
    , _prlPerformanceReport = Nothing
    }

-- | Resource type.
prlKind :: Lens' PerformanceReportList Text
prlKind = lens _prlKind (\ s a -> s{_prlKind = a})

-- | A list of performance reports relevant for the account.
prlPerformanceReport :: Lens' PerformanceReportList [PerformanceReport]
prlPerformanceReport
  = lens _prlPerformanceReport
      (\ s a -> s{_prlPerformanceReport = a})
      . _Default
      . _Coerce

instance FromJSON PerformanceReportList where
        parseJSON
          = withObject "PerformanceReportList"
              (\ o ->
                 PerformanceReportList' <$>
                   (o .:? "kind" .!=
                      "adexchangebuyer#performanceReportList")
                     <*> (o .:? "performanceReport" .!= mempty))

instance ToJSON PerformanceReportList where
        toJSON PerformanceReportList'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _prlKind),
                  ("performanceReport" .=) <$> _prlPerformanceReport])

--
-- /See:/ 'pretargetingConfig' smart constructor.
data PretargetingConfig = PretargetingConfig'
    { _pcPlatforms                     :: !(Maybe [Text])
    , _pcMobileCarriers                :: !(Maybe [Textual Int64])
    , _pcVendorTypes                   :: !(Maybe [Textual Int64])
    , _pcExcludedGeoCriteriaIds        :: !(Maybe [Textual Int64])
    , _pcSupportedCreativeAttributes   :: !(Maybe [Textual Int64])
    , _pcUserLists                     :: !(Maybe [Textual Int64])
    , _pcKind                          :: !Text
    , _pcExcludedPlacements            :: !(Maybe [PretargetingConfigExcludedPlacementsItem])
    , _pcMobileDevices                 :: !(Maybe [Textual Int64])
    , _pcLanguages                     :: !(Maybe [Text])
    , _pcVerticals                     :: !(Maybe [Textual Int64])
    , _pcVideoPlayerSizes              :: !(Maybe [PretargetingConfigVideoPlayerSizesItem])
    , _pcConfigId                      :: !(Maybe (Textual Int64))
    , _pcPlacements                    :: !(Maybe [PretargetingConfigPlacementsItem])
    , _pcExcludedUserLists             :: !(Maybe [Textual Int64])
    , _pcConfigName                    :: !(Maybe Text)
    , _pcGeoCriteriaIds                :: !(Maybe [Textual Int64])
    , _pcDimensions                    :: !(Maybe [PretargetingConfigDimensionsItem])
    , _pcExcludedVerticals             :: !(Maybe [Textual Int64])
    , _pcCreativeType                  :: !(Maybe [Text])
    , _pcIsActive                      :: !(Maybe Bool)
    , _pcExcludedContentLabels         :: !(Maybe [Textual Int64])
    , _pcBillingId                     :: !(Maybe (Textual Int64))
    , _pcMobileOperatingSystemVersions :: !(Maybe [Textual Int64])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'pcVideoPlayerSizes'
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
    PretargetingConfig'
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
    , _pcVideoPlayerSizes = Nothing
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
pcExcludedPlacements :: Lens' PretargetingConfig [PretargetingConfigExcludedPlacementsItem]
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

-- | Video requests satisfying any of these player size constraints will
-- match.
pcVideoPlayerSizes :: Lens' PretargetingConfig [PretargetingConfigVideoPlayerSizesItem]
pcVideoPlayerSizes
  = lens _pcVideoPlayerSizes
      (\ s a -> s{_pcVideoPlayerSizes = a})
      . _Default
      . _Coerce

-- | The config id; generated automatically. Leave this field blank for
-- insert requests.
pcConfigId :: Lens' PretargetingConfig (Maybe Int64)
pcConfigId
  = lens _pcConfigId (\ s a -> s{_pcConfigId = a}) .
      mapping _Coerce

-- | Requests containing any of these placements will match.
pcPlacements :: Lens' PretargetingConfig [PretargetingConfigPlacementsItem]
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
pcDimensions :: Lens' PretargetingConfig [PretargetingConfigDimensionsItem]
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
  = lens _pcBillingId (\ s a -> s{_pcBillingId = a}) .
      mapping _Coerce

-- | Requests containing any of these mobile operating system version ids
-- will match. Values are from mobile-os.csv in the downloadable files
-- section.
pcMobileOperatingSystemVersions :: Lens' PretargetingConfig [Int64]
pcMobileOperatingSystemVersions
  = lens _pcMobileOperatingSystemVersions
      (\ s a -> s{_pcMobileOperatingSystemVersions = a})
      . _Default
      . _Coerce

instance FromJSON PretargetingConfig where
        parseJSON
          = withObject "PretargetingConfig"
              (\ o ->
                 PretargetingConfig' <$>
                   (o .:? "platforms" .!= mempty) <*>
                     (o .:? "mobileCarriers" .!= mempty)
                     <*> (o .:? "vendorTypes" .!= mempty)
                     <*> (o .:? "excludedGeoCriteriaIds" .!= mempty)
                     <*> (o .:? "supportedCreativeAttributes" .!= mempty)
                     <*> (o .:? "userLists" .!= mempty)
                     <*>
                     (o .:? "kind" .!=
                        "adexchangebuyer#pretargetingConfig")
                     <*> (o .:? "excludedPlacements" .!= mempty)
                     <*> (o .:? "mobileDevices" .!= mempty)
                     <*> (o .:? "languages" .!= mempty)
                     <*> (o .:? "verticals" .!= mempty)
                     <*> (o .:? "videoPlayerSizes" .!= mempty)
                     <*> (o .:? "configId")
                     <*> (o .:? "placements" .!= mempty)
                     <*> (o .:? "excludedUserLists" .!= mempty)
                     <*> (o .:? "configName")
                     <*> (o .:? "geoCriteriaIds" .!= mempty)
                     <*> (o .:? "dimensions" .!= mempty)
                     <*> (o .:? "excludedVerticals" .!= mempty)
                     <*> (o .:? "creativeType" .!= mempty)
                     <*> (o .:? "isActive")
                     <*> (o .:? "excludedContentLabels" .!= mempty)
                     <*> (o .:? "billingId")
                     <*>
                     (o .:? "mobileOperatingSystemVersions" .!= mempty))

instance ToJSON PretargetingConfig where
        toJSON PretargetingConfig'{..}
          = object
              (catMaybes
                 [("platforms" .=) <$> _pcPlatforms,
                  ("mobileCarriers" .=) <$> _pcMobileCarriers,
                  ("vendorTypes" .=) <$> _pcVendorTypes,
                  ("excludedGeoCriteriaIds" .=) <$>
                    _pcExcludedGeoCriteriaIds,
                  ("supportedCreativeAttributes" .=) <$>
                    _pcSupportedCreativeAttributes,
                  ("userLists" .=) <$> _pcUserLists,
                  Just ("kind" .= _pcKind),
                  ("excludedPlacements" .=) <$> _pcExcludedPlacements,
                  ("mobileDevices" .=) <$> _pcMobileDevices,
                  ("languages" .=) <$> _pcLanguages,
                  ("verticals" .=) <$> _pcVerticals,
                  ("videoPlayerSizes" .=) <$> _pcVideoPlayerSizes,
                  ("configId" .=) <$> _pcConfigId,
                  ("placements" .=) <$> _pcPlacements,
                  ("excludedUserLists" .=) <$> _pcExcludedUserLists,
                  ("configName" .=) <$> _pcConfigName,
                  ("geoCriteriaIds" .=) <$> _pcGeoCriteriaIds,
                  ("dimensions" .=) <$> _pcDimensions,
                  ("excludedVerticals" .=) <$> _pcExcludedVerticals,
                  ("creativeType" .=) <$> _pcCreativeType,
                  ("isActive" .=) <$> _pcIsActive,
                  ("excludedContentLabels" .=) <$>
                    _pcExcludedContentLabels,
                  ("billingId" .=) <$> _pcBillingId,
                  ("mobileOperatingSystemVersions" .=) <$>
                    _pcMobileOperatingSystemVersions])

-- | The filtering reasons for the creative. Read-only. This field should not
-- be set in requests.
--
-- /See:/ 'creativeFilteringReasons' smart constructor.
data CreativeFilteringReasons = CreativeFilteringReasons'
    { _cfrReasons :: !(Maybe [CreativeFilteringReasonsReasonsItem])
    , _cfrDate    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    CreativeFilteringReasons'
    { _cfrReasons = Nothing
    , _cfrDate = Nothing
    }

-- | The filtering reasons.
cfrReasons :: Lens' CreativeFilteringReasons [CreativeFilteringReasonsReasonsItem]
cfrReasons
  = lens _cfrReasons (\ s a -> s{_cfrReasons = a}) .
      _Default
      . _Coerce

-- | The date in ISO 8601 format for the data. The data is collected from
-- 00:00:00 to 23:59:59 in PST.
cfrDate :: Lens' CreativeFilteringReasons (Maybe Text)
cfrDate = lens _cfrDate (\ s a -> s{_cfrDate = a})

instance FromJSON CreativeFilteringReasons where
        parseJSON
          = withObject "CreativeFilteringReasons"
              (\ o ->
                 CreativeFilteringReasons' <$>
                   (o .:? "reasons" .!= mempty) <*> (o .:? "date"))

instance ToJSON CreativeFilteringReasons where
        toJSON CreativeFilteringReasons'{..}
          = object
              (catMaybes
                 [("reasons" .=) <$> _cfrReasons,
                  ("date" .=) <$> _cfrDate])

--
-- /See:/ 'targetingValueCreativeSize' smart constructor.
data TargetingValueCreativeSize = TargetingValueCreativeSize'
    { _tvcsSize             :: !(Maybe TargetingValueSize)
    , _tvcsCompanionSizes   :: !(Maybe [TargetingValueSize])
    , _tvcsCreativeSizeType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    TargetingValueCreativeSize'
    { _tvcsSize = Nothing
    , _tvcsCompanionSizes = Nothing
    , _tvcsCreativeSizeType = Nothing
    }

-- | For regular or video creative size type, specifies the size of the
-- creative.
tvcsSize :: Lens' TargetingValueCreativeSize (Maybe TargetingValueSize)
tvcsSize = lens _tvcsSize (\ s a -> s{_tvcsSize = a})

-- | For video size type, the list of companion sizes.
tvcsCompanionSizes :: Lens' TargetingValueCreativeSize [TargetingValueSize]
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

instance FromJSON TargetingValueCreativeSize where
        parseJSON
          = withObject "TargetingValueCreativeSize"
              (\ o ->
                 TargetingValueCreativeSize' <$>
                   (o .:? "size") <*>
                     (o .:? "companionSizes" .!= mempty)
                     <*> (o .:? "creativeSizeType"))

instance ToJSON TargetingValueCreativeSize where
        toJSON TargetingValueCreativeSize'{..}
          = object
              (catMaybes
                 [("size" .=) <$> _tvcsSize,
                  ("companionSizes" .=) <$> _tvcsCompanionSizes,
                  ("creativeSizeType" .=) <$> _tvcsCreativeSizeType])

--
-- /See:/ 'dealTermsGuaranteedFixedPriceTermsBillingInfo' smart constructor.
data DealTermsGuaranteedFixedPriceTermsBillingInfo = DealTermsGuaranteedFixedPriceTermsBillingInfo'
    { _dtgfptbiCurrencyConversionTimeMs   :: !(Maybe (Textual Int64))
    , _dtgfptbiPrice                      :: !(Maybe Price)
    , _dtgfptbiOriginalContractedQuantity :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DealTermsGuaranteedFixedPriceTermsBillingInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgfptbiCurrencyConversionTimeMs'
--
-- * 'dtgfptbiPrice'
--
-- * 'dtgfptbiOriginalContractedQuantity'
dealTermsGuaranteedFixedPriceTermsBillingInfo
    :: DealTermsGuaranteedFixedPriceTermsBillingInfo
dealTermsGuaranteedFixedPriceTermsBillingInfo =
    DealTermsGuaranteedFixedPriceTermsBillingInfo'
    { _dtgfptbiCurrencyConversionTimeMs = Nothing
    , _dtgfptbiPrice = Nothing
    , _dtgfptbiOriginalContractedQuantity = Nothing
    }

-- | The timestamp (in ms since epoch) when the original reservation price
-- for the deal was first converted to DFP currency. This is used to
-- convert the contracted price into advertiser\'s currency without
-- discrepancy.
dtgfptbiCurrencyConversionTimeMs :: Lens' DealTermsGuaranteedFixedPriceTermsBillingInfo (Maybe Int64)
dtgfptbiCurrencyConversionTimeMs
  = lens _dtgfptbiCurrencyConversionTimeMs
      (\ s a -> s{_dtgfptbiCurrencyConversionTimeMs = a})
      . mapping _Coerce

-- | The original reservation price for the deal, if the currency code is
-- different from the one used in negotiation.
dtgfptbiPrice :: Lens' DealTermsGuaranteedFixedPriceTermsBillingInfo (Maybe Price)
dtgfptbiPrice
  = lens _dtgfptbiPrice
      (\ s a -> s{_dtgfptbiPrice = a})

-- | The original contracted quantity (# impressions) for this deal. To
-- ensure delivery, sometimes publisher will book the deal with a
-- impression buffer, however clients are billed using the original
-- contracted quantity.
dtgfptbiOriginalContractedQuantity :: Lens' DealTermsGuaranteedFixedPriceTermsBillingInfo (Maybe Int64)
dtgfptbiOriginalContractedQuantity
  = lens _dtgfptbiOriginalContractedQuantity
      (\ s a -> s{_dtgfptbiOriginalContractedQuantity = a})
      . mapping _Coerce

instance FromJSON
         DealTermsGuaranteedFixedPriceTermsBillingInfo where
        parseJSON
          = withObject
              "DealTermsGuaranteedFixedPriceTermsBillingInfo"
              (\ o ->
                 DealTermsGuaranteedFixedPriceTermsBillingInfo' <$>
                   (o .:? "currencyConversionTimeMs") <*>
                     (o .:? "price")
                     <*> (o .:? "originalContractedQuantity"))

instance ToJSON
         DealTermsGuaranteedFixedPriceTermsBillingInfo where
        toJSON
          DealTermsGuaranteedFixedPriceTermsBillingInfo'{..}
          = object
              (catMaybes
                 [("currencyConversionTimeMs" .=) <$>
                    _dtgfptbiCurrencyConversionTimeMs,
                  ("price" .=) <$> _dtgfptbiPrice,
                  ("originalContractedQuantity" .=) <$>
                    _dtgfptbiOriginalContractedQuantity])

--
-- /See:/ 'getPublisherProFilesByAccountIdResponse' smart constructor.
newtype GetPublisherProFilesByAccountIdResponse = GetPublisherProFilesByAccountIdResponse'
    { _gppfbairProFiles :: Maybe [PublisherProFileAPIProto]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetPublisherProFilesByAccountIdResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gppfbairProFiles'
getPublisherProFilesByAccountIdResponse
    :: GetPublisherProFilesByAccountIdResponse
getPublisherProFilesByAccountIdResponse =
    GetPublisherProFilesByAccountIdResponse'
    { _gppfbairProFiles = Nothing
    }

-- | Profiles for the requested publisher
gppfbairProFiles :: Lens' GetPublisherProFilesByAccountIdResponse [PublisherProFileAPIProto]
gppfbairProFiles
  = lens _gppfbairProFiles
      (\ s a -> s{_gppfbairProFiles = a})
      . _Default
      . _Coerce

instance FromJSON
         GetPublisherProFilesByAccountIdResponse where
        parseJSON
          = withObject
              "GetPublisherProFilesByAccountIdResponse"
              (\ o ->
                 GetPublisherProFilesByAccountIdResponse' <$>
                   (o .:? "profiles" .!= mempty))

instance ToJSON
         GetPublisherProFilesByAccountIdResponse where
        toJSON GetPublisherProFilesByAccountIdResponse'{..}
          = object
              (catMaybes [("profiles" .=) <$> _gppfbairProFiles])

-- | Represents a proposal in the marketplace. A proposal is the unit of
-- negotiation between a seller and a buyer and contains deals which are
-- served. Each field in a proposal can have one of the following setting:
-- (readonly) - It is an error to try and set this field. (buyer-readonly)
-- - Only the seller can set this field. (seller-readonly) - Only the buyer
-- can set this field. (updatable) - The field is updatable at all times by
-- either buyer or the seller.
--
-- /See:/ 'proposal' smart constructor.
data Proposal = Proposal'
    { _pBuyerPrivateData           :: !(Maybe PrivateData)
    , _pIsSetupComplete            :: !(Maybe Bool)
    , _pInventorySource            :: !(Maybe Text)
    , _pBuyerContacts              :: !(Maybe [ContactInformation])
    , _pKind                       :: !Text
    , _pOriginatorRole             :: !(Maybe Text)
    , _pRevisionNumber             :: !(Maybe (Textual Int64))
    , _pBilledBuyer                :: !(Maybe Buyer)
    , _pPrivateAuctionId           :: !(Maybe Text)
    , _pIsRenegotiating            :: !(Maybe Bool)
    , _pHasSellerSignedOff         :: !(Maybe Bool)
    , _pSeller                     :: !(Maybe Seller)
    , _pProposalId                 :: !(Maybe Text)
    , _pName                       :: !(Maybe Text)
    , _pSellerContacts             :: !(Maybe [ContactInformation])
    , _pLabels                     :: !(Maybe [MarketplaceLabel])
    , _pRevisionTimeMs             :: !(Maybe (Textual Int64))
    , _pProposalState              :: !(Maybe Text)
    , _pLastUpdaterOrCommentorRole :: !(Maybe Text)
    , _pNegotiationId              :: !(Maybe Text)
    , _pHasBuyerSignedOff          :: !(Maybe Bool)
    , _pBuyer                      :: !(Maybe Buyer)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Proposal' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pBuyerPrivateData'
--
-- * 'pIsSetupComplete'
--
-- * 'pInventorySource'
--
-- * 'pBuyerContacts'
--
-- * 'pKind'
--
-- * 'pOriginatorRole'
--
-- * 'pRevisionNumber'
--
-- * 'pBilledBuyer'
--
-- * 'pPrivateAuctionId'
--
-- * 'pIsRenegotiating'
--
-- * 'pHasSellerSignedOff'
--
-- * 'pSeller'
--
-- * 'pProposalId'
--
-- * 'pName'
--
-- * 'pSellerContacts'
--
-- * 'pLabels'
--
-- * 'pRevisionTimeMs'
--
-- * 'pProposalState'
--
-- * 'pLastUpdaterOrCommentorRole'
--
-- * 'pNegotiationId'
--
-- * 'pHasBuyerSignedOff'
--
-- * 'pBuyer'
proposal
    :: Proposal
proposal =
    Proposal'
    { _pBuyerPrivateData = Nothing
    , _pIsSetupComplete = Nothing
    , _pInventorySource = Nothing
    , _pBuyerContacts = Nothing
    , _pKind = "adexchangebuyer#proposal"
    , _pOriginatorRole = Nothing
    , _pRevisionNumber = Nothing
    , _pBilledBuyer = Nothing
    , _pPrivateAuctionId = Nothing
    , _pIsRenegotiating = Nothing
    , _pHasSellerSignedOff = Nothing
    , _pSeller = Nothing
    , _pProposalId = Nothing
    , _pName = Nothing
    , _pSellerContacts = Nothing
    , _pLabels = Nothing
    , _pRevisionTimeMs = Nothing
    , _pProposalState = Nothing
    , _pLastUpdaterOrCommentorRole = Nothing
    , _pNegotiationId = Nothing
    , _pHasBuyerSignedOff = Nothing
    , _pBuyer = Nothing
    }

-- | Private data for buyer. (hidden from seller).
pBuyerPrivateData :: Lens' Proposal (Maybe PrivateData)
pBuyerPrivateData
  = lens _pBuyerPrivateData
      (\ s a -> s{_pBuyerPrivateData = a})

-- | True, if the buyside inventory setup is complete for this proposal.
-- (readonly, except via OrderSetupCompleted action)
pIsSetupComplete :: Lens' Proposal (Maybe Bool)
pIsSetupComplete
  = lens _pIsSetupComplete
      (\ s a -> s{_pIsSetupComplete = a})

-- | What exchange will provide this inventory (readonly, except on create).
pInventorySource :: Lens' Proposal (Maybe Text)
pInventorySource
  = lens _pInventorySource
      (\ s a -> s{_pInventorySource = a})

-- | Optional contact information fort the buyer. (seller-readonly)
pBuyerContacts :: Lens' Proposal [ContactInformation]
pBuyerContacts
  = lens _pBuyerContacts
      (\ s a -> s{_pBuyerContacts = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"adexchangebuyer#proposal\".
pKind :: Lens' Proposal Text
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | Indicates whether the buyer\/seller created the proposal.(readonly)
pOriginatorRole :: Lens' Proposal (Maybe Text)
pOriginatorRole
  = lens _pOriginatorRole
      (\ s a -> s{_pOriginatorRole = a})

-- | The revision number for the proposal (readonly).
pRevisionNumber :: Lens' Proposal (Maybe Int64)
pRevisionNumber
  = lens _pRevisionNumber
      (\ s a -> s{_pRevisionNumber = a})
      . mapping _Coerce

-- | Reference to the buyer that will get billed for this proposal.
-- (readonly)
pBilledBuyer :: Lens' Proposal (Maybe Buyer)
pBilledBuyer
  = lens _pBilledBuyer (\ s a -> s{_pBilledBuyer = a})

-- | Optional private auction id if this proposal is a private auction
-- proposal.
pPrivateAuctionId :: Lens' Proposal (Maybe Text)
pPrivateAuctionId
  = lens _pPrivateAuctionId
      (\ s a -> s{_pPrivateAuctionId = a})

-- | True if the proposal is being renegotiated (readonly).
pIsRenegotiating :: Lens' Proposal (Maybe Bool)
pIsRenegotiating
  = lens _pIsRenegotiating
      (\ s a -> s{_pIsRenegotiating = a})

-- | When an proposal is in an accepted state, indicates whether the buyer
-- has signed off Once both sides have signed off on a deal, the proposal
-- can be finalized by the seller. (buyer-readonly)
pHasSellerSignedOff :: Lens' Proposal (Maybe Bool)
pHasSellerSignedOff
  = lens _pHasSellerSignedOff
      (\ s a -> s{_pHasSellerSignedOff = a})

-- | Reference to the seller on the proposal. (readonly, except on create)
pSeller :: Lens' Proposal (Maybe Seller)
pSeller = lens _pSeller (\ s a -> s{_pSeller = a})

-- | The unique id of the proposal. (readonly).
pProposalId :: Lens' Proposal (Maybe Text)
pProposalId
  = lens _pProposalId (\ s a -> s{_pProposalId = a})

-- | The name for the proposal (updatable)
pName :: Lens' Proposal (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

-- | Optional contact information for the seller (buyer-readonly).
pSellerContacts :: Lens' Proposal [ContactInformation]
pSellerContacts
  = lens _pSellerContacts
      (\ s a -> s{_pSellerContacts = a})
      . _Default
      . _Coerce

-- | List of labels associated with the proposal. (readonly)
pLabels :: Lens' Proposal [MarketplaceLabel]
pLabels
  = lens _pLabels (\ s a -> s{_pLabels = a}) . _Default
      . _Coerce

-- | The time (ms since epoch) when the proposal was last revised (readonly).
pRevisionTimeMs :: Lens' Proposal (Maybe Int64)
pRevisionTimeMs
  = lens _pRevisionTimeMs
      (\ s a -> s{_pRevisionTimeMs = a})
      . mapping _Coerce

-- | The current state of the proposal. (readonly)
pProposalState :: Lens' Proposal (Maybe Text)
pProposalState
  = lens _pProposalState
      (\ s a -> s{_pProposalState = a})

-- | The role of the last user that either updated the proposal or left a
-- comment. (readonly)
pLastUpdaterOrCommentorRole :: Lens' Proposal (Maybe Text)
pLastUpdaterOrCommentorRole
  = lens _pLastUpdaterOrCommentorRole
      (\ s a -> s{_pLastUpdaterOrCommentorRole = a})

-- | Optional negotiation id if this proposal is a preferred deal proposal.
pNegotiationId :: Lens' Proposal (Maybe Text)
pNegotiationId
  = lens _pNegotiationId
      (\ s a -> s{_pNegotiationId = a})

-- | When an proposal is in an accepted state, indicates whether the buyer
-- has signed off Once both sides have signed off on a deal, the proposal
-- can be finalized by the seller. (seller-readonly)
pHasBuyerSignedOff :: Lens' Proposal (Maybe Bool)
pHasBuyerSignedOff
  = lens _pHasBuyerSignedOff
      (\ s a -> s{_pHasBuyerSignedOff = a})

-- | Reference to the buyer on the proposal. (readonly, except on create)
pBuyer :: Lens' Proposal (Maybe Buyer)
pBuyer = lens _pBuyer (\ s a -> s{_pBuyer = a})

instance FromJSON Proposal where
        parseJSON
          = withObject "Proposal"
              (\ o ->
                 Proposal' <$>
                   (o .:? "buyerPrivateData") <*>
                     (o .:? "isSetupComplete")
                     <*> (o .:? "inventorySource")
                     <*> (o .:? "buyerContacts" .!= mempty)
                     <*> (o .:? "kind" .!= "adexchangebuyer#proposal")
                     <*> (o .:? "originatorRole")
                     <*> (o .:? "revisionNumber")
                     <*> (o .:? "billedBuyer")
                     <*> (o .:? "privateAuctionId")
                     <*> (o .:? "isRenegotiating")
                     <*> (o .:? "hasSellerSignedOff")
                     <*> (o .:? "seller")
                     <*> (o .:? "proposalId")
                     <*> (o .:? "name")
                     <*> (o .:? "sellerContacts" .!= mempty)
                     <*> (o .:? "labels" .!= mempty)
                     <*> (o .:? "revisionTimeMs")
                     <*> (o .:? "proposalState")
                     <*> (o .:? "lastUpdaterOrCommentorRole")
                     <*> (o .:? "negotiationId")
                     <*> (o .:? "hasBuyerSignedOff")
                     <*> (o .:? "buyer"))

instance ToJSON Proposal where
        toJSON Proposal'{..}
          = object
              (catMaybes
                 [("buyerPrivateData" .=) <$> _pBuyerPrivateData,
                  ("isSetupComplete" .=) <$> _pIsSetupComplete,
                  ("inventorySource" .=) <$> _pInventorySource,
                  ("buyerContacts" .=) <$> _pBuyerContacts,
                  Just ("kind" .= _pKind),
                  ("originatorRole" .=) <$> _pOriginatorRole,
                  ("revisionNumber" .=) <$> _pRevisionNumber,
                  ("billedBuyer" .=) <$> _pBilledBuyer,
                  ("privateAuctionId" .=) <$> _pPrivateAuctionId,
                  ("isRenegotiating" .=) <$> _pIsRenegotiating,
                  ("hasSellerSignedOff" .=) <$> _pHasSellerSignedOff,
                  ("seller" .=) <$> _pSeller,
                  ("proposalId" .=) <$> _pProposalId,
                  ("name" .=) <$> _pName,
                  ("sellerContacts" .=) <$> _pSellerContacts,
                  ("labels" .=) <$> _pLabels,
                  ("revisionTimeMs" .=) <$> _pRevisionTimeMs,
                  ("proposalState" .=) <$> _pProposalState,
                  ("lastUpdaterOrCommentorRole" .=) <$>
                    _pLastUpdaterOrCommentorRole,
                  ("negotiationId" .=) <$> _pNegotiationId,
                  ("hasBuyerSignedOff" .=) <$> _pHasBuyerSignedOff,
                  ("buyer" .=) <$> _pBuyer])

-- | A billing info feed lists Billing Info the Ad Exchange buyer account has
-- access to. Each entry in the feed corresponds to a single billing info.
--
-- /See:/ 'billingInfoList' smart constructor.
data BillingInfoList = BillingInfoList'
    { _bilKind  :: !Text
    , _bilItems :: !(Maybe [BillingInfo])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    BillingInfoList'
    { _bilKind = "adexchangebuyer#billingInfoList"
    , _bilItems = Nothing
    }

-- | Resource type.
bilKind :: Lens' BillingInfoList Text
bilKind = lens _bilKind (\ s a -> s{_bilKind = a})

-- | A list of billing info relevant for your account.
bilItems :: Lens' BillingInfoList [BillingInfo]
bilItems
  = lens _bilItems (\ s a -> s{_bilItems = a}) .
      _Default
      . _Coerce

instance FromJSON BillingInfoList where
        parseJSON
          = withObject "BillingInfoList"
              (\ o ->
                 BillingInfoList' <$>
                   (o .:? "kind" .!= "adexchangebuyer#billingInfoList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON BillingInfoList where
        toJSON BillingInfoList'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _bilKind),
                  ("items" .=) <$> _bilItems])

--
-- /See:/ 'addOrderNotesResponse' smart constructor.
newtype AddOrderNotesResponse = AddOrderNotesResponse'
    { _aNotes :: Maybe [MarketplaceNote]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddOrderNotesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aNotes'
addOrderNotesResponse
    :: AddOrderNotesResponse
addOrderNotesResponse =
    AddOrderNotesResponse'
    { _aNotes = Nothing
    }

aNotes :: Lens' AddOrderNotesResponse [MarketplaceNote]
aNotes
  = lens _aNotes (\ s a -> s{_aNotes = a}) . _Default .
      _Coerce

instance FromJSON AddOrderNotesResponse where
        parseJSON
          = withObject "AddOrderNotesResponse"
              (\ o ->
                 AddOrderNotesResponse' <$>
                   (o .:? "notes" .!= mempty))

instance ToJSON AddOrderNotesResponse where
        toJSON AddOrderNotesResponse'{..}
          = object (catMaybes [("notes" .=) <$> _aNotes])

--
-- /See:/ 'targetingValueSize' smart constructor.
data TargetingValueSize = TargetingValueSize'
    { _tvsHeight :: !(Maybe (Textual Int32))
    , _tvsWidth  :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    TargetingValueSize'
    { _tvsHeight = Nothing
    , _tvsWidth = Nothing
    }

-- | The height of the creative.
tvsHeight :: Lens' TargetingValueSize (Maybe Int32)
tvsHeight
  = lens _tvsHeight (\ s a -> s{_tvsHeight = a}) .
      mapping _Coerce

-- | The width of the creative.
tvsWidth :: Lens' TargetingValueSize (Maybe Int32)
tvsWidth
  = lens _tvsWidth (\ s a -> s{_tvsWidth = a}) .
      mapping _Coerce

instance FromJSON TargetingValueSize where
        parseJSON
          = withObject "TargetingValueSize"
              (\ o ->
                 TargetingValueSize' <$>
                   (o .:? "height") <*> (o .:? "width"))

instance ToJSON TargetingValueSize where
        toJSON TargetingValueSize'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _tvsHeight,
                  ("width" .=) <$> _tvsWidth])

--
-- /See:/ 'updatePrivateAuctionProposalRequest' smart constructor.
data UpdatePrivateAuctionProposalRequest = UpdatePrivateAuctionProposalRequest'
    { _upaprExternalDealId         :: !(Maybe Text)
    , _upaprUpdateAction           :: !(Maybe Text)
    , _upaprNote                   :: !(Maybe MarketplaceNote)
    , _upaprProposalRevisionNumber :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UpdatePrivateAuctionProposalRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upaprExternalDealId'
--
-- * 'upaprUpdateAction'
--
-- * 'upaprNote'
--
-- * 'upaprProposalRevisionNumber'
updatePrivateAuctionProposalRequest
    :: UpdatePrivateAuctionProposalRequest
updatePrivateAuctionProposalRequest =
    UpdatePrivateAuctionProposalRequest'
    { _upaprExternalDealId = Nothing
    , _upaprUpdateAction = Nothing
    , _upaprNote = Nothing
    , _upaprProposalRevisionNumber = Nothing
    }

-- | The externalDealId of the deal to be updated.
upaprExternalDealId :: Lens' UpdatePrivateAuctionProposalRequest (Maybe Text)
upaprExternalDealId
  = lens _upaprExternalDealId
      (\ s a -> s{_upaprExternalDealId = a})

-- | The proposed action on the private auction proposal.
upaprUpdateAction :: Lens' UpdatePrivateAuctionProposalRequest (Maybe Text)
upaprUpdateAction
  = lens _upaprUpdateAction
      (\ s a -> s{_upaprUpdateAction = a})

-- | Optional note to be added.
upaprNote :: Lens' UpdatePrivateAuctionProposalRequest (Maybe MarketplaceNote)
upaprNote
  = lens _upaprNote (\ s a -> s{_upaprNote = a})

-- | The current revision number of the proposal to be updated.
upaprProposalRevisionNumber :: Lens' UpdatePrivateAuctionProposalRequest (Maybe Int64)
upaprProposalRevisionNumber
  = lens _upaprProposalRevisionNumber
      (\ s a -> s{_upaprProposalRevisionNumber = a})
      . mapping _Coerce

instance FromJSON UpdatePrivateAuctionProposalRequest
         where
        parseJSON
          = withObject "UpdatePrivateAuctionProposalRequest"
              (\ o ->
                 UpdatePrivateAuctionProposalRequest' <$>
                   (o .:? "externalDealId") <*> (o .:? "updateAction")
                     <*> (o .:? "note")
                     <*> (o .:? "proposalRevisionNumber"))

instance ToJSON UpdatePrivateAuctionProposalRequest
         where
        toJSON UpdatePrivateAuctionProposalRequest'{..}
          = object
              (catMaybes
                 [("externalDealId" .=) <$> _upaprExternalDealId,
                  ("updateAction" .=) <$> _upaprUpdateAction,
                  ("note" .=) <$> _upaprNote,
                  ("proposalRevisionNumber" .=) <$>
                    _upaprProposalRevisionNumber])

--
-- /See:/ 'pretargetingConfigDimensionsItem' smart constructor.
data PretargetingConfigDimensionsItem = PretargetingConfigDimensionsItem'
    { _pcdiHeight :: !(Maybe (Textual Int64))
    , _pcdiWidth  :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PretargetingConfigDimensionsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcdiHeight'
--
-- * 'pcdiWidth'
pretargetingConfigDimensionsItem
    :: PretargetingConfigDimensionsItem
pretargetingConfigDimensionsItem =
    PretargetingConfigDimensionsItem'
    { _pcdiHeight = Nothing
    , _pcdiWidth = Nothing
    }

-- | Height in pixels.
pcdiHeight :: Lens' PretargetingConfigDimensionsItem (Maybe Int64)
pcdiHeight
  = lens _pcdiHeight (\ s a -> s{_pcdiHeight = a}) .
      mapping _Coerce

-- | Width in pixels.
pcdiWidth :: Lens' PretargetingConfigDimensionsItem (Maybe Int64)
pcdiWidth
  = lens _pcdiWidth (\ s a -> s{_pcdiWidth = a}) .
      mapping _Coerce

instance FromJSON PretargetingConfigDimensionsItem
         where
        parseJSON
          = withObject "PretargetingConfigDimensionsItem"
              (\ o ->
                 PretargetingConfigDimensionsItem' <$>
                   (o .:? "height") <*> (o .:? "width"))

instance ToJSON PretargetingConfigDimensionsItem
         where
        toJSON PretargetingConfigDimensionsItem'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _pcdiHeight,
                  ("width" .=) <$> _pcdiWidth])

-- | This message carries publisher provided forecasting information.
--
-- /See:/ 'publisherProvidedForecast' smart constructor.
data PublisherProvidedForecast = PublisherProvidedForecast'
    { _ppfWeeklyImpressions :: !(Maybe (Textual Int64))
    , _ppfWeeklyUniques     :: !(Maybe (Textual Int64))
    , _ppfDimensions        :: !(Maybe [Dimension])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PublisherProvidedForecast' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppfWeeklyImpressions'
--
-- * 'ppfWeeklyUniques'
--
-- * 'ppfDimensions'
publisherProvidedForecast
    :: PublisherProvidedForecast
publisherProvidedForecast =
    PublisherProvidedForecast'
    { _ppfWeeklyImpressions = Nothing
    , _ppfWeeklyUniques = Nothing
    , _ppfDimensions = Nothing
    }

-- | Publisher provided weekly impressions.
ppfWeeklyImpressions :: Lens' PublisherProvidedForecast (Maybe Int64)
ppfWeeklyImpressions
  = lens _ppfWeeklyImpressions
      (\ s a -> s{_ppfWeeklyImpressions = a})
      . mapping _Coerce

-- | Publisher provided weekly uniques.
ppfWeeklyUniques :: Lens' PublisherProvidedForecast (Maybe Int64)
ppfWeeklyUniques
  = lens _ppfWeeklyUniques
      (\ s a -> s{_ppfWeeklyUniques = a})
      . mapping _Coerce

-- | Publisher provided dimensions. E.g. geo, sizes etc...
ppfDimensions :: Lens' PublisherProvidedForecast [Dimension]
ppfDimensions
  = lens _ppfDimensions
      (\ s a -> s{_ppfDimensions = a})
      . _Default
      . _Coerce

instance FromJSON PublisherProvidedForecast where
        parseJSON
          = withObject "PublisherProvidedForecast"
              (\ o ->
                 PublisherProvidedForecast' <$>
                   (o .:? "weeklyImpressions") <*>
                     (o .:? "weeklyUniques")
                     <*> (o .:? "dimensions" .!= mempty))

instance ToJSON PublisherProvidedForecast where
        toJSON PublisherProvidedForecast'{..}
          = object
              (catMaybes
                 [("weeklyImpressions" .=) <$> _ppfWeeklyImpressions,
                  ("weeklyUniques" .=) <$> _ppfWeeklyUniques,
                  ("dimensions" .=) <$> _ppfDimensions])

--
-- /See:/ 'targetingValue' smart constructor.
data TargetingValue = TargetingValue'
    { _tvCreativeSizeValue     :: !(Maybe TargetingValueCreativeSize)
    , _tvStringValue           :: !(Maybe Text)
    , _tvLongValue             :: !(Maybe (Textual Int64))
    , _tvDayPartTargetingValue :: !(Maybe TargetingValueDayPartTargeting)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    TargetingValue'
    { _tvCreativeSizeValue = Nothing
    , _tvStringValue = Nothing
    , _tvLongValue = Nothing
    , _tvDayPartTargetingValue = Nothing
    }

-- | The creative size value to exclude\/include.
tvCreativeSizeValue :: Lens' TargetingValue (Maybe TargetingValueCreativeSize)
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
  = lens _tvLongValue (\ s a -> s{_tvLongValue = a}) .
      mapping _Coerce

-- | The daypart targeting to include \/ exclude. Filled in when the key is
-- GOOG_DAYPART_TARGETING.
tvDayPartTargetingValue :: Lens' TargetingValue (Maybe TargetingValueDayPartTargeting)
tvDayPartTargetingValue
  = lens _tvDayPartTargetingValue
      (\ s a -> s{_tvDayPartTargetingValue = a})

instance FromJSON TargetingValue where
        parseJSON
          = withObject "TargetingValue"
              (\ o ->
                 TargetingValue' <$>
                   (o .:? "creativeSizeValue") <*> (o .:? "stringValue")
                     <*> (o .:? "longValue")
                     <*> (o .:? "dayPartTargetingValue"))

instance ToJSON TargetingValue where
        toJSON TargetingValue'{..}
          = object
              (catMaybes
                 [("creativeSizeValue" .=) <$> _tvCreativeSizeValue,
                  ("stringValue" .=) <$> _tvStringValue,
                  ("longValue" .=) <$> _tvLongValue,
                  ("dayPartTargetingValue" .=) <$>
                    _tvDayPartTargetingValue])

-- | The app icon, for app download ads.
--
-- /See:/ 'creativeNATiveAdAppIcon' smart constructor.
data CreativeNATiveAdAppIcon = CreativeNATiveAdAppIcon'
    { _cnataaiHeight :: !(Maybe (Textual Int32))
    , _cnataaiURL    :: !(Maybe Text)
    , _cnataaiWidth  :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeNATiveAdAppIcon' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnataaiHeight'
--
-- * 'cnataaiURL'
--
-- * 'cnataaiWidth'
creativeNATiveAdAppIcon
    :: CreativeNATiveAdAppIcon
creativeNATiveAdAppIcon =
    CreativeNATiveAdAppIcon'
    { _cnataaiHeight = Nothing
    , _cnataaiURL = Nothing
    , _cnataaiWidth = Nothing
    }

cnataaiHeight :: Lens' CreativeNATiveAdAppIcon (Maybe Int32)
cnataaiHeight
  = lens _cnataaiHeight
      (\ s a -> s{_cnataaiHeight = a})
      . mapping _Coerce

cnataaiURL :: Lens' CreativeNATiveAdAppIcon (Maybe Text)
cnataaiURL
  = lens _cnataaiURL (\ s a -> s{_cnataaiURL = a})

cnataaiWidth :: Lens' CreativeNATiveAdAppIcon (Maybe Int32)
cnataaiWidth
  = lens _cnataaiWidth (\ s a -> s{_cnataaiWidth = a})
      . mapping _Coerce

instance FromJSON CreativeNATiveAdAppIcon where
        parseJSON
          = withObject "CreativeNATiveAdAppIcon"
              (\ o ->
                 CreativeNATiveAdAppIcon' <$>
                   (o .:? "height") <*> (o .:? "url") <*>
                     (o .:? "width"))

instance ToJSON CreativeNATiveAdAppIcon where
        toJSON CreativeNATiveAdAppIcon'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _cnataaiHeight,
                  ("url" .=) <$> _cnataaiURL,
                  ("width" .=) <$> _cnataaiWidth])

--
-- /See:/ 'price' smart constructor.
data Price = Price'
    { _pCurrencyCode :: !(Maybe Text)
    , _pAmountMicros :: !(Maybe (Textual Double))
    , _pPricingType  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Price' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pCurrencyCode'
--
-- * 'pAmountMicros'
--
-- * 'pPricingType'
price
    :: Price
price =
    Price'
    { _pCurrencyCode = Nothing
    , _pAmountMicros = Nothing
    , _pPricingType = Nothing
    }

-- | The currency code for the price.
pCurrencyCode :: Lens' Price (Maybe Text)
pCurrencyCode
  = lens _pCurrencyCode
      (\ s a -> s{_pCurrencyCode = a})

-- | The price value in micros.
pAmountMicros :: Lens' Price (Maybe Double)
pAmountMicros
  = lens _pAmountMicros
      (\ s a -> s{_pAmountMicros = a})
      . mapping _Coerce

-- | The pricing type for the deal\/product.
pPricingType :: Lens' Price (Maybe Text)
pPricingType
  = lens _pPricingType (\ s a -> s{_pPricingType = a})

instance FromJSON Price where
        parseJSON
          = withObject "Price"
              (\ o ->
                 Price' <$>
                   (o .:? "currencyCode") <*> (o .:? "amountMicros") <*>
                     (o .:? "pricingType"))

instance ToJSON Price where
        toJSON Price'{..}
          = object
              (catMaybes
                 [("currencyCode" .=) <$> _pCurrencyCode,
                  ("amountMicros" .=) <$> _pAmountMicros,
                  ("pricingType" .=) <$> _pPricingType])

--
-- /See:/ 'pretargetingConfigVideoPlayerSizesItem' smart constructor.
data PretargetingConfigVideoPlayerSizesItem = PretargetingConfigVideoPlayerSizesItem'
    { _pcvpsiMinWidth    :: !(Maybe (Textual Int64))
    , _pcvpsiAspectRatio :: !(Maybe Text)
    , _pcvpsiMinHeight   :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PretargetingConfigVideoPlayerSizesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcvpsiMinWidth'
--
-- * 'pcvpsiAspectRatio'
--
-- * 'pcvpsiMinHeight'
pretargetingConfigVideoPlayerSizesItem
    :: PretargetingConfigVideoPlayerSizesItem
pretargetingConfigVideoPlayerSizesItem =
    PretargetingConfigVideoPlayerSizesItem'
    { _pcvpsiMinWidth = Nothing
    , _pcvpsiAspectRatio = Nothing
    , _pcvpsiMinHeight = Nothing
    }

-- | The minimum player width in pixels. Leave this field blank to match any
-- player width.
pcvpsiMinWidth :: Lens' PretargetingConfigVideoPlayerSizesItem (Maybe Int64)
pcvpsiMinWidth
  = lens _pcvpsiMinWidth
      (\ s a -> s{_pcvpsiMinWidth = a})
      . mapping _Coerce

-- | The type of aspect ratio. Leave this field blank to match all aspect
-- ratios.
pcvpsiAspectRatio :: Lens' PretargetingConfigVideoPlayerSizesItem (Maybe Text)
pcvpsiAspectRatio
  = lens _pcvpsiAspectRatio
      (\ s a -> s{_pcvpsiAspectRatio = a})

-- | The minimum player height in pixels. Leave this field blank to match any
-- player height.
pcvpsiMinHeight :: Lens' PretargetingConfigVideoPlayerSizesItem (Maybe Int64)
pcvpsiMinHeight
  = lens _pcvpsiMinHeight
      (\ s a -> s{_pcvpsiMinHeight = a})
      . mapping _Coerce

instance FromJSON
         PretargetingConfigVideoPlayerSizesItem where
        parseJSON
          = withObject "PretargetingConfigVideoPlayerSizesItem"
              (\ o ->
                 PretargetingConfigVideoPlayerSizesItem' <$>
                   (o .:? "minWidth") <*> (o .:? "aspectRatio") <*>
                     (o .:? "minHeight"))

instance ToJSON
         PretargetingConfigVideoPlayerSizesItem where
        toJSON PretargetingConfigVideoPlayerSizesItem'{..}
          = object
              (catMaybes
                 [("minWidth" .=) <$> _pcvpsiMinWidth,
                  ("aspectRatio" .=) <$> _pcvpsiAspectRatio,
                  ("minHeight" .=) <$> _pcvpsiMinHeight])

--
-- /See:/ 'editAllOrderDealsRequest' smart constructor.
data EditAllOrderDealsRequest = EditAllOrderDealsRequest'
    { _eUpdateAction           :: !(Maybe Text)
    , _eDeals                  :: !(Maybe [MarketplaceDeal])
    , _eProposalRevisionNumber :: !(Maybe (Textual Int64))
    , _eProposal               :: !(Maybe Proposal)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditAllOrderDealsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eUpdateAction'
--
-- * 'eDeals'
--
-- * 'eProposalRevisionNumber'
--
-- * 'eProposal'
editAllOrderDealsRequest
    :: EditAllOrderDealsRequest
editAllOrderDealsRequest =
    EditAllOrderDealsRequest'
    { _eUpdateAction = Nothing
    , _eDeals = Nothing
    , _eProposalRevisionNumber = Nothing
    , _eProposal = Nothing
    }

-- | Indicates an optional action to take on the proposal
eUpdateAction :: Lens' EditAllOrderDealsRequest (Maybe Text)
eUpdateAction
  = lens _eUpdateAction
      (\ s a -> s{_eUpdateAction = a})

-- | List of deals to edit. Service may perform 3 different operations based
-- on comparison of deals in this list vs deals already persisted in
-- database: 1. Add new deal to proposal If a deal in this list does not
-- exist in the proposal, the service will create a new deal and add it to
-- the proposal. Validation will follow AddOrderDealsRequest. 2. Update
-- existing deal in the proposal If a deal in this list already exist in
-- the proposal, the service will update that existing deal to this new
-- deal in the request. Validation will follow UpdateOrderDealsRequest. 3.
-- Delete deals from the proposal (just need the id) If a existing deal in
-- the proposal is not present in this list, the service will delete that
-- deal from the proposal. Validation will follow DeleteOrderDealsRequest.
eDeals :: Lens' EditAllOrderDealsRequest [MarketplaceDeal]
eDeals
  = lens _eDeals (\ s a -> s{_eDeals = a}) . _Default .
      _Coerce

-- | The last known revision number for the proposal.
eProposalRevisionNumber :: Lens' EditAllOrderDealsRequest (Maybe Int64)
eProposalRevisionNumber
  = lens _eProposalRevisionNumber
      (\ s a -> s{_eProposalRevisionNumber = a})
      . mapping _Coerce

-- | If specified, also updates the proposal in the batch transaction. This
-- is useful when the proposal and the deals need to be updated in one
-- transaction.
eProposal :: Lens' EditAllOrderDealsRequest (Maybe Proposal)
eProposal
  = lens _eProposal (\ s a -> s{_eProposal = a})

instance FromJSON EditAllOrderDealsRequest where
        parseJSON
          = withObject "EditAllOrderDealsRequest"
              (\ o ->
                 EditAllOrderDealsRequest' <$>
                   (o .:? "updateAction") <*> (o .:? "deals" .!= mempty)
                     <*> (o .:? "proposalRevisionNumber")
                     <*> (o .:? "proposal"))

instance ToJSON EditAllOrderDealsRequest where
        toJSON EditAllOrderDealsRequest'{..}
          = object
              (catMaybes
                 [("updateAction" .=) <$> _eUpdateAction,
                  ("deals" .=) <$> _eDeals,
                  ("proposalRevisionNumber" .=) <$>
                    _eProposalRevisionNumber,
                  ("proposal" .=) <$> _eProposal])

-- | The configuration data for an Ad Exchange billing info.
--
-- /See:/ 'billingInfo' smart constructor.
data BillingInfo = BillingInfo'
    { _biKind        :: !Text
    , _biAccountName :: !(Maybe Text)
    , _biAccountId   :: !(Maybe (Textual Int32))
    , _biBillingId   :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    BillingInfo'
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
  = lens _biAccountId (\ s a -> s{_biAccountId = a}) .
      mapping _Coerce

-- | A list of adgroup IDs associated with this particular account. These IDs
-- may show up as part of a realtime bidding BidRequest, which indicates a
-- bid request for this account.
biBillingId :: Lens' BillingInfo [Text]
biBillingId
  = lens _biBillingId (\ s a -> s{_biBillingId = a}) .
      _Default
      . _Coerce

instance FromJSON BillingInfo where
        parseJSON
          = withObject "BillingInfo"
              (\ o ->
                 BillingInfo' <$>
                   (o .:? "kind" .!= "adexchangebuyer#billingInfo") <*>
                     (o .:? "accountName")
                     <*> (o .:? "accountId")
                     <*> (o .:? "billingId" .!= mempty))

instance ToJSON BillingInfo where
        toJSON BillingInfo'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _biKind),
                  ("accountName" .=) <$> _biAccountName,
                  ("accountId" .=) <$> _biAccountId,
                  ("billingId" .=) <$> _biBillingId])

--
-- /See:/ 'targetingValueDayPartTargeting' smart constructor.
data TargetingValueDayPartTargeting = TargetingValueDayPartTargeting'
    { _tvdptTimeZoneType :: !(Maybe Text)
    , _tvdptDayParts     :: !(Maybe [TargetingValueDayPartTargetingDayPart])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    TargetingValueDayPartTargeting'
    { _tvdptTimeZoneType = Nothing
    , _tvdptDayParts = Nothing
    }

tvdptTimeZoneType :: Lens' TargetingValueDayPartTargeting (Maybe Text)
tvdptTimeZoneType
  = lens _tvdptTimeZoneType
      (\ s a -> s{_tvdptTimeZoneType = a})

tvdptDayParts :: Lens' TargetingValueDayPartTargeting [TargetingValueDayPartTargetingDayPart]
tvdptDayParts
  = lens _tvdptDayParts
      (\ s a -> s{_tvdptDayParts = a})
      . _Default
      . _Coerce

instance FromJSON TargetingValueDayPartTargeting
         where
        parseJSON
          = withObject "TargetingValueDayPartTargeting"
              (\ o ->
                 TargetingValueDayPartTargeting' <$>
                   (o .:? "timeZoneType") <*>
                     (o .:? "dayParts" .!= mempty))

instance ToJSON TargetingValueDayPartTargeting where
        toJSON TargetingValueDayPartTargeting'{..}
          = object
              (catMaybes
                 [("timeZoneType" .=) <$> _tvdptTimeZoneType,
                  ("dayParts" .=) <$> _tvdptDayParts])

--
-- /See:/ 'sharedTargeting' smart constructor.
data SharedTargeting = SharedTargeting'
    { _stKey        :: !(Maybe Text)
    , _stExclusions :: !(Maybe [TargetingValue])
    , _stInclusions :: !(Maybe [TargetingValue])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    SharedTargeting'
    { _stKey = Nothing
    , _stExclusions = Nothing
    , _stInclusions = Nothing
    }

-- | The key representing the shared targeting criterion.
stKey :: Lens' SharedTargeting (Maybe Text)
stKey = lens _stKey (\ s a -> s{_stKey = a})

-- | The list of values to exclude from targeting. Each value is AND\'d
-- together.
stExclusions :: Lens' SharedTargeting [TargetingValue]
stExclusions
  = lens _stExclusions (\ s a -> s{_stExclusions = a})
      . _Default
      . _Coerce

-- | The list of value to include as part of the targeting. Each value is
-- OR\'d together.
stInclusions :: Lens' SharedTargeting [TargetingValue]
stInclusions
  = lens _stInclusions (\ s a -> s{_stInclusions = a})
      . _Default
      . _Coerce

instance FromJSON SharedTargeting where
        parseJSON
          = withObject "SharedTargeting"
              (\ o ->
                 SharedTargeting' <$>
                   (o .:? "key") <*> (o .:? "exclusions" .!= mempty) <*>
                     (o .:? "inclusions" .!= mempty))

instance ToJSON SharedTargeting where
        toJSON SharedTargeting'{..}
          = object
              (catMaybes
                 [("key" .=) <$> _stKey,
                  ("exclusions" .=) <$> _stExclusions,
                  ("inclusions" .=) <$> _stInclusions])

-- | A large image.
--
-- /See:/ 'creativeNATiveAdImage' smart constructor.
data CreativeNATiveAdImage = CreativeNATiveAdImage'
    { _cnataiHeight :: !(Maybe (Textual Int32))
    , _cnataiURL    :: !(Maybe Text)
    , _cnataiWidth  :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeNATiveAdImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnataiHeight'
--
-- * 'cnataiURL'
--
-- * 'cnataiWidth'
creativeNATiveAdImage
    :: CreativeNATiveAdImage
creativeNATiveAdImage =
    CreativeNATiveAdImage'
    { _cnataiHeight = Nothing
    , _cnataiURL = Nothing
    , _cnataiWidth = Nothing
    }

cnataiHeight :: Lens' CreativeNATiveAdImage (Maybe Int32)
cnataiHeight
  = lens _cnataiHeight (\ s a -> s{_cnataiHeight = a})
      . mapping _Coerce

cnataiURL :: Lens' CreativeNATiveAdImage (Maybe Text)
cnataiURL
  = lens _cnataiURL (\ s a -> s{_cnataiURL = a})

cnataiWidth :: Lens' CreativeNATiveAdImage (Maybe Int32)
cnataiWidth
  = lens _cnataiWidth (\ s a -> s{_cnataiWidth = a}) .
      mapping _Coerce

instance FromJSON CreativeNATiveAdImage where
        parseJSON
          = withObject "CreativeNATiveAdImage"
              (\ o ->
                 CreativeNATiveAdImage' <$>
                   (o .:? "height") <*> (o .:? "url") <*>
                     (o .:? "width"))

instance ToJSON CreativeNATiveAdImage where
        toJSON CreativeNATiveAdImage'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _cnataiHeight,
                  ("url" .=) <$> _cnataiURL,
                  ("width" .=) <$> _cnataiWidth])

-- | A product is segment of inventory that a seller wishes to sell. It is
-- associated with certain terms and targeting information which helps
-- buyer know more about the inventory. Each field in a product can have
-- one of the following setting: (readonly) - It is an error to try and set
-- this field. (buyer-readonly) - Only the seller can set this field.
-- (seller-readonly) - Only the buyer can set this field. (updatable) - The
-- field is updatable at all times by either buyer or the seller.
--
-- /See:/ 'product' smart constructor.
data Product = Product'
    { _proState                     :: !(Maybe Text)
    , _proInventorySource           :: !(Maybe Text)
    , _proWebPropertyCode           :: !(Maybe Text)
    , _proCreationTimeMs            :: !(Maybe (Textual Int64))
    , _proTerms                     :: !(Maybe DealTerms)
    , _proLastUpdateTimeMs          :: !(Maybe (Textual Int64))
    , _proKind                      :: !Text
    , _proRevisionNumber            :: !(Maybe (Textual Int64))
    , _proPrivateAuctionId          :: !(Maybe Text)
    , _proDeliveryControl           :: !(Maybe DeliveryControl)
    , _proHasCreatorSignedOff       :: !(Maybe Bool)
    , _proFlightStartTimeMs         :: !(Maybe (Textual Int64))
    , _proSharedTargetings          :: !(Maybe [SharedTargeting])
    , _proSeller                    :: !(Maybe Seller)
    , _proSyndicationProduct        :: !(Maybe Text)
    , _proFlightEndTimeMs           :: !(Maybe (Textual Int64))
    , _proName                      :: !(Maybe Text)
    , _proCreatorContacts           :: !(Maybe [ContactInformation])
    , _proPublisherProvidedForecast :: !(Maybe PublisherProvidedForecast)
    , _proLabels                    :: !(Maybe [MarketplaceLabel])
    , _proPublisherProFileId        :: !(Maybe Text)
    , _proLegacyOfferId             :: !(Maybe Text)
    , _proProductId                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Product' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proState'
--
-- * 'proInventorySource'
--
-- * 'proWebPropertyCode'
--
-- * 'proCreationTimeMs'
--
-- * 'proTerms'
--
-- * 'proLastUpdateTimeMs'
--
-- * 'proKind'
--
-- * 'proRevisionNumber'
--
-- * 'proPrivateAuctionId'
--
-- * 'proDeliveryControl'
--
-- * 'proHasCreatorSignedOff'
--
-- * 'proFlightStartTimeMs'
--
-- * 'proSharedTargetings'
--
-- * 'proSeller'
--
-- * 'proSyndicationProduct'
--
-- * 'proFlightEndTimeMs'
--
-- * 'proName'
--
-- * 'proCreatorContacts'
--
-- * 'proPublisherProvidedForecast'
--
-- * 'proLabels'
--
-- * 'proPublisherProFileId'
--
-- * 'proLegacyOfferId'
--
-- * 'proProductId'
product
    :: Product
product =
    Product'
    { _proState = Nothing
    , _proInventorySource = Nothing
    , _proWebPropertyCode = Nothing
    , _proCreationTimeMs = Nothing
    , _proTerms = Nothing
    , _proLastUpdateTimeMs = Nothing
    , _proKind = "adexchangebuyer#product"
    , _proRevisionNumber = Nothing
    , _proPrivateAuctionId = Nothing
    , _proDeliveryControl = Nothing
    , _proHasCreatorSignedOff = Nothing
    , _proFlightStartTimeMs = Nothing
    , _proSharedTargetings = Nothing
    , _proSeller = Nothing
    , _proSyndicationProduct = Nothing
    , _proFlightEndTimeMs = Nothing
    , _proName = Nothing
    , _proCreatorContacts = Nothing
    , _proPublisherProvidedForecast = Nothing
    , _proLabels = Nothing
    , _proPublisherProFileId = Nothing
    , _proLegacyOfferId = Nothing
    , _proProductId = Nothing
    }

-- | The state of the product. (buyer-readonly)
proState :: Lens' Product (Maybe Text)
proState = lens _proState (\ s a -> s{_proState = a})

-- | What exchange will provide this inventory (readonly, except on create).
proInventorySource :: Lens' Product (Maybe Text)
proInventorySource
  = lens _proInventorySource
      (\ s a -> s{_proInventorySource = a})

-- | The web property code for the seller. This field is meant to be copied
-- over as is when creating deals.
proWebPropertyCode :: Lens' Product (Maybe Text)
proWebPropertyCode
  = lens _proWebPropertyCode
      (\ s a -> s{_proWebPropertyCode = a})

-- | Creation time in ms. since epoch (readonly)
proCreationTimeMs :: Lens' Product (Maybe Int64)
proCreationTimeMs
  = lens _proCreationTimeMs
      (\ s a -> s{_proCreationTimeMs = a})
      . mapping _Coerce

-- | The negotiable terms of the deal (buyer-readonly)
proTerms :: Lens' Product (Maybe DealTerms)
proTerms = lens _proTerms (\ s a -> s{_proTerms = a})

-- | Time of last update in ms. since epoch (readonly)
proLastUpdateTimeMs :: Lens' Product (Maybe Int64)
proLastUpdateTimeMs
  = lens _proLastUpdateTimeMs
      (\ s a -> s{_proLastUpdateTimeMs = a})
      . mapping _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"adexchangebuyer#product\".
proKind :: Lens' Product Text
proKind = lens _proKind (\ s a -> s{_proKind = a})

-- | The revision number of the product. (readonly)
proRevisionNumber :: Lens' Product (Maybe Int64)
proRevisionNumber
  = lens _proRevisionNumber
      (\ s a -> s{_proRevisionNumber = a})
      . mapping _Coerce

-- | Optional private auction id if this offer is a private auction offer.
proPrivateAuctionId :: Lens' Product (Maybe Text)
proPrivateAuctionId
  = lens _proPrivateAuctionId
      (\ s a -> s{_proPrivateAuctionId = a})

-- | The set of fields around delivery control that are interesting for a
-- buyer to see but are non-negotiable. These are set by the publisher.
-- This message is assigned an id of 100 since some day we would want to
-- model this as a protobuf extension.
proDeliveryControl :: Lens' Product (Maybe DeliveryControl)
proDeliveryControl
  = lens _proDeliveryControl
      (\ s a -> s{_proDeliveryControl = a})

-- | If the creator has already signed off on the product, then the buyer can
-- finalize the deal by accepting the product as is. When copying to a
-- proposal, if any of the terms are changed, then auto_finalize is
-- automatically set to false.
proHasCreatorSignedOff :: Lens' Product (Maybe Bool)
proHasCreatorSignedOff
  = lens _proHasCreatorSignedOff
      (\ s a -> s{_proHasCreatorSignedOff = a})

-- | Inventory availability dates. (times are in ms since epoch) The
-- granularity is generally in the order of seconds. (buyer-readonly)
proFlightStartTimeMs :: Lens' Product (Maybe Int64)
proFlightStartTimeMs
  = lens _proFlightStartTimeMs
      (\ s a -> s{_proFlightStartTimeMs = a})
      . mapping _Coerce

-- | Targeting that is shared between the buyer and the seller. Each
-- targeting criteria has a specified key and for each key there is a list
-- of inclusion value or exclusion values. (buyer-readonly)
proSharedTargetings :: Lens' Product [SharedTargeting]
proSharedTargetings
  = lens _proSharedTargetings
      (\ s a -> s{_proSharedTargetings = a})
      . _Default
      . _Coerce

-- | Information about the seller that created this product (readonly, except
-- on create)
proSeller :: Lens' Product (Maybe Seller)
proSeller
  = lens _proSeller (\ s a -> s{_proSeller = a})

-- | The syndication product associated with the deal. (readonly, except on
-- create)
proSyndicationProduct :: Lens' Product (Maybe Text)
proSyndicationProduct
  = lens _proSyndicationProduct
      (\ s a -> s{_proSyndicationProduct = a})

-- | The proposed end time for the deal (ms since epoch) (buyer-readonly)
proFlightEndTimeMs :: Lens' Product (Maybe Int64)
proFlightEndTimeMs
  = lens _proFlightEndTimeMs
      (\ s a -> s{_proFlightEndTimeMs = a})
      . mapping _Coerce

-- | The name for this product as set by the seller. (buyer-readonly)
proName :: Lens' Product (Maybe Text)
proName = lens _proName (\ s a -> s{_proName = a})

-- | Optional contact information for the creator of this product.
-- (buyer-readonly)
proCreatorContacts :: Lens' Product [ContactInformation]
proCreatorContacts
  = lens _proCreatorContacts
      (\ s a -> s{_proCreatorContacts = a})
      . _Default
      . _Coerce

-- | Publisher self-provided forecast information.
proPublisherProvidedForecast :: Lens' Product (Maybe PublisherProvidedForecast)
proPublisherProvidedForecast
  = lens _proPublisherProvidedForecast
      (\ s a -> s{_proPublisherProvidedForecast = a})

-- | Optional List of labels for the product (optional, buyer-readonly).
proLabels :: Lens' Product [MarketplaceLabel]
proLabels
  = lens _proLabels (\ s a -> s{_proLabels = a}) .
      _Default
      . _Coerce

-- | Id of the publisher profile for a given seller. A (seller.account_id,
-- publisher_profile_id) pair uniquely identifies a publisher profile.
-- Buyers can call the PublisherProfiles::List endpoint to get a list of
-- publisher profiles for a given seller.
proPublisherProFileId :: Lens' Product (Maybe Text)
proPublisherProFileId
  = lens _proPublisherProFileId
      (\ s a -> s{_proPublisherProFileId = a})

-- | Optional legacy offer id if this offer is a preferred deal offer.
proLegacyOfferId :: Lens' Product (Maybe Text)
proLegacyOfferId
  = lens _proLegacyOfferId
      (\ s a -> s{_proLegacyOfferId = a})

-- | The unique id for the product (readonly)
proProductId :: Lens' Product (Maybe Text)
proProductId
  = lens _proProductId (\ s a -> s{_proProductId = a})

instance FromJSON Product where
        parseJSON
          = withObject "Product"
              (\ o ->
                 Product' <$>
                   (o .:? "state") <*> (o .:? "inventorySource") <*>
                     (o .:? "webPropertyCode")
                     <*> (o .:? "creationTimeMs")
                     <*> (o .:? "terms")
                     <*> (o .:? "lastUpdateTimeMs")
                     <*> (o .:? "kind" .!= "adexchangebuyer#product")
                     <*> (o .:? "revisionNumber")
                     <*> (o .:? "privateAuctionId")
                     <*> (o .:? "deliveryControl")
                     <*> (o .:? "hasCreatorSignedOff")
                     <*> (o .:? "flightStartTimeMs")
                     <*> (o .:? "sharedTargetings" .!= mempty)
                     <*> (o .:? "seller")
                     <*> (o .:? "syndicationProduct")
                     <*> (o .:? "flightEndTimeMs")
                     <*> (o .:? "name")
                     <*> (o .:? "creatorContacts" .!= mempty)
                     <*> (o .:? "publisherProvidedForecast")
                     <*> (o .:? "labels" .!= mempty)
                     <*> (o .:? "publisherProfileId")
                     <*> (o .:? "legacyOfferId")
                     <*> (o .:? "productId"))

instance ToJSON Product where
        toJSON Product'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _proState,
                  ("inventorySource" .=) <$> _proInventorySource,
                  ("webPropertyCode" .=) <$> _proWebPropertyCode,
                  ("creationTimeMs" .=) <$> _proCreationTimeMs,
                  ("terms" .=) <$> _proTerms,
                  ("lastUpdateTimeMs" .=) <$> _proLastUpdateTimeMs,
                  Just ("kind" .= _proKind),
                  ("revisionNumber" .=) <$> _proRevisionNumber,
                  ("privateAuctionId" .=) <$> _proPrivateAuctionId,
                  ("deliveryControl" .=) <$> _proDeliveryControl,
                  ("hasCreatorSignedOff" .=) <$>
                    _proHasCreatorSignedOff,
                  ("flightStartTimeMs" .=) <$> _proFlightStartTimeMs,
                  ("sharedTargetings" .=) <$> _proSharedTargetings,
                  ("seller" .=) <$> _proSeller,
                  ("syndicationProduct" .=) <$> _proSyndicationProduct,
                  ("flightEndTimeMs" .=) <$> _proFlightEndTimeMs,
                  ("name" .=) <$> _proName,
                  ("creatorContacts" .=) <$> _proCreatorContacts,
                  ("publisherProvidedForecast" .=) <$>
                    _proPublisherProvidedForecast,
                  ("labels" .=) <$> _proLabels,
                  ("publisherProfileId" .=) <$> _proPublisherProFileId,
                  ("legacyOfferId" .=) <$> _proLegacyOfferId,
                  ("productId" .=) <$> _proProductId])

--
-- /See:/ 'creativeServingRestrictionsItem' smart constructor.
data CreativeServingRestrictionsItem = CreativeServingRestrictionsItem'
    { _csriContexts           :: !(Maybe [CreativeServingRestrictionsItemContextsItem])
    , _csriReason             :: !(Maybe Text)
    , _csriDisApprovalReasons :: !(Maybe [CreativeServingRestrictionsItemDisApprovalReasonsItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeServingRestrictionsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csriContexts'
--
-- * 'csriReason'
--
-- * 'csriDisApprovalReasons'
creativeServingRestrictionsItem
    :: CreativeServingRestrictionsItem
creativeServingRestrictionsItem =
    CreativeServingRestrictionsItem'
    { _csriContexts = Nothing
    , _csriReason = Nothing
    , _csriDisApprovalReasons = Nothing
    }

-- | All known contexts\/restrictions.
csriContexts :: Lens' CreativeServingRestrictionsItem [CreativeServingRestrictionsItemContextsItem]
csriContexts
  = lens _csriContexts (\ s a -> s{_csriContexts = a})
      . _Default
      . _Coerce

-- | Why the creative is ineligible to serve in this context (e.g., it has
-- been explicitly disapproved or is pending review).
csriReason :: Lens' CreativeServingRestrictionsItem (Maybe Text)
csriReason
  = lens _csriReason (\ s a -> s{_csriReason = a})

-- | The reasons for disapproval within this restriction, if any. Note that
-- not all disapproval reasons may be categorized, so it is possible for
-- the creative to have a status of DISAPPROVED or CONDITIONALLY_APPROVED
-- with an empty list for disapproval_reasons. In this case, please reach
-- out to your TAM to help debug the issue.
csriDisApprovalReasons :: Lens' CreativeServingRestrictionsItem [CreativeServingRestrictionsItemDisApprovalReasonsItem]
csriDisApprovalReasons
  = lens _csriDisApprovalReasons
      (\ s a -> s{_csriDisApprovalReasons = a})
      . _Default
      . _Coerce

instance FromJSON CreativeServingRestrictionsItem
         where
        parseJSON
          = withObject "CreativeServingRestrictionsItem"
              (\ o ->
                 CreativeServingRestrictionsItem' <$>
                   (o .:? "contexts" .!= mempty) <*> (o .:? "reason")
                     <*> (o .:? "disapprovalReasons" .!= mempty))

instance ToJSON CreativeServingRestrictionsItem where
        toJSON CreativeServingRestrictionsItem'{..}
          = object
              (catMaybes
                 [("contexts" .=) <$> _csriContexts,
                  ("reason" .=) <$> _csriReason,
                  ("disapprovalReasons" .=) <$>
                    _csriDisApprovalReasons])

--
-- /See:/ 'deleteOrderDealsResponse' smart constructor.
data DeleteOrderDealsResponse = DeleteOrderDealsResponse'
    { _dDeals                  :: !(Maybe [MarketplaceDeal])
    , _dProposalRevisionNumber :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeleteOrderDealsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDeals'
--
-- * 'dProposalRevisionNumber'
deleteOrderDealsResponse
    :: DeleteOrderDealsResponse
deleteOrderDealsResponse =
    DeleteOrderDealsResponse'
    { _dDeals = Nothing
    , _dProposalRevisionNumber = Nothing
    }

-- | List of deals deleted (in the same proposal as passed in the request)
dDeals :: Lens' DeleteOrderDealsResponse [MarketplaceDeal]
dDeals
  = lens _dDeals (\ s a -> s{_dDeals = a}) . _Default .
      _Coerce

-- | The updated revision number for the proposal.
dProposalRevisionNumber :: Lens' DeleteOrderDealsResponse (Maybe Int64)
dProposalRevisionNumber
  = lens _dProposalRevisionNumber
      (\ s a -> s{_dProposalRevisionNumber = a})
      . mapping _Coerce

instance FromJSON DeleteOrderDealsResponse where
        parseJSON
          = withObject "DeleteOrderDealsResponse"
              (\ o ->
                 DeleteOrderDealsResponse' <$>
                   (o .:? "deals" .!= mempty) <*>
                     (o .:? "proposalRevisionNumber"))

instance ToJSON DeleteOrderDealsResponse where
        toJSON DeleteOrderDealsResponse'{..}
          = object
              (catMaybes
                 [("deals" .=) <$> _dDeals,
                  ("proposalRevisionNumber" .=) <$>
                    _dProposalRevisionNumber])

--
-- /See:/ 'pretargetingConfigPlacementsItem' smart constructor.
data PretargetingConfigPlacementsItem = PretargetingConfigPlacementsItem'
    { _pcpiToken :: !(Maybe Text)
    , _pcpiType  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PretargetingConfigPlacementsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcpiToken'
--
-- * 'pcpiType'
pretargetingConfigPlacementsItem
    :: PretargetingConfigPlacementsItem
pretargetingConfigPlacementsItem =
    PretargetingConfigPlacementsItem'
    { _pcpiToken = Nothing
    , _pcpiType = Nothing
    }

-- | The value of the placement. Interpretation depends on the placement
-- type, e.g. URL for a site placement, channel name for a channel
-- placement, app id for a mobile app placement.
pcpiToken :: Lens' PretargetingConfigPlacementsItem (Maybe Text)
pcpiToken
  = lens _pcpiToken (\ s a -> s{_pcpiToken = a})

-- | The type of the placement.
pcpiType :: Lens' PretargetingConfigPlacementsItem (Maybe Text)
pcpiType = lens _pcpiType (\ s a -> s{_pcpiType = a})

instance FromJSON PretargetingConfigPlacementsItem
         where
        parseJSON
          = withObject "PretargetingConfigPlacementsItem"
              (\ o ->
                 PretargetingConfigPlacementsItem' <$>
                   (o .:? "token") <*> (o .:? "type"))

instance ToJSON PretargetingConfigPlacementsItem
         where
        toJSON PretargetingConfigPlacementsItem'{..}
          = object
              (catMaybes
                 [("token" .=) <$> _pcpiToken,
                  ("type" .=) <$> _pcpiType])

--
-- /See:/ 'publisherProFileAPIProto' smart constructor.
data PublisherProFileAPIProto = PublisherProFileAPIProto'
    { _ppfapAudience                  :: !(Maybe Text)
    , _ppfapState                     :: !(Maybe Text)
    , _ppfapMediaKitLink              :: !(Maybe Text)
    , _ppfapDirectContact             :: !(Maybe Text)
    , _ppfapSamplePageLink            :: !(Maybe Text)
    , _ppfapLogoURL                   :: !(Maybe Text)
    , _ppfapKind                      :: !Text
    , _ppfapExchange                  :: !(Maybe Text)
    , _ppfapOverview                  :: !(Maybe Text)
    , _ppfapGooglePlusLink            :: !(Maybe Text)
    , _ppfapProFileId                 :: !(Maybe (Textual Int32))
    , _ppfapIsParent                  :: !(Maybe Bool)
    , _ppfapSeller                    :: !(Maybe Seller)
    , _ppfapAccountId                 :: !(Maybe Text)
    , _ppfapName                      :: !(Maybe Text)
    , _ppfapBuyerPitchStatement       :: !(Maybe Text)
    , _ppfapPublisherProvidedForecast :: !(Maybe PublisherProvidedForecast)
    , _ppfapIsPublished               :: !(Maybe Bool)
    , _ppfapPublisherDomains          :: !(Maybe [Text])
    , _ppfapPublisherProFileId        :: !(Maybe Text)
    , _ppfapRateCardInfoLink          :: !(Maybe Text)
    , _ppfapTopHeadlines              :: !(Maybe [Text])
    , _ppfapProgrammaticContact       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PublisherProFileAPIProto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppfapAudience'
--
-- * 'ppfapState'
--
-- * 'ppfapMediaKitLink'
--
-- * 'ppfapDirectContact'
--
-- * 'ppfapSamplePageLink'
--
-- * 'ppfapLogoURL'
--
-- * 'ppfapKind'
--
-- * 'ppfapExchange'
--
-- * 'ppfapOverview'
--
-- * 'ppfapGooglePlusLink'
--
-- * 'ppfapProFileId'
--
-- * 'ppfapIsParent'
--
-- * 'ppfapSeller'
--
-- * 'ppfapAccountId'
--
-- * 'ppfapName'
--
-- * 'ppfapBuyerPitchStatement'
--
-- * 'ppfapPublisherProvidedForecast'
--
-- * 'ppfapIsPublished'
--
-- * 'ppfapPublisherDomains'
--
-- * 'ppfapPublisherProFileId'
--
-- * 'ppfapRateCardInfoLink'
--
-- * 'ppfapTopHeadlines'
--
-- * 'ppfapProgrammaticContact'
publisherProFileAPIProto
    :: PublisherProFileAPIProto
publisherProFileAPIProto =
    PublisherProFileAPIProto'
    { _ppfapAudience = Nothing
    , _ppfapState = Nothing
    , _ppfapMediaKitLink = Nothing
    , _ppfapDirectContact = Nothing
    , _ppfapSamplePageLink = Nothing
    , _ppfapLogoURL = Nothing
    , _ppfapKind = "adexchangebuyer#publisherProfileApiProto"
    , _ppfapExchange = Nothing
    , _ppfapOverview = Nothing
    , _ppfapGooglePlusLink = Nothing
    , _ppfapProFileId = Nothing
    , _ppfapIsParent = Nothing
    , _ppfapSeller = Nothing
    , _ppfapAccountId = Nothing
    , _ppfapName = Nothing
    , _ppfapBuyerPitchStatement = Nothing
    , _ppfapPublisherProvidedForecast = Nothing
    , _ppfapIsPublished = Nothing
    , _ppfapPublisherDomains = Nothing
    , _ppfapPublisherProFileId = Nothing
    , _ppfapRateCardInfoLink = Nothing
    , _ppfapTopHeadlines = Nothing
    , _ppfapProgrammaticContact = Nothing
    }

-- | Publisher provided info on its audience.
ppfapAudience :: Lens' PublisherProFileAPIProto (Maybe Text)
ppfapAudience
  = lens _ppfapAudience
      (\ s a -> s{_ppfapAudience = a})

-- | State of the publisher profile.
ppfapState :: Lens' PublisherProFileAPIProto (Maybe Text)
ppfapState
  = lens _ppfapState (\ s a -> s{_ppfapState = a})

-- | The url for additional marketing and sales materials.
ppfapMediaKitLink :: Lens' PublisherProFileAPIProto (Maybe Text)
ppfapMediaKitLink
  = lens _ppfapMediaKitLink
      (\ s a -> s{_ppfapMediaKitLink = a})

-- | Direct contact for the publisher profile.
ppfapDirectContact :: Lens' PublisherProFileAPIProto (Maybe Text)
ppfapDirectContact
  = lens _ppfapDirectContact
      (\ s a -> s{_ppfapDirectContact = a})

-- | Link for a sample content page.
ppfapSamplePageLink :: Lens' PublisherProFileAPIProto (Maybe Text)
ppfapSamplePageLink
  = lens _ppfapSamplePageLink
      (\ s a -> s{_ppfapSamplePageLink = a})

-- | The url to the logo for the publisher.
ppfapLogoURL :: Lens' PublisherProFileAPIProto (Maybe Text)
ppfapLogoURL
  = lens _ppfapLogoURL (\ s a -> s{_ppfapLogoURL = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"adexchangebuyer#publisherProfileApiProto\".
ppfapKind :: Lens' PublisherProFileAPIProto Text
ppfapKind
  = lens _ppfapKind (\ s a -> s{_ppfapKind = a})

-- | Exchange where this publisher profile is from. E.g. AdX, Rubicon etc...
ppfapExchange :: Lens' PublisherProFileAPIProto (Maybe Text)
ppfapExchange
  = lens _ppfapExchange
      (\ s a -> s{_ppfapExchange = a})

-- | Publisher provided overview.
ppfapOverview :: Lens' PublisherProFileAPIProto (Maybe Text)
ppfapOverview
  = lens _ppfapOverview
      (\ s a -> s{_ppfapOverview = a})

-- | Link to publisher\'s Google+ page.
ppfapGooglePlusLink :: Lens' PublisherProFileAPIProto (Maybe Text)
ppfapGooglePlusLink
  = lens _ppfapGooglePlusLink
      (\ s a -> s{_ppfapGooglePlusLink = a})

-- | The pair of (seller.account_id, profile_id) uniquely identifies a
-- publisher profile for a given publisher.
ppfapProFileId :: Lens' PublisherProFileAPIProto (Maybe Int32)
ppfapProFileId
  = lens _ppfapProFileId
      (\ s a -> s{_ppfapProFileId = a})
      . mapping _Coerce

-- | True, if this is the parent profile, which represents all domains owned
-- by the publisher.
ppfapIsParent :: Lens' PublisherProFileAPIProto (Maybe Bool)
ppfapIsParent
  = lens _ppfapIsParent
      (\ s a -> s{_ppfapIsParent = a})

-- | Seller of the publisher profile.
ppfapSeller :: Lens' PublisherProFileAPIProto (Maybe Seller)
ppfapSeller
  = lens _ppfapSeller (\ s a -> s{_ppfapSeller = a})

-- | The account id of the seller.
ppfapAccountId :: Lens' PublisherProFileAPIProto (Maybe Text)
ppfapAccountId
  = lens _ppfapAccountId
      (\ s a -> s{_ppfapAccountId = a})

ppfapName :: Lens' PublisherProFileAPIProto (Maybe Text)
ppfapName
  = lens _ppfapName (\ s a -> s{_ppfapName = a})

-- | A pitch statement for the buyer
ppfapBuyerPitchStatement :: Lens' PublisherProFileAPIProto (Maybe Text)
ppfapBuyerPitchStatement
  = lens _ppfapBuyerPitchStatement
      (\ s a -> s{_ppfapBuyerPitchStatement = a})

-- | Publisher provided forecasting information.
ppfapPublisherProvidedForecast :: Lens' PublisherProFileAPIProto (Maybe PublisherProvidedForecast)
ppfapPublisherProvidedForecast
  = lens _ppfapPublisherProvidedForecast
      (\ s a -> s{_ppfapPublisherProvidedForecast = a})

-- | True, if this profile is published. Deprecated for state.
ppfapIsPublished :: Lens' PublisherProFileAPIProto (Maybe Bool)
ppfapIsPublished
  = lens _ppfapIsPublished
      (\ s a -> s{_ppfapIsPublished = a})

-- | The list of domains represented in this publisher profile. Empty if this
-- is a parent profile.
ppfapPublisherDomains :: Lens' PublisherProFileAPIProto [Text]
ppfapPublisherDomains
  = lens _ppfapPublisherDomains
      (\ s a -> s{_ppfapPublisherDomains = a})
      . _Default
      . _Coerce

-- | Unique Id for publisher profile.
ppfapPublisherProFileId :: Lens' PublisherProFileAPIProto (Maybe Text)
ppfapPublisherProFileId
  = lens _ppfapPublisherProFileId
      (\ s a -> s{_ppfapPublisherProFileId = a})

-- | Link to publisher rate card
ppfapRateCardInfoLink :: Lens' PublisherProFileAPIProto (Maybe Text)
ppfapRateCardInfoLink
  = lens _ppfapRateCardInfoLink
      (\ s a -> s{_ppfapRateCardInfoLink = a})

-- | Publisher provided key metrics and rankings.
ppfapTopHeadlines :: Lens' PublisherProFileAPIProto [Text]
ppfapTopHeadlines
  = lens _ppfapTopHeadlines
      (\ s a -> s{_ppfapTopHeadlines = a})
      . _Default
      . _Coerce

-- | Programmatic contact for the publisher profile.
ppfapProgrammaticContact :: Lens' PublisherProFileAPIProto (Maybe Text)
ppfapProgrammaticContact
  = lens _ppfapProgrammaticContact
      (\ s a -> s{_ppfapProgrammaticContact = a})

instance FromJSON PublisherProFileAPIProto where
        parseJSON
          = withObject "PublisherProFileAPIProto"
              (\ o ->
                 PublisherProFileAPIProto' <$>
                   (o .:? "audience") <*> (o .:? "state") <*>
                     (o .:? "mediaKitLink")
                     <*> (o .:? "directContact")
                     <*> (o .:? "samplePageLink")
                     <*> (o .:? "logoUrl")
                     <*>
                     (o .:? "kind" .!=
                        "adexchangebuyer#publisherProfileApiProto")
                     <*> (o .:? "exchange")
                     <*> (o .:? "overview")
                     <*> (o .:? "googlePlusLink")
                     <*> (o .:? "profileId")
                     <*> (o .:? "isParent")
                     <*> (o .:? "seller")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "buyerPitchStatement")
                     <*> (o .:? "publisherProvidedForecast")
                     <*> (o .:? "isPublished")
                     <*> (o .:? "publisherDomains" .!= mempty)
                     <*> (o .:? "publisherProfileId")
                     <*> (o .:? "rateCardInfoLink")
                     <*> (o .:? "topHeadlines" .!= mempty)
                     <*> (o .:? "programmaticContact"))

instance ToJSON PublisherProFileAPIProto where
        toJSON PublisherProFileAPIProto'{..}
          = object
              (catMaybes
                 [("audience" .=) <$> _ppfapAudience,
                  ("state" .=) <$> _ppfapState,
                  ("mediaKitLink" .=) <$> _ppfapMediaKitLink,
                  ("directContact" .=) <$> _ppfapDirectContact,
                  ("samplePageLink" .=) <$> _ppfapSamplePageLink,
                  ("logoUrl" .=) <$> _ppfapLogoURL,
                  Just ("kind" .= _ppfapKind),
                  ("exchange" .=) <$> _ppfapExchange,
                  ("overview" .=) <$> _ppfapOverview,
                  ("googlePlusLink" .=) <$> _ppfapGooglePlusLink,
                  ("profileId" .=) <$> _ppfapProFileId,
                  ("isParent" .=) <$> _ppfapIsParent,
                  ("seller" .=) <$> _ppfapSeller,
                  ("accountId" .=) <$> _ppfapAccountId,
                  ("name" .=) <$> _ppfapName,
                  ("buyerPitchStatement" .=) <$>
                    _ppfapBuyerPitchStatement,
                  ("publisherProvidedForecast" .=) <$>
                    _ppfapPublisherProvidedForecast,
                  ("isPublished" .=) <$> _ppfapIsPublished,
                  ("publisherDomains" .=) <$> _ppfapPublisherDomains,
                  ("publisherProfileId" .=) <$>
                    _ppfapPublisherProFileId,
                  ("rateCardInfoLink" .=) <$> _ppfapRateCardInfoLink,
                  ("topHeadlines" .=) <$> _ppfapTopHeadlines,
                  ("programmaticContact" .=) <$>
                    _ppfapProgrammaticContact])

-- | A proposal can contain multiple deals. A deal contains the terms and
-- targeting information that is used for serving.
--
-- /See:/ 'marketplaceDeal' smart constructor.
data MarketplaceDeal = MarketplaceDeal'
    { _mdExternalDealId                 :: !(Maybe Text)
    , _mdBuyerPrivateData               :: !(Maybe PrivateData)
    , _mdWebPropertyCode                :: !(Maybe Text)
    , _mdCreationTimeMs                 :: !(Maybe (Textual Int64))
    , _mdTerms                          :: !(Maybe DealTerms)
    , _mdLastUpdateTimeMs               :: !(Maybe (Textual Int64))
    , _mdKind                           :: !Text
    , _mdDeliveryControl                :: !(Maybe DeliveryControl)
    , _mdDealServingMetadata            :: !(Maybe DealServingMetadata)
    , _mdFlightStartTimeMs              :: !(Maybe (Textual Int64))
    , _mdSharedTargetings               :: !(Maybe [SharedTargeting])
    , _mdProposalId                     :: !(Maybe Text)
    , _mdDealId                         :: !(Maybe Text)
    , _mdInventoryDescription           :: !(Maybe Text)
    , _mdSyndicationProduct             :: !(Maybe Text)
    , _mdFlightEndTimeMs                :: !(Maybe (Textual Int64))
    , _mdName                           :: !(Maybe Text)
    , _mdSellerContacts                 :: !(Maybe [ContactInformation])
    , _mdProgrammaticCreativeSource     :: !(Maybe Text)
    , _mdCreativePreApprovalPolicy      :: !(Maybe Text)
    , _mdProductRevisionNumber          :: !(Maybe (Textual Int64))
    , _mdProductId                      :: !(Maybe Text)
    , _mdCreativeSafeFrameCompatibility :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'mdLastUpdateTimeMs'
--
-- * 'mdKind'
--
-- * 'mdDeliveryControl'
--
-- * 'mdDealServingMetadata'
--
-- * 'mdFlightStartTimeMs'
--
-- * 'mdSharedTargetings'
--
-- * 'mdProposalId'
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
-- * 'mdProgrammaticCreativeSource'
--
-- * 'mdCreativePreApprovalPolicy'
--
-- * 'mdProductRevisionNumber'
--
-- * 'mdProductId'
--
-- * 'mdCreativeSafeFrameCompatibility'
marketplaceDeal
    :: MarketplaceDeal
marketplaceDeal =
    MarketplaceDeal'
    { _mdExternalDealId = Nothing
    , _mdBuyerPrivateData = Nothing
    , _mdWebPropertyCode = Nothing
    , _mdCreationTimeMs = Nothing
    , _mdTerms = Nothing
    , _mdLastUpdateTimeMs = Nothing
    , _mdKind = "adexchangebuyer#marketplaceDeal"
    , _mdDeliveryControl = Nothing
    , _mdDealServingMetadata = Nothing
    , _mdFlightStartTimeMs = Nothing
    , _mdSharedTargetings = Nothing
    , _mdProposalId = Nothing
    , _mdDealId = Nothing
    , _mdInventoryDescription = Nothing
    , _mdSyndicationProduct = Nothing
    , _mdFlightEndTimeMs = Nothing
    , _mdName = Nothing
    , _mdSellerContacts = Nothing
    , _mdProgrammaticCreativeSource = Nothing
    , _mdCreativePreApprovalPolicy = Nothing
    , _mdProductRevisionNumber = Nothing
    , _mdProductId = Nothing
    , _mdCreativeSafeFrameCompatibility = Nothing
    }

-- | The external deal id assigned to this deal once the deal is finalized.
-- This is the deal-id that shows up in serving\/reporting etc. (readonly)
mdExternalDealId :: Lens' MarketplaceDeal (Maybe Text)
mdExternalDealId
  = lens _mdExternalDealId
      (\ s a -> s{_mdExternalDealId = a})

-- | Buyer private data (hidden from seller).
mdBuyerPrivateData :: Lens' MarketplaceDeal (Maybe PrivateData)
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
      . mapping _Coerce

-- | The negotiable terms of the deal. (updatable)
mdTerms :: Lens' MarketplaceDeal (Maybe DealTerms)
mdTerms = lens _mdTerms (\ s a -> s{_mdTerms = a})

-- | The time (ms since epoch) when the deal was last updated. (readonly)
mdLastUpdateTimeMs :: Lens' MarketplaceDeal (Maybe Int64)
mdLastUpdateTimeMs
  = lens _mdLastUpdateTimeMs
      (\ s a -> s{_mdLastUpdateTimeMs = a})
      . mapping _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"adexchangebuyer#marketplaceDeal\".
mdKind :: Lens' MarketplaceDeal Text
mdKind = lens _mdKind (\ s a -> s{_mdKind = a})

-- | The set of fields around delivery control that are interesting for a
-- buyer to see but are non-negotiable. These are set by the publisher.
-- This message is assigned an id of 100 since some day we would want to
-- model this as a protobuf extension.
mdDeliveryControl :: Lens' MarketplaceDeal (Maybe DeliveryControl)
mdDeliveryControl
  = lens _mdDeliveryControl
      (\ s a -> s{_mdDeliveryControl = a})

-- | Metadata about the serving status of this deal (readonly, writes via
-- custom actions)
mdDealServingMetadata :: Lens' MarketplaceDeal (Maybe DealServingMetadata)
mdDealServingMetadata
  = lens _mdDealServingMetadata
      (\ s a -> s{_mdDealServingMetadata = a})

-- | Proposed flight start time of the deal (ms since epoch) This will
-- generally be stored in a granularity of a second. (updatable)
mdFlightStartTimeMs :: Lens' MarketplaceDeal (Maybe Int64)
mdFlightStartTimeMs
  = lens _mdFlightStartTimeMs
      (\ s a -> s{_mdFlightStartTimeMs = a})
      . mapping _Coerce

-- | The shared targeting visible to buyers and sellers. Each shared
-- targeting entity is AND\'d together. (updatable)
mdSharedTargetings :: Lens' MarketplaceDeal [SharedTargeting]
mdSharedTargetings
  = lens _mdSharedTargetings
      (\ s a -> s{_mdSharedTargetings = a})
      . _Default
      . _Coerce

mdProposalId :: Lens' MarketplaceDeal (Maybe Text)
mdProposalId
  = lens _mdProposalId (\ s a -> s{_mdProposalId = a})

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
      . mapping _Coerce

-- | The name of the deal. (updatable)
mdName :: Lens' MarketplaceDeal (Maybe Text)
mdName = lens _mdName (\ s a -> s{_mdName = a})

-- | Optional Seller contact information for the deal (buyer-readonly)
mdSellerContacts :: Lens' MarketplaceDeal [ContactInformation]
mdSellerContacts
  = lens _mdSellerContacts
      (\ s a -> s{_mdSellerContacts = a})
      . _Default
      . _Coerce

-- | Specifies the creative source for programmatic deals, PUBLISHER means
-- creative is provided by seller and ADVERTISR means creative is provided
-- by buyer. (buyer-readonly)
mdProgrammaticCreativeSource :: Lens' MarketplaceDeal (Maybe Text)
mdProgrammaticCreativeSource
  = lens _mdProgrammaticCreativeSource
      (\ s a -> s{_mdProgrammaticCreativeSource = a})

-- | Specifies the creative pre-approval policy (buyer-readonly)
mdCreativePreApprovalPolicy :: Lens' MarketplaceDeal (Maybe Text)
mdCreativePreApprovalPolicy
  = lens _mdCreativePreApprovalPolicy
      (\ s a -> s{_mdCreativePreApprovalPolicy = a})

-- | The revision number of the product that the deal was created from
-- (readonly, except on create)
mdProductRevisionNumber :: Lens' MarketplaceDeal (Maybe Int64)
mdProductRevisionNumber
  = lens _mdProductRevisionNumber
      (\ s a -> s{_mdProductRevisionNumber = a})
      . mapping _Coerce

-- | The product-id from which this deal was created. (readonly, except on
-- create)
mdProductId :: Lens' MarketplaceDeal (Maybe Text)
mdProductId
  = lens _mdProductId (\ s a -> s{_mdProductId = a})

-- | Specifies whether the creative is safeFrame compatible (buyer-readonly)
mdCreativeSafeFrameCompatibility :: Lens' MarketplaceDeal (Maybe Text)
mdCreativeSafeFrameCompatibility
  = lens _mdCreativeSafeFrameCompatibility
      (\ s a -> s{_mdCreativeSafeFrameCompatibility = a})

instance FromJSON MarketplaceDeal where
        parseJSON
          = withObject "MarketplaceDeal"
              (\ o ->
                 MarketplaceDeal' <$>
                   (o .:? "externalDealId") <*>
                     (o .:? "buyerPrivateData")
                     <*> (o .:? "webPropertyCode")
                     <*> (o .:? "creationTimeMs")
                     <*> (o .:? "terms")
                     <*> (o .:? "lastUpdateTimeMs")
                     <*>
                     (o .:? "kind" .!= "adexchangebuyer#marketplaceDeal")
                     <*> (o .:? "deliveryControl")
                     <*> (o .:? "dealServingMetadata")
                     <*> (o .:? "flightStartTimeMs")
                     <*> (o .:? "sharedTargetings" .!= mempty)
                     <*> (o .:? "proposalId")
                     <*> (o .:? "dealId")
                     <*> (o .:? "inventoryDescription")
                     <*> (o .:? "syndicationProduct")
                     <*> (o .:? "flightEndTimeMs")
                     <*> (o .:? "name")
                     <*> (o .:? "sellerContacts" .!= mempty)
                     <*> (o .:? "programmaticCreativeSource")
                     <*> (o .:? "creativePreApprovalPolicy")
                     <*> (o .:? "productRevisionNumber")
                     <*> (o .:? "productId")
                     <*> (o .:? "creativeSafeFrameCompatibility"))

instance ToJSON MarketplaceDeal where
        toJSON MarketplaceDeal'{..}
          = object
              (catMaybes
                 [("externalDealId" .=) <$> _mdExternalDealId,
                  ("buyerPrivateData" .=) <$> _mdBuyerPrivateData,
                  ("webPropertyCode" .=) <$> _mdWebPropertyCode,
                  ("creationTimeMs" .=) <$> _mdCreationTimeMs,
                  ("terms" .=) <$> _mdTerms,
                  ("lastUpdateTimeMs" .=) <$> _mdLastUpdateTimeMs,
                  Just ("kind" .= _mdKind),
                  ("deliveryControl" .=) <$> _mdDeliveryControl,
                  ("dealServingMetadata" .=) <$>
                    _mdDealServingMetadata,
                  ("flightStartTimeMs" .=) <$> _mdFlightStartTimeMs,
                  ("sharedTargetings" .=) <$> _mdSharedTargetings,
                  ("proposalId" .=) <$> _mdProposalId,
                  ("dealId" .=) <$> _mdDealId,
                  ("inventoryDescription" .=) <$>
                    _mdInventoryDescription,
                  ("syndicationProduct" .=) <$> _mdSyndicationProduct,
                  ("flightEndTimeMs" .=) <$> _mdFlightEndTimeMs,
                  ("name" .=) <$> _mdName,
                  ("sellerContacts" .=) <$> _mdSellerContacts,
                  ("programmaticCreativeSource" .=) <$>
                    _mdProgrammaticCreativeSource,
                  ("creativePreApprovalPolicy" .=) <$>
                    _mdCreativePreApprovalPolicy,
                  ("productRevisionNumber" .=) <$>
                    _mdProductRevisionNumber,
                  ("productId" .=) <$> _mdProductId,
                  ("creativeSafeFrameCompatibility" .=) <$>
                    _mdCreativeSafeFrameCompatibility])

--
-- /See:/ 'getOffersResponse' smart constructor.
newtype GetOffersResponse = GetOffersResponse'
    { _gorProducts :: Maybe [Product]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetOffersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gorProducts'
getOffersResponse
    :: GetOffersResponse
getOffersResponse =
    GetOffersResponse'
    { _gorProducts = Nothing
    }

-- | The returned list of products.
gorProducts :: Lens' GetOffersResponse [Product]
gorProducts
  = lens _gorProducts (\ s a -> s{_gorProducts = a}) .
      _Default
      . _Coerce

instance FromJSON GetOffersResponse where
        parseJSON
          = withObject "GetOffersResponse"
              (\ o ->
                 GetOffersResponse' <$> (o .:? "products" .!= mempty))

instance ToJSON GetOffersResponse where
        toJSON GetOffersResponse'{..}
          = object
              (catMaybes [("products" .=) <$> _gorProducts])

--
-- /See:/ 'dealTermsNonGuaranteedAuctionTerms' smart constructor.
data DealTermsNonGuaranteedAuctionTerms = DealTermsNonGuaranteedAuctionTerms'
    { _dtngatReservePricePerBuyers      :: !(Maybe [PricePerBuyer])
    , _dtngatAutoOptimizePrivateAuction :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DealTermsNonGuaranteedAuctionTerms' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtngatReservePricePerBuyers'
--
-- * 'dtngatAutoOptimizePrivateAuction'
dealTermsNonGuaranteedAuctionTerms
    :: DealTermsNonGuaranteedAuctionTerms
dealTermsNonGuaranteedAuctionTerms =
    DealTermsNonGuaranteedAuctionTerms'
    { _dtngatReservePricePerBuyers = Nothing
    , _dtngatAutoOptimizePrivateAuction = Nothing
    }

-- | Reserve price for the specified buyer.
dtngatReservePricePerBuyers :: Lens' DealTermsNonGuaranteedAuctionTerms [PricePerBuyer]
dtngatReservePricePerBuyers
  = lens _dtngatReservePricePerBuyers
      (\ s a -> s{_dtngatReservePricePerBuyers = a})
      . _Default
      . _Coerce

-- | True if open auction buyers are allowed to compete with invited buyers
-- in this private auction (buyer-readonly).
dtngatAutoOptimizePrivateAuction :: Lens' DealTermsNonGuaranteedAuctionTerms (Maybe Bool)
dtngatAutoOptimizePrivateAuction
  = lens _dtngatAutoOptimizePrivateAuction
      (\ s a -> s{_dtngatAutoOptimizePrivateAuction = a})

instance FromJSON DealTermsNonGuaranteedAuctionTerms
         where
        parseJSON
          = withObject "DealTermsNonGuaranteedAuctionTerms"
              (\ o ->
                 DealTermsNonGuaranteedAuctionTerms' <$>
                   (o .:? "reservePricePerBuyers" .!= mempty) <*>
                     (o .:? "autoOptimizePrivateAuction"))

instance ToJSON DealTermsNonGuaranteedAuctionTerms
         where
        toJSON DealTermsNonGuaranteedAuctionTerms'{..}
          = object
              (catMaybes
                 [("reservePricePerBuyers" .=) <$>
                    _dtngatReservePricePerBuyers,
                  ("autoOptimizePrivateAuction" .=) <$>
                    _dtngatAutoOptimizePrivateAuction])

--
-- /See:/ 'creativeFilteringReasonsReasonsItem' smart constructor.
data CreativeFilteringReasonsReasonsItem = CreativeFilteringReasonsReasonsItem'
    { _cfrriFilteringStatus :: !(Maybe (Textual Int32))
    , _cfrriFilteringCount  :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFilteringReasonsReasonsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfrriFilteringStatus'
--
-- * 'cfrriFilteringCount'
creativeFilteringReasonsReasonsItem
    :: CreativeFilteringReasonsReasonsItem
creativeFilteringReasonsReasonsItem =
    CreativeFilteringReasonsReasonsItem'
    { _cfrriFilteringStatus = Nothing
    , _cfrriFilteringCount = Nothing
    }

-- | The filtering status code. Please refer to the creative-status-codes.txt
-- file for different statuses.
cfrriFilteringStatus :: Lens' CreativeFilteringReasonsReasonsItem (Maybe Int32)
cfrriFilteringStatus
  = lens _cfrriFilteringStatus
      (\ s a -> s{_cfrriFilteringStatus = a})
      . mapping _Coerce

-- | The number of times the creative was filtered for the status. The count
-- is aggregated across all publishers on the exchange.
cfrriFilteringCount :: Lens' CreativeFilteringReasonsReasonsItem (Maybe Int64)
cfrriFilteringCount
  = lens _cfrriFilteringCount
      (\ s a -> s{_cfrriFilteringCount = a})
      . mapping _Coerce

instance FromJSON CreativeFilteringReasonsReasonsItem
         where
        parseJSON
          = withObject "CreativeFilteringReasonsReasonsItem"
              (\ o ->
                 CreativeFilteringReasonsReasonsItem' <$>
                   (o .:? "filteringStatus") <*>
                     (o .:? "filteringCount"))

instance ToJSON CreativeFilteringReasonsReasonsItem
         where
        toJSON CreativeFilteringReasonsReasonsItem'{..}
          = object
              (catMaybes
                 [("filteringStatus" .=) <$> _cfrriFilteringStatus,
                  ("filteringCount" .=) <$> _cfrriFilteringCount])

--
-- /See:/ 'dealTerms' smart constructor.
data DealTerms = DealTerms'
    { _dtEstimatedGrossSpend          :: !(Maybe Price)
    , _dtNonGuaranteedFixedPriceTerms :: !(Maybe DealTermsNonGuaranteedFixedPriceTerms)
    , _dtNonGuaranteedAuctionTerms    :: !(Maybe DealTermsNonGuaranteedAuctionTerms)
    , _dtBrandingType                 :: !(Maybe Text)
    , _dtEstimatedImpressionsPerDay   :: !(Maybe (Textual Int64))
    , _dtSellerTimeZone               :: !(Maybe Text)
    , _dtGuaranteedFixedPriceTerms    :: !(Maybe DealTermsGuaranteedFixedPriceTerms)
    , _dtDescription                  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DealTerms' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtEstimatedGrossSpend'
--
-- * 'dtNonGuaranteedFixedPriceTerms'
--
-- * 'dtNonGuaranteedAuctionTerms'
--
-- * 'dtBrandingType'
--
-- * 'dtEstimatedImpressionsPerDay'
--
-- * 'dtSellerTimeZone'
--
-- * 'dtGuaranteedFixedPriceTerms'
--
-- * 'dtDescription'
dealTerms
    :: DealTerms
dealTerms =
    DealTerms'
    { _dtEstimatedGrossSpend = Nothing
    , _dtNonGuaranteedFixedPriceTerms = Nothing
    , _dtNonGuaranteedAuctionTerms = Nothing
    , _dtBrandingType = Nothing
    , _dtEstimatedImpressionsPerDay = Nothing
    , _dtSellerTimeZone = Nothing
    , _dtGuaranteedFixedPriceTerms = Nothing
    , _dtDescription = Nothing
    }

-- | Non-binding estimate of the estimated gross spend for this deal Can be
-- set by buyer or seller.
dtEstimatedGrossSpend :: Lens' DealTerms (Maybe Price)
dtEstimatedGrossSpend
  = lens _dtEstimatedGrossSpend
      (\ s a -> s{_dtEstimatedGrossSpend = a})

-- | The terms for non-guaranteed fixed price deals.
dtNonGuaranteedFixedPriceTerms :: Lens' DealTerms (Maybe DealTermsNonGuaranteedFixedPriceTerms)
dtNonGuaranteedFixedPriceTerms
  = lens _dtNonGuaranteedFixedPriceTerms
      (\ s a -> s{_dtNonGuaranteedFixedPriceTerms = a})

-- | The terms for non-guaranteed auction deals.
dtNonGuaranteedAuctionTerms :: Lens' DealTerms (Maybe DealTermsNonGuaranteedAuctionTerms)
dtNonGuaranteedAuctionTerms
  = lens _dtNonGuaranteedAuctionTerms
      (\ s a -> s{_dtNonGuaranteedAuctionTerms = a})

-- | Visibilty of the URL in bid requests.
dtBrandingType :: Lens' DealTerms (Maybe Text)
dtBrandingType
  = lens _dtBrandingType
      (\ s a -> s{_dtBrandingType = a})

-- | Non-binding estimate of the impressions served per day Can be set by
-- buyer or seller.
dtEstimatedImpressionsPerDay :: Lens' DealTerms (Maybe Int64)
dtEstimatedImpressionsPerDay
  = lens _dtEstimatedImpressionsPerDay
      (\ s a -> s{_dtEstimatedImpressionsPerDay = a})
      . mapping _Coerce

-- | For deals with Cost Per Day billing, defines the timezone used to mark
-- the boundaries of a day (buyer-readonly)
dtSellerTimeZone :: Lens' DealTerms (Maybe Text)
dtSellerTimeZone
  = lens _dtSellerTimeZone
      (\ s a -> s{_dtSellerTimeZone = a})

-- | The terms for guaranteed fixed price deals.
dtGuaranteedFixedPriceTerms :: Lens' DealTerms (Maybe DealTermsGuaranteedFixedPriceTerms)
dtGuaranteedFixedPriceTerms
  = lens _dtGuaranteedFixedPriceTerms
      (\ s a -> s{_dtGuaranteedFixedPriceTerms = a})

-- | Description for the proposed terms of the deal.
dtDescription :: Lens' DealTerms (Maybe Text)
dtDescription
  = lens _dtDescription
      (\ s a -> s{_dtDescription = a})

instance FromJSON DealTerms where
        parseJSON
          = withObject "DealTerms"
              (\ o ->
                 DealTerms' <$>
                   (o .:? "estimatedGrossSpend") <*>
                     (o .:? "nonGuaranteedFixedPriceTerms")
                     <*> (o .:? "nonGuaranteedAuctionTerms")
                     <*> (o .:? "brandingType")
                     <*> (o .:? "estimatedImpressionsPerDay")
                     <*> (o .:? "sellerTimeZone")
                     <*> (o .:? "guaranteedFixedPriceTerms")
                     <*> (o .:? "description"))

instance ToJSON DealTerms where
        toJSON DealTerms'{..}
          = object
              (catMaybes
                 [("estimatedGrossSpend" .=) <$>
                    _dtEstimatedGrossSpend,
                  ("nonGuaranteedFixedPriceTerms" .=) <$>
                    _dtNonGuaranteedFixedPriceTerms,
                  ("nonGuaranteedAuctionTerms" .=) <$>
                    _dtNonGuaranteedAuctionTerms,
                  ("brandingType" .=) <$> _dtBrandingType,
                  ("estimatedImpressionsPerDay" .=) <$>
                    _dtEstimatedImpressionsPerDay,
                  ("sellerTimeZone" .=) <$> _dtSellerTimeZone,
                  ("guaranteedFixedPriceTerms" .=) <$>
                    _dtGuaranteedFixedPriceTerms,
                  ("description" .=) <$> _dtDescription])

--
-- /See:/ 'marketplaceLabel' smart constructor.
data MarketplaceLabel = MarketplaceLabel'
    { _mlDeprecatedMarketplaceDealParty :: !(Maybe MarketplaceDealParty)
    , _mlAccountId                      :: !(Maybe Text)
    , _mlCreateTimeMs                   :: !(Maybe (Textual Int64))
    , _mlLabel                          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    MarketplaceLabel'
    { _mlDeprecatedMarketplaceDealParty = Nothing
    , _mlAccountId = Nothing
    , _mlCreateTimeMs = Nothing
    , _mlLabel = Nothing
    }

-- | Information about the party that created the label.
mlDeprecatedMarketplaceDealParty :: Lens' MarketplaceLabel (Maybe MarketplaceDealParty)
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
      . mapping _Coerce

-- | The label to use.
mlLabel :: Lens' MarketplaceLabel (Maybe Text)
mlLabel = lens _mlLabel (\ s a -> s{_mlLabel = a})

instance FromJSON MarketplaceLabel where
        parseJSON
          = withObject "MarketplaceLabel"
              (\ o ->
                 MarketplaceLabel' <$>
                   (o .:? "deprecatedMarketplaceDealParty") <*>
                     (o .:? "accountId")
                     <*> (o .:? "createTimeMs")
                     <*> (o .:? "label"))

instance ToJSON MarketplaceLabel where
        toJSON MarketplaceLabel'{..}
          = object
              (catMaybes
                 [("deprecatedMarketplaceDealParty" .=) <$>
                    _mlDeprecatedMarketplaceDealParty,
                  ("accountId" .=) <$> _mlAccountId,
                  ("createTimeMs" .=) <$> _mlCreateTimeMs,
                  ("label" .=) <$> _mlLabel])

--
-- /See:/ 'buyer' smart constructor.
newtype Buyer = Buyer'
    { _buyAccountId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Buyer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buyAccountId'
buyer
    :: Buyer
buyer =
    Buyer'
    { _buyAccountId = Nothing
    }

-- | Adx account id of the buyer.
buyAccountId :: Lens' Buyer (Maybe Text)
buyAccountId
  = lens _buyAccountId (\ s a -> s{_buyAccountId = a})

instance FromJSON Buyer where
        parseJSON
          = withObject "Buyer"
              (\ o -> Buyer' <$> (o .:? "accountId"))

instance ToJSON Buyer where
        toJSON Buyer'{..}
          = object
              (catMaybes [("accountId" .=) <$> _buyAccountId])

--
-- /See:/ 'addOrderDealsRequest' smart constructor.
data AddOrderDealsRequest = AddOrderDealsRequest'
    { _aUpdateAction           :: !(Maybe Text)
    , _aDeals                  :: !(Maybe [MarketplaceDeal])
    , _aProposalRevisionNumber :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddOrderDealsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aUpdateAction'
--
-- * 'aDeals'
--
-- * 'aProposalRevisionNumber'
addOrderDealsRequest
    :: AddOrderDealsRequest
addOrderDealsRequest =
    AddOrderDealsRequest'
    { _aUpdateAction = Nothing
    , _aDeals = Nothing
    , _aProposalRevisionNumber = Nothing
    }

-- | Indicates an optional action to take on the proposal
aUpdateAction :: Lens' AddOrderDealsRequest (Maybe Text)
aUpdateAction
  = lens _aUpdateAction
      (\ s a -> s{_aUpdateAction = a})

-- | The list of deals to add
aDeals :: Lens' AddOrderDealsRequest [MarketplaceDeal]
aDeals
  = lens _aDeals (\ s a -> s{_aDeals = a}) . _Default .
      _Coerce

-- | The last known proposal revision number.
aProposalRevisionNumber :: Lens' AddOrderDealsRequest (Maybe Int64)
aProposalRevisionNumber
  = lens _aProposalRevisionNumber
      (\ s a -> s{_aProposalRevisionNumber = a})
      . mapping _Coerce

instance FromJSON AddOrderDealsRequest where
        parseJSON
          = withObject "AddOrderDealsRequest"
              (\ o ->
                 AddOrderDealsRequest' <$>
                   (o .:? "updateAction") <*> (o .:? "deals" .!= mempty)
                     <*> (o .:? "proposalRevisionNumber"))

instance ToJSON AddOrderDealsRequest where
        toJSON AddOrderDealsRequest'{..}
          = object
              (catMaybes
                 [("updateAction" .=) <$> _aUpdateAction,
                  ("deals" .=) <$> _aDeals,
                  ("proposalRevisionNumber" .=) <$>
                    _aProposalRevisionNumber])

-- | Tracks which parties (if any) have paused a deal. The deal is considered
-- paused if has_buyer_paused || has_seller_paused. Each of the
-- has_buyer_paused or the has_seller_paused bits can be set independently.
--
-- /See:/ 'dealServingMetadataDealPauseStatus' smart constructor.
data DealServingMetadataDealPauseStatus = DealServingMetadataDealPauseStatus'
    { _dsmdpsFirstPausedBy   :: !(Maybe Text)
    , _dsmdpsHasBuyerPaused  :: !(Maybe Bool)
    , _dsmdpsHasSellerPaused :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DealServingMetadataDealPauseStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsmdpsFirstPausedBy'
--
-- * 'dsmdpsHasBuyerPaused'
--
-- * 'dsmdpsHasSellerPaused'
dealServingMetadataDealPauseStatus
    :: DealServingMetadataDealPauseStatus
dealServingMetadataDealPauseStatus =
    DealServingMetadataDealPauseStatus'
    { _dsmdpsFirstPausedBy = Nothing
    , _dsmdpsHasBuyerPaused = Nothing
    , _dsmdpsHasSellerPaused = Nothing
    }

-- | If the deal is paused, records which party paused the deal first.
dsmdpsFirstPausedBy :: Lens' DealServingMetadataDealPauseStatus (Maybe Text)
dsmdpsFirstPausedBy
  = lens _dsmdpsFirstPausedBy
      (\ s a -> s{_dsmdpsFirstPausedBy = a})

dsmdpsHasBuyerPaused :: Lens' DealServingMetadataDealPauseStatus (Maybe Bool)
dsmdpsHasBuyerPaused
  = lens _dsmdpsHasBuyerPaused
      (\ s a -> s{_dsmdpsHasBuyerPaused = a})

dsmdpsHasSellerPaused :: Lens' DealServingMetadataDealPauseStatus (Maybe Bool)
dsmdpsHasSellerPaused
  = lens _dsmdpsHasSellerPaused
      (\ s a -> s{_dsmdpsHasSellerPaused = a})

instance FromJSON DealServingMetadataDealPauseStatus
         where
        parseJSON
          = withObject "DealServingMetadataDealPauseStatus"
              (\ o ->
                 DealServingMetadataDealPauseStatus' <$>
                   (o .:? "firstPausedBy") <*> (o .:? "hasBuyerPaused")
                     <*> (o .:? "hasSellerPaused"))

instance ToJSON DealServingMetadataDealPauseStatus
         where
        toJSON DealServingMetadataDealPauseStatus'{..}
          = object
              (catMaybes
                 [("firstPausedBy" .=) <$> _dsmdpsFirstPausedBy,
                  ("hasBuyerPaused" .=) <$> _dsmdpsHasBuyerPaused,
                  ("hasSellerPaused" .=) <$> _dsmdpsHasSellerPaused])

--
-- /See:/ 'dealTermsGuaranteedFixedPriceTerms' smart constructor.
data DealTermsGuaranteedFixedPriceTerms = DealTermsGuaranteedFixedPriceTerms'
    { _dtgfptGuaranteedLooks       :: !(Maybe (Textual Int64))
    , _dtgfptGuaranteedImpressions :: !(Maybe (Textual Int64))
    , _dtgfptBillingInfo           :: !(Maybe DealTermsGuaranteedFixedPriceTermsBillingInfo)
    , _dtgfptFixedPrices           :: !(Maybe [PricePerBuyer])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DealTermsGuaranteedFixedPriceTerms' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgfptGuaranteedLooks'
--
-- * 'dtgfptGuaranteedImpressions'
--
-- * 'dtgfptBillingInfo'
--
-- * 'dtgfptFixedPrices'
dealTermsGuaranteedFixedPriceTerms
    :: DealTermsGuaranteedFixedPriceTerms
dealTermsGuaranteedFixedPriceTerms =
    DealTermsGuaranteedFixedPriceTerms'
    { _dtgfptGuaranteedLooks = Nothing
    , _dtgfptGuaranteedImpressions = Nothing
    , _dtgfptBillingInfo = Nothing
    , _dtgfptFixedPrices = Nothing
    }

-- | Count of guaranteed looks. Required for deal, optional for product.
dtgfptGuaranteedLooks :: Lens' DealTermsGuaranteedFixedPriceTerms (Maybe Int64)
dtgfptGuaranteedLooks
  = lens _dtgfptGuaranteedLooks
      (\ s a -> s{_dtgfptGuaranteedLooks = a})
      . mapping _Coerce

-- | Guaranteed impressions as a percentage. This is the percentage of
-- guaranteed looks that the buyer is guaranteeing to buy.
dtgfptGuaranteedImpressions :: Lens' DealTermsGuaranteedFixedPriceTerms (Maybe Int64)
dtgfptGuaranteedImpressions
  = lens _dtgfptGuaranteedImpressions
      (\ s a -> s{_dtgfptGuaranteedImpressions = a})
      . mapping _Coerce

-- | External billing info for this Deal. This field is relevant when
-- external billing info such as price has a different currency code than
-- DFP\/AdX.
dtgfptBillingInfo :: Lens' DealTermsGuaranteedFixedPriceTerms (Maybe DealTermsGuaranteedFixedPriceTermsBillingInfo)
dtgfptBillingInfo
  = lens _dtgfptBillingInfo
      (\ s a -> s{_dtgfptBillingInfo = a})

-- | Fixed price for the specified buyer.
dtgfptFixedPrices :: Lens' DealTermsGuaranteedFixedPriceTerms [PricePerBuyer]
dtgfptFixedPrices
  = lens _dtgfptFixedPrices
      (\ s a -> s{_dtgfptFixedPrices = a})
      . _Default
      . _Coerce

instance FromJSON DealTermsGuaranteedFixedPriceTerms
         where
        parseJSON
          = withObject "DealTermsGuaranteedFixedPriceTerms"
              (\ o ->
                 DealTermsGuaranteedFixedPriceTerms' <$>
                   (o .:? "guaranteedLooks") <*>
                     (o .:? "guaranteedImpressions")
                     <*> (o .:? "billingInfo")
                     <*> (o .:? "fixedPrices" .!= mempty))

instance ToJSON DealTermsGuaranteedFixedPriceTerms
         where
        toJSON DealTermsGuaranteedFixedPriceTerms'{..}
          = object
              (catMaybes
                 [("guaranteedLooks" .=) <$> _dtgfptGuaranteedLooks,
                  ("guaranteedImpressions" .=) <$>
                    _dtgfptGuaranteedImpressions,
                  ("billingInfo" .=) <$> _dtgfptBillingInfo,
                  ("fixedPrices" .=) <$> _dtgfptFixedPrices])
