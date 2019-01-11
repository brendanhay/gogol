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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.FilteredBids.Details.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all details associated with a specific reason for which bids were
-- filtered, with the number of bids filtered for each detail.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.accounts.filterSets.filteredBids.details.list@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.FilteredBids.Details.List
    (
    -- * REST Resource
      BiddersAccountsFilterSetsFilteredBidsDetailsListResource

    -- * Creating a Request
    , biddersAccountsFilterSetsFilteredBidsDetailsList
    , BiddersAccountsFilterSetsFilteredBidsDetailsList

    -- * Request Lenses
    , bafsfbdlXgafv
    , bafsfbdlUploadProtocol
    , bafsfbdlFilterSetName
    , bafsfbdlAccessToken
    , bafsfbdlUploadType
    , bafsfbdlCreativeStatusId
    , bafsfbdlPageToken
    , bafsfbdlPageSize
    , bafsfbdlCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.accounts.filterSets.filteredBids.details.list@ method which the
-- 'BiddersAccountsFilterSetsFilteredBidsDetailsList' request conforms to.
type BiddersAccountsFilterSetsFilteredBidsDetailsListResource
     =
     "v2beta1" :>
       Capture "filterSetName" Text :>
         "filteredBids" :>
           Capture "creativeStatusId" (Textual Int32) :>
             "details" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON]
                                 ListCreativeStatusBreakdownByDetailResponse

-- | List all details associated with a specific reason for which bids were
-- filtered, with the number of bids filtered for each detail.
--
-- /See:/ 'biddersAccountsFilterSetsFilteredBidsDetailsList' smart constructor.
data BiddersAccountsFilterSetsFilteredBidsDetailsList = BiddersAccountsFilterSetsFilteredBidsDetailsList'
    { _bafsfbdlXgafv            :: !(Maybe Xgafv)
    , _bafsfbdlUploadProtocol   :: !(Maybe Text)
    , _bafsfbdlFilterSetName    :: !Text
    , _bafsfbdlAccessToken      :: !(Maybe Text)
    , _bafsfbdlUploadType       :: !(Maybe Text)
    , _bafsfbdlCreativeStatusId :: !(Textual Int32)
    , _bafsfbdlPageToken        :: !(Maybe Text)
    , _bafsfbdlPageSize         :: !(Maybe (Textual Int32))
    , _bafsfbdlCallback         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BiddersAccountsFilterSetsFilteredBidsDetailsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bafsfbdlXgafv'
--
-- * 'bafsfbdlUploadProtocol'
--
-- * 'bafsfbdlFilterSetName'
--
-- * 'bafsfbdlAccessToken'
--
-- * 'bafsfbdlUploadType'
--
-- * 'bafsfbdlCreativeStatusId'
--
-- * 'bafsfbdlPageToken'
--
-- * 'bafsfbdlPageSize'
--
-- * 'bafsfbdlCallback'
biddersAccountsFilterSetsFilteredBidsDetailsList
    :: Text -- ^ 'bafsfbdlFilterSetName'
    -> Int32 -- ^ 'bafsfbdlCreativeStatusId'
    -> BiddersAccountsFilterSetsFilteredBidsDetailsList
biddersAccountsFilterSetsFilteredBidsDetailsList pBafsfbdlFilterSetName_ pBafsfbdlCreativeStatusId_ =
    BiddersAccountsFilterSetsFilteredBidsDetailsList'
    { _bafsfbdlXgafv = Nothing
    , _bafsfbdlUploadProtocol = Nothing
    , _bafsfbdlFilterSetName = pBafsfbdlFilterSetName_
    , _bafsfbdlAccessToken = Nothing
    , _bafsfbdlUploadType = Nothing
    , _bafsfbdlCreativeStatusId = _Coerce # pBafsfbdlCreativeStatusId_
    , _bafsfbdlPageToken = Nothing
    , _bafsfbdlPageSize = Nothing
    , _bafsfbdlCallback = Nothing
    }

-- | V1 error format.
bafsfbdlXgafv :: Lens' BiddersAccountsFilterSetsFilteredBidsDetailsList (Maybe Xgafv)
bafsfbdlXgafv
  = lens _bafsfbdlXgafv
      (\ s a -> s{_bafsfbdlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bafsfbdlUploadProtocol :: Lens' BiddersAccountsFilterSetsFilteredBidsDetailsList (Maybe Text)
bafsfbdlUploadProtocol
  = lens _bafsfbdlUploadProtocol
      (\ s a -> s{_bafsfbdlUploadProtocol = a})

-- | Name of the filter set that should be applied to the requested metrics.
-- For example: - For a bidder-level filter set for bidder 123:
-- \`bidders\/123\/filterSets\/abc\` - For an account-level filter set for
-- the buyer account representing bidder 123:
-- \`bidders\/123\/accounts\/123\/filterSets\/abc\` - For an account-level
-- filter set for the child seat buyer account 456 whose bidder is 123:
-- \`bidders\/123\/accounts\/456\/filterSets\/abc\`
bafsfbdlFilterSetName :: Lens' BiddersAccountsFilterSetsFilteredBidsDetailsList Text
bafsfbdlFilterSetName
  = lens _bafsfbdlFilterSetName
      (\ s a -> s{_bafsfbdlFilterSetName = a})

-- | OAuth access token.
bafsfbdlAccessToken :: Lens' BiddersAccountsFilterSetsFilteredBidsDetailsList (Maybe Text)
bafsfbdlAccessToken
  = lens _bafsfbdlAccessToken
      (\ s a -> s{_bafsfbdlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bafsfbdlUploadType :: Lens' BiddersAccountsFilterSetsFilteredBidsDetailsList (Maybe Text)
bafsfbdlUploadType
  = lens _bafsfbdlUploadType
      (\ s a -> s{_bafsfbdlUploadType = a})

-- | The ID of the creative status for which to retrieve a breakdown by
-- detail. See
-- [creative-status-codes](https:\/\/developers.google.com\/authorized-buyers\/rtb\/downloads\/creative-status-codes).
-- Details are only available for statuses 10, 14, 15, 17, 18, 19, 86, and
-- 87.
bafsfbdlCreativeStatusId :: Lens' BiddersAccountsFilterSetsFilteredBidsDetailsList Int32
bafsfbdlCreativeStatusId
  = lens _bafsfbdlCreativeStatusId
      (\ s a -> s{_bafsfbdlCreativeStatusId = a})
      . _Coerce

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of
-- ListCreativeStatusBreakdownByDetailResponse.nextPageToken returned from
-- the previous call to the filteredBids.details.list method.
bafsfbdlPageToken :: Lens' BiddersAccountsFilterSetsFilteredBidsDetailsList (Maybe Text)
bafsfbdlPageToken
  = lens _bafsfbdlPageToken
      (\ s a -> s{_bafsfbdlPageToken = a})

-- | Requested page size. The server may return fewer results than requested.
-- If unspecified, the server will pick an appropriate default.
bafsfbdlPageSize :: Lens' BiddersAccountsFilterSetsFilteredBidsDetailsList (Maybe Int32)
bafsfbdlPageSize
  = lens _bafsfbdlPageSize
      (\ s a -> s{_bafsfbdlPageSize = a})
      . mapping _Coerce

-- | JSONP
bafsfbdlCallback :: Lens' BiddersAccountsFilterSetsFilteredBidsDetailsList (Maybe Text)
bafsfbdlCallback
  = lens _bafsfbdlCallback
      (\ s a -> s{_bafsfbdlCallback = a})

instance GoogleRequest
         BiddersAccountsFilterSetsFilteredBidsDetailsList
         where
        type Rs
               BiddersAccountsFilterSetsFilteredBidsDetailsList
             = ListCreativeStatusBreakdownByDetailResponse
        type Scopes
               BiddersAccountsFilterSetsFilteredBidsDetailsList
             =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          BiddersAccountsFilterSetsFilteredBidsDetailsList'{..}
          = go _bafsfbdlFilterSetName _bafsfbdlCreativeStatusId
              _bafsfbdlXgafv
              _bafsfbdlUploadProtocol
              _bafsfbdlAccessToken
              _bafsfbdlUploadType
              _bafsfbdlPageToken
              _bafsfbdlPageSize
              _bafsfbdlCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           BiddersAccountsFilterSetsFilteredBidsDetailsListResource)
                      mempty
