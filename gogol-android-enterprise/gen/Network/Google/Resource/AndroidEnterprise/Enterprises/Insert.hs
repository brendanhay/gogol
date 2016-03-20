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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Establishes the binding between the EMM and an enterprise. This is now
-- deprecated; use enroll instead.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.insert@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.Insert
    (
    -- * REST Resource
      EnterprisesInsertResource

    -- * Creating a Request
    , enterprisesInsert
    , EnterprisesInsert

    -- * Request Lenses
    , eiToken
    , eiPayload
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.insert@ method which the
-- 'EnterprisesInsert' request conforms to.
type EnterprisesInsertResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           QueryParam "token" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Enterprise :> Post '[JSON] Enterprise

-- | Establishes the binding between the EMM and an enterprise. This is now
-- deprecated; use enroll instead.
--
-- /See:/ 'enterprisesInsert' smart constructor.
data EnterprisesInsert = EnterprisesInsert
    { _eiToken   :: !Text
    , _eiPayload :: !Enterprise
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiToken'
--
-- * 'eiPayload'
enterprisesInsert
    :: Text -- ^ 'eiToken'
    -> Enterprise -- ^ 'eiPayload'
    -> EnterprisesInsert
enterprisesInsert pEiToken_ pEiPayload_ =
    EnterprisesInsert
    { _eiToken = pEiToken_
    , _eiPayload = pEiPayload_
    }

-- | The token provided by the enterprise to register the EMM.
eiToken :: Lens' EnterprisesInsert Text
eiToken = lens _eiToken (\ s a -> s{_eiToken = a})

-- | Multipart request metadata.
eiPayload :: Lens' EnterprisesInsert Enterprise
eiPayload
  = lens _eiPayload (\ s a -> s{_eiPayload = a})

instance GoogleRequest EnterprisesInsert where
        type Rs EnterprisesInsert = Enterprise
        requestClient EnterprisesInsert{..}
          = go (Just _eiToken) (Just AltJSON) _eiPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesInsertResource)
                      mempty
