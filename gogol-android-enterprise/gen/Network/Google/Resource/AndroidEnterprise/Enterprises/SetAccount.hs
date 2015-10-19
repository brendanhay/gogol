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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.SetAccount
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Set the account that will be used to authenticate to the API as the
-- enterprise.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.enterprises.setAccount@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.SetAccount
    (
    -- * REST Resource
      EnterprisesSetAccountResource

    -- * Creating a Request
    , enterprisesSetAccount'
    , EnterprisesSetAccount'

    -- * Request Lenses
    , esaEnterpriseId
    , esaPayload
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.setAccount@ method which the
-- 'EnterprisesSetAccount'' request conforms to.
type EnterprisesSetAccountResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "account" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] EnterpriseAccount :>
               Put '[JSON] EnterpriseAccount

-- | Set the account that will be used to authenticate to the API as the
-- enterprise.
--
-- /See:/ 'enterprisesSetAccount'' smart constructor.
data EnterprisesSetAccount' = EnterprisesSetAccount'
    { _esaEnterpriseId :: !Text
    , _esaPayload      :: !EnterpriseAccount
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesSetAccount'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esaEnterpriseId'
--
-- * 'esaPayload'
enterprisesSetAccount'
    :: Text -- ^ 'esaEnterpriseId'
    -> EnterpriseAccount -- ^ 'esaPayload'
    -> EnterprisesSetAccount'
enterprisesSetAccount' pEsaEnterpriseId_ pEsaPayload_ =
    EnterprisesSetAccount'
    { _esaEnterpriseId = pEsaEnterpriseId_
    , _esaPayload = pEsaPayload_
    }

-- | The ID of the enterprise.
esaEnterpriseId :: Lens' EnterprisesSetAccount' Text
esaEnterpriseId
  = lens _esaEnterpriseId
      (\ s a -> s{_esaEnterpriseId = a})

-- | Multipart request metadata.
esaPayload :: Lens' EnterprisesSetAccount' EnterpriseAccount
esaPayload
  = lens _esaPayload (\ s a -> s{_esaPayload = a})

instance GoogleRequest EnterprisesSetAccount' where
        type Rs EnterprisesSetAccount' = EnterpriseAccount
        requestClient EnterprisesSetAccount'{..}
          = go _esaEnterpriseId (Just AltJSON) _esaPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesSetAccountResource)
                      mempty
