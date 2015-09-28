{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.PlusDomains.Circles.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update a circle\'s description. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.circles.patch@.
module Network.Google.API.PlusDomains.Circles.Patch
    (
    -- * REST Resource
      CirclesPatchAPI

    -- * Creating a Request
    , circlesPatch'
    , CirclesPatch'

    -- * Request Lenses
    , cpQuotaUser
    , cpPrettyPrint
    , cpUserIp
    , cpKey
    , cpCircleId
    , cpOauthToken
    , cpFields
    , cpAlt
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for plusDomains.circles.patch which the
-- 'CirclesPatch'' request conforms to.
type CirclesPatchAPI =
     "circles" :>
       Capture "circleId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Patch '[JSON] Circle

-- | Update a circle\'s description. This method supports patch semantics.
--
-- /See:/ 'circlesPatch'' smart constructor.
data CirclesPatch' = CirclesPatch'
    { _cpQuotaUser   :: !(Maybe Text)
    , _cpPrettyPrint :: !Bool
    , _cpUserIp      :: !(Maybe Text)
    , _cpKey         :: !(Maybe Text)
    , _cpCircleId    :: !Text
    , _cpOauthToken  :: !(Maybe Text)
    , _cpFields      :: !(Maybe Text)
    , _cpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CirclesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpQuotaUser'
--
-- * 'cpPrettyPrint'
--
-- * 'cpUserIp'
--
-- * 'cpKey'
--
-- * 'cpCircleId'
--
-- * 'cpOauthToken'
--
-- * 'cpFields'
--
-- * 'cpAlt'
circlesPatch'
    :: Text -- ^ 'circleId'
    -> CirclesPatch'
circlesPatch' pCpCircleId_ =
    CirclesPatch'
    { _cpQuotaUser = Nothing
    , _cpPrettyPrint = True
    , _cpUserIp = Nothing
    , _cpKey = Nothing
    , _cpCircleId = pCpCircleId_
    , _cpOauthToken = Nothing
    , _cpFields = Nothing
    , _cpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cpQuotaUser :: Lens' CirclesPatch' (Maybe Text)
cpQuotaUser
  = lens _cpQuotaUser (\ s a -> s{_cpQuotaUser = a})

-- | Returns response with indentations and line breaks.
cpPrettyPrint :: Lens' CirclesPatch' Bool
cpPrettyPrint
  = lens _cpPrettyPrint
      (\ s a -> s{_cpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cpUserIp :: Lens' CirclesPatch' (Maybe Text)
cpUserIp = lens _cpUserIp (\ s a -> s{_cpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cpKey :: Lens' CirclesPatch' (Maybe Text)
cpKey = lens _cpKey (\ s a -> s{_cpKey = a})

-- | The ID of the circle to update.
cpCircleId :: Lens' CirclesPatch' Text
cpCircleId
  = lens _cpCircleId (\ s a -> s{_cpCircleId = a})

-- | OAuth 2.0 token for the current user.
cpOauthToken :: Lens' CirclesPatch' (Maybe Text)
cpOauthToken
  = lens _cpOauthToken (\ s a -> s{_cpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cpFields :: Lens' CirclesPatch' (Maybe Text)
cpFields = lens _cpFields (\ s a -> s{_cpFields = a})

-- | Data format for the response.
cpAlt :: Lens' CirclesPatch' Alt
cpAlt = lens _cpAlt (\ s a -> s{_cpAlt = a})

instance GoogleRequest CirclesPatch' where
        type Rs CirclesPatch' = Circle
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u CirclesPatch'{..}
          = go _cpQuotaUser (Just _cpPrettyPrint) _cpUserIp
              _cpKey
              _cpCircleId
              _cpOauthToken
              _cpFields
              (Just _cpAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CirclesPatchAPI) r
                      u
