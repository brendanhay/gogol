{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.PlusDomains.Circles.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get a circle.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.circles.get@.
module Network.Google.API.PlusDomains.Circles.Get
    (
    -- * REST Resource
      CirclesGetAPI

    -- * Creating a Request
    , circlesGet'
    , CirclesGet'

    -- * Request Lenses
    , cgQuotaUser
    , cgPrettyPrint
    , cgUserIp
    , cgKey
    , cgCircleId
    , cgOauthToken
    , cgFields
    , cgAlt
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for plusDomains.circles.get which the
-- 'CirclesGet'' request conforms to.
type CirclesGetAPI =
     "circles" :>
       Capture "circleId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] Circle

-- | Get a circle.
--
-- /See:/ 'circlesGet'' smart constructor.
data CirclesGet' = CirclesGet'
    { _cgQuotaUser   :: !(Maybe Text)
    , _cgPrettyPrint :: !Bool
    , _cgUserIp      :: !(Maybe Text)
    , _cgKey         :: !(Maybe Text)
    , _cgCircleId    :: !Text
    , _cgOauthToken  :: !(Maybe Text)
    , _cgFields      :: !(Maybe Text)
    , _cgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CirclesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgQuotaUser'
--
-- * 'cgPrettyPrint'
--
-- * 'cgUserIp'
--
-- * 'cgKey'
--
-- * 'cgCircleId'
--
-- * 'cgOauthToken'
--
-- * 'cgFields'
--
-- * 'cgAlt'
circlesGet'
    :: Text -- ^ 'circleId'
    -> CirclesGet'
circlesGet' pCgCircleId_ =
    CirclesGet'
    { _cgQuotaUser = Nothing
    , _cgPrettyPrint = True
    , _cgUserIp = Nothing
    , _cgKey = Nothing
    , _cgCircleId = pCgCircleId_
    , _cgOauthToken = Nothing
    , _cgFields = Nothing
    , _cgAlt = JSON
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
cgUserIp :: Lens' CirclesGet' (Maybe Text)
cgUserIp = lens _cgUserIp (\ s a -> s{_cgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgKey :: Lens' CirclesGet' (Maybe Text)
cgKey = lens _cgKey (\ s a -> s{_cgKey = a})

-- | The ID of the circle to get.
cgCircleId :: Lens' CirclesGet' Text
cgCircleId
  = lens _cgCircleId (\ s a -> s{_cgCircleId = a})

-- | OAuth 2.0 token for the current user.
cgOauthToken :: Lens' CirclesGet' (Maybe Text)
cgOauthToken
  = lens _cgOauthToken (\ s a -> s{_cgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cgFields :: Lens' CirclesGet' (Maybe Text)
cgFields = lens _cgFields (\ s a -> s{_cgFields = a})

-- | Data format for the response.
cgAlt :: Lens' CirclesGet' Alt
cgAlt = lens _cgAlt (\ s a -> s{_cgAlt = a})

instance GoogleRequest CirclesGet' where
        type Rs CirclesGet' = Circle
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u CirclesGet'{..}
          = go _cgQuotaUser (Just _cgPrettyPrint) _cgUserIp
              _cgKey
              _cgCircleId
              _cgOauthToken
              _cgFields
              (Just _cgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CirclesGetAPI) r u
