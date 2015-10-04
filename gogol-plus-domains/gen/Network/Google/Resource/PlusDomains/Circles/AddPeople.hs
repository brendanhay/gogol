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
    , capUserIP
    , capUserId
    , capKey
    , capCircleId
    , capOAuthToken
    , capFields
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
             QueryParams "userId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Put '[JSON] Circle

-- | Add a person to a circle. Google+ limits certain circle operations,
-- including the number of circle adds. Learn More.
--
-- /See:/ 'circlesAddPeople'' smart constructor.
data CirclesAddPeople' = CirclesAddPeople'
    { _capEmail       :: !(Maybe [Text])
    , _capQuotaUser   :: !(Maybe Text)
    , _capPrettyPrint :: !Bool
    , _capUserIP      :: !(Maybe Text)
    , _capUserId      :: !(Maybe [Text])
    , _capKey         :: !(Maybe Key)
    , _capCircleId    :: !Text
    , _capOAuthToken  :: !(Maybe OAuthToken)
    , _capFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'capUserIP'
--
-- * 'capUserId'
--
-- * 'capKey'
--
-- * 'capCircleId'
--
-- * 'capOAuthToken'
--
-- * 'capFields'
circlesAddPeople'
    :: Text -- ^ 'circleId'
    -> CirclesAddPeople'
circlesAddPeople' pCapCircleId_ =
    CirclesAddPeople'
    { _capEmail = Nothing
    , _capQuotaUser = Nothing
    , _capPrettyPrint = True
    , _capUserIP = Nothing
    , _capUserId = Nothing
    , _capKey = Nothing
    , _capCircleId = pCapCircleId_
    , _capOAuthToken = Nothing
    , _capFields = Nothing
    }

-- | Email of the people to add to the circle. Optional, can be repeated.
capEmail :: Lens' CirclesAddPeople' [Text]
capEmail
  = lens _capEmail (\ s a -> s{_capEmail = a}) .
      _Default
      . _Coerce

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
capUserIP :: Lens' CirclesAddPeople' (Maybe Text)
capUserIP
  = lens _capUserIP (\ s a -> s{_capUserIP = a})

-- | IDs of the people to add to the circle. Optional, can be repeated.
capUserId :: Lens' CirclesAddPeople' [Text]
capUserId
  = lens _capUserId (\ s a -> s{_capUserId = a}) .
      _Default
      . _Coerce

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
capKey :: Lens' CirclesAddPeople' (Maybe Key)
capKey = lens _capKey (\ s a -> s{_capKey = a})

-- | The ID of the circle to add the person to.
capCircleId :: Lens' CirclesAddPeople' Text
capCircleId
  = lens _capCircleId (\ s a -> s{_capCircleId = a})

-- | OAuth 2.0 token for the current user.
capOAuthToken :: Lens' CirclesAddPeople' (Maybe OAuthToken)
capOAuthToken
  = lens _capOAuthToken
      (\ s a -> s{_capOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
capFields :: Lens' CirclesAddPeople' (Maybe Text)
capFields
  = lens _capFields (\ s a -> s{_capFields = a})

instance GoogleAuth CirclesAddPeople' where
        authKey = capKey . _Just
        authToken = capOAuthToken . _Just

instance GoogleRequest CirclesAddPeople' where
        type Rs CirclesAddPeople' = Circle
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u CirclesAddPeople'{..}
          = go _capCircleId (_capEmail ^. _Default)
              (_capUserId ^. _Default)
              _capQuotaUser
              (Just _capPrettyPrint)
              _capUserIP
              _capFields
              _capKey
              _capOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CirclesAddPeopleResource)
                      r
                      u
