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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Looks up an enterprise by domain name.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseEnterprisesList@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.List
    (
    -- * REST Resource
      EnterprisesListResource

    -- * Creating a Request
    , enterprisesList'
    , EnterprisesList'

    -- * Request Lenses
    , ellQuotaUser
    , ellPrettyPrint
    , ellUserIP
    , ellDomain
    , ellKey
    , ellOAuthToken
    , ellFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseEnterprisesList@ which the
-- 'EnterprisesList'' request conforms to.
type EnterprisesListResource =
     "enterprises" :>
       QueryParam "domain" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] EnterprisesListResponse

-- | Looks up an enterprise by domain name.
--
-- /See:/ 'enterprisesList'' smart constructor.
data EnterprisesList' = EnterprisesList'
    { _ellQuotaUser   :: !(Maybe Text)
    , _ellPrettyPrint :: !Bool
    , _ellUserIP      :: !(Maybe Text)
    , _ellDomain      :: !Text
    , _ellKey         :: !(Maybe AuthKey)
    , _ellOAuthToken  :: !(Maybe OAuthToken)
    , _ellFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ellQuotaUser'
--
-- * 'ellPrettyPrint'
--
-- * 'ellUserIP'
--
-- * 'ellDomain'
--
-- * 'ellKey'
--
-- * 'ellOAuthToken'
--
-- * 'ellFields'
enterprisesList'
    :: Text -- ^ 'domain'
    -> EnterprisesList'
enterprisesList' pEllDomain_ =
    EnterprisesList'
    { _ellQuotaUser = Nothing
    , _ellPrettyPrint = True
    , _ellUserIP = Nothing
    , _ellDomain = pEllDomain_
    , _ellKey = Nothing
    , _ellOAuthToken = Nothing
    , _ellFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ellQuotaUser :: Lens' EnterprisesList' (Maybe Text)
ellQuotaUser
  = lens _ellQuotaUser (\ s a -> s{_ellQuotaUser = a})

-- | Returns response with indentations and line breaks.
ellPrettyPrint :: Lens' EnterprisesList' Bool
ellPrettyPrint
  = lens _ellPrettyPrint
      (\ s a -> s{_ellPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ellUserIP :: Lens' EnterprisesList' (Maybe Text)
ellUserIP
  = lens _ellUserIP (\ s a -> s{_ellUserIP = a})

-- | The exact primary domain name of the enterprise to look up.
ellDomain :: Lens' EnterprisesList' Text
ellDomain
  = lens _ellDomain (\ s a -> s{_ellDomain = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ellKey :: Lens' EnterprisesList' (Maybe AuthKey)
ellKey = lens _ellKey (\ s a -> s{_ellKey = a})

-- | OAuth 2.0 token for the current user.
ellOAuthToken :: Lens' EnterprisesList' (Maybe OAuthToken)
ellOAuthToken
  = lens _ellOAuthToken
      (\ s a -> s{_ellOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ellFields :: Lens' EnterprisesList' (Maybe Text)
ellFields
  = lens _ellFields (\ s a -> s{_ellFields = a})

instance GoogleAuth EnterprisesList' where
        authKey = ellKey . _Just
        authToken = ellOAuthToken . _Just

instance GoogleRequest EnterprisesList' where
        type Rs EnterprisesList' = EnterprisesListResponse
        request = requestWith androidEnterpriseRequest
        requestWith rq EnterprisesList'{..}
          = go (Just _ellDomain) _ellQuotaUser
              (Just _ellPrettyPrint)
              _ellUserIP
              _ellFields
              _ellKey
              _ellOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy EnterprisesListResource)
                      rq
