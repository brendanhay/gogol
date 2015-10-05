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
-- Module      : Network.Google.Resource.DataTransfer.Applications.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves information about an application for the given application ID.
--
-- /See:/ <https://developers.google.com/admin-sdk/data-transfer/ Admin Data Transfer API Reference> for @DataTransferApplicationsGet@.
module Network.Google.Resource.DataTransfer.Applications.Get
    (
    -- * REST Resource
      ApplicationsGetResource

    -- * Creating a Request
    , applicationsGet'
    , ApplicationsGet'

    -- * Request Lenses
    , agQuotaUser
    , agPrettyPrint
    , agUserIP
    , agApplicationId
    , agKey
    , agOAuthToken
    , agFields
    ) where

import           Network.Google.DataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @DataTransferApplicationsGet@ which the
-- 'ApplicationsGet'' request conforms to.
type ApplicationsGetResource =
     "applications" :>
       Capture "applicationId" Int64 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Application

-- | Retrieves information about an application for the given application ID.
--
-- /See:/ 'applicationsGet'' smart constructor.
data ApplicationsGet' = ApplicationsGet'
    { _agQuotaUser     :: !(Maybe Text)
    , _agPrettyPrint   :: !Bool
    , _agUserIP        :: !(Maybe Text)
    , _agApplicationId :: !Int64
    , _agKey           :: !(Maybe Key)
    , _agOAuthToken    :: !(Maybe OAuthToken)
    , _agFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ApplicationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agQuotaUser'
--
-- * 'agPrettyPrint'
--
-- * 'agUserIP'
--
-- * 'agApplicationId'
--
-- * 'agKey'
--
-- * 'agOAuthToken'
--
-- * 'agFields'
applicationsGet'
    :: Int64 -- ^ 'applicationId'
    -> ApplicationsGet'
applicationsGet' pAgApplicationId_ =
    ApplicationsGet'
    { _agQuotaUser = Nothing
    , _agPrettyPrint = True
    , _agUserIP = Nothing
    , _agApplicationId = pAgApplicationId_
    , _agKey = Nothing
    , _agOAuthToken = Nothing
    , _agFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
agQuotaUser :: Lens' ApplicationsGet' (Maybe Text)
agQuotaUser
  = lens _agQuotaUser (\ s a -> s{_agQuotaUser = a})

-- | Returns response with indentations and line breaks.
agPrettyPrint :: Lens' ApplicationsGet' Bool
agPrettyPrint
  = lens _agPrettyPrint
      (\ s a -> s{_agPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
agUserIP :: Lens' ApplicationsGet' (Maybe Text)
agUserIP = lens _agUserIP (\ s a -> s{_agUserIP = a})

-- | ID of the application resource to be retrieved.
agApplicationId :: Lens' ApplicationsGet' Int64
agApplicationId
  = lens _agApplicationId
      (\ s a -> s{_agApplicationId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agKey :: Lens' ApplicationsGet' (Maybe Key)
agKey = lens _agKey (\ s a -> s{_agKey = a})

-- | OAuth 2.0 token for the current user.
agOAuthToken :: Lens' ApplicationsGet' (Maybe OAuthToken)
agOAuthToken
  = lens _agOAuthToken (\ s a -> s{_agOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
agFields :: Lens' ApplicationsGet' (Maybe Text)
agFields = lens _agFields (\ s a -> s{_agFields = a})

instance GoogleAuth ApplicationsGet' where
        authKey = agKey . _Just
        authToken = agOAuthToken . _Just

instance GoogleRequest ApplicationsGet' where
        type Rs ApplicationsGet' = Application
        request = requestWithRoute defReq dataTransferURL
        requestWithRoute r u ApplicationsGet'{..}
          = go _agApplicationId _agQuotaUser
              (Just _agPrettyPrint)
              _agUserIP
              _agFields
              _agKey
              _agOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ApplicationsGetResource)
                      r
                      u
