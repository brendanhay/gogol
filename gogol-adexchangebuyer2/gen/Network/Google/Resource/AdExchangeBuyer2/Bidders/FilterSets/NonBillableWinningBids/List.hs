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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.NonBillableWinningBids.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all reasons for which winning bids were not billable, with the
-- number of bids not billed for each reason.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.filterSets.nonBillableWinningBids.list@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.NonBillableWinningBids.List
    (
    -- * REST Resource
      BiddersFilterSetsNonBillableWinningBidsListResource

    -- * Creating a Request
    , biddersFilterSetsNonBillableWinningBidsList
    , BiddersFilterSetsNonBillableWinningBidsList

    -- * Request Lenses
    , bfsnbwblXgafv
    , bfsnbwblUploadProtocol
    , bfsnbwblFilterSetName
    , bfsnbwblAccessToken
    , bfsnbwblUploadType
    , bfsnbwblPageToken
    , bfsnbwblPageSize
    , bfsnbwblCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.filterSets.nonBillableWinningBids.list@ method which the
-- 'BiddersFilterSetsNonBillableWinningBidsList' request conforms to.
type BiddersFilterSetsNonBillableWinningBidsListResource
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
-- /See:/ 'biddersFilterSetsNonBillableWinningBidsList' smart constructor.
data BiddersFilterSetsNonBillableWinningBidsList =
  BiddersFilterSetsNonBillableWinningBidsList'
    { _bfsnbwblXgafv          :: !(Maybe Xgafv)
    , _bfsnbwblUploadProtocol :: !(Maybe Text)
    , _bfsnbwblFilterSetName  :: !Text
    , _bfsnbwblAccessToken    :: !(Maybe Text)
    , _bfsnbwblUploadType     :: !(Maybe Text)
    , _bfsnbwblPageToken      :: !(Maybe Text)
    , _bfsnbwblPageSize       :: !(Maybe (Textual Int32))
    , _bfsnbwblCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BiddersFilterSetsNonBillableWinningBidsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bfsnbwblXgafv'
--
-- * 'bfsnbwblUploadProtocol'
--
-- * 'bfsnbwblFilterSetName'
--
-- * 'bfsnbwblAccessToken'
--
-- * 'bfsnbwblUploadType'
--
-- * 'bfsnbwblPageToken'
--
-- * 'bfsnbwblPageSize'
--
-- * 'bfsnbwblCallback'
biddersFilterSetsNonBillableWinningBidsList
    :: Text -- ^ 'bfsnbwblFilterSetName'
    -> BiddersFilterSetsNonBillableWinningBidsList
biddersFilterSetsNonBillableWinningBidsList pBfsnbwblFilterSetName_ =
  BiddersFilterSetsNonBillableWinningBidsList'
    { _bfsnbwblXgafv = Nothing
    , _bfsnbwblUploadProtocol = Nothing
    , _bfsnbwblFilterSetName = pBfsnbwblFilterSetName_
    , _bfsnbwblAccessToken = Nothing
    , _bfsnbwblUploadType = Nothing
    , _bfsnbwblPageToken = Nothing
    , _bfsnbwblPageSize = Nothing
    , _bfsnbwblCallback = Nothing
    }


-- | V1 error format.
bfsnbwblXgafv :: Lens' BiddersFilterSetsNonBillableWinningBidsList (Maybe Xgafv)
bfsnbwblXgafv
  = lens _bfsnbwblXgafv
      (\ s a -> s{_bfsnbwblXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bfsnbwblUploadProtocol :: Lens' BiddersFilterSetsNonBillableWinningBidsList (Maybe Text)
bfsnbwblUploadProtocol
  = lens _bfsnbwblUploadProtocol
      (\ s a -> s{_bfsnbwblUploadProtocol = a})

-- | Name of the filter set that should be applied to the requested metrics.
-- For example: - For a bidder-level filter set for bidder 123:
-- \`bidders\/123\/filterSets\/abc\` - For an account-level filter set for
-- the buyer account representing bidder 123:
-- \`bidders\/123\/accounts\/123\/filterSets\/abc\` - For an account-level
-- filter set for the child seat buyer account 456 whose bidder is 123:
-- \`bidders\/123\/accounts\/456\/filterSets\/abc\`
bfsnbwblFilterSetName :: Lens' BiddersFilterSetsNonBillableWinningBidsList Text
bfsnbwblFilterSetName
  = lens _bfsnbwblFilterSetName
      (\ s a -> s{_bfsnbwblFilterSetName = a})

-- | OAuth access token.
bfsnbwblAccessToken :: Lens' BiddersFilterSetsNonBillableWinningBidsList (Maybe Text)
bfsnbwblAccessToken
  = lens _bfsnbwblAccessToken
      (\ s a -> s{_bfsnbwblAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bfsnbwblUploadType :: Lens' BiddersFilterSetsNonBillableWinningBidsList (Maybe Text)
bfsnbwblUploadType
  = lens _bfsnbwblUploadType
      (\ s a -> s{_bfsnbwblUploadType = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of
-- ListNonBillableWinningBidsResponse.nextPageToken returned from the
-- previous call to the nonBillableWinningBids.list method.
bfsnbwblPageToken :: Lens' BiddersFilterSetsNonBillableWinningBidsList (Maybe Text)
bfsnbwblPageToken
  = lens _bfsnbwblPageToken
      (\ s a -> s{_bfsnbwblPageToken = a})

-- | Requested page size. The server may return fewer results than requested.
-- If unspecified, the server will pick an appropriate default.
bfsnbwblPageSize :: Lens' BiddersFilterSetsNonBillableWinningBidsList (Maybe Int32)
bfsnbwblPageSize
  = lens _bfsnbwblPageSize
      (\ s a -> s{_bfsnbwblPageSize = a})
      . mapping _Coerce

-- | JSONP
bfsnbwblCallback :: Lens' BiddersFilterSetsNonBillableWinningBidsList (Maybe Text)
bfsnbwblCallback
  = lens _bfsnbwblCallback
      (\ s a -> s{_bfsnbwblCallback = a})

instance GoogleRequest
           BiddersFilterSetsNonBillableWinningBidsList
         where
        type Rs BiddersFilterSetsNonBillableWinningBidsList =
             ListNonBillableWinningBidsResponse
        type Scopes
               BiddersFilterSetsNonBillableWinningBidsList
             =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          BiddersFilterSetsNonBillableWinningBidsList'{..}
          = go _bfsnbwblFilterSetName _bfsnbwblXgafv
              _bfsnbwblUploadProtocol
              _bfsnbwblAccessToken
              _bfsnbwblUploadType
              _bfsnbwblPageToken
              _bfsnbwblPageSize
              _bfsnbwblCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           BiddersFilterSetsNonBillableWinningBidsListResource)
                      mempty
