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
-- Module      : Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing pretargeting config. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.pretargetingConfig.patch@.
module Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Patch
    (
    -- * REST Resource
      PretargetingConfigPatchResource

    -- * Creating a Request
    , pretargetingConfigPatch
    , PretargetingConfigPatch

    -- * Request Lenses
    , pcpPayload
    , pcpAccountId
    , pcpConfigId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.pretargetingConfig.patch@ method which the
-- 'PretargetingConfigPatch' request conforms to.
type PretargetingConfigPatchResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "pretargetingconfigs" :>
           Capture "accountId" Int64 :>
             Capture "configId" Int64 :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] PretargetingConfig :>
                   Patch '[JSON] PretargetingConfig

-- | Updates an existing pretargeting config. This method supports patch
-- semantics.
--
-- /See:/ 'pretargetingConfigPatch' smart constructor.
data PretargetingConfigPatch = PretargetingConfigPatch
    { _pcpPayload   :: !PretargetingConfig
    , _pcpAccountId :: !Int64
    , _pcpConfigId  :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PretargetingConfigPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcpPayload'
--
-- * 'pcpAccountId'
--
-- * 'pcpConfigId'
pretargetingConfigPatch
    :: PretargetingConfig -- ^ 'pcpPayload'
    -> Int64 -- ^ 'pcpAccountId'
    -> Int64 -- ^ 'pcpConfigId'
    -> PretargetingConfigPatch
pretargetingConfigPatch pPcpPayload_ pPcpAccountId_ pPcpConfigId_ =
    PretargetingConfigPatch
    { _pcpPayload = pPcpPayload_
    , _pcpAccountId = pPcpAccountId_
    , _pcpConfigId = pPcpConfigId_
    }

-- | Multipart request metadata.
pcpPayload :: Lens' PretargetingConfigPatch PretargetingConfig
pcpPayload
  = lens _pcpPayload (\ s a -> s{_pcpPayload = a})

-- | The account id to update the pretargeting config for.
pcpAccountId :: Lens' PretargetingConfigPatch Int64
pcpAccountId
  = lens _pcpAccountId (\ s a -> s{_pcpAccountId = a})

-- | The specific id of the configuration to update.
pcpConfigId :: Lens' PretargetingConfigPatch Int64
pcpConfigId
  = lens _pcpConfigId (\ s a -> s{_pcpConfigId = a})

instance GoogleRequest PretargetingConfigPatch where
        type Rs PretargetingConfigPatch = PretargetingConfig
        requestClient PretargetingConfigPatch{..}
          = go _pcpAccountId _pcpConfigId (Just AltJSON)
              _pcpPayload
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy PretargetingConfigPatchResource)
                      mempty
