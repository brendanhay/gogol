{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Spectrum.Paws.NotifySpectrumUse
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Notifies the database that the device has selected certain frequency
-- ranges for transmission. Only to be invoked when required by the
-- regulator. The Google Spectrum Database does not operate in domains that
-- require notification, so this always yields an UNIMPLEMENTED error.
--
-- /See:/ <http://developers.google.com/spectrum Google Spectrum Database API Reference> for @spectrum.paws.notifySpectrumUse@.
module Network.Google.API.Spectrum.Paws.NotifySpectrumUse
    (
    -- * REST Resource
      PawsNotifySpectrumUseAPI

    -- * Creating a Request
    , pawsNotifySpectrumUse'
    , PawsNotifySpectrumUse'

    -- * Request Lenses
    , pnsuQuotaUser
    , pnsuPrettyPrint
    , pnsuUserIp
    , pnsuKey
    , pnsuOauthToken
    , pnsuFields
    , pnsuAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Spectrum.Types

-- | A resource alias for spectrum.paws.notifySpectrumUse which the
-- 'PawsNotifySpectrumUse'' request conforms to.
type PawsNotifySpectrumUseAPI =
     "notifySpectrumUse" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :>
                     Post '[JSON] PawsNotifySpectrumUseResponse

-- | Notifies the database that the device has selected certain frequency
-- ranges for transmission. Only to be invoked when required by the
-- regulator. The Google Spectrum Database does not operate in domains that
-- require notification, so this always yields an UNIMPLEMENTED error.
--
-- /See:/ 'pawsNotifySpectrumUse'' smart constructor.
data PawsNotifySpectrumUse' = PawsNotifySpectrumUse'
    { _pnsuQuotaUser   :: !(Maybe Text)
    , _pnsuPrettyPrint :: !Bool
    , _pnsuUserIp      :: !(Maybe Text)
    , _pnsuKey         :: !(Maybe Text)
    , _pnsuOauthToken  :: !(Maybe Text)
    , _pnsuFields      :: !(Maybe Text)
    , _pnsuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsNotifySpectrumUse'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnsuQuotaUser'
--
-- * 'pnsuPrettyPrint'
--
-- * 'pnsuUserIp'
--
-- * 'pnsuKey'
--
-- * 'pnsuOauthToken'
--
-- * 'pnsuFields'
--
-- * 'pnsuAlt'
pawsNotifySpectrumUse'
    :: PawsNotifySpectrumUse'
pawsNotifySpectrumUse' =
    PawsNotifySpectrumUse'
    { _pnsuQuotaUser = Nothing
    , _pnsuPrettyPrint = True
    , _pnsuUserIp = Nothing
    , _pnsuKey = Nothing
    , _pnsuOauthToken = Nothing
    , _pnsuFields = Nothing
    , _pnsuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pnsuQuotaUser :: Lens' PawsNotifySpectrumUse' (Maybe Text)
pnsuQuotaUser
  = lens _pnsuQuotaUser
      (\ s a -> s{_pnsuQuotaUser = a})

-- | Returns response with indentations and line breaks.
pnsuPrettyPrint :: Lens' PawsNotifySpectrumUse' Bool
pnsuPrettyPrint
  = lens _pnsuPrettyPrint
      (\ s a -> s{_pnsuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pnsuUserIp :: Lens' PawsNotifySpectrumUse' (Maybe Text)
pnsuUserIp
  = lens _pnsuUserIp (\ s a -> s{_pnsuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pnsuKey :: Lens' PawsNotifySpectrumUse' (Maybe Text)
pnsuKey = lens _pnsuKey (\ s a -> s{_pnsuKey = a})

-- | OAuth 2.0 token for the current user.
pnsuOauthToken :: Lens' PawsNotifySpectrumUse' (Maybe Text)
pnsuOauthToken
  = lens _pnsuOauthToken
      (\ s a -> s{_pnsuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pnsuFields :: Lens' PawsNotifySpectrumUse' (Maybe Text)
pnsuFields
  = lens _pnsuFields (\ s a -> s{_pnsuFields = a})

-- | Data format for the response.
pnsuAlt :: Lens' PawsNotifySpectrumUse' Alt
pnsuAlt = lens _pnsuAlt (\ s a -> s{_pnsuAlt = a})

instance GoogleRequest PawsNotifySpectrumUse' where
        type Rs PawsNotifySpectrumUse' =
             PawsNotifySpectrumUseResponse
        request = requestWithRoute defReq spectrumURL
        requestWithRoute r u PawsNotifySpectrumUse'{..}
          = go _pnsuQuotaUser (Just _pnsuPrettyPrint)
              _pnsuUserIp
              _pnsuKey
              _pnsuOauthToken
              _pnsuFields
              (Just _pnsuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PawsNotifySpectrumUseAPI)
                      r
                      u
