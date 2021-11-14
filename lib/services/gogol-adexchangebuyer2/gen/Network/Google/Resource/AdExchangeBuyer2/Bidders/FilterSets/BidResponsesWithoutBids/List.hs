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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.BidResponsesWithoutBids.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all reasons for which bid responses were considered to have no
-- applicable bids, with the number of bid responses affected for each
-- reason.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.filterSets.bidResponsesWithoutBids.list@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.BidResponsesWithoutBids.List
    (
    -- * REST Resource
      BiddersFilterSetsBidResponsesWithoutBidsListResource

    -- * Creating a Request
    , biddersFilterSetsBidResponsesWithoutBidsList
    , BiddersFilterSetsBidResponsesWithoutBidsList

    -- * Request Lenses
    , bfsbrwblXgafv
    , bfsbrwblUploadProtocol
    , bfsbrwblFilterSetName
    , bfsbrwblAccessToken
    , bfsbrwblUploadType
    , bfsbrwblPageToken
    , bfsbrwblPageSize
    , bfsbrwblCallback
    ) where

import Network.Google.AdExchangeBuyer2.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.filterSets.bidResponsesWithoutBids.list@ method which the
-- 'BiddersFilterSetsBidResponsesWithoutBidsList' request conforms to.
type BiddersFilterSetsBidResponsesWithoutBidsListResource
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
-- /See:/ 'biddersFilterSetsBidResponsesWithoutBidsList' smart constructor.
data BiddersFilterSetsBidResponsesWithoutBidsList =
  BiddersFilterSetsBidResponsesWithoutBidsList'
    { _bfsbrwblXgafv :: !(Maybe Xgafv)
    , _bfsbrwblUploadProtocol :: !(Maybe Text)
    , _bfsbrwblFilterSetName :: !Text
    , _bfsbrwblAccessToken :: !(Maybe Text)
    , _bfsbrwblUploadType :: !(Maybe Text)
    , _bfsbrwblPageToken :: !(Maybe Text)
    , _bfsbrwblPageSize :: !(Maybe (Textual Int32))
    , _bfsbrwblCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BiddersFilterSetsBidResponsesWithoutBidsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bfsbrwblXgafv'
--
-- * 'bfsbrwblUploadProtocol'
--
-- * 'bfsbrwblFilterSetName'
--
-- * 'bfsbrwblAccessToken'
--
-- * 'bfsbrwblUploadType'
--
-- * 'bfsbrwblPageToken'
--
-- * 'bfsbrwblPageSize'
--
-- * 'bfsbrwblCallback'
biddersFilterSetsBidResponsesWithoutBidsList
    :: Text -- ^ 'bfsbrwblFilterSetName'
    -> BiddersFilterSetsBidResponsesWithoutBidsList
biddersFilterSetsBidResponsesWithoutBidsList pBfsbrwblFilterSetName_ =
  BiddersFilterSetsBidResponsesWithoutBidsList'
    { _bfsbrwblXgafv = Nothing
    , _bfsbrwblUploadProtocol = Nothing
    , _bfsbrwblFilterSetName = pBfsbrwblFilterSetName_
    , _bfsbrwblAccessToken = Nothing
    , _bfsbrwblUploadType = Nothing
    , _bfsbrwblPageToken = Nothing
    , _bfsbrwblPageSize = Nothing
    , _bfsbrwblCallback = Nothing
    }


-- | V1 error format.
bfsbrwblXgafv :: Lens' BiddersFilterSetsBidResponsesWithoutBidsList (Maybe Xgafv)
bfsbrwblXgafv
  = lens _bfsbrwblXgafv
      (\ s a -> s{_bfsbrwblXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bfsbrwblUploadProtocol :: Lens' BiddersFilterSetsBidResponsesWithoutBidsList (Maybe Text)
bfsbrwblUploadProtocol
  = lens _bfsbrwblUploadProtocol
      (\ s a -> s{_bfsbrwblUploadProtocol = a})

-- | Name of the filter set that should be applied to the requested metrics.
-- For example: - For a bidder-level filter set for bidder 123:
-- \`bidders\/123\/filterSets\/abc\` - For an account-level filter set for
-- the buyer account representing bidder 123:
-- \`bidders\/123\/accounts\/123\/filterSets\/abc\` - For an account-level
-- filter set for the child seat buyer account 456 whose bidder is 123:
-- \`bidders\/123\/accounts\/456\/filterSets\/abc\`
bfsbrwblFilterSetName :: Lens' BiddersFilterSetsBidResponsesWithoutBidsList Text
bfsbrwblFilterSetName
  = lens _bfsbrwblFilterSetName
      (\ s a -> s{_bfsbrwblFilterSetName = a})

-- | OAuth access token.
bfsbrwblAccessToken :: Lens' BiddersFilterSetsBidResponsesWithoutBidsList (Maybe Text)
bfsbrwblAccessToken
  = lens _bfsbrwblAccessToken
      (\ s a -> s{_bfsbrwblAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bfsbrwblUploadType :: Lens' BiddersFilterSetsBidResponsesWithoutBidsList (Maybe Text)
bfsbrwblUploadType
  = lens _bfsbrwblUploadType
      (\ s a -> s{_bfsbrwblUploadType = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of
-- ListBidResponsesWithoutBidsResponse.nextPageToken returned from the
-- previous call to the bidResponsesWithoutBids.list method.
bfsbrwblPageToken :: Lens' BiddersFilterSetsBidResponsesWithoutBidsList (Maybe Text)
bfsbrwblPageToken
  = lens _bfsbrwblPageToken
      (\ s a -> s{_bfsbrwblPageToken = a})

-- | Requested page size. The server may return fewer results than requested.
-- If unspecified, the server will pick an appropriate default.
bfsbrwblPageSize :: Lens' BiddersFilterSetsBidResponsesWithoutBidsList (Maybe Int32)
bfsbrwblPageSize
  = lens _bfsbrwblPageSize
      (\ s a -> s{_bfsbrwblPageSize = a})
      . mapping _Coerce

-- | JSONP
bfsbrwblCallback :: Lens' BiddersFilterSetsBidResponsesWithoutBidsList (Maybe Text)
bfsbrwblCallback
  = lens _bfsbrwblCallback
      (\ s a -> s{_bfsbrwblCallback = a})

instance GoogleRequest
           BiddersFilterSetsBidResponsesWithoutBidsList
         where
        type Rs BiddersFilterSetsBidResponsesWithoutBidsList
             = ListBidResponsesWithoutBidsResponse
        type Scopes
               BiddersFilterSetsBidResponsesWithoutBidsList
             =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          BiddersFilterSetsBidResponsesWithoutBidsList'{..}
          = go _bfsbrwblFilterSetName _bfsbrwblXgafv
              _bfsbrwblUploadProtocol
              _bfsbrwblAccessToken
              _bfsbrwblUploadType
              _bfsbrwblPageToken
              _bfsbrwblPageSize
              _bfsbrwblCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           BiddersFilterSetsBidResponsesWithoutBidsListResource)
                      mempty
