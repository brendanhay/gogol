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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.CompleteSignup
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Completes the signup flow, by specifying the Completion token and
-- Enterprise token. This request must not be called multiple times for a
-- given Enterprise Token.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.completeSignup@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.CompleteSignup
    (
    -- * REST Resource
      EnterprisesCompleteSignupResource

    -- * Creating a Request
    , enterprisesCompleteSignup
    , EnterprisesCompleteSignup

    -- * Request Lenses
    , ecsCompletionToken
    , ecsEnterpriseToken
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.completeSignup@ method which the
-- 'EnterprisesCompleteSignup' request conforms to.
type EnterprisesCompleteSignupResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           "completeSignup" :>
             QueryParam "completionToken" Text :>
               QueryParam "enterpriseToken" Text :>
                 QueryParam "alt" AltJSON :> Post '[JSON] Enterprise

-- | Completes the signup flow, by specifying the Completion token and
-- Enterprise token. This request must not be called multiple times for a
-- given Enterprise Token.
--
-- /See:/ 'enterprisesCompleteSignup' smart constructor.
data EnterprisesCompleteSignup =
  EnterprisesCompleteSignup'
    { _ecsCompletionToken :: !(Maybe Text)
    , _ecsEnterpriseToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'EnterprisesCompleteSignup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecsCompletionToken'
--
-- * 'ecsEnterpriseToken'
enterprisesCompleteSignup
    :: EnterprisesCompleteSignup
enterprisesCompleteSignup =
  EnterprisesCompleteSignup'
    {_ecsCompletionToken = Nothing, _ecsEnterpriseToken = Nothing}

-- | The Completion token initially returned by GenerateSignupUrl.
ecsCompletionToken :: Lens' EnterprisesCompleteSignup (Maybe Text)
ecsCompletionToken
  = lens _ecsCompletionToken
      (\ s a -> s{_ecsCompletionToken = a})

-- | The Enterprise token appended to the Callback URL.
ecsEnterpriseToken :: Lens' EnterprisesCompleteSignup (Maybe Text)
ecsEnterpriseToken
  = lens _ecsEnterpriseToken
      (\ s a -> s{_ecsEnterpriseToken = a})

instance GoogleRequest EnterprisesCompleteSignup
         where
        type Rs EnterprisesCompleteSignup = Enterprise
        type Scopes EnterprisesCompleteSignup =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient EnterprisesCompleteSignup'{..}
          = go _ecsCompletionToken _ecsEnterpriseToken
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesCompleteSignupResource)
                      mempty
