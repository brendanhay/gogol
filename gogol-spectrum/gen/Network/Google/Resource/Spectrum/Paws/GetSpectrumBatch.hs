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
    , pgsbUserIp
    , pgsbKey
    , pgsbOauthToken
    , pgsbFields
    , pgsbAlt
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
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :>
                     Post '[JSON] PawsGetSpectrumBatchResponse

-- | The Google Spectrum Database does not support batch requests, so this
-- method always yields an UNIMPLEMENTED error.
--
-- /See:/ 'pawsGetSpectrumBatch'' smart constructor.
data PawsGetSpectrumBatch' = PawsGetSpectrumBatch'
    { _pgsbQuotaUser   :: !(Maybe Text)
    , _pgsbPrettyPrint :: !Bool
    , _pgsbUserIp      :: !(Maybe Text)
    , _pgsbKey         :: !(Maybe Text)
    , _pgsbOauthToken  :: !(Maybe Text)
    , _pgsbFields      :: !(Maybe Text)
    , _pgsbAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsGetSpectrumBatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgsbQuotaUser'
--
-- * 'pgsbPrettyPrint'
--
-- * 'pgsbUserIp'
--
-- * 'pgsbKey'
--
-- * 'pgsbOauthToken'
--
-- * 'pgsbFields'
--
-- * 'pgsbAlt'
pawsGetSpectrumBatch'
    :: PawsGetSpectrumBatch'
pawsGetSpectrumBatch' =
    PawsGetSpectrumBatch'
    { _pgsbQuotaUser = Nothing
    , _pgsbPrettyPrint = True
    , _pgsbUserIp = Nothing
    , _pgsbKey = Nothing
    , _pgsbOauthToken = Nothing
    , _pgsbFields = Nothing
    , _pgsbAlt = JSON
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
pgsbUserIp :: Lens' PawsGetSpectrumBatch' (Maybe Text)
pgsbUserIp
  = lens _pgsbUserIp (\ s a -> s{_pgsbUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgsbKey :: Lens' PawsGetSpectrumBatch' (Maybe Text)
pgsbKey = lens _pgsbKey (\ s a -> s{_pgsbKey = a})

-- | OAuth 2.0 token for the current user.
pgsbOauthToken :: Lens' PawsGetSpectrumBatch' (Maybe Text)
pgsbOauthToken
  = lens _pgsbOauthToken
      (\ s a -> s{_pgsbOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pgsbFields :: Lens' PawsGetSpectrumBatch' (Maybe Text)
pgsbFields
  = lens _pgsbFields (\ s a -> s{_pgsbFields = a})

-- | Data format for the response.
pgsbAlt :: Lens' PawsGetSpectrumBatch' Alt
pgsbAlt = lens _pgsbAlt (\ s a -> s{_pgsbAlt = a})

instance GoogleRequest PawsGetSpectrumBatch' where
        type Rs PawsGetSpectrumBatch' =
             PawsGetSpectrumBatchResponse
        request = requestWithRoute defReq spectrumURL
        requestWithRoute r u PawsGetSpectrumBatch'{..}
          = go _pgsbQuotaUser (Just _pgsbPrettyPrint)
              _pgsbUserIp
              _pgsbKey
              _pgsbOauthToken
              _pgsbFields
              (Just _pgsbAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PawsGetSpectrumBatchResource)
                      r
                      u
