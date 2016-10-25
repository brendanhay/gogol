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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.GenerateSignupURL
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a sign-up URL.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.generateSignupUrl@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.GenerateSignupURL
    (
    -- * REST Resource
      EnterprisesGenerateSignupURLResource

    -- * Creating a Request
    , enterprisesGenerateSignupURL
    , EnterprisesGenerateSignupURL

    -- * Request Lenses
    , egsuCallbackURL
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.generateSignupUrl@ method which the
-- 'EnterprisesGenerateSignupURL' request conforms to.
type EnterprisesGenerateSignupURLResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           "signupUrl" :>
             QueryParam "callbackUrl" Text :>
               QueryParam "alt" AltJSON :> Post '[JSON] SignupInfo

-- | Generates a sign-up URL.
--
-- /See:/ 'enterprisesGenerateSignupURL' smart constructor.
newtype EnterprisesGenerateSignupURL = EnterprisesGenerateSignupURL'
    { _egsuCallbackURL :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesGenerateSignupURL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'egsuCallbackURL'
enterprisesGenerateSignupURL
    :: EnterprisesGenerateSignupURL
enterprisesGenerateSignupURL =
    EnterprisesGenerateSignupURL'
    { _egsuCallbackURL = Nothing
    }

-- | The callback URL to which the Admin will be redirected after
-- successfully creating an enterprise. Before redirecting there the system
-- will add a single query parameter to this URL named \"enterpriseToken\"
-- which will contain an opaque token to be used for the CompleteSignup
-- request. Beware that this means that the URL will be parsed, the
-- parameter added and then a new URL formatted, i.e. there may be some
-- minor formatting changes and, more importantly, the URL must be
-- well-formed so that it can be parsed.
egsuCallbackURL :: Lens' EnterprisesGenerateSignupURL (Maybe Text)
egsuCallbackURL
  = lens _egsuCallbackURL
      (\ s a -> s{_egsuCallbackURL = a})

instance GoogleRequest EnterprisesGenerateSignupURL
         where
        type Rs EnterprisesGenerateSignupURL = SignupInfo
        type Scopes EnterprisesGenerateSignupURL =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient EnterprisesGenerateSignupURL'{..}
          = go _egsuCallbackURL (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesGenerateSignupURLResource)
                      mempty
