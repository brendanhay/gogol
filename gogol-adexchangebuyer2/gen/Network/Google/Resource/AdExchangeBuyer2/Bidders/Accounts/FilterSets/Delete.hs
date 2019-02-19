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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the requested filter set from the account with the given account
-- ID.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.accounts.filterSets.delete@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.Delete
    (
    -- * REST Resource
      BiddersAccountsFilterSetsDeleteResource

    -- * Creating a Request
    , biddersAccountsFilterSetsDelete
    , BiddersAccountsFilterSetsDelete

    -- * Request Lenses
    , bafsdXgafv
    , bafsdUploadProtocol
    , bafsdAccessToken
    , bafsdUploadType
    , bafsdName
    , bafsdCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.accounts.filterSets.delete@ method which the
-- 'BiddersAccountsFilterSetsDelete' request conforms to.
type BiddersAccountsFilterSetsDeleteResource =
     "v2beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the requested filter set from the account with the given account
-- ID.
--
-- /See:/ 'biddersAccountsFilterSetsDelete' smart constructor.
data BiddersAccountsFilterSetsDelete =
  BiddersAccountsFilterSetsDelete'
    { _bafsdXgafv          :: !(Maybe Xgafv)
    , _bafsdUploadProtocol :: !(Maybe Text)
    , _bafsdAccessToken    :: !(Maybe Text)
    , _bafsdUploadType     :: !(Maybe Text)
    , _bafsdName           :: !Text
    , _bafsdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BiddersAccountsFilterSetsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bafsdXgafv'
--
-- * 'bafsdUploadProtocol'
--
-- * 'bafsdAccessToken'
--
-- * 'bafsdUploadType'
--
-- * 'bafsdName'
--
-- * 'bafsdCallback'
biddersAccountsFilterSetsDelete
    :: Text -- ^ 'bafsdName'
    -> BiddersAccountsFilterSetsDelete
biddersAccountsFilterSetsDelete pBafsdName_ =
  BiddersAccountsFilterSetsDelete'
    { _bafsdXgafv = Nothing
    , _bafsdUploadProtocol = Nothing
    , _bafsdAccessToken = Nothing
    , _bafsdUploadType = Nothing
    , _bafsdName = pBafsdName_
    , _bafsdCallback = Nothing
    }

-- | V1 error format.
bafsdXgafv :: Lens' BiddersAccountsFilterSetsDelete (Maybe Xgafv)
bafsdXgafv
  = lens _bafsdXgafv (\ s a -> s{_bafsdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bafsdUploadProtocol :: Lens' BiddersAccountsFilterSetsDelete (Maybe Text)
bafsdUploadProtocol
  = lens _bafsdUploadProtocol
      (\ s a -> s{_bafsdUploadProtocol = a})

-- | OAuth access token.
bafsdAccessToken :: Lens' BiddersAccountsFilterSetsDelete (Maybe Text)
bafsdAccessToken
  = lens _bafsdAccessToken
      (\ s a -> s{_bafsdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bafsdUploadType :: Lens' BiddersAccountsFilterSetsDelete (Maybe Text)
bafsdUploadType
  = lens _bafsdUploadType
      (\ s a -> s{_bafsdUploadType = a})

-- | Full name of the resource to delete. For example: - For a bidder-level
-- filter set for bidder 123: \`bidders\/123\/filterSets\/abc\` - For an
-- account-level filter set for the buyer account representing bidder 123:
-- \`bidders\/123\/accounts\/123\/filterSets\/abc\` - For an account-level
-- filter set for the child seat buyer account 456 whose bidder is 123:
-- \`bidders\/123\/accounts\/456\/filterSets\/abc\`
bafsdName :: Lens' BiddersAccountsFilterSetsDelete Text
bafsdName
  = lens _bafsdName (\ s a -> s{_bafsdName = a})

-- | JSONP
bafsdCallback :: Lens' BiddersAccountsFilterSetsDelete (Maybe Text)
bafsdCallback
  = lens _bafsdCallback
      (\ s a -> s{_bafsdCallback = a})

instance GoogleRequest
           BiddersAccountsFilterSetsDelete
         where
        type Rs BiddersAccountsFilterSetsDelete = Empty
        type Scopes BiddersAccountsFilterSetsDelete =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient BiddersAccountsFilterSetsDelete'{..}
          = go _bafsdName _bafsdXgafv _bafsdUploadProtocol
              _bafsdAccessToken
              _bafsdUploadType
              _bafsdCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy BiddersAccountsFilterSetsDeleteResource)
                      mempty
