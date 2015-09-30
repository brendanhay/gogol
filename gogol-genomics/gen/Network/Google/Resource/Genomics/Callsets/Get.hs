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
-- Module      : Network.Google.Resource.Genomics.Callsets.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a call set by ID.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsCallsetsGet@.
module Network.Google.Resource.Genomics.Callsets.Get
    (
    -- * REST Resource
      CallsetsGetResource

    -- * Creating a Request
    , callsetsGet'
    , CallsetsGet'

    -- * Request Lenses
    , cgQuotaUser
    , cgPrettyPrint
    , cgUserIp
    , cgKey
    , cgCallSetId
    , cgOauthToken
    , cgFields
    , cgAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsCallsetsGet@ which the
-- 'CallsetsGet'' request conforms to.
type CallsetsGetResource =
     "callsets" :>
       Capture "callSetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] CallSet

-- | Gets a call set by ID.
--
-- /See:/ 'callsetsGet'' smart constructor.
data CallsetsGet' = CallsetsGet'
    { _cgQuotaUser   :: !(Maybe Text)
    , _cgPrettyPrint :: !Bool
    , _cgUserIp      :: !(Maybe Text)
    , _cgKey         :: !(Maybe Text)
    , _cgCallSetId   :: !Text
    , _cgOauthToken  :: !(Maybe Text)
    , _cgFields      :: !(Maybe Text)
    , _cgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallsetsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgQuotaUser'
--
-- * 'cgPrettyPrint'
--
-- * 'cgUserIp'
--
-- * 'cgKey'
--
-- * 'cgCallSetId'
--
-- * 'cgOauthToken'
--
-- * 'cgFields'
--
-- * 'cgAlt'
callsetsGet'
    :: Text -- ^ 'callSetId'
    -> CallsetsGet'
callsetsGet' pCgCallSetId_ =
    CallsetsGet'
    { _cgQuotaUser = Nothing
    , _cgPrettyPrint = True
    , _cgUserIp = Nothing
    , _cgKey = Nothing
    , _cgCallSetId = pCgCallSetId_
    , _cgOauthToken = Nothing
    , _cgFields = Nothing
    , _cgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cgQuotaUser :: Lens' CallsetsGet' (Maybe Text)
cgQuotaUser
  = lens _cgQuotaUser (\ s a -> s{_cgQuotaUser = a})

-- | Returns response with indentations and line breaks.
cgPrettyPrint :: Lens' CallsetsGet' Bool
cgPrettyPrint
  = lens _cgPrettyPrint
      (\ s a -> s{_cgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cgUserIp :: Lens' CallsetsGet' (Maybe Text)
cgUserIp = lens _cgUserIp (\ s a -> s{_cgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgKey :: Lens' CallsetsGet' (Maybe Text)
cgKey = lens _cgKey (\ s a -> s{_cgKey = a})

-- | The ID of the call set.
cgCallSetId :: Lens' CallsetsGet' Text
cgCallSetId
  = lens _cgCallSetId (\ s a -> s{_cgCallSetId = a})

-- | OAuth 2.0 token for the current user.
cgOauthToken :: Lens' CallsetsGet' (Maybe Text)
cgOauthToken
  = lens _cgOauthToken (\ s a -> s{_cgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cgFields :: Lens' CallsetsGet' (Maybe Text)
cgFields = lens _cgFields (\ s a -> s{_cgFields = a})

-- | Data format for the response.
cgAlt :: Lens' CallsetsGet' Alt
cgAlt = lens _cgAlt (\ s a -> s{_cgAlt = a})

instance GoogleRequest CallsetsGet' where
        type Rs CallsetsGet' = CallSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u CallsetsGet'{..}
          = go _cgQuotaUser (Just _cgPrettyPrint) _cgUserIp
              _cgKey
              _cgCallSetId
              _cgOauthToken
              _cgFields
              (Just _cgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CallsetsGetResource)
                      r
                      u
