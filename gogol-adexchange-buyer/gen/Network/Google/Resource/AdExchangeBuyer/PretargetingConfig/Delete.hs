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
-- Module      : Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing pretargeting config.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.pretargetingConfig.delete@.
module Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Delete
    (
    -- * REST Resource
      PretargetingConfigDeleteResource

    -- * Creating a Request
    , pretargetingConfigDelete
    , PretargetingConfigDelete

    -- * Request Lenses
    , pcdAccountId
    , pcdConfigId
    ) where

import Network.Google.AdExchangeBuyer.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.pretargetingConfig.delete@ method which the
-- 'PretargetingConfigDelete' request conforms to.
type PretargetingConfigDeleteResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "pretargetingconfigs" :>
           Capture "accountId" (Textual Int64) :>
             Capture "configId" (Textual Int64) :>
               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing pretargeting config.
--
-- /See:/ 'pretargetingConfigDelete' smart constructor.
data PretargetingConfigDelete =
  PretargetingConfigDelete'
    { _pcdAccountId :: !(Textual Int64)
    , _pcdConfigId :: !(Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PretargetingConfigDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcdAccountId'
--
-- * 'pcdConfigId'
pretargetingConfigDelete
    :: Int64 -- ^ 'pcdAccountId'
    -> Int64 -- ^ 'pcdConfigId'
    -> PretargetingConfigDelete
pretargetingConfigDelete pPcdAccountId_ pPcdConfigId_ =
  PretargetingConfigDelete'
    { _pcdAccountId = _Coerce # pPcdAccountId_
    , _pcdConfigId = _Coerce # pPcdConfigId_
    }


-- | The account id to delete the pretargeting config for.
pcdAccountId :: Lens' PretargetingConfigDelete Int64
pcdAccountId
  = lens _pcdAccountId (\ s a -> s{_pcdAccountId = a})
      . _Coerce

-- | The specific id of the configuration to delete.
pcdConfigId :: Lens' PretargetingConfigDelete Int64
pcdConfigId
  = lens _pcdConfigId (\ s a -> s{_pcdConfigId = a}) .
      _Coerce

instance GoogleRequest PretargetingConfigDelete where
        type Rs PretargetingConfigDelete = ()
        type Scopes PretargetingConfigDelete =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient PretargetingConfigDelete'{..}
          = go _pcdAccountId _pcdConfigId (Just AltJSON)
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy PretargetingConfigDeleteResource)
                      mempty
