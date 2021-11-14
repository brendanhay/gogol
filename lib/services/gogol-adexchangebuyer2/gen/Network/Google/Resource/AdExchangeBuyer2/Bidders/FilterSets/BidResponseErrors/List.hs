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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.BidResponseErrors.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all errors that occurred in bid responses, with the number of bid
-- responses affected for each reason.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.filterSets.bidResponseErrors.list@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.BidResponseErrors.List
    (
    -- * REST Resource
      BiddersFilterSetsBidResponseErrorsListResource

    -- * Creating a Request
    , biddersFilterSetsBidResponseErrorsList
    , BiddersFilterSetsBidResponseErrorsList

    -- * Request Lenses
    , bfsbrelXgafv
    , bfsbrelUploadProtocol
    , bfsbrelFilterSetName
    , bfsbrelAccessToken
    , bfsbrelUploadType
    , bfsbrelPageToken
    , bfsbrelPageSize
    , bfsbrelCallback
    ) where

import Network.Google.AdExchangeBuyer2.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.filterSets.bidResponseErrors.list@ method which the
-- 'BiddersFilterSetsBidResponseErrorsList' request conforms to.
type BiddersFilterSetsBidResponseErrorsListResource =
     "v2beta1" :>
       Capture "filterSetName" Text :>
         "bidResponseErrors" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListBidResponseErrorsResponse

-- | List all errors that occurred in bid responses, with the number of bid
-- responses affected for each reason.
--
-- /See:/ 'biddersFilterSetsBidResponseErrorsList' smart constructor.
data BiddersFilterSetsBidResponseErrorsList =
  BiddersFilterSetsBidResponseErrorsList'
    { _bfsbrelXgafv :: !(Maybe Xgafv)
    , _bfsbrelUploadProtocol :: !(Maybe Text)
    , _bfsbrelFilterSetName :: !Text
    , _bfsbrelAccessToken :: !(Maybe Text)
    , _bfsbrelUploadType :: !(Maybe Text)
    , _bfsbrelPageToken :: !(Maybe Text)
    , _bfsbrelPageSize :: !(Maybe (Textual Int32))
    , _bfsbrelCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BiddersFilterSetsBidResponseErrorsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bfsbrelXgafv'
--
-- * 'bfsbrelUploadProtocol'
--
-- * 'bfsbrelFilterSetName'
--
-- * 'bfsbrelAccessToken'
--
-- * 'bfsbrelUploadType'
--
-- * 'bfsbrelPageToken'
--
-- * 'bfsbrelPageSize'
--
-- * 'bfsbrelCallback'
biddersFilterSetsBidResponseErrorsList
    :: Text -- ^ 'bfsbrelFilterSetName'
    -> BiddersFilterSetsBidResponseErrorsList
biddersFilterSetsBidResponseErrorsList pBfsbrelFilterSetName_ =
  BiddersFilterSetsBidResponseErrorsList'
    { _bfsbrelXgafv = Nothing
    , _bfsbrelUploadProtocol = Nothing
    , _bfsbrelFilterSetName = pBfsbrelFilterSetName_
    , _bfsbrelAccessToken = Nothing
    , _bfsbrelUploadType = Nothing
    , _bfsbrelPageToken = Nothing
    , _bfsbrelPageSize = Nothing
    , _bfsbrelCallback = Nothing
    }


-- | V1 error format.
bfsbrelXgafv :: Lens' BiddersFilterSetsBidResponseErrorsList (Maybe Xgafv)
bfsbrelXgafv
  = lens _bfsbrelXgafv (\ s a -> s{_bfsbrelXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bfsbrelUploadProtocol :: Lens' BiddersFilterSetsBidResponseErrorsList (Maybe Text)
bfsbrelUploadProtocol
  = lens _bfsbrelUploadProtocol
      (\ s a -> s{_bfsbrelUploadProtocol = a})

-- | Name of the filter set that should be applied to the requested metrics.
-- For example: - For a bidder-level filter set for bidder 123:
-- \`bidders\/123\/filterSets\/abc\` - For an account-level filter set for
-- the buyer account representing bidder 123:
-- \`bidders\/123\/accounts\/123\/filterSets\/abc\` - For an account-level
-- filter set for the child seat buyer account 456 whose bidder is 123:
-- \`bidders\/123\/accounts\/456\/filterSets\/abc\`
bfsbrelFilterSetName :: Lens' BiddersFilterSetsBidResponseErrorsList Text
bfsbrelFilterSetName
  = lens _bfsbrelFilterSetName
      (\ s a -> s{_bfsbrelFilterSetName = a})

-- | OAuth access token.
bfsbrelAccessToken :: Lens' BiddersFilterSetsBidResponseErrorsList (Maybe Text)
bfsbrelAccessToken
  = lens _bfsbrelAccessToken
      (\ s a -> s{_bfsbrelAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bfsbrelUploadType :: Lens' BiddersFilterSetsBidResponseErrorsList (Maybe Text)
bfsbrelUploadType
  = lens _bfsbrelUploadType
      (\ s a -> s{_bfsbrelUploadType = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of
-- ListBidResponseErrorsResponse.nextPageToken returned from the previous
-- call to the bidResponseErrors.list method.
bfsbrelPageToken :: Lens' BiddersFilterSetsBidResponseErrorsList (Maybe Text)
bfsbrelPageToken
  = lens _bfsbrelPageToken
      (\ s a -> s{_bfsbrelPageToken = a})

-- | Requested page size. The server may return fewer results than requested.
-- If unspecified, the server will pick an appropriate default.
bfsbrelPageSize :: Lens' BiddersFilterSetsBidResponseErrorsList (Maybe Int32)
bfsbrelPageSize
  = lens _bfsbrelPageSize
      (\ s a -> s{_bfsbrelPageSize = a})
      . mapping _Coerce

-- | JSONP
bfsbrelCallback :: Lens' BiddersFilterSetsBidResponseErrorsList (Maybe Text)
bfsbrelCallback
  = lens _bfsbrelCallback
      (\ s a -> s{_bfsbrelCallback = a})

instance GoogleRequest
           BiddersFilterSetsBidResponseErrorsList
         where
        type Rs BiddersFilterSetsBidResponseErrorsList =
             ListBidResponseErrorsResponse
        type Scopes BiddersFilterSetsBidResponseErrorsList =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          BiddersFilterSetsBidResponseErrorsList'{..}
          = go _bfsbrelFilterSetName _bfsbrelXgafv
              _bfsbrelUploadProtocol
              _bfsbrelAccessToken
              _bfsbrelUploadType
              _bfsbrelPageToken
              _bfsbrelPageSize
              _bfsbrelCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy BiddersFilterSetsBidResponseErrorsListResource)
                      mempty
