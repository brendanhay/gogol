{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdExchangeBuyer2.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdExchangeBuyer2.Types.Product where

import           Network.Google.AdExchangeBuyer2.Types.Sum
import           Network.Google.Prelude

-- | HTML content for a creative.
--
-- /See:/ 'htmlContent' smart constructor.
data HTMLContent = HTMLContent'
    { _hcHeight  :: !(Maybe (Textual Int32))
    , _hcSnippet :: !(Maybe Text)
    , _hcWidth   :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'HTMLContent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hcHeight'
--
-- * 'hcSnippet'
--
-- * 'hcWidth'
htmlContent
    :: HTMLContent
htmlContent =
    HTMLContent'
    { _hcHeight = Nothing
    , _hcSnippet = Nothing
    , _hcWidth = Nothing
    }

-- | The height of the HTML snippet in pixels.
hcHeight :: Lens' HTMLContent (Maybe Int32)
hcHeight
  = lens _hcHeight (\ s a -> s{_hcHeight = a}) .
      mapping _Coerce

-- | The HTML snippet that displays the ad when inserted in the web page.
hcSnippet :: Lens' HTMLContent (Maybe Text)
hcSnippet
  = lens _hcSnippet (\ s a -> s{_hcSnippet = a})

-- | The width of the HTML snippet in pixels.
hcWidth :: Lens' HTMLContent (Maybe Int32)
hcWidth
  = lens _hcWidth (\ s a -> s{_hcWidth = a}) .
      mapping _Coerce

instance FromJSON HTMLContent where
        parseJSON
          = withObject "HTMLContent"
              (\ o ->
                 HTMLContent' <$>
                   (o .:? "height") <*> (o .:? "snippet") <*>
                     (o .:? "width"))

instance ToJSON HTMLContent where
        toJSON HTMLContent'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _hcHeight,
                  ("snippet" .=) <$> _hcSnippet,
                  ("width" .=) <$> _hcWidth])

-- | Response message for listing all reasons that bids were filtered from
-- the auction.
--
-- /See:/ 'listFilteredBidsResponse' smart constructor.
data ListFilteredBidsResponse = ListFilteredBidsResponse'
    { _lfbrNextPageToken      :: !(Maybe Text)
    , _lfbrCreativeStatusRows :: !(Maybe [CreativeStatusRow])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListFilteredBidsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfbrNextPageToken'
--
-- * 'lfbrCreativeStatusRows'
listFilteredBidsResponse
    :: ListFilteredBidsResponse
listFilteredBidsResponse =
    ListFilteredBidsResponse'
    { _lfbrNextPageToken = Nothing
    , _lfbrCreativeStatusRows = Nothing
    }

-- | A token to retrieve the next page of results. Pass this value in the
-- ListFilteredBidsRequest.pageToken field in the subsequent call to the
-- filteredBids.list method to retrieve the next page of results.
lfbrNextPageToken :: Lens' ListFilteredBidsResponse (Maybe Text)
lfbrNextPageToken
  = lens _lfbrNextPageToken
      (\ s a -> s{_lfbrNextPageToken = a})

-- | List of rows, with counts of filtered bids aggregated by filtering
-- reason (i.e. creative status).
lfbrCreativeStatusRows :: Lens' ListFilteredBidsResponse [CreativeStatusRow]
lfbrCreativeStatusRows
  = lens _lfbrCreativeStatusRows
      (\ s a -> s{_lfbrCreativeStatusRows = a})
      . _Default
      . _Coerce

instance FromJSON ListFilteredBidsResponse where
        parseJSON
          = withObject "ListFilteredBidsResponse"
              (\ o ->
                 ListFilteredBidsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "creativeStatusRows" .!= mempty))

instance ToJSON ListFilteredBidsResponse where
        toJSON ListFilteredBidsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lfbrNextPageToken,
                  ("creativeStatusRows" .=) <$>
                    _lfbrCreativeStatusRows])

-- | Request message to resume (unpause) serving for an already-finalized
-- proposal.
--
-- /See:/ 'resumeProposalRequest' smart constructor.
data ResumeProposalRequest =
    ResumeProposalRequest'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResumeProposalRequest' with the minimum fields required to make a request.
--
resumeProposalRequest
    :: ResumeProposalRequest
resumeProposalRequest = ResumeProposalRequest'

instance FromJSON ResumeProposalRequest where
        parseJSON
          = withObject "ResumeProposalRequest"
              (\ o -> pure ResumeProposalRequest')

instance ToJSON ResumeProposalRequest where
        toJSON = const emptyObject

-- | Terms for Preferred Deals. Note that Preferred Deals cannot be created
-- via the API at this time, but can be returned in a get or list request.
--
-- /See:/ 'nonGuaranteedFixedPriceTerms' smart constructor.
newtype NonGuaranteedFixedPriceTerms = NonGuaranteedFixedPriceTerms'
    { _ngfptFixedPrices :: Maybe [PricePerBuyer]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NonGuaranteedFixedPriceTerms' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ngfptFixedPrices'
nonGuaranteedFixedPriceTerms
    :: NonGuaranteedFixedPriceTerms
nonGuaranteedFixedPriceTerms =
    NonGuaranteedFixedPriceTerms'
    { _ngfptFixedPrices = Nothing
    }

-- | Fixed price for the specified buyer.
ngfptFixedPrices :: Lens' NonGuaranteedFixedPriceTerms [PricePerBuyer]
ngfptFixedPrices
  = lens _ngfptFixedPrices
      (\ s a -> s{_ngfptFixedPrices = a})
      . _Default
      . _Coerce

instance FromJSON NonGuaranteedFixedPriceTerms where
        parseJSON
          = withObject "NonGuaranteedFixedPriceTerms"
              (\ o ->
                 NonGuaranteedFixedPriceTerms' <$>
                   (o .:? "fixedPrices" .!= mempty))

instance ToJSON NonGuaranteedFixedPriceTerms where
        toJSON NonGuaranteedFixedPriceTerms'{..}
          = object
              (catMaybes
                 [("fixedPrices" .=) <$> _ngfptFixedPrices])

-- | A response for listing creative and deal associations
--
-- /See:/ 'listDealAssociationsResponse' smart constructor.
data ListDealAssociationsResponse = ListDealAssociationsResponse'
    { _ldarNextPageToken :: !(Maybe Text)
    , _ldarAssociations  :: !(Maybe [CreativeDealAssociation])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListDealAssociationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldarNextPageToken'
--
-- * 'ldarAssociations'
listDealAssociationsResponse
    :: ListDealAssociationsResponse
listDealAssociationsResponse =
    ListDealAssociationsResponse'
    { _ldarNextPageToken = Nothing
    , _ldarAssociations = Nothing
    }

-- | A token to retrieve the next page of results. Pass this value in the
-- ListDealAssociationsRequest.page_token field in the subsequent call to
-- \'ListDealAssociation\' method to retrieve the next page of results.
ldarNextPageToken :: Lens' ListDealAssociationsResponse (Maybe Text)
ldarNextPageToken
  = lens _ldarNextPageToken
      (\ s a -> s{_ldarNextPageToken = a})

-- | The list of associations.
ldarAssociations :: Lens' ListDealAssociationsResponse [CreativeDealAssociation]
ldarAssociations
  = lens _ldarAssociations
      (\ s a -> s{_ldarAssociations = a})
      . _Default
      . _Coerce

instance FromJSON ListDealAssociationsResponse where
        parseJSON
          = withObject "ListDealAssociationsResponse"
              (\ o ->
                 ListDealAssociationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "associations" .!= mempty))

instance ToJSON ListDealAssociationsResponse where
        toJSON ListDealAssociationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ldarNextPageToken,
                  ("associations" .=) <$> _ldarAssociations])

-- | An image resource. You may provide a larger image than was requested, so
-- long as the aspect ratio is preserved.
--
-- /See:/ 'image' smart constructor.
data Image = Image'
    { _iHeight :: !(Maybe (Textual Int32))
    , _iURL    :: !(Maybe Text)
    , _iWidth  :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Image' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iHeight'
--
-- * 'iURL'
--
-- * 'iWidth'
image
    :: Image
image =
    Image'
    { _iHeight = Nothing
    , _iURL = Nothing
    , _iWidth = Nothing
    }

-- | Image height in pixels.
iHeight :: Lens' Image (Maybe Int32)
iHeight
  = lens _iHeight (\ s a -> s{_iHeight = a}) .
      mapping _Coerce

-- | The URL of the image.
iURL :: Lens' Image (Maybe Text)
iURL = lens _iURL (\ s a -> s{_iURL = a})

-- | Image width in pixels.
iWidth :: Lens' Image (Maybe Int32)
iWidth
  = lens _iWidth (\ s a -> s{_iWidth = a}) .
      mapping _Coerce

instance FromJSON Image where
        parseJSON
          = withObject "Image"
              (\ o ->
                 Image' <$>
                   (o .:? "height") <*> (o .:? "url") <*>
                     (o .:? "width"))

instance ToJSON Image where
        toJSON Image'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _iHeight, ("url" .=) <$> _iURL,
                  ("width" .=) <$> _iWidth])

-- | Represents targeting about various types of technology.
--
-- /See:/ 'technologyTargeting' smart constructor.
data TechnologyTargeting = TechnologyTargeting'
    { _ttDeviceCategoryTargeting   :: !(Maybe CriteriaTargeting)
    , _ttOperatingSystemTargeting  :: !(Maybe OperatingSystemTargeting)
    , _ttDeviceCapabilityTargeting :: !(Maybe CriteriaTargeting)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TechnologyTargeting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttDeviceCategoryTargeting'
--
-- * 'ttOperatingSystemTargeting'
--
-- * 'ttDeviceCapabilityTargeting'
technologyTargeting
    :: TechnologyTargeting
technologyTargeting =
    TechnologyTargeting'
    { _ttDeviceCategoryTargeting = Nothing
    , _ttOperatingSystemTargeting = Nothing
    , _ttDeviceCapabilityTargeting = Nothing
    }

-- | IDs of device categories to be included\/excluded.
ttDeviceCategoryTargeting :: Lens' TechnologyTargeting (Maybe CriteriaTargeting)
ttDeviceCategoryTargeting
  = lens _ttDeviceCategoryTargeting
      (\ s a -> s{_ttDeviceCategoryTargeting = a})

-- | Operating system related targeting information.
ttOperatingSystemTargeting :: Lens' TechnologyTargeting (Maybe OperatingSystemTargeting)
ttOperatingSystemTargeting
  = lens _ttOperatingSystemTargeting
      (\ s a -> s{_ttOperatingSystemTargeting = a})

-- | IDs of device capabilities to be included\/excluded.
ttDeviceCapabilityTargeting :: Lens' TechnologyTargeting (Maybe CriteriaTargeting)
ttDeviceCapabilityTargeting
  = lens _ttDeviceCapabilityTargeting
      (\ s a -> s{_ttDeviceCapabilityTargeting = a})

instance FromJSON TechnologyTargeting where
        parseJSON
          = withObject "TechnologyTargeting"
              (\ o ->
                 TechnologyTargeting' <$>
                   (o .:? "deviceCategoryTargeting") <*>
                     (o .:? "operatingSystemTargeting")
                     <*> (o .:? "deviceCapabilityTargeting"))

instance ToJSON TechnologyTargeting where
        toJSON TechnologyTargeting'{..}
          = object
              (catMaybes
                 [("deviceCategoryTargeting" .=) <$>
                    _ttDeviceCategoryTargeting,
                  ("operatingSystemTargeting" .=) <$>
                    _ttOperatingSystemTargeting,
                  ("deviceCapabilityTargeting" .=) <$>
                    _ttDeviceCapabilityTargeting])

-- | Response message for profiles visible to the buyer.
--
-- /See:/ 'listPublisherProFilesResponse' smart constructor.
data ListPublisherProFilesResponse = ListPublisherProFilesResponse'
    { _lppfrNextPageToken     :: !(Maybe Text)
    , _lppfrPublisherProFiles :: !(Maybe [PublisherProFile])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListPublisherProFilesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lppfrNextPageToken'
--
-- * 'lppfrPublisherProFiles'
listPublisherProFilesResponse
    :: ListPublisherProFilesResponse
listPublisherProFilesResponse =
    ListPublisherProFilesResponse'
    { _lppfrNextPageToken = Nothing
    , _lppfrPublisherProFiles = Nothing
    }

-- | List pagination support
lppfrNextPageToken :: Lens' ListPublisherProFilesResponse (Maybe Text)
lppfrNextPageToken
  = lens _lppfrNextPageToken
      (\ s a -> s{_lppfrNextPageToken = a})

-- | The list of matching publisher profiles.
lppfrPublisherProFiles :: Lens' ListPublisherProFilesResponse [PublisherProFile]
lppfrPublisherProFiles
  = lens _lppfrPublisherProFiles
      (\ s a -> s{_lppfrPublisherProFiles = a})
      . _Default
      . _Coerce

instance FromJSON ListPublisherProFilesResponse where
        parseJSON
          = withObject "ListPublisherProFilesResponse"
              (\ o ->
                 ListPublisherProFilesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "publisherProfiles" .!= mempty))

instance ToJSON ListPublisherProFilesResponse where
        toJSON ListPublisherProFilesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lppfrNextPageToken,
                  ("publisherProfiles" .=) <$>
                    _lppfrPublisherProFiles])

-- | Terms for Private Auctions. Note that Private Auctions can be created
-- only by the seller, but they can be returned in a get or list request.
--
-- /See:/ 'nonGuaranteedAuctionTerms' smart constructor.
data NonGuaranteedAuctionTerms = NonGuaranteedAuctionTerms'
    { _ngatReservePricesPerBuyer      :: !(Maybe [PricePerBuyer])
    , _ngatAutoOptimizePrivateAuction :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NonGuaranteedAuctionTerms' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ngatReservePricesPerBuyer'
--
-- * 'ngatAutoOptimizePrivateAuction'
nonGuaranteedAuctionTerms
    :: NonGuaranteedAuctionTerms
nonGuaranteedAuctionTerms =
    NonGuaranteedAuctionTerms'
    { _ngatReservePricesPerBuyer = Nothing
    , _ngatAutoOptimizePrivateAuction = Nothing
    }

-- | Reserve price for the specified buyer.
ngatReservePricesPerBuyer :: Lens' NonGuaranteedAuctionTerms [PricePerBuyer]
ngatReservePricesPerBuyer
  = lens _ngatReservePricesPerBuyer
      (\ s a -> s{_ngatReservePricesPerBuyer = a})
      . _Default
      . _Coerce

-- | True if open auction buyers are allowed to compete with invited buyers
-- in this private auction.
ngatAutoOptimizePrivateAuction :: Lens' NonGuaranteedAuctionTerms (Maybe Bool)
ngatAutoOptimizePrivateAuction
  = lens _ngatAutoOptimizePrivateAuction
      (\ s a -> s{_ngatAutoOptimizePrivateAuction = a})

instance FromJSON NonGuaranteedAuctionTerms where
        parseJSON
          = withObject "NonGuaranteedAuctionTerms"
              (\ o ->
                 NonGuaranteedAuctionTerms' <$>
                   (o .:? "reservePricesPerBuyer" .!= mempty) <*>
                     (o .:? "autoOptimizePrivateAuction"))

instance ToJSON NonGuaranteedAuctionTerms where
        toJSON NonGuaranteedAuctionTerms'{..}
          = object
              (catMaybes
                 [("reservePricesPerBuyer" .=) <$>
                    _ngatReservePricesPerBuyer,
                  ("autoOptimizePrivateAuction" .=) <$>
                    _ngatAutoOptimizePrivateAuction])

--
-- /See:/ 'listClientUsersResponse' smart constructor.
data ListClientUsersResponse = ListClientUsersResponse'
    { _lcurNextPageToken :: !(Maybe Text)
    , _lcurUsers         :: !(Maybe [ClientUser])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListClientUsersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcurNextPageToken'
--
-- * 'lcurUsers'
listClientUsersResponse
    :: ListClientUsersResponse
listClientUsersResponse =
    ListClientUsersResponse'
    { _lcurNextPageToken = Nothing
    , _lcurUsers = Nothing
    }

-- | A token to retrieve the next page of results. Pass this value in the
-- ListClientUsersRequest.pageToken field in the subsequent call to the
-- clients.invitations.list method to retrieve the next page of results.
lcurNextPageToken :: Lens' ListClientUsersResponse (Maybe Text)
lcurNextPageToken
  = lens _lcurNextPageToken
      (\ s a -> s{_lcurNextPageToken = a})

-- | The returned list of client users.
lcurUsers :: Lens' ListClientUsersResponse [ClientUser]
lcurUsers
  = lens _lcurUsers (\ s a -> s{_lcurUsers = a}) .
      _Default
      . _Coerce

instance FromJSON ListClientUsersResponse where
        parseJSON
          = withObject "ListClientUsersResponse"
              (\ o ->
                 ListClientUsersResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "users" .!= mempty))

instance ToJSON ListClientUsersResponse where
        toJSON ListClientUsersResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lcurNextPageToken,
                  ("users" .=) <$> _lcurUsers])

-- | The set of metrics that are measured in numbers of bids, representing
-- how many bids with the specified dimension values were considered
-- eligible at each stage of the bidding funnel;
--
-- /See:/ 'bidMetricsRow' smart constructor.
data BidMetricsRow = BidMetricsRow'
    { _bmrBids                  :: !(Maybe MetricValue)
    , _bmrBidsInAuction         :: !(Maybe MetricValue)
    , _bmrImpressionsWon        :: !(Maybe MetricValue)
    , _bmrRowDimensions         :: !(Maybe RowDimensions)
    , _bmrMeasurableImpressions :: !(Maybe MetricValue)
    , _bmrViewableImpressions   :: !(Maybe MetricValue)
    , _bmrBilledImpressions     :: !(Maybe MetricValue)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BidMetricsRow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bmrBids'
--
-- * 'bmrBidsInAuction'
--
-- * 'bmrImpressionsWon'
--
-- * 'bmrRowDimensions'
--
-- * 'bmrMeasurableImpressions'
--
-- * 'bmrViewableImpressions'
--
-- * 'bmrBilledImpressions'
bidMetricsRow
    :: BidMetricsRow
bidMetricsRow =
    BidMetricsRow'
    { _bmrBids = Nothing
    , _bmrBidsInAuction = Nothing
    , _bmrImpressionsWon = Nothing
    , _bmrRowDimensions = Nothing
    , _bmrMeasurableImpressions = Nothing
    , _bmrViewableImpressions = Nothing
    , _bmrBilledImpressions = Nothing
    }

-- | The number of bids that Ad Exchange received from the buyer.
bmrBids :: Lens' BidMetricsRow (Maybe MetricValue)
bmrBids = lens _bmrBids (\ s a -> s{_bmrBids = a})

-- | The number of bids that were permitted to compete in the auction.
bmrBidsInAuction :: Lens' BidMetricsRow (Maybe MetricValue)
bmrBidsInAuction
  = lens _bmrBidsInAuction
      (\ s a -> s{_bmrBidsInAuction = a})

-- | The number of bids that won an impression.
bmrImpressionsWon :: Lens' BidMetricsRow (Maybe MetricValue)
bmrImpressionsWon
  = lens _bmrImpressionsWon
      (\ s a -> s{_bmrImpressionsWon = a})

-- | The values of all dimensions associated with metric values in this row.
bmrRowDimensions :: Lens' BidMetricsRow (Maybe RowDimensions)
bmrRowDimensions
  = lens _bmrRowDimensions
      (\ s a -> s{_bmrRowDimensions = a})

-- | The number of bids for which the corresponding impression was measurable
-- for viewability (as defined by Active View).
bmrMeasurableImpressions :: Lens' BidMetricsRow (Maybe MetricValue)
bmrMeasurableImpressions
  = lens _bmrMeasurableImpressions
      (\ s a -> s{_bmrMeasurableImpressions = a})

-- | The number of bids for which the corresponding impression was viewable
-- (as defined by Active View).
bmrViewableImpressions :: Lens' BidMetricsRow (Maybe MetricValue)
bmrViewableImpressions
  = lens _bmrViewableImpressions
      (\ s a -> s{_bmrViewableImpressions = a})

-- | The number of bids for which the buyer was billed.
bmrBilledImpressions :: Lens' BidMetricsRow (Maybe MetricValue)
bmrBilledImpressions
  = lens _bmrBilledImpressions
      (\ s a -> s{_bmrBilledImpressions = a})

instance FromJSON BidMetricsRow where
        parseJSON
          = withObject "BidMetricsRow"
              (\ o ->
                 BidMetricsRow' <$>
                   (o .:? "bids") <*> (o .:? "bidsInAuction") <*>
                     (o .:? "impressionsWon")
                     <*> (o .:? "rowDimensions")
                     <*> (o .:? "measurableImpressions")
                     <*> (o .:? "viewableImpressions")
                     <*> (o .:? "billedImpressions"))

instance ToJSON BidMetricsRow where
        toJSON BidMetricsRow'{..}
          = object
              (catMaybes
                 [("bids" .=) <$> _bmrBids,
                  ("bidsInAuction" .=) <$> _bmrBidsInAuction,
                  ("impressionsWon" .=) <$> _bmrImpressionsWon,
                  ("rowDimensions" .=) <$> _bmrRowDimensions,
                  ("measurableImpressions" .=) <$>
                    _bmrMeasurableImpressions,
                  ("viewableImpressions" .=) <$>
                    _bmrViewableImpressions,
                  ("billedImpressions" .=) <$> _bmrBilledImpressions])

-- | Specifies the day part targeting criteria.
--
-- /See:/ 'dayPartTargeting' smart constructor.
data DayPartTargeting = DayPartTargeting'
    { _dptTimeZoneType :: !(Maybe DayPartTargetingTimeZoneType)
    , _dptDayParts     :: !(Maybe [DayPart])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DayPartTargeting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dptTimeZoneType'
--
-- * 'dptDayParts'
dayPartTargeting
    :: DayPartTargeting
dayPartTargeting =
    DayPartTargeting'
    { _dptTimeZoneType = Nothing
    , _dptDayParts = Nothing
    }

-- | The timezone to use for interpreting the day part targeting.
dptTimeZoneType :: Lens' DayPartTargeting (Maybe DayPartTargetingTimeZoneType)
dptTimeZoneType
  = lens _dptTimeZoneType
      (\ s a -> s{_dptTimeZoneType = a})

-- | A list of day part targeting criterion.
dptDayParts :: Lens' DayPartTargeting [DayPart]
dptDayParts
  = lens _dptDayParts (\ s a -> s{_dptDayParts = a}) .
      _Default
      . _Coerce

instance FromJSON DayPartTargeting where
        parseJSON
          = withObject "DayPartTargeting"
              (\ o ->
                 DayPartTargeting' <$>
                   (o .:? "timeZoneType") <*>
                     (o .:? "dayParts" .!= mempty))

instance ToJSON DayPartTargeting where
        toJSON DayPartTargeting'{..}
          = object
              (catMaybes
                 [("timeZoneType" .=) <$> _dptTimeZoneType,
                  ("dayParts" .=) <$> _dptDayParts])

-- | Generic targeting used for targeting dimensions that contains a list of
-- included and excluded numeric IDs.
--
-- /See:/ 'criteriaTargeting' smart constructor.
data CriteriaTargeting = CriteriaTargeting'
    { _ctExcludedCriteriaIds :: !(Maybe [Textual Int64])
    , _ctTargetedCriteriaIds :: !(Maybe [Textual Int64])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CriteriaTargeting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctExcludedCriteriaIds'
--
-- * 'ctTargetedCriteriaIds'
criteriaTargeting
    :: CriteriaTargeting
criteriaTargeting =
    CriteriaTargeting'
    { _ctExcludedCriteriaIds = Nothing
    , _ctTargetedCriteriaIds = Nothing
    }

-- | A list of numeric IDs to be excluded.
ctExcludedCriteriaIds :: Lens' CriteriaTargeting [Int64]
ctExcludedCriteriaIds
  = lens _ctExcludedCriteriaIds
      (\ s a -> s{_ctExcludedCriteriaIds = a})
      . _Default
      . _Coerce

-- | A list of numeric IDs to be included.
ctTargetedCriteriaIds :: Lens' CriteriaTargeting [Int64]
ctTargetedCriteriaIds
  = lens _ctTargetedCriteriaIds
      (\ s a -> s{_ctTargetedCriteriaIds = a})
      . _Default
      . _Coerce

instance FromJSON CriteriaTargeting where
        parseJSON
          = withObject "CriteriaTargeting"
              (\ o ->
                 CriteriaTargeting' <$>
                   (o .:? "excludedCriteriaIds" .!= mempty) <*>
                     (o .:? "targetedCriteriaIds" .!= mempty))

instance ToJSON CriteriaTargeting where
        toJSON CriteriaTargeting'{..}
          = object
              (catMaybes
                 [("excludedCriteriaIds" .=) <$>
                    _ctExcludedCriteriaIds,
                  ("targetedCriteriaIds" .=) <$>
                    _ctTargetedCriteriaIds])

-- | Tracks which parties (if any) have paused a deal. The deal is considered
-- paused if either hasBuyerPaused or hasSellPaused is true.
--
-- /See:/ 'dealPauseStatus' smart constructor.
data DealPauseStatus = DealPauseStatus'
    { _dpsFirstPausedBy     :: !(Maybe DealPauseStatusFirstPausedBy)
    , _dpsBuyerPauseReason  :: !(Maybe Text)
    , _dpsHasBuyerPaused    :: !(Maybe Bool)
    , _dpsSellerPauseReason :: !(Maybe Text)
    , _dpsHasSellerPaused   :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DealPauseStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpsFirstPausedBy'
--
-- * 'dpsBuyerPauseReason'
--
-- * 'dpsHasBuyerPaused'
--
-- * 'dpsSellerPauseReason'
--
-- * 'dpsHasSellerPaused'
dealPauseStatus
    :: DealPauseStatus
dealPauseStatus =
    DealPauseStatus'
    { _dpsFirstPausedBy = Nothing
    , _dpsBuyerPauseReason = Nothing
    , _dpsHasBuyerPaused = Nothing
    , _dpsSellerPauseReason = Nothing
    , _dpsHasSellerPaused = Nothing
    }

-- | The role of the person who first paused this deal.
dpsFirstPausedBy :: Lens' DealPauseStatus (Maybe DealPauseStatusFirstPausedBy)
dpsFirstPausedBy
  = lens _dpsFirstPausedBy
      (\ s a -> s{_dpsFirstPausedBy = a})

-- | The buyer\'s reason for pausing, if the buyer paused the deal.
dpsBuyerPauseReason :: Lens' DealPauseStatus (Maybe Text)
dpsBuyerPauseReason
  = lens _dpsBuyerPauseReason
      (\ s a -> s{_dpsBuyerPauseReason = a})

-- | True, if the buyer has paused the deal unilaterally.
dpsHasBuyerPaused :: Lens' DealPauseStatus (Maybe Bool)
dpsHasBuyerPaused
  = lens _dpsHasBuyerPaused
      (\ s a -> s{_dpsHasBuyerPaused = a})

-- | The seller\'s reason for pausing, if the seller paused the deal.
dpsSellerPauseReason :: Lens' DealPauseStatus (Maybe Text)
dpsSellerPauseReason
  = lens _dpsSellerPauseReason
      (\ s a -> s{_dpsSellerPauseReason = a})

-- | True, if the seller has paused the deal unilaterally.
dpsHasSellerPaused :: Lens' DealPauseStatus (Maybe Bool)
dpsHasSellerPaused
  = lens _dpsHasSellerPaused
      (\ s a -> s{_dpsHasSellerPaused = a})

instance FromJSON DealPauseStatus where
        parseJSON
          = withObject "DealPauseStatus"
              (\ o ->
                 DealPauseStatus' <$>
                   (o .:? "firstPausedBy") <*>
                     (o .:? "buyerPauseReason")
                     <*> (o .:? "hasBuyerPaused")
                     <*> (o .:? "sellerPauseReason")
                     <*> (o .:? "hasSellerPaused"))

instance ToJSON DealPauseStatus where
        toJSON DealPauseStatus'{..}
          = object
              (catMaybes
                 [("firstPausedBy" .=) <$> _dpsFirstPausedBy,
                  ("buyerPauseReason" .=) <$> _dpsBuyerPauseReason,
                  ("hasBuyerPaused" .=) <$> _dpsHasBuyerPaused,
                  ("sellerPauseReason" .=) <$> _dpsSellerPauseReason,
                  ("hasSellerPaused" .=) <$> _dpsHasSellerPaused])

-- | The number of filtered bids with the specified dimension values, among
-- those filtered due to the requested filtering reason (i.e. creative
-- status), that have the specified detail.
--
-- /See:/ 'filteredBidDetailRow' smart constructor.
data FilteredBidDetailRow = FilteredBidDetailRow'
    { _fbdrDetailId      :: !(Maybe (Textual Int32))
    , _fbdrRowDimensions :: !(Maybe RowDimensions)
    , _fbdrBidCount      :: !(Maybe MetricValue)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilteredBidDetailRow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fbdrDetailId'
--
-- * 'fbdrRowDimensions'
--
-- * 'fbdrBidCount'
filteredBidDetailRow
    :: FilteredBidDetailRow
filteredBidDetailRow =
    FilteredBidDetailRow'
    { _fbdrDetailId = Nothing
    , _fbdrRowDimensions = Nothing
    , _fbdrBidCount = Nothing
    }

-- | The ID of the detail. The associated value can be looked up in the
-- dictionary file corresponding to the DetailType in the response message.
fbdrDetailId :: Lens' FilteredBidDetailRow (Maybe Int32)
fbdrDetailId
  = lens _fbdrDetailId (\ s a -> s{_fbdrDetailId = a})
      . mapping _Coerce

-- | The values of all dimensions associated with metric values in this row.
fbdrRowDimensions :: Lens' FilteredBidDetailRow (Maybe RowDimensions)
fbdrRowDimensions
  = lens _fbdrRowDimensions
      (\ s a -> s{_fbdrRowDimensions = a})

-- | The number of bids with the specified detail.
fbdrBidCount :: Lens' FilteredBidDetailRow (Maybe MetricValue)
fbdrBidCount
  = lens _fbdrBidCount (\ s a -> s{_fbdrBidCount = a})

instance FromJSON FilteredBidDetailRow where
        parseJSON
          = withObject "FilteredBidDetailRow"
              (\ o ->
                 FilteredBidDetailRow' <$>
                   (o .:? "detailId") <*> (o .:? "rowDimensions") <*>
                     (o .:? "bidCount"))

instance ToJSON FilteredBidDetailRow where
        toJSON FilteredBidDetailRow'{..}
          = object
              (catMaybes
                 [("detailId" .=) <$> _fbdrDetailId,
                  ("rowDimensions" .=) <$> _fbdrRowDimensions,
                  ("bidCount" .=) <$> _fbdrBidCount])

-- | Buyers are allowed to store certain types of private data in a
-- proposal\/deal.
--
-- /See:/ 'privateData' smart constructor.
newtype PrivateData = PrivateData'
    { _pdReferenceId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PrivateData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdReferenceId'
privateData
    :: PrivateData
privateData =
    PrivateData'
    { _pdReferenceId = Nothing
    }

-- | A buyer or seller specified reference ID. This can be queried in the
-- list operations (max-length: 1024 unicode code units).
pdReferenceId :: Lens' PrivateData (Maybe Text)
pdReferenceId
  = lens _pdReferenceId
      (\ s a -> s{_pdReferenceId = a})

instance FromJSON PrivateData where
        parseJSON
          = withObject "PrivateData"
              (\ o -> PrivateData' <$> (o .:? "referenceId"))

instance ToJSON PrivateData where
        toJSON PrivateData'{..}
          = object
              (catMaybes [("referenceId" .=) <$> _pdReferenceId])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
    Empty'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'

instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | The serving context for this restriction.
--
-- /See:/ 'servingContext' smart constructor.
data ServingContext = ServingContext'
    { _scPlatform     :: !(Maybe PlatformContext)
    , _scLocation     :: !(Maybe LocationContext)
    , _scSecurityType :: !(Maybe SecurityContext)
    , _scAll          :: !(Maybe ServingContextAll)
    , _scAuctionType  :: !(Maybe AuctionContext)
    , _scAppType      :: !(Maybe AppContext)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServingContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scPlatform'
--
-- * 'scLocation'
--
-- * 'scSecurityType'
--
-- * 'scAll'
--
-- * 'scAuctionType'
--
-- * 'scAppType'
servingContext
    :: ServingContext
servingContext =
    ServingContext'
    { _scPlatform = Nothing
    , _scLocation = Nothing
    , _scSecurityType = Nothing
    , _scAll = Nothing
    , _scAuctionType = Nothing
    , _scAppType = Nothing
    }

-- | Matches impressions coming from a particular platform.
scPlatform :: Lens' ServingContext (Maybe PlatformContext)
scPlatform
  = lens _scPlatform (\ s a -> s{_scPlatform = a})

-- | Matches impressions coming from users *or* publishers in a specific
-- location.
scLocation :: Lens' ServingContext (Maybe LocationContext)
scLocation
  = lens _scLocation (\ s a -> s{_scLocation = a})

-- | Matches impressions for a particular security type.
scSecurityType :: Lens' ServingContext (Maybe SecurityContext)
scSecurityType
  = lens _scSecurityType
      (\ s a -> s{_scSecurityType = a})

-- | Matches all contexts.
scAll :: Lens' ServingContext (Maybe ServingContextAll)
scAll = lens _scAll (\ s a -> s{_scAll = a})

-- | Matches impressions for a particular auction type.
scAuctionType :: Lens' ServingContext (Maybe AuctionContext)
scAuctionType
  = lens _scAuctionType
      (\ s a -> s{_scAuctionType = a})

-- | Matches impressions for a particular app type.
scAppType :: Lens' ServingContext (Maybe AppContext)
scAppType
  = lens _scAppType (\ s a -> s{_scAppType = a})

instance FromJSON ServingContext where
        parseJSON
          = withObject "ServingContext"
              (\ o ->
                 ServingContext' <$>
                   (o .:? "platform") <*> (o .:? "location") <*>
                     (o .:? "securityType")
                     <*> (o .:? "all")
                     <*> (o .:? "auctionType")
                     <*> (o .:? "appType"))

instance ToJSON ServingContext where
        toJSON ServingContext'{..}
          = object
              (catMaybes
                 [("platform" .=) <$> _scPlatform,
                  ("location" .=) <$> _scLocation,
                  ("securityType" .=) <$> _scSecurityType,
                  ("all" .=) <$> _scAll,
                  ("auctionType" .=) <$> _scAuctionType,
                  ("appType" .=) <$> _scAppType])

-- | Note: this resource requires whitelisting for access. Please contact
-- your account manager for access to Marketplace resources. Represents a
-- publisher profile in Marketplace. All fields are read only. All string
-- fields are free-form text entered by the publisher unless noted
-- otherwise.
--
-- /See:/ 'publisherProFile' smart constructor.
data PublisherProFile = PublisherProFile'
    { _ppfDirectDealsContact       :: !(Maybe Text)
    , _ppfAudienceDescription      :: !(Maybe Text)
    , _ppfLogoURL                  :: !(Maybe Text)
    , _ppfOverview                 :: !(Maybe Text)
    , _ppfSamplePageURL            :: !(Maybe Text)
    , _ppfSeller                   :: !(Maybe Seller)
    , _ppfMediaKitURL              :: !(Maybe Text)
    , _ppfBuyerPitchStatement      :: !(Maybe Text)
    , _ppfDisplayName              :: !(Maybe Text)
    , _ppfPublisherProFileId       :: !(Maybe Text)
    , _ppfGooglePlusURL            :: !(Maybe Text)
    , _ppfDomains                  :: !(Maybe [Text])
    , _ppfRateCardInfoURL          :: !(Maybe Text)
    , _ppfTopHeadlines             :: !(Maybe [Text])
    , _ppfProgrammaticDealsContact :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PublisherProFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppfDirectDealsContact'
--
-- * 'ppfAudienceDescription'
--
-- * 'ppfLogoURL'
--
-- * 'ppfOverview'
--
-- * 'ppfSamplePageURL'
--
-- * 'ppfSeller'
--
-- * 'ppfMediaKitURL'
--
-- * 'ppfBuyerPitchStatement'
--
-- * 'ppfDisplayName'
--
-- * 'ppfPublisherProFileId'
--
-- * 'ppfGooglePlusURL'
--
-- * 'ppfDomains'
--
-- * 'ppfRateCardInfoURL'
--
-- * 'ppfTopHeadlines'
--
-- * 'ppfProgrammaticDealsContact'
publisherProFile
    :: PublisherProFile
publisherProFile =
    PublisherProFile'
    { _ppfDirectDealsContact = Nothing
    , _ppfAudienceDescription = Nothing
    , _ppfLogoURL = Nothing
    , _ppfOverview = Nothing
    , _ppfSamplePageURL = Nothing
    , _ppfSeller = Nothing
    , _ppfMediaKitURL = Nothing
    , _ppfBuyerPitchStatement = Nothing
    , _ppfDisplayName = Nothing
    , _ppfPublisherProFileId = Nothing
    , _ppfGooglePlusURL = Nothing
    , _ppfDomains = Nothing
    , _ppfRateCardInfoURL = Nothing
    , _ppfTopHeadlines = Nothing
    , _ppfProgrammaticDealsContact = Nothing
    }

-- | Contact information for direct reservation deals. This is free text
-- entered by the publisher and may include information like names, phone
-- numbers and email addresses.
ppfDirectDealsContact :: Lens' PublisherProFile (Maybe Text)
ppfDirectDealsContact
  = lens _ppfDirectDealsContact
      (\ s a -> s{_ppfDirectDealsContact = a})

-- | Description on the publisher\'s audience.
ppfAudienceDescription :: Lens' PublisherProFile (Maybe Text)
ppfAudienceDescription
  = lens _ppfAudienceDescription
      (\ s a -> s{_ppfAudienceDescription = a})

-- | A Google public URL to the logo for this publisher profile. The logo is
-- stored as a PNG, JPG, or GIF image.
ppfLogoURL :: Lens' PublisherProFile (Maybe Text)
ppfLogoURL
  = lens _ppfLogoURL (\ s a -> s{_ppfLogoURL = a})

-- | Overview of the publisher.
ppfOverview :: Lens' PublisherProFile (Maybe Text)
ppfOverview
  = lens _ppfOverview (\ s a -> s{_ppfOverview = a})

-- | URL to a sample content page.
ppfSamplePageURL :: Lens' PublisherProFile (Maybe Text)
ppfSamplePageURL
  = lens _ppfSamplePageURL
      (\ s a -> s{_ppfSamplePageURL = a})

-- | Seller of the publisher profile.
ppfSeller :: Lens' PublisherProFile (Maybe Seller)
ppfSeller
  = lens _ppfSeller (\ s a -> s{_ppfSeller = a})

-- | URL to additional marketing and sales materials.
ppfMediaKitURL :: Lens' PublisherProFile (Maybe Text)
ppfMediaKitURL
  = lens _ppfMediaKitURL
      (\ s a -> s{_ppfMediaKitURL = a})

-- | Statement explaining what\'s unique about publisher\'s business, and why
-- buyers should partner with the publisher.
ppfBuyerPitchStatement :: Lens' PublisherProFile (Maybe Text)
ppfBuyerPitchStatement
  = lens _ppfBuyerPitchStatement
      (\ s a -> s{_ppfBuyerPitchStatement = a})

-- | Name of the publisher profile.
ppfDisplayName :: Lens' PublisherProFile (Maybe Text)
ppfDisplayName
  = lens _ppfDisplayName
      (\ s a -> s{_ppfDisplayName = a})

-- | Unique ID for publisher profile.
ppfPublisherProFileId :: Lens' PublisherProFile (Maybe Text)
ppfPublisherProFileId
  = lens _ppfPublisherProFileId
      (\ s a -> s{_ppfPublisherProFileId = a})

-- | URL to publisher\'s Google+ page.
ppfGooglePlusURL :: Lens' PublisherProFile (Maybe Text)
ppfGooglePlusURL
  = lens _ppfGooglePlusURL
      (\ s a -> s{_ppfGooglePlusURL = a})

-- | The list of domains represented in this publisher profile. Empty if this
-- is a parent profile. These are top private domains, meaning that these
-- will not contain a string like \"photos.google.co.uk\/123\", but will
-- instead contain \"google.co.uk\".
ppfDomains :: Lens' PublisherProFile [Text]
ppfDomains
  = lens _ppfDomains (\ s a -> s{_ppfDomains = a}) .
      _Default
      . _Coerce

-- | URL to a publisher rate card.
ppfRateCardInfoURL :: Lens' PublisherProFile (Maybe Text)
ppfRateCardInfoURL
  = lens _ppfRateCardInfoURL
      (\ s a -> s{_ppfRateCardInfoURL = a})

-- | Up to three key metrics and rankings. Max 100 characters each. For
-- example \"#1 Mobile News Site for 20 Straight Months\".
ppfTopHeadlines :: Lens' PublisherProFile [Text]
ppfTopHeadlines
  = lens _ppfTopHeadlines
      (\ s a -> s{_ppfTopHeadlines = a})
      . _Default
      . _Coerce

-- | Contact information for programmatic deals. This is free text entered by
-- the publisher and may include information like names, phone numbers and
-- email addresses.
ppfProgrammaticDealsContact :: Lens' PublisherProFile (Maybe Text)
ppfProgrammaticDealsContact
  = lens _ppfProgrammaticDealsContact
      (\ s a -> s{_ppfProgrammaticDealsContact = a})

instance FromJSON PublisherProFile where
        parseJSON
          = withObject "PublisherProFile"
              (\ o ->
                 PublisherProFile' <$>
                   (o .:? "directDealsContact") <*>
                     (o .:? "audienceDescription")
                     <*> (o .:? "logoUrl")
                     <*> (o .:? "overview")
                     <*> (o .:? "samplePageUrl")
                     <*> (o .:? "seller")
                     <*> (o .:? "mediaKitUrl")
                     <*> (o .:? "buyerPitchStatement")
                     <*> (o .:? "displayName")
                     <*> (o .:? "publisherProfileId")
                     <*> (o .:? "googlePlusUrl")
                     <*> (o .:? "domains" .!= mempty)
                     <*> (o .:? "rateCardInfoUrl")
                     <*> (o .:? "topHeadlines" .!= mempty)
                     <*> (o .:? "programmaticDealsContact"))

instance ToJSON PublisherProFile where
        toJSON PublisherProFile'{..}
          = object
              (catMaybes
                 [("directDealsContact" .=) <$>
                    _ppfDirectDealsContact,
                  ("audienceDescription" .=) <$>
                    _ppfAudienceDescription,
                  ("logoUrl" .=) <$> _ppfLogoURL,
                  ("overview" .=) <$> _ppfOverview,
                  ("samplePageUrl" .=) <$> _ppfSamplePageURL,
                  ("seller" .=) <$> _ppfSeller,
                  ("mediaKitUrl" .=) <$> _ppfMediaKitURL,
                  ("buyerPitchStatement" .=) <$>
                    _ppfBuyerPitchStatement,
                  ("displayName" .=) <$> _ppfDisplayName,
                  ("publisherProfileId" .=) <$> _ppfPublisherProFileId,
                  ("googlePlusUrl" .=) <$> _ppfGooglePlusURL,
                  ("domains" .=) <$> _ppfDomains,
                  ("rateCardInfoUrl" .=) <$> _ppfRateCardInfoURL,
                  ("topHeadlines" .=) <$> _ppfTopHeadlines,
                  ("programmaticDealsContact" .=) <$>
                    _ppfProgrammaticDealsContact])

-- | Request to accept a proposal.
--
-- /See:/ 'acceptProposalRequest' smart constructor.
newtype AcceptProposalRequest = AcceptProposalRequest'
    { _aprProposalRevision :: Maybe (Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AcceptProposalRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aprProposalRevision'
acceptProposalRequest
    :: AcceptProposalRequest
acceptProposalRequest =
    AcceptProposalRequest'
    { _aprProposalRevision = Nothing
    }

-- | The last known client revision number of the proposal.
aprProposalRevision :: Lens' AcceptProposalRequest (Maybe Int64)
aprProposalRevision
  = lens _aprProposalRevision
      (\ s a -> s{_aprProposalRevision = a})
      . mapping _Coerce

instance FromJSON AcceptProposalRequest where
        parseJSON
          = withObject "AcceptProposalRequest"
              (\ o ->
                 AcceptProposalRequest' <$>
                   (o .:? "proposalRevision"))

instance ToJSON AcceptProposalRequest where
        toJSON AcceptProposalRequest'{..}
          = object
              (catMaybes
                 [("proposalRevision" .=) <$> _aprProposalRevision])

-- | Message depicting the size of the creative. The units of width and
-- height depend on the type of the targeting.
--
-- /See:/ 'size' smart constructor.
data Size = Size'
    { _sHeight :: !(Maybe (Textual Int32))
    , _sWidth  :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Size' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sHeight'
--
-- * 'sWidth'
size
    :: Size
size =
    Size'
    { _sHeight = Nothing
    , _sWidth = Nothing
    }

-- | The height of the creative.
sHeight :: Lens' Size (Maybe Int32)
sHeight
  = lens _sHeight (\ s a -> s{_sHeight = a}) .
      mapping _Coerce

-- | The width of the creative
sWidth :: Lens' Size (Maybe Int32)
sWidth
  = lens _sWidth (\ s a -> s{_sWidth = a}) .
      mapping _Coerce

instance FromJSON Size where
        parseJSON
          = withObject "Size"
              (\ o ->
                 Size' <$> (o .:? "height") <*> (o .:? "width"))

instance ToJSON Size where
        toJSON Size'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _sHeight,
                  ("width" .=) <$> _sWidth])

-- | Response message for listing all reasons that bid requests were filtered
-- and not sent to the buyer.
--
-- /See:/ 'listFilteredBidRequestsResponse' smart constructor.
data ListFilteredBidRequestsResponse = ListFilteredBidRequestsResponse'
    { _lfbrrNextPageToken     :: !(Maybe Text)
    , _lfbrrCalloutStatusRows :: !(Maybe [CalloutStatusRow])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListFilteredBidRequestsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfbrrNextPageToken'
--
-- * 'lfbrrCalloutStatusRows'
listFilteredBidRequestsResponse
    :: ListFilteredBidRequestsResponse
listFilteredBidRequestsResponse =
    ListFilteredBidRequestsResponse'
    { _lfbrrNextPageToken = Nothing
    , _lfbrrCalloutStatusRows = Nothing
    }

-- | A token to retrieve the next page of results. Pass this value in the
-- ListFilteredBidRequestsRequest.pageToken field in the subsequent call to
-- the filteredBidRequests.list method to retrieve the next page of
-- results.
lfbrrNextPageToken :: Lens' ListFilteredBidRequestsResponse (Maybe Text)
lfbrrNextPageToken
  = lens _lfbrrNextPageToken
      (\ s a -> s{_lfbrrNextPageToken = a})

-- | List of rows, with counts of filtered bid requests aggregated by callout
-- status.
lfbrrCalloutStatusRows :: Lens' ListFilteredBidRequestsResponse [CalloutStatusRow]
lfbrrCalloutStatusRows
  = lens _lfbrrCalloutStatusRows
      (\ s a -> s{_lfbrrCalloutStatusRows = a})
      . _Default
      . _Coerce

instance FromJSON ListFilteredBidRequestsResponse
         where
        parseJSON
          = withObject "ListFilteredBidRequestsResponse"
              (\ o ->
                 ListFilteredBidRequestsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "calloutStatusRows" .!= mempty))

instance ToJSON ListFilteredBidRequestsResponse where
        toJSON ListFilteredBidRequestsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lfbrrNextPageToken,
                  ("calloutStatusRows" .=) <$>
                    _lfbrrCalloutStatusRows])

-- | A request for associating a deal and a creative.
--
-- /See:/ 'addDealAssociationRequest' smart constructor.
newtype AddDealAssociationRequest = AddDealAssociationRequest'
    { _adarAssociation :: Maybe CreativeDealAssociation
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddDealAssociationRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adarAssociation'
addDealAssociationRequest
    :: AddDealAssociationRequest
addDealAssociationRequest =
    AddDealAssociationRequest'
    { _adarAssociation = Nothing
    }

-- | The association between a creative and a deal that should be added.
adarAssociation :: Lens' AddDealAssociationRequest (Maybe CreativeDealAssociation)
adarAssociation
  = lens _adarAssociation
      (\ s a -> s{_adarAssociation = a})

instance FromJSON AddDealAssociationRequest where
        parseJSON
          = withObject "AddDealAssociationRequest"
              (\ o ->
                 AddDealAssociationRequest' <$> (o .:? "association"))

instance ToJSON AddDealAssociationRequest where
        toJSON AddDealAssociationRequest'{..}
          = object
              (catMaybes [("association" .=) <$> _adarAssociation])

-- | The number of bids with the specified dimension values that did not win
-- the auction (either were filtered pre-auction or lost the auction), as
-- described by the specified creative status.
--
-- /See:/ 'creativeStatusRow' smart constructor.
data CreativeStatusRow = CreativeStatusRow'
    { _csrRowDimensions    :: !(Maybe RowDimensions)
    , _csrBidCount         :: !(Maybe MetricValue)
    , _csrCreativeStatusId :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeStatusRow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csrRowDimensions'
--
-- * 'csrBidCount'
--
-- * 'csrCreativeStatusId'
creativeStatusRow
    :: CreativeStatusRow
creativeStatusRow =
    CreativeStatusRow'
    { _csrRowDimensions = Nothing
    , _csrBidCount = Nothing
    , _csrCreativeStatusId = Nothing
    }

-- | The values of all dimensions associated with metric values in this row.
csrRowDimensions :: Lens' CreativeStatusRow (Maybe RowDimensions)
csrRowDimensions
  = lens _csrRowDimensions
      (\ s a -> s{_csrRowDimensions = a})

-- | The number of bids with the specified status.
csrBidCount :: Lens' CreativeStatusRow (Maybe MetricValue)
csrBidCount
  = lens _csrBidCount (\ s a -> s{_csrBidCount = a})

-- | The ID of the creative status. See
-- [creative-status-codes](https:\/\/developers.google.com\/authorized-buyers\/rtb\/downloads\/creative-status-codes).
csrCreativeStatusId :: Lens' CreativeStatusRow (Maybe Int32)
csrCreativeStatusId
  = lens _csrCreativeStatusId
      (\ s a -> s{_csrCreativeStatusId = a})
      . mapping _Coerce

instance FromJSON CreativeStatusRow where
        parseJSON
          = withObject "CreativeStatusRow"
              (\ o ->
                 CreativeStatusRow' <$>
                   (o .:? "rowDimensions") <*> (o .:? "bidCount") <*>
                     (o .:? "creativeStatusId"))

instance ToJSON CreativeStatusRow where
        toJSON CreativeStatusRow'{..}
          = object
              (catMaybes
                 [("rowDimensions" .=) <$> _csrRowDimensions,
                  ("bidCount" .=) <$> _csrBidCount,
                  ("creativeStatusId" .=) <$> _csrCreativeStatusId])

-- | An open-ended realtime time range specified by the start timestamp. For
-- filter sets that specify a realtime time range RTB metrics continue to
-- be aggregated throughout the lifetime of the filter set.
--
-- /See:/ 'realtimeTimeRange' smart constructor.
newtype RealtimeTimeRange = RealtimeTimeRange'
    { _rtrStartTimestamp :: Maybe DateTime'
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RealtimeTimeRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtrStartTimestamp'
realtimeTimeRange
    :: RealtimeTimeRange
realtimeTimeRange =
    RealtimeTimeRange'
    { _rtrStartTimestamp = Nothing
    }

-- | The start timestamp of the real-time RTB metrics aggregation.
rtrStartTimestamp :: Lens' RealtimeTimeRange (Maybe UTCTime)
rtrStartTimestamp
  = lens _rtrStartTimestamp
      (\ s a -> s{_rtrStartTimestamp = a})
      . mapping _DateTime

instance FromJSON RealtimeTimeRange where
        parseJSON
          = withObject "RealtimeTimeRange"
              (\ o ->
                 RealtimeTimeRange' <$> (o .:? "startTimestamp"))

instance ToJSON RealtimeTimeRange where
        toJSON RealtimeTimeRange'{..}
          = object
              (catMaybes
                 [("startTimestamp" .=) <$> _rtrStartTimestamp])

-- | A proposal may be associated to several notes.
--
-- /See:/ 'note' smart constructor.
data Note = Note'
    { _nProposalRevision :: !(Maybe (Textual Int64))
    , _nNote             :: !(Maybe Text)
    , _nNoteId           :: !(Maybe Text)
    , _nCreatorRole      :: !(Maybe NoteCreatorRole)
    , _nCreateTime       :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Note' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nProposalRevision'
--
-- * 'nNote'
--
-- * 'nNoteId'
--
-- * 'nCreatorRole'
--
-- * 'nCreateTime'
note
    :: Note
note =
    Note'
    { _nProposalRevision = Nothing
    , _nNote = Nothing
    , _nNoteId = Nothing
    , _nCreatorRole = Nothing
    , _nCreateTime = Nothing
    }

-- | The revision number of the proposal when the note is created.
-- \'OutputOnly
nProposalRevision :: Lens' Note (Maybe Int64)
nProposalRevision
  = lens _nProposalRevision
      (\ s a -> s{_nProposalRevision = a})
      . mapping _Coerce

-- | The actual note to attach. (max-length: 1024 unicode code units) Note:
-- This field may be set only when creating the resource. Modifying this
-- field while updating the resource will result in an error.
nNote :: Lens' Note (Maybe Text)
nNote = lens _nNote (\ s a -> s{_nNote = a})

-- | The unique ID for the note. \'OutputOnly
nNoteId :: Lens' Note (Maybe Text)
nNoteId = lens _nNoteId (\ s a -> s{_nNoteId = a})

-- | The role of the person (buyer\/seller) creating the note. \'OutputOnly
nCreatorRole :: Lens' Note (Maybe NoteCreatorRole)
nCreatorRole
  = lens _nCreatorRole (\ s a -> s{_nCreatorRole = a})

-- | The timestamp for when this note was created. \'OutputOnly
nCreateTime :: Lens' Note (Maybe UTCTime)
nCreateTime
  = lens _nCreateTime (\ s a -> s{_nCreateTime = a}) .
      mapping _DateTime

instance FromJSON Note where
        parseJSON
          = withObject "Note"
              (\ o ->
                 Note' <$>
                   (o .:? "proposalRevision") <*> (o .:? "note") <*>
                     (o .:? "noteId")
                     <*> (o .:? "creatorRole")
                     <*> (o .:? "createTime"))

instance ToJSON Note where
        toJSON Note'{..}
          = object
              (catMaybes
                 [("proposalRevision" .=) <$> _nProposalRevision,
                  ("note" .=) <$> _nNote, ("noteId" .=) <$> _nNoteId,
                  ("creatorRole" .=) <$> _nCreatorRole,
                  ("createTime" .=) <$> _nCreateTime])

-- | Response message for listing filter sets.
--
-- /See:/ 'listFilterSetsResponse' smart constructor.
data ListFilterSetsResponse = ListFilterSetsResponse'
    { _lfsrNextPageToken :: !(Maybe Text)
    , _lfsrFilterSets    :: !(Maybe [FilterSet])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListFilterSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfsrNextPageToken'
--
-- * 'lfsrFilterSets'
listFilterSetsResponse
    :: ListFilterSetsResponse
listFilterSetsResponse =
    ListFilterSetsResponse'
    { _lfsrNextPageToken = Nothing
    , _lfsrFilterSets = Nothing
    }

-- | A token to retrieve the next page of results. Pass this value in the
-- ListFilterSetsRequest.pageToken field in the subsequent call to the
-- accounts.filterSets.list method to retrieve the next page of results.
lfsrNextPageToken :: Lens' ListFilterSetsResponse (Maybe Text)
lfsrNextPageToken
  = lens _lfsrNextPageToken
      (\ s a -> s{_lfsrNextPageToken = a})

-- | The filter sets belonging to the buyer.
lfsrFilterSets :: Lens' ListFilterSetsResponse [FilterSet]
lfsrFilterSets
  = lens _lfsrFilterSets
      (\ s a -> s{_lfsrFilterSets = a})
      . _Default
      . _Coerce

instance FromJSON ListFilterSetsResponse where
        parseJSON
          = withObject "ListFilterSetsResponse"
              (\ o ->
                 ListFilterSetsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "filterSets" .!= mempty))

instance ToJSON ListFilterSetsResponse where
        toJSON ListFilterSetsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lfsrNextPageToken,
                  ("filterSets" .=) <$> _lfsrFilterSets])

-- | Represents an amount of money with its currency type.
--
-- /See:/ 'money' smart constructor.
data Money = Money'
    { _mCurrencyCode :: !(Maybe Text)
    , _mNanos        :: !(Maybe (Textual Int32))
    , _mUnits        :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Money' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mCurrencyCode'
--
-- * 'mNanos'
--
-- * 'mUnits'
money
    :: Money
money =
    Money'
    { _mCurrencyCode = Nothing
    , _mNanos = Nothing
    , _mUnits = Nothing
    }

-- | The 3-letter currency code defined in ISO 4217.
mCurrencyCode :: Lens' Money (Maybe Text)
mCurrencyCode
  = lens _mCurrencyCode
      (\ s a -> s{_mCurrencyCode = a})

-- | Number of nano (10^-9) units of the amount. The value must be between
-- -999,999,999 and +999,999,999 inclusive. If \`units\` is positive,
-- \`nanos\` must be positive or zero. If \`units\` is zero, \`nanos\` can
-- be positive, zero, or negative. If \`units\` is negative, \`nanos\` must
-- be negative or zero. For example $-1.75 is represented as \`units\`=-1
-- and \`nanos\`=-750,000,000.
mNanos :: Lens' Money (Maybe Int32)
mNanos
  = lens _mNanos (\ s a -> s{_mNanos = a}) .
      mapping _Coerce

-- | The whole units of the amount. For example if \`currencyCode\` is
-- \`\"USD\"\`, then 1 unit is one US dollar.
mUnits :: Lens' Money (Maybe Int64)
mUnits
  = lens _mUnits (\ s a -> s{_mUnits = a}) .
      mapping _Coerce

instance FromJSON Money where
        parseJSON
          = withObject "Money"
              (\ o ->
                 Money' <$>
                   (o .:? "currencyCode") <*> (o .:? "nanos") <*>
                     (o .:? "units"))

instance ToJSON Money where
        toJSON Money'{..}
          = object
              (catMaybes
                 [("currencyCode" .=) <$> _mCurrencyCode,
                  ("nanos" .=) <$> _mNanos, ("units" .=) <$> _mUnits])

-- | Request message for adding a note to a given proposal.
--
-- /See:/ 'addNoteRequest' smart constructor.
newtype AddNoteRequest = AddNoteRequest'
    { _anrNote :: Maybe Note
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddNoteRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'anrNote'
addNoteRequest
    :: AddNoteRequest
addNoteRequest =
    AddNoteRequest'
    { _anrNote = Nothing
    }

-- | Details of the note to add.
anrNote :: Lens' AddNoteRequest (Maybe Note)
anrNote = lens _anrNote (\ s a -> s{_anrNote = a})

instance FromJSON AddNoteRequest where
        parseJSON
          = withObject "AddNoteRequest"
              (\ o -> AddNoteRequest' <$> (o .:? "note"))

instance ToJSON AddNoteRequest where
        toJSON AddNoteRequest'{..}
          = object (catMaybes [("note" .=) <$> _anrNote])

-- | Represents targeting about where the ads can appear, e.g., certain sites
-- or mobile applications. Different placement targeting types will be
-- logically OR\'ed.
--
-- /See:/ 'placementTargeting' smart constructor.
data PlacementTargeting = PlacementTargeting'
    { _ptURLTargeting               :: !(Maybe URLTargeting)
    , _ptMobileApplicationTargeting :: !(Maybe MobileApplicationTargeting)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementTargeting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptURLTargeting'
--
-- * 'ptMobileApplicationTargeting'
placementTargeting
    :: PlacementTargeting
placementTargeting =
    PlacementTargeting'
    { _ptURLTargeting = Nothing
    , _ptMobileApplicationTargeting = Nothing
    }

-- | URLs to be included\/excluded.
ptURLTargeting :: Lens' PlacementTargeting (Maybe URLTargeting)
ptURLTargeting
  = lens _ptURLTargeting
      (\ s a -> s{_ptURLTargeting = a})

-- | Mobile application targeting information in a deal. This doesn\'t apply
-- to Auction Packages.
ptMobileApplicationTargeting :: Lens' PlacementTargeting (Maybe MobileApplicationTargeting)
ptMobileApplicationTargeting
  = lens _ptMobileApplicationTargeting
      (\ s a -> s{_ptMobileApplicationTargeting = a})

instance FromJSON PlacementTargeting where
        parseJSON
          = withObject "PlacementTargeting"
              (\ o ->
                 PlacementTargeting' <$>
                   (o .:? "urlTargeting") <*>
                     (o .:? "mobileApplicationTargeting"))

instance ToJSON PlacementTargeting where
        toJSON PlacementTargeting'{..}
          = object
              (catMaybes
                 [("urlTargeting" .=) <$> _ptURLTargeting,
                  ("mobileApplicationTargeting" .=) <$>
                    _ptMobileApplicationTargeting])

-- | Represents size of a single ad slot, or a creative.
--
-- /See:/ 'adSize' smart constructor.
data AdSize = AdSize'
    { _asHeight   :: !(Maybe (Textual Int64))
    , _asWidth    :: !(Maybe (Textual Int64))
    , _asSizeType :: !(Maybe AdSizeSizeType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdSize' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asHeight'
--
-- * 'asWidth'
--
-- * 'asSizeType'
adSize
    :: AdSize
adSize =
    AdSize'
    { _asHeight = Nothing
    , _asWidth = Nothing
    , _asSizeType = Nothing
    }

-- | The height of the ad slot in pixels. This field will be present only
-- when size type is \`PIXEL\`.
asHeight :: Lens' AdSize (Maybe Int64)
asHeight
  = lens _asHeight (\ s a -> s{_asHeight = a}) .
      mapping _Coerce

-- | The width of the ad slot in pixels. This field will be present only when
-- size type is \`PIXEL\`.
asWidth :: Lens' AdSize (Maybe Int64)
asWidth
  = lens _asWidth (\ s a -> s{_asWidth = a}) .
      mapping _Coerce

-- | The size type of the ad slot.
asSizeType :: Lens' AdSize (Maybe AdSizeSizeType)
asSizeType
  = lens _asSizeType (\ s a -> s{_asSizeType = a})

instance FromJSON AdSize where
        parseJSON
          = withObject "AdSize"
              (\ o ->
                 AdSize' <$>
                   (o .:? "height") <*> (o .:? "width") <*>
                     (o .:? "sizeType"))

instance ToJSON AdSize where
        toJSON AdSize'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _asHeight,
                  ("width" .=) <$> _asWidth,
                  ("sizeType" .=) <$> _asSizeType])

-- | A request for stopping notifications for changes to creative Status.
--
-- /See:/ 'stopWatchingCreativeRequest' smart constructor.
data StopWatchingCreativeRequest =
    StopWatchingCreativeRequest'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StopWatchingCreativeRequest' with the minimum fields required to make a request.
--
stopWatchingCreativeRequest
    :: StopWatchingCreativeRequest
stopWatchingCreativeRequest = StopWatchingCreativeRequest'

instance FromJSON StopWatchingCreativeRequest where
        parseJSON
          = withObject "StopWatchingCreativeRequest"
              (\ o -> pure StopWatchingCreativeRequest')

instance ToJSON StopWatchingCreativeRequest where
        toJSON = const emptyObject

-- | A request for watching changes to creative Status.
--
-- /See:/ 'watchCreativeRequest' smart constructor.
newtype WatchCreativeRequest = WatchCreativeRequest'
    { _wcrTopic :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WatchCreativeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wcrTopic'
watchCreativeRequest
    :: WatchCreativeRequest
watchCreativeRequest =
    WatchCreativeRequest'
    { _wcrTopic = Nothing
    }

-- | The Pub\/Sub topic to publish notifications to. This topic must already
-- exist and must give permission to
-- ad-exchange-buyside-reports\'google.com to write to the topic. This
-- should be the full resource name in
-- \"projects\/{project_id}\/topics\/{topic_id}\" format.
wcrTopic :: Lens' WatchCreativeRequest (Maybe Text)
wcrTopic = lens _wcrTopic (\ s a -> s{_wcrTopic = a})

instance FromJSON WatchCreativeRequest where
        parseJSON
          = withObject "WatchCreativeRequest"
              (\ o -> WatchCreativeRequest' <$> (o .:? "topic"))

instance ToJSON WatchCreativeRequest where
        toJSON WatchCreativeRequest'{..}
          = object (catMaybes [("topic" .=) <$> _wcrTopic])

-- | Message captures metadata about the serving status of a deal.
--
-- /See:/ 'dealServingMetadata' smart constructor.
newtype DealServingMetadata = DealServingMetadata'
    { _dsmDealPauseStatus :: Maybe DealPauseStatus
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

-- | Tracks which parties (if any) have paused a deal. \'OutputOnly
dsmDealPauseStatus :: Lens' DealServingMetadata (Maybe DealPauseStatus)
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

-- | Message contains details about how the deals will be paced.
--
-- /See:/ 'deliveryControl' smart constructor.
data DeliveryControl = DeliveryControl'
    { _dcCreativeBlockingLevel :: !(Maybe DeliveryControlCreativeBlockingLevel)
    , _dcFrequencyCaps         :: !(Maybe [FrequencyCap])
    , _dcDeliveryRateType      :: !(Maybe DeliveryControlDeliveryRateType)
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

-- | Specified the creative blocking levels to be applied. \'OutputOnly
dcCreativeBlockingLevel :: Lens' DeliveryControl (Maybe DeliveryControlCreativeBlockingLevel)
dcCreativeBlockingLevel
  = lens _dcCreativeBlockingLevel
      (\ s a -> s{_dcCreativeBlockingLevel = a})

-- | Specifies any frequency caps. \'OutputOnly
dcFrequencyCaps :: Lens' DeliveryControl [FrequencyCap]
dcFrequencyCaps
  = lens _dcFrequencyCaps
      (\ s a -> s{_dcFrequencyCaps = a})
      . _Default
      . _Coerce

-- | Specifies how the impression delivery will be paced. \'OutputOnly
dcDeliveryRateType :: Lens' DeliveryControl (Maybe DeliveryControlDeliveryRateType)
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
-- PricePerBuyer in a product can become 0 or 1 deals. To check if there is
-- a PricePerBuyer for a particular buyer or buyer\/advertiser pair, we
-- look for the most specific matching rule - we first look for a rule
-- matching the buyer and advertiser, next a rule with the buyer but an
-- empty advertiser list, and otherwise look for a matching rule where no
-- buyer is set.
--
-- /See:/ 'pricePerBuyer' smart constructor.
data PricePerBuyer = PricePerBuyer'
    { _ppbPrice         :: !(Maybe Price)
    , _ppbAdvertiserIds :: !(Maybe [Text])
    , _ppbBuyer         :: !(Maybe Buyer)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PricePerBuyer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppbPrice'
--
-- * 'ppbAdvertiserIds'
--
-- * 'ppbBuyer'
pricePerBuyer
    :: PricePerBuyer
pricePerBuyer =
    PricePerBuyer'
    { _ppbPrice = Nothing
    , _ppbAdvertiserIds = Nothing
    , _ppbBuyer = Nothing
    }

-- | The specified price.
ppbPrice :: Lens' PricePerBuyer (Maybe Price)
ppbPrice = lens _ppbPrice (\ s a -> s{_ppbPrice = a})

-- | The list of advertisers for this price when associated with this buyer.
-- If empty, all advertisers with this buyer pay this price.
ppbAdvertiserIds :: Lens' PricePerBuyer [Text]
ppbAdvertiserIds
  = lens _ppbAdvertiserIds
      (\ s a -> s{_ppbAdvertiserIds = a})
      . _Default
      . _Coerce

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
                   (o .:? "price") <*>
                     (o .:? "advertiserIds" .!= mempty)
                     <*> (o .:? "buyer"))

instance ToJSON PricePerBuyer where
        toJSON PricePerBuyer'{..}
          = object
              (catMaybes
                 [("price" .=) <$> _ppbPrice,
                  ("advertiserIds" .=) <$> _ppbAdvertiserIds,
                  ("buyer" .=) <$> _ppbBuyer])

-- | A creative and its classification data. Next ID: 39
--
-- /See:/ 'creative' smart constructor.
data Creative = Creative'
    { _cAPIUpdateTime               :: !(Maybe DateTime')
    , _cDetectedLanguages           :: !(Maybe [Text])
    , _cAdvertiserName              :: !(Maybe Text)
    , _cAdChoicesDestinationURL     :: !(Maybe Text)
    , _cAgencyId                    :: !(Maybe (Textual Int64))
    , _cCorrections                 :: !(Maybe [Correction])
    , _cClickThroughURLs            :: !(Maybe [Text])
    , _cRestrictedCategories        :: !(Maybe [Text])
    , _cDetectedProductCategories   :: !(Maybe [Textual Int32])
    , _cDealsStatus                 :: !(Maybe CreativeDealsStatus)
    , _cCreativeId                  :: !(Maybe Text)
    , _cVideo                       :: !(Maybe VideoContent)
    , _cNATive                      :: !(Maybe NATiveContent)
    , _cDetectedSensitiveCategories :: !(Maybe [Textual Int32])
    , _cImpressionTrackingURLs      :: !(Maybe [Text])
    , _cAccountId                   :: !(Maybe Text)
    , _cAttributes                  :: !(Maybe [Text])
    , _cVersion                     :: !(Maybe (Textual Int32))
    , _cVendorIds                   :: !(Maybe [Textual Int32])
    , _cDetectedAdvertiserIds       :: !(Maybe [Textual Int64])
    , _cHTML                        :: !(Maybe HTMLContent)
    , _cServingRestrictions         :: !(Maybe [ServingRestriction])
    , _cDetectedDomains             :: !(Maybe [Text])
    , _cOpenAuctionStatus           :: !(Maybe CreativeOpenAuctionStatus)
    , _cFilteringStats              :: !(Maybe FilteringStats)
    , _cDeclaredClickThroughURLs    :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Creative' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cAPIUpdateTime'
--
-- * 'cDetectedLanguages'
--
-- * 'cAdvertiserName'
--
-- * 'cAdChoicesDestinationURL'
--
-- * 'cAgencyId'
--
-- * 'cCorrections'
--
-- * 'cClickThroughURLs'
--
-- * 'cRestrictedCategories'
--
-- * 'cDetectedProductCategories'
--
-- * 'cDealsStatus'
--
-- * 'cCreativeId'
--
-- * 'cVideo'
--
-- * 'cNATive'
--
-- * 'cDetectedSensitiveCategories'
--
-- * 'cImpressionTrackingURLs'
--
-- * 'cAccountId'
--
-- * 'cAttributes'
--
-- * 'cVersion'
--
-- * 'cVendorIds'
--
-- * 'cDetectedAdvertiserIds'
--
-- * 'cHTML'
--
-- * 'cServingRestrictions'
--
-- * 'cDetectedDomains'
--
-- * 'cOpenAuctionStatus'
--
-- * 'cFilteringStats'
--
-- * 'cDeclaredClickThroughURLs'
creative
    :: Creative
creative =
    Creative'
    { _cAPIUpdateTime = Nothing
    , _cDetectedLanguages = Nothing
    , _cAdvertiserName = Nothing
    , _cAdChoicesDestinationURL = Nothing
    , _cAgencyId = Nothing
    , _cCorrections = Nothing
    , _cClickThroughURLs = Nothing
    , _cRestrictedCategories = Nothing
    , _cDetectedProductCategories = Nothing
    , _cDealsStatus = Nothing
    , _cCreativeId = Nothing
    , _cVideo = Nothing
    , _cNATive = Nothing
    , _cDetectedSensitiveCategories = Nothing
    , _cImpressionTrackingURLs = Nothing
    , _cAccountId = Nothing
    , _cAttributes = Nothing
    , _cVersion = Nothing
    , _cVendorIds = Nothing
    , _cDetectedAdvertiserIds = Nothing
    , _cHTML = Nothing
    , _cServingRestrictions = Nothing
    , _cDetectedDomains = Nothing
    , _cOpenAuctionStatus = Nothing
    , _cFilteringStats = Nothing
    , _cDeclaredClickThroughURLs = Nothing
    }

-- | \'OutputOnly The last update timestamp of the creative via API.
cAPIUpdateTime :: Lens' Creative (Maybe UTCTime)
cAPIUpdateTime
  = lens _cAPIUpdateTime
      (\ s a -> s{_cAPIUpdateTime = a})
      . mapping _DateTime

-- | \'OutputOnly The detected languages for this creative. The order is
-- arbitrary. The codes are 2 or 5 characters and are documented at
-- https:\/\/developers.google.com\/adwords\/api\/docs\/appendix\/languagecodes.
cDetectedLanguages :: Lens' Creative [Text]
cDetectedLanguages
  = lens _cDetectedLanguages
      (\ s a -> s{_cDetectedLanguages = a})
      . _Default
      . _Coerce

-- | The name of the company being advertised in the creative.
cAdvertiserName :: Lens' Creative (Maybe Text)
cAdvertiserName
  = lens _cAdvertiserName
      (\ s a -> s{_cAdvertiserName = a})

-- | The link to AdChoices destination page.
cAdChoicesDestinationURL :: Lens' Creative (Maybe Text)
cAdChoicesDestinationURL
  = lens _cAdChoicesDestinationURL
      (\ s a -> s{_cAdChoicesDestinationURL = a})

-- | The agency ID for this creative.
cAgencyId :: Lens' Creative (Maybe Int64)
cAgencyId
  = lens _cAgencyId (\ s a -> s{_cAgencyId = a}) .
      mapping _Coerce

-- | \'OutputOnly Shows any corrections that were applied to this creative.
cCorrections :: Lens' Creative [Correction]
cCorrections
  = lens _cCorrections (\ s a -> s{_cCorrections = a})
      . _Default
      . _Coerce

-- | The set of destination URLs for the creative.
cClickThroughURLs :: Lens' Creative [Text]
cClickThroughURLs
  = lens _cClickThroughURLs
      (\ s a -> s{_cClickThroughURLs = a})
      . _Default
      . _Coerce

-- | All restricted categories for the ads that may be shown from this
-- creative.
cRestrictedCategories :: Lens' Creative [Text]
cRestrictedCategories
  = lens _cRestrictedCategories
      (\ s a -> s{_cRestrictedCategories = a})
      . _Default
      . _Coerce

-- | \'OutputOnly Detected product categories, if any. See the
-- ad-product-categories.txt file in the technical documentation for a list
-- of IDs.
cDetectedProductCategories :: Lens' Creative [Int32]
cDetectedProductCategories
  = lens _cDetectedProductCategories
      (\ s a -> s{_cDetectedProductCategories = a})
      . _Default
      . _Coerce

-- | \'OutputOnly The top-level deals status of this creative. If
-- disapproved, an entry for \'auctionType=DIRECT_DEALS\' (or \'ALL\') in
-- serving_restrictions will also exist. Note that this may be nuanced with
-- other contextual restrictions, in which case, it may be preferable to
-- read from serving_restrictions directly. Can be used to filter the
-- response of the creatives.list method.
cDealsStatus :: Lens' Creative (Maybe CreativeDealsStatus)
cDealsStatus
  = lens _cDealsStatus (\ s a -> s{_cDealsStatus = a})

-- | The buyer-defined creative ID of this creative. Can be used to filter
-- the response of the creatives.list method.
cCreativeId :: Lens' Creative (Maybe Text)
cCreativeId
  = lens _cCreativeId (\ s a -> s{_cCreativeId = a})

-- | A video creative.
cVideo :: Lens' Creative (Maybe VideoContent)
cVideo = lens _cVideo (\ s a -> s{_cVideo = a})

-- | A native creative.
cNATive :: Lens' Creative (Maybe NATiveContent)
cNATive = lens _cNATive (\ s a -> s{_cNATive = a})

-- | \'OutputOnly Detected sensitive categories, if any. See the
-- ad-sensitive-categories.txt file in the technical documentation for a
-- list of IDs. You should use these IDs along with the
-- excluded-sensitive-category field in the bid request to filter your
-- bids.
cDetectedSensitiveCategories :: Lens' Creative [Int32]
cDetectedSensitiveCategories
  = lens _cDetectedSensitiveCategories
      (\ s a -> s{_cDetectedSensitiveCategories = a})
      . _Default
      . _Coerce

-- | The set of URLs to be called to record an impression.
cImpressionTrackingURLs :: Lens' Creative [Text]
cImpressionTrackingURLs
  = lens _cImpressionTrackingURLs
      (\ s a -> s{_cImpressionTrackingURLs = a})
      . _Default
      . _Coerce

-- | The account that this creative belongs to. Can be used to filter the
-- response of the creatives.list method.
cAccountId :: Lens' Creative (Maybe Text)
cAccountId
  = lens _cAccountId (\ s a -> s{_cAccountId = a})

-- | All attributes for the ads that may be shown from this creative. Can be
-- used to filter the response of the creatives.list method.
cAttributes :: Lens' Creative [Text]
cAttributes
  = lens _cAttributes (\ s a -> s{_cAttributes = a}) .
      _Default
      . _Coerce

-- | \'OutputOnly The version of this creative.
cVersion :: Lens' Creative (Maybe Int32)
cVersion
  = lens _cVersion (\ s a -> s{_cVersion = a}) .
      mapping _Coerce

-- | All vendor IDs for the ads that may be shown from this creative. See
-- https:\/\/storage.googleapis.com\/adx-rtb-dictionaries\/vendors.txt for
-- possible values.
cVendorIds :: Lens' Creative [Int32]
cVendorIds
  = lens _cVendorIds (\ s a -> s{_cVendorIds = a}) .
      _Default
      . _Coerce

-- | \'OutputOnly Detected advertiser IDs, if any.
cDetectedAdvertiserIds :: Lens' Creative [Int64]
cDetectedAdvertiserIds
  = lens _cDetectedAdvertiserIds
      (\ s a -> s{_cDetectedAdvertiserIds = a})
      . _Default
      . _Coerce

-- | An HTML creative.
cHTML :: Lens' Creative (Maybe HTMLContent)
cHTML = lens _cHTML (\ s a -> s{_cHTML = a})

-- | \'OutputOnly The granular status of this ad in specific contexts. A
-- context here relates to where something ultimately serves (for example,
-- a physical location, a platform, an HTTPS vs HTTP request, or the type
-- of auction).
cServingRestrictions :: Lens' Creative [ServingRestriction]
cServingRestrictions
  = lens _cServingRestrictions
      (\ s a -> s{_cServingRestrictions = a})
      . _Default
      . _Coerce

-- | \'OutputOnly The detected domains for this creative.
cDetectedDomains :: Lens' Creative [Text]
cDetectedDomains
  = lens _cDetectedDomains
      (\ s a -> s{_cDetectedDomains = a})
      . _Default
      . _Coerce

-- | \'OutputOnly The top-level open auction status of this creative. If
-- disapproved, an entry for \'auctionType = OPEN_AUCTION\' (or \'ALL\') in
-- serving_restrictions will also exist. Note that this may be nuanced with
-- other contextual restrictions, in which case, it may be preferable to
-- read from serving_restrictions directly. Can be used to filter the
-- response of the creatives.list method.
cOpenAuctionStatus :: Lens' Creative (Maybe CreativeOpenAuctionStatus)
cOpenAuctionStatus
  = lens _cOpenAuctionStatus
      (\ s a -> s{_cOpenAuctionStatus = a})

-- | \'OutputOnly The filtering stats for this creative.
cFilteringStats :: Lens' Creative (Maybe FilteringStats)
cFilteringStats
  = lens _cFilteringStats
      (\ s a -> s{_cFilteringStats = a})

-- | The set of declared destination URLs for the creative.
cDeclaredClickThroughURLs :: Lens' Creative [Text]
cDeclaredClickThroughURLs
  = lens _cDeclaredClickThroughURLs
      (\ s a -> s{_cDeclaredClickThroughURLs = a})
      . _Default
      . _Coerce

instance FromJSON Creative where
        parseJSON
          = withObject "Creative"
              (\ o ->
                 Creative' <$>
                   (o .:? "apiUpdateTime") <*>
                     (o .:? "detectedLanguages" .!= mempty)
                     <*> (o .:? "advertiserName")
                     <*> (o .:? "adChoicesDestinationUrl")
                     <*> (o .:? "agencyId")
                     <*> (o .:? "corrections" .!= mempty)
                     <*> (o .:? "clickThroughUrls" .!= mempty)
                     <*> (o .:? "restrictedCategories" .!= mempty)
                     <*> (o .:? "detectedProductCategories" .!= mempty)
                     <*> (o .:? "dealsStatus")
                     <*> (o .:? "creativeId")
                     <*> (o .:? "video")
                     <*> (o .:? "native")
                     <*> (o .:? "detectedSensitiveCategories" .!= mempty)
                     <*> (o .:? "impressionTrackingUrls" .!= mempty)
                     <*> (o .:? "accountId")
                     <*> (o .:? "attributes" .!= mempty)
                     <*> (o .:? "version")
                     <*> (o .:? "vendorIds" .!= mempty)
                     <*> (o .:? "detectedAdvertiserIds" .!= mempty)
                     <*> (o .:? "html")
                     <*> (o .:? "servingRestrictions" .!= mempty)
                     <*> (o .:? "detectedDomains" .!= mempty)
                     <*> (o .:? "openAuctionStatus")
                     <*> (o .:? "filteringStats")
                     <*> (o .:? "declaredClickThroughUrls" .!= mempty))

instance ToJSON Creative where
        toJSON Creative'{..}
          = object
              (catMaybes
                 [("apiUpdateTime" .=) <$> _cAPIUpdateTime,
                  ("detectedLanguages" .=) <$> _cDetectedLanguages,
                  ("advertiserName" .=) <$> _cAdvertiserName,
                  ("adChoicesDestinationUrl" .=) <$>
                    _cAdChoicesDestinationURL,
                  ("agencyId" .=) <$> _cAgencyId,
                  ("corrections" .=) <$> _cCorrections,
                  ("clickThroughUrls" .=) <$> _cClickThroughURLs,
                  ("restrictedCategories" .=) <$>
                    _cRestrictedCategories,
                  ("detectedProductCategories" .=) <$>
                    _cDetectedProductCategories,
                  ("dealsStatus" .=) <$> _cDealsStatus,
                  ("creativeId" .=) <$> _cCreativeId,
                  ("video" .=) <$> _cVideo, ("native" .=) <$> _cNATive,
                  ("detectedSensitiveCategories" .=) <$>
                    _cDetectedSensitiveCategories,
                  ("impressionTrackingUrls" .=) <$>
                    _cImpressionTrackingURLs,
                  ("accountId" .=) <$> _cAccountId,
                  ("attributes" .=) <$> _cAttributes,
                  ("version" .=) <$> _cVersion,
                  ("vendorIds" .=) <$> _cVendorIds,
                  ("detectedAdvertiserIds" .=) <$>
                    _cDetectedAdvertiserIds,
                  ("html" .=) <$> _cHTML,
                  ("servingRestrictions" .=) <$> _cServingRestrictions,
                  ("detectedDomains" .=) <$> _cDetectedDomains,
                  ("openAuctionStatus" .=) <$> _cOpenAuctionStatus,
                  ("filteringStats" .=) <$> _cFilteringStats,
                  ("declaredClickThroughUrls" .=) <$>
                    _cDeclaredClickThroughURLs])

-- | \'OutputOnly The app type the restriction applies to for mobile device.
--
-- /See:/ 'appContext' smart constructor.
newtype AppContext = AppContext'
    { _acAppTypes :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acAppTypes'
appContext
    :: AppContext
appContext =
    AppContext'
    { _acAppTypes = Nothing
    }

-- | The app types this restriction applies to.
acAppTypes :: Lens' AppContext [Text]
acAppTypes
  = lens _acAppTypes (\ s a -> s{_acAppTypes = a}) .
      _Default
      . _Coerce

instance FromJSON AppContext where
        parseJSON
          = withObject "AppContext"
              (\ o ->
                 AppContext' <$> (o .:? "appTypes" .!= mempty))

instance ToJSON AppContext where
        toJSON AppContext'{..}
          = object
              (catMaybes [("appTypes" .=) <$> _acAppTypes])

-- | Targeting represents different criteria that can be used by advertisers
-- to target ad inventory. For example, they can choose to target ad
-- requests only if the user is in the US. Multiple types of targeting are
-- always applied as a logical AND, unless noted otherwise.
--
-- /See:/ 'marketplaceTargeting' smart constructor.
data MarketplaceTargeting = MarketplaceTargeting'
    { _mtGeoTargeting           :: !(Maybe CriteriaTargeting)
    , _mtTechnologyTargeting    :: !(Maybe TechnologyTargeting)
    , _mtPlacementTargeting     :: !(Maybe PlacementTargeting)
    , _mtVideoTargeting         :: !(Maybe VideoTargeting)
    , _mtInventorySizeTargeting :: !(Maybe InventorySizeTargeting)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceTargeting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtGeoTargeting'
--
-- * 'mtTechnologyTargeting'
--
-- * 'mtPlacementTargeting'
--
-- * 'mtVideoTargeting'
--
-- * 'mtInventorySizeTargeting'
marketplaceTargeting
    :: MarketplaceTargeting
marketplaceTargeting =
    MarketplaceTargeting'
    { _mtGeoTargeting = Nothing
    , _mtTechnologyTargeting = Nothing
    , _mtPlacementTargeting = Nothing
    , _mtVideoTargeting = Nothing
    , _mtInventorySizeTargeting = Nothing
    }

-- | Geo criteria IDs to be included\/excluded.
mtGeoTargeting :: Lens' MarketplaceTargeting (Maybe CriteriaTargeting)
mtGeoTargeting
  = lens _mtGeoTargeting
      (\ s a -> s{_mtGeoTargeting = a})

-- | Technology targeting information, e.g., operating system, device
-- category.
mtTechnologyTargeting :: Lens' MarketplaceTargeting (Maybe TechnologyTargeting)
mtTechnologyTargeting
  = lens _mtTechnologyTargeting
      (\ s a -> s{_mtTechnologyTargeting = a})

-- | Placement targeting information, e.g., URL, mobile applications.
mtPlacementTargeting :: Lens' MarketplaceTargeting (Maybe PlacementTargeting)
mtPlacementTargeting
  = lens _mtPlacementTargeting
      (\ s a -> s{_mtPlacementTargeting = a})

-- | Video targeting information.
mtVideoTargeting :: Lens' MarketplaceTargeting (Maybe VideoTargeting)
mtVideoTargeting
  = lens _mtVideoTargeting
      (\ s a -> s{_mtVideoTargeting = a})

-- | Inventory sizes to be included\/excluded.
mtInventorySizeTargeting :: Lens' MarketplaceTargeting (Maybe InventorySizeTargeting)
mtInventorySizeTargeting
  = lens _mtInventorySizeTargeting
      (\ s a -> s{_mtInventorySizeTargeting = a})

instance FromJSON MarketplaceTargeting where
        parseJSON
          = withObject "MarketplaceTargeting"
              (\ o ->
                 MarketplaceTargeting' <$>
                   (o .:? "geoTargeting") <*>
                     (o .:? "technologyTargeting")
                     <*> (o .:? "placementTargeting")
                     <*> (o .:? "videoTargeting")
                     <*> (o .:? "inventorySizeTargeting"))

instance ToJSON MarketplaceTargeting where
        toJSON MarketplaceTargeting'{..}
          = object
              (catMaybes
                 [("geoTargeting" .=) <$> _mtGeoTargeting,
                  ("technologyTargeting" .=) <$>
                    _mtTechnologyTargeting,
                  ("placementTargeting" .=) <$> _mtPlacementTargeting,
                  ("videoTargeting" .=) <$> _mtVideoTargeting,
                  ("inventorySizeTargeting" .=) <$>
                    _mtInventorySizeTargeting])

-- | Response message for listing all reasons that bid responses resulted in
-- an error.
--
-- /See:/ 'listBidResponseErrorsResponse' smart constructor.
data ListBidResponseErrorsResponse = ListBidResponseErrorsResponse'
    { _lbrerNextPageToken     :: !(Maybe Text)
    , _lbrerCalloutStatusRows :: !(Maybe [CalloutStatusRow])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListBidResponseErrorsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbrerNextPageToken'
--
-- * 'lbrerCalloutStatusRows'
listBidResponseErrorsResponse
    :: ListBidResponseErrorsResponse
listBidResponseErrorsResponse =
    ListBidResponseErrorsResponse'
    { _lbrerNextPageToken = Nothing
    , _lbrerCalloutStatusRows = Nothing
    }

-- | A token to retrieve the next page of results. Pass this value in the
-- ListBidResponseErrorsRequest.pageToken field in the subsequent call to
-- the bidResponseErrors.list method to retrieve the next page of results.
lbrerNextPageToken :: Lens' ListBidResponseErrorsResponse (Maybe Text)
lbrerNextPageToken
  = lens _lbrerNextPageToken
      (\ s a -> s{_lbrerNextPageToken = a})

-- | List of rows, with counts of bid responses aggregated by callout status.
lbrerCalloutStatusRows :: Lens' ListBidResponseErrorsResponse [CalloutStatusRow]
lbrerCalloutStatusRows
  = lens _lbrerCalloutStatusRows
      (\ s a -> s{_lbrerCalloutStatusRows = a})
      . _Default
      . _Coerce

instance FromJSON ListBidResponseErrorsResponse where
        parseJSON
          = withObject "ListBidResponseErrorsResponse"
              (\ o ->
                 ListBidResponseErrorsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "calloutStatusRows" .!= mempty))

instance ToJSON ListBidResponseErrorsResponse where
        toJSON ListBidResponseErrorsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lbrerNextPageToken,
                  ("calloutStatusRows" .=) <$>
                    _lbrerCalloutStatusRows])

-- | \'OutputOnly Shows any corrections that were applied to this creative.
--
-- /See:/ 'correction' smart constructor.
data Correction = Correction'
    { _cContexts :: !(Maybe [ServingContext])
    , _cDetails  :: !(Maybe [Text])
    , _cType     :: !(Maybe CorrectionType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Correction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cContexts'
--
-- * 'cDetails'
--
-- * 'cType'
correction
    :: Correction
correction =
    Correction'
    { _cContexts = Nothing
    , _cDetails = Nothing
    , _cType = Nothing
    }

-- | The contexts for the correction.
cContexts :: Lens' Correction [ServingContext]
cContexts
  = lens _cContexts (\ s a -> s{_cContexts = a}) .
      _Default
      . _Coerce

-- | Additional details about what was corrected.
cDetails :: Lens' Correction [Text]
cDetails
  = lens _cDetails (\ s a -> s{_cDetails = a}) .
      _Default
      . _Coerce

-- | The type of correction that was applied to the creative.
cType :: Lens' Correction (Maybe CorrectionType)
cType = lens _cType (\ s a -> s{_cType = a})

instance FromJSON Correction where
        parseJSON
          = withObject "Correction"
              (\ o ->
                 Correction' <$>
                   (o .:? "contexts" .!= mempty) <*>
                     (o .:? "details" .!= mempty)
                     <*> (o .:? "type"))

instance ToJSON Correction where
        toJSON Correction'{..}
          = object
              (catMaybes
                 [("contexts" .=) <$> _cContexts,
                  ("details" .=) <$> _cDetails,
                  ("type" .=) <$> _cType])

-- | The association between a creative and a deal.
--
-- /See:/ 'creativeDealAssociation' smart constructor.
data CreativeDealAssociation = CreativeDealAssociation'
    { _cdaCreativeId :: !(Maybe Text)
    , _cdaAccountId  :: !(Maybe Text)
    , _cdaDealsId    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeDealAssociation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdaCreativeId'
--
-- * 'cdaAccountId'
--
-- * 'cdaDealsId'
creativeDealAssociation
    :: CreativeDealAssociation
creativeDealAssociation =
    CreativeDealAssociation'
    { _cdaCreativeId = Nothing
    , _cdaAccountId = Nothing
    , _cdaDealsId = Nothing
    }

-- | The ID of the creative associated with the deal.
cdaCreativeId :: Lens' CreativeDealAssociation (Maybe Text)
cdaCreativeId
  = lens _cdaCreativeId
      (\ s a -> s{_cdaCreativeId = a})

-- | The account the creative belongs to.
cdaAccountId :: Lens' CreativeDealAssociation (Maybe Text)
cdaAccountId
  = lens _cdaAccountId (\ s a -> s{_cdaAccountId = a})

-- | The externalDealId for the deal associated with the creative.
cdaDealsId :: Lens' CreativeDealAssociation (Maybe Text)
cdaDealsId
  = lens _cdaDealsId (\ s a -> s{_cdaDealsId = a})

instance FromJSON CreativeDealAssociation where
        parseJSON
          = withObject "CreativeDealAssociation"
              (\ o ->
                 CreativeDealAssociation' <$>
                   (o .:? "creativeId") <*> (o .:? "accountId") <*>
                     (o .:? "dealsId"))

instance ToJSON CreativeDealAssociation where
        toJSON CreativeDealAssociation'{..}
          = object
              (catMaybes
                 [("creativeId" .=) <$> _cdaCreativeId,
                  ("accountId" .=) <$> _cdaAccountId,
                  ("dealsId" .=) <$> _cdaDealsId])

-- | Represents a seller of inventory. Each seller is identified by a unique
-- Ad Manager account ID.
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

-- | The unique ID for the seller. The seller fills in this field. The seller
-- account ID is then available to buyer in the product.
sAccountId :: Lens' Seller (Maybe Text)
sAccountId
  = lens _sAccountId (\ s a -> s{_sAccountId = a})

-- | Optional sub-account ID for the seller.
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

-- | A response for listing creatives.
--
-- /See:/ 'listCreativesResponse' smart constructor.
data ListCreativesResponse = ListCreativesResponse'
    { _lcrNextPageToken :: !(Maybe Text)
    , _lcrCreatives     :: !(Maybe [Creative])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListCreativesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrNextPageToken'
--
-- * 'lcrCreatives'
listCreativesResponse
    :: ListCreativesResponse
listCreativesResponse =
    ListCreativesResponse'
    { _lcrNextPageToken = Nothing
    , _lcrCreatives = Nothing
    }

-- | A token to retrieve the next page of results. Pass this value in the
-- ListCreativesRequest.page_token field in the subsequent call to
-- \`ListCreatives\` method to retrieve the next page of results.
lcrNextPageToken :: Lens' ListCreativesResponse (Maybe Text)
lcrNextPageToken
  = lens _lcrNextPageToken
      (\ s a -> s{_lcrNextPageToken = a})

-- | The list of creatives.
lcrCreatives :: Lens' ListCreativesResponse [Creative]
lcrCreatives
  = lens _lcrCreatives (\ s a -> s{_lcrCreatives = a})
      . _Default
      . _Coerce

instance FromJSON ListCreativesResponse where
        parseJSON
          = withObject "ListCreativesResponse"
              (\ o ->
                 ListCreativesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "creatives" .!= mempty))

instance ToJSON ListCreativesResponse where
        toJSON ListCreativesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lcrNextPageToken,
                  ("creatives" .=) <$> _lcrCreatives])

-- | A response may include multiple rows, breaking down along various
-- dimensions. Encapsulates the values of all dimensions for a given row.
--
-- /See:/ 'rowDimensions' smart constructor.
data RowDimensions = RowDimensions'
    { _rdPublisherIdentifier :: !(Maybe Text)
    , _rdTimeInterval        :: !(Maybe TimeInterval)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RowDimensions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdPublisherIdentifier'
--
-- * 'rdTimeInterval'
rowDimensions
    :: RowDimensions
rowDimensions =
    RowDimensions'
    { _rdPublisherIdentifier = Nothing
    , _rdTimeInterval = Nothing
    }

-- | The publisher identifier for this row, if a breakdown by
-- [BreakdownDimension.PUBLISHER_IDENTIFIER](https:\/\/developers.google.com\/authorized-buyers\/apis\/reference\/rest\/v2beta1\/bidders.accounts.filterSets#FilterSet.BreakdownDimension)
-- was requested.
rdPublisherIdentifier :: Lens' RowDimensions (Maybe Text)
rdPublisherIdentifier
  = lens _rdPublisherIdentifier
      (\ s a -> s{_rdPublisherIdentifier = a})

-- | The time interval that this row represents.
rdTimeInterval :: Lens' RowDimensions (Maybe TimeInterval)
rdTimeInterval
  = lens _rdTimeInterval
      (\ s a -> s{_rdTimeInterval = a})

instance FromJSON RowDimensions where
        parseJSON
          = withObject "RowDimensions"
              (\ o ->
                 RowDimensions' <$>
                   (o .:? "publisherIdentifier") <*>
                     (o .:? "timeInterval"))

instance ToJSON RowDimensions where
        toJSON RowDimensions'{..}
          = object
              (catMaybes
                 [("publisherIdentifier" .=) <$>
                    _rdPublisherIdentifier,
                  ("timeInterval" .=) <$> _rdTimeInterval])

-- | Represents targeting information for operating systems.
--
-- /See:/ 'operatingSystemTargeting' smart constructor.
data OperatingSystemTargeting = OperatingSystemTargeting'
    { _ostOperatingSystemVersionCriteria :: !(Maybe CriteriaTargeting)
    , _ostOperatingSystemCriteria        :: !(Maybe CriteriaTargeting)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperatingSystemTargeting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ostOperatingSystemVersionCriteria'
--
-- * 'ostOperatingSystemCriteria'
operatingSystemTargeting
    :: OperatingSystemTargeting
operatingSystemTargeting =
    OperatingSystemTargeting'
    { _ostOperatingSystemVersionCriteria = Nothing
    , _ostOperatingSystemCriteria = Nothing
    }

-- | IDs of operating system versions to be included\/excluded.
ostOperatingSystemVersionCriteria :: Lens' OperatingSystemTargeting (Maybe CriteriaTargeting)
ostOperatingSystemVersionCriteria
  = lens _ostOperatingSystemVersionCriteria
      (\ s a -> s{_ostOperatingSystemVersionCriteria = a})

-- | IDs of operating systems to be included\/excluded.
ostOperatingSystemCriteria :: Lens' OperatingSystemTargeting (Maybe CriteriaTargeting)
ostOperatingSystemCriteria
  = lens _ostOperatingSystemCriteria
      (\ s a -> s{_ostOperatingSystemCriteria = a})

instance FromJSON OperatingSystemTargeting where
        parseJSON
          = withObject "OperatingSystemTargeting"
              (\ o ->
                 OperatingSystemTargeting' <$>
                   (o .:? "operatingSystemVersionCriteria") <*>
                     (o .:? "operatingSystemCriteria"))

instance ToJSON OperatingSystemTargeting where
        toJSON OperatingSystemTargeting'{..}
          = object
              (catMaybes
                 [("operatingSystemVersionCriteria" .=) <$>
                    _ostOperatingSystemVersionCriteria,
                  ("operatingSystemCriteria" .=) <$>
                    _ostOperatingSystemCriteria])

-- | Response message for listing all details associated with a given
-- filtered bid reason.
--
-- /See:/ 'listCreativeStatusBreakdownByDetailResponse' smart constructor.
data ListCreativeStatusBreakdownByDetailResponse = ListCreativeStatusBreakdownByDetailResponse'
    { _lcsbbdrNextPageToken         :: !(Maybe Text)
    , _lcsbbdrDetailType            :: !(Maybe ListCreativeStatusBreakdownByDetailResponseDetailType)
    , _lcsbbdrFilteredBidDetailRows :: !(Maybe [FilteredBidDetailRow])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListCreativeStatusBreakdownByDetailResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcsbbdrNextPageToken'
--
-- * 'lcsbbdrDetailType'
--
-- * 'lcsbbdrFilteredBidDetailRows'
listCreativeStatusBreakdownByDetailResponse
    :: ListCreativeStatusBreakdownByDetailResponse
listCreativeStatusBreakdownByDetailResponse =
    ListCreativeStatusBreakdownByDetailResponse'
    { _lcsbbdrNextPageToken = Nothing
    , _lcsbbdrDetailType = Nothing
    , _lcsbbdrFilteredBidDetailRows = Nothing
    }

-- | A token to retrieve the next page of results. Pass this value in the
-- ListCreativeStatusBreakdownByDetailRequest.pageToken field in the
-- subsequent call to the filteredBids.details.list method to retrieve the
-- next page of results.
lcsbbdrNextPageToken :: Lens' ListCreativeStatusBreakdownByDetailResponse (Maybe Text)
lcsbbdrNextPageToken
  = lens _lcsbbdrNextPageToken
      (\ s a -> s{_lcsbbdrNextPageToken = a})

-- | The type of detail that the detail IDs represent.
lcsbbdrDetailType :: Lens' ListCreativeStatusBreakdownByDetailResponse (Maybe ListCreativeStatusBreakdownByDetailResponseDetailType)
lcsbbdrDetailType
  = lens _lcsbbdrDetailType
      (\ s a -> s{_lcsbbdrDetailType = a})

-- | List of rows, with counts of bids with a given creative status
-- aggregated by detail.
lcsbbdrFilteredBidDetailRows :: Lens' ListCreativeStatusBreakdownByDetailResponse [FilteredBidDetailRow]
lcsbbdrFilteredBidDetailRows
  = lens _lcsbbdrFilteredBidDetailRows
      (\ s a -> s{_lcsbbdrFilteredBidDetailRows = a})
      . _Default
      . _Coerce

instance FromJSON
         ListCreativeStatusBreakdownByDetailResponse where
        parseJSON
          = withObject
              "ListCreativeStatusBreakdownByDetailResponse"
              (\ o ->
                 ListCreativeStatusBreakdownByDetailResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "detailType") <*>
                     (o .:? "filteredBidDetailRows" .!= mempty))

instance ToJSON
         ListCreativeStatusBreakdownByDetailResponse where
        toJSON
          ListCreativeStatusBreakdownByDetailResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lcsbbdrNextPageToken,
                  ("detailType" .=) <$> _lcsbbdrDetailType,
                  ("filteredBidDetailRows" .=) <$>
                    _lcsbbdrFilteredBidDetailRows])

-- | \'OutputOnly A security context.
--
-- /See:/ 'securityContext' smart constructor.
newtype SecurityContext = SecurityContext'
    { _scSecurities :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SecurityContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scSecurities'
securityContext
    :: SecurityContext
securityContext =
    SecurityContext'
    { _scSecurities = Nothing
    }

-- | The security types in this context.
scSecurities :: Lens' SecurityContext [Text]
scSecurities
  = lens _scSecurities (\ s a -> s{_scSecurities = a})
      . _Default
      . _Coerce

instance FromJSON SecurityContext where
        parseJSON
          = withObject "SecurityContext"
              (\ o ->
                 SecurityContext' <$> (o .:? "securities" .!= mempty))

instance ToJSON SecurityContext where
        toJSON SecurityContext'{..}
          = object
              (catMaybes [("securities" .=) <$> _scSecurities])

-- | Represents a whole or partial calendar date, e.g. a birthday. The time
-- of day and time zone are either specified elsewhere or are not
-- significant. The date is relative to the Proleptic Gregorian Calendar.
-- This can represent: * A full date, with non-zero year, month and day
-- values * A month and day value, with a zero year, e.g. an anniversary *
-- A year on its own, with zero month and day values * A year and month
-- value, with a zero day, e.g. a credit card expiration date Related types
-- are google.type.TimeOfDay and \`google.protobuf.Timestamp\`.
--
-- /See:/ 'date' smart constructor.
data Date = Date'
    { _dDay   :: !(Maybe (Textual Int32))
    , _dYear  :: !(Maybe (Textual Int32))
    , _dMonth :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Date' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDay'
--
-- * 'dYear'
--
-- * 'dMonth'
date
    :: Date
date =
    Date'
    { _dDay = Nothing
    , _dYear = Nothing
    , _dMonth = Nothing
    }

-- | Day of month. Must be from 1 to 31 and valid for the year and month, or
-- 0 if specifying a year by itself or a year and month where the day is
-- not significant.
dDay :: Lens' Date (Maybe Int32)
dDay
  = lens _dDay (\ s a -> s{_dDay = a}) .
      mapping _Coerce

-- | Year of date. Must be from 1 to 9999, or 0 if specifying a date without
-- a year.
dYear :: Lens' Date (Maybe Int32)
dYear
  = lens _dYear (\ s a -> s{_dYear = a}) .
      mapping _Coerce

-- | Month of year. Must be from 1 to 12, or 0 if specifying a year without a
-- month and day.
dMonth :: Lens' Date (Maybe Int32)
dMonth
  = lens _dMonth (\ s a -> s{_dMonth = a}) .
      mapping _Coerce

instance FromJSON Date where
        parseJSON
          = withObject "Date"
              (\ o ->
                 Date' <$>
                   (o .:? "day") <*> (o .:? "year") <*> (o .:? "month"))

instance ToJSON Date where
        toJSON Date'{..}
          = object
              (catMaybes
                 [("day" .=) <$> _dDay, ("year" .=) <$> _dYear,
                  ("month" .=) <$> _dMonth])

-- | Request to cancel an ongoing negotiation.
--
-- /See:/ 'cancelNegotiationRequest' smart constructor.
data CancelNegotiationRequest =
    CancelNegotiationRequest'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CancelNegotiationRequest' with the minimum fields required to make a request.
--
cancelNegotiationRequest
    :: CancelNegotiationRequest
cancelNegotiationRequest = CancelNegotiationRequest'

instance FromJSON CancelNegotiationRequest where
        parseJSON
          = withObject "CancelNegotiationRequest"
              (\ o -> pure CancelNegotiationRequest')

instance ToJSON CancelNegotiationRequest where
        toJSON = const emptyObject

-- | Contains information on how a buyer or seller can be reached.
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

-- | Email address for the contact.
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

-- | An absolute date range, specified by its start date and end date. The
-- supported range of dates begins 30 days before today and ends today.
-- Validity checked upon filter set creation. If a filter set with an
-- absolute date range is run at a later date more than 30 days after
-- start_date, it will fail.
--
-- /See:/ 'absoluteDateRange' smart constructor.
data AbsoluteDateRange = AbsoluteDateRange'
    { _adrEndDate   :: !(Maybe Date)
    , _adrStartDate :: !(Maybe Date)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AbsoluteDateRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adrEndDate'
--
-- * 'adrStartDate'
absoluteDateRange
    :: AbsoluteDateRange
absoluteDateRange =
    AbsoluteDateRange'
    { _adrEndDate = Nothing
    , _adrStartDate = Nothing
    }

-- | The end date of the range (inclusive). Must be within the 30 days
-- leading up to current date, and must be equal to or after start_date.
adrEndDate :: Lens' AbsoluteDateRange (Maybe Date)
adrEndDate
  = lens _adrEndDate (\ s a -> s{_adrEndDate = a})

-- | The start date of the range (inclusive). Must be within the 30 days
-- leading up to current date, and must be equal to or before end_date.
adrStartDate :: Lens' AbsoluteDateRange (Maybe Date)
adrStartDate
  = lens _adrStartDate (\ s a -> s{_adrStartDate = a})

instance FromJSON AbsoluteDateRange where
        parseJSON
          = withObject "AbsoluteDateRange"
              (\ o ->
                 AbsoluteDateRange' <$>
                   (o .:? "endDate") <*> (o .:? "startDate"))

instance ToJSON AbsoluteDateRange where
        toJSON AbsoluteDateRange'{..}
          = object
              (catMaybes
                 [("endDate" .=) <$> _adrEndDate,
                  ("startDate" .=) <$> _adrStartDate])

-- | A specific filtering status and how many times it occurred.
--
-- /See:/ 'reason' smart constructor.
data Reason = Reason'
    { _rStatus :: !(Maybe (Textual Int32))
    , _rCount  :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Reason' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rStatus'
--
-- * 'rCount'
reason
    :: Reason
reason =
    Reason'
    { _rStatus = Nothing
    , _rCount = Nothing
    }

-- | The filtering status code. Please refer to the
-- [creative-status-codes.txt](https:\/\/storage.googleapis.com\/adx-rtb-dictionaries\/creative-status-codes.txt)
-- file for different statuses.
rStatus :: Lens' Reason (Maybe Int32)
rStatus
  = lens _rStatus (\ s a -> s{_rStatus = a}) .
      mapping _Coerce

-- | The number of times the creative was filtered for the status. The count
-- is aggregated across all publishers on the exchange.
rCount :: Lens' Reason (Maybe Int64)
rCount
  = lens _rCount (\ s a -> s{_rCount = a}) .
      mapping _Coerce

instance FromJSON Reason where
        parseJSON
          = withObject "Reason"
              (\ o ->
                 Reason' <$> (o .:? "status") <*> (o .:? "count"))

instance ToJSON Reason where
        toJSON Reason'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _rStatus,
                  ("count" .=) <$> _rCount])

-- | \'OutputOnly The auction type the restriction applies to.
--
-- /See:/ 'auctionContext' smart constructor.
newtype AuctionContext = AuctionContext'
    { _acAuctionTypes :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AuctionContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acAuctionTypes'
auctionContext
    :: AuctionContext
auctionContext =
    AuctionContext'
    { _acAuctionTypes = Nothing
    }

-- | The auction types this restriction applies to.
acAuctionTypes :: Lens' AuctionContext [Text]
acAuctionTypes
  = lens _acAuctionTypes
      (\ s a -> s{_acAuctionTypes = a})
      . _Default
      . _Coerce

instance FromJSON AuctionContext where
        parseJSON
          = withObject "AuctionContext"
              (\ o ->
                 AuctionContext' <$>
                   (o .:? "auctionTypes" .!= mempty))

instance ToJSON AuctionContext where
        toJSON AuctionContext'{..}
          = object
              (catMaybes [("auctionTypes" .=) <$> _acAuctionTypes])

-- | A deal represents a segment of inventory for displaying ads on. A
-- proposal can contain multiple deals. A deal contains the terms and
-- targeting information that is used for serving.
--
-- /See:/ 'deal' smart constructor.
data Deal = Deal'
    { _dAvailableStartTime             :: !(Maybe DateTime')
    , _dExternalDealId                 :: !(Maybe Text)
    , _dBuyerPrivateData               :: !(Maybe PrivateData)
    , _dIsSetupComplete                :: !(Maybe Bool)
    , _dWebPropertyCode                :: !(Maybe Text)
    , _dDeliveryControl                :: !(Maybe DeliveryControl)
    , _dDealServingMetadata            :: !(Maybe DealServingMetadata)
    , _dProposalId                     :: !(Maybe Text)
    , _dTargeting                      :: !(Maybe MarketplaceTargeting)
    , _dDealId                         :: !(Maybe Text)
    , _dCreativeRestrictions           :: !(Maybe CreativeRestrictions)
    , _dSyndicationProduct             :: !(Maybe DealSyndicationProduct)
    , _dCreateProductRevision          :: !(Maybe (Textual Int64))
    , _dUpdateTime                     :: !(Maybe DateTime')
    , _dTargetingCriterion             :: !(Maybe [TargetingCriteria])
    , _dSellerContacts                 :: !(Maybe [ContactInformation])
    , _dCreateProductId                :: !(Maybe Text)
    , _dDisplayName                    :: !(Maybe Text)
    , _dProgrammaticCreativeSource     :: !(Maybe DealProgrammaticCreativeSource)
    , _dAvailableEndTime               :: !(Maybe DateTime')
    , _dCreativePreApprovalPolicy      :: !(Maybe DealCreativePreApprovalPolicy)
    , _dDescription                    :: !(Maybe Text)
    , _dCreateTime                     :: !(Maybe DateTime')
    , _dCreativeSafeFrameCompatibility :: !(Maybe DealCreativeSafeFrameCompatibility)
    , _dDealTerms                      :: !(Maybe DealTerms)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Deal' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dAvailableStartTime'
--
-- * 'dExternalDealId'
--
-- * 'dBuyerPrivateData'
--
-- * 'dIsSetupComplete'
--
-- * 'dWebPropertyCode'
--
-- * 'dDeliveryControl'
--
-- * 'dDealServingMetadata'
--
-- * 'dProposalId'
--
-- * 'dTargeting'
--
-- * 'dDealId'
--
-- * 'dCreativeRestrictions'
--
-- * 'dSyndicationProduct'
--
-- * 'dCreateProductRevision'
--
-- * 'dUpdateTime'
--
-- * 'dTargetingCriterion'
--
-- * 'dSellerContacts'
--
-- * 'dCreateProductId'
--
-- * 'dDisplayName'
--
-- * 'dProgrammaticCreativeSource'
--
-- * 'dAvailableEndTime'
--
-- * 'dCreativePreApprovalPolicy'
--
-- * 'dDescription'
--
-- * 'dCreateTime'
--
-- * 'dCreativeSafeFrameCompatibility'
--
-- * 'dDealTerms'
deal
    :: Deal
deal =
    Deal'
    { _dAvailableStartTime = Nothing
    , _dExternalDealId = Nothing
    , _dBuyerPrivateData = Nothing
    , _dIsSetupComplete = Nothing
    , _dWebPropertyCode = Nothing
    , _dDeliveryControl = Nothing
    , _dDealServingMetadata = Nothing
    , _dProposalId = Nothing
    , _dTargeting = Nothing
    , _dDealId = Nothing
    , _dCreativeRestrictions = Nothing
    , _dSyndicationProduct = Nothing
    , _dCreateProductRevision = Nothing
    , _dUpdateTime = Nothing
    , _dTargetingCriterion = Nothing
    , _dSellerContacts = Nothing
    , _dCreateProductId = Nothing
    , _dDisplayName = Nothing
    , _dProgrammaticCreativeSource = Nothing
    , _dAvailableEndTime = Nothing
    , _dCreativePreApprovalPolicy = Nothing
    , _dDescription = Nothing
    , _dCreateTime = Nothing
    , _dCreativeSafeFrameCompatibility = Nothing
    , _dDealTerms = Nothing
    }

-- | Optional proposed flight start time of the deal. This will generally be
-- stored in the granularity of one second since deal serving starts at
-- seconds boundary. Any time specified with more granularity (e.g., in
-- milliseconds) will be truncated towards the start of time in seconds.
dAvailableStartTime :: Lens' Deal (Maybe UTCTime)
dAvailableStartTime
  = lens _dAvailableStartTime
      (\ s a -> s{_dAvailableStartTime = a})
      . mapping _DateTime

-- | The external deal ID assigned to this deal once the deal is finalized.
-- This is the deal ID that shows up in serving\/reporting etc.
-- \'OutputOnly
dExternalDealId :: Lens' Deal (Maybe Text)
dExternalDealId
  = lens _dExternalDealId
      (\ s a -> s{_dExternalDealId = a})

-- | Buyer private data (hidden from seller).
dBuyerPrivateData :: Lens' Deal (Maybe PrivateData)
dBuyerPrivateData
  = lens _dBuyerPrivateData
      (\ s a -> s{_dBuyerPrivateData = a})

-- | True, if the buyside inventory setup is complete for this deal.
-- \'OutputOnly
dIsSetupComplete :: Lens' Deal (Maybe Bool)
dIsSetupComplete
  = lens _dIsSetupComplete
      (\ s a -> s{_dIsSetupComplete = a})

-- | The web property code for the seller copied over from the product.
dWebPropertyCode :: Lens' Deal (Maybe Text)
dWebPropertyCode
  = lens _dWebPropertyCode
      (\ s a -> s{_dWebPropertyCode = a})

-- | The set of fields around delivery control that are interesting for a
-- buyer to see but are non-negotiable. These are set by the publisher.
dDeliveryControl :: Lens' Deal (Maybe DeliveryControl)
dDeliveryControl
  = lens _dDeliveryControl
      (\ s a -> s{_dDeliveryControl = a})

-- | Metadata about the serving status of this deal. \'OutputOnly
dDealServingMetadata :: Lens' Deal (Maybe DealServingMetadata)
dDealServingMetadata
  = lens _dDealServingMetadata
      (\ s a -> s{_dDealServingMetadata = a})

-- | ID of the proposal that this deal is part of. \'OutputOnly
dProposalId :: Lens' Deal (Maybe Text)
dProposalId
  = lens _dProposalId (\ s a -> s{_dProposalId = a})

-- | Specifies the subset of inventory targeted by the deal. \'OutputOnly
dTargeting :: Lens' Deal (Maybe MarketplaceTargeting)
dTargeting
  = lens _dTargeting (\ s a -> s{_dTargeting = a})

-- | A unique deal ID for the deal (server-assigned). \'OutputOnly
dDealId :: Lens' Deal (Maybe Text)
dDealId = lens _dDealId (\ s a -> s{_dDealId = a})

-- | Restricitions about the creatives associated with the deal (i.e., size)
-- This is available for Programmatic Guaranteed\/Preferred Deals in Ad
-- Manager. \'OutputOnly
dCreativeRestrictions :: Lens' Deal (Maybe CreativeRestrictions)
dCreativeRestrictions
  = lens _dCreativeRestrictions
      (\ s a -> s{_dCreativeRestrictions = a})

-- | The syndication product associated with the deal. Note: This field may
-- be set only when creating the resource. Modifying this field while
-- updating the resource will result in an error.
dSyndicationProduct :: Lens' Deal (Maybe DealSyndicationProduct)
dSyndicationProduct
  = lens _dSyndicationProduct
      (\ s a -> s{_dSyndicationProduct = a})

-- | Optional revision number of the product that the deal was created from.
-- If present on create, and the server \`product_revision\` has advanced
-- sinced the passed-in \`create_product_revision\`, an \`ABORTED\` error
-- will be returned. Note: This field may be set only when creating the
-- resource. Modifying this field while updating the resource will result
-- in an error.
dCreateProductRevision :: Lens' Deal (Maybe Int64)
dCreateProductRevision
  = lens _dCreateProductRevision
      (\ s a -> s{_dCreateProductRevision = a})
      . mapping _Coerce

-- | The time when the deal was last updated. \'OutputOnly
dUpdateTime :: Lens' Deal (Maybe UTCTime)
dUpdateTime
  = lens _dUpdateTime (\ s a -> s{_dUpdateTime = a}) .
      mapping _DateTime

-- | The shared targeting visible to buyers and sellers. Each shared
-- targeting entity is AND\'d together.
dTargetingCriterion :: Lens' Deal [TargetingCriteria]
dTargetingCriterion
  = lens _dTargetingCriterion
      (\ s a -> s{_dTargetingCriterion = a})
      . _Default
      . _Coerce

-- | Seller contact information for the deal. \'OutputOnly
dSellerContacts :: Lens' Deal [ContactInformation]
dSellerContacts
  = lens _dSellerContacts
      (\ s a -> s{_dSellerContacts = a})
      . _Default
      . _Coerce

-- | The product ID from which this deal was created. Note: This field may be
-- set only when creating the resource. Modifying this field while updating
-- the resource will result in an error.
dCreateProductId :: Lens' Deal (Maybe Text)
dCreateProductId
  = lens _dCreateProductId
      (\ s a -> s{_dCreateProductId = a})

-- | The name of the deal.
dDisplayName :: Lens' Deal (Maybe Text)
dDisplayName
  = lens _dDisplayName (\ s a -> s{_dDisplayName = a})

-- | Specifies the creative source for programmatic deals. PUBLISHER means
-- creative is provided by seller and ADVERTISER means creative is provided
-- by buyer. \'OutputOnly
dProgrammaticCreativeSource :: Lens' Deal (Maybe DealProgrammaticCreativeSource)
dProgrammaticCreativeSource
  = lens _dProgrammaticCreativeSource
      (\ s a -> s{_dProgrammaticCreativeSource = a})

-- | Proposed flight end time of the deal. This will generally be stored in a
-- granularity of a second. A value is not required for Private Auction
-- deals or Preferred Deals.
dAvailableEndTime :: Lens' Deal (Maybe UTCTime)
dAvailableEndTime
  = lens _dAvailableEndTime
      (\ s a -> s{_dAvailableEndTime = a})
      . mapping _DateTime

-- | Specifies the creative pre-approval policy. \'OutputOnly
dCreativePreApprovalPolicy :: Lens' Deal (Maybe DealCreativePreApprovalPolicy)
dCreativePreApprovalPolicy
  = lens _dCreativePreApprovalPolicy
      (\ s a -> s{_dCreativePreApprovalPolicy = a})

-- | Description for the deal terms.
dDescription :: Lens' Deal (Maybe Text)
dDescription
  = lens _dDescription (\ s a -> s{_dDescription = a})

-- | The time of the deal creation. \'OutputOnly
dCreateTime :: Lens' Deal (Maybe UTCTime)
dCreateTime
  = lens _dCreateTime (\ s a -> s{_dCreateTime = a}) .
      mapping _DateTime

-- | Specifies whether the creative is safeFrame compatible. \'OutputOnly
dCreativeSafeFrameCompatibility :: Lens' Deal (Maybe DealCreativeSafeFrameCompatibility)
dCreativeSafeFrameCompatibility
  = lens _dCreativeSafeFrameCompatibility
      (\ s a -> s{_dCreativeSafeFrameCompatibility = a})

-- | The negotiable terms of the deal.
dDealTerms :: Lens' Deal (Maybe DealTerms)
dDealTerms
  = lens _dDealTerms (\ s a -> s{_dDealTerms = a})

instance FromJSON Deal where
        parseJSON
          = withObject "Deal"
              (\ o ->
                 Deal' <$>
                   (o .:? "availableStartTime") <*>
                     (o .:? "externalDealId")
                     <*> (o .:? "buyerPrivateData")
                     <*> (o .:? "isSetupComplete")
                     <*> (o .:? "webPropertyCode")
                     <*> (o .:? "deliveryControl")
                     <*> (o .:? "dealServingMetadata")
                     <*> (o .:? "proposalId")
                     <*> (o .:? "targeting")
                     <*> (o .:? "dealId")
                     <*> (o .:? "creativeRestrictions")
                     <*> (o .:? "syndicationProduct")
                     <*> (o .:? "createProductRevision")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "targetingCriterion" .!= mempty)
                     <*> (o .:? "sellerContacts" .!= mempty)
                     <*> (o .:? "createProductId")
                     <*> (o .:? "displayName")
                     <*> (o .:? "programmaticCreativeSource")
                     <*> (o .:? "availableEndTime")
                     <*> (o .:? "creativePreApprovalPolicy")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime")
                     <*> (o .:? "creativeSafeFrameCompatibility")
                     <*> (o .:? "dealTerms"))

instance ToJSON Deal where
        toJSON Deal'{..}
          = object
              (catMaybes
                 [("availableStartTime" .=) <$> _dAvailableStartTime,
                  ("externalDealId" .=) <$> _dExternalDealId,
                  ("buyerPrivateData" .=) <$> _dBuyerPrivateData,
                  ("isSetupComplete" .=) <$> _dIsSetupComplete,
                  ("webPropertyCode" .=) <$> _dWebPropertyCode,
                  ("deliveryControl" .=) <$> _dDeliveryControl,
                  ("dealServingMetadata" .=) <$> _dDealServingMetadata,
                  ("proposalId" .=) <$> _dProposalId,
                  ("targeting" .=) <$> _dTargeting,
                  ("dealId" .=) <$> _dDealId,
                  ("creativeRestrictions" .=) <$>
                    _dCreativeRestrictions,
                  ("syndicationProduct" .=) <$> _dSyndicationProduct,
                  ("createProductRevision" .=) <$>
                    _dCreateProductRevision,
                  ("updateTime" .=) <$> _dUpdateTime,
                  ("targetingCriterion" .=) <$> _dTargetingCriterion,
                  ("sellerContacts" .=) <$> _dSellerContacts,
                  ("createProductId" .=) <$> _dCreateProductId,
                  ("displayName" .=) <$> _dDisplayName,
                  ("programmaticCreativeSource" .=) <$>
                    _dProgrammaticCreativeSource,
                  ("availableEndTime" .=) <$> _dAvailableEndTime,
                  ("creativePreApprovalPolicy" .=) <$>
                    _dCreativePreApprovalPolicy,
                  ("description" .=) <$> _dDescription,
                  ("createTime" .=) <$> _dCreateTime,
                  ("creativeSafeFrameCompatibility" .=) <$>
                    _dCreativeSafeFrameCompatibility,
                  ("dealTerms" .=) <$> _dDealTerms])

-- | Represents creative restrictions associated to Programmatic Guaranteed\/
-- Preferred Deal in Ad Manager. This doesn\'t apply to Private Auction and
-- AdX Preferred Deals.
--
-- /See:/ 'creativeRestrictions' smart constructor.
data CreativeRestrictions = CreativeRestrictions'
    { _crCreativeFormat         :: !(Maybe CreativeRestrictionsCreativeFormat)
    , _crSkippableAdType        :: !(Maybe CreativeRestrictionsSkippableAdType)
    , _crCreativeSpecifications :: !(Maybe [CreativeSpecification])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeRestrictions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crCreativeFormat'
--
-- * 'crSkippableAdType'
--
-- * 'crCreativeSpecifications'
creativeRestrictions
    :: CreativeRestrictions
creativeRestrictions =
    CreativeRestrictions'
    { _crCreativeFormat = Nothing
    , _crSkippableAdType = Nothing
    , _crCreativeSpecifications = Nothing
    }

-- | The format of the environment that the creatives will be displayed in.
crCreativeFormat :: Lens' CreativeRestrictions (Maybe CreativeRestrictionsCreativeFormat)
crCreativeFormat
  = lens _crCreativeFormat
      (\ s a -> s{_crCreativeFormat = a})

-- | Skippable video ads allow viewers to skip ads after 5 seconds.
crSkippableAdType :: Lens' CreativeRestrictions (Maybe CreativeRestrictionsSkippableAdType)
crSkippableAdType
  = lens _crSkippableAdType
      (\ s a -> s{_crSkippableAdType = a})

crCreativeSpecifications :: Lens' CreativeRestrictions [CreativeSpecification]
crCreativeSpecifications
  = lens _crCreativeSpecifications
      (\ s a -> s{_crCreativeSpecifications = a})
      . _Default
      . _Coerce

instance FromJSON CreativeRestrictions where
        parseJSON
          = withObject "CreativeRestrictions"
              (\ o ->
                 CreativeRestrictions' <$>
                   (o .:? "creativeFormat") <*>
                     (o .:? "skippableAdType")
                     <*> (o .:? "creativeSpecifications" .!= mempty))

instance ToJSON CreativeRestrictions where
        toJSON CreativeRestrictions'{..}
          = object
              (catMaybes
                 [("creativeFormat" .=) <$> _crCreativeFormat,
                  ("skippableAdType" .=) <$> _crSkippableAdType,
                  ("creativeSpecifications" .=) <$>
                    _crCreativeSpecifications])

-- | Note: this resource requires whitelisting for access. Please contact
-- your account manager for access to Marketplace resources. Represents a
-- proposal in the Marketplace. A proposal is the unit of negotiation
-- between a seller and a buyer and contains deals which are served. Note:
-- you can not update, create, or otherwise modify Private Auction or
-- Preferred Deals deals through the API. Fields are updatable unless noted
-- otherwise.
--
-- /See:/ 'proposal' smart constructor.
data Proposal = Proposal'
    { _pBuyerPrivateData           :: !(Maybe PrivateData)
    , _pIsSetupComplete            :: !(Maybe Bool)
    , _pDeals                      :: !(Maybe [Deal])
    , _pProposalRevision           :: !(Maybe (Textual Int64))
    , _pBuyerContacts              :: !(Maybe [ContactInformation])
    , _pOriginatorRole             :: !(Maybe ProposalOriginatorRole)
    , _pBilledBuyer                :: !(Maybe Buyer)
    , _pPrivateAuctionId           :: !(Maybe Text)
    , _pIsRenegotiating            :: !(Maybe Bool)
    , _pSeller                     :: !(Maybe Seller)
    , _pProposalId                 :: !(Maybe Text)
    , _pUpdateTime                 :: !(Maybe DateTime')
    , _pSellerContacts             :: !(Maybe [ContactInformation])
    , _pDisplayName                :: !(Maybe Text)
    , _pNotes                      :: !(Maybe [Note])
    , _pProposalState              :: !(Maybe ProposalProposalState)
    , _pLastUpdaterOrCommentorRole :: !(Maybe ProposalLastUpdaterOrCommentorRole)
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
-- * 'pDeals'
--
-- * 'pProposalRevision'
--
-- * 'pBuyerContacts'
--
-- * 'pOriginatorRole'
--
-- * 'pBilledBuyer'
--
-- * 'pPrivateAuctionId'
--
-- * 'pIsRenegotiating'
--
-- * 'pSeller'
--
-- * 'pProposalId'
--
-- * 'pUpdateTime'
--
-- * 'pSellerContacts'
--
-- * 'pDisplayName'
--
-- * 'pNotes'
--
-- * 'pProposalState'
--
-- * 'pLastUpdaterOrCommentorRole'
--
-- * 'pBuyer'
proposal
    :: Proposal
proposal =
    Proposal'
    { _pBuyerPrivateData = Nothing
    , _pIsSetupComplete = Nothing
    , _pDeals = Nothing
    , _pProposalRevision = Nothing
    , _pBuyerContacts = Nothing
    , _pOriginatorRole = Nothing
    , _pBilledBuyer = Nothing
    , _pPrivateAuctionId = Nothing
    , _pIsRenegotiating = Nothing
    , _pSeller = Nothing
    , _pProposalId = Nothing
    , _pUpdateTime = Nothing
    , _pSellerContacts = Nothing
    , _pDisplayName = Nothing
    , _pNotes = Nothing
    , _pProposalState = Nothing
    , _pLastUpdaterOrCommentorRole = Nothing
    , _pBuyer = Nothing
    }

-- | Private data for buyer. (hidden from seller).
pBuyerPrivateData :: Lens' Proposal (Maybe PrivateData)
pBuyerPrivateData
  = lens _pBuyerPrivateData
      (\ s a -> s{_pBuyerPrivateData = a})

-- | True, if the buyside inventory setup is complete for this proposal.
-- \'OutputOnly
pIsSetupComplete :: Lens' Proposal (Maybe Bool)
pIsSetupComplete
  = lens _pIsSetupComplete
      (\ s a -> s{_pIsSetupComplete = a})

-- | The deals associated with this proposal. For Private Auction proposals
-- (whose deals have NonGuaranteedAuctionTerms), there will only be one
-- deal.
pDeals :: Lens' Proposal [Deal]
pDeals
  = lens _pDeals (\ s a -> s{_pDeals = a}) . _Default .
      _Coerce

-- | The revision number for the proposal. Each update to the proposal or the
-- deal causes the proposal revision number to auto-increment. The buyer
-- keeps track of the last revision number they know of and pass it in when
-- making an update. If the head revision number on the server has since
-- incremented, then an ABORTED error is returned during the update
-- operation to let the buyer know that a subsequent update was made.
-- \'OutputOnly
pProposalRevision :: Lens' Proposal (Maybe Int64)
pProposalRevision
  = lens _pProposalRevision
      (\ s a -> s{_pProposalRevision = a})
      . mapping _Coerce

-- | Contact information for the buyer.
pBuyerContacts :: Lens' Proposal [ContactInformation]
pBuyerContacts
  = lens _pBuyerContacts
      (\ s a -> s{_pBuyerContacts = a})
      . _Default
      . _Coerce

-- | Indicates whether the buyer\/seller created the proposal. \'OutputOnly
pOriginatorRole :: Lens' Proposal (Maybe ProposalOriginatorRole)
pOriginatorRole
  = lens _pOriginatorRole
      (\ s a -> s{_pOriginatorRole = a})

-- | Reference to the buyer that will get billed for this proposal.
-- \'OutputOnly
pBilledBuyer :: Lens' Proposal (Maybe Buyer)
pBilledBuyer
  = lens _pBilledBuyer (\ s a -> s{_pBilledBuyer = a})

-- | Private auction ID if this proposal is a private auction proposal.
-- \'OutputOnly
pPrivateAuctionId :: Lens' Proposal (Maybe Text)
pPrivateAuctionId
  = lens _pPrivateAuctionId
      (\ s a -> s{_pPrivateAuctionId = a})

-- | True if the proposal is being renegotiated. \'OutputOnly
pIsRenegotiating :: Lens' Proposal (Maybe Bool)
pIsRenegotiating
  = lens _pIsRenegotiating
      (\ s a -> s{_pIsRenegotiating = a})

-- | Reference to the seller on the proposal. Note: This field may be set
-- only when creating the resource. Modifying this field while updating the
-- resource will result in an error.
pSeller :: Lens' Proposal (Maybe Seller)
pSeller = lens _pSeller (\ s a -> s{_pSeller = a})

-- | The unique ID of the proposal. \'OutputOnly
pProposalId :: Lens' Proposal (Maybe Text)
pProposalId
  = lens _pProposalId (\ s a -> s{_pProposalId = a})

-- | The time when the proposal was last revised. \'OutputOnly
pUpdateTime :: Lens' Proposal (Maybe UTCTime)
pUpdateTime
  = lens _pUpdateTime (\ s a -> s{_pUpdateTime = a}) .
      mapping _DateTime

-- | Contact information for the seller. \'OutputOnly
pSellerContacts :: Lens' Proposal [ContactInformation]
pSellerContacts
  = lens _pSellerContacts
      (\ s a -> s{_pSellerContacts = a})
      . _Default
      . _Coerce

-- | The name for the proposal.
pDisplayName :: Lens' Proposal (Maybe Text)
pDisplayName
  = lens _pDisplayName (\ s a -> s{_pDisplayName = a})

-- | The notes associated with this proposal. \'OutputOnly
pNotes :: Lens' Proposal [Note]
pNotes
  = lens _pNotes (\ s a -> s{_pNotes = a}) . _Default .
      _Coerce

-- | The current state of the proposal. \'OutputOnly
pProposalState :: Lens' Proposal (Maybe ProposalProposalState)
pProposalState
  = lens _pProposalState
      (\ s a -> s{_pProposalState = a})

-- | The role of the last user that either updated the proposal or left a
-- comment. \'OutputOnly
pLastUpdaterOrCommentorRole :: Lens' Proposal (Maybe ProposalLastUpdaterOrCommentorRole)
pLastUpdaterOrCommentorRole
  = lens _pLastUpdaterOrCommentorRole
      (\ s a -> s{_pLastUpdaterOrCommentorRole = a})

-- | Reference to the buyer on the proposal. Note: This field may be set only
-- when creating the resource. Modifying this field while updating the
-- resource will result in an error.
pBuyer :: Lens' Proposal (Maybe Buyer)
pBuyer = lens _pBuyer (\ s a -> s{_pBuyer = a})

instance FromJSON Proposal where
        parseJSON
          = withObject "Proposal"
              (\ o ->
                 Proposal' <$>
                   (o .:? "buyerPrivateData") <*>
                     (o .:? "isSetupComplete")
                     <*> (o .:? "deals" .!= mempty)
                     <*> (o .:? "proposalRevision")
                     <*> (o .:? "buyerContacts" .!= mempty)
                     <*> (o .:? "originatorRole")
                     <*> (o .:? "billedBuyer")
                     <*> (o .:? "privateAuctionId")
                     <*> (o .:? "isRenegotiating")
                     <*> (o .:? "seller")
                     <*> (o .:? "proposalId")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "sellerContacts" .!= mempty)
                     <*> (o .:? "displayName")
                     <*> (o .:? "notes" .!= mempty)
                     <*> (o .:? "proposalState")
                     <*> (o .:? "lastUpdaterOrCommentorRole")
                     <*> (o .:? "buyer"))

instance ToJSON Proposal where
        toJSON Proposal'{..}
          = object
              (catMaybes
                 [("buyerPrivateData" .=) <$> _pBuyerPrivateData,
                  ("isSetupComplete" .=) <$> _pIsSetupComplete,
                  ("deals" .=) <$> _pDeals,
                  ("proposalRevision" .=) <$> _pProposalRevision,
                  ("buyerContacts" .=) <$> _pBuyerContacts,
                  ("originatorRole" .=) <$> _pOriginatorRole,
                  ("billedBuyer" .=) <$> _pBilledBuyer,
                  ("privateAuctionId" .=) <$> _pPrivateAuctionId,
                  ("isRenegotiating" .=) <$> _pIsRenegotiating,
                  ("seller" .=) <$> _pSeller,
                  ("proposalId" .=) <$> _pProposalId,
                  ("updateTime" .=) <$> _pUpdateTime,
                  ("sellerContacts" .=) <$> _pSellerContacts,
                  ("displayName" .=) <$> _pDisplayName,
                  ("notes" .=) <$> _pNotes,
                  ("proposalState" .=) <$> _pProposalState,
                  ("lastUpdaterOrCommentorRole" .=) <$>
                    _pLastUpdaterOrCommentorRole,
                  ("buyer" .=) <$> _pBuyer])

-- | A relative date range, specified by an offset and a duration. The
-- supported range of dates begins 30 days before today and ends today,
-- i.e., the limits for these values are: offset_days >= 0 duration_days >=
-- 1 offset_days + duration_days \<= 30
--
-- /See:/ 'relativeDateRange' smart constructor.
data RelativeDateRange = RelativeDateRange'
    { _rdrOffSetDays   :: !(Maybe (Textual Int32))
    , _rdrDurationDays :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelativeDateRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdrOffSetDays'
--
-- * 'rdrDurationDays'
relativeDateRange
    :: RelativeDateRange
relativeDateRange =
    RelativeDateRange'
    { _rdrOffSetDays = Nothing
    , _rdrDurationDays = Nothing
    }

-- | The end date of the filter set, specified as the number of days before
-- today, e.g., for a range where the last date is today: 0.
rdrOffSetDays :: Lens' RelativeDateRange (Maybe Int32)
rdrOffSetDays
  = lens _rdrOffSetDays
      (\ s a -> s{_rdrOffSetDays = a})
      . mapping _Coerce

-- | The number of days in the requested date range, e.g., for a range
-- spanning today: 1. For a range spanning the last 7 days: 7.
rdrDurationDays :: Lens' RelativeDateRange (Maybe Int32)
rdrDurationDays
  = lens _rdrDurationDays
      (\ s a -> s{_rdrDurationDays = a})
      . mapping _Coerce

instance FromJSON RelativeDateRange where
        parseJSON
          = withObject "RelativeDateRange"
              (\ o ->
                 RelativeDateRange' <$>
                   (o .:? "offsetDays") <*> (o .:? "durationDays"))

instance ToJSON RelativeDateRange where
        toJSON RelativeDateRange'{..}
          = object
              (catMaybes
                 [("offsetDays" .=) <$> _rdrOffSetDays,
                  ("durationDays" .=) <$> _rdrDurationDays])

-- | Request message to pause serving for an already-finalized proposal.
--
-- /See:/ 'pauseProposalRequest' smart constructor.
newtype PauseProposalRequest = PauseProposalRequest'
    { _pprReason :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PauseProposalRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pprReason'
pauseProposalRequest
    :: PauseProposalRequest
pauseProposalRequest =
    PauseProposalRequest'
    { _pprReason = Nothing
    }

-- | The reason why the proposal is being paused. This human readable message
-- will be displayed in the seller\'s UI. (Max length: 100 unicode code
-- units.)
pprReason :: Lens' PauseProposalRequest (Maybe Text)
pprReason
  = lens _pprReason (\ s a -> s{_pprReason = a})

instance FromJSON PauseProposalRequest where
        parseJSON
          = withObject "PauseProposalRequest"
              (\ o -> PauseProposalRequest' <$> (o .:? "reason"))

instance ToJSON PauseProposalRequest where
        toJSON PauseProposalRequest'{..}
          = object (catMaybes [("reason" .=) <$> _pprReason])

-- | Represents a list of targeted and excluded mobile application IDs that
-- publishers own. Mobile application IDs are from App Store and Google
-- Play Store. Android App ID, for example, com.google.android.apps.maps,
-- can be found in Google Play Store URL. iOS App ID (which is a number)
-- can be found at the end of iTunes store URL. First party mobile
-- applications is either included or excluded.
--
-- /See:/ 'firstPartyMobileApplicationTargeting' smart constructor.
data FirstPartyMobileApplicationTargeting = FirstPartyMobileApplicationTargeting'
    { _fpmatTargetedAppIds :: !(Maybe [Text])
    , _fpmatExcludedAppIds :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FirstPartyMobileApplicationTargeting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fpmatTargetedAppIds'
--
-- * 'fpmatExcludedAppIds'
firstPartyMobileApplicationTargeting
    :: FirstPartyMobileApplicationTargeting
firstPartyMobileApplicationTargeting =
    FirstPartyMobileApplicationTargeting'
    { _fpmatTargetedAppIds = Nothing
    , _fpmatExcludedAppIds = Nothing
    }

-- | A list of application IDs to be included.
fpmatTargetedAppIds :: Lens' FirstPartyMobileApplicationTargeting [Text]
fpmatTargetedAppIds
  = lens _fpmatTargetedAppIds
      (\ s a -> s{_fpmatTargetedAppIds = a})
      . _Default
      . _Coerce

-- | A list of application IDs to be excluded.
fpmatExcludedAppIds :: Lens' FirstPartyMobileApplicationTargeting [Text]
fpmatExcludedAppIds
  = lens _fpmatExcludedAppIds
      (\ s a -> s{_fpmatExcludedAppIds = a})
      . _Default
      . _Coerce

instance FromJSON
         FirstPartyMobileApplicationTargeting where
        parseJSON
          = withObject "FirstPartyMobileApplicationTargeting"
              (\ o ->
                 FirstPartyMobileApplicationTargeting' <$>
                   (o .:? "targetedAppIds" .!= mempty) <*>
                     (o .:? "excludedAppIds" .!= mempty))

instance ToJSON FirstPartyMobileApplicationTargeting
         where
        toJSON FirstPartyMobileApplicationTargeting'{..}
          = object
              (catMaybes
                 [("targetedAppIds" .=) <$> _fpmatTargetedAppIds,
                  ("excludedAppIds" .=) <$> _fpmatExcludedAppIds])

-- | A metric value, with an expected value and a variance; represents a
-- count that may be either exact or estimated (i.e. when sampled).
--
-- /See:/ 'metricValue' smart constructor.
data MetricValue = MetricValue'
    { _mvValue    :: !(Maybe (Textual Int64))
    , _mvVariance :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetricValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvValue'
--
-- * 'mvVariance'
metricValue
    :: MetricValue
metricValue =
    MetricValue'
    { _mvValue = Nothing
    , _mvVariance = Nothing
    }

-- | The expected value of the metric.
mvValue :: Lens' MetricValue (Maybe Int64)
mvValue
  = lens _mvValue (\ s a -> s{_mvValue = a}) .
      mapping _Coerce

-- | The variance (i.e. square of the standard deviation) of the metric
-- value. If value is exact, variance is 0. Can be used to calculate margin
-- of error as a percentage of value, using the following formula, where Z
-- is the standard constant that depends on the desired size of the
-- confidence interval (e.g. for 90% confidence interval, use Z = 1.645):
-- marginOfError = 100 * Z * sqrt(variance) \/ value
mvVariance :: Lens' MetricValue (Maybe Int64)
mvVariance
  = lens _mvVariance (\ s a -> s{_mvVariance = a}) .
      mapping _Coerce

instance FromJSON MetricValue where
        parseJSON
          = withObject "MetricValue"
              (\ o ->
                 MetricValue' <$>
                   (o .:? "value") <*> (o .:? "variance"))

instance ToJSON MetricValue where
        toJSON MetricValue'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _mvValue,
                  ("variance" .=) <$> _mvVariance])

-- | Request message for indicating that the proposal\'s setup step is
-- complete.
--
-- /See:/ 'completeSetupRequest' smart constructor.
data CompleteSetupRequest =
    CompleteSetupRequest'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CompleteSetupRequest' with the minimum fields required to make a request.
--
completeSetupRequest
    :: CompleteSetupRequest
completeSetupRequest = CompleteSetupRequest'

instance FromJSON CompleteSetupRequest where
        parseJSON
          = withObject "CompleteSetupRequest"
              (\ o -> pure CompleteSetupRequest')

instance ToJSON CompleteSetupRequest where
        toJSON = const emptyObject

-- | The number of filtered bids with the specified dimension values that
-- have the specified creative.
--
-- /See:/ 'filteredBidCreativeRow' smart constructor.
data FilteredBidCreativeRow = FilteredBidCreativeRow'
    { _fbcrCreativeId    :: !(Maybe Text)
    , _fbcrRowDimensions :: !(Maybe RowDimensions)
    , _fbcrBidCount      :: !(Maybe MetricValue)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilteredBidCreativeRow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fbcrCreativeId'
--
-- * 'fbcrRowDimensions'
--
-- * 'fbcrBidCount'
filteredBidCreativeRow
    :: FilteredBidCreativeRow
filteredBidCreativeRow =
    FilteredBidCreativeRow'
    { _fbcrCreativeId = Nothing
    , _fbcrRowDimensions = Nothing
    , _fbcrBidCount = Nothing
    }

-- | The ID of the creative.
fbcrCreativeId :: Lens' FilteredBidCreativeRow (Maybe Text)
fbcrCreativeId
  = lens _fbcrCreativeId
      (\ s a -> s{_fbcrCreativeId = a})

-- | The values of all dimensions associated with metric values in this row.
fbcrRowDimensions :: Lens' FilteredBidCreativeRow (Maybe RowDimensions)
fbcrRowDimensions
  = lens _fbcrRowDimensions
      (\ s a -> s{_fbcrRowDimensions = a})

-- | The number of bids with the specified creative.
fbcrBidCount :: Lens' FilteredBidCreativeRow (Maybe MetricValue)
fbcrBidCount
  = lens _fbcrBidCount (\ s a -> s{_fbcrBidCount = a})

instance FromJSON FilteredBidCreativeRow where
        parseJSON
          = withObject "FilteredBidCreativeRow"
              (\ o ->
                 FilteredBidCreativeRow' <$>
                   (o .:? "creativeId") <*> (o .:? "rowDimensions") <*>
                     (o .:? "bidCount"))

instance ToJSON FilteredBidCreativeRow where
        toJSON FilteredBidCreativeRow'{..}
          = object
              (catMaybes
                 [("creativeId" .=) <$> _fbcrCreativeId,
                  ("rowDimensions" .=) <$> _fbcrRowDimensions,
                  ("bidCount" .=) <$> _fbcrBidCount])

-- | \'OutputOnly The Geo criteria the restriction applies to.
--
-- /See:/ 'locationContext' smart constructor.
newtype LocationContext = LocationContext'
    { _lcGeoCriteriaIds :: Maybe [Textual Int32]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocationContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcGeoCriteriaIds'
locationContext
    :: LocationContext
locationContext =
    LocationContext'
    { _lcGeoCriteriaIds = Nothing
    }

-- | IDs representing the geo location for this context. Please refer to the
-- [geo-table.csv](https:\/\/storage.googleapis.com\/adx-rtb-dictionaries\/geo-table.csv)
-- file for different geo criteria IDs.
lcGeoCriteriaIds :: Lens' LocationContext [Int32]
lcGeoCriteriaIds
  = lens _lcGeoCriteriaIds
      (\ s a -> s{_lcGeoCriteriaIds = a})
      . _Default
      . _Coerce

instance FromJSON LocationContext where
        parseJSON
          = withObject "LocationContext"
              (\ o ->
                 LocationContext' <$>
                   (o .:? "geoCriteriaIds" .!= mempty))

instance ToJSON LocationContext where
        toJSON LocationContext'{..}
          = object
              (catMaybes
                 [("geoCriteriaIds" .=) <$> _lcGeoCriteriaIds])

-- | Advertisers can target different attributes of an ad slot. For example,
-- they can choose to show ads only if the user is in the U.S. Such
-- targeting criteria can be specified as part of Shared Targeting.
--
-- /See:/ 'targetingCriteria' smart constructor.
data TargetingCriteria = TargetingCriteria'
    { _tcKey        :: !(Maybe Text)
    , _tcExclusions :: !(Maybe [TargetingValue])
    , _tcInclusions :: !(Maybe [TargetingValue])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetingCriteria' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcKey'
--
-- * 'tcExclusions'
--
-- * 'tcInclusions'
targetingCriteria
    :: TargetingCriteria
targetingCriteria =
    TargetingCriteria'
    { _tcKey = Nothing
    , _tcExclusions = Nothing
    , _tcInclusions = Nothing
    }

-- | The key representing the shared targeting criterion. Targeting criteria
-- defined by Google ad servers will begin with GOOG_. Third parties may
-- define their own keys. A list of permissible keys along with the
-- acceptable values will be provided as part of the external
-- documentation.
tcKey :: Lens' TargetingCriteria (Maybe Text)
tcKey = lens _tcKey (\ s a -> s{_tcKey = a})

-- | The list of values to exclude from targeting. Each value is AND\'d
-- together.
tcExclusions :: Lens' TargetingCriteria [TargetingValue]
tcExclusions
  = lens _tcExclusions (\ s a -> s{_tcExclusions = a})
      . _Default
      . _Coerce

-- | The list of value to include as part of the targeting. Each value is
-- OR\'d together.
tcInclusions :: Lens' TargetingCriteria [TargetingValue]
tcInclusions
  = lens _tcInclusions (\ s a -> s{_tcInclusions = a})
      . _Default
      . _Coerce

instance FromJSON TargetingCriteria where
        parseJSON
          = withObject "TargetingCriteria"
              (\ o ->
                 TargetingCriteria' <$>
                   (o .:? "key") <*> (o .:? "exclusions" .!= mempty) <*>
                     (o .:? "inclusions" .!= mempty))

instance ToJSON TargetingCriteria where
        toJSON TargetingCriteria'{..}
          = object
              (catMaybes
                 [("key" .=) <$> _tcKey,
                  ("exclusions" .=) <$> _tcExclusions,
                  ("inclusions" .=) <$> _tcInclusions])

-- | The number of impressions with the specified dimension values where the
-- corresponding bid request or bid response was not successful, as
-- described by the specified callout status.
--
-- /See:/ 'calloutStatusRow' smart constructor.
data CalloutStatusRow = CalloutStatusRow'
    { _cRowDimensions   :: !(Maybe RowDimensions)
    , _cCalloutStatusId :: !(Maybe (Textual Int32))
    , _cImpressionCount :: !(Maybe MetricValue)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CalloutStatusRow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cRowDimensions'
--
-- * 'cCalloutStatusId'
--
-- * 'cImpressionCount'
calloutStatusRow
    :: CalloutStatusRow
calloutStatusRow =
    CalloutStatusRow'
    { _cRowDimensions = Nothing
    , _cCalloutStatusId = Nothing
    , _cImpressionCount = Nothing
    }

-- | The values of all dimensions associated with metric values in this row.
cRowDimensions :: Lens' CalloutStatusRow (Maybe RowDimensions)
cRowDimensions
  = lens _cRowDimensions
      (\ s a -> s{_cRowDimensions = a})

-- | The ID of the callout status. See
-- [callout-status-codes](https:\/\/developers.google.com\/authorized-buyers\/rtb\/downloads\/callout-status-codes).
cCalloutStatusId :: Lens' CalloutStatusRow (Maybe Int32)
cCalloutStatusId
  = lens _cCalloutStatusId
      (\ s a -> s{_cCalloutStatusId = a})
      . mapping _Coerce

-- | The number of impressions for which there was a bid request or bid
-- response with the specified callout status.
cImpressionCount :: Lens' CalloutStatusRow (Maybe MetricValue)
cImpressionCount
  = lens _cImpressionCount
      (\ s a -> s{_cImpressionCount = a})

instance FromJSON CalloutStatusRow where
        parseJSON
          = withObject "CalloutStatusRow"
              (\ o ->
                 CalloutStatusRow' <$>
                   (o .:? "rowDimensions") <*> (o .:? "calloutStatusId")
                     <*> (o .:? "impressionCount"))

instance ToJSON CalloutStatusRow where
        toJSON CalloutStatusRow'{..}
          = object
              (catMaybes
                 [("rowDimensions" .=) <$> _cRowDimensions,
                  ("calloutStatusId" .=) <$> _cCalloutStatusId,
                  ("impressionCount" .=) <$> _cImpressionCount])

-- | Represents a list of targeted and excluded URLs (e.g., google.com). For
-- Private Auction and AdX Preferred Deals, URLs are either included or
-- excluded. For Programmatic Guaranteed and Preferred Deals, this doesn\'t
-- apply.
--
-- /See:/ 'urlTargeting' smart constructor.
data URLTargeting = URLTargeting'
    { _utTargetedURLs :: !(Maybe [Text])
    , _utExcludedURLs :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLTargeting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utTargetedURLs'
--
-- * 'utExcludedURLs'
urlTargeting
    :: URLTargeting
urlTargeting =
    URLTargeting'
    { _utTargetedURLs = Nothing
    , _utExcludedURLs = Nothing
    }

-- | A list of URLs to be included.
utTargetedURLs :: Lens' URLTargeting [Text]
utTargetedURLs
  = lens _utTargetedURLs
      (\ s a -> s{_utTargetedURLs = a})
      . _Default
      . _Coerce

-- | A list of URLs to be excluded.
utExcludedURLs :: Lens' URLTargeting [Text]
utExcludedURLs
  = lens _utExcludedURLs
      (\ s a -> s{_utExcludedURLs = a})
      . _Default
      . _Coerce

instance FromJSON URLTargeting where
        parseJSON
          = withObject "URLTargeting"
              (\ o ->
                 URLTargeting' <$>
                   (o .:? "targetedUrls" .!= mempty) <*>
                     (o .:? "excludedUrls" .!= mempty))

instance ToJSON URLTargeting where
        toJSON URLTargeting'{..}
          = object
              (catMaybes
                 [("targetedUrls" .=) <$> _utTargetedURLs,
                  ("excludedUrls" .=) <$> _utExcludedURLs])

-- | The number of impressions with the specified dimension values that were
-- considered to have no applicable bids, as described by the specified
-- status.
--
-- /See:/ 'bidResponseWithoutBidsStatusRow' smart constructor.
data BidResponseWithoutBidsStatusRow = BidResponseWithoutBidsStatusRow'
    { _brwbsrStatus          :: !(Maybe BidResponseWithoutBidsStatusRowStatus)
    , _brwbsrRowDimensions   :: !(Maybe RowDimensions)
    , _brwbsrImpressionCount :: !(Maybe MetricValue)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BidResponseWithoutBidsStatusRow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brwbsrStatus'
--
-- * 'brwbsrRowDimensions'
--
-- * 'brwbsrImpressionCount'
bidResponseWithoutBidsStatusRow
    :: BidResponseWithoutBidsStatusRow
bidResponseWithoutBidsStatusRow =
    BidResponseWithoutBidsStatusRow'
    { _brwbsrStatus = Nothing
    , _brwbsrRowDimensions = Nothing
    , _brwbsrImpressionCount = Nothing
    }

-- | The status specifying why the bid responses were considered to have no
-- applicable bids.
brwbsrStatus :: Lens' BidResponseWithoutBidsStatusRow (Maybe BidResponseWithoutBidsStatusRowStatus)
brwbsrStatus
  = lens _brwbsrStatus (\ s a -> s{_brwbsrStatus = a})

-- | The values of all dimensions associated with metric values in this row.
brwbsrRowDimensions :: Lens' BidResponseWithoutBidsStatusRow (Maybe RowDimensions)
brwbsrRowDimensions
  = lens _brwbsrRowDimensions
      (\ s a -> s{_brwbsrRowDimensions = a})

-- | The number of impressions for which there was a bid response with the
-- specified status.
brwbsrImpressionCount :: Lens' BidResponseWithoutBidsStatusRow (Maybe MetricValue)
brwbsrImpressionCount
  = lens _brwbsrImpressionCount
      (\ s a -> s{_brwbsrImpressionCount = a})

instance FromJSON BidResponseWithoutBidsStatusRow
         where
        parseJSON
          = withObject "BidResponseWithoutBidsStatusRow"
              (\ o ->
                 BidResponseWithoutBidsStatusRow' <$>
                   (o .:? "status") <*> (o .:? "rowDimensions") <*>
                     (o .:? "impressionCount"))

instance ToJSON BidResponseWithoutBidsStatusRow where
        toJSON BidResponseWithoutBidsStatusRow'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _brwbsrStatus,
                  ("rowDimensions" .=) <$> _brwbsrRowDimensions,
                  ("impressionCount" .=) <$> _brwbsrImpressionCount])

-- | A set of filters that is applied to a request for data. Within a filter
-- set, an AND operation is performed across the filters represented by
-- each field. An OR operation is performed across the filters represented
-- by the multiple values of a repeated field, e.g., \"format=VIDEO AND
-- deal_id=12 AND (seller_network_id=34 OR seller_network_id=56)\".
--
-- /See:/ 'filterSet' smart constructor.
data FilterSet = FilterSet'
    { _fsPlatforms             :: !(Maybe [Text])
    , _fsRealtimeTimeRange     :: !(Maybe RealtimeTimeRange)
    , _fsEnvironment           :: !(Maybe FilterSetEnvironment)
    , _fsFormats               :: !(Maybe [Text])
    , _fsCreativeId            :: !(Maybe Text)
    , _fsBreakdownDimensions   :: !(Maybe [Text])
    , _fsSellerNetworkIds      :: !(Maybe [Textual Int32])
    , _fsDealId                :: !(Maybe (Textual Int64))
    , _fsAbsoluteDateRange     :: !(Maybe AbsoluteDateRange)
    , _fsName                  :: !(Maybe Text)
    , _fsRelativeDateRange     :: !(Maybe RelativeDateRange)
    , _fsTimeSeriesGranularity :: !(Maybe FilterSetTimeSeriesGranularity)
    , _fsPublisherIdentifiers  :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilterSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fsPlatforms'
--
-- * 'fsRealtimeTimeRange'
--
-- * 'fsEnvironment'
--
-- * 'fsFormats'
--
-- * 'fsCreativeId'
--
-- * 'fsBreakdownDimensions'
--
-- * 'fsSellerNetworkIds'
--
-- * 'fsDealId'
--
-- * 'fsAbsoluteDateRange'
--
-- * 'fsName'
--
-- * 'fsRelativeDateRange'
--
-- * 'fsTimeSeriesGranularity'
--
-- * 'fsPublisherIdentifiers'
filterSet
    :: FilterSet
filterSet =
    FilterSet'
    { _fsPlatforms = Nothing
    , _fsRealtimeTimeRange = Nothing
    , _fsEnvironment = Nothing
    , _fsFormats = Nothing
    , _fsCreativeId = Nothing
    , _fsBreakdownDimensions = Nothing
    , _fsSellerNetworkIds = Nothing
    , _fsDealId = Nothing
    , _fsAbsoluteDateRange = Nothing
    , _fsName = Nothing
    , _fsRelativeDateRange = Nothing
    , _fsTimeSeriesGranularity = Nothing
    , _fsPublisherIdentifiers = Nothing
    }

-- | The list of platforms on which to filter; may be empty. The filters
-- represented by multiple platforms are ORed together (i.e., if non-empty,
-- results must match any one of the platforms).
fsPlatforms :: Lens' FilterSet [Text]
fsPlatforms
  = lens _fsPlatforms (\ s a -> s{_fsPlatforms = a}) .
      _Default
      . _Coerce

-- | An open-ended realtime time range, defined by the aggregation start
-- timestamp.
fsRealtimeTimeRange :: Lens' FilterSet (Maybe RealtimeTimeRange)
fsRealtimeTimeRange
  = lens _fsRealtimeTimeRange
      (\ s a -> s{_fsRealtimeTimeRange = a})

-- | The environment on which to filter; optional.
fsEnvironment :: Lens' FilterSet (Maybe FilterSetEnvironment)
fsEnvironment
  = lens _fsEnvironment
      (\ s a -> s{_fsEnvironment = a})

-- | The list of formats on which to filter; may be empty. The filters
-- represented by multiple formats are ORed together (i.e., if non-empty,
-- results must match any one of the formats).
fsFormats :: Lens' FilterSet [Text]
fsFormats
  = lens _fsFormats (\ s a -> s{_fsFormats = a}) .
      _Default
      . _Coerce

-- | The ID of the creative on which to filter; optional. This field may be
-- set only for a filter set that accesses account-level troubleshooting
-- data, i.e., one whose name matches the
-- \`bidders\/*\/accounts\/*\/filterSets\/*\` pattern.
fsCreativeId :: Lens' FilterSet (Maybe Text)
fsCreativeId
  = lens _fsCreativeId (\ s a -> s{_fsCreativeId = a})

-- | The set of dimensions along which to break down the response; may be
-- empty. If multiple dimensions are requested, the breakdown is along the
-- Cartesian product of the requested dimensions.
fsBreakdownDimensions :: Lens' FilterSet [Text]
fsBreakdownDimensions
  = lens _fsBreakdownDimensions
      (\ s a -> s{_fsBreakdownDimensions = a})
      . _Default
      . _Coerce

-- | For Authorized Buyers only. The list of IDs of the seller (publisher)
-- networks on which to filter; may be empty. The filters represented by
-- multiple seller network IDs are ORed together (i.e., if non-empty,
-- results must match any one of the publisher networks). See
-- [seller-network-ids](https:\/\/developers.google.com\/authorized-buyers\/rtb\/downloads\/seller-network-ids)
-- file for the set of existing seller network IDs.
fsSellerNetworkIds :: Lens' FilterSet [Int32]
fsSellerNetworkIds
  = lens _fsSellerNetworkIds
      (\ s a -> s{_fsSellerNetworkIds = a})
      . _Default
      . _Coerce

-- | The ID of the deal on which to filter; optional. This field may be set
-- only for a filter set that accesses account-level troubleshooting data,
-- i.e., one whose name matches the
-- \`bidders\/*\/accounts\/*\/filterSets\/*\` pattern.
fsDealId :: Lens' FilterSet (Maybe Int64)
fsDealId
  = lens _fsDealId (\ s a -> s{_fsDealId = a}) .
      mapping _Coerce

-- | An absolute date range, defined by a start date and an end date.
-- Interpreted relative to Pacific time zone.
fsAbsoluteDateRange :: Lens' FilterSet (Maybe AbsoluteDateRange)
fsAbsoluteDateRange
  = lens _fsAbsoluteDateRange
      (\ s a -> s{_fsAbsoluteDateRange = a})

-- | A user-defined name of the filter set. Filter set names must be unique
-- globally and match one of the patterns: - \`bidders\/*\/filterSets\/*\`
-- (for accessing bidder-level troubleshooting data) -
-- \`bidders\/*\/accounts\/*\/filterSets\/*\` (for accessing account-level
-- troubleshooting data) This field is required in create operations.
fsName :: Lens' FilterSet (Maybe Text)
fsName = lens _fsName (\ s a -> s{_fsName = a})

-- | A relative date range, defined by an offset from today and a duration.
-- Interpreted relative to Pacific time zone.
fsRelativeDateRange :: Lens' FilterSet (Maybe RelativeDateRange)
fsRelativeDateRange
  = lens _fsRelativeDateRange
      (\ s a -> s{_fsRelativeDateRange = a})

-- | The granularity of time intervals if a time series breakdown is desired;
-- optional.
fsTimeSeriesGranularity :: Lens' FilterSet (Maybe FilterSetTimeSeriesGranularity)
fsTimeSeriesGranularity
  = lens _fsTimeSeriesGranularity
      (\ s a -> s{_fsTimeSeriesGranularity = a})

-- | For Open Bidding partners only. The list of publisher identifiers on
-- which to filter; may be empty. The filters represented by multiple
-- publisher identifiers are ORed together.
fsPublisherIdentifiers :: Lens' FilterSet [Text]
fsPublisherIdentifiers
  = lens _fsPublisherIdentifiers
      (\ s a -> s{_fsPublisherIdentifiers = a})
      . _Default
      . _Coerce

instance FromJSON FilterSet where
        parseJSON
          = withObject "FilterSet"
              (\ o ->
                 FilterSet' <$>
                   (o .:? "platforms" .!= mempty) <*>
                     (o .:? "realtimeTimeRange")
                     <*> (o .:? "environment")
                     <*> (o .:? "formats" .!= mempty)
                     <*> (o .:? "creativeId")
                     <*> (o .:? "breakdownDimensions" .!= mempty)
                     <*> (o .:? "sellerNetworkIds" .!= mempty)
                     <*> (o .:? "dealId")
                     <*> (o .:? "absoluteDateRange")
                     <*> (o .:? "name")
                     <*> (o .:? "relativeDateRange")
                     <*> (o .:? "timeSeriesGranularity")
                     <*> (o .:? "publisherIdentifiers" .!= mempty))

instance ToJSON FilterSet where
        toJSON FilterSet'{..}
          = object
              (catMaybes
                 [("platforms" .=) <$> _fsPlatforms,
                  ("realtimeTimeRange" .=) <$> _fsRealtimeTimeRange,
                  ("environment" .=) <$> _fsEnvironment,
                  ("formats" .=) <$> _fsFormats,
                  ("creativeId" .=) <$> _fsCreativeId,
                  ("breakdownDimensions" .=) <$>
                    _fsBreakdownDimensions,
                  ("sellerNetworkIds" .=) <$> _fsSellerNetworkIds,
                  ("dealId" .=) <$> _fsDealId,
                  ("absoluteDateRange" .=) <$> _fsAbsoluteDateRange,
                  ("name" .=) <$> _fsName,
                  ("relativeDateRange" .=) <$> _fsRelativeDateRange,
                  ("timeSeriesGranularity" .=) <$>
                    _fsTimeSeriesGranularity,
                  ("publisherIdentifiers" .=) <$>
                    _fsPublisherIdentifiers])

-- | An interval of time, with an absolute start and end.
--
-- /See:/ 'timeInterval' smart constructor.
data TimeInterval = TimeInterval'
    { _tiStartTime :: !(Maybe DateTime')
    , _tiEndTime   :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimeInterval' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiStartTime'
--
-- * 'tiEndTime'
timeInterval
    :: TimeInterval
timeInterval =
    TimeInterval'
    { _tiStartTime = Nothing
    , _tiEndTime = Nothing
    }

-- | The timestamp marking the start of the range (inclusive) for which data
-- is included.
tiStartTime :: Lens' TimeInterval (Maybe UTCTime)
tiStartTime
  = lens _tiStartTime (\ s a -> s{_tiStartTime = a}) .
      mapping _DateTime

-- | The timestamp marking the end of the range (exclusive) for which data is
-- included.
tiEndTime :: Lens' TimeInterval (Maybe UTCTime)
tiEndTime
  = lens _tiEndTime (\ s a -> s{_tiEndTime = a}) .
      mapping _DateTime

instance FromJSON TimeInterval where
        parseJSON
          = withObject "TimeInterval"
              (\ o ->
                 TimeInterval' <$>
                   (o .:? "startTime") <*> (o .:? "endTime"))

instance ToJSON TimeInterval where
        toJSON TimeInterval'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _tiStartTime,
                  ("endTime" .=) <$> _tiEndTime])

-- | A request for removing the association between a deal and a creative.
--
-- /See:/ 'removeDealAssociationRequest' smart constructor.
newtype RemoveDealAssociationRequest = RemoveDealAssociationRequest'
    { _rdarAssociation :: Maybe CreativeDealAssociation
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RemoveDealAssociationRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdarAssociation'
removeDealAssociationRequest
    :: RemoveDealAssociationRequest
removeDealAssociationRequest =
    RemoveDealAssociationRequest'
    { _rdarAssociation = Nothing
    }

-- | The association between a creative and a deal that should be removed.
rdarAssociation :: Lens' RemoveDealAssociationRequest (Maybe CreativeDealAssociation)
rdarAssociation
  = lens _rdarAssociation
      (\ s a -> s{_rdarAssociation = a})

instance FromJSON RemoveDealAssociationRequest where
        parseJSON
          = withObject "RemoveDealAssociationRequest"
              (\ o ->
                 RemoveDealAssociationRequest' <$>
                   (o .:? "association"))

instance ToJSON RemoveDealAssociationRequest where
        toJSON RemoveDealAssociationRequest'{..}
          = object
              (catMaybes [("association" .=) <$> _rdarAssociation])

-- | A polymorphic targeting value used as part of Shared Targeting.
--
-- /See:/ 'targetingValue' smart constructor.
data TargetingValue = TargetingValue'
    { _tvCreativeSizeValue     :: !(Maybe CreativeSize)
    , _tvStringValue           :: !(Maybe Text)
    , _tvLongValue             :: !(Maybe (Textual Int64))
    , _tvDayPartTargetingValue :: !(Maybe DayPartTargeting)
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

-- | The creative size value to include\/exclude. Filled in when key =
-- GOOG_CREATIVE_SIZE
tvCreativeSizeValue :: Lens' TargetingValue (Maybe CreativeSize)
tvCreativeSizeValue
  = lens _tvCreativeSizeValue
      (\ s a -> s{_tvCreativeSizeValue = a})

-- | The string value to include\/exclude.
tvStringValue :: Lens' TargetingValue (Maybe Text)
tvStringValue
  = lens _tvStringValue
      (\ s a -> s{_tvStringValue = a})

-- | The long value to include\/exclude.
tvLongValue :: Lens' TargetingValue (Maybe Int64)
tvLongValue
  = lens _tvLongValue (\ s a -> s{_tvLongValue = a}) .
      mapping _Coerce

-- | The daypart targeting to include \/ exclude. Filled in when the key is
-- GOOG_DAYPART_TARGETING. The definition of this targeting is derived from
-- the structure used by Ad Manager.
tvDayPartTargetingValue :: Lens' TargetingValue (Maybe DayPartTargeting)
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

-- | Response message for listing all reasons for which a buyer was not
-- billed for a winning bid.
--
-- /See:/ 'listNonBillableWinningBidsResponse' smart constructor.
data ListNonBillableWinningBidsResponse = ListNonBillableWinningBidsResponse'
    { _lnbwbrNextPageToken                   :: !(Maybe Text)
    , _lnbwbrNonBillableWinningBidStatusRows :: !(Maybe [NonBillableWinningBidStatusRow])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListNonBillableWinningBidsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lnbwbrNextPageToken'
--
-- * 'lnbwbrNonBillableWinningBidStatusRows'
listNonBillableWinningBidsResponse
    :: ListNonBillableWinningBidsResponse
listNonBillableWinningBidsResponse =
    ListNonBillableWinningBidsResponse'
    { _lnbwbrNextPageToken = Nothing
    , _lnbwbrNonBillableWinningBidStatusRows = Nothing
    }

-- | A token to retrieve the next page of results. Pass this value in the
-- ListNonBillableWinningBidsRequest.pageToken field in the subsequent call
-- to the nonBillableWinningBids.list method to retrieve the next page of
-- results.
lnbwbrNextPageToken :: Lens' ListNonBillableWinningBidsResponse (Maybe Text)
lnbwbrNextPageToken
  = lens _lnbwbrNextPageToken
      (\ s a -> s{_lnbwbrNextPageToken = a})

-- | List of rows, with counts of bids not billed aggregated by reason.
lnbwbrNonBillableWinningBidStatusRows :: Lens' ListNonBillableWinningBidsResponse [NonBillableWinningBidStatusRow]
lnbwbrNonBillableWinningBidStatusRows
  = lens _lnbwbrNonBillableWinningBidStatusRows
      (\ s a ->
         s{_lnbwbrNonBillableWinningBidStatusRows = a})
      . _Default
      . _Coerce

instance FromJSON ListNonBillableWinningBidsResponse
         where
        parseJSON
          = withObject "ListNonBillableWinningBidsResponse"
              (\ o ->
                 ListNonBillableWinningBidsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "nonBillableWinningBidStatusRows" .!= mempty))

instance ToJSON ListNonBillableWinningBidsResponse
         where
        toJSON ListNonBillableWinningBidsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lnbwbrNextPageToken,
                  ("nonBillableWinningBidStatusRows" .=) <$>
                    _lnbwbrNonBillableWinningBidStatusRows])

-- | Response message for listing all reasons that bids lost in the auction.
--
-- /See:/ 'listLosingBidsResponse' smart constructor.
data ListLosingBidsResponse = ListLosingBidsResponse'
    { _llbrNextPageToken      :: !(Maybe Text)
    , _llbrCreativeStatusRows :: !(Maybe [CreativeStatusRow])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListLosingBidsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llbrNextPageToken'
--
-- * 'llbrCreativeStatusRows'
listLosingBidsResponse
    :: ListLosingBidsResponse
listLosingBidsResponse =
    ListLosingBidsResponse'
    { _llbrNextPageToken = Nothing
    , _llbrCreativeStatusRows = Nothing
    }

-- | A token to retrieve the next page of results. Pass this value in the
-- ListLosingBidsRequest.pageToken field in the subsequent call to the
-- losingBids.list method to retrieve the next page of results.
llbrNextPageToken :: Lens' ListLosingBidsResponse (Maybe Text)
llbrNextPageToken
  = lens _llbrNextPageToken
      (\ s a -> s{_llbrNextPageToken = a})

-- | List of rows, with counts of losing bids aggregated by loss reason (i.e.
-- creative status).
llbrCreativeStatusRows :: Lens' ListLosingBidsResponse [CreativeStatusRow]
llbrCreativeStatusRows
  = lens _llbrCreativeStatusRows
      (\ s a -> s{_llbrCreativeStatusRows = a})
      . _Default
      . _Coerce

instance FromJSON ListLosingBidsResponse where
        parseJSON
          = withObject "ListLosingBidsResponse"
              (\ o ->
                 ListLosingBidsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "creativeStatusRows" .!= mempty))

instance ToJSON ListLosingBidsResponse where
        toJSON ListLosingBidsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _llbrNextPageToken,
                  ("creativeStatusRows" .=) <$>
                    _llbrCreativeStatusRows])

-- | Represents a price and a pricing type for a product \/ deal.
--
-- /See:/ 'price' smart constructor.
data Price = Price'
    { _pAmount      :: !(Maybe Money)
    , _pPricingType :: !(Maybe PricePricingType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Price' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pAmount'
--
-- * 'pPricingType'
price
    :: Price
price =
    Price'
    { _pAmount = Nothing
    , _pPricingType = Nothing
    }

-- | The actual price with currency specified.
pAmount :: Lens' Price (Maybe Money)
pAmount = lens _pAmount (\ s a -> s{_pAmount = a})

-- | The pricing type for the deal\/product. (default: CPM)
pPricingType :: Lens' Price (Maybe PricePricingType)
pPricingType
  = lens _pPricingType (\ s a -> s{_pPricingType = a})

instance FromJSON Price where
        parseJSON
          = withObject "Price"
              (\ o ->
                 Price' <$>
                   (o .:? "amount") <*> (o .:? "pricingType"))

instance ToJSON Price where
        toJSON Price'{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _pAmount,
                  ("pricingType" .=) <$> _pPricingType])

-- | Response message for listing the metrics that are measured in number of
-- impressions.
--
-- /See:/ 'listImpressionMetricsResponse' smart constructor.
data ListImpressionMetricsResponse = ListImpressionMetricsResponse'
    { _limrNextPageToken         :: !(Maybe Text)
    , _limrImpressionMetricsRows :: !(Maybe [ImpressionMetricsRow])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListImpressionMetricsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'limrNextPageToken'
--
-- * 'limrImpressionMetricsRows'
listImpressionMetricsResponse
    :: ListImpressionMetricsResponse
listImpressionMetricsResponse =
    ListImpressionMetricsResponse'
    { _limrNextPageToken = Nothing
    , _limrImpressionMetricsRows = Nothing
    }

-- | A token to retrieve the next page of results. Pass this value in the
-- ListImpressionMetricsRequest.pageToken field in the subsequent call to
-- the impressionMetrics.list method to retrieve the next page of results.
limrNextPageToken :: Lens' ListImpressionMetricsResponse (Maybe Text)
limrNextPageToken
  = lens _limrNextPageToken
      (\ s a -> s{_limrNextPageToken = a})

-- | List of rows, each containing a set of impression metrics.
limrImpressionMetricsRows :: Lens' ListImpressionMetricsResponse [ImpressionMetricsRow]
limrImpressionMetricsRows
  = lens _limrImpressionMetricsRows
      (\ s a -> s{_limrImpressionMetricsRows = a})
      . _Default
      . _Coerce

instance FromJSON ListImpressionMetricsResponse where
        parseJSON
          = withObject "ListImpressionMetricsResponse"
              (\ o ->
                 ListImpressionMetricsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "impressionMetricsRows" .!= mempty))

instance ToJSON ListImpressionMetricsResponse where
        toJSON ListImpressionMetricsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _limrNextPageToken,
                  ("impressionMetricsRows" .=) <$>
                    _limrImpressionMetricsRows])

-- | \'OutputOnly The type of platform the restriction applies to.
--
-- /See:/ 'platformContext' smart constructor.
newtype PlatformContext = PlatformContext'
    { _pcPlatforms :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlatformContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcPlatforms'
platformContext
    :: PlatformContext
platformContext =
    PlatformContext'
    { _pcPlatforms = Nothing
    }

-- | The platforms this restriction applies to.
pcPlatforms :: Lens' PlatformContext [Text]
pcPlatforms
  = lens _pcPlatforms (\ s a -> s{_pcPlatforms = a}) .
      _Default
      . _Coerce

instance FromJSON PlatformContext where
        parseJSON
          = withObject "PlatformContext"
              (\ o ->
                 PlatformContext' <$> (o .:? "platforms" .!= mempty))

instance ToJSON PlatformContext where
        toJSON PlatformContext'{..}
          = object
              (catMaybes [("platforms" .=) <$> _pcPlatforms])

-- | Video content for a creative.
--
-- /See:/ 'videoContent' smart constructor.
data VideoContent = VideoContent'
    { _vcVideoVastXML :: !(Maybe Text)
    , _vcVideoURL     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoContent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcVideoVastXML'
--
-- * 'vcVideoURL'
videoContent
    :: VideoContent
videoContent =
    VideoContent'
    { _vcVideoVastXML = Nothing
    , _vcVideoURL = Nothing
    }

-- | The contents of a VAST document for a video ad. This document should
-- conform to the VAST 2.0 or 3.0 standard.
vcVideoVastXML :: Lens' VideoContent (Maybe Text)
vcVideoVastXML
  = lens _vcVideoVastXML
      (\ s a -> s{_vcVideoVastXML = a})

-- | The URL to fetch a video ad.
vcVideoURL :: Lens' VideoContent (Maybe Text)
vcVideoURL
  = lens _vcVideoURL (\ s a -> s{_vcVideoURL = a})

instance FromJSON VideoContent where
        parseJSON
          = withObject "VideoContent"
              (\ o ->
                 VideoContent' <$>
                   (o .:? "videoVastXml") <*> (o .:? "videoUrl"))

instance ToJSON VideoContent where
        toJSON VideoContent'{..}
          = object
              (catMaybes
                 [("videoVastXml" .=) <$> _vcVideoVastXML,
                  ("videoUrl" .=) <$> _vcVideoURL])

-- | Represents a time of day. The date and time zone are either not
-- significant or are specified elsewhere. An API may choose to allow leap
-- seconds. Related types are google.type.Date and
-- \`google.protobuf.Timestamp\`.
--
-- /See:/ 'timeOfDay' smart constructor.
data TimeOfDay' = TimeOfDay''
    { _todNanos   :: !(Maybe (Textual Int32))
    , _todHours   :: !(Maybe (Textual Int32))
    , _todMinutes :: !(Maybe (Textual Int32))
    , _todSeconds :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimeOfDay' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'todNanos'
--
-- * 'todHours'
--
-- * 'todMinutes'
--
-- * 'todSeconds'
timeOfDay
    :: TimeOfDay'
timeOfDay =
    TimeOfDay''
    { _todNanos = Nothing
    , _todHours = Nothing
    , _todMinutes = Nothing
    , _todSeconds = Nothing
    }

-- | Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
todNanos :: Lens' TimeOfDay' (Maybe Int32)
todNanos
  = lens _todNanos (\ s a -> s{_todNanos = a}) .
      mapping _Coerce

-- | Hours of day in 24 hour format. Should be from 0 to 23. An API may
-- choose to allow the value \"24:00:00\" for scenarios like business
-- closing time.
todHours :: Lens' TimeOfDay' (Maybe Int32)
todHours
  = lens _todHours (\ s a -> s{_todHours = a}) .
      mapping _Coerce

-- | Minutes of hour of day. Must be from 0 to 59.
todMinutes :: Lens' TimeOfDay' (Maybe Int32)
todMinutes
  = lens _todMinutes (\ s a -> s{_todMinutes = a}) .
      mapping _Coerce

-- | Seconds of minutes of the time. Must normally be from 0 to 59. An API
-- may allow the value 60 if it allows leap-seconds.
todSeconds :: Lens' TimeOfDay' (Maybe Int32)
todSeconds
  = lens _todSeconds (\ s a -> s{_todSeconds = a}) .
      mapping _Coerce

instance FromJSON TimeOfDay' where
        parseJSON
          = withObject "TimeOfDay"
              (\ o ->
                 TimeOfDay'' <$>
                   (o .:? "nanos") <*> (o .:? "hours") <*>
                     (o .:? "minutes")
                     <*> (o .:? "seconds"))

instance ToJSON TimeOfDay' where
        toJSON TimeOfDay''{..}
          = object
              (catMaybes
                 [("nanos" .=) <$> _todNanos,
                  ("hours" .=) <$> _todHours,
                  ("minutes" .=) <$> _todMinutes,
                  ("seconds" .=) <$> _todSeconds])

-- | Terms for Programmatic Guaranteed Deals.
--
-- /See:/ 'guaranteedFixedPriceTerms' smart constructor.
data GuaranteedFixedPriceTerms = GuaranteedFixedPriceTerms'
    { _gfptGuaranteedLooks       :: !(Maybe (Textual Int64))
    , _gfptGuaranteedImpressions :: !(Maybe (Textual Int64))
    , _gfptFixedPrices           :: !(Maybe [PricePerBuyer])
    , _gfptMinimumDailyLooks     :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GuaranteedFixedPriceTerms' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfptGuaranteedLooks'
--
-- * 'gfptGuaranteedImpressions'
--
-- * 'gfptFixedPrices'
--
-- * 'gfptMinimumDailyLooks'
guaranteedFixedPriceTerms
    :: GuaranteedFixedPriceTerms
guaranteedFixedPriceTerms =
    GuaranteedFixedPriceTerms'
    { _gfptGuaranteedLooks = Nothing
    , _gfptGuaranteedImpressions = Nothing
    , _gfptFixedPrices = Nothing
    , _gfptMinimumDailyLooks = Nothing
    }

-- | Count of guaranteed looks. Required for deal, optional for product.
gfptGuaranteedLooks :: Lens' GuaranteedFixedPriceTerms (Maybe Int64)
gfptGuaranteedLooks
  = lens _gfptGuaranteedLooks
      (\ s a -> s{_gfptGuaranteedLooks = a})
      . mapping _Coerce

-- | Guaranteed impressions as a percentage. This is the percentage of
-- guaranteed looks that the buyer is guaranteeing to buy.
gfptGuaranteedImpressions :: Lens' GuaranteedFixedPriceTerms (Maybe Int64)
gfptGuaranteedImpressions
  = lens _gfptGuaranteedImpressions
      (\ s a -> s{_gfptGuaranteedImpressions = a})
      . mapping _Coerce

-- | Fixed price for the specified buyer.
gfptFixedPrices :: Lens' GuaranteedFixedPriceTerms [PricePerBuyer]
gfptFixedPrices
  = lens _gfptFixedPrices
      (\ s a -> s{_gfptFixedPrices = a})
      . _Default
      . _Coerce

-- | Daily minimum looks for CPD deal types.
gfptMinimumDailyLooks :: Lens' GuaranteedFixedPriceTerms (Maybe Int64)
gfptMinimumDailyLooks
  = lens _gfptMinimumDailyLooks
      (\ s a -> s{_gfptMinimumDailyLooks = a})
      . mapping _Coerce

instance FromJSON GuaranteedFixedPriceTerms where
        parseJSON
          = withObject "GuaranteedFixedPriceTerms"
              (\ o ->
                 GuaranteedFixedPriceTerms' <$>
                   (o .:? "guaranteedLooks") <*>
                     (o .:? "guaranteedImpressions")
                     <*> (o .:? "fixedPrices" .!= mempty)
                     <*> (o .:? "minimumDailyLooks"))

instance ToJSON GuaranteedFixedPriceTerms where
        toJSON GuaranteedFixedPriceTerms'{..}
          = object
              (catMaybes
                 [("guaranteedLooks" .=) <$> _gfptGuaranteedLooks,
                  ("guaranteedImpressions" .=) <$>
                    _gfptGuaranteedImpressions,
                  ("fixedPrices" .=) <$> _gfptFixedPrices,
                  ("minimumDailyLooks" .=) <$> _gfptMinimumDailyLooks])

-- | Native content for a creative.
--
-- /See:/ 'nATiveContent' smart constructor.
data NATiveContent = NATiveContent'
    { _natcStoreURL         :: !(Maybe Text)
    , _natcImage            :: !(Maybe Image)
    , _natcAdvertiserName   :: !(Maybe Text)
    , _natcAppIcon          :: !(Maybe Image)
    , _natcPriceDisplayText :: !(Maybe Text)
    , _natcClickTrackingURL :: !(Maybe Text)
    , _natcClickLinkURL     :: !(Maybe Text)
    , _natcBody             :: !(Maybe Text)
    , _natcHeadline         :: !(Maybe Text)
    , _natcCallToAction     :: !(Maybe Text)
    , _natcVideoURL         :: !(Maybe Text)
    , _natcStarRating       :: !(Maybe (Textual Double))
    , _natcLogo             :: !(Maybe Image)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NATiveContent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'natcStoreURL'
--
-- * 'natcImage'
--
-- * 'natcAdvertiserName'
--
-- * 'natcAppIcon'
--
-- * 'natcPriceDisplayText'
--
-- * 'natcClickTrackingURL'
--
-- * 'natcClickLinkURL'
--
-- * 'natcBody'
--
-- * 'natcHeadline'
--
-- * 'natcCallToAction'
--
-- * 'natcVideoURL'
--
-- * 'natcStarRating'
--
-- * 'natcLogo'
nATiveContent
    :: NATiveContent
nATiveContent =
    NATiveContent'
    { _natcStoreURL = Nothing
    , _natcImage = Nothing
    , _natcAdvertiserName = Nothing
    , _natcAppIcon = Nothing
    , _natcPriceDisplayText = Nothing
    , _natcClickTrackingURL = Nothing
    , _natcClickLinkURL = Nothing
    , _natcBody = Nothing
    , _natcHeadline = Nothing
    , _natcCallToAction = Nothing
    , _natcVideoURL = Nothing
    , _natcStarRating = Nothing
    , _natcLogo = Nothing
    }

-- | The URL to the app store to purchase\/download the promoted app.
natcStoreURL :: Lens' NATiveContent (Maybe Text)
natcStoreURL
  = lens _natcStoreURL (\ s a -> s{_natcStoreURL = a})

-- | A large image.
natcImage :: Lens' NATiveContent (Maybe Image)
natcImage
  = lens _natcImage (\ s a -> s{_natcImage = a})

-- | The name of the advertiser or sponsor, to be displayed in the ad
-- creative.
natcAdvertiserName :: Lens' NATiveContent (Maybe Text)
natcAdvertiserName
  = lens _natcAdvertiserName
      (\ s a -> s{_natcAdvertiserName = a})

-- | The app icon, for app download ads.
natcAppIcon :: Lens' NATiveContent (Maybe Image)
natcAppIcon
  = lens _natcAppIcon (\ s a -> s{_natcAppIcon = a})

-- | The price of the promoted app including currency info.
natcPriceDisplayText :: Lens' NATiveContent (Maybe Text)
natcPriceDisplayText
  = lens _natcPriceDisplayText
      (\ s a -> s{_natcPriceDisplayText = a})

-- | The URL to use for click tracking.
natcClickTrackingURL :: Lens' NATiveContent (Maybe Text)
natcClickTrackingURL
  = lens _natcClickTrackingURL
      (\ s a -> s{_natcClickTrackingURL = a})

-- | The URL that the browser\/SDK will load when the user clicks the ad.
natcClickLinkURL :: Lens' NATiveContent (Maybe Text)
natcClickLinkURL
  = lens _natcClickLinkURL
      (\ s a -> s{_natcClickLinkURL = a})

-- | A long description of the ad.
natcBody :: Lens' NATiveContent (Maybe Text)
natcBody = lens _natcBody (\ s a -> s{_natcBody = a})

-- | A short title for the ad.
natcHeadline :: Lens' NATiveContent (Maybe Text)
natcHeadline
  = lens _natcHeadline (\ s a -> s{_natcHeadline = a})

-- | A label for the button that the user is supposed to click.
natcCallToAction :: Lens' NATiveContent (Maybe Text)
natcCallToAction
  = lens _natcCallToAction
      (\ s a -> s{_natcCallToAction = a})

-- | The URL to fetch a native video ad.
natcVideoURL :: Lens' NATiveContent (Maybe Text)
natcVideoURL
  = lens _natcVideoURL (\ s a -> s{_natcVideoURL = a})

-- | The app rating in the app store. Must be in the range [0-5].
natcStarRating :: Lens' NATiveContent (Maybe Double)
natcStarRating
  = lens _natcStarRating
      (\ s a -> s{_natcStarRating = a})
      . mapping _Coerce

-- | A smaller image, for the advertiser\'s logo.
natcLogo :: Lens' NATiveContent (Maybe Image)
natcLogo = lens _natcLogo (\ s a -> s{_natcLogo = a})

instance FromJSON NATiveContent where
        parseJSON
          = withObject "NATiveContent"
              (\ o ->
                 NATiveContent' <$>
                   (o .:? "storeUrl") <*> (o .:? "image") <*>
                     (o .:? "advertiserName")
                     <*> (o .:? "appIcon")
                     <*> (o .:? "priceDisplayText")
                     <*> (o .:? "clickTrackingUrl")
                     <*> (o .:? "clickLinkUrl")
                     <*> (o .:? "body")
                     <*> (o .:? "headline")
                     <*> (o .:? "callToAction")
                     <*> (o .:? "videoUrl")
                     <*> (o .:? "starRating")
                     <*> (o .:? "logo"))

instance ToJSON NATiveContent where
        toJSON NATiveContent'{..}
          = object
              (catMaybes
                 [("storeUrl" .=) <$> _natcStoreURL,
                  ("image" .=) <$> _natcImage,
                  ("advertiserName" .=) <$> _natcAdvertiserName,
                  ("appIcon" .=) <$> _natcAppIcon,
                  ("priceDisplayText" .=) <$> _natcPriceDisplayText,
                  ("clickTrackingUrl" .=) <$> _natcClickTrackingURL,
                  ("clickLinkUrl" .=) <$> _natcClickLinkURL,
                  ("body" .=) <$> _natcBody,
                  ("headline" .=) <$> _natcHeadline,
                  ("callToAction" .=) <$> _natcCallToAction,
                  ("videoUrl" .=) <$> _natcVideoURL,
                  ("starRating" .=) <$> _natcStarRating,
                  ("logo" .=) <$> _natcLogo])

-- | Represents targeting information about video.
--
-- /See:/ 'videoTargeting' smart constructor.
data VideoTargeting = VideoTargeting'
    { _vtTargetedPositionTypes :: !(Maybe [Text])
    , _vtExcludedPositionTypes :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoTargeting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtTargetedPositionTypes'
--
-- * 'vtExcludedPositionTypes'
videoTargeting
    :: VideoTargeting
videoTargeting =
    VideoTargeting'
    { _vtTargetedPositionTypes = Nothing
    , _vtExcludedPositionTypes = Nothing
    }

-- | A list of video positions to be included. When the included list is
-- present, the excluded list must be empty. When the excluded list is
-- present, the included list must be empty.
vtTargetedPositionTypes :: Lens' VideoTargeting [Text]
vtTargetedPositionTypes
  = lens _vtTargetedPositionTypes
      (\ s a -> s{_vtTargetedPositionTypes = a})
      . _Default
      . _Coerce

-- | A list of video positions to be excluded. Position types can either be
-- included or excluded (XOR).
vtExcludedPositionTypes :: Lens' VideoTargeting [Text]
vtExcludedPositionTypes
  = lens _vtExcludedPositionTypes
      (\ s a -> s{_vtExcludedPositionTypes = a})
      . _Default
      . _Coerce

instance FromJSON VideoTargeting where
        parseJSON
          = withObject "VideoTargeting"
              (\ o ->
                 VideoTargeting' <$>
                   (o .:? "targetedPositionTypes" .!= mempty) <*>
                     (o .:? "excludedPositionTypes" .!= mempty))

instance ToJSON VideoTargeting where
        toJSON VideoTargeting'{..}
          = object
              (catMaybes
                 [("targetedPositionTypes" .=) <$>
                    _vtTargetedPositionTypes,
                  ("excludedPositionTypes" .=) <$>
                    _vtExcludedPositionTypes])

-- | A client user is created under a client buyer and has restricted access
-- to the Marketplace and certain other sections of the Authorized Buyers
-- UI based on the role granted to the associated client buyer. The only
-- way a new client user can be created is via accepting an email
-- invitation (see the accounts.clients.invitations.create method). All
-- fields are required unless otherwise specified.
--
-- /See:/ 'clientUser' smart constructor.
data ClientUser = ClientUser'
    { _cuEmail           :: !(Maybe Text)
    , _cuStatus          :: !(Maybe ClientUserStatus)
    , _cuUserId          :: !(Maybe (Textual Int64))
    , _cuClientAccountId :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuEmail'
--
-- * 'cuStatus'
--
-- * 'cuUserId'
--
-- * 'cuClientAccountId'
clientUser
    :: ClientUser
clientUser =
    ClientUser'
    { _cuEmail = Nothing
    , _cuStatus = Nothing
    , _cuUserId = Nothing
    , _cuClientAccountId = Nothing
    }

-- | User\'s email address. The value of this field is ignored in an update
-- operation.
cuEmail :: Lens' ClientUser (Maybe Text)
cuEmail = lens _cuEmail (\ s a -> s{_cuEmail = a})

-- | The status of the client user.
cuStatus :: Lens' ClientUser (Maybe ClientUserStatus)
cuStatus = lens _cuStatus (\ s a -> s{_cuStatus = a})

-- | The unique numerical ID of the client user that has accepted an
-- invitation. The value of this field is ignored in an update operation.
cuUserId :: Lens' ClientUser (Maybe Int64)
cuUserId
  = lens _cuUserId (\ s a -> s{_cuUserId = a}) .
      mapping _Coerce

-- | Numerical account ID of the client buyer with which the user is
-- associated; the buyer must be a client of the current sponsor buyer. The
-- value of this field is ignored in an update operation.
cuClientAccountId :: Lens' ClientUser (Maybe Int64)
cuClientAccountId
  = lens _cuClientAccountId
      (\ s a -> s{_cuClientAccountId = a})
      . mapping _Coerce

instance FromJSON ClientUser where
        parseJSON
          = withObject "ClientUser"
              (\ o ->
                 ClientUser' <$>
                   (o .:? "email") <*> (o .:? "status") <*>
                     (o .:? "userId")
                     <*> (o .:? "clientAccountId"))

instance ToJSON ClientUser where
        toJSON ClientUser'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _cuEmail,
                  ("status" .=) <$> _cuStatus,
                  ("userId" .=) <$> _cuUserId,
                  ("clientAccountId" .=) <$> _cuClientAccountId])

-- | Note: this resource requires whitelisting for access. Please contact
-- your account manager for access to Marketplace resources. A product is a
-- segment of inventory that a seller wishes to sell. It is associated with
-- certain terms and targeting information which helps the buyer know more
-- about the inventory.
--
-- /See:/ 'product' smart constructor.
data Product = Product'
    { _proAvailableStartTime  :: !(Maybe DateTime')
    , _proWebPropertyCode     :: !(Maybe Text)
    , _proTerms               :: !(Maybe DealTerms)
    , _proProductRevision     :: !(Maybe (Textual Int64))
    , _proHasCreatorSignedOff :: !(Maybe Bool)
    , _proSeller              :: !(Maybe Seller)
    , _proSyndicationProduct  :: !(Maybe ProductSyndicationProduct)
    , _proUpdateTime          :: !(Maybe DateTime')
    , _proCreatorContacts     :: !(Maybe [ContactInformation])
    , _proTargetingCriterion  :: !(Maybe [TargetingCriteria])
    , _proDisplayName         :: !(Maybe Text)
    , _proPublisherProFileId  :: !(Maybe Text)
    , _proAvailableEndTime    :: !(Maybe DateTime')
    , _proProductId           :: !(Maybe Text)
    , _proCreateTime          :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Product' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proAvailableStartTime'
--
-- * 'proWebPropertyCode'
--
-- * 'proTerms'
--
-- * 'proProductRevision'
--
-- * 'proHasCreatorSignedOff'
--
-- * 'proSeller'
--
-- * 'proSyndicationProduct'
--
-- * 'proUpdateTime'
--
-- * 'proCreatorContacts'
--
-- * 'proTargetingCriterion'
--
-- * 'proDisplayName'
--
-- * 'proPublisherProFileId'
--
-- * 'proAvailableEndTime'
--
-- * 'proProductId'
--
-- * 'proCreateTime'
product
    :: Product
product =
    Product'
    { _proAvailableStartTime = Nothing
    , _proWebPropertyCode = Nothing
    , _proTerms = Nothing
    , _proProductRevision = Nothing
    , _proHasCreatorSignedOff = Nothing
    , _proSeller = Nothing
    , _proSyndicationProduct = Nothing
    , _proUpdateTime = Nothing
    , _proCreatorContacts = Nothing
    , _proTargetingCriterion = Nothing
    , _proDisplayName = Nothing
    , _proPublisherProFileId = Nothing
    , _proAvailableEndTime = Nothing
    , _proProductId = Nothing
    , _proCreateTime = Nothing
    }

-- | Inventory availability dates. The start time will be truncated to
-- seconds during serving. Thus, a field specified as 3:23:34.456
-- (HH:mm:ss.SSS) will be truncated to 3:23:34 when serving.
proAvailableStartTime :: Lens' Product (Maybe UTCTime)
proAvailableStartTime
  = lens _proAvailableStartTime
      (\ s a -> s{_proAvailableStartTime = a})
      . mapping _DateTime

-- | The web-property code for the seller. This needs to be copied as is when
-- adding a new deal to a proposal.
proWebPropertyCode :: Lens' Product (Maybe Text)
proWebPropertyCode
  = lens _proWebPropertyCode
      (\ s a -> s{_proWebPropertyCode = a})

-- | The negotiable terms of the deal.
proTerms :: Lens' Product (Maybe DealTerms)
proTerms = lens _proTerms (\ s a -> s{_proTerms = a})

-- | The revision number of the product (auto-assigned by Marketplace).
proProductRevision :: Lens' Product (Maybe Int64)
proProductRevision
  = lens _proProductRevision
      (\ s a -> s{_proProductRevision = a})
      . mapping _Coerce

-- | If the creator has already signed off on the product, then the buyer can
-- finalize the deal by accepting the product as is. When copying to a
-- proposal, if any of the terms are changed, then auto_finalize is
-- automatically set to false.
proHasCreatorSignedOff :: Lens' Product (Maybe Bool)
proHasCreatorSignedOff
  = lens _proHasCreatorSignedOff
      (\ s a -> s{_proHasCreatorSignedOff = a})

-- | Information about the seller that created this product.
proSeller :: Lens' Product (Maybe Seller)
proSeller
  = lens _proSeller (\ s a -> s{_proSeller = a})

-- | The syndication product associated with the deal.
proSyndicationProduct :: Lens' Product (Maybe ProductSyndicationProduct)
proSyndicationProduct
  = lens _proSyndicationProduct
      (\ s a -> s{_proSyndicationProduct = a})

-- | Time of last update.
proUpdateTime :: Lens' Product (Maybe UTCTime)
proUpdateTime
  = lens _proUpdateTime
      (\ s a -> s{_proUpdateTime = a})
      . mapping _DateTime

-- | Optional contact information for the creator of this product.
proCreatorContacts :: Lens' Product [ContactInformation]
proCreatorContacts
  = lens _proCreatorContacts
      (\ s a -> s{_proCreatorContacts = a})
      . _Default
      . _Coerce

-- | Targeting that is shared between the buyer and the seller. Each
-- targeting criterion has a specified key and for each key there is a list
-- of inclusion value or exclusion values.
proTargetingCriterion :: Lens' Product [TargetingCriteria]
proTargetingCriterion
  = lens _proTargetingCriterion
      (\ s a -> s{_proTargetingCriterion = a})
      . _Default
      . _Coerce

-- | The display name for this product as set by the seller.
proDisplayName :: Lens' Product (Maybe Text)
proDisplayName
  = lens _proDisplayName
      (\ s a -> s{_proDisplayName = a})

-- | An ID which can be used by the Publisher Profile API to get more
-- information about the seller that created this product.
proPublisherProFileId :: Lens' Product (Maybe Text)
proPublisherProFileId
  = lens _proPublisherProFileId
      (\ s a -> s{_proPublisherProFileId = a})

-- | The proposed end time for the deal. The field will be truncated to the
-- order of seconds during serving.
proAvailableEndTime :: Lens' Product (Maybe UTCTime)
proAvailableEndTime
  = lens _proAvailableEndTime
      (\ s a -> s{_proAvailableEndTime = a})
      . mapping _DateTime

-- | The unique ID for the product.
proProductId :: Lens' Product (Maybe Text)
proProductId
  = lens _proProductId (\ s a -> s{_proProductId = a})

-- | Creation time.
proCreateTime :: Lens' Product (Maybe UTCTime)
proCreateTime
  = lens _proCreateTime
      (\ s a -> s{_proCreateTime = a})
      . mapping _DateTime

instance FromJSON Product where
        parseJSON
          = withObject "Product"
              (\ o ->
                 Product' <$>
                   (o .:? "availableStartTime") <*>
                     (o .:? "webPropertyCode")
                     <*> (o .:? "terms")
                     <*> (o .:? "productRevision")
                     <*> (o .:? "hasCreatorSignedOff")
                     <*> (o .:? "seller")
                     <*> (o .:? "syndicationProduct")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "creatorContacts" .!= mempty)
                     <*> (o .:? "targetingCriterion" .!= mempty)
                     <*> (o .:? "displayName")
                     <*> (o .:? "publisherProfileId")
                     <*> (o .:? "availableEndTime")
                     <*> (o .:? "productId")
                     <*> (o .:? "createTime"))

instance ToJSON Product where
        toJSON Product'{..}
          = object
              (catMaybes
                 [("availableStartTime" .=) <$>
                    _proAvailableStartTime,
                  ("webPropertyCode" .=) <$> _proWebPropertyCode,
                  ("terms" .=) <$> _proTerms,
                  ("productRevision" .=) <$> _proProductRevision,
                  ("hasCreatorSignedOff" .=) <$>
                    _proHasCreatorSignedOff,
                  ("seller" .=) <$> _proSeller,
                  ("syndicationProduct" .=) <$> _proSyndicationProduct,
                  ("updateTime" .=) <$> _proUpdateTime,
                  ("creatorContacts" .=) <$> _proCreatorContacts,
                  ("targetingCriterion" .=) <$> _proTargetingCriterion,
                  ("displayName" .=) <$> _proDisplayName,
                  ("publisherProfileId" .=) <$> _proPublisherProFileId,
                  ("availableEndTime" .=) <$> _proAvailableEndTime,
                  ("productId" .=) <$> _proProductId,
                  ("createTime" .=) <$> _proCreateTime])

--
-- /See:/ 'listClientUserInvitationsResponse' smart constructor.
data ListClientUserInvitationsResponse = ListClientUserInvitationsResponse'
    { _lcuirNextPageToken :: !(Maybe Text)
    , _lcuirInvitations   :: !(Maybe [ClientUserInvitation])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListClientUserInvitationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcuirNextPageToken'
--
-- * 'lcuirInvitations'
listClientUserInvitationsResponse
    :: ListClientUserInvitationsResponse
listClientUserInvitationsResponse =
    ListClientUserInvitationsResponse'
    { _lcuirNextPageToken = Nothing
    , _lcuirInvitations = Nothing
    }

-- | A token to retrieve the next page of results. Pass this value in the
-- ListClientUserInvitationsRequest.pageToken field in the subsequent call
-- to the clients.invitations.list method to retrieve the next page of
-- results.
lcuirNextPageToken :: Lens' ListClientUserInvitationsResponse (Maybe Text)
lcuirNextPageToken
  = lens _lcuirNextPageToken
      (\ s a -> s{_lcuirNextPageToken = a})

-- | The returned list of client users.
lcuirInvitations :: Lens' ListClientUserInvitationsResponse [ClientUserInvitation]
lcuirInvitations
  = lens _lcuirInvitations
      (\ s a -> s{_lcuirInvitations = a})
      . _Default
      . _Coerce

instance FromJSON ListClientUserInvitationsResponse
         where
        parseJSON
          = withObject "ListClientUserInvitationsResponse"
              (\ o ->
                 ListClientUserInvitationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "invitations" .!= mempty))

instance ToJSON ListClientUserInvitationsResponse
         where
        toJSON ListClientUserInvitationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lcuirNextPageToken,
                  ("invitations" .=) <$> _lcuirInvitations])

-- | Daypart targeting message that specifies if the ad can be shown only
-- during certain parts of a day\/week.
--
-- /See:/ 'dayPart' smart constructor.
data DayPart = DayPart'
    { _dpStartTime :: !(Maybe TimeOfDay')
    , _dpEndTime   :: !(Maybe TimeOfDay')
    , _dpDayOfWeek :: !(Maybe DayPartDayOfWeek)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DayPart' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpStartTime'
--
-- * 'dpEndTime'
--
-- * 'dpDayOfWeek'
dayPart
    :: DayPart
dayPart =
    DayPart'
    { _dpStartTime = Nothing
    , _dpEndTime = Nothing
    , _dpDayOfWeek = Nothing
    }

-- | The starting time of day for the ad to show (minute level granularity).
-- The start time is inclusive. This field is not available for filtering
-- in PQL queries.
dpStartTime :: Lens' DayPart (Maybe TimeOfDay')
dpStartTime
  = lens _dpStartTime (\ s a -> s{_dpStartTime = a})

-- | The ending time of the day for the ad to show (minute level
-- granularity). The end time is exclusive. This field is not available for
-- filtering in PQL queries.
dpEndTime :: Lens' DayPart (Maybe TimeOfDay')
dpEndTime
  = lens _dpEndTime (\ s a -> s{_dpEndTime = a})

-- | The day of the week to target. If unspecified, applicable to all days.
dpDayOfWeek :: Lens' DayPart (Maybe DayPartDayOfWeek)
dpDayOfWeek
  = lens _dpDayOfWeek (\ s a -> s{_dpDayOfWeek = a})

instance FromJSON DayPart where
        parseJSON
          = withObject "DayPart"
              (\ o ->
                 DayPart' <$>
                   (o .:? "startTime") <*> (o .:? "endTime") <*>
                     (o .:? "dayOfWeek"))

instance ToJSON DayPart where
        toJSON DayPart'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _dpStartTime,
                  ("endTime" .=) <$> _dpEndTime,
                  ("dayOfWeek" .=) <$> _dpDayOfWeek])

-- | Mobile application targeting settings.
--
-- /See:/ 'mobileApplicationTargeting' smart constructor.
newtype MobileApplicationTargeting = MobileApplicationTargeting'
    { _matFirstPartyTargeting :: Maybe FirstPartyMobileApplicationTargeting
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobileApplicationTargeting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'matFirstPartyTargeting'
mobileApplicationTargeting
    :: MobileApplicationTargeting
mobileApplicationTargeting =
    MobileApplicationTargeting'
    { _matFirstPartyTargeting = Nothing
    }

-- | Publisher owned apps to be targeted or excluded by the publisher to
-- display the ads in.
matFirstPartyTargeting :: Lens' MobileApplicationTargeting (Maybe FirstPartyMobileApplicationTargeting)
matFirstPartyTargeting
  = lens _matFirstPartyTargeting
      (\ s a -> s{_matFirstPartyTargeting = a})

instance FromJSON MobileApplicationTargeting where
        parseJSON
          = withObject "MobileApplicationTargeting"
              (\ o ->
                 MobileApplicationTargeting' <$>
                   (o .:? "firstPartyTargeting"))

instance ToJSON MobileApplicationTargeting where
        toJSON MobileApplicationTargeting'{..}
          = object
              (catMaybes
                 [("firstPartyTargeting" .=) <$>
                    _matFirstPartyTargeting])

--
-- /See:/ 'listClientsResponse' smart constructor.
data ListClientsResponse = ListClientsResponse'
    { _lNextPageToken :: !(Maybe Text)
    , _lClients       :: !(Maybe [Client])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListClientsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lNextPageToken'
--
-- * 'lClients'
listClientsResponse
    :: ListClientsResponse
listClientsResponse =
    ListClientsResponse'
    { _lNextPageToken = Nothing
    , _lClients = Nothing
    }

-- | A token to retrieve the next page of results. Pass this value in the
-- ListClientsRequest.pageToken field in the subsequent call to the
-- accounts.clients.list method to retrieve the next page of results.
lNextPageToken :: Lens' ListClientsResponse (Maybe Text)
lNextPageToken
  = lens _lNextPageToken
      (\ s a -> s{_lNextPageToken = a})

-- | The returned list of clients.
lClients :: Lens' ListClientsResponse [Client]
lClients
  = lens _lClients (\ s a -> s{_lClients = a}) .
      _Default
      . _Coerce

instance FromJSON ListClientsResponse where
        parseJSON
          = withObject "ListClientsResponse"
              (\ o ->
                 ListClientsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "clients" .!= mempty))

instance ToJSON ListClientsResponse where
        toJSON ListClientsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lNextPageToken,
                  ("clients" .=) <$> _lClients])

-- | Response message for listing all creatives associated with a given
-- filtered bid reason.
--
-- /See:/ 'listCreativeStatusBreakdownByCreativeResponse' smart constructor.
data ListCreativeStatusBreakdownByCreativeResponse = ListCreativeStatusBreakdownByCreativeResponse'
    { _lcsbbcrNextPageToken           :: !(Maybe Text)
    , _lcsbbcrFilteredBidCreativeRows :: !(Maybe [FilteredBidCreativeRow])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListCreativeStatusBreakdownByCreativeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcsbbcrNextPageToken'
--
-- * 'lcsbbcrFilteredBidCreativeRows'
listCreativeStatusBreakdownByCreativeResponse
    :: ListCreativeStatusBreakdownByCreativeResponse
listCreativeStatusBreakdownByCreativeResponse =
    ListCreativeStatusBreakdownByCreativeResponse'
    { _lcsbbcrNextPageToken = Nothing
    , _lcsbbcrFilteredBidCreativeRows = Nothing
    }

-- | A token to retrieve the next page of results. Pass this value in the
-- ListCreativeStatusBreakdownByCreativeRequest.pageToken field in the
-- subsequent call to the filteredBids.creatives.list method to retrieve
-- the next page of results.
lcsbbcrNextPageToken :: Lens' ListCreativeStatusBreakdownByCreativeResponse (Maybe Text)
lcsbbcrNextPageToken
  = lens _lcsbbcrNextPageToken
      (\ s a -> s{_lcsbbcrNextPageToken = a})

-- | List of rows, with counts of bids with a given creative status
-- aggregated by creative.
lcsbbcrFilteredBidCreativeRows :: Lens' ListCreativeStatusBreakdownByCreativeResponse [FilteredBidCreativeRow]
lcsbbcrFilteredBidCreativeRows
  = lens _lcsbbcrFilteredBidCreativeRows
      (\ s a -> s{_lcsbbcrFilteredBidCreativeRows = a})
      . _Default
      . _Coerce

instance FromJSON
         ListCreativeStatusBreakdownByCreativeResponse where
        parseJSON
          = withObject
              "ListCreativeStatusBreakdownByCreativeResponse"
              (\ o ->
                 ListCreativeStatusBreakdownByCreativeResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "filteredBidCreativeRows" .!= mempty))

instance ToJSON
         ListCreativeStatusBreakdownByCreativeResponse where
        toJSON
          ListCreativeStatusBreakdownByCreativeResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lcsbbcrNextPageToken,
                  ("filteredBidCreativeRows" .=) <$>
                    _lcsbbcrFilteredBidCreativeRows])

-- | Frequency cap.
--
-- /See:/ 'frequencyCap' smart constructor.
data FrequencyCap = FrequencyCap'
    { _fcMaxImpressions :: !(Maybe (Textual Int32))
    , _fcNumTimeUnits   :: !(Maybe (Textual Int32))
    , _fcTimeUnitType   :: !(Maybe FrequencyCapTimeUnitType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FrequencyCap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcMaxImpressions'
--
-- * 'fcNumTimeUnits'
--
-- * 'fcTimeUnitType'
frequencyCap
    :: FrequencyCap
frequencyCap =
    FrequencyCap'
    { _fcMaxImpressions = Nothing
    , _fcNumTimeUnits = Nothing
    , _fcTimeUnitType = Nothing
    }

-- | The maximum number of impressions that can be served to a user within
-- the specified time period.
fcMaxImpressions :: Lens' FrequencyCap (Maybe Int32)
fcMaxImpressions
  = lens _fcMaxImpressions
      (\ s a -> s{_fcMaxImpressions = a})
      . mapping _Coerce

-- | The amount of time, in the units specified by time_unit_type. Defines
-- the amount of time over which impressions per user are counted and
-- capped.
fcNumTimeUnits :: Lens' FrequencyCap (Maybe Int32)
fcNumTimeUnits
  = lens _fcNumTimeUnits
      (\ s a -> s{_fcNumTimeUnits = a})
      . mapping _Coerce

-- | The time unit. Along with num_time_units defines the amount of time over
-- which impressions per user are counted and capped.
fcTimeUnitType :: Lens' FrequencyCap (Maybe FrequencyCapTimeUnitType)
fcTimeUnitType
  = lens _fcTimeUnitType
      (\ s a -> s{_fcTimeUnitType = a})

instance FromJSON FrequencyCap where
        parseJSON
          = withObject "FrequencyCap"
              (\ o ->
                 FrequencyCap' <$>
                   (o .:? "maxImpressions") <*> (o .:? "numTimeUnits")
                     <*> (o .:? "timeUnitType"))

instance ToJSON FrequencyCap where
        toJSON FrequencyCap'{..}
          = object
              (catMaybes
                 [("maxImpressions" .=) <$> _fcMaxImpressions,
                  ("numTimeUnits" .=) <$> _fcNumTimeUnits,
                  ("timeUnitType" .=) <$> _fcTimeUnitType])

-- | Response message for listing all reasons that bid responses were
-- considered to have no applicable bids.
--
-- /See:/ 'listBidResponsesWithoutBidsResponse' smart constructor.
data ListBidResponsesWithoutBidsResponse = ListBidResponsesWithoutBidsResponse'
    { _lbrwbrNextPageToken                    :: !(Maybe Text)
    , _lbrwbrBidResponseWithoutBidsStatusRows :: !(Maybe [BidResponseWithoutBidsStatusRow])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListBidResponsesWithoutBidsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbrwbrNextPageToken'
--
-- * 'lbrwbrBidResponseWithoutBidsStatusRows'
listBidResponsesWithoutBidsResponse
    :: ListBidResponsesWithoutBidsResponse
listBidResponsesWithoutBidsResponse =
    ListBidResponsesWithoutBidsResponse'
    { _lbrwbrNextPageToken = Nothing
    , _lbrwbrBidResponseWithoutBidsStatusRows = Nothing
    }

-- | A token to retrieve the next page of results. Pass this value in the
-- ListBidResponsesWithoutBidsRequest.pageToken field in the subsequent
-- call to the bidResponsesWithoutBids.list method to retrieve the next
-- page of results.
lbrwbrNextPageToken :: Lens' ListBidResponsesWithoutBidsResponse (Maybe Text)
lbrwbrNextPageToken
  = lens _lbrwbrNextPageToken
      (\ s a -> s{_lbrwbrNextPageToken = a})

-- | List of rows, with counts of bid responses without bids aggregated by
-- status.
lbrwbrBidResponseWithoutBidsStatusRows :: Lens' ListBidResponsesWithoutBidsResponse [BidResponseWithoutBidsStatusRow]
lbrwbrBidResponseWithoutBidsStatusRows
  = lens _lbrwbrBidResponseWithoutBidsStatusRows
      (\ s a ->
         s{_lbrwbrBidResponseWithoutBidsStatusRows = a})
      . _Default
      . _Coerce

instance FromJSON ListBidResponsesWithoutBidsResponse
         where
        parseJSON
          = withObject "ListBidResponsesWithoutBidsResponse"
              (\ o ->
                 ListBidResponsesWithoutBidsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "bidResponseWithoutBidsStatusRows" .!=
                        mempty))

instance ToJSON ListBidResponsesWithoutBidsResponse
         where
        toJSON ListBidResponsesWithoutBidsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lbrwbrNextPageToken,
                  ("bidResponseWithoutBidsStatusRows" .=) <$>
                    _lbrwbrBidResponseWithoutBidsStatusRows])

-- | \'OutputOnly A representation of the status of an ad in a specific
-- context. A context here relates to where something ultimately serves
-- (for example, a user or publisher geo, a platform, an HTTPS vs HTTP
-- request, or the type of auction).
--
-- /See:/ 'servingRestriction' smart constructor.
data ServingRestriction = ServingRestriction'
    { _srStatus             :: !(Maybe ServingRestrictionStatus)
    , _srContexts           :: !(Maybe [ServingContext])
    , _srDisApprovalReasons :: !(Maybe [DisApproval])
    , _srDisApproval        :: !(Maybe DisApproval)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServingRestriction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srStatus'
--
-- * 'srContexts'
--
-- * 'srDisApprovalReasons'
--
-- * 'srDisApproval'
servingRestriction
    :: ServingRestriction
servingRestriction =
    ServingRestriction'
    { _srStatus = Nothing
    , _srContexts = Nothing
    , _srDisApprovalReasons = Nothing
    , _srDisApproval = Nothing
    }

-- | The status of the creative in this context (for example, it has been
-- explicitly disapproved or is pending review).
srStatus :: Lens' ServingRestriction (Maybe ServingRestrictionStatus)
srStatus = lens _srStatus (\ s a -> s{_srStatus = a})

-- | The contexts for the restriction.
srContexts :: Lens' ServingRestriction [ServingContext]
srContexts
  = lens _srContexts (\ s a -> s{_srContexts = a}) .
      _Default
      . _Coerce

-- | Any disapprovals bound to this restriction. Only present if
-- status=DISAPPROVED. Can be used to filter the response of the
-- creatives.list method. Deprecated; please use disapproval field instead.
srDisApprovalReasons :: Lens' ServingRestriction [DisApproval]
srDisApprovalReasons
  = lens _srDisApprovalReasons
      (\ s a -> s{_srDisApprovalReasons = a})
      . _Default
      . _Coerce

-- | Disapproval bound to this restriction. Only present if
-- status=DISAPPROVED. Can be used to filter the response of the
-- creatives.list method.
srDisApproval :: Lens' ServingRestriction (Maybe DisApproval)
srDisApproval
  = lens _srDisApproval
      (\ s a -> s{_srDisApproval = a})

instance FromJSON ServingRestriction where
        parseJSON
          = withObject "ServingRestriction"
              (\ o ->
                 ServingRestriction' <$>
                   (o .:? "status") <*> (o .:? "contexts" .!= mempty)
                     <*> (o .:? "disapprovalReasons" .!= mempty)
                     <*> (o .:? "disapproval"))

instance ToJSON ServingRestriction where
        toJSON ServingRestriction'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _srStatus,
                  ("contexts" .=) <$> _srContexts,
                  ("disapprovalReasons" .=) <$> _srDisApprovalReasons,
                  ("disapproval" .=) <$> _srDisApproval])

-- | Represents information for a creative that is associated with a
-- Programmatic Guaranteed\/Preferred Deal in Ad Manager.
--
-- /See:/ 'creativeSpecification' smart constructor.
data CreativeSpecification = CreativeSpecification'
    { _csCreativeCompanionSizes :: !(Maybe [AdSize])
    , _csCreativeSize           :: !(Maybe AdSize)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeSpecification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csCreativeCompanionSizes'
--
-- * 'csCreativeSize'
creativeSpecification
    :: CreativeSpecification
creativeSpecification =
    CreativeSpecification'
    { _csCreativeCompanionSizes = Nothing
    , _csCreativeSize = Nothing
    }

-- | Companion sizes may be filled in only when this is a video creative.
csCreativeCompanionSizes :: Lens' CreativeSpecification [AdSize]
csCreativeCompanionSizes
  = lens _csCreativeCompanionSizes
      (\ s a -> s{_csCreativeCompanionSizes = a})
      . _Default
      . _Coerce

-- | The size of the creative.
csCreativeSize :: Lens' CreativeSpecification (Maybe AdSize)
csCreativeSize
  = lens _csCreativeSize
      (\ s a -> s{_csCreativeSize = a})

instance FromJSON CreativeSpecification where
        parseJSON
          = withObject "CreativeSpecification"
              (\ o ->
                 CreativeSpecification' <$>
                   (o .:? "creativeCompanionSizes" .!= mempty) <*>
                     (o .:? "creativeSize"))

instance ToJSON CreativeSpecification where
        toJSON CreativeSpecification'{..}
          = object
              (catMaybes
                 [("creativeCompanionSizes" .=) <$>
                    _csCreativeCompanionSizes,
                  ("creativeSize" .=) <$> _csCreativeSize])

-- | The set of metrics that are measured in numbers of impressions,
-- representing how many impressions with the specified dimension values
-- were considered eligible at each stage of the bidding funnel.
--
-- /See:/ 'impressionMetricsRow' smart constructor.
data ImpressionMetricsRow = ImpressionMetricsRow'
    { _imrRowDimensions        :: !(Maybe RowDimensions)
    , _imrAvailableImpressions :: !(Maybe MetricValue)
    , _imrSuccessfulResponses  :: !(Maybe MetricValue)
    , _imrInventoryMatches     :: !(Maybe MetricValue)
    , _imrBidRequests          :: !(Maybe MetricValue)
    , _imrResponsesWithBids    :: !(Maybe MetricValue)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImpressionMetricsRow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'imrRowDimensions'
--
-- * 'imrAvailableImpressions'
--
-- * 'imrSuccessfulResponses'
--
-- * 'imrInventoryMatches'
--
-- * 'imrBidRequests'
--
-- * 'imrResponsesWithBids'
impressionMetricsRow
    :: ImpressionMetricsRow
impressionMetricsRow =
    ImpressionMetricsRow'
    { _imrRowDimensions = Nothing
    , _imrAvailableImpressions = Nothing
    , _imrSuccessfulResponses = Nothing
    , _imrInventoryMatches = Nothing
    , _imrBidRequests = Nothing
    , _imrResponsesWithBids = Nothing
    }

-- | The values of all dimensions associated with metric values in this row.
imrRowDimensions :: Lens' ImpressionMetricsRow (Maybe RowDimensions)
imrRowDimensions
  = lens _imrRowDimensions
      (\ s a -> s{_imrRowDimensions = a})

-- | The number of impressions available to the buyer on Ad Exchange. In some
-- cases this value may be unavailable.
imrAvailableImpressions :: Lens' ImpressionMetricsRow (Maybe MetricValue)
imrAvailableImpressions
  = lens _imrAvailableImpressions
      (\ s a -> s{_imrAvailableImpressions = a})

-- | The number of impressions for which the buyer successfully sent a
-- response to Ad Exchange.
imrSuccessfulResponses :: Lens' ImpressionMetricsRow (Maybe MetricValue)
imrSuccessfulResponses
  = lens _imrSuccessfulResponses
      (\ s a -> s{_imrSuccessfulResponses = a})

-- | The number of impressions that match the buyer\'s inventory
-- pretargeting.
imrInventoryMatches :: Lens' ImpressionMetricsRow (Maybe MetricValue)
imrInventoryMatches
  = lens _imrInventoryMatches
      (\ s a -> s{_imrInventoryMatches = a})

-- | The number of impressions for which Ad Exchange sent the buyer a bid
-- request.
imrBidRequests :: Lens' ImpressionMetricsRow (Maybe MetricValue)
imrBidRequests
  = lens _imrBidRequests
      (\ s a -> s{_imrBidRequests = a})

-- | The number of impressions for which Ad Exchange received a response from
-- the buyer that contained at least one applicable bid.
imrResponsesWithBids :: Lens' ImpressionMetricsRow (Maybe MetricValue)
imrResponsesWithBids
  = lens _imrResponsesWithBids
      (\ s a -> s{_imrResponsesWithBids = a})

instance FromJSON ImpressionMetricsRow where
        parseJSON
          = withObject "ImpressionMetricsRow"
              (\ o ->
                 ImpressionMetricsRow' <$>
                   (o .:? "rowDimensions") <*>
                     (o .:? "availableImpressions")
                     <*> (o .:? "successfulResponses")
                     <*> (o .:? "inventoryMatches")
                     <*> (o .:? "bidRequests")
                     <*> (o .:? "responsesWithBids"))

instance ToJSON ImpressionMetricsRow where
        toJSON ImpressionMetricsRow'{..}
          = object
              (catMaybes
                 [("rowDimensions" .=) <$> _imrRowDimensions,
                  ("availableImpressions" .=) <$>
                    _imrAvailableImpressions,
                  ("successfulResponses" .=) <$>
                    _imrSuccessfulResponses,
                  ("inventoryMatches" .=) <$> _imrInventoryMatches,
                  ("bidRequests" .=) <$> _imrBidRequests,
                  ("responsesWithBids" .=) <$> _imrResponsesWithBids])

-- | Specifies the size of the creative.
--
-- /See:/ 'creativeSize' smart constructor.
data CreativeSize = CreativeSize'
    { _csSize             :: !(Maybe Size)
    , _csCompanionSizes   :: !(Maybe [Size])
    , _csSkippableAdType  :: !(Maybe CreativeSizeSkippableAdType)
    , _csCreativeSizeType :: !(Maybe CreativeSizeCreativeSizeType)
    , _csAllowedFormats   :: !(Maybe [Text])
    , _csNATiveTemplate   :: !(Maybe CreativeSizeNATiveTemplate)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeSize' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csSize'
--
-- * 'csCompanionSizes'
--
-- * 'csSkippableAdType'
--
-- * 'csCreativeSizeType'
--
-- * 'csAllowedFormats'
--
-- * 'csNATiveTemplate'
creativeSize
    :: CreativeSize
creativeSize =
    CreativeSize'
    { _csSize = Nothing
    , _csCompanionSizes = Nothing
    , _csSkippableAdType = Nothing
    , _csCreativeSizeType = Nothing
    , _csAllowedFormats = Nothing
    , _csNATiveTemplate = Nothing
    }

-- | For regular or video creative size type, specifies the size of the
-- creative
csSize :: Lens' CreativeSize (Maybe Size)
csSize = lens _csSize (\ s a -> s{_csSize = a})

-- | For video creatives specifies the sizes of companion ads (if present).
-- Companion sizes may be filled in only when creative_size_type = VIDEO
csCompanionSizes :: Lens' CreativeSize [Size]
csCompanionSizes
  = lens _csCompanionSizes
      (\ s a -> s{_csCompanionSizes = a})
      . _Default
      . _Coerce

-- | The type of skippable ad for this creative. It will have a value only if
-- creative_size_type = CreativeSizeType.VIDEO.
csSkippableAdType :: Lens' CreativeSize (Maybe CreativeSizeSkippableAdType)
csSkippableAdType
  = lens _csSkippableAdType
      (\ s a -> s{_csSkippableAdType = a})

-- | The creative size type.
csCreativeSizeType :: Lens' CreativeSize (Maybe CreativeSizeCreativeSizeType)
csCreativeSizeType
  = lens _csCreativeSizeType
      (\ s a -> s{_csCreativeSizeType = a})

-- | What formats are allowed by the publisher. If this repeated field is
-- empty then all formats are allowed. For example, if this field contains
-- AllowedFormatType.AUDIO then the publisher only allows an audio ad
-- (without any video).
csAllowedFormats :: Lens' CreativeSize [Text]
csAllowedFormats
  = lens _csAllowedFormats
      (\ s a -> s{_csAllowedFormats = a})
      . _Default
      . _Coerce

-- | The native template for this creative. It will have a value only if
-- creative_size_type = CreativeSizeType.NATIVE. \'OutputOnly
csNATiveTemplate :: Lens' CreativeSize (Maybe CreativeSizeNATiveTemplate)
csNATiveTemplate
  = lens _csNATiveTemplate
      (\ s a -> s{_csNATiveTemplate = a})

instance FromJSON CreativeSize where
        parseJSON
          = withObject "CreativeSize"
              (\ o ->
                 CreativeSize' <$>
                   (o .:? "size") <*>
                     (o .:? "companionSizes" .!= mempty)
                     <*> (o .:? "skippableAdType")
                     <*> (o .:? "creativeSizeType")
                     <*> (o .:? "allowedFormats" .!= mempty)
                     <*> (o .:? "nativeTemplate"))

instance ToJSON CreativeSize where
        toJSON CreativeSize'{..}
          = object
              (catMaybes
                 [("size" .=) <$> _csSize,
                  ("companionSizes" .=) <$> _csCompanionSizes,
                  ("skippableAdType" .=) <$> _csSkippableAdType,
                  ("creativeSizeType" .=) <$> _csCreativeSizeType,
                  ("allowedFormats" .=) <$> _csAllowedFormats,
                  ("nativeTemplate" .=) <$> _csNATiveTemplate])

-- | Response message for listing proposals.
--
-- /See:/ 'listProposalsResponse' smart constructor.
data ListProposalsResponse = ListProposalsResponse'
    { _lprProposals     :: !(Maybe [Proposal])
    , _lprNextPageToken :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListProposalsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lprProposals'
--
-- * 'lprNextPageToken'
listProposalsResponse
    :: ListProposalsResponse
listProposalsResponse =
    ListProposalsResponse'
    { _lprProposals = Nothing
    , _lprNextPageToken = Nothing
    }

-- | The list of proposals.
lprProposals :: Lens' ListProposalsResponse [Proposal]
lprProposals
  = lens _lprProposals (\ s a -> s{_lprProposals = a})
      . _Default
      . _Coerce

-- | Continuation token for fetching the next page of results.
lprNextPageToken :: Lens' ListProposalsResponse (Maybe Text)
lprNextPageToken
  = lens _lprNextPageToken
      (\ s a -> s{_lprNextPageToken = a})

instance FromJSON ListProposalsResponse where
        parseJSON
          = withObject "ListProposalsResponse"
              (\ o ->
                 ListProposalsResponse' <$>
                   (o .:? "proposals" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON ListProposalsResponse where
        toJSON ListProposalsResponse'{..}
          = object
              (catMaybes
                 [("proposals" .=) <$> _lprProposals,
                  ("nextPageToken" .=) <$> _lprNextPageToken])

-- | Represents the size of an ad unit that can be targeted on an ad request.
-- It only applies to Private Auction, AdX Preferred Deals and Auction
-- Packages. This targeting does not apply to Programmatic Guaranteed and
-- Preferred Deals in Ad Manager.
--
-- /See:/ 'inventorySizeTargeting' smart constructor.
data InventorySizeTargeting = InventorySizeTargeting'
    { _istTargetedInventorySizes :: !(Maybe [AdSize])
    , _istExcludedInventorySizes :: !(Maybe [AdSize])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InventorySizeTargeting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'istTargetedInventorySizes'
--
-- * 'istExcludedInventorySizes'
inventorySizeTargeting
    :: InventorySizeTargeting
inventorySizeTargeting =
    InventorySizeTargeting'
    { _istTargetedInventorySizes = Nothing
    , _istExcludedInventorySizes = Nothing
    }

-- | A list of inventory sizes to be included.
istTargetedInventorySizes :: Lens' InventorySizeTargeting [AdSize]
istTargetedInventorySizes
  = lens _istTargetedInventorySizes
      (\ s a -> s{_istTargetedInventorySizes = a})
      . _Default
      . _Coerce

-- | A list of inventory sizes to be excluded.
istExcludedInventorySizes :: Lens' InventorySizeTargeting [AdSize]
istExcludedInventorySizes
  = lens _istExcludedInventorySizes
      (\ s a -> s{_istExcludedInventorySizes = a})
      . _Default
      . _Coerce

instance FromJSON InventorySizeTargeting where
        parseJSON
          = withObject "InventorySizeTargeting"
              (\ o ->
                 InventorySizeTargeting' <$>
                   (o .:? "targetedInventorySizes" .!= mempty) <*>
                     (o .:? "excludedInventorySizes" .!= mempty))

instance ToJSON InventorySizeTargeting where
        toJSON InventorySizeTargeting'{..}
          = object
              (catMaybes
                 [("targetedInventorySizes" .=) <$>
                    _istTargetedInventorySizes,
                  ("excludedInventorySizes" .=) <$>
                    _istExcludedInventorySizes])

-- | The deal terms specify the details of a Product\/deal. They specify
-- things like price per buyer, the type of pricing model (e.g., fixed
-- price, auction) and expected impressions from the publisher.
--
-- /See:/ 'dealTerms' smart constructor.
data DealTerms = DealTerms'
    { _dtEstimatedGrossSpend          :: !(Maybe Price)
    , _dtNonGuaranteedFixedPriceTerms :: !(Maybe NonGuaranteedFixedPriceTerms)
    , _dtNonGuaranteedAuctionTerms    :: !(Maybe NonGuaranteedAuctionTerms)
    , _dtBrandingType                 :: !(Maybe DealTermsBrandingType)
    , _dtEstimatedImpressionsPerDay   :: !(Maybe (Textual Int64))
    , _dtSellerTimeZone               :: !(Maybe Text)
    , _dtGuaranteedFixedPriceTerms    :: !(Maybe GuaranteedFixedPriceTerms)
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

-- | Non-binding estimate of the estimated gross spend for this deal. Can be
-- set by buyer or seller.
dtEstimatedGrossSpend :: Lens' DealTerms (Maybe Price)
dtEstimatedGrossSpend
  = lens _dtEstimatedGrossSpend
      (\ s a -> s{_dtEstimatedGrossSpend = a})

-- | The terms for non-guaranteed fixed price deals.
dtNonGuaranteedFixedPriceTerms :: Lens' DealTerms (Maybe NonGuaranteedFixedPriceTerms)
dtNonGuaranteedFixedPriceTerms
  = lens _dtNonGuaranteedFixedPriceTerms
      (\ s a -> s{_dtNonGuaranteedFixedPriceTerms = a})

-- | The terms for non-guaranteed auction deals.
dtNonGuaranteedAuctionTerms :: Lens' DealTerms (Maybe NonGuaranteedAuctionTerms)
dtNonGuaranteedAuctionTerms
  = lens _dtNonGuaranteedAuctionTerms
      (\ s a -> s{_dtNonGuaranteedAuctionTerms = a})

-- | Visibility of the URL in bid requests. (default: BRANDED)
dtBrandingType :: Lens' DealTerms (Maybe DealTermsBrandingType)
dtBrandingType
  = lens _dtBrandingType
      (\ s a -> s{_dtBrandingType = a})

-- | Non-binding estimate of the impressions served per day. Can be set by
-- buyer or seller.
dtEstimatedImpressionsPerDay :: Lens' DealTerms (Maybe Int64)
dtEstimatedImpressionsPerDay
  = lens _dtEstimatedImpressionsPerDay
      (\ s a -> s{_dtEstimatedImpressionsPerDay = a})
      . mapping _Coerce

-- | The time zone name. For deals with Cost Per Day billing, defines the
-- time zone used to mark the boundaries of a day. It should be an IANA TZ
-- name, such as \"America\/Los_Angeles\". For more information, see
-- https:\/\/en.wikipedia.org\/wiki\/List_of_tz_database_time_zones.
dtSellerTimeZone :: Lens' DealTerms (Maybe Text)
dtSellerTimeZone
  = lens _dtSellerTimeZone
      (\ s a -> s{_dtSellerTimeZone = a})

-- | The terms for guaranteed fixed price deals.
dtGuaranteedFixedPriceTerms :: Lens' DealTerms (Maybe GuaranteedFixedPriceTerms)
dtGuaranteedFixedPriceTerms
  = lens _dtGuaranteedFixedPriceTerms
      (\ s a -> s{_dtGuaranteedFixedPriceTerms = a})

-- | Publisher provided description for the terms.
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

-- | \'OutputOnly Filtering reasons for this creative during a period of a
-- single day (from midnight to midnight Pacific).
--
-- /See:/ 'filteringStats' smart constructor.
data FilteringStats = FilteringStats'
    { _fsReasons :: !(Maybe [Reason])
    , _fsDate    :: !(Maybe Date)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilteringStats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fsReasons'
--
-- * 'fsDate'
filteringStats
    :: FilteringStats
filteringStats =
    FilteringStats'
    { _fsReasons = Nothing
    , _fsDate = Nothing
    }

-- | The set of filtering reasons for this date.
fsReasons :: Lens' FilteringStats [Reason]
fsReasons
  = lens _fsReasons (\ s a -> s{_fsReasons = a}) .
      _Default
      . _Coerce

-- | The day during which the data was collected. The data is collected from
-- 00:00:00 to 23:59:59 PT. During switches from PST to PDT and back, the
-- day may contain 23 or 25 hours of data instead of the usual 24.
fsDate :: Lens' FilteringStats (Maybe Date)
fsDate = lens _fsDate (\ s a -> s{_fsDate = a})

instance FromJSON FilteringStats where
        parseJSON
          = withObject "FilteringStats"
              (\ o ->
                 FilteringStats' <$>
                   (o .:? "reasons" .!= mempty) <*> (o .:? "date"))

instance ToJSON FilteringStats where
        toJSON FilteringStats'{..}
          = object
              (catMaybes
                 [("reasons" .=) <$> _fsReasons,
                  ("date" .=) <$> _fsDate])

-- | An invitation for a new client user to get access to the Authorized
-- Buyers UI. All fields are required unless otherwise specified.
--
-- /See:/ 'clientUserInvitation' smart constructor.
data ClientUserInvitation = ClientUserInvitation'
    { _cuiEmail           :: !(Maybe Text)
    , _cuiInvitationId    :: !(Maybe (Textual Int64))
    , _cuiClientAccountId :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientUserInvitation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuiEmail'
--
-- * 'cuiInvitationId'
--
-- * 'cuiClientAccountId'
clientUserInvitation
    :: ClientUserInvitation
clientUserInvitation =
    ClientUserInvitation'
    { _cuiEmail = Nothing
    , _cuiInvitationId = Nothing
    , _cuiClientAccountId = Nothing
    }

-- | The email address to which the invitation is sent. Email addresses
-- should be unique among all client users under each sponsor buyer.
cuiEmail :: Lens' ClientUserInvitation (Maybe Text)
cuiEmail = lens _cuiEmail (\ s a -> s{_cuiEmail = a})

-- | The unique numerical ID of the invitation that is sent to the user. The
-- value of this field is ignored in create operations.
cuiInvitationId :: Lens' ClientUserInvitation (Maybe Int64)
cuiInvitationId
  = lens _cuiInvitationId
      (\ s a -> s{_cuiInvitationId = a})
      . mapping _Coerce

-- | Numerical account ID of the client buyer that the invited user is
-- associated with. The value of this field is ignored in create
-- operations.
cuiClientAccountId :: Lens' ClientUserInvitation (Maybe Int64)
cuiClientAccountId
  = lens _cuiClientAccountId
      (\ s a -> s{_cuiClientAccountId = a})
      . mapping _Coerce

instance FromJSON ClientUserInvitation where
        parseJSON
          = withObject "ClientUserInvitation"
              (\ o ->
                 ClientUserInvitation' <$>
                   (o .:? "email") <*> (o .:? "invitationId") <*>
                     (o .:? "clientAccountId"))

instance ToJSON ClientUserInvitation where
        toJSON ClientUserInvitation'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _cuiEmail,
                  ("invitationId" .=) <$> _cuiInvitationId,
                  ("clientAccountId" .=) <$> _cuiClientAccountId])

-- | The number of winning bids with the specified dimension values for which
-- the buyer was not billed, as described by the specified status.
--
-- /See:/ 'nonBillableWinningBidStatusRow' smart constructor.
data NonBillableWinningBidStatusRow = NonBillableWinningBidStatusRow'
    { _nbwbsrStatus        :: !(Maybe NonBillableWinningBidStatusRowStatus)
    , _nbwbsrRowDimensions :: !(Maybe RowDimensions)
    , _nbwbsrBidCount      :: !(Maybe MetricValue)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NonBillableWinningBidStatusRow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nbwbsrStatus'
--
-- * 'nbwbsrRowDimensions'
--
-- * 'nbwbsrBidCount'
nonBillableWinningBidStatusRow
    :: NonBillableWinningBidStatusRow
nonBillableWinningBidStatusRow =
    NonBillableWinningBidStatusRow'
    { _nbwbsrStatus = Nothing
    , _nbwbsrRowDimensions = Nothing
    , _nbwbsrBidCount = Nothing
    }

-- | The status specifying why the winning bids were not billed.
nbwbsrStatus :: Lens' NonBillableWinningBidStatusRow (Maybe NonBillableWinningBidStatusRowStatus)
nbwbsrStatus
  = lens _nbwbsrStatus (\ s a -> s{_nbwbsrStatus = a})

-- | The values of all dimensions associated with metric values in this row.
nbwbsrRowDimensions :: Lens' NonBillableWinningBidStatusRow (Maybe RowDimensions)
nbwbsrRowDimensions
  = lens _nbwbsrRowDimensions
      (\ s a -> s{_nbwbsrRowDimensions = a})

-- | The number of bids with the specified status.
nbwbsrBidCount :: Lens' NonBillableWinningBidStatusRow (Maybe MetricValue)
nbwbsrBidCount
  = lens _nbwbsrBidCount
      (\ s a -> s{_nbwbsrBidCount = a})

instance FromJSON NonBillableWinningBidStatusRow
         where
        parseJSON
          = withObject "NonBillableWinningBidStatusRow"
              (\ o ->
                 NonBillableWinningBidStatusRow' <$>
                   (o .:? "status") <*> (o .:? "rowDimensions") <*>
                     (o .:? "bidCount"))

instance ToJSON NonBillableWinningBidStatusRow where
        toJSON NonBillableWinningBidStatusRow'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _nbwbsrStatus,
                  ("rowDimensions" .=) <$> _nbwbsrRowDimensions,
                  ("bidCount" .=) <$> _nbwbsrBidCount])

-- | Response message for listing products visible to the buyer.
--
-- /See:/ 'listProductsResponse' smart constructor.
data ListProductsResponse = ListProductsResponse'
    { _lisNextPageToken :: !(Maybe Text)
    , _lisProducts      :: !(Maybe [Product])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListProductsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lisNextPageToken'
--
-- * 'lisProducts'
listProductsResponse
    :: ListProductsResponse
listProductsResponse =
    ListProductsResponse'
    { _lisNextPageToken = Nothing
    , _lisProducts = Nothing
    }

-- | List pagination support.
lisNextPageToken :: Lens' ListProductsResponse (Maybe Text)
lisNextPageToken
  = lens _lisNextPageToken
      (\ s a -> s{_lisNextPageToken = a})

-- | The list of matching products at their head revision number.
lisProducts :: Lens' ListProductsResponse [Product]
lisProducts
  = lens _lisProducts (\ s a -> s{_lisProducts = a}) .
      _Default
      . _Coerce

instance FromJSON ListProductsResponse where
        parseJSON
          = withObject "ListProductsResponse"
              (\ o ->
                 ListProductsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "products" .!= mempty))

instance ToJSON ListProductsResponse where
        toJSON ListProductsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lisNextPageToken,
                  ("products" .=) <$> _lisProducts])

-- | Represents a buyer of inventory. Each buyer is identified by a unique
-- Authorized Buyers account ID.
--
-- /See:/ 'buyer' smart constructor.
newtype Buyer = Buyer'
    { _bAccountId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Buyer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bAccountId'
buyer
    :: Buyer
buyer =
    Buyer'
    { _bAccountId = Nothing
    }

-- | Authorized Buyers account ID of the buyer.
bAccountId :: Lens' Buyer (Maybe Text)
bAccountId
  = lens _bAccountId (\ s a -> s{_bAccountId = a})

instance FromJSON Buyer where
        parseJSON
          = withObject "Buyer"
              (\ o -> Buyer' <$> (o .:? "accountId"))

instance ToJSON Buyer where
        toJSON Buyer'{..}
          = object
              (catMaybes [("accountId" .=) <$> _bAccountId])

-- | Response message for listing the metrics that are measured in number of
-- bids.
--
-- /See:/ 'listBidMetricsResponse' smart constructor.
data ListBidMetricsResponse = ListBidMetricsResponse'
    { _lbmrNextPageToken  :: !(Maybe Text)
    , _lbmrBidMetricsRows :: !(Maybe [BidMetricsRow])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListBidMetricsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbmrNextPageToken'
--
-- * 'lbmrBidMetricsRows'
listBidMetricsResponse
    :: ListBidMetricsResponse
listBidMetricsResponse =
    ListBidMetricsResponse'
    { _lbmrNextPageToken = Nothing
    , _lbmrBidMetricsRows = Nothing
    }

-- | A token to retrieve the next page of results. Pass this value in the
-- ListBidMetricsRequest.pageToken field in the subsequent call to the
-- bidMetrics.list method to retrieve the next page of results.
lbmrNextPageToken :: Lens' ListBidMetricsResponse (Maybe Text)
lbmrNextPageToken
  = lens _lbmrNextPageToken
      (\ s a -> s{_lbmrNextPageToken = a})

-- | List of rows, each containing a set of bid metrics.
lbmrBidMetricsRows :: Lens' ListBidMetricsResponse [BidMetricsRow]
lbmrBidMetricsRows
  = lens _lbmrBidMetricsRows
      (\ s a -> s{_lbmrBidMetricsRows = a})
      . _Default
      . _Coerce

instance FromJSON ListBidMetricsResponse where
        parseJSON
          = withObject "ListBidMetricsResponse"
              (\ o ->
                 ListBidMetricsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "bidMetricsRows" .!= mempty))

instance ToJSON ListBidMetricsResponse where
        toJSON ListBidMetricsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lbmrNextPageToken,
                  ("bidMetricsRows" .=) <$> _lbmrBidMetricsRows])

-- | A client resource represents a client buyer—an agency, a brand, or an
-- advertiser customer of the sponsor buyer. Users associated with the
-- client buyer have restricted access to the Marketplace and certain other
-- sections of the Authorized Buyers UI based on the role granted to the
-- client buyer. All fields are required unless otherwise specified.
--
-- /See:/ 'client' smart constructor.
data Client = Client'
    { _cEntityName      :: !(Maybe Text)
    , _cStatus          :: !(Maybe ClientStatus)
    , _cEntityType      :: !(Maybe ClientEntityType)
    , _cRole            :: !(Maybe ClientRole)
    , _cVisibleToSeller :: !(Maybe Bool)
    , _cPartnerClientId :: !(Maybe Text)
    , _cClientAccountId :: !(Maybe (Textual Int64))
    , _cClientName      :: !(Maybe Text)
    , _cEntityId        :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Client' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cEntityName'
--
-- * 'cStatus'
--
-- * 'cEntityType'
--
-- * 'cRole'
--
-- * 'cVisibleToSeller'
--
-- * 'cPartnerClientId'
--
-- * 'cClientAccountId'
--
-- * 'cClientName'
--
-- * 'cEntityId'
client
    :: Client
client =
    Client'
    { _cEntityName = Nothing
    , _cStatus = Nothing
    , _cEntityType = Nothing
    , _cRole = Nothing
    , _cVisibleToSeller = Nothing
    , _cPartnerClientId = Nothing
    , _cClientAccountId = Nothing
    , _cClientName = Nothing
    , _cEntityId = Nothing
    }

-- | The name of the entity. This field is automatically fetched based on the
-- type and ID. The value of this field is ignored in create and update
-- operations.
cEntityName :: Lens' Client (Maybe Text)
cEntityName
  = lens _cEntityName (\ s a -> s{_cEntityName = a})

-- | The status of the client buyer.
cStatus :: Lens' Client (Maybe ClientStatus)
cStatus = lens _cStatus (\ s a -> s{_cStatus = a})

-- | The type of the client entity: \`ADVERTISER\`, \`BRAND\`, or \`AGENCY\`.
cEntityType :: Lens' Client (Maybe ClientEntityType)
cEntityType
  = lens _cEntityType (\ s a -> s{_cEntityType = a})

-- | The role which is assigned to the client buyer. Each role implies a set
-- of permissions granted to the client. Must be one of
-- \`CLIENT_DEAL_VIEWER\`, \`CLIENT_DEAL_NEGOTIATOR\` or
-- \`CLIENT_DEAL_APPROVER\`.
cRole :: Lens' Client (Maybe ClientRole)
cRole = lens _cRole (\ s a -> s{_cRole = a})

-- | Whether the client buyer will be visible to sellers.
cVisibleToSeller :: Lens' Client (Maybe Bool)
cVisibleToSeller
  = lens _cVisibleToSeller
      (\ s a -> s{_cVisibleToSeller = a})

-- | Optional arbitrary unique identifier of this client buyer from the
-- standpoint of its Ad Exchange sponsor buyer. This field can be used to
-- associate a client buyer with the identifier in the namespace of its
-- sponsor buyer, lookup client buyers by that identifier and verify
-- whether an Ad Exchange counterpart of a given client buyer already
-- exists. If present, must be unique among all the client buyers for its
-- Ad Exchange sponsor buyer.
cPartnerClientId :: Lens' Client (Maybe Text)
cPartnerClientId
  = lens _cPartnerClientId
      (\ s a -> s{_cPartnerClientId = a})

-- | The globally-unique numerical ID of the client. The value of this field
-- is ignored in create and update operations.
cClientAccountId :: Lens' Client (Maybe Int64)
cClientAccountId
  = lens _cClientAccountId
      (\ s a -> s{_cClientAccountId = a})
      . mapping _Coerce

-- | Name used to represent this client to publishers. You may have multiple
-- clients that map to the same entity, but for each client the combination
-- of \`clientName\` and entity must be unique. You can specify this field
-- as empty.
cClientName :: Lens' Client (Maybe Text)
cClientName
  = lens _cClientName (\ s a -> s{_cClientName = a})

-- | Numerical identifier of the client entity. The entity can be an
-- advertiser, a brand, or an agency. This identifier is unique among all
-- the entities with the same type. A list of all known advertisers with
-- their identifiers is available in the
-- [advertisers.txt](https:\/\/storage.googleapis.com\/adx-rtb-dictionaries\/advertisers.txt)
-- file. A list of all known brands with their identifiers is available in
-- the
-- [brands.txt](https:\/\/storage.googleapis.com\/adx-rtb-dictionaries\/brands.txt)
-- file. A list of all known agencies with their identifiers is available
-- in the
-- [agencies.txt](https:\/\/storage.googleapis.com\/adx-rtb-dictionaries\/agencies.txt)
-- file.
cEntityId :: Lens' Client (Maybe Int64)
cEntityId
  = lens _cEntityId (\ s a -> s{_cEntityId = a}) .
      mapping _Coerce

instance FromJSON Client where
        parseJSON
          = withObject "Client"
              (\ o ->
                 Client' <$>
                   (o .:? "entityName") <*> (o .:? "status") <*>
                     (o .:? "entityType")
                     <*> (o .:? "role")
                     <*> (o .:? "visibleToSeller")
                     <*> (o .:? "partnerClientId")
                     <*> (o .:? "clientAccountId")
                     <*> (o .:? "clientName")
                     <*> (o .:? "entityId"))

instance ToJSON Client where
        toJSON Client'{..}
          = object
              (catMaybes
                 [("entityName" .=) <$> _cEntityName,
                  ("status" .=) <$> _cStatus,
                  ("entityType" .=) <$> _cEntityType,
                  ("role" .=) <$> _cRole,
                  ("visibleToSeller" .=) <$> _cVisibleToSeller,
                  ("partnerClientId" .=) <$> _cPartnerClientId,
                  ("clientAccountId" .=) <$> _cClientAccountId,
                  ("clientName" .=) <$> _cClientName,
                  ("entityId" .=) <$> _cEntityId])

-- | \'OutputOnly The reason and details for a disapproval.
--
-- /See:/ 'disApproval' smart constructor.
data DisApproval = DisApproval'
    { _daReason  :: !(Maybe DisApprovalReason)
    , _daDetails :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DisApproval' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daReason'
--
-- * 'daDetails'
disApproval
    :: DisApproval
disApproval =
    DisApproval'
    { _daReason = Nothing
    , _daDetails = Nothing
    }

-- | The categorized reason for disapproval.
daReason :: Lens' DisApproval (Maybe DisApprovalReason)
daReason = lens _daReason (\ s a -> s{_daReason = a})

-- | Additional details about the reason for disapproval.
daDetails :: Lens' DisApproval [Text]
daDetails
  = lens _daDetails (\ s a -> s{_daDetails = a}) .
      _Default
      . _Coerce

instance FromJSON DisApproval where
        parseJSON
          = withObject "DisApproval"
              (\ o ->
                 DisApproval' <$>
                   (o .:? "reason") <*> (o .:? "details" .!= mempty))

instance ToJSON DisApproval where
        toJSON DisApproval'{..}
          = object
              (catMaybes
                 [("reason" .=) <$> _daReason,
                  ("details" .=) <$> _daDetails])
