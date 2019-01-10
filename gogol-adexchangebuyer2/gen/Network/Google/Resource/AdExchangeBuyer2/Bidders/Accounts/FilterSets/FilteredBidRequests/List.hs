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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.FilteredBidRequests.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all reasons that caused a bid request not to be sent for an
-- impression, with the number of bid requests not sent for each reason.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.accounts.filterSets.filteredBidRequests.list@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.FilteredBidRequests.List
    (
    -- * REST Resource
      BiddersAccountsFilterSetsFilteredBidRequestsListResource

    -- * Creating a Request
    , biddersAccountsFilterSetsFilteredBidRequestsList
    , BiddersAccountsFilterSetsFilteredBidRequestsList

    -- * Request Lenses
    , bafsfbrlXgafv
    , bafsfbrlUploadProtocol
    , bafsfbrlFilterSetName
    , bafsfbrlAccessToken
    , bafsfbrlUploadType
    , bafsfbrlPageToken
    , bafsfbrlPageSize
    , bafsfbrlCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.accounts.filterSets.filteredBidRequests.list@ method which the
-- 'BiddersAccountsFilterSetsFilteredBidRequestsList' request conforms to.
type BiddersAccountsFilterSetsFilteredBidRequestsListResource
     =
     "v2beta1" :>
       Capture "filterSetName" Text :>
         "filteredBidRequests" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListFilteredBidRequestsResponse

-- | List all reasons that caused a bid request not to be sent for an
-- impression, with the number of bid requests not sent for each reason.
--
-- /See:/ 'biddersAccountsFilterSetsFilteredBidRequestsList' smart constructor.
data BiddersAccountsFilterSetsFilteredBidRequestsList = BiddersAccountsFilterSetsFilteredBidRequestsList'
    { _bafsfbrlXgafv          :: !(Maybe Xgafv)
    , _bafsfbrlUploadProtocol :: !(Maybe Text)
    , _bafsfbrlFilterSetName  :: !Text
    , _bafsfbrlAccessToken    :: !(Maybe Text)
    , _bafsfbrlUploadType     :: !(Maybe Text)
    , _bafsfbrlPageToken      :: !(Maybe Text)
    , _bafsfbrlPageSize       :: !(Maybe (Textual Int32))
    , _bafsfbrlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BiddersAccountsFilterSetsFilteredBidRequestsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bafsfbrlXgafv'
--
-- * 'bafsfbrlUploadProtocol'
--
-- * 'bafsfbrlFilterSetName'
--
-- * 'bafsfbrlAccessToken'
--
-- * 'bafsfbrlUploadType'
--
-- * 'bafsfbrlPageToken'
--
-- * 'bafsfbrlPageSize'
--
-- * 'bafsfbrlCallback'
biddersAccountsFilterSetsFilteredBidRequestsList
    :: Text -- ^ 'bafsfbrlFilterSetName'
    -> BiddersAccountsFilterSetsFilteredBidRequestsList
biddersAccountsFilterSetsFilteredBidRequestsList pBafsfbrlFilterSetName_ =
    BiddersAccountsFilterSetsFilteredBidRequestsList'
    { _bafsfbrlXgafv = Nothing
    , _bafsfbrlUploadProtocol = Nothing
    , _bafsfbrlFilterSetName = pBafsfbrlFilterSetName_
    , _bafsfbrlAccessToken = Nothing
    , _bafsfbrlUploadType = Nothing
    , _bafsfbrlPageToken = Nothing
    , _bafsfbrlPageSize = Nothing
    , _bafsfbrlCallback = Nothing
    }

-- | V1 error format.
bafsfbrlXgafv :: Lens' BiddersAccountsFilterSetsFilteredBidRequestsList (Maybe Xgafv)
bafsfbrlXgafv
  = lens _bafsfbrlXgafv
      (\ s a -> s{_bafsfbrlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bafsfbrlUploadProtocol :: Lens' BiddersAccountsFilterSetsFilteredBidRequestsList (Maybe Text)
bafsfbrlUploadProtocol
  = lens _bafsfbrlUploadProtocol
      (\ s a -> s{_bafsfbrlUploadProtocol = a})

-- | Name of the filter set that should be applied to the requested metrics.
-- For example: - For a bidder-level filter set for bidder 123:
-- \`bidders\/123\/filterSets\/abc\` - For an account-level filter set for
-- the buyer account representing bidder 123:
-- \`bidders\/123\/accounts\/123\/filterSets\/abc\` - For an account-level
-- filter set for the child seat buyer account 456 whose bidder is 123:
-- \`bidders\/123\/accounts\/456\/filterSets\/abc\`
bafsfbrlFilterSetName :: Lens' BiddersAccountsFilterSetsFilteredBidRequestsList Text
bafsfbrlFilterSetName
  = lens _bafsfbrlFilterSetName
      (\ s a -> s{_bafsfbrlFilterSetName = a})

-- | OAuth access token.
bafsfbrlAccessToken :: Lens' BiddersAccountsFilterSetsFilteredBidRequestsList (Maybe Text)
bafsfbrlAccessToken
  = lens _bafsfbrlAccessToken
      (\ s a -> s{_bafsfbrlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bafsfbrlUploadType :: Lens' BiddersAccountsFilterSetsFilteredBidRequestsList (Maybe Text)
bafsfbrlUploadType
  = lens _bafsfbrlUploadType
      (\ s a -> s{_bafsfbrlUploadType = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of
-- ListFilteredBidRequestsResponse.nextPageToken returned from the previous
-- call to the filteredBidRequests.list method.
bafsfbrlPageToken :: Lens' BiddersAccountsFilterSetsFilteredBidRequestsList (Maybe Text)
bafsfbrlPageToken
  = lens _bafsfbrlPageToken
      (\ s a -> s{_bafsfbrlPageToken = a})

-- | Requested page size. The server may return fewer results than requested.
-- If unspecified, the server will pick an appropriate default.
bafsfbrlPageSize :: Lens' BiddersAccountsFilterSetsFilteredBidRequestsList (Maybe Int32)
bafsfbrlPageSize
  = lens _bafsfbrlPageSize
      (\ s a -> s{_bafsfbrlPageSize = a})
      . mapping _Coerce

-- | JSONP
bafsfbrlCallback :: Lens' BiddersAccountsFilterSetsFilteredBidRequestsList (Maybe Text)
bafsfbrlCallback
  = lens _bafsfbrlCallback
      (\ s a -> s{_bafsfbrlCallback = a})

instance GoogleRequest
         BiddersAccountsFilterSetsFilteredBidRequestsList
         where
        type Rs
               BiddersAccountsFilterSetsFilteredBidRequestsList
             = ListFilteredBidRequestsResponse
        type Scopes
               BiddersAccountsFilterSetsFilteredBidRequestsList
             =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          BiddersAccountsFilterSetsFilteredBidRequestsList'{..}
          = go _bafsfbrlFilterSetName _bafsfbrlXgafv
              _bafsfbrlUploadProtocol
              _bafsfbrlAccessToken
              _bafsfbrlUploadType
              _bafsfbrlPageToken
              _bafsfbrlPageSize
              _bafsfbrlCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           BiddersAccountsFilterSetsFilteredBidRequestsListResource)
                      mempty
