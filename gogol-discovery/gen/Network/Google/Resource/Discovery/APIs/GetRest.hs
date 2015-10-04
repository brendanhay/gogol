{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Discovery.APIs.GetRest
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve the description of a particular version of an api.
--
-- /See:/ <https://developers.google.com/discovery/ APIs Discovery Service Reference> for @DiscoveryAPIsGetRest@.
module Network.Google.Resource.Discovery.APIs.GetRest
    (
    -- * REST Resource
      APIsGetRestResource

    -- * Creating a Request
    , apisGetRest'
    , APIsGetRest'

    -- * Request Lenses
    , agrQuotaUser
    , agrPrettyPrint
    , agrUserIP
    , agrKey
    , agrVersion
    , agrAPI
    , agrOAuthToken
    , agrFields
    ) where

import           Network.Google.Discovery.Types
import           Network.Google.Prelude

-- | A resource alias for @DiscoveryAPIsGetRest@ which the
-- 'APIsGetRest'' request conforms to.
type APIsGetRestResource =
     "apis" :>
       Capture "api" Text :>
         Capture "version" Text :>
           "rest" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] RestDescription

-- | Retrieve the description of a particular version of an api.
--
-- /See:/ 'apisGetRest'' smart constructor.
data APIsGetRest' = APIsGetRest'
    { _agrQuotaUser   :: !(Maybe Text)
    , _agrPrettyPrint :: !Bool
    , _agrUserIP      :: !(Maybe Text)
    , _agrKey         :: !(Maybe Key)
    , _agrVersion     :: !Text
    , _agrAPI         :: !Text
    , _agrOAuthToken  :: !(Maybe OAuthToken)
    , _agrFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'APIsGetRest'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agrQuotaUser'
--
-- * 'agrPrettyPrint'
--
-- * 'agrUserIP'
--
-- * 'agrKey'
--
-- * 'agrVersion'
--
-- * 'agrAPI'
--
-- * 'agrOAuthToken'
--
-- * 'agrFields'
apisGetRest'
    :: Text -- ^ 'version'
    -> Text -- ^ 'api'
    -> APIsGetRest'
apisGetRest' pAgrVersion_ pAgrAPI_ =
    APIsGetRest'
    { _agrQuotaUser = Nothing
    , _agrPrettyPrint = True
    , _agrUserIP = Nothing
    , _agrKey = Nothing
    , _agrVersion = pAgrVersion_
    , _agrAPI = pAgrAPI_
    , _agrOAuthToken = Nothing
    , _agrFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
agrQuotaUser :: Lens' APIsGetRest' (Maybe Text)
agrQuotaUser
  = lens _agrQuotaUser (\ s a -> s{_agrQuotaUser = a})

-- | Returns response with indentations and line breaks.
agrPrettyPrint :: Lens' APIsGetRest' Bool
agrPrettyPrint
  = lens _agrPrettyPrint
      (\ s a -> s{_agrPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
agrUserIP :: Lens' APIsGetRest' (Maybe Text)
agrUserIP
  = lens _agrUserIP (\ s a -> s{_agrUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agrKey :: Lens' APIsGetRest' (Maybe Key)
agrKey = lens _agrKey (\ s a -> s{_agrKey = a})

-- | The version of the API.
agrVersion :: Lens' APIsGetRest' Text
agrVersion
  = lens _agrVersion (\ s a -> s{_agrVersion = a})

-- | The name of the API.
agrAPI :: Lens' APIsGetRest' Text
agrAPI = lens _agrAPI (\ s a -> s{_agrAPI = a})

-- | OAuth 2.0 token for the current user.
agrOAuthToken :: Lens' APIsGetRest' (Maybe OAuthToken)
agrOAuthToken
  = lens _agrOAuthToken
      (\ s a -> s{_agrOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
agrFields :: Lens' APIsGetRest' (Maybe Text)
agrFields
  = lens _agrFields (\ s a -> s{_agrFields = a})

instance GoogleAuth APIsGetRest' where
        authKey = agrKey . _Just
        authToken = agrOAuthToken . _Just

instance GoogleRequest APIsGetRest' where
        type Rs APIsGetRest' = RestDescription
        request = requestWithRoute defReq discoveryURL
        requestWithRoute r u APIsGetRest'{..}
          = go _agrAPI _agrVersion _agrQuotaUser
              (Just _agrPrettyPrint)
              _agrUserIP
              _agrFields
              _agrKey
              _agrOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy APIsGetRestResource)
                      r
                      u
