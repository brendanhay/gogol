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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.BidResponsesWithoutBids.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all reasons for which bid responses were considered to have no
-- applicable bids, with the number of bid responses affected for each
-- reason.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.accounts.filterSets.bidResponsesWithoutBids.list@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.BidResponsesWithoutBids.List
    (
    -- * REST Resource
      BiddersAccountsFilterSetsBidResponsesWithoutBidsListResource

    -- * Creating a Request
    , biddersAccountsFilterSetsBidResponsesWithoutBidsList
    , BiddersAccountsFilterSetsBidResponsesWithoutBidsList

    -- * Request Lenses
    , bafsbrwblXgafv
    , bafsbrwblUploadProtocol
    , bafsbrwblFilterSetName
    , bafsbrwblAccessToken
    , bafsbrwblUploadType
    , bafsbrwblPageToken
    , bafsbrwblPageSize
    , bafsbrwblCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.accounts.filterSets.bidResponsesWithoutBids.list@ method which the
-- 'BiddersAccountsFilterSetsBidResponsesWithoutBidsList' request conforms to.
type BiddersAccountsFilterSetsBidResponsesWithoutBidsListResource
     =
     "v2beta1" :>
       Capture "filterSetName" Text :>
         "bidResponsesWithoutBids" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListBidResponsesWithoutBidsResponse

-- | List all reasons for which bid responses were considered to have no
-- applicable bids, with the number of bid responses affected for each
-- reason.
--
-- /See:/ 'biddersAccountsFilterSetsBidResponsesWithoutBidsList' smart constructor.
data BiddersAccountsFilterSetsBidResponsesWithoutBidsList =
  BiddersAccountsFilterSetsBidResponsesWithoutBidsList'
    { _bafsbrwblXgafv          :: !(Maybe Xgafv)
    , _bafsbrwblUploadProtocol :: !(Maybe Text)
    , _bafsbrwblFilterSetName  :: !Text
    , _bafsbrwblAccessToken    :: !(Maybe Text)
    , _bafsbrwblUploadType     :: !(Maybe Text)
    , _bafsbrwblPageToken      :: !(Maybe Text)
    , _bafsbrwblPageSize       :: !(Maybe (Textual Int32))
    , _bafsbrwblCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BiddersAccountsFilterSetsBidResponsesWithoutBidsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bafsbrwblXgafv'
--
-- * 'bafsbrwblUploadProtocol'
--
-- * 'bafsbrwblFilterSetName'
--
-- * 'bafsbrwblAccessToken'
--
-- * 'bafsbrwblUploadType'
--
-- * 'bafsbrwblPageToken'
--
-- * 'bafsbrwblPageSize'
--
-- * 'bafsbrwblCallback'
biddersAccountsFilterSetsBidResponsesWithoutBidsList
    :: Text -- ^ 'bafsbrwblFilterSetName'
    -> BiddersAccountsFilterSetsBidResponsesWithoutBidsList
biddersAccountsFilterSetsBidResponsesWithoutBidsList pBafsbrwblFilterSetName_ =
  BiddersAccountsFilterSetsBidResponsesWithoutBidsList'
    { _bafsbrwblXgafv = Nothing
    , _bafsbrwblUploadProtocol = Nothing
    , _bafsbrwblFilterSetName = pBafsbrwblFilterSetName_
    , _bafsbrwblAccessToken = Nothing
    , _bafsbrwblUploadType = Nothing
    , _bafsbrwblPageToken = Nothing
    , _bafsbrwblPageSize = Nothing
    , _bafsbrwblCallback = Nothing
    }


-- | V1 error format.
bafsbrwblXgafv :: Lens' BiddersAccountsFilterSetsBidResponsesWithoutBidsList (Maybe Xgafv)
bafsbrwblXgafv
  = lens _bafsbrwblXgafv
      (\ s a -> s{_bafsbrwblXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bafsbrwblUploadProtocol :: Lens' BiddersAccountsFilterSetsBidResponsesWithoutBidsList (Maybe Text)
bafsbrwblUploadProtocol
  = lens _bafsbrwblUploadProtocol
      (\ s a -> s{_bafsbrwblUploadProtocol = a})

-- | Name of the filter set that should be applied to the requested metrics.
-- For example: - For a bidder-level filter set for bidder 123:
-- \`bidders\/123\/filterSets\/abc\` - For an account-level filter set for
-- the buyer account representing bidder 123:
-- \`bidders\/123\/accounts\/123\/filterSets\/abc\` - For an account-level
-- filter set for the child seat buyer account 456 whose bidder is 123:
-- \`bidders\/123\/accounts\/456\/filterSets\/abc\`
bafsbrwblFilterSetName :: Lens' BiddersAccountsFilterSetsBidResponsesWithoutBidsList Text
bafsbrwblFilterSetName
  = lens _bafsbrwblFilterSetName
      (\ s a -> s{_bafsbrwblFilterSetName = a})

-- | OAuth access token.
bafsbrwblAccessToken :: Lens' BiddersAccountsFilterSetsBidResponsesWithoutBidsList (Maybe Text)
bafsbrwblAccessToken
  = lens _bafsbrwblAccessToken
      (\ s a -> s{_bafsbrwblAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bafsbrwblUploadType :: Lens' BiddersAccountsFilterSetsBidResponsesWithoutBidsList (Maybe Text)
bafsbrwblUploadType
  = lens _bafsbrwblUploadType
      (\ s a -> s{_bafsbrwblUploadType = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of
-- ListBidResponsesWithoutBidsResponse.nextPageToken returned from the
-- previous call to the bidResponsesWithoutBids.list method.
bafsbrwblPageToken :: Lens' BiddersAccountsFilterSetsBidResponsesWithoutBidsList (Maybe Text)
bafsbrwblPageToken
  = lens _bafsbrwblPageToken
      (\ s a -> s{_bafsbrwblPageToken = a})

-- | Requested page size. The server may return fewer results than requested.
-- If unspecified, the server will pick an appropriate default.
bafsbrwblPageSize :: Lens' BiddersAccountsFilterSetsBidResponsesWithoutBidsList (Maybe Int32)
bafsbrwblPageSize
  = lens _bafsbrwblPageSize
      (\ s a -> s{_bafsbrwblPageSize = a})
      . mapping _Coerce

-- | JSONP
bafsbrwblCallback :: Lens' BiddersAccountsFilterSetsBidResponsesWithoutBidsList (Maybe Text)
bafsbrwblCallback
  = lens _bafsbrwblCallback
      (\ s a -> s{_bafsbrwblCallback = a})

instance GoogleRequest
           BiddersAccountsFilterSetsBidResponsesWithoutBidsList
         where
        type Rs
               BiddersAccountsFilterSetsBidResponsesWithoutBidsList
             = ListBidResponsesWithoutBidsResponse
        type Scopes
               BiddersAccountsFilterSetsBidResponsesWithoutBidsList
             =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          BiddersAccountsFilterSetsBidResponsesWithoutBidsList'{..}
          = go _bafsbrwblFilterSetName _bafsbrwblXgafv
              _bafsbrwblUploadProtocol
              _bafsbrwblAccessToken
              _bafsbrwblUploadType
              _bafsbrwblPageToken
              _bafsbrwblPageSize
              _bafsbrwblCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           BiddersAccountsFilterSetsBidResponsesWithoutBidsListResource)
                      mempty
