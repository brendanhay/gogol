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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.Unenroll
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Unenrolls an enterprise from the calling MDM.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseEnterprisesUnenroll@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.Unenroll
    (
    -- * REST Resource
      EnterprisesUnenrollResource

    -- * Creating a Request
    , enterprisesUnenroll'
    , EnterprisesUnenroll'

    -- * Request Lenses
    , euQuotaUser
    , euPrettyPrint
    , euEnterpriseId
    , euUserIP
    , euKey
    , euOAuthToken
    , euFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseEnterprisesUnenroll@ which the
-- 'EnterprisesUnenroll'' request conforms to.
type EnterprisesUnenrollResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "unenroll" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Unenrolls an enterprise from the calling MDM.
--
-- /See:/ 'enterprisesUnenroll'' smart constructor.
data EnterprisesUnenroll' = EnterprisesUnenroll'
    { _euQuotaUser    :: !(Maybe Text)
    , _euPrettyPrint  :: !Bool
    , _euEnterpriseId :: !Text
    , _euUserIP       :: !(Maybe Text)
    , _euKey          :: !(Maybe Key)
    , _euOAuthToken   :: !(Maybe OAuthToken)
    , _euFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesUnenroll'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'euQuotaUser'
--
-- * 'euPrettyPrint'
--
-- * 'euEnterpriseId'
--
-- * 'euUserIP'
--
-- * 'euKey'
--
-- * 'euOAuthToken'
--
-- * 'euFields'
enterprisesUnenroll'
    :: Text -- ^ 'enterpriseId'
    -> EnterprisesUnenroll'
enterprisesUnenroll' pEuEnterpriseId_ =
    EnterprisesUnenroll'
    { _euQuotaUser = Nothing
    , _euPrettyPrint = True
    , _euEnterpriseId = pEuEnterpriseId_
    , _euUserIP = Nothing
    , _euKey = Nothing
    , _euOAuthToken = Nothing
    , _euFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
euQuotaUser :: Lens' EnterprisesUnenroll' (Maybe Text)
euQuotaUser
  = lens _euQuotaUser (\ s a -> s{_euQuotaUser = a})

-- | Returns response with indentations and line breaks.
euPrettyPrint :: Lens' EnterprisesUnenroll' Bool
euPrettyPrint
  = lens _euPrettyPrint
      (\ s a -> s{_euPrettyPrint = a})

-- | The ID of the enterprise.
euEnterpriseId :: Lens' EnterprisesUnenroll' Text
euEnterpriseId
  = lens _euEnterpriseId
      (\ s a -> s{_euEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
euUserIP :: Lens' EnterprisesUnenroll' (Maybe Text)
euUserIP = lens _euUserIP (\ s a -> s{_euUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
euKey :: Lens' EnterprisesUnenroll' (Maybe Key)
euKey = lens _euKey (\ s a -> s{_euKey = a})

-- | OAuth 2.0 token for the current user.
euOAuthToken :: Lens' EnterprisesUnenroll' (Maybe OAuthToken)
euOAuthToken
  = lens _euOAuthToken (\ s a -> s{_euOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
euFields :: Lens' EnterprisesUnenroll' (Maybe Text)
euFields = lens _euFields (\ s a -> s{_euFields = a})

instance GoogleAuth EnterprisesUnenroll' where
        authKey = euKey . _Just
        authToken = euOAuthToken . _Just

instance GoogleRequest EnterprisesUnenroll' where
        type Rs EnterprisesUnenroll' = ()
        request
          = requestWithRoute defReq androidEnterpriseURL
        requestWithRoute r u EnterprisesUnenroll'{..}
          = go _euEnterpriseId _euQuotaUser
              (Just _euPrettyPrint)
              _euUserIP
              _euFields
              _euKey
              _euOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EnterprisesUnenrollResource)
                      r
                      u
