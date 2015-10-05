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
-- Module      : Network.Google.Resource.Compute.Routes.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a route resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeRoutesInsert@.
module Network.Google.Resource.Compute.Routes.Insert
    (
    -- * REST Resource
      RoutesInsertResource

    -- * Creating a Request
    , routesInsert'
    , RoutesInsert'

    -- * Request Lenses
    , riQuotaUser
    , riPrettyPrint
    , riProject
    , riUserIP
    , riPayload
    , riKey
    , riOAuthToken
    , riFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeRoutesInsert@ which the
-- 'RoutesInsert'' request conforms to.
type RoutesInsertResource =
     Capture "project" Text :>
       "global" :>
         "routes" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Route :> Post '[JSON] Operation

-- | Creates a route resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'routesInsert'' smart constructor.
data RoutesInsert' = RoutesInsert'
    { _riQuotaUser   :: !(Maybe Text)
    , _riPrettyPrint :: !Bool
    , _riProject     :: !Text
    , _riUserIP      :: !(Maybe Text)
    , _riPayload     :: !Route
    , _riKey         :: !(Maybe Key)
    , _riOAuthToken  :: !(Maybe OAuthToken)
    , _riFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoutesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riQuotaUser'
--
-- * 'riPrettyPrint'
--
-- * 'riProject'
--
-- * 'riUserIP'
--
-- * 'riPayload'
--
-- * 'riKey'
--
-- * 'riOAuthToken'
--
-- * 'riFields'
routesInsert'
    :: Text -- ^ 'project'
    -> Route -- ^ 'payload'
    -> RoutesInsert'
routesInsert' pRiProject_ pRiPayload_ =
    RoutesInsert'
    { _riQuotaUser = Nothing
    , _riPrettyPrint = True
    , _riProject = pRiProject_
    , _riUserIP = Nothing
    , _riPayload = pRiPayload_
    , _riKey = Nothing
    , _riOAuthToken = Nothing
    , _riFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
riQuotaUser :: Lens' RoutesInsert' (Maybe Text)
riQuotaUser
  = lens _riQuotaUser (\ s a -> s{_riQuotaUser = a})

-- | Returns response with indentations and line breaks.
riPrettyPrint :: Lens' RoutesInsert' Bool
riPrettyPrint
  = lens _riPrettyPrint
      (\ s a -> s{_riPrettyPrint = a})

-- | Name of the project scoping this request.
riProject :: Lens' RoutesInsert' Text
riProject
  = lens _riProject (\ s a -> s{_riProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
riUserIP :: Lens' RoutesInsert' (Maybe Text)
riUserIP = lens _riUserIP (\ s a -> s{_riUserIP = a})

-- | Multipart request metadata.
riPayload :: Lens' RoutesInsert' Route
riPayload
  = lens _riPayload (\ s a -> s{_riPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
riKey :: Lens' RoutesInsert' (Maybe Key)
riKey = lens _riKey (\ s a -> s{_riKey = a})

-- | OAuth 2.0 token for the current user.
riOAuthToken :: Lens' RoutesInsert' (Maybe OAuthToken)
riOAuthToken
  = lens _riOAuthToken (\ s a -> s{_riOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
riFields :: Lens' RoutesInsert' (Maybe Text)
riFields = lens _riFields (\ s a -> s{_riFields = a})

instance GoogleAuth RoutesInsert' where
        authKey = riKey . _Just
        authToken = riOAuthToken . _Just

instance GoogleRequest RoutesInsert' where
        type Rs RoutesInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u RoutesInsert'{..}
          = go _riProject _riQuotaUser (Just _riPrettyPrint)
              _riUserIP
              _riFields
              _riKey
              _riOAuthToken
              (Just AltJSON)
              _riPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RoutesInsertResource)
                      r
                      u
