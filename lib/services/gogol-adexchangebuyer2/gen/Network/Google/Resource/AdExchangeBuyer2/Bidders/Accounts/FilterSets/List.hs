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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all filter sets for the account with the given account ID.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.accounts.filterSets.list@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.List
    (
    -- * REST Resource
      BiddersAccountsFilterSetsListResource

    -- * Creating a Request
    , biddersAccountsFilterSetsList
    , BiddersAccountsFilterSetsList

    -- * Request Lenses
    , bafslXgafv
    , bafslUploadProtocol
    , bafslAccessToken
    , bafslUploadType
    , bafslOwnerName
    , bafslPageToken
    , bafslPageSize
    , bafslCallback
    ) where

import Network.Google.AdExchangeBuyer2.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.accounts.filterSets.list@ method which the
-- 'BiddersAccountsFilterSetsList' request conforms to.
type BiddersAccountsFilterSetsListResource =
     "v2beta1" :>
       Capture "ownerName" Text :>
         "filterSets" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListFilterSetsResponse

-- | Lists all filter sets for the account with the given account ID.
--
-- /See:/ 'biddersAccountsFilterSetsList' smart constructor.
data BiddersAccountsFilterSetsList =
  BiddersAccountsFilterSetsList'
    { _bafslXgafv :: !(Maybe Xgafv)
    , _bafslUploadProtocol :: !(Maybe Text)
    , _bafslAccessToken :: !(Maybe Text)
    , _bafslUploadType :: !(Maybe Text)
    , _bafslOwnerName :: !Text
    , _bafslPageToken :: !(Maybe Text)
    , _bafslPageSize :: !(Maybe (Textual Int32))
    , _bafslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BiddersAccountsFilterSetsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bafslXgafv'
--
-- * 'bafslUploadProtocol'
--
-- * 'bafslAccessToken'
--
-- * 'bafslUploadType'
--
-- * 'bafslOwnerName'
--
-- * 'bafslPageToken'
--
-- * 'bafslPageSize'
--
-- * 'bafslCallback'
biddersAccountsFilterSetsList
    :: Text -- ^ 'bafslOwnerName'
    -> BiddersAccountsFilterSetsList
biddersAccountsFilterSetsList pBafslOwnerName_ =
  BiddersAccountsFilterSetsList'
    { _bafslXgafv = Nothing
    , _bafslUploadProtocol = Nothing
    , _bafslAccessToken = Nothing
    , _bafslUploadType = Nothing
    , _bafslOwnerName = pBafslOwnerName_
    , _bafslPageToken = Nothing
    , _bafslPageSize = Nothing
    , _bafslCallback = Nothing
    }


-- | V1 error format.
bafslXgafv :: Lens' BiddersAccountsFilterSetsList (Maybe Xgafv)
bafslXgafv
  = lens _bafslXgafv (\ s a -> s{_bafslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bafslUploadProtocol :: Lens' BiddersAccountsFilterSetsList (Maybe Text)
bafslUploadProtocol
  = lens _bafslUploadProtocol
      (\ s a -> s{_bafslUploadProtocol = a})

-- | OAuth access token.
bafslAccessToken :: Lens' BiddersAccountsFilterSetsList (Maybe Text)
bafslAccessToken
  = lens _bafslAccessToken
      (\ s a -> s{_bafslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bafslUploadType :: Lens' BiddersAccountsFilterSetsList (Maybe Text)
bafslUploadType
  = lens _bafslUploadType
      (\ s a -> s{_bafslUploadType = a})

-- | Name of the owner (bidder or account) of the filter sets to be listed.
-- For example: - For a bidder-level filter set for bidder 123:
-- \`bidders\/123\` - For an account-level filter set for the buyer account
-- representing bidder 123: \`bidders\/123\/accounts\/123\` - For an
-- account-level filter set for the child seat buyer account 456 whose
-- bidder is 123: \`bidders\/123\/accounts\/456\`
bafslOwnerName :: Lens' BiddersAccountsFilterSetsList Text
bafslOwnerName
  = lens _bafslOwnerName
      (\ s a -> s{_bafslOwnerName = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of ListFilterSetsResponse.nextPageToken
-- returned from the previous call to the accounts.filterSets.list method.
bafslPageToken :: Lens' BiddersAccountsFilterSetsList (Maybe Text)
bafslPageToken
  = lens _bafslPageToken
      (\ s a -> s{_bafslPageToken = a})

-- | Requested page size. The server may return fewer results than requested.
-- If unspecified, the server will pick an appropriate default.
bafslPageSize :: Lens' BiddersAccountsFilterSetsList (Maybe Int32)
bafslPageSize
  = lens _bafslPageSize
      (\ s a -> s{_bafslPageSize = a})
      . mapping _Coerce

-- | JSONP
bafslCallback :: Lens' BiddersAccountsFilterSetsList (Maybe Text)
bafslCallback
  = lens _bafslCallback
      (\ s a -> s{_bafslCallback = a})

instance GoogleRequest BiddersAccountsFilterSetsList
         where
        type Rs BiddersAccountsFilterSetsList =
             ListFilterSetsResponse
        type Scopes BiddersAccountsFilterSetsList =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient BiddersAccountsFilterSetsList'{..}
          = go _bafslOwnerName _bafslXgafv _bafslUploadProtocol
              _bafslAccessToken
              _bafslUploadType
              _bafslPageToken
              _bafslPageSize
              _bafslCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy BiddersAccountsFilterSetsListResource)
                      mempty
