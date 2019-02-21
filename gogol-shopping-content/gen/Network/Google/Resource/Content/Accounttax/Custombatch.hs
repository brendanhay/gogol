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
-- Module      : Network.Google.Resource.Content.Accounttax.Custombatch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves and updates tax settings of multiple accounts in a single
-- request.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.accounttax.custombatch@.
module Network.Google.Resource.Content.Accounttax.Custombatch
    (
    -- * REST Resource
      AccounttaxCustombatchResource

    -- * Creating a Request
    , accounttaxCustombatch
    , AccounttaxCustombatch

    -- * Request Lenses
    , aaPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounttax.custombatch@ method which the
-- 'AccounttaxCustombatch' request conforms to.
type AccounttaxCustombatchResource =
     "content" :>
       "v2.1" :>
         "accounttax" :>
           "batch" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] AccounttaxCustomBatchRequest :>
                 Post '[JSON] AccounttaxCustomBatchResponse

-- | Retrieves and updates tax settings of multiple accounts in a single
-- request.
--
-- /See:/ 'accounttaxCustombatch' smart constructor.
newtype AccounttaxCustombatch =
  AccounttaxCustombatch'
    { _aaPayload :: AccounttaxCustomBatchRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccounttaxCustombatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaPayload'
accounttaxCustombatch
    :: AccounttaxCustomBatchRequest -- ^ 'aaPayload'
    -> AccounttaxCustombatch
accounttaxCustombatch pAaPayload_ =
  AccounttaxCustombatch' {_aaPayload = pAaPayload_}


-- | Multipart request metadata.
aaPayload :: Lens' AccounttaxCustombatch AccounttaxCustomBatchRequest
aaPayload
  = lens _aaPayload (\ s a -> s{_aaPayload = a})

instance GoogleRequest AccounttaxCustombatch where
        type Rs AccounttaxCustombatch =
             AccounttaxCustomBatchResponse
        type Scopes AccounttaxCustombatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccounttaxCustombatch'{..}
          = go (Just AltJSON) _aaPayload shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccounttaxCustombatchResource)
                      mempty
