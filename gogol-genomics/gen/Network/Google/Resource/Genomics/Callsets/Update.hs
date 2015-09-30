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
-- Module      : Network.Google.Resource.Genomics.Callsets.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a call set.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsCallsetsUpdate@.
module Network.Google.Resource.Genomics.Callsets.Update
    (
    -- * REST Resource
      CallsetsUpdateResource

    -- * Creating a Request
    , callsetsUpdate'
    , CallsetsUpdate'

    -- * Request Lenses
    , cuQuotaUser
    , cuPrettyPrint
    , cuUserIp
    , cuKey
    , cuCallSetId
    , cuOauthToken
    , cuFields
    , cuAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsCallsetsUpdate@ which the
-- 'CallsetsUpdate'' request conforms to.
type CallsetsUpdateResource =
     "callsets" :>
       Capture "callSetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Put '[JSON] CallSet

-- | Updates a call set.
--
-- /See:/ 'callsetsUpdate'' smart constructor.
data CallsetsUpdate' = CallsetsUpdate'
    { _cuQuotaUser   :: !(Maybe Text)
    , _cuPrettyPrint :: !Bool
    , _cuUserIp      :: !(Maybe Text)
    , _cuKey         :: !(Maybe Text)
    , _cuCallSetId   :: !Text
    , _cuOauthToken  :: !(Maybe Text)
    , _cuFields      :: !(Maybe Text)
    , _cuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallsetsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuQuotaUser'
--
-- * 'cuPrettyPrint'
--
-- * 'cuUserIp'
--
-- * 'cuKey'
--
-- * 'cuCallSetId'
--
-- * 'cuOauthToken'
--
-- * 'cuFields'
--
-- * 'cuAlt'
callsetsUpdate'
    :: Text -- ^ 'callSetId'
    -> CallsetsUpdate'
callsetsUpdate' pCuCallSetId_ =
    CallsetsUpdate'
    { _cuQuotaUser = Nothing
    , _cuPrettyPrint = True
    , _cuUserIp = Nothing
    , _cuKey = Nothing
    , _cuCallSetId = pCuCallSetId_
    , _cuOauthToken = Nothing
    , _cuFields = Nothing
    , _cuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cuQuotaUser :: Lens' CallsetsUpdate' (Maybe Text)
cuQuotaUser
  = lens _cuQuotaUser (\ s a -> s{_cuQuotaUser = a})

-- | Returns response with indentations and line breaks.
cuPrettyPrint :: Lens' CallsetsUpdate' Bool
cuPrettyPrint
  = lens _cuPrettyPrint
      (\ s a -> s{_cuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cuUserIp :: Lens' CallsetsUpdate' (Maybe Text)
cuUserIp = lens _cuUserIp (\ s a -> s{_cuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuKey :: Lens' CallsetsUpdate' (Maybe Text)
cuKey = lens _cuKey (\ s a -> s{_cuKey = a})

-- | The ID of the call set to be updated.
cuCallSetId :: Lens' CallsetsUpdate' Text
cuCallSetId
  = lens _cuCallSetId (\ s a -> s{_cuCallSetId = a})

-- | OAuth 2.0 token for the current user.
cuOauthToken :: Lens' CallsetsUpdate' (Maybe Text)
cuOauthToken
  = lens _cuOauthToken (\ s a -> s{_cuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cuFields :: Lens' CallsetsUpdate' (Maybe Text)
cuFields = lens _cuFields (\ s a -> s{_cuFields = a})

-- | Data format for the response.
cuAlt :: Lens' CallsetsUpdate' Alt
cuAlt = lens _cuAlt (\ s a -> s{_cuAlt = a})

instance GoogleRequest CallsetsUpdate' where
        type Rs CallsetsUpdate' = CallSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u CallsetsUpdate'{..}
          = go _cuQuotaUser (Just _cuPrettyPrint) _cuUserIp
              _cuKey
              _cuCallSetId
              _cuOauthToken
              _cuFields
              (Just _cuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CallsetsUpdateResource)
                      r
                      u
