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
-- Module      : Network.Google.Resource.Genomics.Callsets.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a call set. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsCallsetsPatch@.
module Network.Google.Resource.Genomics.Callsets.Patch
    (
    -- * REST Resource
      CallsetsPatchResource

    -- * Creating a Request
    , callsetsPatch'
    , CallsetsPatch'

    -- * Request Lenses
    , cpQuotaUser
    , cpPrettyPrint
    , cpUserIP
    , cpPayload
    , cpKey
    , cpCallSetId
    , cpOAuthToken
    , cpFields
    ) where

import Network.Google.Genomics.Types
import Network.Google.Prelude

-- | A resource alias for @GenomicsCallsetsPatch@ which the
-- 'CallsetsPatch'' request conforms to.
type CallsetsPatchResource =
     "callsets" :>
       Capture "callSetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CallSet :> Patch '[JSON] CallSet

-- | Updates a call set. This method supports patch semantics.
--
-- /See:/ 'callsetsPatch'' smart constructor.
data CallsetsPatch' = CallsetsPatch'
    { _cpQuotaUser :: !(Maybe Text)
    , _cpPrettyPrint :: !Bool
    , _cpUserIP :: !(Maybe Text)
    , _cpPayload :: !CallSet
    , _cpKey :: !(Maybe Key)
    , _cpCallSetId :: !Text
    , _cpOAuthToken :: !(Maybe OAuthToken)
    , _cpFields :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallsetsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpQuotaUser'
--
-- * 'cpPrettyPrint'
--
-- * 'cpUserIP'
--
-- * 'cpPayload'
--
-- * 'cpKey'
--
-- * 'cpCallSetId'
--
-- * 'cpOAuthToken'
--
-- * 'cpFields'
callsetsPatch'
    :: CallSet -- ^ 'payload'
    -> Text -- ^ 'callSetId'
    -> CallsetsPatch'
callsetsPatch' pCpPayload_ pCpCallSetId_ = 
    CallsetsPatch'
    { _cpQuotaUser = Nothing
    , _cpPrettyPrint = True
    , _cpUserIP = Nothing
    , _cpPayload = pCpPayload_
    , _cpKey = Nothing
    , _cpCallSetId = pCpCallSetId_
    , _cpOAuthToken = Nothing
    , _cpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cpQuotaUser :: Lens' CallsetsPatch' (Maybe Text)
cpQuotaUser
  = lens _cpQuotaUser (\ s a -> s{_cpQuotaUser = a})

-- | Returns response with indentations and line breaks.
cpPrettyPrint :: Lens' CallsetsPatch' Bool
cpPrettyPrint
  = lens _cpPrettyPrint
      (\ s a -> s{_cpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cpUserIP :: Lens' CallsetsPatch' (Maybe Text)
cpUserIP = lens _cpUserIP (\ s a -> s{_cpUserIP = a})

-- | Multipart request metadata.
cpPayload :: Lens' CallsetsPatch' CallSet
cpPayload
  = lens _cpPayload (\ s a -> s{_cpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cpKey :: Lens' CallsetsPatch' (Maybe Key)
cpKey = lens _cpKey (\ s a -> s{_cpKey = a})

-- | The ID of the call set to be updated.
cpCallSetId :: Lens' CallsetsPatch' Text
cpCallSetId
  = lens _cpCallSetId (\ s a -> s{_cpCallSetId = a})

-- | OAuth 2.0 token for the current user.
cpOAuthToken :: Lens' CallsetsPatch' (Maybe OAuthToken)
cpOAuthToken
  = lens _cpOAuthToken (\ s a -> s{_cpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cpFields :: Lens' CallsetsPatch' (Maybe Text)
cpFields = lens _cpFields (\ s a -> s{_cpFields = a})

instance GoogleAuth CallsetsPatch' where
        authKey = cpKey . _Just
        authToken = cpOAuthToken . _Just

instance GoogleRequest CallsetsPatch' where
        type Rs CallsetsPatch' = CallSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u CallsetsPatch'{..}
          = go _cpCallSetId _cpQuotaUser (Just _cpPrettyPrint)
              _cpUserIP
              _cpFields
              _cpKey
              _cpOAuthToken
              (Just AltJSON)
              _cpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CallsetsPatchResource)
                      r
                      u
