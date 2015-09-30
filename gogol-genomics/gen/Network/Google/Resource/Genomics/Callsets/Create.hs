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
    , ccUserIp
    , ccKey
    , ccOauthToken
    , ccFields
    , ccAlt
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
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :> Post '[JSON] CallSet

-- | Creates a new call set.
--
-- /See:/ 'callsetsCreate'' smart constructor.
data CallsetsCreate' = CallsetsCreate'
    { _ccQuotaUser   :: !(Maybe Text)
    , _ccPrettyPrint :: !Bool
    , _ccUserIp      :: !(Maybe Text)
    , _ccKey         :: !(Maybe Text)
    , _ccOauthToken  :: !(Maybe Text)
    , _ccFields      :: !(Maybe Text)
    , _ccAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallsetsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccQuotaUser'
--
-- * 'ccPrettyPrint'
--
-- * 'ccUserIp'
--
-- * 'ccKey'
--
-- * 'ccOauthToken'
--
-- * 'ccFields'
--
-- * 'ccAlt'
callsetsCreate'
    :: CallsetsCreate'
callsetsCreate' =
    CallsetsCreate'
    { _ccQuotaUser = Nothing
    , _ccPrettyPrint = True
    , _ccUserIp = Nothing
    , _ccKey = Nothing
    , _ccOauthToken = Nothing
    , _ccFields = Nothing
    , _ccAlt = JSON
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
ccUserIp :: Lens' CallsetsCreate' (Maybe Text)
ccUserIp = lens _ccUserIp (\ s a -> s{_ccUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ccKey :: Lens' CallsetsCreate' (Maybe Text)
ccKey = lens _ccKey (\ s a -> s{_ccKey = a})

-- | OAuth 2.0 token for the current user.
ccOauthToken :: Lens' CallsetsCreate' (Maybe Text)
ccOauthToken
  = lens _ccOauthToken (\ s a -> s{_ccOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ccFields :: Lens' CallsetsCreate' (Maybe Text)
ccFields = lens _ccFields (\ s a -> s{_ccFields = a})

-- | Data format for the response.
ccAlt :: Lens' CallsetsCreate' Alt
ccAlt = lens _ccAlt (\ s a -> s{_ccAlt = a})

instance GoogleRequest CallsetsCreate' where
        type Rs CallsetsCreate' = CallSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u CallsetsCreate'{..}
          = go _ccQuotaUser (Just _ccPrettyPrint) _ccUserIp
              _ccKey
              _ccOauthToken
              _ccFields
              (Just _ccAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CallsetsCreateResource)
                      r
                      u
