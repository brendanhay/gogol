{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Spectrum.Paws.VerifyDevice
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Validates a device for white space use in accordance with regulatory
-- rules. The Google Spectrum Database does not support master\/slave
-- configurations, so this always yields an UNIMPLEMENTED error.
--
-- /See:/ <http://developers.google.com/spectrum Google Spectrum Database API Reference> for @SpectrumPawsVerifyDevice@.
module Spectrum.Paws.VerifyDevice
    (
    -- * REST Resource
      PawsVerifyDeviceAPI

    -- * Creating a Request
    , pawsVerifyDevice
    , PawsVerifyDevice

    -- * Request Lenses
    , pvdQuotaUser
    , pvdPrettyPrint
    , pvdUserIp
    , pvdKey
    , pvdOauthToken
    , pvdFields
    , pvdAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Spectrum.Types

-- | A resource alias for @SpectrumPawsVerifyDevice@ which the
-- 'PawsVerifyDevice' request conforms to.
type PawsVerifyDeviceAPI =
     "verifyDevice" :>
       Post '[JSON] PawsVerifyDeviceResponse

-- | Validates a device for white space use in accordance with regulatory
-- rules. The Google Spectrum Database does not support master\/slave
-- configurations, so this always yields an UNIMPLEMENTED error.
--
-- /See:/ 'pawsVerifyDevice' smart constructor.
data PawsVerifyDevice = PawsVerifyDevice
    { _pvdQuotaUser   :: !(Maybe Text)
    , _pvdPrettyPrint :: !Bool
    , _pvdUserIp      :: !(Maybe Text)
    , _pvdKey         :: !(Maybe Text)
    , _pvdOauthToken  :: !(Maybe Text)
    , _pvdFields      :: !(Maybe Text)
    , _pvdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsVerifyDevice'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvdQuotaUser'
--
-- * 'pvdPrettyPrint'
--
-- * 'pvdUserIp'
--
-- * 'pvdKey'
--
-- * 'pvdOauthToken'
--
-- * 'pvdFields'
--
-- * 'pvdAlt'
pawsVerifyDevice
    :: PawsVerifyDevice
pawsVerifyDevice =
    PawsVerifyDevice
    { _pvdQuotaUser = Nothing
    , _pvdPrettyPrint = True
    , _pvdUserIp = Nothing
    , _pvdKey = Nothing
    , _pvdOauthToken = Nothing
    , _pvdFields = Nothing
    , _pvdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pvdQuotaUser :: Lens' PawsVerifyDevice' (Maybe Text)
pvdQuotaUser
  = lens _pvdQuotaUser (\ s a -> s{_pvdQuotaUser = a})

-- | Returns response with indentations and line breaks.
pvdPrettyPrint :: Lens' PawsVerifyDevice' Bool
pvdPrettyPrint
  = lens _pvdPrettyPrint
      (\ s a -> s{_pvdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pvdUserIp :: Lens' PawsVerifyDevice' (Maybe Text)
pvdUserIp
  = lens _pvdUserIp (\ s a -> s{_pvdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pvdKey :: Lens' PawsVerifyDevice' (Maybe Text)
pvdKey = lens _pvdKey (\ s a -> s{_pvdKey = a})

-- | OAuth 2.0 token for the current user.
pvdOauthToken :: Lens' PawsVerifyDevice' (Maybe Text)
pvdOauthToken
  = lens _pvdOauthToken
      (\ s a -> s{_pvdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pvdFields :: Lens' PawsVerifyDevice' (Maybe Text)
pvdFields
  = lens _pvdFields (\ s a -> s{_pvdFields = a})

-- | Data format for the response.
pvdAlt :: Lens' PawsVerifyDevice' Text
pvdAlt = lens _pvdAlt (\ s a -> s{_pvdAlt = a})

instance GoogleRequest PawsVerifyDevice' where
        type Rs PawsVerifyDevice' = PawsVerifyDeviceResponse
        request = requestWithRoute defReq spectrumURL
        requestWithRoute r u PawsVerifyDevice{..}
          = go _pvdQuotaUser _pvdPrettyPrint _pvdUserIp _pvdKey
              _pvdOauthToken
              _pvdFields
              _pvdAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PawsVerifyDeviceAPI)
                      r
                      u
