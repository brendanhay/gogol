{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Gan.Links.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new link.
--
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference> for @GanLinksInsert@.
module Gan.Links.Insert
    (
    -- * REST Resource
      LinksInsertAPI

    -- * Creating a Request
    , linksInsert
    , LinksInsert

    -- * Request Lenses
    , liQuotaUser
    , liPrettyPrint
    , liUserIp
    , liRoleId
    , liRole
    , liKey
    , liOauthToken
    , liFields
    , liAlt
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

-- | A resource alias for @GanLinksInsert@ which the
-- 'LinksInsert' request conforms to.
type LinksInsertAPI =
     Capture "role" Text :>
       Capture "roleId" Text :> "link" :> Post '[JSON] Link

-- | Inserts a new link.
--
-- /See:/ 'linksInsert' smart constructor.
data LinksInsert = LinksInsert
    { _liQuotaUser   :: !(Maybe Text)
    , _liPrettyPrint :: !Bool
    , _liUserIp      :: !(Maybe Text)
    , _liRoleId      :: !Text
    , _liRole        :: !Text
    , _liKey         :: !(Maybe Text)
    , _liOauthToken  :: !(Maybe Text)
    , _liFields      :: !(Maybe Text)
    , _liAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LinksInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liQuotaUser'
--
-- * 'liPrettyPrint'
--
-- * 'liUserIp'
--
-- * 'liRoleId'
--
-- * 'liRole'
--
-- * 'liKey'
--
-- * 'liOauthToken'
--
-- * 'liFields'
--
-- * 'liAlt'
linksInsert
    :: Text -- ^ 'roleId'
    -> Text -- ^ 'role'
    -> LinksInsert
linksInsert pLiRoleId_ pLiRole_ =
    LinksInsert
    { _liQuotaUser = Nothing
    , _liPrettyPrint = True
    , _liUserIp = Nothing
    , _liRoleId = pLiRoleId_
    , _liRole = pLiRole_
    , _liKey = Nothing
    , _liOauthToken = Nothing
    , _liFields = Nothing
    , _liAlt = "json"
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
liUserIp :: Lens' LinksInsert' (Maybe Text)
liUserIp = lens _liUserIp (\ s a -> s{_liUserIp = a})

-- | The ID of the requesting advertiser or publisher.
liRoleId :: Lens' LinksInsert' Text
liRoleId = lens _liRoleId (\ s a -> s{_liRoleId = a})

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
liRole :: Lens' LinksInsert' Text
liRole = lens _liRole (\ s a -> s{_liRole = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
liKey :: Lens' LinksInsert' (Maybe Text)
liKey = lens _liKey (\ s a -> s{_liKey = a})

-- | OAuth 2.0 token for the current user.
liOauthToken :: Lens' LinksInsert' (Maybe Text)
liOauthToken
  = lens _liOauthToken (\ s a -> s{_liOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
liFields :: Lens' LinksInsert' (Maybe Text)
liFields = lens _liFields (\ s a -> s{_liFields = a})

-- | Data format for the response.
liAlt :: Lens' LinksInsert' Text
liAlt = lens _liAlt (\ s a -> s{_liAlt = a})

instance GoogleRequest LinksInsert' where
        type Rs LinksInsert' = Link
        request = requestWithRoute defReq affiliatesURL
        requestWithRoute r u LinksInsert{..}
          = go _liQuotaUser _liPrettyPrint _liUserIp _liRoleId
              _liRole
              _liKey
              _liOauthToken
              _liFields
              _liAlt
          where go
                  = clientWithRoute (Proxy :: Proxy LinksInsertAPI) r u
