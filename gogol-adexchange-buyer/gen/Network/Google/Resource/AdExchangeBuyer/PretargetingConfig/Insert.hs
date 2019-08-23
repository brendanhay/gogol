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
-- Module      : Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new pretargeting configuration.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.pretargetingConfig.insert@.
module Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Insert
    (
    -- * REST Resource
      PretargetingConfigInsertResource

    -- * Creating a Request
    , pretargetingConfigInsert
    , PretargetingConfigInsert

    -- * Request Lenses
    , pciPayload
    , pciAccountId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.pretargetingConfig.insert@ method which the
-- 'PretargetingConfigInsert' request conforms to.
type PretargetingConfigInsertResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "pretargetingconfigs" :>
           Capture "accountId" (Textual Int64) :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] PretargetingConfig :>
                 Post '[JSON] PretargetingConfig

-- | Inserts a new pretargeting configuration.
--
-- /See:/ 'pretargetingConfigInsert' smart constructor.
data PretargetingConfigInsert =
  PretargetingConfigInsert'
    { _pciPayload   :: !PretargetingConfig
    , _pciAccountId :: !(Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PretargetingConfigInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pciPayload'
--
-- * 'pciAccountId'
pretargetingConfigInsert
    :: PretargetingConfig -- ^ 'pciPayload'
    -> Int64 -- ^ 'pciAccountId'
    -> PretargetingConfigInsert
pretargetingConfigInsert pPciPayload_ pPciAccountId_ =
  PretargetingConfigInsert'
    {_pciPayload = pPciPayload_, _pciAccountId = _Coerce # pPciAccountId_}


-- | Multipart request metadata.
pciPayload :: Lens' PretargetingConfigInsert PretargetingConfig
pciPayload
  = lens _pciPayload (\ s a -> s{_pciPayload = a})

-- | The account id to insert the pretargeting config for.
pciAccountId :: Lens' PretargetingConfigInsert Int64
pciAccountId
  = lens _pciAccountId (\ s a -> s{_pciAccountId = a})
      . _Coerce

instance GoogleRequest PretargetingConfigInsert where
        type Rs PretargetingConfigInsert = PretargetingConfig
        type Scopes PretargetingConfigInsert =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient PretargetingConfigInsert'{..}
          = go _pciAccountId (Just AltJSON) _pciPayload
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy PretargetingConfigInsertResource)
                      mempty
