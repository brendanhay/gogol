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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an existing pretargeting config.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerPretargetingConfigDelete@.
module Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Delete
    (
    -- * REST Resource
      PretargetingConfigDeleteResource

    -- * Creating a Request
    , pretargetingConfigDelete'
    , PretargetingConfigDelete'

    -- * Request Lenses
    , pcdAccountId
    , pcdConfigId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerPretargetingConfigDelete@ method which the
-- 'PretargetingConfigDelete'' request conforms to.
type PretargetingConfigDeleteResource =
     "pretargetingconfigs" :>
       Capture "accountId" Int64 :>
         Capture "configId" Int64 :>
           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing pretargeting config.
--
-- /See:/ 'pretargetingConfigDelete'' smart constructor.
data PretargetingConfigDelete' = PretargetingConfigDelete'
    { _pcdAccountId :: !Int64
    , _pcdConfigId  :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PretargetingConfigDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcdAccountId'
--
-- * 'pcdConfigId'
pretargetingConfigDelete'
    :: Int64 -- ^ 'accountId'
    -> Int64 -- ^ 'configId'
    -> PretargetingConfigDelete'
pretargetingConfigDelete' pPcdAccountId_ pPcdConfigId_ =
    PretargetingConfigDelete'
    { _pcdAccountId = pPcdAccountId_
    , _pcdConfigId = pPcdConfigId_
    }

-- | The account id to delete the pretargeting config for.
pcdAccountId :: Lens' PretargetingConfigDelete' Int64
pcdAccountId
  = lens _pcdAccountId (\ s a -> s{_pcdAccountId = a})

-- | The specific id of the configuration to delete.
pcdConfigId :: Lens' PretargetingConfigDelete' Int64
pcdConfigId
  = lens _pcdConfigId (\ s a -> s{_pcdConfigId = a})

instance GoogleRequest PretargetingConfigDelete'
         where
        type Rs PretargetingConfigDelete' = ()
        requestClient PretargetingConfigDelete'{..}
          = go _pcdAccountId _pcdConfigId (Just AltJSON)
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy PretargetingConfigDeleteResource)
                      mempty
