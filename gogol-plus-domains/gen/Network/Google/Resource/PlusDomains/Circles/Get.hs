{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.PlusDomains.Circles.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get a circle.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsCirclesGet@.
module Network.Google.Resource.PlusDomains.Circles.Get
    (
    -- * REST Resource
      CirclesGetResource

    -- * Creating a Request
    , circlesGet'
    , CirclesGet'

    -- * Request Lenses
    , cgQuotaUser
    , cgPrettyPrint
    , cgUserIP
    , cgKey
    , cgCircleId
    , cgOAuthToken
    , cgFields
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsCirclesGet@ which the
-- 'CirclesGet'' request conforms to.
type CirclesGetResource =
     "circles" :>
       Capture "circleId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Circle

-- | Get a circle.
--
-- /See:/ 'circlesGet'' smart constructor.
data CirclesGet' = CirclesGet'
    { _cgQuotaUser   :: !(Maybe Text)
    , _cgPrettyPrint :: !Bool
    , _cgUserIP      :: !(Maybe Text)
    , _cgKey         :: !(Maybe Key)
    , _cgCircleId    :: !Text
    , _cgOAuthToken  :: !(Maybe OAuthToken)
    , _cgFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CirclesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgQuotaUser'
--
-- * 'cgPrettyPrint'
--
-- * 'cgUserIP'
--
-- * 'cgKey'
--
-- * 'cgCircleId'
--
-- * 'cgOAuthToken'
--
-- * 'cgFields'
circlesGet'
    :: Text -- ^ 'circleId'
    -> CirclesGet'
circlesGet' pCgCircleId_ =
    CirclesGet'
    { _cgQuotaUser = Nothing
    , _cgPrettyPrint = True
    , _cgUserIP = Nothing
    , _cgKey = Nothing
    , _cgCircleId = pCgCircleId_
    , _cgOAuthToken = Nothing
    , _cgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cgQuotaUser :: Lens' CirclesGet' (Maybe Text)
cgQuotaUser
  = lens _cgQuotaUser (\ s a -> s{_cgQuotaUser = a})

-- | Returns response with indentations and line breaks.
cgPrettyPrint :: Lens' CirclesGet' Bool
cgPrettyPrint
  = lens _cgPrettyPrint
      (\ s a -> s{_cgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cgUserIP :: Lens' CirclesGet' (Maybe Text)
cgUserIP = lens _cgUserIP (\ s a -> s{_cgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgKey :: Lens' CirclesGet' (Maybe Key)
cgKey = lens _cgKey (\ s a -> s{_cgKey = a})

-- | The ID of the circle to get.
cgCircleId :: Lens' CirclesGet' Text
cgCircleId
  = lens _cgCircleId (\ s a -> s{_cgCircleId = a})

-- | OAuth 2.0 token for the current user.
cgOAuthToken :: Lens' CirclesGet' (Maybe OAuthToken)
cgOAuthToken
  = lens _cgOAuthToken (\ s a -> s{_cgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cgFields :: Lens' CirclesGet' (Maybe Text)
cgFields = lens _cgFields (\ s a -> s{_cgFields = a})

instance GoogleAuth CirclesGet' where
        authKey = cgKey . _Just
        authToken = cgOAuthToken . _Just

instance GoogleRequest CirclesGet' where
        type Rs CirclesGet' = Circle
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u CirclesGet'{..}
          = go _cgQuotaUser (Just _cgPrettyPrint) _cgUserIP
              _cgKey
              _cgCircleId
              _cgOAuthToken
              _cgFields
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy CirclesGetResource)
                      r
                      u
