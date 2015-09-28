{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidenterprise.Enterprises.Enroll
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Enrolls an enterprise with the calling MDM.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.enterprises.enroll@.
module Network.Google.API.Androidenterprise.Enterprises.Enroll
    (
    -- * REST Resource
      EnterprisesEnrollAPI

    -- * Creating a Request
    , enterprisesEnroll'
    , EnterprisesEnroll'

    -- * Request Lenses
    , eeQuotaUser
    , eePrettyPrint
    , eeUserIp
    , eeToken
    , eeKey
    , eeOauthToken
    , eeFields
    , eeAlt
    ) where

import           Network.Google.Play.Enterprise.Types
import           Network.Google.Prelude

-- | A resource alias for androidenterprise.enterprises.enroll which the
-- 'EnterprisesEnroll'' request conforms to.
type EnterprisesEnrollAPI =
     "enterprises" :>
       "enroll" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "token" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Enterprise

-- | Enrolls an enterprise with the calling MDM.
--
-- /See:/ 'enterprisesEnroll'' smart constructor.
data EnterprisesEnroll' = EnterprisesEnroll'
    { _eeQuotaUser   :: !(Maybe Text)
    , _eePrettyPrint :: !Bool
    , _eeUserIp      :: !(Maybe Text)
    , _eeToken       :: !Text
    , _eeKey         :: !(Maybe Text)
    , _eeOauthToken  :: !(Maybe Text)
    , _eeFields      :: !(Maybe Text)
    , _eeAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesEnroll'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eeQuotaUser'
--
-- * 'eePrettyPrint'
--
-- * 'eeUserIp'
--
-- * 'eeToken'
--
-- * 'eeKey'
--
-- * 'eeOauthToken'
--
-- * 'eeFields'
--
-- * 'eeAlt'
enterprisesEnroll'
    :: Text -- ^ 'token'
    -> EnterprisesEnroll'
enterprisesEnroll' pEeToken_ =
    EnterprisesEnroll'
    { _eeQuotaUser = Nothing
    , _eePrettyPrint = True
    , _eeUserIp = Nothing
    , _eeToken = pEeToken_
    , _eeKey = Nothing
    , _eeOauthToken = Nothing
    , _eeFields = Nothing
    , _eeAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eeQuotaUser :: Lens' EnterprisesEnroll' (Maybe Text)
eeQuotaUser
  = lens _eeQuotaUser (\ s a -> s{_eeQuotaUser = a})

-- | Returns response with indentations and line breaks.
eePrettyPrint :: Lens' EnterprisesEnroll' Bool
eePrettyPrint
  = lens _eePrettyPrint
      (\ s a -> s{_eePrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eeUserIp :: Lens' EnterprisesEnroll' (Maybe Text)
eeUserIp = lens _eeUserIp (\ s a -> s{_eeUserIp = a})

-- | The token provided by the enterprise to register the MDM.
eeToken :: Lens' EnterprisesEnroll' Text
eeToken = lens _eeToken (\ s a -> s{_eeToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eeKey :: Lens' EnterprisesEnroll' (Maybe Text)
eeKey = lens _eeKey (\ s a -> s{_eeKey = a})

-- | OAuth 2.0 token for the current user.
eeOauthToken :: Lens' EnterprisesEnroll' (Maybe Text)
eeOauthToken
  = lens _eeOauthToken (\ s a -> s{_eeOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
eeFields :: Lens' EnterprisesEnroll' (Maybe Text)
eeFields = lens _eeFields (\ s a -> s{_eeFields = a})

-- | Data format for the response.
eeAlt :: Lens' EnterprisesEnroll' Alt
eeAlt = lens _eeAlt (\ s a -> s{_eeAlt = a})

instance GoogleRequest EnterprisesEnroll' where
        type Rs EnterprisesEnroll' = Enterprise
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u EnterprisesEnroll'{..}
          = go _eeQuotaUser (Just _eePrettyPrint) _eeUserIp
              (Just _eeToken)
              _eeKey
              _eeOauthToken
              _eeFields
              (Just _eeAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EnterprisesEnrollAPI)
                      r
                      u
