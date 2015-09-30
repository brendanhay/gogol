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
-- Module      : Network.Google.Resource.Gan.Publishers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves data about a single advertiser if that the requesting
-- advertiser\/publisher has access to it. Only advertisers can look up
-- publishers. Publishers can request information about themselves by
-- omitting the publisherId query parameter.
--
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference> for @GanPublishersGet@.
module Network.Google.Resource.Gan.Publishers.Get
    (
    -- * REST Resource
      PublishersGetResource

    -- * Creating a Request
    , publishersGet'
    , PublishersGet'

    -- * Request Lenses
    , pgQuotaUser
    , pgPrettyPrint
    , pgUserIp
    , pgRoleId
    , pgRole
    , pgKey
    , pgOauthToken
    , pgPublisherId
    , pgFields
    , pgAlt
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

-- | A resource alias for @GanPublishersGet@ which the
-- 'PublishersGet'' request conforms to.
type PublishersGetResource =
     Capture "role" GanPublishersGetRole :>
       Capture "roleId" Text :>
         "publisher" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "publisherId" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Publisher

-- | Retrieves data about a single advertiser if that the requesting
-- advertiser\/publisher has access to it. Only advertisers can look up
-- publishers. Publishers can request information about themselves by
-- omitting the publisherId query parameter.
--
-- /See:/ 'publishersGet'' smart constructor.
data PublishersGet' = PublishersGet'
    { _pgQuotaUser   :: !(Maybe Text)
    , _pgPrettyPrint :: !Bool
    , _pgUserIp      :: !(Maybe Text)
    , _pgRoleId      :: !Text
    , _pgRole        :: !GanPublishersGetRole
    , _pgKey         :: !(Maybe Text)
    , _pgOauthToken  :: !(Maybe Text)
    , _pgPublisherId :: !(Maybe Text)
    , _pgFields      :: !(Maybe Text)
    , _pgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PublishersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgQuotaUser'
--
-- * 'pgPrettyPrint'
--
-- * 'pgUserIp'
--
-- * 'pgRoleId'
--
-- * 'pgRole'
--
-- * 'pgKey'
--
-- * 'pgOauthToken'
--
-- * 'pgPublisherId'
--
-- * 'pgFields'
--
-- * 'pgAlt'
publishersGet'
    :: Text -- ^ 'roleId'
    -> GanPublishersGetRole -- ^ 'role'
    -> PublishersGet'
publishersGet' pPgRoleId_ pPgRole_ =
    PublishersGet'
    { _pgQuotaUser = Nothing
    , _pgPrettyPrint = True
    , _pgUserIp = Nothing
    , _pgRoleId = pPgRoleId_
    , _pgRole = pPgRole_
    , _pgKey = Nothing
    , _pgOauthToken = Nothing
    , _pgPublisherId = Nothing
    , _pgFields = Nothing
    , _pgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pgQuotaUser :: Lens' PublishersGet' (Maybe Text)
pgQuotaUser
  = lens _pgQuotaUser (\ s a -> s{_pgQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgPrettyPrint :: Lens' PublishersGet' Bool
pgPrettyPrint
  = lens _pgPrettyPrint
      (\ s a -> s{_pgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgUserIp :: Lens' PublishersGet' (Maybe Text)
pgUserIp = lens _pgUserIp (\ s a -> s{_pgUserIp = a})

-- | The ID of the requesting advertiser or publisher.
pgRoleId :: Lens' PublishersGet' Text
pgRoleId = lens _pgRoleId (\ s a -> s{_pgRoleId = a})

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
pgRole :: Lens' PublishersGet' GanPublishersGetRole
pgRole = lens _pgRole (\ s a -> s{_pgRole = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgKey :: Lens' PublishersGet' (Maybe Text)
pgKey = lens _pgKey (\ s a -> s{_pgKey = a})

-- | OAuth 2.0 token for the current user.
pgOauthToken :: Lens' PublishersGet' (Maybe Text)
pgOauthToken
  = lens _pgOauthToken (\ s a -> s{_pgOauthToken = a})

-- | The ID of the publisher to look up. Optional.
pgPublisherId :: Lens' PublishersGet' (Maybe Text)
pgPublisherId
  = lens _pgPublisherId
      (\ s a -> s{_pgPublisherId = a})

-- | Selector specifying which fields to include in a partial response.
pgFields :: Lens' PublishersGet' (Maybe Text)
pgFields = lens _pgFields (\ s a -> s{_pgFields = a})

-- | Data format for the response.
pgAlt :: Lens' PublishersGet' Alt
pgAlt = lens _pgAlt (\ s a -> s{_pgAlt = a})

instance GoogleRequest PublishersGet' where
        type Rs PublishersGet' = Publisher
        request = requestWithRoute defReq affiliatesURL
        requestWithRoute r u PublishersGet'{..}
          = go _pgQuotaUser (Just _pgPrettyPrint) _pgUserIp
              _pgRoleId
              _pgRole
              _pgKey
              _pgOauthToken
              _pgPublisherId
              _pgFields
              (Just _pgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PublishersGetResource)
                      r
                      u
