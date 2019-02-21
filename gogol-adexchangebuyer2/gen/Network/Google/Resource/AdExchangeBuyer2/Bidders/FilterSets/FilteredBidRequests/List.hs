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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.FilteredBidRequests.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all reasons that caused a bid request not to be sent for an
-- impression, with the number of bid requests not sent for each reason.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.filterSets.filteredBidRequests.list@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.FilteredBidRequests.List
    (
    -- * REST Resource
      BiddersFilterSetsFilteredBidRequestsListResource

    -- * Creating a Request
    , biddersFilterSetsFilteredBidRequestsList
    , BiddersFilterSetsFilteredBidRequestsList

    -- * Request Lenses
    , bfsfbrlXgafv
    , bfsfbrlUploadProtocol
    , bfsfbrlFilterSetName
    , bfsfbrlAccessToken
    , bfsfbrlUploadType
    , bfsfbrlPageToken
    , bfsfbrlPageSize
    , bfsfbrlCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.filterSets.filteredBidRequests.list@ method which the
-- 'BiddersFilterSetsFilteredBidRequestsList' request conforms to.
type BiddersFilterSetsFilteredBidRequestsListResource
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
-- /See:/ 'biddersFilterSetsFilteredBidRequestsList' smart constructor.
data BiddersFilterSetsFilteredBidRequestsList =
  BiddersFilterSetsFilteredBidRequestsList'
    { _bfsfbrlXgafv          :: !(Maybe Xgafv)
    , _bfsfbrlUploadProtocol :: !(Maybe Text)
    , _bfsfbrlFilterSetName  :: !Text
    , _bfsfbrlAccessToken    :: !(Maybe Text)
    , _bfsfbrlUploadType     :: !(Maybe Text)
    , _bfsfbrlPageToken      :: !(Maybe Text)
    , _bfsfbrlPageSize       :: !(Maybe (Textual Int32))
    , _bfsfbrlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BiddersFilterSetsFilteredBidRequestsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bfsfbrlXgafv'
--
-- * 'bfsfbrlUploadProtocol'
--
-- * 'bfsfbrlFilterSetName'
--
-- * 'bfsfbrlAccessToken'
--
-- * 'bfsfbrlUploadType'
--
-- * 'bfsfbrlPageToken'
--
-- * 'bfsfbrlPageSize'
--
-- * 'bfsfbrlCallback'
biddersFilterSetsFilteredBidRequestsList
    :: Text -- ^ 'bfsfbrlFilterSetName'
    -> BiddersFilterSetsFilteredBidRequestsList
biddersFilterSetsFilteredBidRequestsList pBfsfbrlFilterSetName_ =
  BiddersFilterSetsFilteredBidRequestsList'
    { _bfsfbrlXgafv = Nothing
    , _bfsfbrlUploadProtocol = Nothing
    , _bfsfbrlFilterSetName = pBfsfbrlFilterSetName_
    , _bfsfbrlAccessToken = Nothing
    , _bfsfbrlUploadType = Nothing
    , _bfsfbrlPageToken = Nothing
    , _bfsfbrlPageSize = Nothing
    , _bfsfbrlCallback = Nothing
    }


-- | V1 error format.
bfsfbrlXgafv :: Lens' BiddersFilterSetsFilteredBidRequestsList (Maybe Xgafv)
bfsfbrlXgafv
  = lens _bfsfbrlXgafv (\ s a -> s{_bfsfbrlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bfsfbrlUploadProtocol :: Lens' BiddersFilterSetsFilteredBidRequestsList (Maybe Text)
bfsfbrlUploadProtocol
  = lens _bfsfbrlUploadProtocol
      (\ s a -> s{_bfsfbrlUploadProtocol = a})

-- | Name of the filter set that should be applied to the requested metrics.
-- For example: - For a bidder-level filter set for bidder 123:
-- \`bidders\/123\/filterSets\/abc\` - For an account-level filter set for
-- the buyer account representing bidder 123:
-- \`bidders\/123\/accounts\/123\/filterSets\/abc\` - For an account-level
-- filter set for the child seat buyer account 456 whose bidder is 123:
-- \`bidders\/123\/accounts\/456\/filterSets\/abc\`
bfsfbrlFilterSetName :: Lens' BiddersFilterSetsFilteredBidRequestsList Text
bfsfbrlFilterSetName
  = lens _bfsfbrlFilterSetName
      (\ s a -> s{_bfsfbrlFilterSetName = a})

-- | OAuth access token.
bfsfbrlAccessToken :: Lens' BiddersFilterSetsFilteredBidRequestsList (Maybe Text)
bfsfbrlAccessToken
  = lens _bfsfbrlAccessToken
      (\ s a -> s{_bfsfbrlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bfsfbrlUploadType :: Lens' BiddersFilterSetsFilteredBidRequestsList (Maybe Text)
bfsfbrlUploadType
  = lens _bfsfbrlUploadType
      (\ s a -> s{_bfsfbrlUploadType = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of
-- ListFilteredBidRequestsResponse.nextPageToken returned from the previous
-- call to the filteredBidRequests.list method.
bfsfbrlPageToken :: Lens' BiddersFilterSetsFilteredBidRequestsList (Maybe Text)
bfsfbrlPageToken
  = lens _bfsfbrlPageToken
      (\ s a -> s{_bfsfbrlPageToken = a})

-- | Requested page size. The server may return fewer results than requested.
-- If unspecified, the server will pick an appropriate default.
bfsfbrlPageSize :: Lens' BiddersFilterSetsFilteredBidRequestsList (Maybe Int32)
bfsfbrlPageSize
  = lens _bfsfbrlPageSize
      (\ s a -> s{_bfsfbrlPageSize = a})
      . mapping _Coerce

-- | JSONP
bfsfbrlCallback :: Lens' BiddersFilterSetsFilteredBidRequestsList (Maybe Text)
bfsfbrlCallback
  = lens _bfsfbrlCallback
      (\ s a -> s{_bfsfbrlCallback = a})

instance GoogleRequest
           BiddersFilterSetsFilteredBidRequestsList
         where
        type Rs BiddersFilterSetsFilteredBidRequestsList =
             ListFilteredBidRequestsResponse
        type Scopes BiddersFilterSetsFilteredBidRequestsList
             =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          BiddersFilterSetsFilteredBidRequestsList'{..}
          = go _bfsfbrlFilterSetName _bfsfbrlXgafv
              _bfsfbrlUploadProtocol
              _bfsfbrlAccessToken
              _bfsfbrlUploadType
              _bfsfbrlPageToken
              _bfsfbrlPageSize
              _bfsfbrlCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           BiddersFilterSetsFilteredBidRequestsListResource)
                      mempty
