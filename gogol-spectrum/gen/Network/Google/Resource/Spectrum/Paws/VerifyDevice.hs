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
module Network.Google.Resource.Spectrum.Paws.VerifyDevice
    (
    -- * REST Resource
      PawsVerifyDeviceResource

    -- * Creating a Request
    , pawsVerifyDevice'
    , PawsVerifyDevice'

    -- * Request Lenses
    , pvdQuotaUser
    , pvdPrettyPrint
    , pvdUserIP
    , pvdPayload
    , pvdKey
    , pvdOAuthToken
    , pvdFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Spectrum.Types

-- | A resource alias for @SpectrumPawsVerifyDevice@ which the
-- 'PawsVerifyDevice'' request conforms to.
type PawsVerifyDeviceResource =
     "verifyDevice" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] PawsVerifyDeviceRequest :>
                       Post '[JSON] PawsVerifyDeviceResponse

-- | Validates a device for white space use in accordance with regulatory
-- rules. The Google Spectrum Database does not support master\/slave
-- configurations, so this always yields an UNIMPLEMENTED error.
--
-- /See:/ 'pawsVerifyDevice'' smart constructor.
data PawsVerifyDevice' = PawsVerifyDevice'
    { _pvdQuotaUser   :: !(Maybe Text)
    , _pvdPrettyPrint :: !Bool
    , _pvdUserIP      :: !(Maybe Text)
    , _pvdPayload     :: !PawsVerifyDeviceRequest
    , _pvdKey         :: !(Maybe Key)
    , _pvdOAuthToken  :: !(Maybe OAuthToken)
    , _pvdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsVerifyDevice'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvdQuotaUser'
--
-- * 'pvdPrettyPrint'
--
-- * 'pvdUserIP'
--
-- * 'pvdPayload'
--
-- * 'pvdKey'
--
-- * 'pvdOAuthToken'
--
-- * 'pvdFields'
pawsVerifyDevice'
    :: PawsVerifyDeviceRequest -- ^ 'payload'
    -> PawsVerifyDevice'
pawsVerifyDevice' pPvdPayload_ =
    PawsVerifyDevice'
    { _pvdQuotaUser = Nothing
    , _pvdPrettyPrint = True
    , _pvdUserIP = Nothing
    , _pvdPayload = pPvdPayload_
    , _pvdKey = Nothing
    , _pvdOAuthToken = Nothing
    , _pvdFields = Nothing
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
pvdUserIP :: Lens' PawsVerifyDevice' (Maybe Text)
pvdUserIP
  = lens _pvdUserIP (\ s a -> s{_pvdUserIP = a})

-- | Multipart request metadata.
pvdPayload :: Lens' PawsVerifyDevice' PawsVerifyDeviceRequest
pvdPayload
  = lens _pvdPayload (\ s a -> s{_pvdPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pvdKey :: Lens' PawsVerifyDevice' (Maybe Key)
pvdKey = lens _pvdKey (\ s a -> s{_pvdKey = a})

-- | OAuth 2.0 token for the current user.
pvdOAuthToken :: Lens' PawsVerifyDevice' (Maybe OAuthToken)
pvdOAuthToken
  = lens _pvdOAuthToken
      (\ s a -> s{_pvdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pvdFields :: Lens' PawsVerifyDevice' (Maybe Text)
pvdFields
  = lens _pvdFields (\ s a -> s{_pvdFields = a})

instance GoogleAuth PawsVerifyDevice' where
        authKey = pvdKey . _Just
        authToken = pvdOAuthToken . _Just

instance GoogleRequest PawsVerifyDevice' where
        type Rs PawsVerifyDevice' = PawsVerifyDeviceResponse
        request = requestWithRoute defReq spectrumURL
        requestWithRoute r u PawsVerifyDevice'{..}
          = go _pvdQuotaUser (Just _pvdPrettyPrint) _pvdUserIP
              _pvdFields
              _pvdKey
              _pvdOAuthToken
              (Just AltJSON)
              _pvdPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PawsVerifyDeviceResource)
                      r
                      u
