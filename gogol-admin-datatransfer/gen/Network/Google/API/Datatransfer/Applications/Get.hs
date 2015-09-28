{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Datatransfer.Applications.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves information about an application for the given application ID.
--
-- /See:/ <https://developers.google.com/admin-sdk/data-transfer/ Admin Data Transfer API Reference> for @datatransfer.applications.get@.
module Network.Google.API.Datatransfer.Applications.Get
    (
    -- * REST Resource
      ApplicationsGetAPI

    -- * Creating a Request
    , applicationsGet'
    , ApplicationsGet'

    -- * Request Lenses
    , agQuotaUser
    , agPrettyPrint
    , agUserIp
    , agApplicationId
    , agKey
    , agOauthToken
    , agFields
    , agAlt
    ) where

import           Network.Google.Admin.DataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for datatransfer.applications.get which the
-- 'ApplicationsGet'' request conforms to.
type ApplicationsGetAPI =
     "applications" :>
       Capture "applicationId" Int64 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] Application

-- | Retrieves information about an application for the given application ID.
--
-- /See:/ 'applicationsGet'' smart constructor.
data ApplicationsGet' = ApplicationsGet'
    { _agQuotaUser     :: !(Maybe Text)
    , _agPrettyPrint   :: !Bool
    , _agUserIp        :: !(Maybe Text)
    , _agApplicationId :: !Int64
    , _agKey           :: !(Maybe Text)
    , _agOauthToken    :: !(Maybe Text)
    , _agFields        :: !(Maybe Text)
    , _agAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ApplicationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agQuotaUser'
--
-- * 'agPrettyPrint'
--
-- * 'agUserIp'
--
-- * 'agApplicationId'
--
-- * 'agKey'
--
-- * 'agOauthToken'
--
-- * 'agFields'
--
-- * 'agAlt'
applicationsGet'
    :: Int64 -- ^ 'applicationId'
    -> ApplicationsGet'
applicationsGet' pAgApplicationId_ =
    ApplicationsGet'
    { _agQuotaUser = Nothing
    , _agPrettyPrint = True
    , _agUserIp = Nothing
    , _agApplicationId = pAgApplicationId_
    , _agKey = Nothing
    , _agOauthToken = Nothing
    , _agFields = Nothing
    , _agAlt = JSON
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
agUserIp :: Lens' ApplicationsGet' (Maybe Text)
agUserIp = lens _agUserIp (\ s a -> s{_agUserIp = a})

-- | ID of the application resource to be retrieved.
agApplicationId :: Lens' ApplicationsGet' Int64
agApplicationId
  = lens _agApplicationId
      (\ s a -> s{_agApplicationId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agKey :: Lens' ApplicationsGet' (Maybe Text)
agKey = lens _agKey (\ s a -> s{_agKey = a})

-- | OAuth 2.0 token for the current user.
agOauthToken :: Lens' ApplicationsGet' (Maybe Text)
agOauthToken
  = lens _agOauthToken (\ s a -> s{_agOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
agFields :: Lens' ApplicationsGet' (Maybe Text)
agFields = lens _agFields (\ s a -> s{_agFields = a})

-- | Data format for the response.
agAlt :: Lens' ApplicationsGet' Alt
agAlt = lens _agAlt (\ s a -> s{_agAlt = a})

instance GoogleRequest ApplicationsGet' where
        type Rs ApplicationsGet' = Application
        request
          = requestWithRoute defReq adminDataTransferURL
        requestWithRoute r u ApplicationsGet'{..}
          = go _agQuotaUser (Just _agPrettyPrint) _agUserIp
              _agApplicationId
              _agKey
              _agOauthToken
              _agFields
              (Just _agAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ApplicationsGetAPI)
                      r
                      u
