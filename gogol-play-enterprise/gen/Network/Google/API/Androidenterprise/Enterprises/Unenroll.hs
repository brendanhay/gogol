{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidenterprise.Enterprises.Unenroll
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Unenrolls an enterprise from the calling MDM.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.enterprises.unenroll@.
module Network.Google.API.Androidenterprise.Enterprises.Unenroll
    (
    -- * REST Resource
      EnterprisesUnenrollAPI

    -- * Creating a Request
    , enterprisesUnenroll'
    , EnterprisesUnenroll'

    -- * Request Lenses
    , euuQuotaUser
    , euuPrettyPrint
    , euuEnterpriseId
    , euuUserIp
    , euuKey
    , euuOauthToken
    , euuFields
    , euuAlt
    ) where

import           Network.Google.Play.Enterprise.Types
import           Network.Google.Prelude

-- | A resource alias for androidenterprise.enterprises.unenroll which the
-- 'EnterprisesUnenroll'' request conforms to.
type EnterprisesUnenrollAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "unenroll" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] ()

-- | Unenrolls an enterprise from the calling MDM.
--
-- /See:/ 'enterprisesUnenroll'' smart constructor.
data EnterprisesUnenroll' = EnterprisesUnenroll'
    { _euuQuotaUser    :: !(Maybe Text)
    , _euuPrettyPrint  :: !Bool
    , _euuEnterpriseId :: !Text
    , _euuUserIp       :: !(Maybe Text)
    , _euuKey          :: !(Maybe Text)
    , _euuOauthToken   :: !(Maybe Text)
    , _euuFields       :: !(Maybe Text)
    , _euuAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesUnenroll'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'euuQuotaUser'
--
-- * 'euuPrettyPrint'
--
-- * 'euuEnterpriseId'
--
-- * 'euuUserIp'
--
-- * 'euuKey'
--
-- * 'euuOauthToken'
--
-- * 'euuFields'
--
-- * 'euuAlt'
enterprisesUnenroll'
    :: Text -- ^ 'enterpriseId'
    -> EnterprisesUnenroll'
enterprisesUnenroll' pEuuEnterpriseId_ =
    EnterprisesUnenroll'
    { _euuQuotaUser = Nothing
    , _euuPrettyPrint = True
    , _euuEnterpriseId = pEuuEnterpriseId_
    , _euuUserIp = Nothing
    , _euuKey = Nothing
    , _euuOauthToken = Nothing
    , _euuFields = Nothing
    , _euuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
euuQuotaUser :: Lens' EnterprisesUnenroll' (Maybe Text)
euuQuotaUser
  = lens _euuQuotaUser (\ s a -> s{_euuQuotaUser = a})

-- | Returns response with indentations and line breaks.
euuPrettyPrint :: Lens' EnterprisesUnenroll' Bool
euuPrettyPrint
  = lens _euuPrettyPrint
      (\ s a -> s{_euuPrettyPrint = a})

-- | The ID of the enterprise.
euuEnterpriseId :: Lens' EnterprisesUnenroll' Text
euuEnterpriseId
  = lens _euuEnterpriseId
      (\ s a -> s{_euuEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
euuUserIp :: Lens' EnterprisesUnenroll' (Maybe Text)
euuUserIp
  = lens _euuUserIp (\ s a -> s{_euuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
euuKey :: Lens' EnterprisesUnenroll' (Maybe Text)
euuKey = lens _euuKey (\ s a -> s{_euuKey = a})

-- | OAuth 2.0 token for the current user.
euuOauthToken :: Lens' EnterprisesUnenroll' (Maybe Text)
euuOauthToken
  = lens _euuOauthToken
      (\ s a -> s{_euuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
euuFields :: Lens' EnterprisesUnenroll' (Maybe Text)
euuFields
  = lens _euuFields (\ s a -> s{_euuFields = a})

-- | Data format for the response.
euuAlt :: Lens' EnterprisesUnenroll' Alt
euuAlt = lens _euuAlt (\ s a -> s{_euuAlt = a})

instance GoogleRequest EnterprisesUnenroll' where
        type Rs EnterprisesUnenroll' = ()
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u EnterprisesUnenroll'{..}
          = go _euuQuotaUser (Just _euuPrettyPrint)
              _euuEnterpriseId
              _euuUserIp
              _euuKey
              _euuOauthToken
              _euuFields
              (Just _euuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EnterprisesUnenrollAPI)
                      r
                      u
