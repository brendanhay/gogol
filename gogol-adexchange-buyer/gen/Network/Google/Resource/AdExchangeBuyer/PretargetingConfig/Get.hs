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
-- Module      : Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a specific pretargeting configuration
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.pretargetingConfig.get@.
module Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Get
    (
    -- * REST Resource
      PretargetingConfigGetResource

    -- * Creating a Request
    , pretargetingConfigGet
    , PretargetingConfigGet

    -- * Request Lenses
    , pcgAccountId
    , pcgConfigId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.pretargetingConfig.get@ method which the
-- 'PretargetingConfigGet' request conforms to.
type PretargetingConfigGetResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "pretargetingconfigs" :>
           Capture "accountId" (Textual Int64) :>
             Capture "configId" (Textual Int64) :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] PretargetingConfig

-- | Gets a specific pretargeting configuration
--
-- /See:/ 'pretargetingConfigGet' smart constructor.
data PretargetingConfigGet = PretargetingConfigGet
    { _pcgAccountId :: !(Textual Int64)
    , _pcgConfigId  :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PretargetingConfigGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcgAccountId'
--
-- * 'pcgConfigId'
pretargetingConfigGet
    :: Int64 -- ^ 'pcgAccountId'
    -> Int64 -- ^ 'pcgConfigId'
    -> PretargetingConfigGet
pretargetingConfigGet pPcgAccountId_ pPcgConfigId_ =
    PretargetingConfigGet
    { _pcgAccountId = _Coerce # pPcgAccountId_
    , _pcgConfigId = _Coerce # pPcgConfigId_
    }

-- | The account id to get the pretargeting config for.
pcgAccountId :: Lens' PretargetingConfigGet Int64
pcgAccountId
  = lens _pcgAccountId (\ s a -> s{_pcgAccountId = a})
      . _Coerce

-- | The specific id of the configuration to retrieve.
pcgConfigId :: Lens' PretargetingConfigGet Int64
pcgConfigId
  = lens _pcgConfigId (\ s a -> s{_pcgConfigId = a}) .
      _Coerce

instance GoogleRequest PretargetingConfigGet where
        type Rs PretargetingConfigGet = PretargetingConfig
        requestClient PretargetingConfigGet{..}
          = go _pcgAccountId _pcgConfigId (Just AltJSON)
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy PretargetingConfigGetResource)
                      mempty
