{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Spectrum.Paws.Init
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Initializes the connection between a white space device and the
-- database.
--
-- /See:/ <http://developers.google.com/spectrum Google Spectrum Database API Reference> for @SpectrumPawsInit@.
module Network.Google.Resource.Spectrum.Paws.Init
    (
    -- * REST Resource
      PawsInitResource

    -- * Creating a Request
    , pawsInit'
    , PawsInit'

    -- * Request Lenses
    , piQuotaUser
    , piPrettyPrint
    , piUserIP
    , piPayload
    , piKey
    , piOAuthToken
    , piFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Spectrum.Types

-- | A resource alias for @SpectrumPawsInit@ which the
-- 'PawsInit'' request conforms to.
type PawsInitResource =
     "init" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[OctetStream] PawsInitRequest :>
                       Post '[JSON] PawsInitResponse

-- | Initializes the connection between a white space device and the
-- database.
--
-- /See:/ 'pawsInit'' smart constructor.
data PawsInit' = PawsInit'
    { _piQuotaUser   :: !(Maybe Text)
    , _piPrettyPrint :: !Bool
    , _piUserIP      :: !(Maybe Text)
    , _piPayload     :: !PawsInitRequest
    , _piKey         :: !(Maybe Key)
    , _piOAuthToken  :: !(Maybe OAuthToken)
    , _piFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsInit'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piQuotaUser'
--
-- * 'piPrettyPrint'
--
-- * 'piUserIP'
--
-- * 'piPayload'
--
-- * 'piKey'
--
-- * 'piOAuthToken'
--
-- * 'piFields'
pawsInit'
    :: PawsInitRequest -- ^ 'payload'
    -> PawsInit'
pawsInit' pPiPayload_ =
    PawsInit'
    { _piQuotaUser = Nothing
    , _piPrettyPrint = True
    , _piUserIP = Nothing
    , _piPayload = pPiPayload_
    , _piKey = Nothing
    , _piOAuthToken = Nothing
    , _piFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
piQuotaUser :: Lens' PawsInit' (Maybe Text)
piQuotaUser
  = lens _piQuotaUser (\ s a -> s{_piQuotaUser = a})

-- | Returns response with indentations and line breaks.
piPrettyPrint :: Lens' PawsInit' Bool
piPrettyPrint
  = lens _piPrettyPrint
      (\ s a -> s{_piPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
piUserIP :: Lens' PawsInit' (Maybe Text)
piUserIP = lens _piUserIP (\ s a -> s{_piUserIP = a})

-- | Multipart request metadata.
piPayload :: Lens' PawsInit' PawsInitRequest
piPayload
  = lens _piPayload (\ s a -> s{_piPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
piKey :: Lens' PawsInit' (Maybe Key)
piKey = lens _piKey (\ s a -> s{_piKey = a})

-- | OAuth 2.0 token for the current user.
piOAuthToken :: Lens' PawsInit' (Maybe OAuthToken)
piOAuthToken
  = lens _piOAuthToken (\ s a -> s{_piOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
piFields :: Lens' PawsInit' (Maybe Text)
piFields = lens _piFields (\ s a -> s{_piFields = a})

instance GoogleAuth PawsInit' where
        authKey = piKey . _Just
        authToken = piOAuthToken . _Just

instance GoogleRequest PawsInit' where
        type Rs PawsInit' = PawsInitResponse
        request = requestWithRoute defReq spectrumURL
        requestWithRoute r u PawsInit'{..}
          = go _piQuotaUser (Just _piPrettyPrint) _piUserIP
              _piFields
              _piKey
              _piOAuthToken
              (Just AltJSON)
              _piPayload
          where go
                  = clientWithRoute (Proxy :: Proxy PawsInitResource) r
                      u
