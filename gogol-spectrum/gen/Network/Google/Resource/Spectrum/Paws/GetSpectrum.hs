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
-- Module      : Network.Google.Resource.Spectrum.Paws.GetSpectrum
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
-- /See:/ <http://developers.google.com/spectrum Google Spectrum Database API Reference> for @SpectrumPawsGetSpectrum@.
module Network.Google.Resource.Spectrum.Paws.GetSpectrum
    (
    -- * REST Resource
      PawsGetSpectrumResource

    -- * Creating a Request
    , pawsGetSpectrum'
    , PawsGetSpectrum'

    -- * Request Lenses
    , pgsQuotaUser
    , pgsPrettyPrint
    , pgsUserIP
    , pgsPayload
    , pgsKey
    , pgsOAuthToken
    , pgsFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Spectrum.Types

-- | A resource alias for @SpectrumPawsGetSpectrum@ method which the
-- 'PawsGetSpectrum'' request conforms to.
type PawsGetSpectrumResource =
     "getSpectrum" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" AuthKey :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] PawsGetSpectrumRequest :>
                       Post '[JSON] PawsGetSpectrumResponse

-- | Requests information about the available spectrum for a device at a
-- location. Requests from a fixed-mode device must include owner
-- information so the device can be registered with the database.
--
-- /See:/ 'pawsGetSpectrum'' smart constructor.
data PawsGetSpectrum' = PawsGetSpectrum'
    { _pgsQuotaUser   :: !(Maybe Text)
    , _pgsPrettyPrint :: !Bool
    , _pgsUserIP      :: !(Maybe Text)
    , _pgsPayload     :: !PawsGetSpectrumRequest
    , _pgsKey         :: !(Maybe AuthKey)
    , _pgsOAuthToken  :: !(Maybe OAuthToken)
    , _pgsFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsGetSpectrum'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgsQuotaUser'
--
-- * 'pgsPrettyPrint'
--
-- * 'pgsUserIP'
--
-- * 'pgsPayload'
--
-- * 'pgsKey'
--
-- * 'pgsOAuthToken'
--
-- * 'pgsFields'
pawsGetSpectrum'
    :: PawsGetSpectrumRequest -- ^ 'payload'
    -> PawsGetSpectrum'
pawsGetSpectrum' pPgsPayload_ =
    PawsGetSpectrum'
    { _pgsQuotaUser = Nothing
    , _pgsPrettyPrint = True
    , _pgsUserIP = Nothing
    , _pgsPayload = pPgsPayload_
    , _pgsKey = Nothing
    , _pgsOAuthToken = Nothing
    , _pgsFields = Nothing
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
pgsUserIP :: Lens' PawsGetSpectrum' (Maybe Text)
pgsUserIP
  = lens _pgsUserIP (\ s a -> s{_pgsUserIP = a})

-- | Multipart request metadata.
pgsPayload :: Lens' PawsGetSpectrum' PawsGetSpectrumRequest
pgsPayload
  = lens _pgsPayload (\ s a -> s{_pgsPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgsKey :: Lens' PawsGetSpectrum' (Maybe AuthKey)
pgsKey = lens _pgsKey (\ s a -> s{_pgsKey = a})

-- | OAuth 2.0 token for the current user.
pgsOAuthToken :: Lens' PawsGetSpectrum' (Maybe OAuthToken)
pgsOAuthToken
  = lens _pgsOAuthToken
      (\ s a -> s{_pgsOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pgsFields :: Lens' PawsGetSpectrum' (Maybe Text)
pgsFields
  = lens _pgsFields (\ s a -> s{_pgsFields = a})

instance GoogleAuth PawsGetSpectrum' where
        _AuthKey = pgsKey . _Just
        _AuthToken = pgsOAuthToken . _Just

instance GoogleRequest PawsGetSpectrum' where
        type Rs PawsGetSpectrum' = PawsGetSpectrumResponse
        request = requestWith spectrumRequest
        requestWith rq PawsGetSpectrum'{..}
          = go _pgsQuotaUser (Just _pgsPrettyPrint) _pgsUserIP
              _pgsFields
              _pgsKey
              _pgsOAuthToken
              (Just AltJSON)
              _pgsPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy PawsGetSpectrumResource)
                      rq
