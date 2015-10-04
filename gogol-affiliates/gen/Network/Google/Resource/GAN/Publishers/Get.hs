{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.GAN.Publishers.Get
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
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference> for @GANPublishersGet@.
module Network.Google.Resource.GAN.Publishers.Get
    (
    -- * REST Resource
      PublishersGetResource

    -- * Creating a Request
    , publishersGet'
    , PublishersGet'

    -- * Request Lenses
    , pgQuotaUser
    , pgPrettyPrint
    , pgUserIP
    , pgRoleId
    , pgRole
    , pgKey
    , pgOAuthToken
    , pgPublisherId
    , pgFields
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

-- | A resource alias for @GANPublishersGet@ which the
-- 'PublishersGet'' request conforms to.
type PublishersGetResource =
     Capture "role" GANPublishersGetRole :>
       Capture "roleId" Text :>
         "publisher" :>
           QueryParam "publisherId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Publisher

-- | Retrieves data about a single advertiser if that the requesting
-- advertiser\/publisher has access to it. Only advertisers can look up
-- publishers. Publishers can request information about themselves by
-- omitting the publisherId query parameter.
--
-- /See:/ 'publishersGet'' smart constructor.
data PublishersGet' = PublishersGet'
    { _pgQuotaUser   :: !(Maybe Text)
    , _pgPrettyPrint :: !Bool
    , _pgUserIP      :: !(Maybe Text)
    , _pgRoleId      :: !Text
    , _pgRole        :: !GANPublishersGetRole
    , _pgKey         :: !(Maybe Key)
    , _pgOAuthToken  :: !(Maybe OAuthToken)
    , _pgPublisherId :: !(Maybe Text)
    , _pgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PublishersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgQuotaUser'
--
-- * 'pgPrettyPrint'
--
-- * 'pgUserIP'
--
-- * 'pgRoleId'
--
-- * 'pgRole'
--
-- * 'pgKey'
--
-- * 'pgOAuthToken'
--
-- * 'pgPublisherId'
--
-- * 'pgFields'
publishersGet'
    :: Text -- ^ 'roleId'
    -> GANPublishersGetRole -- ^ 'role'
    -> PublishersGet'
publishersGet' pPgRoleId_ pPgRole_ =
    PublishersGet'
    { _pgQuotaUser = Nothing
    , _pgPrettyPrint = True
    , _pgUserIP = Nothing
    , _pgRoleId = pPgRoleId_
    , _pgRole = pPgRole_
    , _pgKey = Nothing
    , _pgOAuthToken = Nothing
    , _pgPublisherId = Nothing
    , _pgFields = Nothing
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
pgUserIP :: Lens' PublishersGet' (Maybe Text)
pgUserIP = lens _pgUserIP (\ s a -> s{_pgUserIP = a})

-- | The ID of the requesting advertiser or publisher.
pgRoleId :: Lens' PublishersGet' Text
pgRoleId = lens _pgRoleId (\ s a -> s{_pgRoleId = a})

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
pgRole :: Lens' PublishersGet' GANPublishersGetRole
pgRole = lens _pgRole (\ s a -> s{_pgRole = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgKey :: Lens' PublishersGet' (Maybe Key)
pgKey = lens _pgKey (\ s a -> s{_pgKey = a})

-- | OAuth 2.0 token for the current user.
pgOAuthToken :: Lens' PublishersGet' (Maybe OAuthToken)
pgOAuthToken
  = lens _pgOAuthToken (\ s a -> s{_pgOAuthToken = a})

-- | The ID of the publisher to look up. Optional.
pgPublisherId :: Lens' PublishersGet' (Maybe Text)
pgPublisherId
  = lens _pgPublisherId
      (\ s a -> s{_pgPublisherId = a})

-- | Selector specifying which fields to include in a partial response.
pgFields :: Lens' PublishersGet' (Maybe Text)
pgFields = lens _pgFields (\ s a -> s{_pgFields = a})

instance GoogleAuth PublishersGet' where
        authKey = pgKey . _Just
        authToken = pgOAuthToken . _Just

instance GoogleRequest PublishersGet' where
        type Rs PublishersGet' = Publisher
        request = requestWithRoute defReq affiliatesURL
        requestWithRoute r u PublishersGet'{..}
          = go _pgRole _pgRoleId _pgPublisherId _pgQuotaUser
              (Just _pgPrettyPrint)
              _pgUserIP
              _pgFields
              _pgKey
              _pgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PublishersGetResource)
                      r
                      u
