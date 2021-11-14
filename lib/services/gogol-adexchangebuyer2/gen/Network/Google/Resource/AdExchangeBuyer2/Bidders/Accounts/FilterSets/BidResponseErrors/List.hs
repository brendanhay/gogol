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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.BidResponseErrors.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all errors that occurred in bid responses, with the number of bid
-- responses affected for each reason.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.accounts.filterSets.bidResponseErrors.list@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.BidResponseErrors.List
    (
    -- * REST Resource
      BiddersAccountsFilterSetsBidResponseErrorsListResource

    -- * Creating a Request
    , biddersAccountsFilterSetsBidResponseErrorsList
    , BiddersAccountsFilterSetsBidResponseErrorsList

    -- * Request Lenses
    , bafsbrelXgafv
    , bafsbrelUploadProtocol
    , bafsbrelFilterSetName
    , bafsbrelAccessToken
    , bafsbrelUploadType
    , bafsbrelPageToken
    , bafsbrelPageSize
    , bafsbrelCallback
    ) where

import Network.Google.AdExchangeBuyer2.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.accounts.filterSets.bidResponseErrors.list@ method which the
-- 'BiddersAccountsFilterSetsBidResponseErrorsList' request conforms to.
type BiddersAccountsFilterSetsBidResponseErrorsListResource
     =
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
-- /See:/ 'biddersAccountsFilterSetsBidResponseErrorsList' smart constructor.
data BiddersAccountsFilterSetsBidResponseErrorsList =
  BiddersAccountsFilterSetsBidResponseErrorsList'
    { _bafsbrelXgafv :: !(Maybe Xgafv)
    , _bafsbrelUploadProtocol :: !(Maybe Text)
    , _bafsbrelFilterSetName :: !Text
    , _bafsbrelAccessToken :: !(Maybe Text)
    , _bafsbrelUploadType :: !(Maybe Text)
    , _bafsbrelPageToken :: !(Maybe Text)
    , _bafsbrelPageSize :: !(Maybe (Textual Int32))
    , _bafsbrelCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BiddersAccountsFilterSetsBidResponseErrorsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bafsbrelXgafv'
--
-- * 'bafsbrelUploadProtocol'
--
-- * 'bafsbrelFilterSetName'
--
-- * 'bafsbrelAccessToken'
--
-- * 'bafsbrelUploadType'
--
-- * 'bafsbrelPageToken'
--
-- * 'bafsbrelPageSize'
--
-- * 'bafsbrelCallback'
biddersAccountsFilterSetsBidResponseErrorsList
    :: Text -- ^ 'bafsbrelFilterSetName'
    -> BiddersAccountsFilterSetsBidResponseErrorsList
biddersAccountsFilterSetsBidResponseErrorsList pBafsbrelFilterSetName_ =
  BiddersAccountsFilterSetsBidResponseErrorsList'
    { _bafsbrelXgafv = Nothing
    , _bafsbrelUploadProtocol = Nothing
    , _bafsbrelFilterSetName = pBafsbrelFilterSetName_
    , _bafsbrelAccessToken = Nothing
    , _bafsbrelUploadType = Nothing
    , _bafsbrelPageToken = Nothing
    , _bafsbrelPageSize = Nothing
    , _bafsbrelCallback = Nothing
    }


-- | V1 error format.
bafsbrelXgafv :: Lens' BiddersAccountsFilterSetsBidResponseErrorsList (Maybe Xgafv)
bafsbrelXgafv
  = lens _bafsbrelXgafv
      (\ s a -> s{_bafsbrelXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bafsbrelUploadProtocol :: Lens' BiddersAccountsFilterSetsBidResponseErrorsList (Maybe Text)
bafsbrelUploadProtocol
  = lens _bafsbrelUploadProtocol
      (\ s a -> s{_bafsbrelUploadProtocol = a})

-- | Name of the filter set that should be applied to the requested metrics.
-- For example: - For a bidder-level filter set for bidder 123:
-- \`bidders\/123\/filterSets\/abc\` - For an account-level filter set for
-- the buyer account representing bidder 123:
-- \`bidders\/123\/accounts\/123\/filterSets\/abc\` - For an account-level
-- filter set for the child seat buyer account 456 whose bidder is 123:
-- \`bidders\/123\/accounts\/456\/filterSets\/abc\`
bafsbrelFilterSetName :: Lens' BiddersAccountsFilterSetsBidResponseErrorsList Text
bafsbrelFilterSetName
  = lens _bafsbrelFilterSetName
      (\ s a -> s{_bafsbrelFilterSetName = a})

-- | OAuth access token.
bafsbrelAccessToken :: Lens' BiddersAccountsFilterSetsBidResponseErrorsList (Maybe Text)
bafsbrelAccessToken
  = lens _bafsbrelAccessToken
      (\ s a -> s{_bafsbrelAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bafsbrelUploadType :: Lens' BiddersAccountsFilterSetsBidResponseErrorsList (Maybe Text)
bafsbrelUploadType
  = lens _bafsbrelUploadType
      (\ s a -> s{_bafsbrelUploadType = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of
-- ListBidResponseErrorsResponse.nextPageToken returned from the previous
-- call to the bidResponseErrors.list method.
bafsbrelPageToken :: Lens' BiddersAccountsFilterSetsBidResponseErrorsList (Maybe Text)
bafsbrelPageToken
  = lens _bafsbrelPageToken
      (\ s a -> s{_bafsbrelPageToken = a})

-- | Requested page size. The server may return fewer results than requested.
-- If unspecified, the server will pick an appropriate default.
bafsbrelPageSize :: Lens' BiddersAccountsFilterSetsBidResponseErrorsList (Maybe Int32)
bafsbrelPageSize
  = lens _bafsbrelPageSize
      (\ s a -> s{_bafsbrelPageSize = a})
      . mapping _Coerce

-- | JSONP
bafsbrelCallback :: Lens' BiddersAccountsFilterSetsBidResponseErrorsList (Maybe Text)
bafsbrelCallback
  = lens _bafsbrelCallback
      (\ s a -> s{_bafsbrelCallback = a})

instance GoogleRequest
           BiddersAccountsFilterSetsBidResponseErrorsList
         where
        type Rs
               BiddersAccountsFilterSetsBidResponseErrorsList
             = ListBidResponseErrorsResponse
        type Scopes
               BiddersAccountsFilterSetsBidResponseErrorsList
             =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient
          BiddersAccountsFilterSetsBidResponseErrorsList'{..}
          = go _bafsbrelFilterSetName _bafsbrelXgafv
              _bafsbrelUploadProtocol
              _bafsbrelAccessToken
              _bafsbrelUploadType
              _bafsbrelPageToken
              _bafsbrelPageSize
              _bafsbrelCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           BiddersAccountsFilterSetsBidResponseErrorsListResource)
                      mempty
