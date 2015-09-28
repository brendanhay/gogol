{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Spectrum.Paws.GetSpectrum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Requests information about the available spectrum for a device at a
-- location. Requests from a fixed-mode device must include owner
-- information so the device can be registered with the database.
--
-- /See:/ <http://developers.google.com/spectrum Google Spectrum Database API Reference> for @spectrum.paws.getSpectrum@.
module Network.Google.API.Spectrum.Paws.GetSpectrum
    (
    -- * REST Resource
      PawsGetSpectrumAPI

    -- * Creating a Request
    , pawsGetSpectrum'
    , PawsGetSpectrum'

    -- * Request Lenses
    , pgsQuotaUser
    , pgsPrettyPrint
    , pgsUserIp
    , pgsKey
    , pgsOauthToken
    , pgsFields
    , pgsAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Spectrum.Types

-- | A resource alias for spectrum.paws.getSpectrum which the
-- 'PawsGetSpectrum'' request conforms to.
type PawsGetSpectrumAPI =
     "getSpectrum" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :>
                     Post '[JSON] PawsGetSpectrumResponse

-- | Requests information about the available spectrum for a device at a
-- location. Requests from a fixed-mode device must include owner
-- information so the device can be registered with the database.
--
-- /See:/ 'pawsGetSpectrum'' smart constructor.
data PawsGetSpectrum' = PawsGetSpectrum'
    { _pgsQuotaUser   :: !(Maybe Text)
    , _pgsPrettyPrint :: !Bool
    , _pgsUserIp      :: !(Maybe Text)
    , _pgsKey         :: !(Maybe Text)
    , _pgsOauthToken  :: !(Maybe Text)
    , _pgsFields      :: !(Maybe Text)
    , _pgsAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsGetSpectrum'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgsQuotaUser'
--
-- * 'pgsPrettyPrint'
--
-- * 'pgsUserIp'
--
-- * 'pgsKey'
--
-- * 'pgsOauthToken'
--
-- * 'pgsFields'
--
-- * 'pgsAlt'
pawsGetSpectrum'
    :: PawsGetSpectrum'
pawsGetSpectrum' =
    PawsGetSpectrum'
    { _pgsQuotaUser = Nothing
    , _pgsPrettyPrint = True
    , _pgsUserIp = Nothing
    , _pgsKey = Nothing
    , _pgsOauthToken = Nothing
    , _pgsFields = Nothing
    , _pgsAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pgsQuotaUser :: Lens' PawsGetSpectrum' (Maybe Text)
pgsQuotaUser
  = lens _pgsQuotaUser (\ s a -> s{_pgsQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgsPrettyPrint :: Lens' PawsGetSpectrum' Bool
pgsPrettyPrint
  = lens _pgsPrettyPrint
      (\ s a -> s{_pgsPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgsUserIp :: Lens' PawsGetSpectrum' (Maybe Text)
pgsUserIp
  = lens _pgsUserIp (\ s a -> s{_pgsUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgsKey :: Lens' PawsGetSpectrum' (Maybe Text)
pgsKey = lens _pgsKey (\ s a -> s{_pgsKey = a})

-- | OAuth 2.0 token for the current user.
pgsOauthToken :: Lens' PawsGetSpectrum' (Maybe Text)
pgsOauthToken
  = lens _pgsOauthToken
      (\ s a -> s{_pgsOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pgsFields :: Lens' PawsGetSpectrum' (Maybe Text)
pgsFields
  = lens _pgsFields (\ s a -> s{_pgsFields = a})

-- | Data format for the response.
pgsAlt :: Lens' PawsGetSpectrum' Alt
pgsAlt = lens _pgsAlt (\ s a -> s{_pgsAlt = a})

instance GoogleRequest PawsGetSpectrum' where
        type Rs PawsGetSpectrum' = PawsGetSpectrumResponse
        request = requestWithRoute defReq spectrumURL
        requestWithRoute r u PawsGetSpectrum'{..}
          = go _pgsQuotaUser (Just _pgsPrettyPrint) _pgsUserIp
              _pgsKey
              _pgsOauthToken
              _pgsFields
              (Just _pgsAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy PawsGetSpectrumAPI)
                      r
                      u
