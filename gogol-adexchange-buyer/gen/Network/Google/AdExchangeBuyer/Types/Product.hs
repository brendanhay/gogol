{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
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

--
-- /See:/ 'brandDTO' smart constructor.
data BrandDTO = BrandDTO
    { _bdtoAdvertiserId :: !(Maybe (Textual Int64))
    , _bdtoName         :: !(Maybe Text)
    , _bdtoId           :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BrandDTO' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdtoAdvertiserId'
--
-- * 'bdtoName'
--
-- * 'bdtoId'
brandDTO
    :: BrandDTO
brandDTO =
    BrandDTO
    { _bdtoAdvertiserId = Nothing
    , _bdtoName = Nothing
    , _bdtoId = Nothing
    }

bdtoAdvertiserId :: Lens' BrandDTO (Maybe Int64)
bdtoAdvertiserId
  = lens _bdtoAdvertiserId
      (\ s a -> s{_bdtoAdvertiserId = a})
      . mapping _Coerce

bdtoName :: Lens' BrandDTO (Maybe Text)
bdtoName = lens _bdtoName (\ s a -> s{_bdtoName = a})

bdtoId :: Lens' BrandDTO (Maybe Int64)
bdtoId
  = lens _bdtoId (\ s a -> s{_bdtoId = a}) .
      mapping _Coerce

instance FromJSON BrandDTO where
        parseJSON
          = withObject "BrandDTO"
              (\ o ->
                 BrandDTO <$>
                   (o .:? "advertiserId") <*> (o .:? "name") <*>
                     (o .:? "id"))

instance ToJSON BrandDTO where
        toJSON BrandDTO{..}
          = object
              (catMaybes
                 [("advertiserId" .=) <$> _bdtoAdvertiserId,
                  ("name" .=) <$> _bdtoName, ("id" .=) <$> _bdtoId])

-- | An order is associated with a bunch of notes which may optionally be
-- associated with a deal and\/or revision number.
--
-- /See:/ 'marketplaceNote' smart constructor.
data MarketplaceNote = MarketplaceNote
    { _mnNote                :: !(Maybe Text)
    , _mnKind                :: !Text
    , _mnTimestampMs         :: !(Maybe (Textual Int64))
    , _mnDealId              :: !(Maybe Text)
    , _mnNoteId              :: !(Maybe Text)
    , _mnCreatorRole         :: !(Maybe Text)
    , _mnOrderId             :: !(Maybe Text)
    , _mnOrderRevisionNumber :: !(Maybe (Textual Int64))
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
      . mapping _Coerce

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
      . mapping _Coerce

instance FromJSON MarketplaceNote where
        parseJSON
          = withObject "MarketplaceNote"
              (\ o ->
                 MarketplaceNote <$>
                   (o .:? "note") <*>
                     (o .:? "kind" .!= "adexchangebuyer#marketplaceNote")
                     <*> (o .:? "timestampMs")
                     <*> (o .:? "dealId")
                     <*> (o .:? "noteId")
                     <*> (o .:? "creatorRole")
                     <*> (o .:? "orderId")
                     <*> (o .:? "orderRevisionNumber"))

instance ToJSON MarketplaceNote where
        toJSON MarketplaceNote{..}
          = object
              (catMaybes
                 [("note" .=) <$> _mnNote, Just ("kind" .= _mnKind),
                  ("timestampMs" .=) <$> _mnTimestampMs,
                  ("dealId" .=) <$> _mnDealId,
                  ("noteId" .=) <$> _mnNoteId,
                  ("creatorRole" .=) <$> _mnCreatorRole,
                  ("orderId" .=) <$> _mnOrderId,
                  ("orderRevisionNumber" .=) <$>
                    _mnOrderRevisionNumber])

-- | If nativeAd is set, HTMLSnippet and videoURL should not be set.
--
-- /See:/ 'creativeNATiveAd' smart constructor.
data CreativeNATiveAd = CreativeNATiveAd
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
    CreativeNATiveAd
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
                 CreativeNATiveAd <$>
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
        toJSON CreativeNATiveAd{..}
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
newtype EditAllOrderDealsResponse = EditAllOrderDealsResponse
    { _eaodrDeals :: Maybe [MarketplaceDeal]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditAllOrderDealsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eaodrDeals'
editAllOrderDealsResponse
    :: EditAllOrderDealsResponse
editAllOrderDealsResponse =
    EditAllOrderDealsResponse
    { _eaodrDeals = Nothing
    }

-- | List of all deals in the order after edit.
eaodrDeals :: Lens' EditAllOrderDealsResponse [MarketplaceDeal]
eaodrDeals
  = lens _eaodrDeals (\ s a -> s{_eaodrDeals = a}) .
      _Default
      . _Coerce

instance FromJSON EditAllOrderDealsResponse where
        parseJSON
          = withObject "EditAllOrderDealsResponse"
              (\ o ->
                 EditAllOrderDealsResponse <$>
                   (o .:? "deals" .!= mempty))

instance ToJSON EditAllOrderDealsResponse where
        toJSON EditAllOrderDealsResponse{..}
          = object (catMaybes [("deals" .=) <$> _eaodrDeals])

-- | The creatives feed lists the active creatives for the Ad Exchange buyer
-- accounts that the user has access to. Each entry in the feed corresponds
-- to a single creative.
--
-- /See:/ 'creativesList' smart constructor.
data CreativesList = CreativesList
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
clItems :: Lens' CreativesList [Creative]
clItems
  = lens _clItems (\ s a -> s{_clItems = a}) . _Default
      . _Coerce

instance FromJSON CreativesList where
        parseJSON
          = withObject "CreativesList"
              (\ o ->
                 CreativesList <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "adexchangebuyer#creativesList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON CreativesList where
        toJSON CreativesList{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _clNextPageToken,
                  Just ("kind" .= _clKind), ("items" .=) <$> _clItems])

--
-- /See:/ 'creativeServingRestrictionsItemContextsItem' smart constructor.
data CreativeServingRestrictionsItemContextsItem = CreativeServingRestrictionsItemContextsItem
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
    CreativeServingRestrictionsItemContextsItem
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
                 CreativeServingRestrictionsItemContextsItem <$>
                   (o .:? "platform" .!= mempty) <*>
                     (o .:? "contextType")
                     <*> (o .:? "auctionType" .!= mempty)
                     <*> (o .:? "geoCriteriaId" .!= mempty))

instance ToJSON
         CreativeServingRestrictionsItemContextsItem where
        toJSON
          CreativeServingRestrictionsItemContextsItem{..}
          = object
              (catMaybes
                 [("platform" .=) <$> _csriciPlatform,
                  ("contextType" .=) <$> _csriciContextType,
                  ("auctionType" .=) <$> _csriciAuctionType,
                  ("geoCriteriaId" .=) <$> _csriciGeoCriteriaId])

--
-- /See:/ 'termsDTO' smart constructor.
data TermsDTO = TermsDTO
    { _tdtoFinalizeAutomatically      :: !(Maybe Bool)
    , _tdtoBuyerBillingType           :: !(Maybe Text)
    , _tdtoTargetingAllAdSlots        :: !(Maybe Bool)
    , _tdtoURLs                       :: !(Maybe [Text])
    , _tdtoEndDate                    :: !(Maybe DateTime)
    , _tdtoCpm                        :: !(Maybe MoneyDTO)
    , _tdtoEstimatedSpend             :: !(Maybe MoneyDTO)
    , _tdtoAdvertisers                :: !(Maybe [AdvertiserDTO])
    , _tdtoEstimatedImpressionsPerDay :: !(Maybe (Textual Int64))
    , _tdtoMonetizerType              :: !(Maybe Text)
    , _tdtoAudienceSegmentDescription :: !(Maybe Text)
    , _tdtoCreativeReviewPolicy       :: !(Maybe Text)
    , _tdtoMinimumTrueLooks           :: !(Maybe (Textual Int64))
    , _tdtoStartDate                  :: !(Maybe DateTime)
    , _tdtoCreativeBlockingLevel      :: !(Maybe Text)
    , _tdtoSemiTransparent            :: !(Maybe Bool)
    , _tdtoAudienceSegment            :: !(Maybe AudienceSegment)
    , _tdtoDealPremium                :: !(Maybe MoneyDTO)
    , _tdtoIsReservation              :: !(Maybe Bool)
    , _tdtoAdSlots                    :: !(Maybe [AdSlotDTO])
    , _tdtoTermsAttributes            :: !(Maybe [Text])
    , _tdtoInventorySegmentTargeting  :: !(Maybe InventorySegmentTargeting)
    , _tdtoDescriptiveName            :: !(Maybe Text)
    , _tdtoMinimumSpendMicros         :: !(Maybe (Textual Int64))
    , _tdtoTargetByDealId             :: !(Maybe Bool)
    , _tdtoBillingTerms               :: !(Maybe Text)
    , _tdtoDescription                :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TermsDTO' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdtoFinalizeAutomatically'
--
-- * 'tdtoBuyerBillingType'
--
-- * 'tdtoTargetingAllAdSlots'
--
-- * 'tdtoURLs'
--
-- * 'tdtoEndDate'
--
-- * 'tdtoCpm'
--
-- * 'tdtoEstimatedSpend'
--
-- * 'tdtoAdvertisers'
--
-- * 'tdtoEstimatedImpressionsPerDay'
--
-- * 'tdtoMonetizerType'
--
-- * 'tdtoAudienceSegmentDescription'
--
-- * 'tdtoCreativeReviewPolicy'
--
-- * 'tdtoMinimumTrueLooks'
--
-- * 'tdtoStartDate'
--
-- * 'tdtoCreativeBlockingLevel'
--
-- * 'tdtoSemiTransparent'
--
-- * 'tdtoAudienceSegment'
--
-- * 'tdtoDealPremium'
--
-- * 'tdtoIsReservation'
--
-- * 'tdtoAdSlots'
--
-- * 'tdtoTermsAttributes'
--
-- * 'tdtoInventorySegmentTargeting'
--
-- * 'tdtoDescriptiveName'
--
-- * 'tdtoMinimumSpendMicros'
--
-- * 'tdtoTargetByDealId'
--
-- * 'tdtoBillingTerms'
--
-- * 'tdtoDescription'
termsDTO
    :: TermsDTO
termsDTO =
    TermsDTO
    { _tdtoFinalizeAutomatically = Nothing
    , _tdtoBuyerBillingType = Nothing
    , _tdtoTargetingAllAdSlots = Nothing
    , _tdtoURLs = Nothing
    , _tdtoEndDate = Nothing
    , _tdtoCpm = Nothing
    , _tdtoEstimatedSpend = Nothing
    , _tdtoAdvertisers = Nothing
    , _tdtoEstimatedImpressionsPerDay = Nothing
    , _tdtoMonetizerType = Nothing
    , _tdtoAudienceSegmentDescription = Nothing
    , _tdtoCreativeReviewPolicy = Nothing
    , _tdtoMinimumTrueLooks = Nothing
    , _tdtoStartDate = Nothing
    , _tdtoCreativeBlockingLevel = Nothing
    , _tdtoSemiTransparent = Nothing
    , _tdtoAudienceSegment = Nothing
    , _tdtoDealPremium = Nothing
    , _tdtoIsReservation = Nothing
    , _tdtoAdSlots = Nothing
    , _tdtoTermsAttributes = Nothing
    , _tdtoInventorySegmentTargeting = Nothing
    , _tdtoDescriptiveName = Nothing
    , _tdtoMinimumSpendMicros = Nothing
    , _tdtoTargetByDealId = Nothing
    , _tdtoBillingTerms = Nothing
    , _tdtoDescription = Nothing
    }

-- | If true, the offer will finalize automatically when accepted.
tdtoFinalizeAutomatically :: Lens' TermsDTO (Maybe Bool)
tdtoFinalizeAutomatically
  = lens _tdtoFinalizeAutomatically
      (\ s a -> s{_tdtoFinalizeAutomatically = a})

-- | The buyer billing type.
tdtoBuyerBillingType :: Lens' TermsDTO (Maybe Text)
tdtoBuyerBillingType
  = lens _tdtoBuyerBillingType
      (\ s a -> s{_tdtoBuyerBillingType = a})

-- | If true, the offer targets all ad slots.
tdtoTargetingAllAdSlots :: Lens' TermsDTO (Maybe Bool)
tdtoTargetingAllAdSlots
  = lens _tdtoTargetingAllAdSlots
      (\ s a -> s{_tdtoTargetingAllAdSlots = a})

-- | The urls applicable to the offer.
tdtoURLs :: Lens' TermsDTO [Text]
tdtoURLs
  = lens _tdtoURLs (\ s a -> s{_tdtoURLs = a}) .
      _Default
      . _Coerce

-- | The end date for the offer.
tdtoEndDate :: Lens' TermsDTO (Maybe DateTime)
tdtoEndDate
  = lens _tdtoEndDate (\ s a -> s{_tdtoEndDate = a})

-- | The cpm terms.
tdtoCpm :: Lens' TermsDTO (Maybe MoneyDTO)
tdtoCpm = lens _tdtoCpm (\ s a -> s{_tdtoCpm = a})

-- | The estimated spend for the offer.
tdtoEstimatedSpend :: Lens' TermsDTO (Maybe MoneyDTO)
tdtoEstimatedSpend
  = lens _tdtoEstimatedSpend
      (\ s a -> s{_tdtoEstimatedSpend = a})

-- | A list of advertisers for this offer.
tdtoAdvertisers :: Lens' TermsDTO [AdvertiserDTO]
tdtoAdvertisers
  = lens _tdtoAdvertisers
      (\ s a -> s{_tdtoAdvertisers = a})
      . _Default
      . _Coerce

-- | The estimated daily impressions for the offer.
tdtoEstimatedImpressionsPerDay :: Lens' TermsDTO (Maybe Int64)
tdtoEstimatedImpressionsPerDay
  = lens _tdtoEstimatedImpressionsPerDay
      (\ s a -> s{_tdtoEstimatedImpressionsPerDay = a})
      . mapping _Coerce

-- | The monetizer type.
tdtoMonetizerType :: Lens' TermsDTO (Maybe Text)
tdtoMonetizerType
  = lens _tdtoMonetizerType
      (\ s a -> s{_tdtoMonetizerType = a})

-- | A description of the audience segment for the offer.
tdtoAudienceSegmentDescription :: Lens' TermsDTO (Maybe Text)
tdtoAudienceSegmentDescription
  = lens _tdtoAudienceSegmentDescription
      (\ s a -> s{_tdtoAudienceSegmentDescription = a})

-- | Whether to use publisher review policy or AdX review policy.
tdtoCreativeReviewPolicy :: Lens' TermsDTO (Maybe Text)
tdtoCreativeReviewPolicy
  = lens _tdtoCreativeReviewPolicy
      (\ s a -> s{_tdtoCreativeReviewPolicy = a})

-- | The minimum true looks for the offer.
tdtoMinimumTrueLooks :: Lens' TermsDTO (Maybe Int64)
tdtoMinimumTrueLooks
  = lens _tdtoMinimumTrueLooks
      (\ s a -> s{_tdtoMinimumTrueLooks = a})
      . mapping _Coerce

-- | The start date for the offer.
tdtoStartDate :: Lens' TermsDTO (Maybe DateTime)
tdtoStartDate
  = lens _tdtoStartDate
      (\ s a -> s{_tdtoStartDate = a})

-- | Whether to use or ignore publisher blocking rules.
tdtoCreativeBlockingLevel :: Lens' TermsDTO (Maybe Text)
tdtoCreativeBlockingLevel
  = lens _tdtoCreativeBlockingLevel
      (\ s a -> s{_tdtoCreativeBlockingLevel = a})

-- | Whether this offer is semi-transparent.
tdtoSemiTransparent :: Lens' TermsDTO (Maybe Bool)
tdtoSemiTransparent
  = lens _tdtoSemiTransparent
      (\ s a -> s{_tdtoSemiTransparent = a})

-- | The audience segment for the offer.
tdtoAudienceSegment :: Lens' TermsDTO (Maybe AudienceSegment)
tdtoAudienceSegment
  = lens _tdtoAudienceSegment
      (\ s a -> s{_tdtoAudienceSegment = a})

-- | The premium terms.
tdtoDealPremium :: Lens' TermsDTO (Maybe MoneyDTO)
tdtoDealPremium
  = lens _tdtoDealPremium
      (\ s a -> s{_tdtoDealPremium = a})

-- | Whether the offer is a reservation.
tdtoIsReservation :: Lens' TermsDTO (Maybe Bool)
tdtoIsReservation
  = lens _tdtoIsReservation
      (\ s a -> s{_tdtoIsReservation = a})

-- | The particular ad slots targeted by the offer.
tdtoAdSlots :: Lens' TermsDTO [AdSlotDTO]
tdtoAdSlots
  = lens _tdtoAdSlots (\ s a -> s{_tdtoAdSlots = a}) .
      _Default
      . _Coerce

-- | A list of terms attributes.
tdtoTermsAttributes :: Lens' TermsDTO [Text]
tdtoTermsAttributes
  = lens _tdtoTermsAttributes
      (\ s a -> s{_tdtoTermsAttributes = a})
      . _Default
      . _Coerce

-- | The inventory segment targeting for the offer.
tdtoInventorySegmentTargeting :: Lens' TermsDTO (Maybe InventorySegmentTargeting)
tdtoInventorySegmentTargeting
  = lens _tdtoInventorySegmentTargeting
      (\ s a -> s{_tdtoInventorySegmentTargeting = a})

-- | A descriptive name for these terms.
tdtoDescriptiveName :: Lens' TermsDTO (Maybe Text)
tdtoDescriptiveName
  = lens _tdtoDescriptiveName
      (\ s a -> s{_tdtoDescriptiveName = a})

-- | The minimum spend for the offer.
tdtoMinimumSpendMicros :: Lens' TermsDTO (Maybe Int64)
tdtoMinimumSpendMicros
  = lens _tdtoMinimumSpendMicros
      (\ s a -> s{_tdtoMinimumSpendMicros = a})
      . mapping _Coerce

-- | Whether to target by deal id.
tdtoTargetByDealId :: Lens' TermsDTO (Maybe Bool)
tdtoTargetByDealId
  = lens _tdtoTargetByDealId
      (\ s a -> s{_tdtoTargetByDealId = a})

-- | The billing terms.
tdtoBillingTerms :: Lens' TermsDTO (Maybe Text)
tdtoBillingTerms
  = lens _tdtoBillingTerms
      (\ s a -> s{_tdtoBillingTerms = a})

-- | A description for these terms.
tdtoDescription :: Lens' TermsDTO (Maybe Text)
tdtoDescription
  = lens _tdtoDescription
      (\ s a -> s{_tdtoDescription = a})

instance FromJSON TermsDTO where
        parseJSON
          = withObject "TermsDTO"
              (\ o ->
                 TermsDTO <$>
                   (o .:? "finalizeAutomatically") <*>
                     (o .:? "buyerBillingType")
                     <*> (o .:? "targetingAllAdSlots")
                     <*> (o .:? "urls" .!= mempty)
                     <*> (o .:? "endDate")
                     <*> (o .:? "cpm")
                     <*> (o .:? "estimatedSpend")
                     <*> (o .:? "advertisers" .!= mempty)
                     <*> (o .:? "estimatedImpressionsPerDay")
                     <*> (o .:? "monetizerType")
                     <*> (o .:? "audienceSegmentDescription")
                     <*> (o .:? "creativeReviewPolicy")
                     <*> (o .:? "minimumTrueLooks")
                     <*> (o .:? "startDate")
                     <*> (o .:? "creativeBlockingLevel")
                     <*> (o .:? "semiTransparent")
                     <*> (o .:? "audienceSegment")
                     <*> (o .:? "dealPremium")
                     <*> (o .:? "isReservation")
                     <*> (o .:? "adSlots" .!= mempty)
                     <*> (o .:? "termsAttributes" .!= mempty)
                     <*> (o .:? "inventorySegmentTargeting")
                     <*> (o .:? "descriptiveName")
                     <*> (o .:? "minimumSpendMicros")
                     <*> (o .:? "targetByDealId")
                     <*> (o .:? "billingTerms")
                     <*> (o .:? "description"))

instance ToJSON TermsDTO where
        toJSON TermsDTO{..}
          = object
              (catMaybes
                 [("finalizeAutomatically" .=) <$>
                    _tdtoFinalizeAutomatically,
                  ("buyerBillingType" .=) <$> _tdtoBuyerBillingType,
                  ("targetingAllAdSlots" .=) <$>
                    _tdtoTargetingAllAdSlots,
                  ("urls" .=) <$> _tdtoURLs,
                  ("endDate" .=) <$> _tdtoEndDate,
                  ("cpm" .=) <$> _tdtoCpm,
                  ("estimatedSpend" .=) <$> _tdtoEstimatedSpend,
                  ("advertisers" .=) <$> _tdtoAdvertisers,
                  ("estimatedImpressionsPerDay" .=) <$>
                    _tdtoEstimatedImpressionsPerDay,
                  ("monetizerType" .=) <$> _tdtoMonetizerType,
                  ("audienceSegmentDescription" .=) <$>
                    _tdtoAudienceSegmentDescription,
                  ("creativeReviewPolicy" .=) <$>
                    _tdtoCreativeReviewPolicy,
                  ("minimumTrueLooks" .=) <$> _tdtoMinimumTrueLooks,
                  ("startDate" .=) <$> _tdtoStartDate,
                  ("creativeBlockingLevel" .=) <$>
                    _tdtoCreativeBlockingLevel,
                  ("semiTransparent" .=) <$> _tdtoSemiTransparent,
                  ("audienceSegment" .=) <$> _tdtoAudienceSegment,
                  ("dealPremium" .=) <$> _tdtoDealPremium,
                  ("isReservation" .=) <$> _tdtoIsReservation,
                  ("adSlots" .=) <$> _tdtoAdSlots,
                  ("termsAttributes" .=) <$> _tdtoTermsAttributes,
                  ("inventorySegmentTargeting" .=) <$>
                    _tdtoInventorySegmentTargeting,
                  ("descriptiveName" .=) <$> _tdtoDescriptiveName,
                  ("minimumSpendMicros" .=) <$>
                    _tdtoMinimumSpendMicros,
                  ("targetByDealId" .=) <$> _tdtoTargetByDealId,
                  ("billingTerms" .=) <$> _tdtoBillingTerms,
                  ("description" .=) <$> _tdtoDescription])

--
-- /See:/ 'createOrdersResponse' smart constructor.
newtype CreateOrdersResponse = CreateOrdersResponse
    { _corOrders :: Maybe [MarketplaceOrder]
    } deriving (Eq,Show,Data,Typeable,Generic)

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
corOrders :: Lens' CreateOrdersResponse [MarketplaceOrder]
corOrders
  = lens _corOrders (\ s a -> s{_corOrders = a}) .
      _Default
      . _Coerce

instance FromJSON CreateOrdersResponse where
        parseJSON
          = withObject "CreateOrdersResponse"
              (\ o ->
                 CreateOrdersResponse <$> (o .:? "orders" .!= mempty))

instance ToJSON CreateOrdersResponse where
        toJSON CreateOrdersResponse{..}
          = object (catMaybes [("orders" .=) <$> _corOrders])

--
-- /See:/ 'accountBidderLocationItem' smart constructor.
data AccountBidderLocationItem = AccountBidderLocationItem
    { _abliURL        :: !(Maybe Text)
    , _abliMaximumQps :: !(Maybe (Textual Int32))
    , _abliRegion     :: !(Maybe Text)
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
accountBidderLocationItem
    :: AccountBidderLocationItem
accountBidderLocationItem =
    AccountBidderLocationItem
    { _abliURL = Nothing
    , _abliMaximumQps = Nothing
    , _abliRegion = Nothing
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

instance FromJSON AccountBidderLocationItem where
        parseJSON
          = withObject "AccountBidderLocationItem"
              (\ o ->
                 AccountBidderLocationItem <$>
                   (o .:? "url") <*> (o .:? "maximumQps") <*>
                     (o .:? "region"))

instance ToJSON AccountBidderLocationItem where
        toJSON AccountBidderLocationItem{..}
          = object
              (catMaybes
                 [("url" .=) <$> _abliURL,
                  ("maximumQps" .=) <$> _abliMaximumQps,
                  ("region" .=) <$> _abliRegion])

--
-- /See:/ 'privateData' smart constructor.
data PrivateData = PrivateData
    { _pdReferencePayload :: !(Maybe (Textual Word8))
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
    PrivateData
    { _pdReferencePayload = Nothing
    , _pdReferenceId = Nothing
    }

pdReferencePayload :: Lens' PrivateData (Maybe Word8)
pdReferencePayload
  = lens _pdReferencePayload
      (\ s a -> s{_pdReferencePayload = a})
      . mapping _Coerce

pdReferenceId :: Lens' PrivateData (Maybe Text)
pdReferenceId
  = lens _pdReferenceId
      (\ s a -> s{_pdReferenceId = a})

instance FromJSON PrivateData where
        parseJSON
          = withObject "PrivateData"
              (\ o ->
                 PrivateData <$>
                   (o .:? "referencePayload") <*> (o .:? "referenceId"))

instance ToJSON PrivateData where
        toJSON PrivateData{..}
          = object
              (catMaybes
                 [("referencePayload" .=) <$> _pdReferencePayload,
                  ("referenceId" .=) <$> _pdReferenceId])

-- | The configuration data for Ad Exchange RTB - Budget API.
--
-- /See:/ 'budget' smart constructor.
data Budget = Budget
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
    Budget
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

-- | The budget amount to apply for the billingId provided. This is required
-- for update requests.
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
                 Budget <$>
                   (o .:? "currencyCode") <*>
                     (o .:? "kind" .!= "adexchangebuyer#budget")
                     <*> (o .:? "budgetAmount")
                     <*> (o .:? "accountId")
                     <*> (o .:? "id")
                     <*> (o .:? "billingId"))

instance ToJSON Budget where
        toJSON Budget{..}
          = object
              (catMaybes
                 [("currencyCode" .=) <$> _bCurrencyCode,
                  Just ("kind" .= _bKind),
                  ("budgetAmount" .=) <$> _bBudgetAmount,
                  ("accountId" .=) <$> _bAccountId, ("id" .=) <$> _bId,
                  ("billingId" .=) <$> _bBillingId])

--
-- /See:/ 'addOrderNotesRequest' smart constructor.
newtype AddOrderNotesRequest = AddOrderNotesRequest
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
    AddOrderNotesRequest
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
                 AddOrderNotesRequest <$> (o .:? "notes" .!= mempty))

instance ToJSON AddOrderNotesRequest where
        toJSON AddOrderNotesRequest{..}
          = object (catMaybes [("notes" .=) <$> _aonrNotes])

--
-- /See:/ 'getFinalizedNegotiationByExternalDealIdRequest' smart constructor.
newtype GetFinalizedNegotiationByExternalDealIdRequest = GetFinalizedNegotiationByExternalDealIdRequest
    { _gfnbedirIncludePrivateAuctions :: Maybe Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON
         GetFinalizedNegotiationByExternalDealIdRequest where
        parseJSON
          = withObject
              "GetFinalizedNegotiationByExternalDealIdRequest"
              (\ o ->
                 GetFinalizedNegotiationByExternalDealIdRequest <$>
                   (o .:? "includePrivateAuctions"))

instance ToJSON
         GetFinalizedNegotiationByExternalDealIdRequest where
        toJSON
          GetFinalizedNegotiationByExternalDealIdRequest{..}
          = object
              (catMaybes
                 [("includePrivateAuctions" .=) <$>
                    _gfnbedirIncludePrivateAuctions])

--
-- /See:/ 'deliveryControlFrequencyCap' smart constructor.
data DeliveryControlFrequencyCap = DeliveryControlFrequencyCap
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
    DeliveryControlFrequencyCap
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
                 DeliveryControlFrequencyCap <$>
                   (o .:? "maxImpressions") <*> (o .:? "numTimeUnits")
                     <*> (o .:? "timeUnitType"))

instance ToJSON DeliveryControlFrequencyCap where
        toJSON DeliveryControlFrequencyCap{..}
          = object
              (catMaybes
                 [("maxImpressions" .=) <$> _dcfcMaxImpressions,
                  ("numTimeUnits" .=) <$> _dcfcNumTimeUnits,
                  ("timeUnitType" .=) <$> _dcfcTimeUnitType])

--
-- /See:/ 'dealPartyDTO' smart constructor.
data DealPartyDTO = DealPartyDTO
    { _dpdtoBuyerSellerRole :: !(Maybe Text)
    , _dpdtoCustomerId      :: !(Maybe (Textual Int32))
    , _dpdtoName            :: !(Maybe Text)
    , _dpdtoWebProperty     :: !(Maybe WebPropertyDTO)
    , _dpdtoBuyer           :: !(Maybe BuyerDTO)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DealPartyDTO' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpdtoBuyerSellerRole'
--
-- * 'dpdtoCustomerId'
--
-- * 'dpdtoName'
--
-- * 'dpdtoWebProperty'
--
-- * 'dpdtoBuyer'
dealPartyDTO
    :: DealPartyDTO
dealPartyDTO =
    DealPartyDTO
    { _dpdtoBuyerSellerRole = Nothing
    , _dpdtoCustomerId = Nothing
    , _dpdtoName = Nothing
    , _dpdtoWebProperty = Nothing
    , _dpdtoBuyer = Nothing
    }

dpdtoBuyerSellerRole :: Lens' DealPartyDTO (Maybe Text)
dpdtoBuyerSellerRole
  = lens _dpdtoBuyerSellerRole
      (\ s a -> s{_dpdtoBuyerSellerRole = a})

dpdtoCustomerId :: Lens' DealPartyDTO (Maybe Int32)
dpdtoCustomerId
  = lens _dpdtoCustomerId
      (\ s a -> s{_dpdtoCustomerId = a})
      . mapping _Coerce

dpdtoName :: Lens' DealPartyDTO (Maybe Text)
dpdtoName
  = lens _dpdtoName (\ s a -> s{_dpdtoName = a})

dpdtoWebProperty :: Lens' DealPartyDTO (Maybe WebPropertyDTO)
dpdtoWebProperty
  = lens _dpdtoWebProperty
      (\ s a -> s{_dpdtoWebProperty = a})

dpdtoBuyer :: Lens' DealPartyDTO (Maybe BuyerDTO)
dpdtoBuyer
  = lens _dpdtoBuyer (\ s a -> s{_dpdtoBuyer = a})

instance FromJSON DealPartyDTO where
        parseJSON
          = withObject "DealPartyDTO"
              (\ o ->
                 DealPartyDTO <$>
                   (o .:? "buyerSellerRole") <*> (o .:? "customerId")
                     <*> (o .:? "name")
                     <*> (o .:? "webProperty")
                     <*> (o .:? "buyer"))

instance ToJSON DealPartyDTO where
        toJSON DealPartyDTO{..}
          = object
              (catMaybes
                 [("buyerSellerRole" .=) <$> _dpdtoBuyerSellerRole,
                  ("customerId" .=) <$> _dpdtoCustomerId,
                  ("name" .=) <$> _dpdtoName,
                  ("webProperty" .=) <$> _dpdtoWebProperty,
                  ("buyer" .=) <$> _dpdtoBuyer])

--
-- /See:/ 'getNegotiationsResponse' smart constructor.
data GetNegotiationsResponse = GetNegotiationsResponse
    { _gnrKind         :: !Text
    , _gnrNegotiations :: !(Maybe [NegotiationDTO])
    } deriving (Eq,Show,Data,Typeable,Generic)

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

gnrNegotiations :: Lens' GetNegotiationsResponse [NegotiationDTO]
gnrNegotiations
  = lens _gnrNegotiations
      (\ s a -> s{_gnrNegotiations = a})
      . _Default
      . _Coerce

instance FromJSON GetNegotiationsResponse where
        parseJSON
          = withObject "GetNegotiationsResponse"
              (\ o ->
                 GetNegotiationsResponse <$>
                   (o .:? "kind" .!= "adexchangebuyer#negotiationsList")
                     <*> (o .:? "negotiations" .!= mempty))

instance ToJSON GetNegotiationsResponse where
        toJSON GetNegotiationsResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _gnrKind),
                  ("negotiations" .=) <$> _gnrNegotiations])

--
-- /See:/ 'marketplaceDealParty' smart constructor.
data MarketplaceDealParty = MarketplaceDealParty
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
    MarketplaceDealParty
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
                 MarketplaceDealParty <$>
                   (o .:? "seller") <*> (o .:? "buyer"))

instance ToJSON MarketplaceDealParty where
        toJSON MarketplaceDealParty{..}
          = object
              (catMaybes
                 [("seller" .=) <$> _mdpSeller,
                  ("buyer" .=) <$> _mdpBuyer])

--
-- /See:/ 'getOrderNotesResponse' smart constructor.
newtype GetOrderNotesResponse = GetOrderNotesResponse
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
    GetOrderNotesResponse
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
                 GetOrderNotesResponse <$> (o .:? "notes" .!= mempty))

instance ToJSON GetOrderNotesResponse where
        toJSON GetOrderNotesResponse{..}
          = object (catMaybes [("notes" .=) <$> _gonrNotes])

--
-- /See:/ 'ruleKeyValuePair' smart constructor.
data RuleKeyValuePair = RuleKeyValuePair
    { _rkvpKeyName :: !(Maybe Text)
    , _rkvpValue   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON RuleKeyValuePair where
        parseJSON
          = withObject "RuleKeyValuePair"
              (\ o ->
                 RuleKeyValuePair <$>
                   (o .:? "keyName") <*> (o .:? "value"))

instance ToJSON RuleKeyValuePair where
        toJSON RuleKeyValuePair{..}
          = object
              (catMaybes
                 [("keyName" .=) <$> _rkvpKeyName,
                  ("value" .=) <$> _rkvpValue])

--
-- /See:/ 'getOrdersResponse' smart constructor.
newtype GetOrdersResponse = GetOrdersResponse
    { _gorOrders :: Maybe [MarketplaceOrder]
    } deriving (Eq,Show,Data,Typeable,Generic)

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
gorOrders :: Lens' GetOrdersResponse [MarketplaceOrder]
gorOrders
  = lens _gorOrders (\ s a -> s{_gorOrders = a}) .
      _Default
      . _Coerce

instance FromJSON GetOrdersResponse where
        parseJSON
          = withObject "GetOrdersResponse"
              (\ o ->
                 GetOrdersResponse <$> (o .:? "orders" .!= mempty))

instance ToJSON GetOrdersResponse where
        toJSON GetOrdersResponse{..}
          = object (catMaybes [("orders" .=) <$> _gorOrders])

--
-- /See:/ 'creativeServingRestrictionsItemDisApprovalReasonsItem' smart constructor.
data CreativeServingRestrictionsItemDisApprovalReasonsItem = CreativeServingRestrictionsItemDisApprovalReasonsItem
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
    CreativeServingRestrictionsItemDisApprovalReasonsItem
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
                 CreativeServingRestrictionsItemDisApprovalReasonsItem
                   <$>
                   (o .:? "reason") <*> (o .:? "details" .!= mempty))

instance ToJSON
         CreativeServingRestrictionsItemDisApprovalReasonsItem
         where
        toJSON
          CreativeServingRestrictionsItemDisApprovalReasonsItem{..}
          = object
              (catMaybes
                 [("reason" .=) <$> _csridariReason,
                  ("details" .=) <$> _csridariDetails])

-- | An account feed lists Ad Exchange buyer accounts that the user has
-- access to. Each entry in the feed corresponds to a single buyer account.
--
-- /See:/ 'accountsList' smart constructor.
data AccountsList = AccountsList
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
    AccountsList
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
                 AccountsList <$>
                   (o .:? "kind" .!= "adexchangebuyer#accountsList") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON AccountsList where
        toJSON AccountsList{..}
          = object
              (catMaybes
                 [Just ("kind" .= _alKind),
                  ("items" .=) <$> _alItems])

--
-- /See:/ 'createOrdersRequest' smart constructor.
data CreateOrdersRequest = CreateOrdersRequest
    { _cWebPropertyCode :: !(Maybe Text)
    , _cOrders          :: !(Maybe [MarketplaceOrder])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
cOrders :: Lens' CreateOrdersRequest [MarketplaceOrder]
cOrders
  = lens _cOrders (\ s a -> s{_cOrders = a}) . _Default
      . _Coerce

instance FromJSON CreateOrdersRequest where
        parseJSON
          = withObject "CreateOrdersRequest"
              (\ o ->
                 CreateOrdersRequest <$>
                   (o .:? "webPropertyCode") <*>
                     (o .:? "orders" .!= mempty))

instance ToJSON CreateOrdersRequest where
        toJSON CreateOrdersRequest{..}
          = object
              (catMaybes
                 [("webPropertyCode" .=) <$> _cWebPropertyCode,
                  ("orders" .=) <$> _cOrders])

--
-- /See:/ 'adSize' smart constructor.
data AdSize = AdSize
    { _asHeight :: !(Maybe (Textual Int32))
    , _asWidth  :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
asHeight
  = lens _asHeight (\ s a -> s{_asHeight = a}) .
      mapping _Coerce

asWidth :: Lens' AdSize (Maybe Int32)
asWidth
  = lens _asWidth (\ s a -> s{_asWidth = a}) .
      mapping _Coerce

instance FromJSON AdSize where
        parseJSON
          = withObject "AdSize"
              (\ o ->
                 AdSize <$> (o .:? "height") <*> (o .:? "width"))

instance ToJSON AdSize where
        toJSON AdSize{..}
          = object
              (catMaybes
                 [("height" .=) <$> _asHeight,
                  ("width" .=) <$> _asWidth])

--
-- /See:/ 'creativeCorrectionsItem' smart constructor.
data CreativeCorrectionsItem = CreativeCorrectionsItem
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
    CreativeCorrectionsItem
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
                 CreativeCorrectionsItem <$>
                   (o .:? "reason") <*> (o .:? "details" .!= mempty))

instance ToJSON CreativeCorrectionsItem where
        toJSON CreativeCorrectionsItem{..}
          = object
              (catMaybes
                 [("reason" .=) <$> _cciReason,
                  ("details" .=) <$> _cciDetails])

--
-- /See:/ 'addOrderDealsResponse' smart constructor.
data AddOrderDealsResponse = AddOrderDealsResponse
    { _aodrDeals               :: !(Maybe [MarketplaceDeal])
    , _aodrOrderRevisionNumber :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddOrderDealsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aodrDeals'
--
-- * 'aodrOrderRevisionNumber'
addOrderDealsResponse
    :: AddOrderDealsResponse
addOrderDealsResponse =
    AddOrderDealsResponse
    { _aodrDeals = Nothing
    , _aodrOrderRevisionNumber = Nothing
    }

-- | List of deals added (in the same order as passed in the request)
aodrDeals :: Lens' AddOrderDealsResponse [MarketplaceDeal]
aodrDeals
  = lens _aodrDeals (\ s a -> s{_aodrDeals = a}) .
      _Default
      . _Coerce

-- | The updated revision number for the order.
aodrOrderRevisionNumber :: Lens' AddOrderDealsResponse (Maybe Int64)
aodrOrderRevisionNumber
  = lens _aodrOrderRevisionNumber
      (\ s a -> s{_aodrOrderRevisionNumber = a})
      . mapping _Coerce

instance FromJSON AddOrderDealsResponse where
        parseJSON
          = withObject "AddOrderDealsResponse"
              (\ o ->
                 AddOrderDealsResponse <$>
                   (o .:? "deals" .!= mempty) <*>
                     (o .:? "orderRevisionNumber"))

instance ToJSON AddOrderDealsResponse where
        toJSON AddOrderDealsResponse{..}
          = object
              (catMaybes
                 [("deals" .=) <$> _aodrDeals,
                  ("orderRevisionNumber" .=) <$>
                    _aodrOrderRevisionNumber])

--
-- /See:/ 'deliveryControl' smart constructor.
data DeliveryControl = DeliveryControl
    { _dcFrequencyCaps    :: !(Maybe [DeliveryControlFrequencyCap])
    , _dcDeliveryRateType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
                 DeliveryControl <$>
                   (o .:? "frequencyCaps" .!= mempty) <*>
                     (o .:? "deliveryRateType"))

instance ToJSON DeliveryControl where
        toJSON DeliveryControl{..}
          = object
              (catMaybes
                 [("frequencyCaps" .=) <$> _dcFrequencyCaps,
                  ("deliveryRateType" .=) <$> _dcDeliveryRateType])

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
    { _ppbPrice :: !(Maybe Price)
    , _ppbBuyer :: !(Maybe Buyer)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
ppbPrice :: Lens' PricePerBuyer (Maybe Price)
ppbPrice = lens _ppbPrice (\ s a -> s{_ppbPrice = a})

-- | The buyer who will pay this price. If unset, all buyers can pay this
-- price (if the advertisers match, and there\'s no more specific rule
-- matching the buyer).
ppbBuyer :: Lens' PricePerBuyer (Maybe Buyer)
ppbBuyer = lens _ppbBuyer (\ s a -> s{_ppbBuyer = a})

instance FromJSON PricePerBuyer where
        parseJSON
          = withObject "PricePerBuyer"
              (\ o ->
                 PricePerBuyer <$>
                   (o .:? "price") <*> (o .:? "buyer"))

instance ToJSON PricePerBuyer where
        toJSON PricePerBuyer{..}
          = object
              (catMaybes
                 [("price" .=) <$> _ppbPrice,
                  ("buyer" .=) <$> _ppbBuyer])

-- | A creative and its classification data.
--
-- /See:/ 'creative' smart constructor.
data Creative = Creative
    { _cAttribute             :: !(Maybe [Textual Int32])
    , _cNATiveAd              :: !(Maybe CreativeNATiveAd)
    , _cHeight                :: !(Maybe (Textual Int32))
    , _cBuyerCreativeId       :: !(Maybe Text)
    , _cAdvertiserName        :: !(Maybe Text)
    , _cAgencyId              :: !(Maybe (Textual Int64))
    , _cCorrections           :: !(Maybe [CreativeCorrectionsItem])
    , _cProductCategories     :: !(Maybe [Textual Int32])
    , _cKind                  :: !Text
    , _cHTMLSnippet           :: !(Maybe Text)
    , _cAdvertiserId          :: !(Maybe [Textual Int64])
    , _cRestrictedCategories  :: !(Maybe [Textual Int32])
    , _cDealsStatus           :: !(Maybe Text)
    , _cWidth                 :: !(Maybe (Textual Int32))
    , _cClickThroughURL       :: !(Maybe [Text])
    , _cVendorType            :: !(Maybe [Textual Int32])
    , _cAccountId             :: !(Maybe (Textual Int32))
    , _cImpressionTrackingURL :: !(Maybe [Text])
    , _cFilteringReasons      :: !(Maybe CreativeFilteringReasons)
    , _cVersion               :: !(Maybe (Textual Int32))
    , _cSensitiveCategories   :: !(Maybe [Textual Int32])
    , _cVideoURL              :: !(Maybe Text)
    , _cAPIUploadTimestamp    :: !(Maybe DateTime')
    , _cServingRestrictions   :: !(Maybe [CreativeServingRestrictionsItem])
    , _cOpenAuctionStatus     :: !(Maybe Text)
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
    Creative
    { _cAttribute = Nothing
    , _cNATiveAd = Nothing
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
                 Creative <$>
                   (o .:? "attribute" .!= mempty) <*> (o .:? "nativeAd")
                     <*> (o .:? "height")
                     <*> (o .:? "buyerCreativeId")
                     <*> (o .:? "advertiserName")
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
                     <*> (o .:? "api_upload_timestamp")
                     <*> (o .:? "servingRestrictions" .!= mempty)
                     <*> (o .:? "openAuctionStatus"))

instance ToJSON Creative where
        toJSON Creative{..}
          = object
              (catMaybes
                 [("attribute" .=) <$> _cAttribute,
                  ("nativeAd" .=) <$> _cNATiveAd,
                  ("height" .=) <$> _cHeight,
                  ("buyerCreativeId" .=) <$> _cBuyerCreativeId,
                  ("advertiserName" .=) <$> _cAdvertiserName,
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
                  ("api_upload_timestamp" .=) <$> _cAPIUploadTimestamp,
                  ("servingRestrictions" .=) <$> _cServingRestrictions,
                  ("openAuctionStatus" .=) <$> _cOpenAuctionStatus])

--
-- /See:/ 'targetingValueDayPartTargetingDayPart' smart constructor.
data TargetingValueDayPartTargetingDayPart = TargetingValueDayPartTargetingDayPart
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
                 TargetingValueDayPartTargetingDayPart <$>
                   (o .:? "endHour") <*> (o .:? "startHour") <*>
                     (o .:? "startMinute")
                     <*> (o .:? "dayOfWeek")
                     <*> (o .:? "endMinute"))

instance ToJSON TargetingValueDayPartTargetingDayPart
         where
        toJSON TargetingValueDayPartTargetingDayPart{..}
          = object
              (catMaybes
                 [("endHour" .=) <$> _tvdptdpEndHour,
                  ("startHour" .=) <$> _tvdptdpStartHour,
                  ("startMinute" .=) <$> _tvdptdpStartMinute,
                  ("dayOfWeek" .=) <$> _tvdptdpDayOfWeek,
                  ("endMinute" .=) <$> _tvdptdpEndMinute])

--
-- /See:/ 'pretargetingConfigList' smart constructor.
data PretargetingConfigList = PretargetingConfigList
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
    PretargetingConfigList
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
                 PretargetingConfigList <$>
                   (o .:? "kind" .!=
                      "adexchangebuyer#pretargetingConfigList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON PretargetingConfigList where
        toJSON PretargetingConfigList{..}
          = object
              (catMaybes
                 [Just ("kind" .= _pclKind),
                  ("items" .=) <$> _pclItems])

--
-- /See:/ 'buyerDTO' smart constructor.
data BuyerDTO = BuyerDTO
    { _buySponsorAccountId                 :: !(Maybe (Textual Int32))
    , _buyEnabledForInterestTargetingDeals :: !(Maybe Bool)
    , _buyCustomerId                       :: !(Maybe (Textual Int32))
    , _buyEnabledForPreferredDeals         :: !(Maybe Bool)
    , _buyAccountId                        :: !(Maybe (Textual Int32))
    , _buyDisplayName                      :: !(Maybe Text)
    , _buyId                               :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BuyerDTO' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buySponsorAccountId'
--
-- * 'buyEnabledForInterestTargetingDeals'
--
-- * 'buyCustomerId'
--
-- * 'buyEnabledForPreferredDeals'
--
-- * 'buyAccountId'
--
-- * 'buyDisplayName'
--
-- * 'buyId'
buyerDTO
    :: BuyerDTO
buyerDTO =
    BuyerDTO
    { _buySponsorAccountId = Nothing
    , _buyEnabledForInterestTargetingDeals = Nothing
    , _buyCustomerId = Nothing
    , _buyEnabledForPreferredDeals = Nothing
    , _buyAccountId = Nothing
    , _buyDisplayName = Nothing
    , _buyId = Nothing
    }

buySponsorAccountId :: Lens' BuyerDTO (Maybe Int32)
buySponsorAccountId
  = lens _buySponsorAccountId
      (\ s a -> s{_buySponsorAccountId = a})
      . mapping _Coerce

buyEnabledForInterestTargetingDeals :: Lens' BuyerDTO (Maybe Bool)
buyEnabledForInterestTargetingDeals
  = lens _buyEnabledForInterestTargetingDeals
      (\ s a ->
         s{_buyEnabledForInterestTargetingDeals = a})

buyCustomerId :: Lens' BuyerDTO (Maybe Int32)
buyCustomerId
  = lens _buyCustomerId
      (\ s a -> s{_buyCustomerId = a})
      . mapping _Coerce

buyEnabledForPreferredDeals :: Lens' BuyerDTO (Maybe Bool)
buyEnabledForPreferredDeals
  = lens _buyEnabledForPreferredDeals
      (\ s a -> s{_buyEnabledForPreferredDeals = a})

buyAccountId :: Lens' BuyerDTO (Maybe Int32)
buyAccountId
  = lens _buyAccountId (\ s a -> s{_buyAccountId = a})
      . mapping _Coerce

buyDisplayName :: Lens' BuyerDTO (Maybe Text)
buyDisplayName
  = lens _buyDisplayName
      (\ s a -> s{_buyDisplayName = a})

buyId :: Lens' BuyerDTO (Maybe Int32)
buyId
  = lens _buyId (\ s a -> s{_buyId = a}) .
      mapping _Coerce

instance FromJSON BuyerDTO where
        parseJSON
          = withObject "BuyerDTO"
              (\ o ->
                 BuyerDTO <$>
                   (o .:? "sponsorAccountId") <*>
                     (o .:? "enabledForInterestTargetingDeals")
                     <*> (o .:? "customerId")
                     <*> (o .:? "enabledForPreferredDeals")
                     <*> (o .:? "accountId")
                     <*> (o .:? "displayName")
                     <*> (o .:? "id"))

instance ToJSON BuyerDTO where
        toJSON BuyerDTO{..}
          = object
              (catMaybes
                 [("sponsorAccountId" .=) <$> _buySponsorAccountId,
                  ("enabledForInterestTargetingDeals" .=) <$>
                    _buyEnabledForInterestTargetingDeals,
                  ("customerId" .=) <$> _buyCustomerId,
                  ("enabledForPreferredDeals" .=) <$>
                    _buyEnabledForPreferredDeals,
                  ("accountId" .=) <$> _buyAccountId,
                  ("displayName" .=) <$> _buyDisplayName,
                  ("id" .=) <$> _buyId])

--
-- /See:/ 'adSlotDTO' smart constructor.
data AdSlotDTO = AdSlotDTO
    { _asdtoWebPropertyId :: !(Maybe (Textual Int32))
    , _asdtoSize          :: !(Maybe Text)
    , _asdtoChannelCode   :: !(Maybe Text)
    , _asdtoChannelId     :: !(Maybe (Textual Int32))
    , _asdtoName          :: !(Maybe Text)
    , _asdtoDescription   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdSlotDTO' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asdtoWebPropertyId'
--
-- * 'asdtoSize'
--
-- * 'asdtoChannelCode'
--
-- * 'asdtoChannelId'
--
-- * 'asdtoName'
--
-- * 'asdtoDescription'
adSlotDTO
    :: AdSlotDTO
adSlotDTO =
    AdSlotDTO
    { _asdtoWebPropertyId = Nothing
    , _asdtoSize = Nothing
    , _asdtoChannelCode = Nothing
    , _asdtoChannelId = Nothing
    , _asdtoName = Nothing
    , _asdtoDescription = Nothing
    }

asdtoWebPropertyId :: Lens' AdSlotDTO (Maybe Int32)
asdtoWebPropertyId
  = lens _asdtoWebPropertyId
      (\ s a -> s{_asdtoWebPropertyId = a})
      . mapping _Coerce

asdtoSize :: Lens' AdSlotDTO (Maybe Text)
asdtoSize
  = lens _asdtoSize (\ s a -> s{_asdtoSize = a})

asdtoChannelCode :: Lens' AdSlotDTO (Maybe Text)
asdtoChannelCode
  = lens _asdtoChannelCode
      (\ s a -> s{_asdtoChannelCode = a})

asdtoChannelId :: Lens' AdSlotDTO (Maybe Int32)
asdtoChannelId
  = lens _asdtoChannelId
      (\ s a -> s{_asdtoChannelId = a})
      . mapping _Coerce

asdtoName :: Lens' AdSlotDTO (Maybe Text)
asdtoName
  = lens _asdtoName (\ s a -> s{_asdtoName = a})

asdtoDescription :: Lens' AdSlotDTO (Maybe Text)
asdtoDescription
  = lens _asdtoDescription
      (\ s a -> s{_asdtoDescription = a})

instance FromJSON AdSlotDTO where
        parseJSON
          = withObject "AdSlotDTO"
              (\ o ->
                 AdSlotDTO <$>
                   (o .:? "webPropertyId") <*> (o .:? "size") <*>
                     (o .:? "channelCode")
                     <*> (o .:? "channelId")
                     <*> (o .:? "name")
                     <*> (o .:? "description"))

instance ToJSON AdSlotDTO where
        toJSON AdSlotDTO{..}
          = object
              (catMaybes
                 [("webPropertyId" .=) <$> _asdtoWebPropertyId,
                  ("size" .=) <$> _asdtoSize,
                  ("channelCode" .=) <$> _asdtoChannelCode,
                  ("channelId" .=) <$> _asdtoChannelId,
                  ("name" .=) <$> _asdtoName,
                  ("description" .=) <$> _asdtoDescription])

--
-- /See:/ 'dealTermsNonGuaranteedFixedPriceTerms' smart constructor.
newtype DealTermsNonGuaranteedFixedPriceTerms = DealTermsNonGuaranteedFixedPriceTerms
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
    DealTermsNonGuaranteedFixedPriceTerms
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
                 DealTermsNonGuaranteedFixedPriceTerms <$>
                   (o .:? "fixedPrices" .!= mempty))

instance ToJSON DealTermsNonGuaranteedFixedPriceTerms
         where
        toJSON DealTermsNonGuaranteedFixedPriceTerms{..}
          = object
              (catMaybes
                 [("fixedPrices" .=) <$> _dtngfptFixedPrices])

-- | The configuration data for an Ad Exchange performance report list.
--
-- /See:/ 'performanceReport' smart constructor.
data PerformanceReport = PerformanceReport
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
                 PerformanceReport <$>
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
        toJSON PerformanceReport{..}
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
data PretargetingConfigExcludedPlacementsItem = PretargetingConfigExcludedPlacementsItem
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
    PretargetingConfigExcludedPlacementsItem
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
                 PretargetingConfigExcludedPlacementsItem <$>
                   (o .:? "token") <*> (o .:? "type"))

instance ToJSON
         PretargetingConfigExcludedPlacementsItem where
        toJSON PretargetingConfigExcludedPlacementsItem{..}
          = object
              (catMaybes
                 [("token" .=) <$> _pcepiToken,
                  ("type" .=) <$> _pcepiType])

--
-- /See:/ 'seller' smart constructor.
data Seller = Seller
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

instance FromJSON Seller where
        parseJSON
          = withObject "Seller"
              (\ o ->
                 Seller <$>
                   (o .:? "accountId") <*> (o .:? "subAccountId"))

instance ToJSON Seller where
        toJSON Seller{..}
          = object
              (catMaybes
                 [("accountId" .=) <$> _sAccountId,
                  ("subAccountId" .=) <$> _sSubAccountId])

-- | Configuration data for an Ad Exchange buyer account.
--
-- /See:/ 'account' smart constructor.
data Account = Account
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
    Account
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
                 Account <$>
                   (o .:? "maximumTotalQps") <*>
                     (o .:? "kind" .!= "adexchangebuyer#account")
                     <*> (o .:? "cookieMatchingUrl")
                     <*> (o .:? "maximumActiveCreatives")
                     <*> (o .:? "cookieMatchingNid")
                     <*> (o .:? "numberActiveCreatives")
                     <*> (o .:? "id")
                     <*> (o .:? "bidderLocation" .!= mempty))

instance ToJSON Account where
        toJSON Account{..}
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
data DeleteOrderDealsRequest = DeleteOrderDealsRequest
    { _dodrUpdateAction        :: !(Maybe Text)
    , _dodrDealIds             :: !(Maybe [Text])
    , _dodrOrderRevisionNumber :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeleteOrderDealsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dodrUpdateAction'
--
-- * 'dodrDealIds'
--
-- * 'dodrOrderRevisionNumber'
deleteOrderDealsRequest
    :: DeleteOrderDealsRequest
deleteOrderDealsRequest =
    DeleteOrderDealsRequest
    { _dodrUpdateAction = Nothing
    , _dodrDealIds = Nothing
    , _dodrOrderRevisionNumber = Nothing
    }

dodrUpdateAction :: Lens' DeleteOrderDealsRequest (Maybe Text)
dodrUpdateAction
  = lens _dodrUpdateAction
      (\ s a -> s{_dodrUpdateAction = a})

-- | List of deals to delete for a given order
dodrDealIds :: Lens' DeleteOrderDealsRequest [Text]
dodrDealIds
  = lens _dodrDealIds (\ s a -> s{_dodrDealIds = a}) .
      _Default
      . _Coerce

-- | The last known order revision number.
dodrOrderRevisionNumber :: Lens' DeleteOrderDealsRequest (Maybe Int64)
dodrOrderRevisionNumber
  = lens _dodrOrderRevisionNumber
      (\ s a -> s{_dodrOrderRevisionNumber = a})
      . mapping _Coerce

instance FromJSON DeleteOrderDealsRequest where
        parseJSON
          = withObject "DeleteOrderDealsRequest"
              (\ o ->
                 DeleteOrderDealsRequest <$>
                   (o .:? "updateAction") <*>
                     (o .:? "dealIds" .!= mempty)
                     <*> (o .:? "orderRevisionNumber"))

instance ToJSON DeleteOrderDealsRequest where
        toJSON DeleteOrderDealsRequest{..}
          = object
              (catMaybes
                 [("updateAction" .=) <$> _dodrUpdateAction,
                  ("dealIds" .=) <$> _dodrDealIds,
                  ("orderRevisionNumber" .=) <$>
                    _dodrOrderRevisionNumber])

--
-- /See:/ 'contactInformation' smart constructor.
data ContactInformation = ContactInformation
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

instance FromJSON ContactInformation where
        parseJSON
          = withObject "ContactInformation"
              (\ o ->
                 ContactInformation <$>
                   (o .:? "email") <*> (o .:? "name"))

instance ToJSON ContactInformation where
        toJSON ContactInformation{..}
          = object
              (catMaybes
                 [("email" .=) <$> _ciEmail, ("name" .=) <$> _ciName])

-- | A smaller image, for the advertiser logo.
--
-- /See:/ 'creativeNATiveAdLogo' smart constructor.
data CreativeNATiveAdLogo = CreativeNATiveAdLogo
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
    CreativeNATiveAdLogo
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
                 CreativeNATiveAdLogo <$>
                   (o .:? "height") <*> (o .:? "url") <*>
                     (o .:? "width"))

instance ToJSON CreativeNATiveAdLogo where
        toJSON CreativeNATiveAdLogo{..}
          = object
              (catMaybes
                 [("height" .=) <$> _cnatalHeight,
                  ("url" .=) <$> _cnatalURL,
                  ("width" .=) <$> _cnatalWidth])

--
-- /See:/ 'getOrderDealsResponse' smart constructor.
newtype GetOrderDealsResponse = GetOrderDealsResponse
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
    GetOrderDealsResponse
    { _godrDeals = Nothing
    }

-- | List of deals for the order
godrDeals :: Lens' GetOrderDealsResponse [MarketplaceDeal]
godrDeals
  = lens _godrDeals (\ s a -> s{_godrDeals = a}) .
      _Default
      . _Coerce

instance FromJSON GetOrderDealsResponse where
        parseJSON
          = withObject "GetOrderDealsResponse"
              (\ o ->
                 GetOrderDealsResponse <$> (o .:? "deals" .!= mempty))

instance ToJSON GetOrderDealsResponse where
        toJSON GetOrderDealsResponse{..}
          = object (catMaybes [("deals" .=) <$> _godrDeals])

-- | The configuration data for an Ad Exchange performance report list.
-- https:\/\/sites.google.com\/a\/google.com\/adx-integration\/Home\/engineering\/binary-releases\/rtb-api-release
-- https:\/\/cs.corp.google.com\/#piper\/\/\/depot\/google3\/contentads\/adx\/tools\/rtb_api\/adxrtb.py
--
-- /See:/ 'performanceReportList' smart constructor.
data PerformanceReportList = PerformanceReportList
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
    PerformanceReportList
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
                 PerformanceReportList <$>
                   (o .:? "kind" .!=
                      "adexchangebuyer#performanceReportList")
                     <*> (o .:? "performanceReport" .!= mempty))

instance ToJSON PerformanceReportList where
        toJSON PerformanceReportList{..}
          = object
              (catMaybes
                 [Just ("kind" .= _prlKind),
                  ("performanceReport" .=) <$> _prlPerformanceReport])

--
-- /See:/ 'pretargetingConfig' smart constructor.
data PretargetingConfig = PretargetingConfig
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
                 PretargetingConfig <$>
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
        toJSON PretargetingConfig{..}
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
data CreativeFilteringReasons = CreativeFilteringReasons
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
    CreativeFilteringReasons
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
                 CreativeFilteringReasons <$>
                   (o .:? "reasons" .!= mempty) <*> (o .:? "date"))

instance ToJSON CreativeFilteringReasons where
        toJSON CreativeFilteringReasons{..}
          = object
              (catMaybes
                 [("reasons" .=) <$> _cfrReasons,
                  ("date" .=) <$> _cfrDate])

--
-- /See:/ 'targetingValueCreativeSize' smart constructor.
data TargetingValueCreativeSize = TargetingValueCreativeSize
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
    TargetingValueCreativeSize
    { _tvcsSize = Nothing
    , _tvcsCompanionSizes = Nothing
    , _tvcsCreativeSizeType = Nothing
    }

-- | For regular creative size type, specifies the size of the creative.
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
                 TargetingValueCreativeSize <$>
                   (o .:? "size") <*>
                     (o .:? "companionSizes" .!= mempty)
                     <*> (o .:? "creativeSizeType"))

instance ToJSON TargetingValueCreativeSize where
        toJSON TargetingValueCreativeSize{..}
          = object
              (catMaybes
                 [("size" .=) <$> _tvcsSize,
                  ("companionSizes" .=) <$> _tvcsCompanionSizes,
                  ("creativeSizeType" .=) <$> _tvcsCreativeSizeType])

--
-- /See:/ 'negotiationDTO' smart constructor.
data NegotiationDTO = NegotiationDTO
    { _ndtoNegotiationState    :: !(Maybe Text)
    , _ndtoExternalDealId      :: !(Maybe (Textual Int64))
    , _ndtoStatus              :: !(Maybe Text)
    , _ndtoDealType            :: !(Maybe Text)
    , _ndtoNegotiationRounds   :: !(Maybe [NegotiationRoundDTO])
    , _ndtoKind                :: !Text
    , _ndtoBilledBuyer         :: !(Maybe DealPartyDTO)
    , _ndtoBuyerEmailContacts  :: !(Maybe [Text])
    , _ndtoStats               :: !(Maybe StatsDTO)
    , _ndtoSeller              :: !(Maybe DealPartyDTO)
    , _ndtoLabelNames          :: !(Maybe [Text])
    , _ndtoOfferId             :: !(Maybe (Textual Int64))
    , _ndtoNegotiationId       :: !(Maybe (Textual Int64))
    , _ndtoSellerEmailContacts :: !(Maybe [Text])
    , _ndtoBuyer               :: !(Maybe DealPartyDTO)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NegotiationDTO' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ndtoNegotiationState'
--
-- * 'ndtoExternalDealId'
--
-- * 'ndtoStatus'
--
-- * 'ndtoDealType'
--
-- * 'ndtoNegotiationRounds'
--
-- * 'ndtoKind'
--
-- * 'ndtoBilledBuyer'
--
-- * 'ndtoBuyerEmailContacts'
--
-- * 'ndtoStats'
--
-- * 'ndtoSeller'
--
-- * 'ndtoLabelNames'
--
-- * 'ndtoOfferId'
--
-- * 'ndtoNegotiationId'
--
-- * 'ndtoSellerEmailContacts'
--
-- * 'ndtoBuyer'
negotiationDTO
    :: NegotiationDTO
negotiationDTO =
    NegotiationDTO
    { _ndtoNegotiationState = Nothing
    , _ndtoExternalDealId = Nothing
    , _ndtoStatus = Nothing
    , _ndtoDealType = Nothing
    , _ndtoNegotiationRounds = Nothing
    , _ndtoKind = "adexchangebuyer#negotiation"
    , _ndtoBilledBuyer = Nothing
    , _ndtoBuyerEmailContacts = Nothing
    , _ndtoStats = Nothing
    , _ndtoSeller = Nothing
    , _ndtoLabelNames = Nothing
    , _ndtoOfferId = Nothing
    , _ndtoNegotiationId = Nothing
    , _ndtoSellerEmailContacts = Nothing
    , _ndtoBuyer = Nothing
    }

-- | The state of this negotiation.
ndtoNegotiationState :: Lens' NegotiationDTO (Maybe Text)
ndtoNegotiationState
  = lens _ndtoNegotiationState
      (\ s a -> s{_ndtoNegotiationState = a})

-- | For finalized negotiations, the ID of the finalized deal.
ndtoExternalDealId :: Lens' NegotiationDTO (Maybe Int64)
ndtoExternalDealId
  = lens _ndtoExternalDealId
      (\ s a -> s{_ndtoExternalDealId = a})
      . mapping _Coerce

-- | The status of this negotiation.
ndtoStatus :: Lens' NegotiationDTO (Maybe Text)
ndtoStatus
  = lens _ndtoStatus (\ s a -> s{_ndtoStatus = a})

-- | The type of this deal.
ndtoDealType :: Lens' NegotiationDTO (Maybe Text)
ndtoDealType
  = lens _ndtoDealType (\ s a -> s{_ndtoDealType = a})

-- | The series of negotiation rounds for this negotiation.
ndtoNegotiationRounds :: Lens' NegotiationDTO [NegotiationRoundDTO]
ndtoNegotiationRounds
  = lens _ndtoNegotiationRounds
      (\ s a -> s{_ndtoNegotiationRounds = a})
      . _Default
      . _Coerce

ndtoKind :: Lens' NegotiationDTO Text
ndtoKind = lens _ndtoKind (\ s a -> s{_ndtoKind = a})

-- | The billed buyer; Specified by a buyer buying through an intermediary.
ndtoBilledBuyer :: Lens' NegotiationDTO (Maybe DealPartyDTO)
ndtoBilledBuyer
  = lens _ndtoBilledBuyer
      (\ s a -> s{_ndtoBilledBuyer = a})

-- | The buyer party\'s contact email.
ndtoBuyerEmailContacts :: Lens' NegotiationDTO [Text]
ndtoBuyerEmailContacts
  = lens _ndtoBuyerEmailContacts
      (\ s a -> s{_ndtoBuyerEmailContacts = a})
      . _Default
      . _Coerce

-- | The stats for this negotiation.
ndtoStats :: Lens' NegotiationDTO (Maybe StatsDTO)
ndtoStats
  = lens _ndtoStats (\ s a -> s{_ndtoStats = a})

-- | Details of the seller party in this negotiation.
ndtoSeller :: Lens' NegotiationDTO (Maybe DealPartyDTO)
ndtoSeller
  = lens _ndtoSeller (\ s a -> s{_ndtoSeller = a})

-- | A list of label names applicable to this negotiation.
ndtoLabelNames :: Lens' NegotiationDTO [Text]
ndtoLabelNames
  = lens _ndtoLabelNames
      (\ s a -> s{_ndtoLabelNames = a})
      . _Default
      . _Coerce

-- | The ID of this negotiation\'s original offer.
ndtoOfferId :: Lens' NegotiationDTO (Maybe Int64)
ndtoOfferId
  = lens _ndtoOfferId (\ s a -> s{_ndtoOfferId = a}) .
      mapping _Coerce

-- | The unique ID of this negotiation.
ndtoNegotiationId :: Lens' NegotiationDTO (Maybe Int64)
ndtoNegotiationId
  = lens _ndtoNegotiationId
      (\ s a -> s{_ndtoNegotiationId = a})
      . mapping _Coerce

-- | The seller party\'s contact email.
ndtoSellerEmailContacts :: Lens' NegotiationDTO [Text]
ndtoSellerEmailContacts
  = lens _ndtoSellerEmailContacts
      (\ s a -> s{_ndtoSellerEmailContacts = a})
      . _Default
      . _Coerce

-- | Details of the buyer party in this negotiation.
ndtoBuyer :: Lens' NegotiationDTO (Maybe DealPartyDTO)
ndtoBuyer
  = lens _ndtoBuyer (\ s a -> s{_ndtoBuyer = a})

instance FromJSON NegotiationDTO where
        parseJSON
          = withObject "NegotiationDTO"
              (\ o ->
                 NegotiationDTO <$>
                   (o .:? "negotiationState") <*>
                     (o .:? "externalDealId")
                     <*> (o .:? "status")
                     <*> (o .:? "dealType")
                     <*> (o .:? "negotiationRounds" .!= mempty)
                     <*> (o .:? "kind" .!= "adexchangebuyer#negotiation")
                     <*> (o .:? "billedBuyer")
                     <*> (o .:? "buyerEmailContacts" .!= mempty)
                     <*> (o .:? "stats")
                     <*> (o .:? "seller")
                     <*> (o .:? "labelNames" .!= mempty)
                     <*> (o .:? "offerId")
                     <*> (o .:? "negotiationId")
                     <*> (o .:? "sellerEmailContacts" .!= mempty)
                     <*> (o .:? "buyer"))

instance ToJSON NegotiationDTO where
        toJSON NegotiationDTO{..}
          = object
              (catMaybes
                 [("negotiationState" .=) <$> _ndtoNegotiationState,
                  ("externalDealId" .=) <$> _ndtoExternalDealId,
                  ("status" .=) <$> _ndtoStatus,
                  ("dealType" .=) <$> _ndtoDealType,
                  ("negotiationRounds" .=) <$> _ndtoNegotiationRounds,
                  Just ("kind" .= _ndtoKind),
                  ("billedBuyer" .=) <$> _ndtoBilledBuyer,
                  ("buyerEmailContacts" .=) <$>
                    _ndtoBuyerEmailContacts,
                  ("stats" .=) <$> _ndtoStats,
                  ("seller" .=) <$> _ndtoSeller,
                  ("labelNames" .=) <$> _ndtoLabelNames,
                  ("offerId" .=) <$> _ndtoOfferId,
                  ("negotiationId" .=) <$> _ndtoNegotiationId,
                  ("sellerEmailContacts" .=) <$>
                    _ndtoSellerEmailContacts,
                  ("buyer" .=) <$> _ndtoBuyer])

--
-- /See:/ 'offerDTO' smart constructor.
data OfferDTO = OfferDTO
    { _odtoCreator             :: !(Maybe DealPartyDTO)
    , _odtoStatus              :: !(Maybe Text)
    , _odtoOfferState          :: !(Maybe Text)
    , _odtoPointOfContact      :: !(Maybe Text)
    , _odtoTerms               :: !(Maybe TermsDTO)
    , _odtoKind                :: !Text
    , _odtoBilledBuyer         :: !(Maybe DealPartyDTO)
    , _odtoOpenToDealParties   :: !(Maybe [DealPartyDTO])
    , _odtoEmailContacts       :: !(Maybe [Text])
    , _odtoLabelNames          :: !(Maybe [Text])
    , _odtoOfferId             :: !(Maybe (Textual Int64))
    , _odtoClosedToDealParties :: !(Maybe [DealPartyDTO])
    , _odtoAnonymous           :: !(Maybe Bool)
    , _odtoIsOpen              :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OfferDTO' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odtoCreator'
--
-- * 'odtoStatus'
--
-- * 'odtoOfferState'
--
-- * 'odtoPointOfContact'
--
-- * 'odtoTerms'
--
-- * 'odtoKind'
--
-- * 'odtoBilledBuyer'
--
-- * 'odtoOpenToDealParties'
--
-- * 'odtoEmailContacts'
--
-- * 'odtoLabelNames'
--
-- * 'odtoOfferId'
--
-- * 'odtoClosedToDealParties'
--
-- * 'odtoAnonymous'
--
-- * 'odtoIsOpen'
offerDTO
    :: OfferDTO
offerDTO =
    OfferDTO
    { _odtoCreator = Nothing
    , _odtoStatus = Nothing
    , _odtoOfferState = Nothing
    , _odtoPointOfContact = Nothing
    , _odtoTerms = Nothing
    , _odtoKind = "adexchangebuyer#offer"
    , _odtoBilledBuyer = Nothing
    , _odtoOpenToDealParties = Nothing
    , _odtoEmailContacts = Nothing
    , _odtoLabelNames = Nothing
    , _odtoOfferId = Nothing
    , _odtoClosedToDealParties = Nothing
    , _odtoAnonymous = Nothing
    , _odtoIsOpen = Nothing
    }

-- | The creator of this offer.
odtoCreator :: Lens' OfferDTO (Maybe DealPartyDTO)
odtoCreator
  = lens _odtoCreator (\ s a -> s{_odtoCreator = a})

-- | The status of this offer.
odtoStatus :: Lens' OfferDTO (Maybe Text)
odtoStatus
  = lens _odtoStatus (\ s a -> s{_odtoStatus = a})

-- | The state of this offer.
odtoOfferState :: Lens' OfferDTO (Maybe Text)
odtoOfferState
  = lens _odtoOfferState
      (\ s a -> s{_odtoOfferState = a})

-- | The point of contact for this offer.
odtoPointOfContact :: Lens' OfferDTO (Maybe Text)
odtoPointOfContact
  = lens _odtoPointOfContact
      (\ s a -> s{_odtoPointOfContact = a})

-- | The terms of this offer.
odtoTerms :: Lens' OfferDTO (Maybe TermsDTO)
odtoTerms
  = lens _odtoTerms (\ s a -> s{_odtoTerms = a})

odtoKind :: Lens' OfferDTO Text
odtoKind = lens _odtoKind (\ s a -> s{_odtoKind = a})

-- | The billed buyer; For buyer initiated offers, buying through an
-- intermediary.
odtoBilledBuyer :: Lens' OfferDTO (Maybe DealPartyDTO)
odtoBilledBuyer
  = lens _odtoBilledBuyer
      (\ s a -> s{_odtoBilledBuyer = a})

-- | The list of buyer or seller parties this offer is open to.
odtoOpenToDealParties :: Lens' OfferDTO [DealPartyDTO]
odtoOpenToDealParties
  = lens _odtoOpenToDealParties
      (\ s a -> s{_odtoOpenToDealParties = a})
      . _Default
      . _Coerce

-- | The list of email contacts for this offer.
odtoEmailContacts :: Lens' OfferDTO [Text]
odtoEmailContacts
  = lens _odtoEmailContacts
      (\ s a -> s{_odtoEmailContacts = a})
      . _Default
      . _Coerce

-- | The list of label names applicable to this offer.
odtoLabelNames :: Lens' OfferDTO [Text]
odtoLabelNames
  = lens _odtoLabelNames
      (\ s a -> s{_odtoLabelNames = a})
      . _Default
      . _Coerce

-- | The unique ID of this offer.
odtoOfferId :: Lens' OfferDTO (Maybe Int64)
odtoOfferId
  = lens _odtoOfferId (\ s a -> s{_odtoOfferId = a}) .
      mapping _Coerce

-- | The list of buyer or seller parties this offer is closed to.
odtoClosedToDealParties :: Lens' OfferDTO [DealPartyDTO]
odtoClosedToDealParties
  = lens _odtoClosedToDealParties
      (\ s a -> s{_odtoClosedToDealParties = a})
      . _Default
      . _Coerce

-- | Whether this offer is anonymous.
odtoAnonymous :: Lens' OfferDTO (Maybe Bool)
odtoAnonymous
  = lens _odtoAnonymous
      (\ s a -> s{_odtoAnonymous = a})

-- | Whether this offer is open.
odtoIsOpen :: Lens' OfferDTO (Maybe Bool)
odtoIsOpen
  = lens _odtoIsOpen (\ s a -> s{_odtoIsOpen = a})

instance FromJSON OfferDTO where
        parseJSON
          = withObject "OfferDTO"
              (\ o ->
                 OfferDTO <$>
                   (o .:? "creator") <*> (o .:? "status") <*>
                     (o .:? "offerState")
                     <*> (o .:? "pointOfContact")
                     <*> (o .:? "terms")
                     <*> (o .:? "kind" .!= "adexchangebuyer#offer")
                     <*> (o .:? "billedBuyer")
                     <*> (o .:? "openToDealParties" .!= mempty)
                     <*> (o .:? "emailContacts" .!= mempty)
                     <*> (o .:? "labelNames" .!= mempty)
                     <*> (o .:? "offerId")
                     <*> (o .:? "closedToDealParties" .!= mempty)
                     <*> (o .:? "anonymous")
                     <*> (o .:? "isOpen"))

instance ToJSON OfferDTO where
        toJSON OfferDTO{..}
          = object
              (catMaybes
                 [("creator" .=) <$> _odtoCreator,
                  ("status" .=) <$> _odtoStatus,
                  ("offerState" .=) <$> _odtoOfferState,
                  ("pointOfContact" .=) <$> _odtoPointOfContact,
                  ("terms" .=) <$> _odtoTerms,
                  Just ("kind" .= _odtoKind),
                  ("billedBuyer" .=) <$> _odtoBilledBuyer,
                  ("openToDealParties" .=) <$> _odtoOpenToDealParties,
                  ("emailContacts" .=) <$> _odtoEmailContacts,
                  ("labelNames" .=) <$> _odtoLabelNames,
                  ("offerId" .=) <$> _odtoOfferId,
                  ("closedToDealParties" .=) <$>
                    _odtoClosedToDealParties,
                  ("anonymous" .=) <$> _odtoAnonymous,
                  ("isOpen" .=) <$> _odtoIsOpen])

--
-- /See:/ 'audienceSegment' smart constructor.
data AudienceSegment = AudienceSegment
    { _asNumCookies  :: !(Maybe (Textual Int64))
    , _asName        :: !(Maybe Text)
    , _asId          :: !(Maybe (Textual Int64))
    , _asDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
      . mapping _Coerce

asName :: Lens' AudienceSegment (Maybe Text)
asName = lens _asName (\ s a -> s{_asName = a})

asId :: Lens' AudienceSegment (Maybe Int64)
asId
  = lens _asId (\ s a -> s{_asId = a}) .
      mapping _Coerce

asDescription :: Lens' AudienceSegment (Maybe Text)
asDescription
  = lens _asDescription
      (\ s a -> s{_asDescription = a})

instance FromJSON AudienceSegment where
        parseJSON
          = withObject "AudienceSegment"
              (\ o ->
                 AudienceSegment <$>
                   (o .:? "numCookies") <*> (o .:? "name") <*>
                     (o .:? "id")
                     <*> (o .:? "description"))

instance ToJSON AudienceSegment where
        toJSON AudienceSegment{..}
          = object
              (catMaybes
                 [("numCookies" .=) <$> _asNumCookies,
                  ("name" .=) <$> _asName, ("id" .=) <$> _asId,
                  ("description" .=) <$> _asDescription])

-- | A billing info feed lists Billing Info the Ad Exchange buyer account has
-- access to. Each entry in the feed corresponds to a single billing info.
--
-- /See:/ 'billingInfoList' smart constructor.
data BillingInfoList = BillingInfoList
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
    BillingInfoList
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
                 BillingInfoList <$>
                   (o .:? "kind" .!= "adexchangebuyer#billingInfoList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON BillingInfoList where
        toJSON BillingInfoList{..}
          = object
              (catMaybes
                 [Just ("kind" .= _bilKind),
                  ("items" .=) <$> _bilItems])

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
    , _moCreationTimeMs      :: !(Maybe (Textual Int64))
    , _moTerms               :: !(Maybe DealTerms)
    , _moLastUpdateTimeMs    :: !(Maybe (Textual Int64))
    , _moKind                :: !Text
    , _moRevisionNumber      :: !(Maybe (Textual Int64))
    , _moHasCreatorSignedOff :: !(Maybe Bool)
    , _moFlightStartTimeMs   :: !(Maybe (Textual Int64))
    , _moSharedTargetings    :: !(Maybe [SharedTargeting])
    , _moSeller              :: !(Maybe Seller)
    , _moSyndicationProduct  :: !(Maybe Text)
    , _moFlightEndTimeMs     :: !(Maybe (Textual Int64))
    , _moName                :: !(Maybe Text)
    , _moCreatorContacts     :: !(Maybe [ContactInformation])
    , _moOfferId             :: !(Maybe Text)
    , _moLabels              :: !(Maybe [MarketplaceLabel])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
      . mapping _Coerce

-- | The negotiable terms of the deal (buyer-readonly)
moTerms :: Lens' MarketplaceOffer (Maybe DealTerms)
moTerms = lens _moTerms (\ s a -> s{_moTerms = a})

-- | Time of last update in ms. since epoch (readonly)
moLastUpdateTimeMs :: Lens' MarketplaceOffer (Maybe Int64)
moLastUpdateTimeMs
  = lens _moLastUpdateTimeMs
      (\ s a -> s{_moLastUpdateTimeMs = a})
      . mapping _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"adexchangebuyer#marketplaceOffer\".
moKind :: Lens' MarketplaceOffer Text
moKind = lens _moKind (\ s a -> s{_moKind = a})

-- | The revision number of the offer. (readonly)
moRevisionNumber :: Lens' MarketplaceOffer (Maybe Int64)
moRevisionNumber
  = lens _moRevisionNumber
      (\ s a -> s{_moRevisionNumber = a})
      . mapping _Coerce

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
      . mapping _Coerce

-- | Targeting that is shared between the buyer and the seller. Each
-- targeting criteria has a specified key and for each key there is a list
-- of inclusion value or exclusion values. (buyer-readonly)
moSharedTargetings :: Lens' MarketplaceOffer [SharedTargeting]
moSharedTargetings
  = lens _moSharedTargetings
      (\ s a -> s{_moSharedTargetings = a})
      . _Default
      . _Coerce

-- | Information about the seller that created this offer (readonly, except
-- on create)
moSeller :: Lens' MarketplaceOffer (Maybe Seller)
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
      . mapping _Coerce

-- | The name for this offer as set by the seller. (buyer-readonly)
moName :: Lens' MarketplaceOffer (Maybe Text)
moName = lens _moName (\ s a -> s{_moName = a})

-- | Optional contact information for the creator of this offer.
-- (buyer-readonly)
moCreatorContacts :: Lens' MarketplaceOffer [ContactInformation]
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
moLabels :: Lens' MarketplaceOffer [MarketplaceLabel]
moLabels
  = lens _moLabels (\ s a -> s{_moLabels = a}) .
      _Default
      . _Coerce

instance FromJSON MarketplaceOffer where
        parseJSON
          = withObject "MarketplaceOffer"
              (\ o ->
                 MarketplaceOffer <$>
                   (o .:? "state") <*> (o .:? "webPropertyCode") <*>
                     (o .:? "creationTimeMs")
                     <*> (o .:? "terms")
                     <*> (o .:? "lastUpdateTimeMs")
                     <*>
                     (o .:? "kind" .!= "adexchangebuyer#marketplaceOffer")
                     <*> (o .:? "revisionNumber")
                     <*> (o .:? "hasCreatorSignedOff")
                     <*> (o .:? "flightStartTimeMs")
                     <*> (o .:? "sharedTargetings" .!= mempty)
                     <*> (o .:? "seller")
                     <*> (o .:? "syndicationProduct")
                     <*> (o .:? "flightEndTimeMs")
                     <*> (o .:? "name")
                     <*> (o .:? "creatorContacts" .!= mempty)
                     <*> (o .:? "offerId")
                     <*> (o .:? "labels" .!= mempty))

instance ToJSON MarketplaceOffer where
        toJSON MarketplaceOffer{..}
          = object
              (catMaybes
                 [("state" .=) <$> _moState,
                  ("webPropertyCode" .=) <$> _moWebPropertyCode,
                  ("creationTimeMs" .=) <$> _moCreationTimeMs,
                  ("terms" .=) <$> _moTerms,
                  ("lastUpdateTimeMs" .=) <$> _moLastUpdateTimeMs,
                  Just ("kind" .= _moKind),
                  ("revisionNumber" .=) <$> _moRevisionNumber,
                  ("hasCreatorSignedOff" .=) <$>
                    _moHasCreatorSignedOff,
                  ("flightStartTimeMs" .=) <$> _moFlightStartTimeMs,
                  ("sharedTargetings" .=) <$> _moSharedTargetings,
                  ("seller" .=) <$> _moSeller,
                  ("syndicationProduct" .=) <$> _moSyndicationProduct,
                  ("flightEndTimeMs" .=) <$> _moFlightEndTimeMs,
                  ("name" .=) <$> _moName,
                  ("creatorContacts" .=) <$> _moCreatorContacts,
                  ("offerId" .=) <$> _moOfferId,
                  ("labels" .=) <$> _moLabels])

--
-- /See:/ 'addOrderNotesResponse' smart constructor.
newtype AddOrderNotesResponse = AddOrderNotesResponse
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
    AddOrderNotesResponse
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
                 AddOrderNotesResponse <$> (o .:? "notes" .!= mempty))

instance ToJSON AddOrderNotesResponse where
        toJSON AddOrderNotesResponse{..}
          = object (catMaybes [("notes" .=) <$> _aNotes])

--
-- /See:/ 'targetingValueSize' smart constructor.
data TargetingValueSize = TargetingValueSize
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
    TargetingValueSize
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
                 TargetingValueSize <$>
                   (o .:? "height") <*> (o .:? "width"))

instance ToJSON TargetingValueSize where
        toJSON TargetingValueSize{..}
          = object
              (catMaybes
                 [("height" .=) <$> _tvsHeight,
                  ("width" .=) <$> _tvsWidth])

--
-- /See:/ 'getNegotiationsRequest' smart constructor.
data GetNegotiationsRequest = GetNegotiationsRequest
    { _gnrSinceTimestampMillis   :: !(Maybe (Textual Int64))
    , _gnrFinalized              :: !(Maybe Bool)
    , _gnrIncludePrivateAuctions :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
      . mapping _Coerce

gnrFinalized :: Lens' GetNegotiationsRequest (Maybe Bool)
gnrFinalized
  = lens _gnrFinalized (\ s a -> s{_gnrFinalized = a})

gnrIncludePrivateAuctions :: Lens' GetNegotiationsRequest (Maybe Bool)
gnrIncludePrivateAuctions
  = lens _gnrIncludePrivateAuctions
      (\ s a -> s{_gnrIncludePrivateAuctions = a})

instance FromJSON GetNegotiationsRequest where
        parseJSON
          = withObject "GetNegotiationsRequest"
              (\ o ->
                 GetNegotiationsRequest <$>
                   (o .:? "sinceTimestampMillis") <*>
                     (o .:? "finalized")
                     <*> (o .:? "includePrivateAuctions"))

instance ToJSON GetNegotiationsRequest where
        toJSON GetNegotiationsRequest{..}
          = object
              (catMaybes
                 [("sinceTimestampMillis" .=) <$>
                    _gnrSinceTimestampMillis,
                  ("finalized" .=) <$> _gnrFinalized,
                  ("includePrivateAuctions" .=) <$>
                    _gnrIncludePrivateAuctions])

--
-- /See:/ 'moneyDTO' smart constructor.
data MoneyDTO = MoneyDTO
    { _mdtoCurrencyCode :: !(Maybe Text)
    , _mdtoMicros       :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MoneyDTO' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdtoCurrencyCode'
--
-- * 'mdtoMicros'
moneyDTO
    :: MoneyDTO
moneyDTO =
    MoneyDTO
    { _mdtoCurrencyCode = Nothing
    , _mdtoMicros = Nothing
    }

mdtoCurrencyCode :: Lens' MoneyDTO (Maybe Text)
mdtoCurrencyCode
  = lens _mdtoCurrencyCode
      (\ s a -> s{_mdtoCurrencyCode = a})

mdtoMicros :: Lens' MoneyDTO (Maybe Int64)
mdtoMicros
  = lens _mdtoMicros (\ s a -> s{_mdtoMicros = a}) .
      mapping _Coerce

instance FromJSON MoneyDTO where
        parseJSON
          = withObject "MoneyDTO"
              (\ o ->
                 MoneyDTO <$>
                   (o .:? "currencyCode") <*> (o .:? "micros"))

instance ToJSON MoneyDTO where
        toJSON MoneyDTO{..}
          = object
              (catMaybes
                 [("currencyCode" .=) <$> _mdtoCurrencyCode,
                  ("micros" .=) <$> _mdtoMicros])

--
-- /See:/ 'getNegotiationByIdRequest' smart constructor.
newtype GetNegotiationByIdRequest = GetNegotiationByIdRequest
    { _gnbirIncludePrivateAuctions :: Maybe Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON GetNegotiationByIdRequest where
        parseJSON
          = withObject "GetNegotiationByIdRequest"
              (\ o ->
                 GetNegotiationByIdRequest <$>
                   (o .:? "includePrivateAuctions"))

instance ToJSON GetNegotiationByIdRequest where
        toJSON GetNegotiationByIdRequest{..}
          = object
              (catMaybes
                 [("includePrivateAuctions" .=) <$>
                    _gnbirIncludePrivateAuctions])

--
-- /See:/ 'listOffersResponse' smart constructor.
data ListOffersResponse = ListOffersResponse
    { _lorKind   :: !Text
    , _lorOffers :: !(Maybe [OfferDTO])
    } deriving (Eq,Show,Data,Typeable,Generic)

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

lorOffers :: Lens' ListOffersResponse [OfferDTO]
lorOffers
  = lens _lorOffers (\ s a -> s{_lorOffers = a}) .
      _Default
      . _Coerce

instance FromJSON ListOffersResponse where
        parseJSON
          = withObject "ListOffersResponse"
              (\ o ->
                 ListOffersResponse <$>
                   (o .:? "kind" .!= "adexchangebuyer#offersList") <*>
                     (o .:? "offers" .!= mempty))

instance ToJSON ListOffersResponse where
        toJSON ListOffersResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _lorKind),
                  ("offers" .=) <$> _lorOffers])

--
-- /See:/ 'pretargetingConfigDimensionsItem' smart constructor.
data PretargetingConfigDimensionsItem = PretargetingConfigDimensionsItem
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
    PretargetingConfigDimensionsItem
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
                 PretargetingConfigDimensionsItem <$>
                   (o .:? "height") <*> (o .:? "width"))

instance ToJSON PretargetingConfigDimensionsItem
         where
        toJSON PretargetingConfigDimensionsItem{..}
          = object
              (catMaybes
                 [("height" .=) <$> _pcdiHeight,
                  ("width" .=) <$> _pcdiWidth])

--
-- /See:/ 'advertiserDTO' smart constructor.
data AdvertiserDTO = AdvertiserDTO
    { _adtoStatus :: !(Maybe Text)
    , _adtoBrands :: !(Maybe [BrandDTO])
    , _adtoName   :: !(Maybe Text)
    , _adtoId     :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertiserDTO' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adtoStatus'
--
-- * 'adtoBrands'
--
-- * 'adtoName'
--
-- * 'adtoId'
advertiserDTO
    :: AdvertiserDTO
advertiserDTO =
    AdvertiserDTO
    { _adtoStatus = Nothing
    , _adtoBrands = Nothing
    , _adtoName = Nothing
    , _adtoId = Nothing
    }

adtoStatus :: Lens' AdvertiserDTO (Maybe Text)
adtoStatus
  = lens _adtoStatus (\ s a -> s{_adtoStatus = a})

adtoBrands :: Lens' AdvertiserDTO [BrandDTO]
adtoBrands
  = lens _adtoBrands (\ s a -> s{_adtoBrands = a}) .
      _Default
      . _Coerce

adtoName :: Lens' AdvertiserDTO (Maybe Text)
adtoName = lens _adtoName (\ s a -> s{_adtoName = a})

adtoId :: Lens' AdvertiserDTO (Maybe Int64)
adtoId
  = lens _adtoId (\ s a -> s{_adtoId = a}) .
      mapping _Coerce

instance FromJSON AdvertiserDTO where
        parseJSON
          = withObject "AdvertiserDTO"
              (\ o ->
                 AdvertiserDTO <$>
                   (o .:? "status") <*> (o .:? "brands" .!= mempty) <*>
                     (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON AdvertiserDTO where
        toJSON AdvertiserDTO{..}
          = object
              (catMaybes
                 [("status" .=) <$> _adtoStatus,
                  ("brands" .=) <$> _adtoBrands,
                  ("name" .=) <$> _adtoName, ("id" .=) <$> _adtoId])

--
-- /See:/ 'listClientAccessCapabilitiesResponse' smart constructor.
newtype ListClientAccessCapabilitiesResponse = ListClientAccessCapabilitiesResponse
    { _lcacrClientAccessPermissions :: Maybe [ClientAccessCapabilities]
    } deriving (Eq,Show,Data,Typeable,Generic)

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

lcacrClientAccessPermissions :: Lens' ListClientAccessCapabilitiesResponse [ClientAccessCapabilities]
lcacrClientAccessPermissions
  = lens _lcacrClientAccessPermissions
      (\ s a -> s{_lcacrClientAccessPermissions = a})
      . _Default
      . _Coerce

instance FromJSON
         ListClientAccessCapabilitiesResponse where
        parseJSON
          = withObject "ListClientAccessCapabilitiesResponse"
              (\ o ->
                 ListClientAccessCapabilitiesResponse <$>
                   (o .:? "clientAccessPermissions" .!= mempty))

instance ToJSON ListClientAccessCapabilitiesResponse
         where
        toJSON ListClientAccessCapabilitiesResponse{..}
          = object
              (catMaybes
                 [("clientAccessPermissions" .=) <$>
                    _lcacrClientAccessPermissions])

--
-- /See:/ 'targetingValue' smart constructor.
data TargetingValue = TargetingValue
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
    TargetingValue
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
                 TargetingValue <$>
                   (o .:? "creativeSizeValue") <*> (o .:? "stringValue")
                     <*> (o .:? "longValue")
                     <*> (o .:? "dayPartTargetingValue"))

instance ToJSON TargetingValue where
        toJSON TargetingValue{..}
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
data CreativeNATiveAdAppIcon = CreativeNATiveAdAppIcon
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
    CreativeNATiveAdAppIcon
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
                 CreativeNATiveAdAppIcon <$>
                   (o .:? "height") <*> (o .:? "url") <*>
                     (o .:? "width"))

instance ToJSON CreativeNATiveAdAppIcon where
        toJSON CreativeNATiveAdAppIcon{..}
          = object
              (catMaybes
                 [("height" .=) <$> _cnataaiHeight,
                  ("url" .=) <$> _cnataaiURL,
                  ("width" .=) <$> _cnataaiWidth])

--
-- /See:/ 'price' smart constructor.
data Price = Price
    { _pCurrencyCode :: !(Maybe Text)
    , _pAmountMicros :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
      . mapping _Coerce

instance FromJSON Price where
        parseJSON
          = withObject "Price"
              (\ o ->
                 Price <$>
                   (o .:? "currencyCode") <*> (o .:? "amountMicros"))

instance ToJSON Price where
        toJSON Price{..}
          = object
              (catMaybes
                 [("currencyCode" .=) <$> _pCurrencyCode,
                  ("amountMicros" .=) <$> _pAmountMicros])

--
-- /See:/ 'editAllOrderDealsRequest' smart constructor.
data EditAllOrderDealsRequest = EditAllOrderDealsRequest
    { _eUpdateAction        :: !(Maybe Text)
    , _eDeals               :: !(Maybe [MarketplaceDeal])
    , _eOrder               :: !(Maybe MarketplaceOrder)
    , _eOrderRevisionNumber :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditAllOrderDealsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eUpdateAction'
--
-- * 'eDeals'
--
-- * 'eOrder'
--
-- * 'eOrderRevisionNumber'
editAllOrderDealsRequest
    :: EditAllOrderDealsRequest
editAllOrderDealsRequest =
    EditAllOrderDealsRequest
    { _eUpdateAction = Nothing
    , _eDeals = Nothing
    , _eOrder = Nothing
    , _eOrderRevisionNumber = Nothing
    }

-- | Indicates an optional action to take on the order
eUpdateAction :: Lens' EditAllOrderDealsRequest (Maybe Text)
eUpdateAction
  = lens _eUpdateAction
      (\ s a -> s{_eUpdateAction = a})

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
eDeals :: Lens' EditAllOrderDealsRequest [MarketplaceDeal]
eDeals
  = lens _eDeals (\ s a -> s{_eDeals = a}) . _Default .
      _Coerce

-- | If specified, also updates the order in the batch transaction. This is
-- useful when the order and the deals need to be updated in one
-- transaction.
eOrder :: Lens' EditAllOrderDealsRequest (Maybe MarketplaceOrder)
eOrder = lens _eOrder (\ s a -> s{_eOrder = a})

-- | The last known revision number for the order.
eOrderRevisionNumber :: Lens' EditAllOrderDealsRequest (Maybe Int64)
eOrderRevisionNumber
  = lens _eOrderRevisionNumber
      (\ s a -> s{_eOrderRevisionNumber = a})
      . mapping _Coerce

instance FromJSON EditAllOrderDealsRequest where
        parseJSON
          = withObject "EditAllOrderDealsRequest"
              (\ o ->
                 EditAllOrderDealsRequest <$>
                   (o .:? "updateAction") <*> (o .:? "deals" .!= mempty)
                     <*> (o .:? "order")
                     <*> (o .:? "orderRevisionNumber"))

instance ToJSON EditAllOrderDealsRequest where
        toJSON EditAllOrderDealsRequest{..}
          = object
              (catMaybes
                 [("updateAction" .=) <$> _eUpdateAction,
                  ("deals" .=) <$> _eDeals, ("order" .=) <$> _eOrder,
                  ("orderRevisionNumber" .=) <$>
                    _eOrderRevisionNumber])

-- | The configuration data for an Ad Exchange billing info.
--
-- /See:/ 'billingInfo' smart constructor.
data BillingInfo = BillingInfo
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
                 BillingInfo <$>
                   (o .:? "kind" .!= "adexchangebuyer#billingInfo") <*>
                     (o .:? "accountName")
                     <*> (o .:? "accountId")
                     <*> (o .:? "billingId" .!= mempty))

instance ToJSON BillingInfo where
        toJSON BillingInfo{..}
          = object
              (catMaybes
                 [Just ("kind" .= _biKind),
                  ("accountName" .=) <$> _biAccountName,
                  ("accountId" .=) <$> _biAccountId,
                  ("billingId" .=) <$> _biBillingId])

--
-- /See:/ 'targetingValueDayPartTargeting' smart constructor.
data TargetingValueDayPartTargeting = TargetingValueDayPartTargeting
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
    TargetingValueDayPartTargeting
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
                 TargetingValueDayPartTargeting <$>
                   (o .:? "timeZoneType") <*>
                     (o .:? "dayParts" .!= mempty))

instance ToJSON TargetingValueDayPartTargeting where
        toJSON TargetingValueDayPartTargeting{..}
          = object
              (catMaybes
                 [("timeZoneType" .=) <$> _tvdptTimeZoneType,
                  ("dayParts" .=) <$> _tvdptDayParts])

--
-- /See:/ 'sharedTargeting' smart constructor.
data SharedTargeting = SharedTargeting
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
    SharedTargeting
    { _stKey = Nothing
    , _stExclusions = Nothing
    , _stInclusions = Nothing
    }

-- | The key representing the shared targeting criterion.
stKey :: Lens' SharedTargeting (Maybe Text)
stKey = lens _stKey (\ s a -> s{_stKey = a})

-- | The list of values to exclude from targeting.
stExclusions :: Lens' SharedTargeting [TargetingValue]
stExclusions
  = lens _stExclusions (\ s a -> s{_stExclusions = a})
      . _Default
      . _Coerce

-- | The list of value to include as part of the targeting.
stInclusions :: Lens' SharedTargeting [TargetingValue]
stInclusions
  = lens _stInclusions (\ s a -> s{_stInclusions = a})
      . _Default
      . _Coerce

instance FromJSON SharedTargeting where
        parseJSON
          = withObject "SharedTargeting"
              (\ o ->
                 SharedTargeting <$>
                   (o .:? "key") <*> (o .:? "exclusions" .!= mempty) <*>
                     (o .:? "inclusions" .!= mempty))

instance ToJSON SharedTargeting where
        toJSON SharedTargeting{..}
          = object
              (catMaybes
                 [("key" .=) <$> _stKey,
                  ("exclusions" .=) <$> _stExclusions,
                  ("inclusions" .=) <$> _stInclusions])

--
-- /See:/ 'listClientAccessCapabilitiesRequest' smart constructor.
newtype ListClientAccessCapabilitiesRequest = ListClientAccessCapabilitiesRequest
    { _lcacrSponsorAccountId :: Maybe (Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
      . mapping _Coerce

instance FromJSON ListClientAccessCapabilitiesRequest
         where
        parseJSON
          = withObject "ListClientAccessCapabilitiesRequest"
              (\ o ->
                 ListClientAccessCapabilitiesRequest <$>
                   (o .:? "sponsorAccountId"))

instance ToJSON ListClientAccessCapabilitiesRequest
         where
        toJSON ListClientAccessCapabilitiesRequest{..}
          = object
              (catMaybes
                 [("sponsorAccountId" .=) <$> _lcacrSponsorAccountId])

--
-- /See:/ 'inventorySegmentTargeting' smart constructor.
data InventorySegmentTargeting = InventorySegmentTargeting
    { _istNegativeVideoDurationSegments   :: !(Maybe [Textual Int64])
    , _istNegativeIcmBrands               :: !(Maybe [Textual Int64])
    , _istNegativeKeyValues               :: !(Maybe [RuleKeyValuePair])
    , _istPositiveAudienceSegments        :: !(Maybe [Textual Int64])
    , _istPositiveXfpPlacements           :: !(Maybe [Textual Int64])
    , _istNegativeXfpAdSlots              :: !(Maybe [Textual Int64])
    , _istPositiveOperatingSystemVersions :: !(Maybe [Textual Int64])
    , _istPositiveSizes                   :: !(Maybe [Textual Int64])
    , _istPositiveDeviceCategories        :: !(Maybe [Textual Int64])
    , _istPositiveLocations               :: !(Maybe [Textual Int64])
    , _istNegativeAdSizes                 :: !(Maybe [AdSize])
    , _istPositiveOperatingSystems        :: !(Maybe [Textual Int64])
    , _istPositiveSiteURLs                :: !(Maybe [Text])
    , _istNegativeInventorySlots          :: !(Maybe [Text])
    , _istNegativeVideoAdPositionSegments :: !(Maybe [Text])
    , _istPositiveAdTypeSegments          :: !(Maybe [Text])
    , _istPositiveIcmInterests            :: !(Maybe [Textual Int64])
    , _istPositiveMobileApps              :: !(Maybe [Text])
    , _istPositiveKeyValues               :: !(Maybe [RuleKeyValuePair])
    , _istPositiveIcmBrands               :: !(Maybe [Textual Int64])
    , _istPositiveVideoDurationSegments   :: !(Maybe [Textual Int64])
    , _istNegativeAudienceSegments        :: !(Maybe [Textual Int64])
    , _istNegativeXfpPlacements           :: !(Maybe [Textual Int64])
    , _istPositiveXfpAdSlots              :: !(Maybe [Textual Int64])
    , _istNegativeOperatingSystemVersions :: !(Maybe [Textual Int64])
    , _istNegativeSizes                   :: !(Maybe [Textual Int64])
    , _istNegativeLocations               :: !(Maybe [Textual Int64])
    , _istNegativeDeviceCategories        :: !(Maybe [Textual Int64])
    , _istNegativeOperatingSystems        :: !(Maybe [Textual Int64])
    , _istPositiveAdSizes                 :: !(Maybe [AdSize])
    , _istNegativeSiteURLs                :: !(Maybe [Text])
    , _istNegativeAdTypeSegments          :: !(Maybe [Text])
    , _istPositiveVideoAdPositionSegments :: !(Maybe [Text])
    , _istPositiveInventorySlots          :: !(Maybe [Text])
    , _istNegativeMobileApps              :: !(Maybe [Text])
    , _istNegativeIcmInterests            :: !(Maybe [Textual Int64])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'istPositiveSiteURLs'
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
-- * 'istNegativeSiteURLs'
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
    , _istPositiveSiteURLs = Nothing
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
    , _istNegativeSiteURLs = Nothing
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

istNegativeKeyValues :: Lens' InventorySegmentTargeting [RuleKeyValuePair]
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

istNegativeAdSizes :: Lens' InventorySegmentTargeting [AdSize]
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

istPositiveSiteURLs :: Lens' InventorySegmentTargeting [Text]
istPositiveSiteURLs
  = lens _istPositiveSiteURLs
      (\ s a -> s{_istPositiveSiteURLs = a})
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

istPositiveKeyValues :: Lens' InventorySegmentTargeting [RuleKeyValuePair]
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

istPositiveAdSizes :: Lens' InventorySegmentTargeting [AdSize]
istPositiveAdSizes
  = lens _istPositiveAdSizes
      (\ s a -> s{_istPositiveAdSizes = a})
      . _Default
      . _Coerce

istNegativeSiteURLs :: Lens' InventorySegmentTargeting [Text]
istNegativeSiteURLs
  = lens _istNegativeSiteURLs
      (\ s a -> s{_istNegativeSiteURLs = a})
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

instance FromJSON InventorySegmentTargeting where
        parseJSON
          = withObject "InventorySegmentTargeting"
              (\ o ->
                 InventorySegmentTargeting <$>
                   (o .:? "negativeVideoDurationSegments" .!= mempty)
                     <*> (o .:? "negativeIcmBrands" .!= mempty)
                     <*> (o .:? "negativeKeyValues" .!= mempty)
                     <*> (o .:? "positiveAudienceSegments" .!= mempty)
                     <*> (o .:? "positiveXfpPlacements" .!= mempty)
                     <*> (o .:? "negativeXfpAdSlots" .!= mempty)
                     <*>
                     (o .:? "positiveOperatingSystemVersions" .!= mempty)
                     <*> (o .:? "positiveSizes" .!= mempty)
                     <*> (o .:? "positiveDeviceCategories" .!= mempty)
                     <*> (o .:? "positiveLocations" .!= mempty)
                     <*> (o .:? "negativeAdSizes" .!= mempty)
                     <*> (o .:? "positiveOperatingSystems" .!= mempty)
                     <*> (o .:? "positiveSiteUrls" .!= mempty)
                     <*> (o .:? "negativeInventorySlots" .!= mempty)
                     <*>
                     (o .:? "negativeVideoAdPositionSegments" .!= mempty)
                     <*> (o .:? "positiveAdTypeSegments" .!= mempty)
                     <*> (o .:? "positiveIcmInterests" .!= mempty)
                     <*> (o .:? "positiveMobileApps" .!= mempty)
                     <*> (o .:? "positiveKeyValues" .!= mempty)
                     <*> (o .:? "positiveIcmBrands" .!= mempty)
                     <*>
                     (o .:? "positiveVideoDurationSegments" .!= mempty)
                     <*> (o .:? "negativeAudienceSegments" .!= mempty)
                     <*> (o .:? "negativeXfpPlacements" .!= mempty)
                     <*> (o .:? "positiveXfpAdSlots" .!= mempty)
                     <*>
                     (o .:? "negativeOperatingSystemVersions" .!= mempty)
                     <*> (o .:? "negativeSizes" .!= mempty)
                     <*> (o .:? "negativeLocations" .!= mempty)
                     <*> (o .:? "negativeDeviceCategories" .!= mempty)
                     <*> (o .:? "negativeOperatingSystems" .!= mempty)
                     <*> (o .:? "positiveAdSizes" .!= mempty)
                     <*> (o .:? "negativeSiteUrls" .!= mempty)
                     <*> (o .:? "negativeAdTypeSegments" .!= mempty)
                     <*>
                     (o .:? "positiveVideoAdPositionSegments" .!= mempty)
                     <*> (o .:? "positiveInventorySlots" .!= mempty)
                     <*> (o .:? "negativeMobileApps" .!= mempty)
                     <*> (o .:? "negativeIcmInterests" .!= mempty))

instance ToJSON InventorySegmentTargeting where
        toJSON InventorySegmentTargeting{..}
          = object
              (catMaybes
                 [("negativeVideoDurationSegments" .=) <$>
                    _istNegativeVideoDurationSegments,
                  ("negativeIcmBrands" .=) <$> _istNegativeIcmBrands,
                  ("negativeKeyValues" .=) <$> _istNegativeKeyValues,
                  ("positiveAudienceSegments" .=) <$>
                    _istPositiveAudienceSegments,
                  ("positiveXfpPlacements" .=) <$>
                    _istPositiveXfpPlacements,
                  ("negativeXfpAdSlots" .=) <$> _istNegativeXfpAdSlots,
                  ("positiveOperatingSystemVersions" .=) <$>
                    _istPositiveOperatingSystemVersions,
                  ("positiveSizes" .=) <$> _istPositiveSizes,
                  ("positiveDeviceCategories" .=) <$>
                    _istPositiveDeviceCategories,
                  ("positiveLocations" .=) <$> _istPositiveLocations,
                  ("negativeAdSizes" .=) <$> _istNegativeAdSizes,
                  ("positiveOperatingSystems" .=) <$>
                    _istPositiveOperatingSystems,
                  ("positiveSiteUrls" .=) <$> _istPositiveSiteURLs,
                  ("negativeInventorySlots" .=) <$>
                    _istNegativeInventorySlots,
                  ("negativeVideoAdPositionSegments" .=) <$>
                    _istNegativeVideoAdPositionSegments,
                  ("positiveAdTypeSegments" .=) <$>
                    _istPositiveAdTypeSegments,
                  ("positiveIcmInterests" .=) <$>
                    _istPositiveIcmInterests,
                  ("positiveMobileApps" .=) <$> _istPositiveMobileApps,
                  ("positiveKeyValues" .=) <$> _istPositiveKeyValues,
                  ("positiveIcmBrands" .=) <$> _istPositiveIcmBrands,
                  ("positiveVideoDurationSegments" .=) <$>
                    _istPositiveVideoDurationSegments,
                  ("negativeAudienceSegments" .=) <$>
                    _istNegativeAudienceSegments,
                  ("negativeXfpPlacements" .=) <$>
                    _istNegativeXfpPlacements,
                  ("positiveXfpAdSlots" .=) <$> _istPositiveXfpAdSlots,
                  ("negativeOperatingSystemVersions" .=) <$>
                    _istNegativeOperatingSystemVersions,
                  ("negativeSizes" .=) <$> _istNegativeSizes,
                  ("negativeLocations" .=) <$> _istNegativeLocations,
                  ("negativeDeviceCategories" .=) <$>
                    _istNegativeDeviceCategories,
                  ("negativeOperatingSystems" .=) <$>
                    _istNegativeOperatingSystems,
                  ("positiveAdSizes" .=) <$> _istPositiveAdSizes,
                  ("negativeSiteUrls" .=) <$> _istNegativeSiteURLs,
                  ("negativeAdTypeSegments" .=) <$>
                    _istNegativeAdTypeSegments,
                  ("positiveVideoAdPositionSegments" .=) <$>
                    _istPositiveVideoAdPositionSegments,
                  ("positiveInventorySlots" .=) <$>
                    _istPositiveInventorySlots,
                  ("negativeMobileApps" .=) <$> _istNegativeMobileApps,
                  ("negativeIcmInterests" .=) <$>
                    _istNegativeIcmInterests])

-- | A large image.
--
-- /See:/ 'creativeNATiveAdImage' smart constructor.
data CreativeNATiveAdImage = CreativeNATiveAdImage
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
    CreativeNATiveAdImage
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
                 CreativeNATiveAdImage <$>
                   (o .:? "height") <*> (o .:? "url") <*>
                     (o .:? "width"))

instance ToJSON CreativeNATiveAdImage where
        toJSON CreativeNATiveAdImage{..}
          = object
              (catMaybes
                 [("height" .=) <$> _cnataiHeight,
                  ("url" .=) <$> _cnataiURL,
                  ("width" .=) <$> _cnataiWidth])

--
-- /See:/ 'webPropertyDTO' smart constructor.
data WebPropertyDTO = WebPropertyDTO
    { _wpdtoEnabledForPreferredDeals :: !(Maybe Bool)
    , _wpdtoSyndicationProduct       :: !(Maybe Text)
    , _wpdtoName                     :: !(Maybe Text)
    , _wpdtoPropertyCode             :: !(Maybe Text)
    , _wpdtoId                       :: !(Maybe (Textual Int32))
    , _wpdtoSiteURLs                 :: !(Maybe [Text])
    , _wpdtoAllowInterestTargetedAds :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebPropertyDTO' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wpdtoEnabledForPreferredDeals'
--
-- * 'wpdtoSyndicationProduct'
--
-- * 'wpdtoName'
--
-- * 'wpdtoPropertyCode'
--
-- * 'wpdtoId'
--
-- * 'wpdtoSiteURLs'
--
-- * 'wpdtoAllowInterestTargetedAds'
webPropertyDTO
    :: WebPropertyDTO
webPropertyDTO =
    WebPropertyDTO
    { _wpdtoEnabledForPreferredDeals = Nothing
    , _wpdtoSyndicationProduct = Nothing
    , _wpdtoName = Nothing
    , _wpdtoPropertyCode = Nothing
    , _wpdtoId = Nothing
    , _wpdtoSiteURLs = Nothing
    , _wpdtoAllowInterestTargetedAds = Nothing
    }

wpdtoEnabledForPreferredDeals :: Lens' WebPropertyDTO (Maybe Bool)
wpdtoEnabledForPreferredDeals
  = lens _wpdtoEnabledForPreferredDeals
      (\ s a -> s{_wpdtoEnabledForPreferredDeals = a})

wpdtoSyndicationProduct :: Lens' WebPropertyDTO (Maybe Text)
wpdtoSyndicationProduct
  = lens _wpdtoSyndicationProduct
      (\ s a -> s{_wpdtoSyndicationProduct = a})

wpdtoName :: Lens' WebPropertyDTO (Maybe Text)
wpdtoName
  = lens _wpdtoName (\ s a -> s{_wpdtoName = a})

wpdtoPropertyCode :: Lens' WebPropertyDTO (Maybe Text)
wpdtoPropertyCode
  = lens _wpdtoPropertyCode
      (\ s a -> s{_wpdtoPropertyCode = a})

wpdtoId :: Lens' WebPropertyDTO (Maybe Int32)
wpdtoId
  = lens _wpdtoId (\ s a -> s{_wpdtoId = a}) .
      mapping _Coerce

wpdtoSiteURLs :: Lens' WebPropertyDTO [Text]
wpdtoSiteURLs
  = lens _wpdtoSiteURLs
      (\ s a -> s{_wpdtoSiteURLs = a})
      . _Default
      . _Coerce

wpdtoAllowInterestTargetedAds :: Lens' WebPropertyDTO (Maybe Bool)
wpdtoAllowInterestTargetedAds
  = lens _wpdtoAllowInterestTargetedAds
      (\ s a -> s{_wpdtoAllowInterestTargetedAds = a})

instance FromJSON WebPropertyDTO where
        parseJSON
          = withObject "WebPropertyDTO"
              (\ o ->
                 WebPropertyDTO <$>
                   (o .:? "enabledForPreferredDeals") <*>
                     (o .:? "syndicationProduct")
                     <*> (o .:? "name")
                     <*> (o .:? "propertyCode")
                     <*> (o .:? "id")
                     <*> (o .:? "siteUrls" .!= mempty)
                     <*> (o .:? "allowInterestTargetedAds"))

instance ToJSON WebPropertyDTO where
        toJSON WebPropertyDTO{..}
          = object
              (catMaybes
                 [("enabledForPreferredDeals" .=) <$>
                    _wpdtoEnabledForPreferredDeals,
                  ("syndicationProduct" .=) <$>
                    _wpdtoSyndicationProduct,
                  ("name" .=) <$> _wpdtoName,
                  ("propertyCode" .=) <$> _wpdtoPropertyCode,
                  ("id" .=) <$> _wpdtoId,
                  ("siteUrls" .=) <$> _wpdtoSiteURLs,
                  ("allowInterestTargetedAds" .=) <$>
                    _wpdtoAllowInterestTargetedAds])

--
-- /See:/ 'listOffersRequest' smart constructor.
newtype ListOffersRequest = ListOffersRequest
    { _lorSinceTimestampMillis :: Maybe (Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
      . mapping _Coerce

instance FromJSON ListOffersRequest where
        parseJSON
          = withObject "ListOffersRequest"
              (\ o ->
                 ListOffersRequest <$> (o .:? "sinceTimestampMillis"))

instance ToJSON ListOffersRequest where
        toJSON ListOffersRequest{..}
          = object
              (catMaybes
                 [("sinceTimestampMillis" .=) <$>
                    _lorSinceTimestampMillis])

--
-- /See:/ 'clientAccessCapabilities' smart constructor.
data ClientAccessCapabilities = ClientAccessCapabilities
    { _cacClientAccountId :: !(Maybe (Textual Int64))
    , _cacCapabilities    :: !(Maybe [Textual Int32])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
      . mapping _Coerce

cacCapabilities :: Lens' ClientAccessCapabilities [Int32]
cacCapabilities
  = lens _cacCapabilities
      (\ s a -> s{_cacCapabilities = a})
      . _Default
      . _Coerce

instance FromJSON ClientAccessCapabilities where
        parseJSON
          = withObject "ClientAccessCapabilities"
              (\ o ->
                 ClientAccessCapabilities <$>
                   (o .:? "clientAccountId") <*>
                     (o .:? "capabilities" .!= mempty))

instance ToJSON ClientAccessCapabilities where
        toJSON ClientAccessCapabilities{..}
          = object
              (catMaybes
                 [("clientAccountId" .=) <$> _cacClientAccountId,
                  ("capabilities" .=) <$> _cacCapabilities])

--
-- /See:/ 'creativeServingRestrictionsItem' smart constructor.
data CreativeServingRestrictionsItem = CreativeServingRestrictionsItem
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
    CreativeServingRestrictionsItem
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
                 CreativeServingRestrictionsItem <$>
                   (o .:? "contexts" .!= mempty) <*> (o .:? "reason")
                     <*> (o .:? "disapprovalReasons" .!= mempty))

instance ToJSON CreativeServingRestrictionsItem where
        toJSON CreativeServingRestrictionsItem{..}
          = object
              (catMaybes
                 [("contexts" .=) <$> _csriContexts,
                  ("reason" .=) <$> _csriReason,
                  ("disapprovalReasons" .=) <$>
                    _csriDisApprovalReasons])

--
-- /See:/ 'deleteOrderDealsResponse' smart constructor.
data DeleteOrderDealsResponse = DeleteOrderDealsResponse
    { _dDeals               :: !(Maybe [MarketplaceDeal])
    , _dOrderRevisionNumber :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeleteOrderDealsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDeals'
--
-- * 'dOrderRevisionNumber'
deleteOrderDealsResponse
    :: DeleteOrderDealsResponse
deleteOrderDealsResponse =
    DeleteOrderDealsResponse
    { _dDeals = Nothing
    , _dOrderRevisionNumber = Nothing
    }

-- | List of deals deleted (in the same order as passed in the request)
dDeals :: Lens' DeleteOrderDealsResponse [MarketplaceDeal]
dDeals
  = lens _dDeals (\ s a -> s{_dDeals = a}) . _Default .
      _Coerce

-- | The updated revision number for the order.
dOrderRevisionNumber :: Lens' DeleteOrderDealsResponse (Maybe Int64)
dOrderRevisionNumber
  = lens _dOrderRevisionNumber
      (\ s a -> s{_dOrderRevisionNumber = a})
      . mapping _Coerce

instance FromJSON DeleteOrderDealsResponse where
        parseJSON
          = withObject "DeleteOrderDealsResponse"
              (\ o ->
                 DeleteOrderDealsResponse <$>
                   (o .:? "deals" .!= mempty) <*>
                     (o .:? "orderRevisionNumber"))

instance ToJSON DeleteOrderDealsResponse where
        toJSON DeleteOrderDealsResponse{..}
          = object
              (catMaybes
                 [("deals" .=) <$> _dDeals,
                  ("orderRevisionNumber" .=) <$>
                    _dOrderRevisionNumber])

--
-- /See:/ 'pretargetingConfigPlacementsItem' smart constructor.
data PretargetingConfigPlacementsItem = PretargetingConfigPlacementsItem
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
    PretargetingConfigPlacementsItem
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
                 PretargetingConfigPlacementsItem <$>
                   (o .:? "token") <*> (o .:? "type"))

instance ToJSON PretargetingConfigPlacementsItem
         where
        toJSON PretargetingConfigPlacementsItem{..}
          = object
              (catMaybes
                 [("token" .=) <$> _pcpiToken,
                  ("type" .=) <$> _pcpiType])

-- | An order can contain multiple deals. A deal contains the terms and
-- targeting information that is used for serving.
--
-- /See:/ 'marketplaceDeal' smart constructor.
data MarketplaceDeal = MarketplaceDeal
    { _mdExternalDealId       :: !(Maybe Text)
    , _mdBuyerPrivateData     :: !(Maybe PrivateData)
    , _mdWebPropertyCode      :: !(Maybe Text)
    , _mdCreationTimeMs       :: !(Maybe (Textual Int64))
    , _mdTerms                :: !(Maybe DealTerms)
    , _mdOfferRevisionNumber  :: !(Maybe (Textual Int64))
    , _mdLastUpdateTimeMs     :: !(Maybe (Textual Int64))
    , _mdKind                 :: !Text
    , _mdDeliveryControl      :: !(Maybe DeliveryControl)
    , _mdFlightStartTimeMs    :: !(Maybe (Textual Int64))
    , _mdSharedTargetings     :: !(Maybe [SharedTargeting])
    , _mdDealId               :: !(Maybe Text)
    , _mdInventoryDescription :: !(Maybe Text)
    , _mdSyndicationProduct   :: !(Maybe Text)
    , _mdFlightEndTimeMs      :: !(Maybe (Textual Int64))
    , _mdName                 :: !(Maybe Text)
    , _mdSellerContacts       :: !(Maybe [ContactInformation])
    , _mdOfferId              :: !(Maybe Text)
    , _mdOrderId              :: !(Maybe Text)
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

-- | The revision number of the offer that the deal was created from
-- (readonly, except on create)
mdOfferRevisionNumber :: Lens' MarketplaceDeal (Maybe Int64)
mdOfferRevisionNumber
  = lens _mdOfferRevisionNumber
      (\ s a -> s{_mdOfferRevisionNumber = a})
      . mapping _Coerce

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

-- | Proposed flight start time of the deal (ms since epoch) This will
-- generally be stored in a granularity of a second. (updatable)
mdFlightStartTimeMs :: Lens' MarketplaceDeal (Maybe Int64)
mdFlightStartTimeMs
  = lens _mdFlightStartTimeMs
      (\ s a -> s{_mdFlightStartTimeMs = a})
      . mapping _Coerce

-- | The shared targeting visible to buyers and sellers. (updatable)
mdSharedTargetings :: Lens' MarketplaceDeal [SharedTargeting]
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

-- | The offer-id from which this deal was created. (readonly, except on
-- create)
mdOfferId :: Lens' MarketplaceDeal (Maybe Text)
mdOfferId
  = lens _mdOfferId (\ s a -> s{_mdOfferId = a})

mdOrderId :: Lens' MarketplaceDeal (Maybe Text)
mdOrderId
  = lens _mdOrderId (\ s a -> s{_mdOrderId = a})

instance FromJSON MarketplaceDeal where
        parseJSON
          = withObject "MarketplaceDeal"
              (\ o ->
                 MarketplaceDeal <$>
                   (o .:? "externalDealId") <*>
                     (o .:? "buyerPrivateData")
                     <*> (o .:? "webPropertyCode")
                     <*> (o .:? "creationTimeMs")
                     <*> (o .:? "terms")
                     <*> (o .:? "offerRevisionNumber")
                     <*> (o .:? "lastUpdateTimeMs")
                     <*>
                     (o .:? "kind" .!= "adexchangebuyer#marketplaceDeal")
                     <*> (o .:? "deliveryControl")
                     <*> (o .:? "flightStartTimeMs")
                     <*> (o .:? "sharedTargetings" .!= mempty)
                     <*> (o .:? "dealId")
                     <*> (o .:? "inventoryDescription")
                     <*> (o .:? "syndicationProduct")
                     <*> (o .:? "flightEndTimeMs")
                     <*> (o .:? "name")
                     <*> (o .:? "sellerContacts" .!= mempty)
                     <*> (o .:? "offerId")
                     <*> (o .:? "orderId"))

instance ToJSON MarketplaceDeal where
        toJSON MarketplaceDeal{..}
          = object
              (catMaybes
                 [("externalDealId" .=) <$> _mdExternalDealId,
                  ("buyerPrivateData" .=) <$> _mdBuyerPrivateData,
                  ("webPropertyCode" .=) <$> _mdWebPropertyCode,
                  ("creationTimeMs" .=) <$> _mdCreationTimeMs,
                  ("terms" .=) <$> _mdTerms,
                  ("offerRevisionNumber" .=) <$>
                    _mdOfferRevisionNumber,
                  ("lastUpdateTimeMs" .=) <$> _mdLastUpdateTimeMs,
                  Just ("kind" .= _mdKind),
                  ("deliveryControl" .=) <$> _mdDeliveryControl,
                  ("flightStartTimeMs" .=) <$> _mdFlightStartTimeMs,
                  ("sharedTargetings" .=) <$> _mdSharedTargetings,
                  ("dealId" .=) <$> _mdDealId,
                  ("inventoryDescription" .=) <$>
                    _mdInventoryDescription,
                  ("syndicationProduct" .=) <$> _mdSyndicationProduct,
                  ("flightEndTimeMs" .=) <$> _mdFlightEndTimeMs,
                  ("name" .=) <$> _mdName,
                  ("sellerContacts" .=) <$> _mdSellerContacts,
                  ("offerId" .=) <$> _mdOfferId,
                  ("orderId" .=) <$> _mdOrderId])

--
-- /See:/ 'getOffersResponse' smart constructor.
newtype GetOffersResponse = GetOffersResponse
    { _gorOffers :: Maybe [MarketplaceOffer]
    } deriving (Eq,Show,Data,Typeable,Generic)

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
gorOffers :: Lens' GetOffersResponse [MarketplaceOffer]
gorOffers
  = lens _gorOffers (\ s a -> s{_gorOffers = a}) .
      _Default
      . _Coerce

instance FromJSON GetOffersResponse where
        parseJSON
          = withObject "GetOffersResponse"
              (\ o ->
                 GetOffersResponse <$> (o .:? "offers" .!= mempty))

instance ToJSON GetOffersResponse where
        toJSON GetOffersResponse{..}
          = object (catMaybes [("offers" .=) <$> _gorOffers])

--
-- /See:/ 'statsDTO' smart constructor.
data StatsDTO = StatsDTO
    { _sdtoBids        :: !(Maybe (Textual Int64))
    , _sdtoSpend       :: !(Maybe MoneyDTO)
    , _sdtoImpressions :: !(Maybe (Textual Int64))
    , _sdtoGoodBids    :: !(Maybe (Textual Int64))
    , _sdtoRevenue     :: !(Maybe MoneyDTO)
    , _sdtoRequests    :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatsDTO' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdtoBids'
--
-- * 'sdtoSpend'
--
-- * 'sdtoImpressions'
--
-- * 'sdtoGoodBids'
--
-- * 'sdtoRevenue'
--
-- * 'sdtoRequests'
statsDTO
    :: StatsDTO
statsDTO =
    StatsDTO
    { _sdtoBids = Nothing
    , _sdtoSpend = Nothing
    , _sdtoImpressions = Nothing
    , _sdtoGoodBids = Nothing
    , _sdtoRevenue = Nothing
    , _sdtoRequests = Nothing
    }

sdtoBids :: Lens' StatsDTO (Maybe Int64)
sdtoBids
  = lens _sdtoBids (\ s a -> s{_sdtoBids = a}) .
      mapping _Coerce

sdtoSpend :: Lens' StatsDTO (Maybe MoneyDTO)
sdtoSpend
  = lens _sdtoSpend (\ s a -> s{_sdtoSpend = a})

sdtoImpressions :: Lens' StatsDTO (Maybe Int64)
sdtoImpressions
  = lens _sdtoImpressions
      (\ s a -> s{_sdtoImpressions = a})
      . mapping _Coerce

sdtoGoodBids :: Lens' StatsDTO (Maybe Int64)
sdtoGoodBids
  = lens _sdtoGoodBids (\ s a -> s{_sdtoGoodBids = a})
      . mapping _Coerce

sdtoRevenue :: Lens' StatsDTO (Maybe MoneyDTO)
sdtoRevenue
  = lens _sdtoRevenue (\ s a -> s{_sdtoRevenue = a})

sdtoRequests :: Lens' StatsDTO (Maybe Int64)
sdtoRequests
  = lens _sdtoRequests (\ s a -> s{_sdtoRequests = a})
      . mapping _Coerce

instance FromJSON StatsDTO where
        parseJSON
          = withObject "StatsDTO"
              (\ o ->
                 StatsDTO <$>
                   (o .:? "bids") <*> (o .:? "spend") <*>
                     (o .:? "impressions")
                     <*> (o .:? "goodBids")
                     <*> (o .:? "revenue")
                     <*> (o .:? "requests"))

instance ToJSON StatsDTO where
        toJSON StatsDTO{..}
          = object
              (catMaybes
                 [("bids" .=) <$> _sdtoBids,
                  ("spend" .=) <$> _sdtoSpend,
                  ("impressions" .=) <$> _sdtoImpressions,
                  ("goodBids" .=) <$> _sdtoGoodBids,
                  ("revenue" .=) <$> _sdtoRevenue,
                  ("requests" .=) <$> _sdtoRequests])

--
-- /See:/ 'dealTermsNonGuaranteedAuctionTerms' smart constructor.
data DealTermsNonGuaranteedAuctionTerms = DealTermsNonGuaranteedAuctionTerms
    { _dtngatReservePricePerBuyers :: !(Maybe [PricePerBuyer])
    , _dtngatPrivateAuctionId      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
dtngatReservePricePerBuyers :: Lens' DealTermsNonGuaranteedAuctionTerms [PricePerBuyer]
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

instance FromJSON DealTermsNonGuaranteedAuctionTerms
         where
        parseJSON
          = withObject "DealTermsNonGuaranteedAuctionTerms"
              (\ o ->
                 DealTermsNonGuaranteedAuctionTerms <$>
                   (o .:? "reservePricePerBuyers" .!= mempty) <*>
                     (o .:? "privateAuctionId"))

instance ToJSON DealTermsNonGuaranteedAuctionTerms
         where
        toJSON DealTermsNonGuaranteedAuctionTerms{..}
          = object
              (catMaybes
                 [("reservePricePerBuyers" .=) <$>
                    _dtngatReservePricePerBuyers,
                  ("privateAuctionId" .=) <$> _dtngatPrivateAuctionId])

--
-- /See:/ 'creativeFilteringReasonsReasonsItem' smart constructor.
data CreativeFilteringReasonsReasonsItem = CreativeFilteringReasonsReasonsItem
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
    CreativeFilteringReasonsReasonsItem
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
                 CreativeFilteringReasonsReasonsItem <$>
                   (o .:? "filteringStatus") <*>
                     (o .:? "filteringCount"))

instance ToJSON CreativeFilteringReasonsReasonsItem
         where
        toJSON CreativeFilteringReasonsReasonsItem{..}
          = object
              (catMaybes
                 [("filteringStatus" .=) <$> _cfrriFilteringStatus,
                  ("filteringCount" .=) <$> _cfrriFilteringCount])

--
-- /See:/ 'negotiationRoundDTO' smart constructor.
data NegotiationRoundDTO = NegotiationRoundDTO
    { _nrdtoTerms          :: !(Maybe TermsDTO)
    , _nrdtoKind           :: !Text
    , _nrdtoOriginatorRole :: !(Maybe Text)
    , _nrdtoAction         :: !(Maybe Text)
    , _nrdtoDBmPartnerId   :: !(Maybe (Textual Int64))
    , _nrdtoNotes          :: !(Maybe Text)
    , _nrdtoNegotiationId  :: !(Maybe (Textual Int64))
    , _nrdtoEditHistory    :: !(Maybe EditHistoryDTO)
    , _nrdtoRoundNumber    :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NegotiationRoundDTO' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nrdtoTerms'
--
-- * 'nrdtoKind'
--
-- * 'nrdtoOriginatorRole'
--
-- * 'nrdtoAction'
--
-- * 'nrdtoDBmPartnerId'
--
-- * 'nrdtoNotes'
--
-- * 'nrdtoNegotiationId'
--
-- * 'nrdtoEditHistory'
--
-- * 'nrdtoRoundNumber'
negotiationRoundDTO
    :: NegotiationRoundDTO
negotiationRoundDTO =
    NegotiationRoundDTO
    { _nrdtoTerms = Nothing
    , _nrdtoKind = "adexchangebuyer#negotiationRound"
    , _nrdtoOriginatorRole = Nothing
    , _nrdtoAction = Nothing
    , _nrdtoDBmPartnerId = Nothing
    , _nrdtoNotes = Nothing
    , _nrdtoNegotiationId = Nothing
    , _nrdtoEditHistory = Nothing
    , _nrdtoRoundNumber = Nothing
    }

-- | The detailed terms proposed in this negotiation round.
nrdtoTerms :: Lens' NegotiationRoundDTO (Maybe TermsDTO)
nrdtoTerms
  = lens _nrdtoTerms (\ s a -> s{_nrdtoTerms = a})

nrdtoKind :: Lens' NegotiationRoundDTO Text
nrdtoKind
  = lens _nrdtoKind (\ s a -> s{_nrdtoKind = a})

-- | The role, either buyer or seller, initiating this negotiation round.
nrdtoOriginatorRole :: Lens' NegotiationRoundDTO (Maybe Text)
nrdtoOriginatorRole
  = lens _nrdtoOriginatorRole
      (\ s a -> s{_nrdtoOriginatorRole = a})

-- | The action performed by this negotiation round.
nrdtoAction :: Lens' NegotiationRoundDTO (Maybe Text)
nrdtoAction
  = lens _nrdtoAction (\ s a -> s{_nrdtoAction = a})

-- | Stores DBM partner ID for use by DBM
nrdtoDBmPartnerId :: Lens' NegotiationRoundDTO (Maybe Int64)
nrdtoDBmPartnerId
  = lens _nrdtoDBmPartnerId
      (\ s a -> s{_nrdtoDBmPartnerId = a})
      . mapping _Coerce

-- | Notes regarding this negotiation round.
nrdtoNotes :: Lens' NegotiationRoundDTO (Maybe Text)
nrdtoNotes
  = lens _nrdtoNotes (\ s a -> s{_nrdtoNotes = a})

-- | The ID of the negotiation to which this negotiation round applies.
nrdtoNegotiationId :: Lens' NegotiationRoundDTO (Maybe Int64)
nrdtoNegotiationId
  = lens _nrdtoNegotiationId
      (\ s a -> s{_nrdtoNegotiationId = a})
      . mapping _Coerce

-- | The edit history of this negotiation round.
nrdtoEditHistory :: Lens' NegotiationRoundDTO (Maybe EditHistoryDTO)
nrdtoEditHistory
  = lens _nrdtoEditHistory
      (\ s a -> s{_nrdtoEditHistory = a})

-- | The number of this negotiation round, in sequence.
nrdtoRoundNumber :: Lens' NegotiationRoundDTO (Maybe Int64)
nrdtoRoundNumber
  = lens _nrdtoRoundNumber
      (\ s a -> s{_nrdtoRoundNumber = a})
      . mapping _Coerce

instance FromJSON NegotiationRoundDTO where
        parseJSON
          = withObject "NegotiationRoundDTO"
              (\ o ->
                 NegotiationRoundDTO <$>
                   (o .:? "terms") <*>
                     (o .:? "kind" .!= "adexchangebuyer#negotiationRound")
                     <*> (o .:? "originatorRole")
                     <*> (o .:? "action")
                     <*> (o .:? "dbmPartnerId")
                     <*> (o .:? "notes")
                     <*> (o .:? "negotiationId")
                     <*> (o .:? "editHistory")
                     <*> (o .:? "roundNumber"))

instance ToJSON NegotiationRoundDTO where
        toJSON NegotiationRoundDTO{..}
          = object
              (catMaybes
                 [("terms" .=) <$> _nrdtoTerms,
                  Just ("kind" .= _nrdtoKind),
                  ("originatorRole" .=) <$> _nrdtoOriginatorRole,
                  ("action" .=) <$> _nrdtoAction,
                  ("dbmPartnerId" .=) <$> _nrdtoDBmPartnerId,
                  ("notes" .=) <$> _nrdtoNotes,
                  ("negotiationId" .=) <$> _nrdtoNegotiationId,
                  ("editHistory" .=) <$> _nrdtoEditHistory,
                  ("roundNumber" .=) <$> _nrdtoRoundNumber])

--
-- /See:/ 'dealTerms' smart constructor.
data DealTerms = DealTerms
    { _dtNonGuaranteedFixedPriceTerms :: !(Maybe DealTermsNonGuaranteedFixedPriceTerms)
    , _dtNonGuaranteedAuctionTerms    :: !(Maybe DealTermsNonGuaranteedAuctionTerms)
    , _dtGuaranteedFixedPriceTerms    :: !(Maybe DealTermsGuaranteedFixedPriceTerms)
    , _dtDescription                  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
dtNonGuaranteedFixedPriceTerms :: Lens' DealTerms (Maybe DealTermsNonGuaranteedFixedPriceTerms)
dtNonGuaranteedFixedPriceTerms
  = lens _dtNonGuaranteedFixedPriceTerms
      (\ s a -> s{_dtNonGuaranteedFixedPriceTerms = a})

-- | The terms for non-guaranteed auction deals.
dtNonGuaranteedAuctionTerms :: Lens' DealTerms (Maybe DealTermsNonGuaranteedAuctionTerms)
dtNonGuaranteedAuctionTerms
  = lens _dtNonGuaranteedAuctionTerms
      (\ s a -> s{_dtNonGuaranteedAuctionTerms = a})

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
                 DealTerms <$>
                   (o .:? "nonGuaranteedFixedPriceTerms") <*>
                     (o .:? "nonGuaranteedAuctionTerms")
                     <*> (o .:? "guaranteedFixedPriceTerms")
                     <*> (o .:? "description"))

instance ToJSON DealTerms where
        toJSON DealTerms{..}
          = object
              (catMaybes
                 [("nonGuaranteedFixedPriceTerms" .=) <$>
                    _dtNonGuaranteedFixedPriceTerms,
                  ("nonGuaranteedAuctionTerms" .=) <$>
                    _dtNonGuaranteedAuctionTerms,
                  ("guaranteedFixedPriceTerms" .=) <$>
                    _dtGuaranteedFixedPriceTerms,
                  ("description" .=) <$> _dtDescription])

--
-- /See:/ 'dateTime' smart constructor.
data DateTime = DateTime
    { _dtSecond     :: !(Maybe (Textual Int32))
    , _dtDay        :: !(Maybe (Textual Int32))
    , _dtYear       :: !(Maybe (Textual Int32))
    , _dtHour       :: !(Maybe (Textual Int32))
    , _dtMonth      :: !(Maybe (Textual Int32))
    , _dtMinute     :: !(Maybe (Textual Int32))
    , _dtTimeZoneId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
dtSecond
  = lens _dtSecond (\ s a -> s{_dtSecond = a}) .
      mapping _Coerce

dtDay :: Lens' DateTime (Maybe Int32)
dtDay
  = lens _dtDay (\ s a -> s{_dtDay = a}) .
      mapping _Coerce

dtYear :: Lens' DateTime (Maybe Int32)
dtYear
  = lens _dtYear (\ s a -> s{_dtYear = a}) .
      mapping _Coerce

dtHour :: Lens' DateTime (Maybe Int32)
dtHour
  = lens _dtHour (\ s a -> s{_dtHour = a}) .
      mapping _Coerce

dtMonth :: Lens' DateTime (Maybe Int32)
dtMonth
  = lens _dtMonth (\ s a -> s{_dtMonth = a}) .
      mapping _Coerce

dtMinute :: Lens' DateTime (Maybe Int32)
dtMinute
  = lens _dtMinute (\ s a -> s{_dtMinute = a}) .
      mapping _Coerce

dtTimeZoneId :: Lens' DateTime (Maybe Text)
dtTimeZoneId
  = lens _dtTimeZoneId (\ s a -> s{_dtTimeZoneId = a})

instance FromJSON DateTime where
        parseJSON
          = withObject "DateTime"
              (\ o ->
                 DateTime <$>
                   (o .:? "second") <*> (o .:? "day") <*> (o .:? "year")
                     <*> (o .:? "hour")
                     <*> (o .:? "month")
                     <*> (o .:? "minute")
                     <*> (o .:? "timeZoneId"))

instance ToJSON DateTime where
        toJSON DateTime{..}
          = object
              (catMaybes
                 [("second" .=) <$> _dtSecond, ("day" .=) <$> _dtDay,
                  ("year" .=) <$> _dtYear, ("hour" .=) <$> _dtHour,
                  ("month" .=) <$> _dtMonth,
                  ("minute" .=) <$> _dtMinute,
                  ("timeZoneId" .=) <$> _dtTimeZoneId])

--
-- /See:/ 'marketplaceLabel' smart constructor.
data MarketplaceLabel = MarketplaceLabel
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
    MarketplaceLabel
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
                 MarketplaceLabel <$>
                   (o .:? "deprecatedMarketplaceDealParty") <*>
                     (o .:? "accountId")
                     <*> (o .:? "createTimeMs")
                     <*> (o .:? "label"))

instance ToJSON MarketplaceLabel where
        toJSON MarketplaceLabel{..}
          = object
              (catMaybes
                 [("deprecatedMarketplaceDealParty" .=) <$>
                    _mlDeprecatedMarketplaceDealParty,
                  ("accountId" .=) <$> _mlAccountId,
                  ("createTimeMs" .=) <$> _mlCreateTimeMs,
                  ("label" .=) <$> _mlLabel])

--
-- /See:/ 'editHistoryDTO' smart constructor.
data EditHistoryDTO = EditHistoryDTO
    { _ehdtoLastUpdatedByLoginName :: !(Maybe Text)
    , _ehdtoCreatedByLoginName     :: !(Maybe Text)
    , _ehdtoLastUpdateTimeStamp    :: !(Maybe (Textual Int64))
    , _ehdtoCreatedTimeStamp       :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditHistoryDTO' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ehdtoLastUpdatedByLoginName'
--
-- * 'ehdtoCreatedByLoginName'
--
-- * 'ehdtoLastUpdateTimeStamp'
--
-- * 'ehdtoCreatedTimeStamp'
editHistoryDTO
    :: EditHistoryDTO
editHistoryDTO =
    EditHistoryDTO
    { _ehdtoLastUpdatedByLoginName = Nothing
    , _ehdtoCreatedByLoginName = Nothing
    , _ehdtoLastUpdateTimeStamp = Nothing
    , _ehdtoCreatedTimeStamp = Nothing
    }

ehdtoLastUpdatedByLoginName :: Lens' EditHistoryDTO (Maybe Text)
ehdtoLastUpdatedByLoginName
  = lens _ehdtoLastUpdatedByLoginName
      (\ s a -> s{_ehdtoLastUpdatedByLoginName = a})

ehdtoCreatedByLoginName :: Lens' EditHistoryDTO (Maybe Text)
ehdtoCreatedByLoginName
  = lens _ehdtoCreatedByLoginName
      (\ s a -> s{_ehdtoCreatedByLoginName = a})

ehdtoLastUpdateTimeStamp :: Lens' EditHistoryDTO (Maybe Int64)
ehdtoLastUpdateTimeStamp
  = lens _ehdtoLastUpdateTimeStamp
      (\ s a -> s{_ehdtoLastUpdateTimeStamp = a})
      . mapping _Coerce

ehdtoCreatedTimeStamp :: Lens' EditHistoryDTO (Maybe Int64)
ehdtoCreatedTimeStamp
  = lens _ehdtoCreatedTimeStamp
      (\ s a -> s{_ehdtoCreatedTimeStamp = a})
      . mapping _Coerce

instance FromJSON EditHistoryDTO where
        parseJSON
          = withObject "EditHistoryDTO"
              (\ o ->
                 EditHistoryDTO <$>
                   (o .:? "lastUpdatedByLoginName") <*>
                     (o .:? "createdByLoginName")
                     <*> (o .:? "lastUpdateTimeStamp")
                     <*> (o .:? "createdTimeStamp"))

instance ToJSON EditHistoryDTO where
        toJSON EditHistoryDTO{..}
          = object
              (catMaybes
                 [("lastUpdatedByLoginName" .=) <$>
                    _ehdtoLastUpdatedByLoginName,
                  ("createdByLoginName" .=) <$>
                    _ehdtoCreatedByLoginName,
                  ("lastUpdateTimeStamp" .=) <$>
                    _ehdtoLastUpdateTimeStamp,
                  ("createdTimeStamp" .=) <$> _ehdtoCreatedTimeStamp])

--
-- /See:/ 'buyer' smart constructor.
newtype Buyer = Buyer
    { _bbAccountId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Buyer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbAccountId'
buyer
    :: Buyer
buyer =
    Buyer
    { _bbAccountId = Nothing
    }

-- | Adx account id of the buyer.
bbAccountId :: Lens' Buyer (Maybe Text)
bbAccountId
  = lens _bbAccountId (\ s a -> s{_bbAccountId = a})

instance FromJSON Buyer where
        parseJSON
          = withObject "Buyer"
              (\ o -> Buyer <$> (o .:? "accountId"))

instance ToJSON Buyer where
        toJSON Buyer{..}
          = object
              (catMaybes [("accountId" .=) <$> _bbAccountId])

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
    { _mBuyerPrivateData           :: !(Maybe PrivateData)
    , _mIsSetupComplete            :: !(Maybe Bool)
    , _mBuyerContacts              :: !(Maybe [ContactInformation])
    , _mKind                       :: !Text
    , _mOriginatorRole             :: !(Maybe Text)
    , _mRevisionNumber             :: !(Maybe (Textual Int64))
    , _mBilledBuyer                :: !(Maybe Buyer)
    , _mIsRenegotiating            :: !(Maybe Bool)
    , _mHasSellerSignedOff         :: !(Maybe Bool)
    , _mSeller                     :: !(Maybe Seller)
    , _mOrderState                 :: !(Maybe Text)
    , _mName                       :: !(Maybe Text)
    , _mSellerContacts             :: !(Maybe [ContactInformation])
    , _mLastUpdaterRole            :: !(Maybe Text)
    , _mLabels                     :: !(Maybe [MarketplaceLabel])
    , _mRevisionTimeMs             :: !(Maybe (Textual Int64))
    , _mOrderId                    :: !(Maybe Text)
    , _mLastUpdaterOrCommentorRole :: !(Maybe Text)
    , _mHasBuyerSignedOff          :: !(Maybe Bool)
    , _mBuyer                      :: !(Maybe Buyer)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
mBuyerPrivateData :: Lens' MarketplaceOrder (Maybe PrivateData)
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
mBuyerContacts :: Lens' MarketplaceOrder [ContactInformation]
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
      . mapping _Coerce

-- | Reference to the buyer that will get billed for this order. (readonly)
mBilledBuyer :: Lens' MarketplaceOrder (Maybe Buyer)
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
mSeller :: Lens' MarketplaceOrder (Maybe Seller)
mSeller = lens _mSeller (\ s a -> s{_mSeller = a})

-- | The current state of the order. (readonly)
mOrderState :: Lens' MarketplaceOrder (Maybe Text)
mOrderState
  = lens _mOrderState (\ s a -> s{_mOrderState = a})

-- | The name for the order (updatable)
mName :: Lens' MarketplaceOrder (Maybe Text)
mName = lens _mName (\ s a -> s{_mName = a})

-- | Optional contact information for the seller (buyer-readonly).
mSellerContacts :: Lens' MarketplaceOrder [ContactInformation]
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
mLabels :: Lens' MarketplaceOrder [MarketplaceLabel]
mLabels
  = lens _mLabels (\ s a -> s{_mLabels = a}) . _Default
      . _Coerce

-- | The time (ms since epoch) when the order was last revised (readonly).
mRevisionTimeMs :: Lens' MarketplaceOrder (Maybe Int64)
mRevisionTimeMs
  = lens _mRevisionTimeMs
      (\ s a -> s{_mRevisionTimeMs = a})
      . mapping _Coerce

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
mBuyer :: Lens' MarketplaceOrder (Maybe Buyer)
mBuyer = lens _mBuyer (\ s a -> s{_mBuyer = a})

instance FromJSON MarketplaceOrder where
        parseJSON
          = withObject "MarketplaceOrder"
              (\ o ->
                 MarketplaceOrder <$>
                   (o .:? "buyerPrivateData") <*>
                     (o .:? "isSetupComplete")
                     <*> (o .:? "buyerContacts" .!= mempty)
                     <*>
                     (o .:? "kind" .!= "adexchangebuyer#marketplaceOrder")
                     <*> (o .:? "originatorRole")
                     <*> (o .:? "revisionNumber")
                     <*> (o .:? "billedBuyer")
                     <*> (o .:? "isRenegotiating")
                     <*> (o .:? "hasSellerSignedOff")
                     <*> (o .:? "seller")
                     <*> (o .:? "orderState")
                     <*> (o .:? "name")
                     <*> (o .:? "sellerContacts" .!= mempty)
                     <*> (o .:? "lastUpdaterRole")
                     <*> (o .:? "labels" .!= mempty)
                     <*> (o .:? "revisionTimeMs")
                     <*> (o .:? "orderId")
                     <*> (o .:? "lastUpdaterOrCommentorRole")
                     <*> (o .:? "hasBuyerSignedOff")
                     <*> (o .:? "buyer"))

instance ToJSON MarketplaceOrder where
        toJSON MarketplaceOrder{..}
          = object
              (catMaybes
                 [("buyerPrivateData" .=) <$> _mBuyerPrivateData,
                  ("isSetupComplete" .=) <$> _mIsSetupComplete,
                  ("buyerContacts" .=) <$> _mBuyerContacts,
                  Just ("kind" .= _mKind),
                  ("originatorRole" .=) <$> _mOriginatorRole,
                  ("revisionNumber" .=) <$> _mRevisionNumber,
                  ("billedBuyer" .=) <$> _mBilledBuyer,
                  ("isRenegotiating" .=) <$> _mIsRenegotiating,
                  ("hasSellerSignedOff" .=) <$> _mHasSellerSignedOff,
                  ("seller" .=) <$> _mSeller,
                  ("orderState" .=) <$> _mOrderState,
                  ("name" .=) <$> _mName,
                  ("sellerContacts" .=) <$> _mSellerContacts,
                  ("lastUpdaterRole" .=) <$> _mLastUpdaterRole,
                  ("labels" .=) <$> _mLabels,
                  ("revisionTimeMs" .=) <$> _mRevisionTimeMs,
                  ("orderId" .=) <$> _mOrderId,
                  ("lastUpdaterOrCommentorRole" .=) <$>
                    _mLastUpdaterOrCommentorRole,
                  ("hasBuyerSignedOff" .=) <$> _mHasBuyerSignedOff,
                  ("buyer" .=) <$> _mBuyer])

--
-- /See:/ 'addOrderDealsRequest' smart constructor.
data AddOrderDealsRequest = AddOrderDealsRequest
    { _aUpdateAction        :: !(Maybe Text)
    , _aDeals               :: !(Maybe [MarketplaceDeal])
    , _aOrderRevisionNumber :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddOrderDealsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aUpdateAction'
--
-- * 'aDeals'
--
-- * 'aOrderRevisionNumber'
addOrderDealsRequest
    :: AddOrderDealsRequest
addOrderDealsRequest =
    AddOrderDealsRequest
    { _aUpdateAction = Nothing
    , _aDeals = Nothing
    , _aOrderRevisionNumber = Nothing
    }

-- | Indicates an optional action to take on the order
aUpdateAction :: Lens' AddOrderDealsRequest (Maybe Text)
aUpdateAction
  = lens _aUpdateAction
      (\ s a -> s{_aUpdateAction = a})

-- | The list of deals to add
aDeals :: Lens' AddOrderDealsRequest [MarketplaceDeal]
aDeals
  = lens _aDeals (\ s a -> s{_aDeals = a}) . _Default .
      _Coerce

-- | The last known order revision number.
aOrderRevisionNumber :: Lens' AddOrderDealsRequest (Maybe Int64)
aOrderRevisionNumber
  = lens _aOrderRevisionNumber
      (\ s a -> s{_aOrderRevisionNumber = a})
      . mapping _Coerce

instance FromJSON AddOrderDealsRequest where
        parseJSON
          = withObject "AddOrderDealsRequest"
              (\ o ->
                 AddOrderDealsRequest <$>
                   (o .:? "updateAction") <*> (o .:? "deals" .!= mempty)
                     <*> (o .:? "orderRevisionNumber"))

instance ToJSON AddOrderDealsRequest where
        toJSON AddOrderDealsRequest{..}
          = object
              (catMaybes
                 [("updateAction" .=) <$> _aUpdateAction,
                  ("deals" .=) <$> _aDeals,
                  ("orderRevisionNumber" .=) <$>
                    _aOrderRevisionNumber])

--
-- /See:/ 'dealTermsGuaranteedFixedPriceTerms' smart constructor.
data DealTermsGuaranteedFixedPriceTerms = DealTermsGuaranteedFixedPriceTerms
    { _dtgfptGuaranteedLooks       :: !(Maybe (Textual Int64))
    , _dtgfptGuaranteedImpressions :: !(Maybe (Textual Int64))
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
      . mapping _Coerce

-- | Guaranteed impressions as a percentage. This is the percentage of
-- guaranteed looks that the buyer is guaranteeing to buy.
dtgfptGuaranteedImpressions :: Lens' DealTermsGuaranteedFixedPriceTerms (Maybe Int64)
dtgfptGuaranteedImpressions
  = lens _dtgfptGuaranteedImpressions
      (\ s a -> s{_dtgfptGuaranteedImpressions = a})
      . mapping _Coerce

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
                 DealTermsGuaranteedFixedPriceTerms <$>
                   (o .:? "guaranteedLooks") <*>
                     (o .:? "guaranteedImpressions")
                     <*> (o .:? "fixedPrices" .!= mempty))

instance ToJSON DealTermsGuaranteedFixedPriceTerms
         where
        toJSON DealTermsGuaranteedFixedPriceTerms{..}
          = object
              (catMaybes
                 [("guaranteedLooks" .=) <$> _dtgfptGuaranteedLooks,
                  ("guaranteedImpressions" .=) <$>
                    _dtgfptGuaranteedImpressions,
                  ("fixedPrices" .=) <$> _dtgfptFixedPrices])
