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
-- Module      : Network.Google.Resource.Genomics.Callsets.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new call set.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsCallsetsCreate@.
module Network.Google.Resource.Genomics.Callsets.Create
    (
    -- * REST Resource
      CallsetsCreateResource

    -- * Creating a Request
    , callsetsCreate'
    , CallsetsCreate'

    -- * Request Lenses
    , ccQuotaUser
    , ccPrettyPrint
    , ccUserIP
    , ccPayload
    , ccKey
    , ccOAuthToken
    , ccFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsCallsetsCreate@ which the
-- 'CallsetsCreate'' request conforms to.
type CallsetsCreateResource =
     "callsets" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" AuthKey :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] CallSet :> Post '[JSON] CallSet

-- | Creates a new call set.
--
-- /See:/ 'callsetsCreate'' smart constructor.
data CallsetsCreate' = CallsetsCreate'
    { _ccQuotaUser   :: !(Maybe Text)
    , _ccPrettyPrint :: !Bool
    , _ccUserIP      :: !(Maybe Text)
    , _ccPayload     :: !CallSet
    , _ccKey         :: !(Maybe AuthKey)
    , _ccOAuthToken  :: !(Maybe OAuthToken)
    , _ccFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallsetsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccQuotaUser'
--
-- * 'ccPrettyPrint'
--
-- * 'ccUserIP'
--
-- * 'ccPayload'
--
-- * 'ccKey'
--
-- * 'ccOAuthToken'
--
-- * 'ccFields'
callsetsCreate'
    :: CallSet -- ^ 'payload'
    -> CallsetsCreate'
callsetsCreate' pCcPayload_ =
    CallsetsCreate'
    { _ccQuotaUser = Nothing
    , _ccPrettyPrint = True
    , _ccUserIP = Nothing
    , _ccPayload = pCcPayload_
    , _ccKey = Nothing
    , _ccOAuthToken = Nothing
    , _ccFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ccQuotaUser :: Lens' CallsetsCreate' (Maybe Text)
ccQuotaUser
  = lens _ccQuotaUser (\ s a -> s{_ccQuotaUser = a})

-- | Returns response with indentations and line breaks.
ccPrettyPrint :: Lens' CallsetsCreate' Bool
ccPrettyPrint
  = lens _ccPrettyPrint
      (\ s a -> s{_ccPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ccUserIP :: Lens' CallsetsCreate' (Maybe Text)
ccUserIP = lens _ccUserIP (\ s a -> s{_ccUserIP = a})

-- | Multipart request metadata.
ccPayload :: Lens' CallsetsCreate' CallSet
ccPayload
  = lens _ccPayload (\ s a -> s{_ccPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ccKey :: Lens' CallsetsCreate' (Maybe AuthKey)
ccKey = lens _ccKey (\ s a -> s{_ccKey = a})

-- | OAuth 2.0 token for the current user.
ccOAuthToken :: Lens' CallsetsCreate' (Maybe OAuthToken)
ccOAuthToken
  = lens _ccOAuthToken (\ s a -> s{_ccOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ccFields :: Lens' CallsetsCreate' (Maybe Text)
ccFields = lens _ccFields (\ s a -> s{_ccFields = a})

instance GoogleAuth CallsetsCreate' where
        authKey = ccKey . _Just
        authToken = ccOAuthToken . _Just

instance GoogleRequest CallsetsCreate' where
        type Rs CallsetsCreate' = CallSet
        request = requestWith genomicsRequest
        requestWith rq CallsetsCreate'{..}
          = go _ccQuotaUser (Just _ccPrettyPrint) _ccUserIP
              _ccFields
              _ccKey
              _ccOAuthToken
              (Just AltJSON)
              _ccPayload
          where go
                  = clientBuild (Proxy :: Proxy CallsetsCreateResource)
                      rq
