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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Creatives.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of the authenticated user\'s active creatives. A
-- creative will be available 30-40 minutes after submission.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.creatives.list@.
module Network.Google.Resource.AdExchangeBuyer.Creatives.List
    (
    -- * REST Resource
      CreativesListResource

    -- * Creating a Request
    , creativesList'
    , CreativesList'

    -- * Request Lenses
    , clBuyerCreativeId
    , clOpenAuctionStatusFilter
    , clAccountId
    , clPageToken
    , clDealsStatusFilter
    , clMaxResults
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.creatives.list@ method which the
-- 'CreativesList'' request conforms to.
type CreativesListResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "creatives" :>
           QueryParams "buyerCreativeId" Text :>
             QueryParam "openAuctionStatusFilter"
               CreativesListOpenAuctionStatusFilter
               :>
               QueryParams "accountId" (JSONText Int32) :>
                 QueryParam "pageToken" Text :>
                   QueryParam "dealsStatusFilter"
                     CreativesListDealsStatusFilter
                     :>
                     QueryParam "maxResults" (JSONText Word32) :>
                       QueryParam "alt" AltJSON :> Get '[JSON] CreativesList

-- | Retrieves a list of the authenticated user\'s active creatives. A
-- creative will be available 30-40 minutes after submission.
--
-- /See:/ 'creativesList'' smart constructor.
data CreativesList' = CreativesList'
    { _clBuyerCreativeId         :: !(Maybe [Text])
    , _clOpenAuctionStatusFilter :: !(Maybe CreativesListOpenAuctionStatusFilter)
    , _clAccountId               :: !(Maybe [JSONText Int32])
    , _clPageToken               :: !(Maybe Text)
    , _clDealsStatusFilter       :: !(Maybe CreativesListDealsStatusFilter)
    , _clMaxResults              :: !(Maybe (JSONText Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clBuyerCreativeId'
--
-- * 'clOpenAuctionStatusFilter'
--
-- * 'clAccountId'
--
-- * 'clPageToken'
--
-- * 'clDealsStatusFilter'
--
-- * 'clMaxResults'
creativesList'
    :: CreativesList'
creativesList' =
    CreativesList'
    { _clBuyerCreativeId = Nothing
    , _clOpenAuctionStatusFilter = Nothing
    , _clAccountId = Nothing
    , _clPageToken = Nothing
    , _clDealsStatusFilter = Nothing
    , _clMaxResults = Nothing
    }

-- | When specified, only creatives for the given buyer creative ids are
-- returned.
clBuyerCreativeId :: Lens' CreativesList' [Text]
clBuyerCreativeId
  = lens _clBuyerCreativeId
      (\ s a -> s{_clBuyerCreativeId = a})
      . _Default
      . _Coerce

-- | When specified, only creatives having the given open auction status are
-- returned.
clOpenAuctionStatusFilter :: Lens' CreativesList' (Maybe CreativesListOpenAuctionStatusFilter)
clOpenAuctionStatusFilter
  = lens _clOpenAuctionStatusFilter
      (\ s a -> s{_clOpenAuctionStatusFilter = a})

-- | When specified, only creatives for the given account ids are returned.
clAccountId :: Lens' CreativesList' [Int32]
clAccountId
  = lens _clAccountId (\ s a -> s{_clAccountId = a}) .
      _Default
      . _Coerce

-- | A continuation token, used to page through ad clients. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response. Optional.
clPageToken :: Lens' CreativesList' (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | When specified, only creatives having the given direct deals status are
-- returned.
clDealsStatusFilter :: Lens' CreativesList' (Maybe CreativesListDealsStatusFilter)
clDealsStatusFilter
  = lens _clDealsStatusFilter
      (\ s a -> s{_clDealsStatusFilter = a})

-- | Maximum number of entries returned on one result page. If not set, the
-- default is 100. Optional.
clMaxResults :: Lens' CreativesList' (Maybe Word32)
clMaxResults
  = lens _clMaxResults (\ s a -> s{_clMaxResults = a})
      . mapping _Coerce

instance GoogleRequest CreativesList' where
        type Rs CreativesList' = CreativesList
        requestClient CreativesList'{..}
          = go (_clBuyerCreativeId ^. _Default)
              _clOpenAuctionStatusFilter
              (_clAccountId ^. _Default)
              _clPageToken
              _clDealsStatusFilter
              _clMaxResults
              (Just AltJSON)
              adExchangeBuyerService
          where go
                  = buildClient (Proxy :: Proxy CreativesListResource)
                      mempty
