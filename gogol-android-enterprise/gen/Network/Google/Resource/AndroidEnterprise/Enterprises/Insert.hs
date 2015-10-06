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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Establishes the binding between the MDM and an enterprise. This is now
-- deprecated; use enroll instead.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseEnterprisesInsert@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.Insert
    (
    -- * REST Resource
      EnterprisesInsertResource

    -- * Creating a Request
    , enterprisesInsert'
    , EnterprisesInsert'

    -- * Request Lenses
    , eiQuotaUser
    , eiPrettyPrint
    , eiUserIP
    , eiToken
    , eiPayload
    , eiKey
    , eiOAuthToken
    , eiFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseEnterprisesInsert@ which the
-- 'EnterprisesInsert'' request conforms to.
type EnterprisesInsertResource =
     "enterprises" :>
       QueryParam "token" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Enterprise :> Post '[JSON] Enterprise

-- | Establishes the binding between the MDM and an enterprise. This is now
-- deprecated; use enroll instead.
--
-- /See:/ 'enterprisesInsert'' smart constructor.
data EnterprisesInsert' = EnterprisesInsert'
    { _eiQuotaUser   :: !(Maybe Text)
    , _eiPrettyPrint :: !Bool
    , _eiUserIP      :: !(Maybe Text)
    , _eiToken       :: !Text
    , _eiPayload     :: !Enterprise
    , _eiKey         :: !(Maybe AuthKey)
    , _eiOAuthToken  :: !(Maybe OAuthToken)
    , _eiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiQuotaUser'
--
-- * 'eiPrettyPrint'
--
-- * 'eiUserIP'
--
-- * 'eiToken'
--
-- * 'eiPayload'
--
-- * 'eiKey'
--
-- * 'eiOAuthToken'
--
-- * 'eiFields'
enterprisesInsert'
    :: Text -- ^ 'token'
    -> Enterprise -- ^ 'payload'
    -> EnterprisesInsert'
enterprisesInsert' pEiToken_ pEiPayload_ =
    EnterprisesInsert'
    { _eiQuotaUser = Nothing
    , _eiPrettyPrint = True
    , _eiUserIP = Nothing
    , _eiToken = pEiToken_
    , _eiPayload = pEiPayload_
    , _eiKey = Nothing
    , _eiOAuthToken = Nothing
    , _eiFields = Nothing
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
eiUserIP :: Lens' EnterprisesInsert' (Maybe Text)
eiUserIP = lens _eiUserIP (\ s a -> s{_eiUserIP = a})

-- | The token provided by the enterprise to register the MDM.
eiToken :: Lens' EnterprisesInsert' Text
eiToken = lens _eiToken (\ s a -> s{_eiToken = a})

-- | Multipart request metadata.
eiPayload :: Lens' EnterprisesInsert' Enterprise
eiPayload
  = lens _eiPayload (\ s a -> s{_eiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eiKey :: Lens' EnterprisesInsert' (Maybe AuthKey)
eiKey = lens _eiKey (\ s a -> s{_eiKey = a})

-- | OAuth 2.0 token for the current user.
eiOAuthToken :: Lens' EnterprisesInsert' (Maybe OAuthToken)
eiOAuthToken
  = lens _eiOAuthToken (\ s a -> s{_eiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
eiFields :: Lens' EnterprisesInsert' (Maybe Text)
eiFields = lens _eiFields (\ s a -> s{_eiFields = a})

instance GoogleAuth EnterprisesInsert' where
        authKey = eiKey . _Just
        authToken = eiOAuthToken . _Just

instance GoogleRequest EnterprisesInsert' where
        type Rs EnterprisesInsert' = Enterprise
        request = requestWith androidEnterpriseRequest
        requestWith rq EnterprisesInsert'{..}
          = go (Just _eiToken) _eiQuotaUser
              (Just _eiPrettyPrint)
              _eiUserIP
              _eiFields
              _eiKey
              _eiOAuthToken
              (Just AltJSON)
              _eiPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy EnterprisesInsertResource)
                      rq
