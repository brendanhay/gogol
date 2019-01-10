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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.FilteredBids.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all reasons for which bids were filtered, with the number of bids
-- filtered for each reason.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.accounts.filterSets.filteredBids.list@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.FilteredBids.List
    (
    -- * REST Resource
      BiddersAccountsFilterSetsFilteredBidsListResource

    -- * Creating a Request
    , biddersAccountsFilterSetsFilteredBidsList
    , BiddersAccountsFilterSetsFilteredBidsList

    -- * Request Lenses
    , bafsfblXgafv
    , bafsfblUploadProtocol
    , bafsfblFilterSetName
    , bafsfblAccessToken
    , bafsfblUploadType
    , bafsfblPageToken
    , bafsfblPageSize
    , bafsfblCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.accounts.filterSets.filteredBids.list@ method which the
-- 'BiddersAccountsFilterSetsFilteredBidsList' request conforms to.
type BiddersAccountsFilterSetsFilteredBidsListResource
     =
     "v2beta1" :>
       Capture "filterSetName" Text :>
         "filteredBids" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListFilteredBidsResponse

-- | List all reasons for which bids were filtered, with the number of bids
-- filtered for each reason.
--
-- /See:/ 'biddersAccountsFilterSetsFilteredBidsList' smart constructor.
data BiddersAccountsFilterSetsFilteredBidsList = BiddersAccountsFilterSetsFilteredBidsList'
    { _bafsfblXgafv          :: !(Maybe Xgafv)
    , _bafsfblUploadProtocol :: !(Maybe Text)
    , _bafsfblFilterSetName  :: !Text
    , _bafsfblAccessToken    :: !(Maybe Text)
    , _bafsfblUploadType     :: !(Maybe Text)
    , _bafsfblPageToken      :: !(Maybe Text)
    , _bafsfblPageSize       :: !(Maybe (Textual Int32))
    , _bafsfblCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BiddersAccountsFilterSetsFilteredBidsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bafsfblXgafv'
--
-- * 'bafsfblUploadProtocol'
--
-- * 'bafsfblFilterSetName'
--
-- * 'bafsfblAccessToken'
--
-- * 'bafsfblUploadType'
--
-- * 'bafsfblPageToken'
--
-- * 'bafsfblPageSize'
--
-- * 'bafsfblCallback'
biddersAccountsFilterSetsFilteredBidsList
    :: Text -- ^ 'bafsfblFilterSetName'
    -> BiddersAccountsFilterSetsFilteredBidsList
biddersAccountsFilterSetsFilteredBidsList pBafsfblFilterSetName_ =
    BiddersAccountsFilterSetsFilteredBidsList'
    { _bafsfblXgafv = Nothing
    , _bafsfblUploadProtocol = Nothing
    , _bafsfblFilterSetName = pBafsfblFilterSetName_
    , _bafsfblAccessToken = Nothing
    , _bafsfblUploadType = Nothing
    , _bafsfblPageToken = Nothing
    , _bafsfblPageSize = Nothing
    , _bafsfblCallback = Nothing
    }

-- | V1 error format.
bafsfblXgafv :: Lens' BiddersAccountsFilterSetsFilteredBidsList (Maybe Xgafv)
bafsfblXgafv
  = lens _bafsfblXgafv (\ s a -> s{_bafsfblXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bafsfblUploadProtocol :: Lens' BiddersAccountsFilterSetsFilteredBidsList (Maybe Text)
bafsfblUploadProtocol
  = lens _bafsfblUploadProtocol
      (\ s a -> s{_bafsfblUploadProtocol = a})

-- | Name of the filter set that should be applied to the requested metrics.
-- For example: - For a bidder-level filter set for bidder 123:
-- \`bidders\/123\/filterSets\/abc\` - For an account-level filter set for
-- the buyer account representing bidder 123:
-- \`bidders\/123\/accounts\/123\/filterSets\/abc\` - For an account-level
-- filter set for the child seat buyer account 456 whose bidder is 123:
-- \`bidders\/123\/accounts\/456\/filterSets\/abc\`
bafsfblFilterSetName :: Lens' BiddersAccountsFilterSetsFilteredBidsList Text
bafsfblFilterSetName
  = lens _bafsfblFilterSetName
      (\ s a -> s{_bafsfblFilterSetName = a})

-- | OAuth access token.
bafsfblAccessToken :: Lens' BiddersAccountsFilterSetsFilteredBidsList (Maybe Text)
bafsfblAccessToken
  = lens _bafsfblAccessToken
      (\ s a -> s{_bafsfblAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bafsfblUploadType :: Lens' BiddersAccountsFilterSetsFilteredBidsList (Maybe Text)
bafsfblUploadType
  = lens _bafsfblUploadType
      (\ s a -> s{_bafsfblUploadType = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of ListFilteredBidsResponse.nextPageToken
-- returned from the previous call to the filteredBids.list method.
bafsfblPageToken :: Lens' BiddersAccountsFilterSetsFilteredBidsList (Maybe Text)
bafsfblPageToken
  = lens _bafsfblPageToken
      (\ s a -> s{_bafsfblPageToken = a})

-- | Requested page size. The server may return fewer results than requested.
-- If unspecified, the server will pick an appropriate default.
bafsfblPageSize :: Lens' BiddersAccountsFilterSetsFilteredBidsList (Maybe Int32)
bafsfblPageSize
  = lens _bafsfblPageSize
      (\ s a -> s{_bafsfblPageSize = a})
      . mapping _Coerce

-- | JSONP
bafsfblCallback :: Lens' BiddersAccountsFilterSetsFilteredBidsList (Maybe Text)
bafsfblCallback
  = lens _bafsfblCallback
      (\ s a -> s{_bafsfblCallback = a})

instance GoogleRequest
         BiddersAccountsFilterSetsFilteredBidsList where
        type Rs BiddersAccountsFilterSetsFilteredBidsList =
             ListFilteredBidsResponse
        type Scopes BiddersAccountsFilterSetsFilteredBidsList
             =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          BiddersAccountsFilterSetsFilteredBidsList'{..}
          = go _bafsfblFilterSetName _bafsfblXgafv
              _bafsfblUploadProtocol
              _bafsfblAccessToken
              _bafsfblUploadType
              _bafsfblPageToken
              _bafsfblPageSize
              _bafsfblCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           BiddersAccountsFilterSetsFilteredBidsListResource)
                      mempty
