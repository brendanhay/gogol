{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.Spectrum.Paws.Register
    (
    -- * REST Resource
      PawsRegisterResource

    -- * Creating a Request
    , pawsRegister'
    , PawsRegister'

    -- * Request Lenses
    , prQuotaUser
    , prPrettyPrint
    , prUserIP
    , prKey
    , prPawsRegisterRequest
    , prOAuthToken
    , prFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Spectrum.Types

-- | A resource alias for @SpectrumPawsRegister@ which the
-- 'PawsRegister'' request conforms to.
type PawsRegisterResource =
     "register" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] PawsRegisterRequest :>
                       Post '[JSON] PawsRegisterResponse

-- | The Google Spectrum Database implements registration in the getSpectrum
-- method. As such this always returns an UNIMPLEMENTED error.
--
-- /See:/ 'pawsRegister'' smart constructor.
data PawsRegister' = PawsRegister'
    { _prQuotaUser           :: !(Maybe Text)
    , _prPrettyPrint         :: !Bool
    , _prUserIP              :: !(Maybe Text)
    , _prKey                 :: !(Maybe Key)
    , _prPawsRegisterRequest :: !PawsRegisterRequest
    , _prOAuthToken          :: !(Maybe OAuthToken)
    , _prFields              :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsRegister'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prQuotaUser'
--
-- * 'prPrettyPrint'
--
-- * 'prUserIP'
--
-- * 'prKey'
--
-- * 'prPawsRegisterRequest'
--
-- * 'prOAuthToken'
--
-- * 'prFields'
pawsRegister'
    :: PawsRegisterRequest -- ^ 'PawsRegisterRequest'
    -> PawsRegister'
pawsRegister' pPrPawsRegisterRequest_ =
    PawsRegister'
    { _prQuotaUser = Nothing
    , _prPrettyPrint = True
    , _prUserIP = Nothing
    , _prKey = Nothing
    , _prPawsRegisterRequest = pPrPawsRegisterRequest_
    , _prOAuthToken = Nothing
    , _prFields = Nothing
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
prUserIP :: Lens' PawsRegister' (Maybe Text)
prUserIP = lens _prUserIP (\ s a -> s{_prUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
prKey :: Lens' PawsRegister' (Maybe Key)
prKey = lens _prKey (\ s a -> s{_prKey = a})

-- | Multipart request metadata.
prPawsRegisterRequest :: Lens' PawsRegister' PawsRegisterRequest
prPawsRegisterRequest
  = lens _prPawsRegisterRequest
      (\ s a -> s{_prPawsRegisterRequest = a})

-- | OAuth 2.0 token for the current user.
prOAuthToken :: Lens' PawsRegister' (Maybe OAuthToken)
prOAuthToken
  = lens _prOAuthToken (\ s a -> s{_prOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
prFields :: Lens' PawsRegister' (Maybe Text)
prFields = lens _prFields (\ s a -> s{_prFields = a})

instance GoogleAuth PawsRegister' where
        authKey = prKey . _Just
        authToken = prOAuthToken . _Just

instance GoogleRequest PawsRegister' where
        type Rs PawsRegister' = PawsRegisterResponse
        request = requestWithRoute defReq spectrumURL
        requestWithRoute r u PawsRegister'{..}
          = go _prQuotaUser (Just _prPrettyPrint) _prUserIP
              _prFields
              _prKey
              _prOAuthToken
              (Just AltJSON)
              _prPawsRegisterRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PawsRegisterResource)
                      r
                      u
