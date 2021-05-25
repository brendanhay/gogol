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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.NonBillableWinningBids.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all reasons for which winning bids were not billable, with the
-- number of bids not billed for each reason.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.accounts.filterSets.nonBillableWinningBids.list@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.NonBillableWinningBids.List
    (
    -- * REST Resource
      BiddersAccountsFilterSetsNonBillableWinningBidsListResource

    -- * Creating a Request
    , biddersAccountsFilterSetsNonBillableWinningBidsList
    , BiddersAccountsFilterSetsNonBillableWinningBidsList

    -- * Request Lenses
    , bafsnbwblXgafv
    , bafsnbwblUploadProtocol
    , bafsnbwblFilterSetName
    , bafsnbwblAccessToken
    , bafsnbwblUploadType
    , bafsnbwblPageToken
    , bafsnbwblPageSize
    , bafsnbwblCallback
    ) where

import Network.Google.AdExchangeBuyer2.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.accounts.filterSets.nonBillableWinningBids.list@ method which the
-- 'BiddersAccountsFilterSetsNonBillableWinningBidsList' request conforms to.
type BiddersAccountsFilterSetsNonBillableWinningBidsListResource
     =
     "v2beta1" :>
       Capture "filterSetName" Text :>
         "nonBillableWinningBids" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListNonBillableWinningBidsResponse

-- | List all reasons for which winning bids were not billable, with the
-- number of bids not billed for each reason.
--
-- /See:/ 'biddersAccountsFilterSetsNonBillableWinningBidsList' smart constructor.
data BiddersAccountsFilterSetsNonBillableWinningBidsList =
  BiddersAccountsFilterSetsNonBillableWinningBidsList'
    { _bafsnbwblXgafv :: !(Maybe Xgafv)
    , _bafsnbwblUploadProtocol :: !(Maybe Text)
    , _bafsnbwblFilterSetName :: !Text
    , _bafsnbwblAccessToken :: !(Maybe Text)
    , _bafsnbwblUploadType :: !(Maybe Text)
    , _bafsnbwblPageToken :: !(Maybe Text)
    , _bafsnbwblPageSize :: !(Maybe (Textual Int32))
    , _bafsnbwblCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BiddersAccountsFilterSetsNonBillableWinningBidsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bafsnbwblXgafv'
--
-- * 'bafsnbwblUploadProtocol'
--
-- * 'bafsnbwblFilterSetName'
--
-- * 'bafsnbwblAccessToken'
--
-- * 'bafsnbwblUploadType'
--
-- * 'bafsnbwblPageToken'
--
-- * 'bafsnbwblPageSize'
--
-- * 'bafsnbwblCallback'
biddersAccountsFilterSetsNonBillableWinningBidsList
    :: Text -- ^ 'bafsnbwblFilterSetName'
    -> BiddersAccountsFilterSetsNonBillableWinningBidsList
biddersAccountsFilterSetsNonBillableWinningBidsList pBafsnbwblFilterSetName_ =
  BiddersAccountsFilterSetsNonBillableWinningBidsList'
    { _bafsnbwblXgafv = Nothing
    , _bafsnbwblUploadProtocol = Nothing
    , _bafsnbwblFilterSetName = pBafsnbwblFilterSetName_
    , _bafsnbwblAccessToken = Nothing
    , _bafsnbwblUploadType = Nothing
    , _bafsnbwblPageToken = Nothing
    , _bafsnbwblPageSize = Nothing
    , _bafsnbwblCallback = Nothing
    }


-- | V1 error format.
bafsnbwblXgafv :: Lens' BiddersAccountsFilterSetsNonBillableWinningBidsList (Maybe Xgafv)
bafsnbwblXgafv
  = lens _bafsnbwblXgafv
      (\ s a -> s{_bafsnbwblXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bafsnbwblUploadProtocol :: Lens' BiddersAccountsFilterSetsNonBillableWinningBidsList (Maybe Text)
bafsnbwblUploadProtocol
  = lens _bafsnbwblUploadProtocol
      (\ s a -> s{_bafsnbwblUploadProtocol = a})

-- | Name of the filter set that should be applied to the requested metrics.
-- For example: - For a bidder-level filter set for bidder 123:
-- \`bidders\/123\/filterSets\/abc\` - For an account-level filter set for
-- the buyer account representing bidder 123:
-- \`bidders\/123\/accounts\/123\/filterSets\/abc\` - For an account-level
-- filter set for the child seat buyer account 456 whose bidder is 123:
-- \`bidders\/123\/accounts\/456\/filterSets\/abc\`
bafsnbwblFilterSetName :: Lens' BiddersAccountsFilterSetsNonBillableWinningBidsList Text
bafsnbwblFilterSetName
  = lens _bafsnbwblFilterSetName
      (\ s a -> s{_bafsnbwblFilterSetName = a})

-- | OAuth access token.
bafsnbwblAccessToken :: Lens' BiddersAccountsFilterSetsNonBillableWinningBidsList (Maybe Text)
bafsnbwblAccessToken
  = lens _bafsnbwblAccessToken
      (\ s a -> s{_bafsnbwblAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bafsnbwblUploadType :: Lens' BiddersAccountsFilterSetsNonBillableWinningBidsList (Maybe Text)
bafsnbwblUploadType
  = lens _bafsnbwblUploadType
      (\ s a -> s{_bafsnbwblUploadType = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of
-- ListNonBillableWinningBidsResponse.nextPageToken returned from the
-- previous call to the nonBillableWinningBids.list method.
bafsnbwblPageToken :: Lens' BiddersAccountsFilterSetsNonBillableWinningBidsList (Maybe Text)
bafsnbwblPageToken
  = lens _bafsnbwblPageToken
      (\ s a -> s{_bafsnbwblPageToken = a})

-- | Requested page size. The server may return fewer results than requested.
-- If unspecified, the server will pick an appropriate default.
bafsnbwblPageSize :: Lens' BiddersAccountsFilterSetsNonBillableWinningBidsList (Maybe Int32)
bafsnbwblPageSize
  = lens _bafsnbwblPageSize
      (\ s a -> s{_bafsnbwblPageSize = a})
      . mapping _Coerce

-- | JSONP
bafsnbwblCallback :: Lens' BiddersAccountsFilterSetsNonBillableWinningBidsList (Maybe Text)
bafsnbwblCallback
  = lens _bafsnbwblCallback
      (\ s a -> s{_bafsnbwblCallback = a})

instance GoogleRequest
           BiddersAccountsFilterSetsNonBillableWinningBidsList
         where
        type Rs
               BiddersAccountsFilterSetsNonBillableWinningBidsList
             = ListNonBillableWinningBidsResponse
        type Scopes
               BiddersAccountsFilterSetsNonBillableWinningBidsList
             =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          BiddersAccountsFilterSetsNonBillableWinningBidsList'{..}
          = go _bafsnbwblFilterSetName _bafsnbwblXgafv
              _bafsnbwblUploadProtocol
              _bafsnbwblAccessToken
              _bafsnbwblUploadType
              _bafsnbwblPageToken
              _bafsnbwblPageSize
              _bafsnbwblCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           BiddersAccountsFilterSetsNonBillableWinningBidsListResource)
                      mempty
