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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.LosingBids.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all reasons for which bids lost in the auction, with the number of
-- bids that lost for each reason.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.accounts.filterSets.losingBids.list@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.LosingBids.List
    (
    -- * REST Resource
      BiddersAccountsFilterSetsLosingBidsListResource

    -- * Creating a Request
    , biddersAccountsFilterSetsLosingBidsList
    , BiddersAccountsFilterSetsLosingBidsList

    -- * Request Lenses
    , bafslblXgafv
    , bafslblUploadProtocol
    , bafslblFilterSetName
    , bafslblAccessToken
    , bafslblUploadType
    , bafslblPageToken
    , bafslblPageSize
    , bafslblCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.accounts.filterSets.losingBids.list@ method which the
-- 'BiddersAccountsFilterSetsLosingBidsList' request conforms to.
type BiddersAccountsFilterSetsLosingBidsListResource
     =
     "v2beta1" :>
       Capture "filterSetName" Text :>
         "losingBids" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListLosingBidsResponse

-- | List all reasons for which bids lost in the auction, with the number of
-- bids that lost for each reason.
--
-- /See:/ 'biddersAccountsFilterSetsLosingBidsList' smart constructor.
data BiddersAccountsFilterSetsLosingBidsList =
  BiddersAccountsFilterSetsLosingBidsList'
    { _bafslblXgafv          :: !(Maybe Xgafv)
    , _bafslblUploadProtocol :: !(Maybe Text)
    , _bafslblFilterSetName  :: !Text
    , _bafslblAccessToken    :: !(Maybe Text)
    , _bafslblUploadType     :: !(Maybe Text)
    , _bafslblPageToken      :: !(Maybe Text)
    , _bafslblPageSize       :: !(Maybe (Textual Int32))
    , _bafslblCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BiddersAccountsFilterSetsLosingBidsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bafslblXgafv'
--
-- * 'bafslblUploadProtocol'
--
-- * 'bafslblFilterSetName'
--
-- * 'bafslblAccessToken'
--
-- * 'bafslblUploadType'
--
-- * 'bafslblPageToken'
--
-- * 'bafslblPageSize'
--
-- * 'bafslblCallback'
biddersAccountsFilterSetsLosingBidsList
    :: Text -- ^ 'bafslblFilterSetName'
    -> BiddersAccountsFilterSetsLosingBidsList
biddersAccountsFilterSetsLosingBidsList pBafslblFilterSetName_ =
  BiddersAccountsFilterSetsLosingBidsList'
    { _bafslblXgafv = Nothing
    , _bafslblUploadProtocol = Nothing
    , _bafslblFilterSetName = pBafslblFilterSetName_
    , _bafslblAccessToken = Nothing
    , _bafslblUploadType = Nothing
    , _bafslblPageToken = Nothing
    , _bafslblPageSize = Nothing
    , _bafslblCallback = Nothing
    }


-- | V1 error format.
bafslblXgafv :: Lens' BiddersAccountsFilterSetsLosingBidsList (Maybe Xgafv)
bafslblXgafv
  = lens _bafslblXgafv (\ s a -> s{_bafslblXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bafslblUploadProtocol :: Lens' BiddersAccountsFilterSetsLosingBidsList (Maybe Text)
bafslblUploadProtocol
  = lens _bafslblUploadProtocol
      (\ s a -> s{_bafslblUploadProtocol = a})

-- | Name of the filter set that should be applied to the requested metrics.
-- For example: - For a bidder-level filter set for bidder 123:
-- \`bidders\/123\/filterSets\/abc\` - For an account-level filter set for
-- the buyer account representing bidder 123:
-- \`bidders\/123\/accounts\/123\/filterSets\/abc\` - For an account-level
-- filter set for the child seat buyer account 456 whose bidder is 123:
-- \`bidders\/123\/accounts\/456\/filterSets\/abc\`
bafslblFilterSetName :: Lens' BiddersAccountsFilterSetsLosingBidsList Text
bafslblFilterSetName
  = lens _bafslblFilterSetName
      (\ s a -> s{_bafslblFilterSetName = a})

-- | OAuth access token.
bafslblAccessToken :: Lens' BiddersAccountsFilterSetsLosingBidsList (Maybe Text)
bafslblAccessToken
  = lens _bafslblAccessToken
      (\ s a -> s{_bafslblAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bafslblUploadType :: Lens' BiddersAccountsFilterSetsLosingBidsList (Maybe Text)
bafslblUploadType
  = lens _bafslblUploadType
      (\ s a -> s{_bafslblUploadType = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of ListLosingBidsResponse.nextPageToken
-- returned from the previous call to the losingBids.list method.
bafslblPageToken :: Lens' BiddersAccountsFilterSetsLosingBidsList (Maybe Text)
bafslblPageToken
  = lens _bafslblPageToken
      (\ s a -> s{_bafslblPageToken = a})

-- | Requested page size. The server may return fewer results than requested.
-- If unspecified, the server will pick an appropriate default.
bafslblPageSize :: Lens' BiddersAccountsFilterSetsLosingBidsList (Maybe Int32)
bafslblPageSize
  = lens _bafslblPageSize
      (\ s a -> s{_bafslblPageSize = a})
      . mapping _Coerce

-- | JSONP
bafslblCallback :: Lens' BiddersAccountsFilterSetsLosingBidsList (Maybe Text)
bafslblCallback
  = lens _bafslblCallback
      (\ s a -> s{_bafslblCallback = a})

instance GoogleRequest
           BiddersAccountsFilterSetsLosingBidsList
         where
        type Rs BiddersAccountsFilterSetsLosingBidsList =
             ListLosingBidsResponse
        type Scopes BiddersAccountsFilterSetsLosingBidsList =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          BiddersAccountsFilterSetsLosingBidsList'{..}
          = go _bafslblFilterSetName _bafslblXgafv
              _bafslblUploadProtocol
              _bafslblAccessToken
              _bafslblUploadType
              _bafslblPageToken
              _bafslblPageSize
              _bafslblCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           BiddersAccountsFilterSetsLosingBidsListResource)
                      mempty
