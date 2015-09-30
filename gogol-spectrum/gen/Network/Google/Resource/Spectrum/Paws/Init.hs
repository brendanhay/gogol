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
    , piUserIp
    , piKey
    , piOauthToken
    , piFields
    , piAlt
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
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :> Post '[JSON] PawsInitResponse

-- | Initializes the connection between a white space device and the
-- database.
--
-- /See:/ 'pawsInit'' smart constructor.
data PawsInit' = PawsInit'
    { _piQuotaUser   :: !(Maybe Text)
    , _piPrettyPrint :: !Bool
    , _piUserIp      :: !(Maybe Text)
    , _piKey         :: !(Maybe Text)
    , _piOauthToken  :: !(Maybe Text)
    , _piFields      :: !(Maybe Text)
    , _piAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsInit'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piQuotaUser'
--
-- * 'piPrettyPrint'
--
-- * 'piUserIp'
--
-- * 'piKey'
--
-- * 'piOauthToken'
--
-- * 'piFields'
--
-- * 'piAlt'
pawsInit'
    :: PawsInit'
pawsInit' =
    PawsInit'
    { _piQuotaUser = Nothing
    , _piPrettyPrint = True
    , _piUserIp = Nothing
    , _piKey = Nothing
    , _piOauthToken = Nothing
    , _piFields = Nothing
    , _piAlt = JSON
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
piUserIp :: Lens' PawsInit' (Maybe Text)
piUserIp = lens _piUserIp (\ s a -> s{_piUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
piKey :: Lens' PawsInit' (Maybe Text)
piKey = lens _piKey (\ s a -> s{_piKey = a})

-- | OAuth 2.0 token for the current user.
piOauthToken :: Lens' PawsInit' (Maybe Text)
piOauthToken
  = lens _piOauthToken (\ s a -> s{_piOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
piFields :: Lens' PawsInit' (Maybe Text)
piFields = lens _piFields (\ s a -> s{_piFields = a})

-- | Data format for the response.
piAlt :: Lens' PawsInit' Alt
piAlt = lens _piAlt (\ s a -> s{_piAlt = a})

instance GoogleRequest PawsInit' where
        type Rs PawsInit' = PawsInitResponse
        request = requestWithRoute defReq spectrumURL
        requestWithRoute r u PawsInit'{..}
          = go _piQuotaUser (Just _piPrettyPrint) _piUserIp
              _piKey
              _piOauthToken
              _piFields
              (Just _piAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy PawsInitResource) r
                      u
