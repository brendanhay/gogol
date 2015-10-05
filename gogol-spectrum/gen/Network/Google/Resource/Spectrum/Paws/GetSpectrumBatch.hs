{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Spectrum.Paws.GetSpectrumBatch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | The Google Spectrum Database does not support batch requests, so this
-- method always yields an UNIMPLEMENTED error.
--
-- /See:/ <http://developers.google.com/spectrum Google Spectrum Database API Reference> for @SpectrumPawsGetSpectrumBatch@.
module Network.Google.Resource.Spectrum.Paws.GetSpectrumBatch
    (
    -- * REST Resource
      PawsGetSpectrumBatchResource

    -- * Creating a Request
    , pawsGetSpectrumBatch'
    , PawsGetSpectrumBatch'

    -- * Request Lenses
    , pgsbQuotaUser
    , pgsbPrettyPrint
    , pgsbUserIP
    , pgsbPayload
    , pgsbKey
    , pgsbOAuthToken
    , pgsbFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Spectrum.Types

-- | A resource alias for @SpectrumPawsGetSpectrumBatch@ which the
-- 'PawsGetSpectrumBatch'' request conforms to.
type PawsGetSpectrumBatchResource =
     "getSpectrumBatch" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] PawsGetSpectrumBatchRequest :>
                       Post '[JSON] PawsGetSpectrumBatchResponse

-- | The Google Spectrum Database does not support batch requests, so this
-- method always yields an UNIMPLEMENTED error.
--
-- /See:/ 'pawsGetSpectrumBatch'' smart constructor.
data PawsGetSpectrumBatch' = PawsGetSpectrumBatch'
    { _pgsbQuotaUser   :: !(Maybe Text)
    , _pgsbPrettyPrint :: !Bool
    , _pgsbUserIP      :: !(Maybe Text)
    , _pgsbPayload     :: !PawsGetSpectrumBatchRequest
    , _pgsbKey         :: !(Maybe Key)
    , _pgsbOAuthToken  :: !(Maybe OAuthToken)
    , _pgsbFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsGetSpectrumBatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgsbQuotaUser'
--
-- * 'pgsbPrettyPrint'
--
-- * 'pgsbUserIP'
--
-- * 'pgsbPayload'
--
-- * 'pgsbKey'
--
-- * 'pgsbOAuthToken'
--
-- * 'pgsbFields'
pawsGetSpectrumBatch'
    :: PawsGetSpectrumBatchRequest -- ^ 'payload'
    -> PawsGetSpectrumBatch'
pawsGetSpectrumBatch' pPgsbPayload_ =
    PawsGetSpectrumBatch'
    { _pgsbQuotaUser = Nothing
    , _pgsbPrettyPrint = True
    , _pgsbUserIP = Nothing
    , _pgsbPayload = pPgsbPayload_
    , _pgsbKey = Nothing
    , _pgsbOAuthToken = Nothing
    , _pgsbFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pgsbQuotaUser :: Lens' PawsGetSpectrumBatch' (Maybe Text)
pgsbQuotaUser
  = lens _pgsbQuotaUser
      (\ s a -> s{_pgsbQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgsbPrettyPrint :: Lens' PawsGetSpectrumBatch' Bool
pgsbPrettyPrint
  = lens _pgsbPrettyPrint
      (\ s a -> s{_pgsbPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgsbUserIP :: Lens' PawsGetSpectrumBatch' (Maybe Text)
pgsbUserIP
  = lens _pgsbUserIP (\ s a -> s{_pgsbUserIP = a})

-- | Multipart request metadata.
pgsbPayload :: Lens' PawsGetSpectrumBatch' PawsGetSpectrumBatchRequest
pgsbPayload
  = lens _pgsbPayload (\ s a -> s{_pgsbPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgsbKey :: Lens' PawsGetSpectrumBatch' (Maybe Key)
pgsbKey = lens _pgsbKey (\ s a -> s{_pgsbKey = a})

-- | OAuth 2.0 token for the current user.
pgsbOAuthToken :: Lens' PawsGetSpectrumBatch' (Maybe OAuthToken)
pgsbOAuthToken
  = lens _pgsbOAuthToken
      (\ s a -> s{_pgsbOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pgsbFields :: Lens' PawsGetSpectrumBatch' (Maybe Text)
pgsbFields
  = lens _pgsbFields (\ s a -> s{_pgsbFields = a})

instance GoogleAuth PawsGetSpectrumBatch' where
        authKey = pgsbKey . _Just
        authToken = pgsbOAuthToken . _Just

instance GoogleRequest PawsGetSpectrumBatch' where
        type Rs PawsGetSpectrumBatch' =
             PawsGetSpectrumBatchResponse
        request = requestWithRoute defReq spectrumURL
        requestWithRoute r u PawsGetSpectrumBatch'{..}
          = go _pgsbQuotaUser (Just _pgsbPrettyPrint)
              _pgsbUserIP
              _pgsbFields
              _pgsbKey
              _pgsbOAuthToken
              (Just AltJSON)
              _pgsbPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PawsGetSpectrumBatchResource)
                      r
                      u
