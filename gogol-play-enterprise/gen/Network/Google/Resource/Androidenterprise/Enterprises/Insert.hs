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
-- Module      : Network.Google.Resource.Androidenterprise.Enterprises.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Establishes the binding between the MDM and an enterprise. This is now
-- deprecated; use enroll instead.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseEnterprisesInsert@.
module Network.Google.Resource.Androidenterprise.Enterprises.Insert
    (
    -- * REST Resource
      EnterprisesInsertResource

    -- * Creating a Request
    , enterprisesInsert'
    , EnterprisesInsert'

    -- * Request Lenses
    , eiQuotaUser
    , eiPrettyPrint
    , eiUserIp
    , eiToken
    , eiKey
    , eiOauthToken
    , eiFields
    , eiAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseEnterprisesInsert@ which the
-- 'EnterprisesInsert'' request conforms to.
type EnterprisesInsertResource =
     "enterprises" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "token" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] Enterprise

-- | Establishes the binding between the MDM and an enterprise. This is now
-- deprecated; use enroll instead.
--
-- /See:/ 'enterprisesInsert'' smart constructor.
data EnterprisesInsert' = EnterprisesInsert'
    { _eiQuotaUser   :: !(Maybe Text)
    , _eiPrettyPrint :: !Bool
    , _eiUserIp      :: !(Maybe Text)
    , _eiToken       :: !Text
    , _eiKey         :: !(Maybe Text)
    , _eiOauthToken  :: !(Maybe Text)
    , _eiFields      :: !(Maybe Text)
    , _eiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiQuotaUser'
--
-- * 'eiPrettyPrint'
--
-- * 'eiUserIp'
--
-- * 'eiToken'
--
-- * 'eiKey'
--
-- * 'eiOauthToken'
--
-- * 'eiFields'
--
-- * 'eiAlt'
enterprisesInsert'
    :: Text -- ^ 'token'
    -> EnterprisesInsert'
enterprisesInsert' pEiToken_ =
    EnterprisesInsert'
    { _eiQuotaUser = Nothing
    , _eiPrettyPrint = True
    , _eiUserIp = Nothing
    , _eiToken = pEiToken_
    , _eiKey = Nothing
    , _eiOauthToken = Nothing
    , _eiFields = Nothing
    , _eiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eiQuotaUser :: Lens' EnterprisesInsert' (Maybe Text)
eiQuotaUser
  = lens _eiQuotaUser (\ s a -> s{_eiQuotaUser = a})

-- | Returns response with indentations and line breaks.
eiPrettyPrint :: Lens' EnterprisesInsert' Bool
eiPrettyPrint
  = lens _eiPrettyPrint
      (\ s a -> s{_eiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eiUserIp :: Lens' EnterprisesInsert' (Maybe Text)
eiUserIp = lens _eiUserIp (\ s a -> s{_eiUserIp = a})

-- | The token provided by the enterprise to register the MDM.
eiToken :: Lens' EnterprisesInsert' Text
eiToken = lens _eiToken (\ s a -> s{_eiToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eiKey :: Lens' EnterprisesInsert' (Maybe Text)
eiKey = lens _eiKey (\ s a -> s{_eiKey = a})

-- | OAuth 2.0 token for the current user.
eiOauthToken :: Lens' EnterprisesInsert' (Maybe Text)
eiOauthToken
  = lens _eiOauthToken (\ s a -> s{_eiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
eiFields :: Lens' EnterprisesInsert' (Maybe Text)
eiFields = lens _eiFields (\ s a -> s{_eiFields = a})

-- | Data format for the response.
eiAlt :: Lens' EnterprisesInsert' Alt
eiAlt = lens _eiAlt (\ s a -> s{_eiAlt = a})

instance GoogleRequest EnterprisesInsert' where
        type Rs EnterprisesInsert' = Enterprise
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u EnterprisesInsert'{..}
          = go _eiQuotaUser (Just _eiPrettyPrint) _eiUserIp
              (Just _eiToken)
              _eiKey
              _eiOauthToken
              _eiFields
              (Just _eiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EnterprisesInsertResource)
                      r
                      u
