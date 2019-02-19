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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the requested filter set for the account with the given
-- account ID.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.bidders.accounts.filterSets.get@.
module Network.Google.Resource.AdExchangeBuyer2.Bidders.Accounts.FilterSets.Get
    (
    -- * REST Resource
      BiddersAccountsFilterSetsGetResource

    -- * Creating a Request
    , biddersAccountsFilterSetsGet
    , BiddersAccountsFilterSetsGet

    -- * Request Lenses
    , bafsgXgafv
    , bafsgUploadProtocol
    , bafsgAccessToken
    , bafsgUploadType
    , bafsgName
    , bafsgCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.bidders.accounts.filterSets.get@ method which the
-- 'BiddersAccountsFilterSetsGet' request conforms to.
type BiddersAccountsFilterSetsGetResource =
     "v2beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] FilterSet

-- | Retrieves the requested filter set for the account with the given
-- account ID.
--
-- /See:/ 'biddersAccountsFilterSetsGet' smart constructor.
data BiddersAccountsFilterSetsGet =
  BiddersAccountsFilterSetsGet'
    { _bafsgXgafv          :: !(Maybe Xgafv)
    , _bafsgUploadProtocol :: !(Maybe Text)
    , _bafsgAccessToken    :: !(Maybe Text)
    , _bafsgUploadType     :: !(Maybe Text)
    , _bafsgName           :: !Text
    , _bafsgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BiddersAccountsFilterSetsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bafsgXgafv'
--
-- * 'bafsgUploadProtocol'
--
-- * 'bafsgAccessToken'
--
-- * 'bafsgUploadType'
--
-- * 'bafsgName'
--
-- * 'bafsgCallback'
biddersAccountsFilterSetsGet
    :: Text -- ^ 'bafsgName'
    -> BiddersAccountsFilterSetsGet
biddersAccountsFilterSetsGet pBafsgName_ =
  BiddersAccountsFilterSetsGet'
    { _bafsgXgafv = Nothing
    , _bafsgUploadProtocol = Nothing
    , _bafsgAccessToken = Nothing
    , _bafsgUploadType = Nothing
    , _bafsgName = pBafsgName_
    , _bafsgCallback = Nothing
    }


-- | V1 error format.
bafsgXgafv :: Lens' BiddersAccountsFilterSetsGet (Maybe Xgafv)
bafsgXgafv
  = lens _bafsgXgafv (\ s a -> s{_bafsgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bafsgUploadProtocol :: Lens' BiddersAccountsFilterSetsGet (Maybe Text)
bafsgUploadProtocol
  = lens _bafsgUploadProtocol
      (\ s a -> s{_bafsgUploadProtocol = a})

-- | OAuth access token.
bafsgAccessToken :: Lens' BiddersAccountsFilterSetsGet (Maybe Text)
bafsgAccessToken
  = lens _bafsgAccessToken
      (\ s a -> s{_bafsgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bafsgUploadType :: Lens' BiddersAccountsFilterSetsGet (Maybe Text)
bafsgUploadType
  = lens _bafsgUploadType
      (\ s a -> s{_bafsgUploadType = a})

-- | Full name of the resource being requested. For example: - For a
-- bidder-level filter set for bidder 123:
-- \`bidders\/123\/filterSets\/abc\` - For an account-level filter set for
-- the buyer account representing bidder 123:
-- \`bidders\/123\/accounts\/123\/filterSets\/abc\` - For an account-level
-- filter set for the child seat buyer account 456 whose bidder is 123:
-- \`bidders\/123\/accounts\/456\/filterSets\/abc\`
bafsgName :: Lens' BiddersAccountsFilterSetsGet Text
bafsgName
  = lens _bafsgName (\ s a -> s{_bafsgName = a})

-- | JSONP
bafsgCallback :: Lens' BiddersAccountsFilterSetsGet (Maybe Text)
bafsgCallback
  = lens _bafsgCallback
      (\ s a -> s{_bafsgCallback = a})

instance GoogleRequest BiddersAccountsFilterSetsGet
         where
        type Rs BiddersAccountsFilterSetsGet = FilterSet
        type Scopes BiddersAccountsFilterSetsGet =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient BiddersAccountsFilterSetsGet'{..}
          = go _bafsgName _bafsgXgafv _bafsgUploadProtocol
              _bafsgAccessToken
              _bafsgUploadType
              _bafsgCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy BiddersAccountsFilterSetsGetResource)
                      mempty
