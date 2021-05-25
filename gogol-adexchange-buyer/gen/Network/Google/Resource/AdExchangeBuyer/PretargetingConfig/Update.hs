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
-- Module      : Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing pretargeting config.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.pretargetingConfig.update@.
module Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Update
    (
    -- * REST Resource
      PretargetingConfigUpdateResource

    -- * Creating a Request
    , pretargetingConfigUpdate
    , PretargetingConfigUpdate

    -- * Request Lenses
    , pcuPayload
    , pcuAccountId
    , pcuConfigId
    ) where

import Network.Google.AdExchangeBuyer.Types
import Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.pretargetingConfig.update@ method which the
-- 'PretargetingConfigUpdate' request conforms to.
type PretargetingConfigUpdateResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "pretargetingconfigs" :>
           Capture "accountId" (Textual Int64) :>
             Capture "configId" (Textual Int64) :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] PretargetingConfig :>
                   Put '[JSON] PretargetingConfig

-- | Updates an existing pretargeting config.
--
-- /See:/ 'pretargetingConfigUpdate' smart constructor.
data PretargetingConfigUpdate =
  PretargetingConfigUpdate'
    { _pcuPayload :: !PretargetingConfig
    , _pcuAccountId :: !(Textual Int64)
    , _pcuConfigId :: !(Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PretargetingConfigUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcuPayload'
--
-- * 'pcuAccountId'
--
-- * 'pcuConfigId'
pretargetingConfigUpdate
    :: PretargetingConfig -- ^ 'pcuPayload'
    -> Int64 -- ^ 'pcuAccountId'
    -> Int64 -- ^ 'pcuConfigId'
    -> PretargetingConfigUpdate
pretargetingConfigUpdate pPcuPayload_ pPcuAccountId_ pPcuConfigId_ =
  PretargetingConfigUpdate'
    { _pcuPayload = pPcuPayload_
    , _pcuAccountId = _Coerce # pPcuAccountId_
    , _pcuConfigId = _Coerce # pPcuConfigId_
    }


-- | Multipart request metadata.
pcuPayload :: Lens' PretargetingConfigUpdate PretargetingConfig
pcuPayload
  = lens _pcuPayload (\ s a -> s{_pcuPayload = a})

-- | The account id to update the pretargeting config for.
pcuAccountId :: Lens' PretargetingConfigUpdate Int64
pcuAccountId
  = lens _pcuAccountId (\ s a -> s{_pcuAccountId = a})
      . _Coerce

-- | The specific id of the configuration to update.
pcuConfigId :: Lens' PretargetingConfigUpdate Int64
pcuConfigId
  = lens _pcuConfigId (\ s a -> s{_pcuConfigId = a}) .
      _Coerce

instance GoogleRequest PretargetingConfigUpdate where
        type Rs PretargetingConfigUpdate = PretargetingConfig
        type Scopes PretargetingConfigUpdate =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient PretargetingConfigUpdate'{..}
          = go _pcuAccountId _pcuConfigId (Just AltJSON)
              _pcuPayload
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy PretargetingConfigUpdateResource)
                      mempty
