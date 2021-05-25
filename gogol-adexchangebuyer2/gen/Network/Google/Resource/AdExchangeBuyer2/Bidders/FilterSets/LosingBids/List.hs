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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.LosingBids.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all reasons for which bids lost in the auction, with the number of
-- bids that lost for each reason.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.filterSets.losingBids.list@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.LosingBids.List
    (
    -- * REST Resource
      BiddersFilterSetsLosingBidsListResource

    -- * Creating a Request
    , biddersFilterSetsLosingBidsList
    , BiddersFilterSetsLosingBidsList

    -- * Request Lenses
    , bfslblXgafv
    , bfslblUploadProtocol
    , bfslblFilterSetName
    , bfslblAccessToken
    , bfslblUploadType
    , bfslblPageToken
    , bfslblPageSize
    , bfslblCallback
    ) where

import Network.Google.AdExchangeBuyer2.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.filterSets.losingBids.list@ method which the
-- 'BiddersFilterSetsLosingBidsList' request conforms to.
type BiddersFilterSetsLosingBidsListResource =
     "v2beta1" :>
       Capture "filterSetName" Text :>
         "losingBids" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListLosingBidsResponse

-- | List all reasons for which bids lost in the auction, with the number of
-- bids that lost for each reason.
--
-- /See:/ 'biddersFilterSetsLosingBidsList' smart constructor.
data BiddersFilterSetsLosingBidsList =
  BiddersFilterSetsLosingBidsList'
    { _bfslblXgafv :: !(Maybe Xgafv)
    , _bfslblUploadProtocol :: !(Maybe Text)
    , _bfslblFilterSetName :: !Text
    , _bfslblAccessToken :: !(Maybe Text)
    , _bfslblUploadType :: !(Maybe Text)
    , _bfslblPageToken :: !(Maybe Text)
    , _bfslblPageSize :: !(Maybe (Textual Int32))
    , _bfslblCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BiddersFilterSetsLosingBidsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bfslblXgafv'
--
-- * 'bfslblUploadProtocol'
--
-- * 'bfslblFilterSetName'
--
-- * 'bfslblAccessToken'
--
-- * 'bfslblUploadType'
--
-- * 'bfslblPageToken'
--
-- * 'bfslblPageSize'
--
-- * 'bfslblCallback'
biddersFilterSetsLosingBidsList
    :: Text -- ^ 'bfslblFilterSetName'
    -> BiddersFilterSetsLosingBidsList
biddersFilterSetsLosingBidsList pBfslblFilterSetName_ =
  BiddersFilterSetsLosingBidsList'
    { _bfslblXgafv = Nothing
    , _bfslblUploadProtocol = Nothing
    , _bfslblFilterSetName = pBfslblFilterSetName_
    , _bfslblAccessToken = Nothing
    , _bfslblUploadType = Nothing
    , _bfslblPageToken = Nothing
    , _bfslblPageSize = Nothing
    , _bfslblCallback = Nothing
    }


-- | V1 error format.
bfslblXgafv :: Lens' BiddersFilterSetsLosingBidsList (Maybe Xgafv)
bfslblXgafv
  = lens _bfslblXgafv (\ s a -> s{_bfslblXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bfslblUploadProtocol :: Lens' BiddersFilterSetsLosingBidsList (Maybe Text)
bfslblUploadProtocol
  = lens _bfslblUploadProtocol
      (\ s a -> s{_bfslblUploadProtocol = a})

-- | Name of the filter set that should be applied to the requested metrics.
-- For example: - For a bidder-level filter set for bidder 123:
-- \`bidders\/123\/filterSets\/abc\` - For an account-level filter set for
-- the buyer account representing bidder 123:
-- \`bidders\/123\/accounts\/123\/filterSets\/abc\` - For an account-level
-- filter set for the child seat buyer account 456 whose bidder is 123:
-- \`bidders\/123\/accounts\/456\/filterSets\/abc\`
bfslblFilterSetName :: Lens' BiddersFilterSetsLosingBidsList Text
bfslblFilterSetName
  = lens _bfslblFilterSetName
      (\ s a -> s{_bfslblFilterSetName = a})

-- | OAuth access token.
bfslblAccessToken :: Lens' BiddersFilterSetsLosingBidsList (Maybe Text)
bfslblAccessToken
  = lens _bfslblAccessToken
      (\ s a -> s{_bfslblAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bfslblUploadType :: Lens' BiddersFilterSetsLosingBidsList (Maybe Text)
bfslblUploadType
  = lens _bfslblUploadType
      (\ s a -> s{_bfslblUploadType = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of ListLosingBidsResponse.nextPageToken
-- returned from the previous call to the losingBids.list method.
bfslblPageToken :: Lens' BiddersFilterSetsLosingBidsList (Maybe Text)
bfslblPageToken
  = lens _bfslblPageToken
      (\ s a -> s{_bfslblPageToken = a})

-- | Requested page size. The server may return fewer results than requested.
-- If unspecified, the server will pick an appropriate default.
bfslblPageSize :: Lens' BiddersFilterSetsLosingBidsList (Maybe Int32)
bfslblPageSize
  = lens _bfslblPageSize
      (\ s a -> s{_bfslblPageSize = a})
      . mapping _Coerce

-- | JSONP
bfslblCallback :: Lens' BiddersFilterSetsLosingBidsList (Maybe Text)
bfslblCallback
  = lens _bfslblCallback
      (\ s a -> s{_bfslblCallback = a})

instance GoogleRequest
           BiddersFilterSetsLosingBidsList
         where
        type Rs BiddersFilterSetsLosingBidsList =
             ListLosingBidsResponse
        type Scopes BiddersFilterSetsLosingBidsList =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient BiddersFilterSetsLosingBidsList'{..}
          = go _bfslblFilterSetName _bfslblXgafv
              _bfslblUploadProtocol
              _bfslblAccessToken
              _bfslblUploadType
              _bfslblPageToken
              _bfslblPageSize
              _bfslblCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy BiddersFilterSetsLosingBidsListResource)
                      mempty
