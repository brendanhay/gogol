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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.FilteredBids.Details.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all details associated with a specific reason for which bids were
-- filtered, with the number of bids filtered for each detail.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.filterSets.filteredBids.details.list@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.FilteredBids.Details.List
    (
    -- * REST Resource
      BiddersFilterSetsFilteredBidsDetailsListResource

    -- * Creating a Request
    , biddersFilterSetsFilteredBidsDetailsList
    , BiddersFilterSetsFilteredBidsDetailsList

    -- * Request Lenses
    , bfsfbdlXgafv
    , bfsfbdlUploadProtocol
    , bfsfbdlFilterSetName
    , bfsfbdlAccessToken
    , bfsfbdlUploadType
    , bfsfbdlCreativeStatusId
    , bfsfbdlPageToken
    , bfsfbdlPageSize
    , bfsfbdlCallback
    ) where

import Network.Google.AdExchangeBuyer2.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.filterSets.filteredBids.details.list@ method which the
-- 'BiddersFilterSetsFilteredBidsDetailsList' request conforms to.
type BiddersFilterSetsFilteredBidsDetailsListResource
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
-- /See:/ 'biddersFilterSetsFilteredBidsDetailsList' smart constructor.
data BiddersFilterSetsFilteredBidsDetailsList =
  BiddersFilterSetsFilteredBidsDetailsList'
    { _bfsfbdlXgafv :: !(Maybe Xgafv)
    , _bfsfbdlUploadProtocol :: !(Maybe Text)
    , _bfsfbdlFilterSetName :: !Text
    , _bfsfbdlAccessToken :: !(Maybe Text)
    , _bfsfbdlUploadType :: !(Maybe Text)
    , _bfsfbdlCreativeStatusId :: !(Textual Int32)
    , _bfsfbdlPageToken :: !(Maybe Text)
    , _bfsfbdlPageSize :: !(Maybe (Textual Int32))
    , _bfsfbdlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BiddersFilterSetsFilteredBidsDetailsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bfsfbdlXgafv'
--
-- * 'bfsfbdlUploadProtocol'
--
-- * 'bfsfbdlFilterSetName'
--
-- * 'bfsfbdlAccessToken'
--
-- * 'bfsfbdlUploadType'
--
-- * 'bfsfbdlCreativeStatusId'
--
-- * 'bfsfbdlPageToken'
--
-- * 'bfsfbdlPageSize'
--
-- * 'bfsfbdlCallback'
biddersFilterSetsFilteredBidsDetailsList
    :: Text -- ^ 'bfsfbdlFilterSetName'
    -> Int32 -- ^ 'bfsfbdlCreativeStatusId'
    -> BiddersFilterSetsFilteredBidsDetailsList
biddersFilterSetsFilteredBidsDetailsList pBfsfbdlFilterSetName_ pBfsfbdlCreativeStatusId_ =
  BiddersFilterSetsFilteredBidsDetailsList'
    { _bfsfbdlXgafv = Nothing
    , _bfsfbdlUploadProtocol = Nothing
    , _bfsfbdlFilterSetName = pBfsfbdlFilterSetName_
    , _bfsfbdlAccessToken = Nothing
    , _bfsfbdlUploadType = Nothing
    , _bfsfbdlCreativeStatusId = _Coerce # pBfsfbdlCreativeStatusId_
    , _bfsfbdlPageToken = Nothing
    , _bfsfbdlPageSize = Nothing
    , _bfsfbdlCallback = Nothing
    }


-- | V1 error format.
bfsfbdlXgafv :: Lens' BiddersFilterSetsFilteredBidsDetailsList (Maybe Xgafv)
bfsfbdlXgafv
  = lens _bfsfbdlXgafv (\ s a -> s{_bfsfbdlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bfsfbdlUploadProtocol :: Lens' BiddersFilterSetsFilteredBidsDetailsList (Maybe Text)
bfsfbdlUploadProtocol
  = lens _bfsfbdlUploadProtocol
      (\ s a -> s{_bfsfbdlUploadProtocol = a})

-- | Name of the filter set that should be applied to the requested metrics.
-- For example: - For a bidder-level filter set for bidder 123:
-- \`bidders\/123\/filterSets\/abc\` - For an account-level filter set for
-- the buyer account representing bidder 123:
-- \`bidders\/123\/accounts\/123\/filterSets\/abc\` - For an account-level
-- filter set for the child seat buyer account 456 whose bidder is 123:
-- \`bidders\/123\/accounts\/456\/filterSets\/abc\`
bfsfbdlFilterSetName :: Lens' BiddersFilterSetsFilteredBidsDetailsList Text
bfsfbdlFilterSetName
  = lens _bfsfbdlFilterSetName
      (\ s a -> s{_bfsfbdlFilterSetName = a})

-- | OAuth access token.
bfsfbdlAccessToken :: Lens' BiddersFilterSetsFilteredBidsDetailsList (Maybe Text)
bfsfbdlAccessToken
  = lens _bfsfbdlAccessToken
      (\ s a -> s{_bfsfbdlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bfsfbdlUploadType :: Lens' BiddersFilterSetsFilteredBidsDetailsList (Maybe Text)
bfsfbdlUploadType
  = lens _bfsfbdlUploadType
      (\ s a -> s{_bfsfbdlUploadType = a})

-- | The ID of the creative status for which to retrieve a breakdown by
-- detail. See
-- [creative-status-codes](https:\/\/developers.google.com\/authorized-buyers\/rtb\/downloads\/creative-status-codes).
-- Details are only available for statuses 10, 14, 15, 17, 18, 19, 86, and
-- 87.
bfsfbdlCreativeStatusId :: Lens' BiddersFilterSetsFilteredBidsDetailsList Int32
bfsfbdlCreativeStatusId
  = lens _bfsfbdlCreativeStatusId
      (\ s a -> s{_bfsfbdlCreativeStatusId = a})
      . _Coerce

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of
-- ListCreativeStatusBreakdownByDetailResponse.nextPageToken returned from
-- the previous call to the filteredBids.details.list method.
bfsfbdlPageToken :: Lens' BiddersFilterSetsFilteredBidsDetailsList (Maybe Text)
bfsfbdlPageToken
  = lens _bfsfbdlPageToken
      (\ s a -> s{_bfsfbdlPageToken = a})

-- | Requested page size. The server may return fewer results than requested.
-- If unspecified, the server will pick an appropriate default.
bfsfbdlPageSize :: Lens' BiddersFilterSetsFilteredBidsDetailsList (Maybe Int32)
bfsfbdlPageSize
  = lens _bfsfbdlPageSize
      (\ s a -> s{_bfsfbdlPageSize = a})
      . mapping _Coerce

-- | JSONP
bfsfbdlCallback :: Lens' BiddersFilterSetsFilteredBidsDetailsList (Maybe Text)
bfsfbdlCallback
  = lens _bfsfbdlCallback
      (\ s a -> s{_bfsfbdlCallback = a})

instance GoogleRequest
           BiddersFilterSetsFilteredBidsDetailsList
         where
        type Rs BiddersFilterSetsFilteredBidsDetailsList =
             ListCreativeStatusBreakdownByDetailResponse
        type Scopes BiddersFilterSetsFilteredBidsDetailsList
             =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          BiddersFilterSetsFilteredBidsDetailsList'{..}
          = go _bfsfbdlFilterSetName _bfsfbdlCreativeStatusId
              _bfsfbdlXgafv
              _bfsfbdlUploadProtocol
              _bfsfbdlAccessToken
              _bfsfbdlUploadType
              _bfsfbdlPageToken
              _bfsfbdlPageSize
              _bfsfbdlCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           BiddersFilterSetsFilteredBidsDetailsListResource)
                      mempty
