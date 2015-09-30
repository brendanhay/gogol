{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Spectrum.Paws.Register
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | The Google Spectrum Database implements registration in the getSpectrum
-- method. As such this always returns an UNIMPLEMENTED error.
--
-- /See:/ <http://developers.google.com/spectrum Google Spectrum Database API Reference> for @SpectrumPawsRegister@.
module Spectrum.Paws.Register
    (
    -- * REST Resource
      PawsRegisterAPI

    -- * Creating a Request
    , pawsRegister
    , PawsRegister

    -- * Request Lenses
    , prQuotaUser
    , prPrettyPrint
    , prUserIp
    , prKey
    , prOauthToken
    , prFields
    , prAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Spectrum.Types

-- | A resource alias for @SpectrumPawsRegister@ which the
-- 'PawsRegister' request conforms to.
type PawsRegisterAPI =
     "register" :> Post '[JSON] PawsRegisterResponse

-- | The Google Spectrum Database implements registration in the getSpectrum
-- method. As such this always returns an UNIMPLEMENTED error.
--
-- /See:/ 'pawsRegister' smart constructor.
data PawsRegister = PawsRegister
    { _prQuotaUser   :: !(Maybe Text)
    , _prPrettyPrint :: !Bool
    , _prUserIp      :: !(Maybe Text)
    , _prKey         :: !(Maybe Text)
    , _prOauthToken  :: !(Maybe Text)
    , _prFields      :: !(Maybe Text)
    , _prAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsRegister'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prQuotaUser'
--
-- * 'prPrettyPrint'
--
-- * 'prUserIp'
--
-- * 'prKey'
--
-- * 'prOauthToken'
--
-- * 'prFields'
--
-- * 'prAlt'
pawsRegister
    :: PawsRegister
pawsRegister =
    PawsRegister
    { _prQuotaUser = Nothing
    , _prPrettyPrint = True
    , _prUserIp = Nothing
    , _prKey = Nothing
    , _prOauthToken = Nothing
    , _prFields = Nothing
    , _prAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
prQuotaUser :: Lens' PawsRegister' (Maybe Text)
prQuotaUser
  = lens _prQuotaUser (\ s a -> s{_prQuotaUser = a})

-- | Returns response with indentations and line breaks.
prPrettyPrint :: Lens' PawsRegister' Bool
prPrettyPrint
  = lens _prPrettyPrint
      (\ s a -> s{_prPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
prUserIp :: Lens' PawsRegister' (Maybe Text)
prUserIp = lens _prUserIp (\ s a -> s{_prUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
prKey :: Lens' PawsRegister' (Maybe Text)
prKey = lens _prKey (\ s a -> s{_prKey = a})

-- | OAuth 2.0 token for the current user.
prOauthToken :: Lens' PawsRegister' (Maybe Text)
prOauthToken
  = lens _prOauthToken (\ s a -> s{_prOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
prFields :: Lens' PawsRegister' (Maybe Text)
prFields = lens _prFields (\ s a -> s{_prFields = a})

-- | Data format for the response.
prAlt :: Lens' PawsRegister' Text
prAlt = lens _prAlt (\ s a -> s{_prAlt = a})

instance GoogleRequest PawsRegister' where
        type Rs PawsRegister' = PawsRegisterResponse
        request = requestWithRoute defReq spectrumURL
        requestWithRoute r u PawsRegister{..}
          = go _prQuotaUser _prPrettyPrint _prUserIp _prKey
              _prOauthToken
              _prFields
              _prAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PawsRegisterAPI) r
                      u
