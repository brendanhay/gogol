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
-- Module      : Network.Google.Resource.Androidenterprise.Grouplicenseusers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the IDs of the users who have been granted entitlements under
-- the license.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseGrouplicenseusersList@.
module Network.Google.Resource.Androidenterprise.Grouplicenseusers.List
    (
    -- * REST Resource
      GrouplicenseusersListResource

    -- * Creating a Request
    , grouplicenseusersList'
    , GrouplicenseusersList'

    -- * Request Lenses
    , gQuotaUser
    , gPrettyPrint
    , gEnterpriseId
    , gUserIp
    , gKey
    , gOauthToken
    , gGroupLicenseId
    , gFields
    , gAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseGrouplicenseusersList@ which the
-- 'GrouplicenseusersList'' request conforms to.
type GrouplicenseusersListResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "groupLicenses" :>
           Capture "groupLicenseId" Text :>
             "users" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Get '[JSON] GroupLicenseUsersListResponse

-- | Retrieves the IDs of the users who have been granted entitlements under
-- the license.
--
-- /See:/ 'grouplicenseusersList'' smart constructor.
data GrouplicenseusersList' = GrouplicenseusersList'
    { _gQuotaUser      :: !(Maybe Text)
    , _gPrettyPrint    :: !Bool
    , _gEnterpriseId   :: !Text
    , _gUserIp         :: !(Maybe Text)
    , _gKey            :: !(Maybe Text)
    , _gOauthToken     :: !(Maybe Text)
    , _gGroupLicenseId :: !Text
    , _gFields         :: !(Maybe Text)
    , _gAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GrouplicenseusersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gQuotaUser'
--
-- * 'gPrettyPrint'
--
-- * 'gEnterpriseId'
--
-- * 'gUserIp'
--
-- * 'gKey'
--
-- * 'gOauthToken'
--
-- * 'gGroupLicenseId'
--
-- * 'gFields'
--
-- * 'gAlt'
grouplicenseusersList'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'groupLicenseId'
    -> GrouplicenseusersList'
grouplicenseusersList' pGEnterpriseId_ pGGroupLicenseId_ =
    GrouplicenseusersList'
    { _gQuotaUser = Nothing
    , _gPrettyPrint = True
    , _gEnterpriseId = pGEnterpriseId_
    , _gUserIp = Nothing
    , _gKey = Nothing
    , _gOauthToken = Nothing
    , _gGroupLicenseId = pGGroupLicenseId_
    , _gFields = Nothing
    , _gAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gQuotaUser :: Lens' GrouplicenseusersList' (Maybe Text)
gQuotaUser
  = lens _gQuotaUser (\ s a -> s{_gQuotaUser = a})

-- | Returns response with indentations and line breaks.
gPrettyPrint :: Lens' GrouplicenseusersList' Bool
gPrettyPrint
  = lens _gPrettyPrint (\ s a -> s{_gPrettyPrint = a})

-- | The ID of the enterprise.
gEnterpriseId :: Lens' GrouplicenseusersList' Text
gEnterpriseId
  = lens _gEnterpriseId
      (\ s a -> s{_gEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gUserIp :: Lens' GrouplicenseusersList' (Maybe Text)
gUserIp = lens _gUserIp (\ s a -> s{_gUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gKey :: Lens' GrouplicenseusersList' (Maybe Text)
gKey = lens _gKey (\ s a -> s{_gKey = a})

-- | OAuth 2.0 token for the current user.
gOauthToken :: Lens' GrouplicenseusersList' (Maybe Text)
gOauthToken
  = lens _gOauthToken (\ s a -> s{_gOauthToken = a})

-- | The ID of the product the group license is for, e.g.
-- \"app:com.google.android.gm\".
gGroupLicenseId :: Lens' GrouplicenseusersList' Text
gGroupLicenseId
  = lens _gGroupLicenseId
      (\ s a -> s{_gGroupLicenseId = a})

-- | Selector specifying which fields to include in a partial response.
gFields :: Lens' GrouplicenseusersList' (Maybe Text)
gFields = lens _gFields (\ s a -> s{_gFields = a})

-- | Data format for the response.
gAlt :: Lens' GrouplicenseusersList' Alt
gAlt = lens _gAlt (\ s a -> s{_gAlt = a})

instance GoogleRequest GrouplicenseusersList' where
        type Rs GrouplicenseusersList' =
             GroupLicenseUsersListResponse
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u GrouplicenseusersList'{..}
          = go _gQuotaUser (Just _gPrettyPrint) _gEnterpriseId
              _gUserIp
              _gKey
              _gOauthToken
              _gGroupLicenseId
              _gFields
              (Just _gAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GrouplicenseusersListResource)
                      r
                      u
