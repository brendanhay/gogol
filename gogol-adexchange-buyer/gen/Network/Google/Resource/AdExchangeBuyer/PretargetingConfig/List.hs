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
-- Module      : Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of the authenticated user\'s pretargeting
-- configurations.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.pretargetingConfig.list@.
module Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.List
    (
    -- * REST Resource
      PretargetingConfigListResource

    -- * Creating a Request
    , pretargetingConfigList'
    , PretargetingConfigList'

    -- * Request Lenses
    , pclAccountId
    ) where

import Network.Google.AdExchangeBuyer.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.pretargetingConfig.list@ method which the
-- 'PretargetingConfigList'' request conforms to.
type PretargetingConfigListResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "pretargetingconfigs" :>
           Capture "accountId" (Textual Int64) :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] PretargetingConfigList

-- | Retrieves a list of the authenticated user\'s pretargeting
-- configurations.
--
-- /See:/ 'pretargetingConfigList'' smart constructor.
newtype PretargetingConfigList' =
  PretargetingConfigList''
    { _pclAccountId :: Textual Int64
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PretargetingConfigList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pclAccountId'
pretargetingConfigList'
    :: Int64 -- ^ 'pclAccountId'
    -> PretargetingConfigList'
pretargetingConfigList' pPclAccountId_ =
  PretargetingConfigList'' {_pclAccountId = _Coerce # pPclAccountId_}


-- | The account id to get the pretargeting configs for.
pclAccountId :: Lens' PretargetingConfigList' Int64
pclAccountId
  = lens _pclAccountId (\ s a -> s{_pclAccountId = a})
      . _Coerce

instance GoogleRequest PretargetingConfigList' where
        type Rs PretargetingConfigList' =
             PretargetingConfigList
        type Scopes PretargetingConfigList' =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient PretargetingConfigList''{..}
          = go _pclAccountId (Just AltJSON)
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy PretargetingConfigListResource)
                      mempty
