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
-- Module      : Network.Google.Resource.GAN.Advertisers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves data about all advertisers that the requesting
-- advertiser\/publisher has access to.
--
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference> for @gan.advertisers.list@.
module Network.Google.Resource.GAN.Advertisers.List
    (
    -- * REST Resource
      AdvertisersListResource

    -- * Creating a Request
    , advertisersList'
    , AdvertisersList'

    -- * Request Lenses
    , alRelationshipStatus
    , alMinSevenDayEpc
    , alRoleId
    , alMinNinetyDayEpc
    , alRole
    , alMinPayoutRank
    , alAdvertiserCategory
    , alPageToken
    , alMaxResults
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

-- | A resource alias for @gan.advertisers.list@ method which the
-- 'AdvertisersList'' request conforms to.
type AdvertisersListResource =
     Capture "role" AdvertisersListRole :>
       Capture "roleId" Text :>
         "advertisers" :>
           QueryParam "relationshipStatus"
             AdvertisersListRelationshipStatus
             :>
             QueryParam "minSevenDayEpc" Double :>
               QueryParam "minNinetyDayEpc" Double :>
                 QueryParam "minPayoutRank" Int32 :>
                   QueryParam "advertiserCategory" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Advertisers

-- | Retrieves data about all advertisers that the requesting
-- advertiser\/publisher has access to.
--
-- /See:/ 'advertisersList'' smart constructor.
data AdvertisersList' = AdvertisersList'
    { _alRelationshipStatus :: !(Maybe AdvertisersListRelationshipStatus)
    , _alMinSevenDayEpc     :: !(Maybe Double)
    , _alRoleId             :: !Text
    , _alMinNinetyDayEpc    :: !(Maybe Double)
    , _alRole               :: !AdvertisersListRole
    , _alMinPayoutRank      :: !(Maybe Int32)
    , _alAdvertiserCategory :: !(Maybe Text)
    , _alPageToken          :: !(Maybe Text)
    , _alMaxResults         :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alRelationshipStatus'
--
-- * 'alMinSevenDayEpc'
--
-- * 'alRoleId'
--
-- * 'alMinNinetyDayEpc'
--
-- * 'alRole'
--
-- * 'alMinPayoutRank'
--
-- * 'alAdvertiserCategory'
--
-- * 'alPageToken'
--
-- * 'alMaxResults'
advertisersList'
    :: Text -- ^ 'alRoleId'
    -> AdvertisersListRole -- ^ 'alRole'
    -> AdvertisersList'
advertisersList' pAlRoleId_ pAlRole_ =
    AdvertisersList'
    { _alRelationshipStatus = Nothing
    , _alMinSevenDayEpc = Nothing
    , _alRoleId = pAlRoleId_
    , _alMinNinetyDayEpc = Nothing
    , _alRole = pAlRole_
    , _alMinPayoutRank = Nothing
    , _alAdvertiserCategory = Nothing
    , _alPageToken = Nothing
    , _alMaxResults = Nothing
    }

-- | Filters out all advertisers for which do not have the given relationship
-- status with the requesting publisher.
alRelationshipStatus :: Lens' AdvertisersList' (Maybe AdvertisersListRelationshipStatus)
alRelationshipStatus
  = lens _alRelationshipStatus
      (\ s a -> s{_alRelationshipStatus = a})

-- | Filters out all advertisers that have a seven day EPC average lower than
-- the given value (inclusive). Min value: 0.0. Optional.
alMinSevenDayEpc :: Lens' AdvertisersList' (Maybe Double)
alMinSevenDayEpc
  = lens _alMinSevenDayEpc
      (\ s a -> s{_alMinSevenDayEpc = a})

-- | The ID of the requesting advertiser or publisher.
alRoleId :: Lens' AdvertisersList' Text
alRoleId = lens _alRoleId (\ s a -> s{_alRoleId = a})

-- | Filters out all advertisers that have a ninety day EPC average lower
-- than the given value (inclusive). Min value: 0.0. Optional.
alMinNinetyDayEpc :: Lens' AdvertisersList' (Maybe Double)
alMinNinetyDayEpc
  = lens _alMinNinetyDayEpc
      (\ s a -> s{_alMinNinetyDayEpc = a})

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
alRole :: Lens' AdvertisersList' AdvertisersListRole
alRole = lens _alRole (\ s a -> s{_alRole = a})

-- | A value between 1 and 4, where 1 represents the quartile of advertisers
-- with the lowest ranks and 4 represents the quartile of advertisers with
-- the highest ranks. Filters out all advertisers with a lower rank than
-- the given quartile. For example if a 2 was given only advertisers with a
-- payout rank of 25 or higher would be included. Optional.
alMinPayoutRank :: Lens' AdvertisersList' (Maybe Int32)
alMinPayoutRank
  = lens _alMinPayoutRank
      (\ s a -> s{_alMinPayoutRank = a})

-- | Caret(^) delimted list of advertiser categories. Valid categories are
-- defined here:
-- http:\/\/www.google.com\/support\/affiliatenetwork\/advertiser\/bin\/answer.py?hl=en&answer=107581.
-- Filters out all advertisers not in one of the given advertiser
-- categories. Optional.
alAdvertiserCategory :: Lens' AdvertisersList' (Maybe Text)
alAdvertiserCategory
  = lens _alAdvertiserCategory
      (\ s a -> s{_alAdvertiserCategory = a})

-- | The value of \'nextPageToken\' from the previous page. Optional.
alPageToken :: Lens' AdvertisersList' (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | Max number of items to return in this page. Optional. Defaults to 20.
alMaxResults :: Lens' AdvertisersList' (Maybe Word32)
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})

instance GoogleRequest AdvertisersList' where
        type Rs AdvertisersList' = Advertisers
        requestClient AdvertisersList'{..}
          = go _alRole _alRoleId _alRelationshipStatus
              _alMinSevenDayEpc
              _alMinNinetyDayEpc
              _alMinPayoutRank
              _alAdvertiserCategory
              _alPageToken
              _alMaxResults
              (Just AltJSON)
              affiliatesService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertisersListResource)
                      mempty
