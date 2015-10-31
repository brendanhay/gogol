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
-- Module      : Network.Google.Method.OAuth2.GetCertForOpenIdConnect
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/accounts/docs/OAuth2 Google OAuth2 API Reference> for @oauth2.getCertForOpenIdConnect@.
module Network.Google.Method.OAuth2.GetCertForOpenIdConnect
    (
    -- * REST Resource
      GetCertForOpenIdConnectMethod

    -- * Creating a Request
    , getCertForOpenIdConnect
    , GetCertForOpenIdConnect

    ) where

import           Network.Google.OAuth2.Types
import           Network.Google.Prelude

-- | A resource alias for @oauth2.getCertForOpenIdConnect@ method which the
-- 'GetCertForOpenIdConnect' request conforms to.
type GetCertForOpenIdConnectMethod =
     "oauth2" :>
       "v2" :>
         "certs" :>
           QueryParam "alt" AltJSON :> Get '[JSON] JWK

--
-- /See:/ 'getCertForOpenIdConnect' smart constructor.
data GetCertForOpenIdConnect =
    GetCertForOpenIdConnect
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetCertForOpenIdConnect' with the minimum fields required to make a request.
--
getCertForOpenIdConnect
    :: GetCertForOpenIdConnect
getCertForOpenIdConnect = GetCertForOpenIdConnect

instance GoogleRequest GetCertForOpenIdConnect where
        type Rs GetCertForOpenIdConnect = JWK
        type Scopes GetCertForOpenIdConnect = '[]
        requestClient GetCertForOpenIdConnect{}
          = go (Just AltJSON) oAuth2Service
          where go
                  = buildClient
                      (Proxy :: Proxy GetCertForOpenIdConnectMethod)
                      mempty
