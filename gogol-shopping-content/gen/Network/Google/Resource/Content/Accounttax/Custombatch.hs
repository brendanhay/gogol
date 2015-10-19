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
-- Copyright   : (c) 2015 Brendan Hay
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
    , accounttaxCustombatch'
    , AccounttaxCustombatch'

    -- * Request Lenses
    , acPayload
    , acDryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounttax.custombatch@ method which the
-- 'AccounttaxCustombatch'' request conforms to.
type AccounttaxCustombatchResource =
     "accounttax" :>
       "batch" :>
         QueryParam "dryRun" Bool :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] AccounttaxCustomBatchRequest :>
               Post '[JSON] AccounttaxCustomBatchResponse

-- | Retrieves and updates tax settings of multiple accounts in a single
-- request.
--
-- /See:/ 'accounttaxCustombatch'' smart constructor.
data AccounttaxCustombatch' = AccounttaxCustombatch'
    { _acPayload :: !AccounttaxCustomBatchRequest
    , _acDryRun  :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccounttaxCustombatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acPayload'
--
-- * 'acDryRun'
accounttaxCustombatch'
    :: AccounttaxCustomBatchRequest -- ^ 'acPayload'
    -> AccounttaxCustombatch'
accounttaxCustombatch' pAcPayload_ =
    AccounttaxCustombatch'
    { _acPayload = pAcPayload_
    , _acDryRun = Nothing
    }

-- | Multipart request metadata.
acPayload :: Lens' AccounttaxCustombatch' AccounttaxCustomBatchRequest
acPayload
  = lens _acPayload (\ s a -> s{_acPayload = a})

-- | Flag to run the request in dry-run mode.
acDryRun :: Lens' AccounttaxCustombatch' (Maybe Bool)
acDryRun = lens _acDryRun (\ s a -> s{_acDryRun = a})

instance GoogleRequest AccounttaxCustombatch' where
        type Rs AccounttaxCustombatch' =
             AccounttaxCustomBatchResponse
        requestClient AccounttaxCustombatch'{..}
          = go _acDryRun (Just AltJSON) _acPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccounttaxCustombatchResource)
                      mempty
