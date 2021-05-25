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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates the specified filter set for the account with the given account
-- ID.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.accounts.filterSets.create@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.Create
    (
    -- * REST Resource
      BiddersAccountsFilterSetsCreateResource

    -- * Creating a Request
    , biddersAccountsFilterSetsCreate
    , BiddersAccountsFilterSetsCreate

    -- * Request Lenses
    , bafscXgafv
    , bafscUploadProtocol
    , bafscAccessToken
    , bafscUploadType
    , bafscOwnerName
    , bafscPayload
    , bafscIsTransient
    , bafscCallback
    ) where

import Network.Google.AdExchangeBuyer2.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.accounts.filterSets.create@ method which the
-- 'BiddersAccountsFilterSetsCreate' request conforms to.
type BiddersAccountsFilterSetsCreateResource =
     "v2beta1" :>
       Capture "ownerName" Text :>
         "filterSets" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "isTransient" Bool :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] FilterSet :> Post '[JSON] FilterSet

-- | Creates the specified filter set for the account with the given account
-- ID.
--
-- /See:/ 'biddersAccountsFilterSetsCreate' smart constructor.
data BiddersAccountsFilterSetsCreate =
  BiddersAccountsFilterSetsCreate'
    { _bafscXgafv :: !(Maybe Xgafv)
    , _bafscUploadProtocol :: !(Maybe Text)
    , _bafscAccessToken :: !(Maybe Text)
    , _bafscUploadType :: !(Maybe Text)
    , _bafscOwnerName :: !Text
    , _bafscPayload :: !FilterSet
    , _bafscIsTransient :: !(Maybe Bool)
    , _bafscCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BiddersAccountsFilterSetsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bafscXgafv'
--
-- * 'bafscUploadProtocol'
--
-- * 'bafscAccessToken'
--
-- * 'bafscUploadType'
--
-- * 'bafscOwnerName'
--
-- * 'bafscPayload'
--
-- * 'bafscIsTransient'
--
-- * 'bafscCallback'
biddersAccountsFilterSetsCreate
    :: Text -- ^ 'bafscOwnerName'
    -> FilterSet -- ^ 'bafscPayload'
    -> BiddersAccountsFilterSetsCreate
biddersAccountsFilterSetsCreate pBafscOwnerName_ pBafscPayload_ =
  BiddersAccountsFilterSetsCreate'
    { _bafscXgafv = Nothing
    , _bafscUploadProtocol = Nothing
    , _bafscAccessToken = Nothing
    , _bafscUploadType = Nothing
    , _bafscOwnerName = pBafscOwnerName_
    , _bafscPayload = pBafscPayload_
    , _bafscIsTransient = Nothing
    , _bafscCallback = Nothing
    }


-- | V1 error format.
bafscXgafv :: Lens' BiddersAccountsFilterSetsCreate (Maybe Xgafv)
bafscXgafv
  = lens _bafscXgafv (\ s a -> s{_bafscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bafscUploadProtocol :: Lens' BiddersAccountsFilterSetsCreate (Maybe Text)
bafscUploadProtocol
  = lens _bafscUploadProtocol
      (\ s a -> s{_bafscUploadProtocol = a})

-- | OAuth access token.
bafscAccessToken :: Lens' BiddersAccountsFilterSetsCreate (Maybe Text)
bafscAccessToken
  = lens _bafscAccessToken
      (\ s a -> s{_bafscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bafscUploadType :: Lens' BiddersAccountsFilterSetsCreate (Maybe Text)
bafscUploadType
  = lens _bafscUploadType
      (\ s a -> s{_bafscUploadType = a})

-- | Name of the owner (bidder or account) of the filter set to be created.
-- For example: - For a bidder-level filter set for bidder 123:
-- \`bidders\/123\` - For an account-level filter set for the buyer account
-- representing bidder 123: \`bidders\/123\/accounts\/123\` - For an
-- account-level filter set for the child seat buyer account 456 whose
-- bidder is 123: \`bidders\/123\/accounts\/456\`
bafscOwnerName :: Lens' BiddersAccountsFilterSetsCreate Text
bafscOwnerName
  = lens _bafscOwnerName
      (\ s a -> s{_bafscOwnerName = a})

-- | Multipart request metadata.
bafscPayload :: Lens' BiddersAccountsFilterSetsCreate FilterSet
bafscPayload
  = lens _bafscPayload (\ s a -> s{_bafscPayload = a})

-- | Whether the filter set is transient, or should be persisted
-- indefinitely. By default, filter sets are not transient. If transient,
-- it will be available for at least 1 hour after creation.
bafscIsTransient :: Lens' BiddersAccountsFilterSetsCreate (Maybe Bool)
bafscIsTransient
  = lens _bafscIsTransient
      (\ s a -> s{_bafscIsTransient = a})

-- | JSONP
bafscCallback :: Lens' BiddersAccountsFilterSetsCreate (Maybe Text)
bafscCallback
  = lens _bafscCallback
      (\ s a -> s{_bafscCallback = a})

instance GoogleRequest
           BiddersAccountsFilterSetsCreate
         where
        type Rs BiddersAccountsFilterSetsCreate = FilterSet
        type Scopes BiddersAccountsFilterSetsCreate =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient BiddersAccountsFilterSetsCreate'{..}
          = go _bafscOwnerName _bafscXgafv _bafscUploadProtocol
              _bafscAccessToken
              _bafscUploadType
              _bafscIsTransient
              _bafscCallback
              (Just AltJSON)
              _bafscPayload
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy BiddersAccountsFilterSetsCreateResource)
                      mempty
