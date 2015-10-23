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
-- Module      : Network.Google.Resource.Content.Accounts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the sub-accounts in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.accounts.list@.
module Network.Google.Resource.Content.Accounts.List
    (
    -- * REST Resource
      AccountsListResource

    -- * Creating a Request
    , accountsList
    , AccountsList

    -- * Request Lenses
    , alMerchantId
    , alPageToken
    , alMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.list@ method which the
-- 'AccountsList' request conforms to.
type AccountsListResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (JSONText Word64) :>
           "accounts" :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" (JSONText Word32) :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] AccountsListResponse

-- | Lists the sub-accounts in your Merchant Center account.
--
-- /See:/ 'accountsList' smart constructor.
data AccountsList = AccountsList
    { _alMerchantId :: !(JSONText Word64)
    , _alPageToken  :: !(Maybe Text)
    , _alMaxResults :: !(Maybe (JSONText Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alMerchantId'
--
-- * 'alPageToken'
--
-- * 'alMaxResults'
accountsList
    :: Word64 -- ^ 'alMerchantId'
    -> AccountsList
accountsList pAlMerchantId_ =
    AccountsList
    { _alMerchantId = pAlMerchantId_
    , _alPageToken = Nothing
    , _alMaxResults = Nothing
    }

-- | The ID of the managing account.
alMerchantId :: Lens' AccountsList Word64
alMerchantId
  = lens _alMerchantId (\ s a -> s{_alMerchantId = a})
      . _Coerce

-- | The token returned by the previous request.
alPageToken :: Lens' AccountsList (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | The maximum number of accounts to return in the response, used for
-- paging.
alMaxResults :: Lens' AccountsList (Maybe Word32)
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})
      . mapping _Coerce

instance GoogleRequest AccountsList where
        type Rs AccountsList = AccountsListResponse
        requestClient AccountsList{..}
          = go _alMerchantId _alPageToken _alMaxResults
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy AccountsListResource)
                      mempty
