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
-- Module      : Network.Google.Resource.PlusDomains.Circles.RemovePeople
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Remove a person from a circle.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsCirclesRemovePeople@.
module Network.Google.Resource.PlusDomains.Circles.RemovePeople
    (
    -- * REST Resource
      CirclesRemovePeopleResource

    -- * Creating a Request
    , circlesRemovePeople'
    , CirclesRemovePeople'

    -- * Request Lenses
    , crpEmail
    , crpQuotaUser
    , crpPrettyPrint
    , crpUserIp
    , crpUserId
    , crpKey
    , crpCircleId
    , crpOauthToken
    , crpFields
    , crpAlt
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsCirclesRemovePeople@ which the
-- 'CirclesRemovePeople'' request conforms to.
type CirclesRemovePeopleResource =
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
                           QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Remove a person from a circle.
--
-- /See:/ 'circlesRemovePeople'' smart constructor.
data CirclesRemovePeople' = CirclesRemovePeople'
    { _crpEmail       :: !(Maybe Text)
    , _crpQuotaUser   :: !(Maybe Text)
    , _crpPrettyPrint :: !Bool
    , _crpUserIp      :: !(Maybe Text)
    , _crpUserId      :: !(Maybe Text)
    , _crpKey         :: !(Maybe Text)
    , _crpCircleId    :: !Text
    , _crpOauthToken  :: !(Maybe Text)
    , _crpFields      :: !(Maybe Text)
    , _crpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CirclesRemovePeople'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crpEmail'
--
-- * 'crpQuotaUser'
--
-- * 'crpPrettyPrint'
--
-- * 'crpUserIp'
--
-- * 'crpUserId'
--
-- * 'crpKey'
--
-- * 'crpCircleId'
--
-- * 'crpOauthToken'
--
-- * 'crpFields'
--
-- * 'crpAlt'
circlesRemovePeople'
    :: Text -- ^ 'circleId'
    -> CirclesRemovePeople'
circlesRemovePeople' pCrpCircleId_ =
    CirclesRemovePeople'
    { _crpEmail = Nothing
    , _crpQuotaUser = Nothing
    , _crpPrettyPrint = True
    , _crpUserIp = Nothing
    , _crpUserId = Nothing
    , _crpKey = Nothing
    , _crpCircleId = pCrpCircleId_
    , _crpOauthToken = Nothing
    , _crpFields = Nothing
    , _crpAlt = JSON
    }

-- | Email of the people to add to the circle. Optional, can be repeated.
crpEmail :: Lens' CirclesRemovePeople' (Maybe Text)
crpEmail = lens _crpEmail (\ s a -> s{_crpEmail = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
crpQuotaUser :: Lens' CirclesRemovePeople' (Maybe Text)
crpQuotaUser
  = lens _crpQuotaUser (\ s a -> s{_crpQuotaUser = a})

-- | Returns response with indentations and line breaks.
crpPrettyPrint :: Lens' CirclesRemovePeople' Bool
crpPrettyPrint
  = lens _crpPrettyPrint
      (\ s a -> s{_crpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
crpUserIp :: Lens' CirclesRemovePeople' (Maybe Text)
crpUserIp
  = lens _crpUserIp (\ s a -> s{_crpUserIp = a})

-- | IDs of the people to remove from the circle. Optional, can be repeated.
crpUserId :: Lens' CirclesRemovePeople' (Maybe Text)
crpUserId
  = lens _crpUserId (\ s a -> s{_crpUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
crpKey :: Lens' CirclesRemovePeople' (Maybe Text)
crpKey = lens _crpKey (\ s a -> s{_crpKey = a})

-- | The ID of the circle to remove the person from.
crpCircleId :: Lens' CirclesRemovePeople' Text
crpCircleId
  = lens _crpCircleId (\ s a -> s{_crpCircleId = a})

-- | OAuth 2.0 token for the current user.
crpOauthToken :: Lens' CirclesRemovePeople' (Maybe Text)
crpOauthToken
  = lens _crpOauthToken
      (\ s a -> s{_crpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
crpFields :: Lens' CirclesRemovePeople' (Maybe Text)
crpFields
  = lens _crpFields (\ s a -> s{_crpFields = a})

-- | Data format for the response.
crpAlt :: Lens' CirclesRemovePeople' Alt
crpAlt = lens _crpAlt (\ s a -> s{_crpAlt = a})

instance GoogleRequest CirclesRemovePeople' where
        type Rs CirclesRemovePeople' = ()
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u CirclesRemovePeople'{..}
          = go _crpEmail _crpQuotaUser (Just _crpPrettyPrint)
              _crpUserIp
              _crpUserId
              _crpKey
              _crpCircleId
              _crpOauthToken
              _crpFields
              (Just _crpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CirclesRemovePeopleResource)
                      r
                      u
