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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all filter sets for the account with the given account ID.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.filterSets.list@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.FilterSets.List
    (
    -- * REST Resource
      BiddersFilterSetsListResource

    -- * Creating a Request
    , biddersFilterSetsList
    , BiddersFilterSetsList

    -- * Request Lenses
    , bfslXgafv
    , bfslUploadProtocol
    , bfslAccessToken
    , bfslUploadType
    , bfslOwnerName
    , bfslPageToken
    , bfslPageSize
    , bfslCallback
    ) where

import Network.Google.AdExchangeBuyer2.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.filterSets.list@ method which the
-- 'BiddersFilterSetsList' request conforms to.
type BiddersFilterSetsListResource =
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
-- /See:/ 'biddersFilterSetsList' smart constructor.
data BiddersFilterSetsList =
  BiddersFilterSetsList'
    { _bfslXgafv :: !(Maybe Xgafv)
    , _bfslUploadProtocol :: !(Maybe Text)
    , _bfslAccessToken :: !(Maybe Text)
    , _bfslUploadType :: !(Maybe Text)
    , _bfslOwnerName :: !Text
    , _bfslPageToken :: !(Maybe Text)
    , _bfslPageSize :: !(Maybe (Textual Int32))
    , _bfslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BiddersFilterSetsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bfslXgafv'
--
-- * 'bfslUploadProtocol'
--
-- * 'bfslAccessToken'
--
-- * 'bfslUploadType'
--
-- * 'bfslOwnerName'
--
-- * 'bfslPageToken'
--
-- * 'bfslPageSize'
--
-- * 'bfslCallback'
biddersFilterSetsList
    :: Text -- ^ 'bfslOwnerName'
    -> BiddersFilterSetsList
biddersFilterSetsList pBfslOwnerName_ =
  BiddersFilterSetsList'
    { _bfslXgafv = Nothing
    , _bfslUploadProtocol = Nothing
    , _bfslAccessToken = Nothing
    , _bfslUploadType = Nothing
    , _bfslOwnerName = pBfslOwnerName_
    , _bfslPageToken = Nothing
    , _bfslPageSize = Nothing
    , _bfslCallback = Nothing
    }


-- | V1 error format.
bfslXgafv :: Lens' BiddersFilterSetsList (Maybe Xgafv)
bfslXgafv
  = lens _bfslXgafv (\ s a -> s{_bfslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bfslUploadProtocol :: Lens' BiddersFilterSetsList (Maybe Text)
bfslUploadProtocol
  = lens _bfslUploadProtocol
      (\ s a -> s{_bfslUploadProtocol = a})

-- | OAuth access token.
bfslAccessToken :: Lens' BiddersFilterSetsList (Maybe Text)
bfslAccessToken
  = lens _bfslAccessToken
      (\ s a -> s{_bfslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bfslUploadType :: Lens' BiddersFilterSetsList (Maybe Text)
bfslUploadType
  = lens _bfslUploadType
      (\ s a -> s{_bfslUploadType = a})

-- | Name of the owner (bidder or account) of the filter sets to be listed.
-- For example: - For a bidder-level filter set for bidder 123:
-- \`bidders\/123\` - For an account-level filter set for the buyer account
-- representing bidder 123: \`bidders\/123\/accounts\/123\` - For an
-- account-level filter set for the child seat buyer account 456 whose
-- bidder is 123: \`bidders\/123\/accounts\/456\`
bfslOwnerName :: Lens' BiddersFilterSetsList Text
bfslOwnerName
  = lens _bfslOwnerName
      (\ s a -> s{_bfslOwnerName = a})

-- | A token identifying a page of results the server should return.
-- Typically, this is the value of ListFilterSetsResponse.nextPageToken
-- returned from the previous call to the accounts.filterSets.list method.
bfslPageToken :: Lens' BiddersFilterSetsList (Maybe Text)
bfslPageToken
  = lens _bfslPageToken
      (\ s a -> s{_bfslPageToken = a})

-- | Requested page size. The server may return fewer results than requested.
-- If unspecified, the server will pick an appropriate default.
bfslPageSize :: Lens' BiddersFilterSetsList (Maybe Int32)
bfslPageSize
  = lens _bfslPageSize (\ s a -> s{_bfslPageSize = a})
      . mapping _Coerce

-- | JSONP
bfslCallback :: Lens' BiddersFilterSetsList (Maybe Text)
bfslCallback
  = lens _bfslCallback (\ s a -> s{_bfslCallback = a})

instance GoogleRequest BiddersFilterSetsList where
        type Rs BiddersFilterSetsList =
             ListFilterSetsResponse
        type Scopes BiddersFilterSetsList =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient BiddersFilterSetsList'{..}
          = go _bfslOwnerName _bfslXgafv _bfslUploadProtocol
              _bfslAccessToken
              _bfslUploadType
              _bfslPageToken
              _bfslPageSize
              _bfslCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy BiddersFilterSetsListResource)
                      mempty
