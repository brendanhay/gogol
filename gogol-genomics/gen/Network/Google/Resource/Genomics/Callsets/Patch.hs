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
    , cpUserIp
    , cpKey
    , cpCallSetId
    , cpOauthToken
    , cpFields
    , cpAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsCallsetsPatch@ which the
-- 'CallsetsPatch'' request conforms to.
type CallsetsPatchResource =
     "callsets" :>
       Capture "callSetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Patch '[JSON] CallSet

-- | Updates a call set. This method supports patch semantics.
--
-- /See:/ 'callsetsPatch'' smart constructor.
data CallsetsPatch' = CallsetsPatch'
    { _cpQuotaUser   :: !(Maybe Text)
    , _cpPrettyPrint :: !Bool
    , _cpUserIp      :: !(Maybe Text)
    , _cpKey         :: !(Maybe Text)
    , _cpCallSetId   :: !Text
    , _cpOauthToken  :: !(Maybe Text)
    , _cpFields      :: !(Maybe Text)
    , _cpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallsetsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpQuotaUser'
--
-- * 'cpPrettyPrint'
--
-- * 'cpUserIp'
--
-- * 'cpKey'
--
-- * 'cpCallSetId'
--
-- * 'cpOauthToken'
--
-- * 'cpFields'
--
-- * 'cpAlt'
callsetsPatch'
    :: Text -- ^ 'callSetId'
    -> CallsetsPatch'
callsetsPatch' pCpCallSetId_ =
    CallsetsPatch'
    { _cpQuotaUser = Nothing
    , _cpPrettyPrint = True
    , _cpUserIp = Nothing
    , _cpKey = Nothing
    , _cpCallSetId = pCpCallSetId_
    , _cpOauthToken = Nothing
    , _cpFields = Nothing
    , _cpAlt = JSON
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
cpUserIp :: Lens' CallsetsPatch' (Maybe Text)
cpUserIp = lens _cpUserIp (\ s a -> s{_cpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cpKey :: Lens' CallsetsPatch' (Maybe Text)
cpKey = lens _cpKey (\ s a -> s{_cpKey = a})

-- | The ID of the call set to be updated.
cpCallSetId :: Lens' CallsetsPatch' Text
cpCallSetId
  = lens _cpCallSetId (\ s a -> s{_cpCallSetId = a})

-- | OAuth 2.0 token for the current user.
cpOauthToken :: Lens' CallsetsPatch' (Maybe Text)
cpOauthToken
  = lens _cpOauthToken (\ s a -> s{_cpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cpFields :: Lens' CallsetsPatch' (Maybe Text)
cpFields = lens _cpFields (\ s a -> s{_cpFields = a})

-- | Data format for the response.
cpAlt :: Lens' CallsetsPatch' Alt
cpAlt = lens _cpAlt (\ s a -> s{_cpAlt = a})

instance GoogleRequest CallsetsPatch' where
        type Rs CallsetsPatch' = CallSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u CallsetsPatch'{..}
          = go _cpQuotaUser (Just _cpPrettyPrint) _cpUserIp
              _cpKey
              _cpCallSetId
              _cpOauthToken
              _cpFields
              (Just _cpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CallsetsPatchResource)
                      r
                      u
