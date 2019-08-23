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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.FilteredBids.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all reasons for which bids were filtered, with the number of bids
-- filtered for each reason.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.filterSets.filteredBids.list@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.FilteredBids.List
    (
    -- * REST Resource
      BiddersFilterSetsFilteredBidsListResource

    -- * Creating a Request
    , biddersFilterSetsFilteredBidsList
    , BiddersFilterSetsFilteredBidsList

    -- * Request Lenses
    , bfsfblXgafv
    , bfsfblUploadProtocol
    , bfsfblFilterSetName
    , bfsfblAccessToken
    , bfsfblUploadType
    , bfsfblPageToken
    , bfsfblPageSize
    , bfsfblCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.filterSets.filteredBids.list@ method which the
-- 'BiddersFilterSetsFilteredBidsList' request conforms to.
type BiddersFilterSetsFilteredBidsListResource =
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
-- /See:/ 'biddersFilterSetsFilteredBidsList' smart constructor.
data BiddersFilterSetsFilteredBidsList =
  BiddersFilterSetsFilteredBidsList'
    { _bfsfblXgafv          :: !(Maybe Xgafv)
    , _bfsfblUploadProtocol :: !(Maybe Text)
    , _bfsfblFilterSetName  :: !Text
    , _bfsfblAccessToken    :: !(Maybe Text)
    , _bfsfblUploadType     :: !(Maybe Text)
    , _bfsfblPageToken      :: !(Maybe Text)
    , _bfsfblPageSize       :: !(Maybe (Textual Int32))
    , _bfsfblCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BiddersFilterSetsFilteredBidsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bfsfblXgafv'
--
-- * 'bfsfblUploadProtocol'
--
-- * 'bfsfblFilterSetName'
--
-- * 'bfsfblAccessToken'
--
-- * 'bfsfblUploadType'
--
-- * 'bfsfblPageToken'
--
-- * 'bfsfblPageSize'
--
-- * 'bfsfblCallback'
biddersFilterSetsFilteredBidsList
    :: Text -- ^ 'bfsfblFilterSetName'
    -> BiddersFilterSetsFilteredBidsList
biddersFilterSetsFilteredBidsList pBfsfblFilterSetName_ =
  BiddersFilterSetsFilteredBidsList'
    { _bfsfblXgafv = Nothing
    , _bfsfblUploadProtocol = Nothing
    , _bfsfblFilterSetName = pBfsfblFilterSetName_
    , _bfsfblAccessToken = Nothing
    , _bfsfblUploadType = Nothing
    , _bfsfblPageToken = Nothing
    , _bfsfblPageSize = Nothing
    , _bfsfblCallback = Nothing
    }


-- | V1 error format.
bfsfblXgafv :: Lens' BiddersFilterSetsFilteredBidsList (Maybe Xgafv)
bfsfblXgafv
  = lens _bfsfblXgafv (\ s a -> s{_bfsfblXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bfsfblUploadProtocol :: Lens' BiddersFilterSetsFilteredBidsList (Maybe Text)
bfsfblUploadProtocol
  = lens _bfsfblUploadProtocol
      (\ s a -> s{_bfsfblUploadProtocol = a})

-- | Name of the filter set that should be applied to the requested metrics.
-- For example: - For a bidder-level filter set for bidder 123:
-- \`bidders\/123\/filterSets\/abc\` - For an account-level filter set for
-- the buyer account representing bidder 123:
-- \`bidders\/123\/accounts\/123\/filterSets\/abc\` - For an account-level
-- filter set for the child seat buyer account 456 whose bidder is 123:
-- \`bidders\/123\/accounts\/456\/filterSets\/abc\`
bfsfblFilterSetName :: Lens' BiddersFilterSetsFilteredBidsList Text
bfsfblFilterSetName
  = lens _bfsfblFilterSetName
      (\ s a -> s{_bfsfblFilterSetName = a})

-- | OAuth access token.
bfsfblAccessToken :: Lens' BiddersFilterSetsFilteredBidsList (Maybe Text)
bfsfblAccessToken
  = lens _bfsfblAccessToken
      (\ s a -> s{_bfsfblAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bfsfblUploadType :: Lens' BiddersFilterSetsFilteredBidsList (Maybe Text)
bfsfblUploadType
  = lens _bfsfblUploadType
      (\ s a -> s{_bfsfblUploadType = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of ListFilteredBidsResponse.nextPageToken
-- returned from the previous call to the filteredBids.list method.
bfsfblPageToken :: Lens' BiddersFilterSetsFilteredBidsList (Maybe Text)
bfsfblPageToken
  = lens _bfsfblPageToken
      (\ s a -> s{_bfsfblPageToken = a})

-- | Requested page size. The server may return fewer results than requested.
-- If unspecified, the server will pick an appropriate default.
bfsfblPageSize :: Lens' BiddersFilterSetsFilteredBidsList (Maybe Int32)
bfsfblPageSize
  = lens _bfsfblPageSize
      (\ s a -> s{_bfsfblPageSize = a})
      . mapping _Coerce

-- | JSONP
bfsfblCallback :: Lens' BiddersFilterSetsFilteredBidsList (Maybe Text)
bfsfblCallback
  = lens _bfsfblCallback
      (\ s a -> s{_bfsfblCallback = a})

instance GoogleRequest
           BiddersFilterSetsFilteredBidsList
         where
        type Rs BiddersFilterSetsFilteredBidsList =
             ListFilteredBidsResponse
        type Scopes BiddersFilterSetsFilteredBidsList =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient BiddersFilterSetsFilteredBidsList'{..}
          = go _bfsfblFilterSetName _bfsfblXgafv
              _bfsfblUploadProtocol
              _bfsfblAccessToken
              _bfsfblUploadType
              _bfsfblPageToken
              _bfsfblPageSize
              _bfsfblCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy BiddersFilterSetsFilteredBidsListResource)
                      mempty
