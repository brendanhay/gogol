{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.GAN.Events.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves event data for a given advertiser\/publisher.
--
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference> for @gan.events.list@.
module Network.Google.Resource.GAN.Events.List
    (
    -- * REST Resource
      EventsListResource

    -- * Creating a Request
    , eventsList
    , EventsList

    -- * Request Lenses
    , elStatus
    , elEventDateMin
    , elChargeType
    , elMemberId
    , elModifyDateMax
    , elAdvertiserId
    , elModifyDateMin
    , elRoleId
    , elRole
    , elEventDateMax
    , elSKU
    , elLinkId
    , elPageToken
    , elType
    , elOrderId
    , elPublisherId
    , elProductCategory
    , elMaxResults
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

-- | A resource alias for @gan.events.list@ method which the
-- 'EventsList' request conforms to.
type EventsListResource =
     "gan" :>
       "v1beta1" :>
         Capture "role" EventsListRole :>
           Capture "roleId" Text :>
             "events" :>
               QueryParam "status" EventsListStatus :>
                 QueryParam "eventDateMin" Text :>
                   QueryParam "chargeType" EventsListChargeType :>
                     QueryParam "memberId" Text :>
                       QueryParam "modifyDateMax" Text :>
                         QueryParam "advertiserId" Text :>
                           QueryParam "modifyDateMin" Text :>
                             QueryParam "eventDateMax" Text :>
                               QueryParam "sku" Text :>
                                 QueryParam "linkId" Text :>
                                   QueryParam "pageToken" Text :>
                                     QueryParam "type" EventsListType :>
                                       QueryParam "orderId" Text :>
                                         QueryParam "publisherId" Text :>
                                           QueryParam "productCategory" Text :>
                                             QueryParam "maxResults"
                                               (Textual Word32)
                                               :>
                                               QueryParam "alt" AltJSON :>
                                                 Get '[JSON] Events

-- | Retrieves event data for a given advertiser\/publisher.
--
-- /See:/ 'eventsList' smart constructor.
data EventsList = EventsList
    { _elStatus          :: !(Maybe EventsListStatus)
    , _elEventDateMin    :: !(Maybe Text)
    , _elChargeType      :: !(Maybe EventsListChargeType)
    , _elMemberId        :: !(Maybe Text)
    , _elModifyDateMax   :: !(Maybe Text)
    , _elAdvertiserId    :: !(Maybe Text)
    , _elModifyDateMin   :: !(Maybe Text)
    , _elRoleId          :: !Text
    , _elRole            :: !EventsListRole
    , _elEventDateMax    :: !(Maybe Text)
    , _elSKU             :: !(Maybe Text)
    , _elLinkId          :: !(Maybe Text)
    , _elPageToken       :: !(Maybe Text)
    , _elType            :: !(Maybe EventsListType)
    , _elOrderId         :: !(Maybe Text)
    , _elPublisherId     :: !(Maybe Text)
    , _elProductCategory :: !(Maybe Text)
    , _elMaxResults      :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elStatus'
--
-- * 'elEventDateMin'
--
-- * 'elChargeType'
--
-- * 'elMemberId'
--
-- * 'elModifyDateMax'
--
-- * 'elAdvertiserId'
--
-- * 'elModifyDateMin'
--
-- * 'elRoleId'
--
-- * 'elRole'
--
-- * 'elEventDateMax'
--
-- * 'elSKU'
--
-- * 'elLinkId'
--
-- * 'elPageToken'
--
-- * 'elType'
--
-- * 'elOrderId'
--
-- * 'elPublisherId'
--
-- * 'elProductCategory'
--
-- * 'elMaxResults'
eventsList
    :: Text -- ^ 'elRoleId'
    -> EventsListRole -- ^ 'elRole'
    -> EventsList
eventsList pElRoleId_ pElRole_ =
    EventsList
    { _elStatus = Nothing
    , _elEventDateMin = Nothing
    , _elChargeType = Nothing
    , _elMemberId = Nothing
    , _elModifyDateMax = Nothing
    , _elAdvertiserId = Nothing
    , _elModifyDateMin = Nothing
    , _elRoleId = pElRoleId_
    , _elRole = pElRole_
    , _elEventDateMax = Nothing
    , _elSKU = Nothing
    , _elLinkId = Nothing
    , _elPageToken = Nothing
    , _elType = Nothing
    , _elOrderId = Nothing
    , _elPublisherId = Nothing
    , _elProductCategory = Nothing
    , _elMaxResults = Nothing
    }

-- | Filters out all events that do not have the given status. Valid values:
-- \'active\', \'canceled\'. Optional.
elStatus :: Lens' EventsList (Maybe EventsListStatus)
elStatus = lens _elStatus (\ s a -> s{_elStatus = a})

-- | Filters out all events earlier than given date. Optional. Defaults to 24
-- hours from current date\/time.
elEventDateMin :: Lens' EventsList (Maybe Text)
elEventDateMin
  = lens _elEventDateMin
      (\ s a -> s{_elEventDateMin = a})

-- | Filters out all charge events that are not of the given charge type.
-- Valid values: \'other\', \'slotting_fee\', \'monthly_minimum\',
-- \'tier_bonus\', \'credit\', \'debit\'. Optional.
elChargeType :: Lens' EventsList (Maybe EventsListChargeType)
elChargeType
  = lens _elChargeType (\ s a -> s{_elChargeType = a})

-- | Caret(^) delimited list of member IDs. Filters out all events that do
-- not reference one of the given member IDs. Optional.
elMemberId :: Lens' EventsList (Maybe Text)
elMemberId
  = lens _elMemberId (\ s a -> s{_elMemberId = a})

-- | Filters out all events modified later than given date. Optional.
-- Defaults to 24 hours after modifyDateMin, if modifyDateMin is explicitly
-- set.
elModifyDateMax :: Lens' EventsList (Maybe Text)
elModifyDateMax
  = lens _elModifyDateMax
      (\ s a -> s{_elModifyDateMax = a})

-- | Caret(^) delimited list of advertiser IDs. Filters out all events that
-- do not reference one of the given advertiser IDs. Only used when under
-- publishers role. Optional.
elAdvertiserId :: Lens' EventsList (Maybe Text)
elAdvertiserId
  = lens _elAdvertiserId
      (\ s a -> s{_elAdvertiserId = a})

-- | Filters out all events modified earlier than given date. Optional.
-- Defaults to 24 hours before the current modifyDateMax, if modifyDateMax
-- is explicitly set.
elModifyDateMin :: Lens' EventsList (Maybe Text)
elModifyDateMin
  = lens _elModifyDateMin
      (\ s a -> s{_elModifyDateMin = a})

-- | The ID of the requesting advertiser or publisher.
elRoleId :: Lens' EventsList Text
elRoleId = lens _elRoleId (\ s a -> s{_elRoleId = a})

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
elRole :: Lens' EventsList EventsListRole
elRole = lens _elRole (\ s a -> s{_elRole = a})

-- | Filters out all events later than given date. Optional. Defaults to 24
-- hours after eventMin.
elEventDateMax :: Lens' EventsList (Maybe Text)
elEventDateMax
  = lens _elEventDateMax
      (\ s a -> s{_elEventDateMax = a})

-- | Caret(^) delimited list of SKUs. Filters out all events that do not
-- reference one of the given SKU. Optional.
elSKU :: Lens' EventsList (Maybe Text)
elSKU = lens _elSKU (\ s a -> s{_elSKU = a})

-- | Caret(^) delimited list of link IDs. Filters out all events that do not
-- reference one of the given link IDs. Optional.
elLinkId :: Lens' EventsList (Maybe Text)
elLinkId = lens _elLinkId (\ s a -> s{_elLinkId = a})

-- | The value of \'nextPageToken\' from the previous page. Optional.
elPageToken :: Lens' EventsList (Maybe Text)
elPageToken
  = lens _elPageToken (\ s a -> s{_elPageToken = a})

-- | Filters out all events that are not of the given type. Valid values:
-- \'action\', \'transaction\', \'charge\'. Optional.
elType :: Lens' EventsList (Maybe EventsListType)
elType = lens _elType (\ s a -> s{_elType = a})

-- | Caret(^) delimited list of order IDs. Filters out all events that do not
-- reference one of the given order IDs. Optional.
elOrderId :: Lens' EventsList (Maybe Text)
elOrderId
  = lens _elOrderId (\ s a -> s{_elOrderId = a})

-- | Caret(^) delimited list of publisher IDs. Filters out all events that do
-- not reference one of the given publishers IDs. Only used when under
-- advertiser role. Optional.
elPublisherId :: Lens' EventsList (Maybe Text)
elPublisherId
  = lens _elPublisherId
      (\ s a -> s{_elPublisherId = a})

-- | Caret(^) delimited list of product categories. Filters out all events
-- that do not reference a product in one of the given product categories.
-- Optional.
elProductCategory :: Lens' EventsList (Maybe Text)
elProductCategory
  = lens _elProductCategory
      (\ s a -> s{_elProductCategory = a})

-- | Max number of offers to return in this page. Optional. Defaults to 20.
elMaxResults :: Lens' EventsList (Maybe Word32)
elMaxResults
  = lens _elMaxResults (\ s a -> s{_elMaxResults = a})
      . mapping _Coerce

instance GoogleRequest EventsList where
        type Rs EventsList = Events
        requestClient EventsList{..}
          = go _elRole _elRoleId _elStatus _elEventDateMin
              _elChargeType
              _elMemberId
              _elModifyDateMax
              _elAdvertiserId
              _elModifyDateMin
              _elEventDateMax
              _elSKU
              _elLinkId
              _elPageToken
              _elType
              _elOrderId
              _elPublisherId
              _elProductCategory
              _elMaxResults
              (Just AltJSON)
              affiliatesService
          where go
                  = buildClient (Proxy :: Proxy EventsListResource)
                      mempty
