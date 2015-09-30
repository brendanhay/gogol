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
-- Module      : Network.Google.Resource.PlusDomains.People.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get a person\'s profile.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsPeopleGet@.
module Network.Google.Resource.PlusDomains.People.Get
    (
    -- * REST Resource
      PeopleGetResource

    -- * Creating a Request
    , peopleGet'
    , PeopleGet'

    -- * Request Lenses
    , pgQuotaUser
    , pgPrettyPrint
    , pgUserIp
    , pgUserId
    , pgKey
    , pgOauthToken
    , pgFields
    , pgAlt
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsPeopleGet@ which the
-- 'PeopleGet'' request conforms to.
type PeopleGetResource =
     "people" :>
       Capture "userId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] Person

-- | Get a person\'s profile.
--
-- /See:/ 'peopleGet'' smart constructor.
data PeopleGet' = PeopleGet'
    { _pgQuotaUser   :: !(Maybe Text)
    , _pgPrettyPrint :: !Bool
    , _pgUserIp      :: !(Maybe Text)
    , _pgUserId      :: !Text
    , _pgKey         :: !(Maybe Text)
    , _pgOauthToken  :: !(Maybe Text)
    , _pgFields      :: !(Maybe Text)
    , _pgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PeopleGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgQuotaUser'
--
-- * 'pgPrettyPrint'
--
-- * 'pgUserIp'
--
-- * 'pgUserId'
--
-- * 'pgKey'
--
-- * 'pgOauthToken'
--
-- * 'pgFields'
--
-- * 'pgAlt'
peopleGet'
    :: Text -- ^ 'userId'
    -> PeopleGet'
peopleGet' pPgUserId_ =
    PeopleGet'
    { _pgQuotaUser = Nothing
    , _pgPrettyPrint = True
    , _pgUserIp = Nothing
    , _pgUserId = pPgUserId_
    , _pgKey = Nothing
    , _pgOauthToken = Nothing
    , _pgFields = Nothing
    , _pgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pgQuotaUser :: Lens' PeopleGet' (Maybe Text)
pgQuotaUser
  = lens _pgQuotaUser (\ s a -> s{_pgQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgPrettyPrint :: Lens' PeopleGet' Bool
pgPrettyPrint
  = lens _pgPrettyPrint
      (\ s a -> s{_pgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgUserIp :: Lens' PeopleGet' (Maybe Text)
pgUserIp = lens _pgUserIp (\ s a -> s{_pgUserIp = a})

-- | The ID of the person to get the profile for. The special value \"me\"
-- can be used to indicate the authenticated user.
pgUserId :: Lens' PeopleGet' Text
pgUserId = lens _pgUserId (\ s a -> s{_pgUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgKey :: Lens' PeopleGet' (Maybe Text)
pgKey = lens _pgKey (\ s a -> s{_pgKey = a})

-- | OAuth 2.0 token for the current user.
pgOauthToken :: Lens' PeopleGet' (Maybe Text)
pgOauthToken
  = lens _pgOauthToken (\ s a -> s{_pgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pgFields :: Lens' PeopleGet' (Maybe Text)
pgFields = lens _pgFields (\ s a -> s{_pgFields = a})

-- | Data format for the response.
pgAlt :: Lens' PeopleGet' Alt
pgAlt = lens _pgAlt (\ s a -> s{_pgAlt = a})

instance GoogleRequest PeopleGet' where
        type Rs PeopleGet' = Person
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u PeopleGet'{..}
          = go _pgQuotaUser (Just _pgPrettyPrint) _pgUserIp
              _pgUserId
              _pgKey
              _pgOauthToken
              _pgFields
              (Just _pgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy PeopleGetResource)
                      r
                      u
