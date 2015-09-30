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
-- Module      : Network.Google.Resource.PlusDomains.Circles.AddPeople
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add a person to a circle. Google+ limits certain circle operations,
-- including the number of circle adds. Learn More.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsCirclesAddPeople@.
module Network.Google.Resource.PlusDomains.Circles.AddPeople
    (
    -- * REST Resource
      CirclesAddPeopleResource

    -- * Creating a Request
    , circlesAddPeople'
    , CirclesAddPeople'

    -- * Request Lenses
    , capEmail
    , capQuotaUser
    , capPrettyPrint
    , capUserIp
    , capUserId
    , capKey
    , capCircleId
    , capOauthToken
    , capFields
    , capAlt
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsCirclesAddPeople@ which the
-- 'CirclesAddPeople'' request conforms to.
type CirclesAddPeopleResource =
     "circles" :>
       Capture "circleId" Text :>
         "people" :>
           QueryParams "email" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParams "userId" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Put '[JSON] Circle

-- | Add a person to a circle. Google+ limits certain circle operations,
-- including the number of circle adds. Learn More.
--
-- /See:/ 'circlesAddPeople'' smart constructor.
data CirclesAddPeople' = CirclesAddPeople'
    { _capEmail       :: !(Maybe Text)
    , _capQuotaUser   :: !(Maybe Text)
    , _capPrettyPrint :: !Bool
    , _capUserIp      :: !(Maybe Text)
    , _capUserId      :: !(Maybe Text)
    , _capKey         :: !(Maybe Text)
    , _capCircleId    :: !Text
    , _capOauthToken  :: !(Maybe Text)
    , _capFields      :: !(Maybe Text)
    , _capAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CirclesAddPeople'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'capEmail'
--
-- * 'capQuotaUser'
--
-- * 'capPrettyPrint'
--
-- * 'capUserIp'
--
-- * 'capUserId'
--
-- * 'capKey'
--
-- * 'capCircleId'
--
-- * 'capOauthToken'
--
-- * 'capFields'
--
-- * 'capAlt'
circlesAddPeople'
    :: Text -- ^ 'circleId'
    -> CirclesAddPeople'
circlesAddPeople' pCapCircleId_ =
    CirclesAddPeople'
    { _capEmail = Nothing
    , _capQuotaUser = Nothing
    , _capPrettyPrint = True
    , _capUserIp = Nothing
    , _capUserId = Nothing
    , _capKey = Nothing
    , _capCircleId = pCapCircleId_
    , _capOauthToken = Nothing
    , _capFields = Nothing
    , _capAlt = JSON
    }

-- | Email of the people to add to the circle. Optional, can be repeated.
capEmail :: Lens' CirclesAddPeople' (Maybe Text)
capEmail = lens _capEmail (\ s a -> s{_capEmail = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
capQuotaUser :: Lens' CirclesAddPeople' (Maybe Text)
capQuotaUser
  = lens _capQuotaUser (\ s a -> s{_capQuotaUser = a})

-- | Returns response with indentations and line breaks.
capPrettyPrint :: Lens' CirclesAddPeople' Bool
capPrettyPrint
  = lens _capPrettyPrint
      (\ s a -> s{_capPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
capUserIp :: Lens' CirclesAddPeople' (Maybe Text)
capUserIp
  = lens _capUserIp (\ s a -> s{_capUserIp = a})

-- | IDs of the people to add to the circle. Optional, can be repeated.
capUserId :: Lens' CirclesAddPeople' (Maybe Text)
capUserId
  = lens _capUserId (\ s a -> s{_capUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
capKey :: Lens' CirclesAddPeople' (Maybe Text)
capKey = lens _capKey (\ s a -> s{_capKey = a})

-- | The ID of the circle to add the person to.
capCircleId :: Lens' CirclesAddPeople' Text
capCircleId
  = lens _capCircleId (\ s a -> s{_capCircleId = a})

-- | OAuth 2.0 token for the current user.
capOauthToken :: Lens' CirclesAddPeople' (Maybe Text)
capOauthToken
  = lens _capOauthToken
      (\ s a -> s{_capOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
capFields :: Lens' CirclesAddPeople' (Maybe Text)
capFields
  = lens _capFields (\ s a -> s{_capFields = a})

-- | Data format for the response.
capAlt :: Lens' CirclesAddPeople' Alt
capAlt = lens _capAlt (\ s a -> s{_capAlt = a})

instance GoogleRequest CirclesAddPeople' where
        type Rs CirclesAddPeople' = Circle
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u CirclesAddPeople'{..}
          = go _capEmail _capQuotaUser (Just _capPrettyPrint)
              _capUserIp
              _capUserId
              _capKey
              _capCircleId
              _capOauthToken
              _capFields
              (Just _capAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CirclesAddPeopleResource)
                      r
                      u
