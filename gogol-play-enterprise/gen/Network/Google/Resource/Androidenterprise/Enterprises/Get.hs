{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Enterprises.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the name and domain of an enterprise.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseEnterprisesGet@.
module Androidenterprise.Enterprises.Get
    (
    -- * REST Resource
      EnterprisesGetAPI

    -- * Creating a Request
    , enterprisesGet
    , EnterprisesGet

    -- * Request Lenses
    , egQuotaUser
    , egPrettyPrint
    , egEnterpriseId
    , egUserIp
    , egKey
    , egOauthToken
    , egFields
    , egAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseEnterprisesGet@ which the
-- 'EnterprisesGet' request conforms to.
type EnterprisesGetAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :> Get '[JSON] Enterprise

-- | Retrieves the name and domain of an enterprise.
--
-- /See:/ 'enterprisesGet' smart constructor.
data EnterprisesGet = EnterprisesGet
    { _egQuotaUser    :: !(Maybe Text)
    , _egPrettyPrint  :: !Bool
    , _egEnterpriseId :: !Text
    , _egUserIp       :: !(Maybe Text)
    , _egKey          :: !(Maybe Text)
    , _egOauthToken   :: !(Maybe Text)
    , _egFields       :: !(Maybe Text)
    , _egAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'egUserIp'
--
-- * 'egKey'
--
-- * 'egOauthToken'
--
-- * 'egFields'
--
-- * 'egAlt'
enterprisesGet
    :: Text -- ^ 'enterpriseId'
    -> EnterprisesGet
enterprisesGet pEgEnterpriseId_ =
    EnterprisesGet
    { _egQuotaUser = Nothing
    , _egPrettyPrint = True
    , _egEnterpriseId = pEgEnterpriseId_
    , _egUserIp = Nothing
    , _egKey = Nothing
    , _egOauthToken = Nothing
    , _egFields = Nothing
    , _egAlt = "json"
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
egUserIp :: Lens' EnterprisesGet' (Maybe Text)
egUserIp = lens _egUserIp (\ s a -> s{_egUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
egKey :: Lens' EnterprisesGet' (Maybe Text)
egKey = lens _egKey (\ s a -> s{_egKey = a})

-- | OAuth 2.0 token for the current user.
egOauthToken :: Lens' EnterprisesGet' (Maybe Text)
egOauthToken
  = lens _egOauthToken (\ s a -> s{_egOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
egFields :: Lens' EnterprisesGet' (Maybe Text)
egFields = lens _egFields (\ s a -> s{_egFields = a})

-- | Data format for the response.
egAlt :: Lens' EnterprisesGet' Text
egAlt = lens _egAlt (\ s a -> s{_egAlt = a})

instance GoogleRequest EnterprisesGet' where
        type Rs EnterprisesGet' = Enterprise
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u EnterprisesGet{..}
          = go _egQuotaUser _egPrettyPrint _egEnterpriseId
              _egUserIp
              _egKey
              _egOauthToken
              _egFields
              _egAlt
          where go
                  = clientWithRoute (Proxy :: Proxy EnterprisesGetAPI)
                      r
                      u
