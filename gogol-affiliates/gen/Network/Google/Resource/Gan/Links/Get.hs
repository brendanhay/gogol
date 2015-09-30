{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Gan.Links.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves data about a single link if the requesting
-- advertiser\/publisher has access to it. Advertisers can look up their
-- own links. Publishers can look up visible links or links belonging to
-- advertisers they are in a relationship with.
--
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference> for @GanLinksGet@.
module Gan.Links.Get
    (
    -- * REST Resource
      LinksGetAPI

    -- * Creating a Request
    , linksGet
    , LinksGet

    -- * Request Lenses
    , lgQuotaUser
    , lgPrettyPrint
    , lgUserIp
    , lgRoleId
    , lgRole
    , lgKey
    , lgLinkId
    , lgOauthToken
    , lgFields
    , lgAlt
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

-- | A resource alias for @GanLinksGet@ which the
-- 'LinksGet' request conforms to.
type LinksGetAPI =
     Capture "role" Text :>
       Capture "roleId" Text :>
         "link" :> Capture "linkId" Int64 :> Get '[JSON] Link

-- | Retrieves data about a single link if the requesting
-- advertiser\/publisher has access to it. Advertisers can look up their
-- own links. Publishers can look up visible links or links belonging to
-- advertisers they are in a relationship with.
--
-- /See:/ 'linksGet' smart constructor.
data LinksGet = LinksGet
    { _lgQuotaUser   :: !(Maybe Text)
    , _lgPrettyPrint :: !Bool
    , _lgUserIp      :: !(Maybe Text)
    , _lgRoleId      :: !Text
    , _lgRole        :: !Text
    , _lgKey         :: !(Maybe Text)
    , _lgLinkId      :: !Int64
    , _lgOauthToken  :: !(Maybe Text)
    , _lgFields      :: !(Maybe Text)
    , _lgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LinksGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgQuotaUser'
--
-- * 'lgPrettyPrint'
--
-- * 'lgUserIp'
--
-- * 'lgRoleId'
--
-- * 'lgRole'
--
-- * 'lgKey'
--
-- * 'lgLinkId'
--
-- * 'lgOauthToken'
--
-- * 'lgFields'
--
-- * 'lgAlt'
linksGet
    :: Text -- ^ 'roleId'
    -> Text -- ^ 'role'
    -> Int64 -- ^ 'linkId'
    -> LinksGet
linksGet pLgRoleId_ pLgRole_ pLgLinkId_ =
    LinksGet
    { _lgQuotaUser = Nothing
    , _lgPrettyPrint = True
    , _lgUserIp = Nothing
    , _lgRoleId = pLgRoleId_
    , _lgRole = pLgRole_
    , _lgKey = Nothing
    , _lgLinkId = pLgLinkId_
    , _lgOauthToken = Nothing
    , _lgFields = Nothing
    , _lgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lgQuotaUser :: Lens' LinksGet' (Maybe Text)
lgQuotaUser
  = lens _lgQuotaUser (\ s a -> s{_lgQuotaUser = a})

-- | Returns response with indentations and line breaks.
lgPrettyPrint :: Lens' LinksGet' Bool
lgPrettyPrint
  = lens _lgPrettyPrint
      (\ s a -> s{_lgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lgUserIp :: Lens' LinksGet' (Maybe Text)
lgUserIp = lens _lgUserIp (\ s a -> s{_lgUserIp = a})

-- | The ID of the requesting advertiser or publisher.
lgRoleId :: Lens' LinksGet' Text
lgRoleId = lens _lgRoleId (\ s a -> s{_lgRoleId = a})

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
lgRole :: Lens' LinksGet' Text
lgRole = lens _lgRole (\ s a -> s{_lgRole = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lgKey :: Lens' LinksGet' (Maybe Text)
lgKey = lens _lgKey (\ s a -> s{_lgKey = a})

-- | The ID of the link to look up.
lgLinkId :: Lens' LinksGet' Int64
lgLinkId = lens _lgLinkId (\ s a -> s{_lgLinkId = a})

-- | OAuth 2.0 token for the current user.
lgOauthToken :: Lens' LinksGet' (Maybe Text)
lgOauthToken
  = lens _lgOauthToken (\ s a -> s{_lgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lgFields :: Lens' LinksGet' (Maybe Text)
lgFields = lens _lgFields (\ s a -> s{_lgFields = a})

-- | Data format for the response.
lgAlt :: Lens' LinksGet' Text
lgAlt = lens _lgAlt (\ s a -> s{_lgAlt = a})

instance GoogleRequest LinksGet' where
        type Rs LinksGet' = Link
        request = requestWithRoute defReq affiliatesURL
        requestWithRoute r u LinksGet{..}
          = go _lgQuotaUser _lgPrettyPrint _lgUserIp _lgRoleId
              _lgRole
              _lgKey
              _lgLinkId
              _lgOauthToken
              _lgFields
              _lgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy LinksGetAPI) r u
