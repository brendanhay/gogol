{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the binding between the MDM and enterprise. This is now
-- deprecated; use this to unenroll customers that were previously enrolled
-- with the \'insert\' call, then enroll them again with the \'enroll\'
-- call.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseEnterprisesDelete@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.Delete
    (
    -- * REST Resource
      EnterprisesDeleteResource

    -- * Creating a Request
    , enterprisesDelete'
    , EnterprisesDelete'

    -- * Request Lenses
    , eddQuotaUser
    , eddPrettyPrint
    , eddEnterpriseId
    , eddUserIP
    , eddKey
    , eddOAuthToken
    , eddFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseEnterprisesDelete@ which the
-- 'EnterprisesDelete'' request conforms to.
type EnterprisesDeleteResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the binding between the MDM and enterprise. This is now
-- deprecated; use this to unenroll customers that were previously enrolled
-- with the \'insert\' call, then enroll them again with the \'enroll\'
-- call.
--
-- /See:/ 'enterprisesDelete'' smart constructor.
data EnterprisesDelete' = EnterprisesDelete'
    { _eddQuotaUser    :: !(Maybe Text)
    , _eddPrettyPrint  :: !Bool
    , _eddEnterpriseId :: !Text
    , _eddUserIP       :: !(Maybe Text)
    , _eddKey          :: !(Maybe Key)
    , _eddOAuthToken   :: !(Maybe OAuthToken)
    , _eddFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eddQuotaUser'
--
-- * 'eddPrettyPrint'
--
-- * 'eddEnterpriseId'
--
-- * 'eddUserIP'
--
-- * 'eddKey'
--
-- * 'eddOAuthToken'
--
-- * 'eddFields'
enterprisesDelete'
    :: Text -- ^ 'enterpriseId'
    -> EnterprisesDelete'
enterprisesDelete' pEddEnterpriseId_ =
    EnterprisesDelete'
    { _eddQuotaUser = Nothing
    , _eddPrettyPrint = True
    , _eddEnterpriseId = pEddEnterpriseId_
    , _eddUserIP = Nothing
    , _eddKey = Nothing
    , _eddOAuthToken = Nothing
    , _eddFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eddQuotaUser :: Lens' EnterprisesDelete' (Maybe Text)
eddQuotaUser
  = lens _eddQuotaUser (\ s a -> s{_eddQuotaUser = a})

-- | Returns response with indentations and line breaks.
eddPrettyPrint :: Lens' EnterprisesDelete' Bool
eddPrettyPrint
  = lens _eddPrettyPrint
      (\ s a -> s{_eddPrettyPrint = a})

-- | The ID of the enterprise.
eddEnterpriseId :: Lens' EnterprisesDelete' Text
eddEnterpriseId
  = lens _eddEnterpriseId
      (\ s a -> s{_eddEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eddUserIP :: Lens' EnterprisesDelete' (Maybe Text)
eddUserIP
  = lens _eddUserIP (\ s a -> s{_eddUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eddKey :: Lens' EnterprisesDelete' (Maybe Key)
eddKey = lens _eddKey (\ s a -> s{_eddKey = a})

-- | OAuth 2.0 token for the current user.
eddOAuthToken :: Lens' EnterprisesDelete' (Maybe OAuthToken)
eddOAuthToken
  = lens _eddOAuthToken
      (\ s a -> s{_eddOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
eddFields :: Lens' EnterprisesDelete' (Maybe Text)
eddFields
  = lens _eddFields (\ s a -> s{_eddFields = a})

instance GoogleAuth EnterprisesDelete' where
        authKey = eddKey . _Just
        authToken = eddOAuthToken . _Just

instance GoogleRequest EnterprisesDelete' where
        type Rs EnterprisesDelete' = ()
        request
          = requestWithRoute defReq androidEnterpriseURL
        requestWithRoute r u EnterprisesDelete'{..}
          = go _eddEnterpriseId _eddQuotaUser
              (Just _eddPrettyPrint)
              _eddUserIP
              _eddFields
              _eddKey
              _eddOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EnterprisesDeleteResource)
                      r
                      u
