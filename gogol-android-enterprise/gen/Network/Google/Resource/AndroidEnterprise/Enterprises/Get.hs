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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the name and domain of an enterprise.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseEnterprisesGet@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.Get
    (
    -- * REST Resource
      EnterprisesGetResource

    -- * Creating a Request
    , enterprisesGet'
    , EnterprisesGet'

    -- * Request Lenses
    , egQuotaUser
    , egPrettyPrint
    , egEnterpriseId
    , egUserIP
    , egKey
    , egOAuthToken
    , egFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseEnterprisesGet@ which the
-- 'EnterprisesGet'' request conforms to.
type EnterprisesGetResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Enterprise

-- | Retrieves the name and domain of an enterprise.
--
-- /See:/ 'enterprisesGet'' smart constructor.
data EnterprisesGet' = EnterprisesGet'
    { _egQuotaUser    :: !(Maybe Text)
    , _egPrettyPrint  :: !Bool
    , _egEnterpriseId :: !Text
    , _egUserIP       :: !(Maybe Text)
    , _egKey          :: !(Maybe AuthKey)
    , _egOAuthToken   :: !(Maybe OAuthToken)
    , _egFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'egQuotaUser'
--
-- * 'egPrettyPrint'
--
-- * 'egEnterpriseId'
--
-- * 'egUserIP'
--
-- * 'egKey'
--
-- * 'egOAuthToken'
--
-- * 'egFields'
enterprisesGet'
    :: Text -- ^ 'enterpriseId'
    -> EnterprisesGet'
enterprisesGet' pEgEnterpriseId_ =
    EnterprisesGet'
    { _egQuotaUser = Nothing
    , _egPrettyPrint = True
    , _egEnterpriseId = pEgEnterpriseId_
    , _egUserIP = Nothing
    , _egKey = Nothing
    , _egOAuthToken = Nothing
    , _egFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
egQuotaUser :: Lens' EnterprisesGet' (Maybe Text)
egQuotaUser
  = lens _egQuotaUser (\ s a -> s{_egQuotaUser = a})

-- | Returns response with indentations and line breaks.
egPrettyPrint :: Lens' EnterprisesGet' Bool
egPrettyPrint
  = lens _egPrettyPrint
      (\ s a -> s{_egPrettyPrint = a})

-- | The ID of the enterprise.
egEnterpriseId :: Lens' EnterprisesGet' Text
egEnterpriseId
  = lens _egEnterpriseId
      (\ s a -> s{_egEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
egUserIP :: Lens' EnterprisesGet' (Maybe Text)
egUserIP = lens _egUserIP (\ s a -> s{_egUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
egKey :: Lens' EnterprisesGet' (Maybe AuthKey)
egKey = lens _egKey (\ s a -> s{_egKey = a})

-- | OAuth 2.0 token for the current user.
egOAuthToken :: Lens' EnterprisesGet' (Maybe OAuthToken)
egOAuthToken
  = lens _egOAuthToken (\ s a -> s{_egOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
egFields :: Lens' EnterprisesGet' (Maybe Text)
egFields = lens _egFields (\ s a -> s{_egFields = a})

instance GoogleAuth EnterprisesGet' where
        authKey = egKey . _Just
        authToken = egOAuthToken . _Just

instance GoogleRequest EnterprisesGet' where
        type Rs EnterprisesGet' = Enterprise
        request
          = requestWithRoute defReq androidEnterpriseURL
        requestWithRoute r u EnterprisesGet'{..}
          = go _egEnterpriseId _egQuotaUser
              (Just _egPrettyPrint)
              _egUserIP
              _egFields
              _egKey
              _egOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EnterprisesGetResource)
                      r
                      u
