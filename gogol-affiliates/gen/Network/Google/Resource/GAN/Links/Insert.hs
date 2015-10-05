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
-- Module      : Network.Google.Resource.GAN.Links.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new link.
--
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference> for @GANLinksInsert@.
module Network.Google.Resource.GAN.Links.Insert
    (
    -- * REST Resource
      LinksInsertResource

    -- * Creating a Request
    , linksInsert'
    , LinksInsert'

    -- * Request Lenses
    , liQuotaUser
    , liPrettyPrint
    , liUserIP
    , liPayload
    , liRoleId
    , liRole
    , liKey
    , liOAuthToken
    , liFields
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

-- | A resource alias for @GANLinksInsert@ which the
-- 'LinksInsert'' request conforms to.
type LinksInsertResource =
     Capture "role" LinksInsertRole :>
       Capture "roleId" Text :>
         "link" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Link :> Post '[JSON] Link

-- | Inserts a new link.
--
-- /See:/ 'linksInsert'' smart constructor.
data LinksInsert' = LinksInsert'
    { _liQuotaUser   :: !(Maybe Text)
    , _liPrettyPrint :: !Bool
    , _liUserIP      :: !(Maybe Text)
    , _liPayload     :: !Link
    , _liRoleId      :: !Text
    , _liRole        :: !LinksInsertRole
    , _liKey         :: !(Maybe Key)
    , _liOAuthToken  :: !(Maybe OAuthToken)
    , _liFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LinksInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liQuotaUser'
--
-- * 'liPrettyPrint'
--
-- * 'liUserIP'
--
-- * 'liPayload'
--
-- * 'liRoleId'
--
-- * 'liRole'
--
-- * 'liKey'
--
-- * 'liOAuthToken'
--
-- * 'liFields'
linksInsert'
    :: Link -- ^ 'payload'
    -> Text -- ^ 'roleId'
    -> LinksInsertRole -- ^ 'role'
    -> LinksInsert'
linksInsert' pLiPayload_ pLiRoleId_ pLiRole_ =
    LinksInsert'
    { _liQuotaUser = Nothing
    , _liPrettyPrint = True
    , _liUserIP = Nothing
    , _liPayload = pLiPayload_
    , _liRoleId = pLiRoleId_
    , _liRole = pLiRole_
    , _liKey = Nothing
    , _liOAuthToken = Nothing
    , _liFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
liQuotaUser :: Lens' LinksInsert' (Maybe Text)
liQuotaUser
  = lens _liQuotaUser (\ s a -> s{_liQuotaUser = a})

-- | Returns response with indentations and line breaks.
liPrettyPrint :: Lens' LinksInsert' Bool
liPrettyPrint
  = lens _liPrettyPrint
      (\ s a -> s{_liPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
liUserIP :: Lens' LinksInsert' (Maybe Text)
liUserIP = lens _liUserIP (\ s a -> s{_liUserIP = a})

-- | Multipart request metadata.
liPayload :: Lens' LinksInsert' Link
liPayload
  = lens _liPayload (\ s a -> s{_liPayload = a})

-- | The ID of the requesting advertiser or publisher.
liRoleId :: Lens' LinksInsert' Text
liRoleId = lens _liRoleId (\ s a -> s{_liRoleId = a})

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
liRole :: Lens' LinksInsert' LinksInsertRole
liRole = lens _liRole (\ s a -> s{_liRole = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
liKey :: Lens' LinksInsert' (Maybe Key)
liKey = lens _liKey (\ s a -> s{_liKey = a})

-- | OAuth 2.0 token for the current user.
liOAuthToken :: Lens' LinksInsert' (Maybe OAuthToken)
liOAuthToken
  = lens _liOAuthToken (\ s a -> s{_liOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
liFields :: Lens' LinksInsert' (Maybe Text)
liFields = lens _liFields (\ s a -> s{_liFields = a})

instance GoogleAuth LinksInsert' where
        authKey = liKey . _Just
        authToken = liOAuthToken . _Just

instance GoogleRequest LinksInsert' where
        type Rs LinksInsert' = Link
        request = requestWithRoute defReq affiliatesURL
        requestWithRoute r u LinksInsert'{..}
          = go _liRole _liRoleId _liQuotaUser
              (Just _liPrettyPrint)
              _liUserIP
              _liFields
              _liKey
              _liOAuthToken
              (Just AltJSON)
              _liPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LinksInsertResource)
                      r
                      u
