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
    , crpUserIP
    , crpUserId
    , crpKey
    , crpCircleId
    , crpOAuthToken
    , crpFields
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
             QueryParams "userId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Remove a person from a circle.
--
-- /See:/ 'circlesRemovePeople'' smart constructor.
data CirclesRemovePeople' = CirclesRemovePeople'
    { _crpEmail       :: !(Maybe [Text])
    , _crpQuotaUser   :: !(Maybe Text)
    , _crpPrettyPrint :: !Bool
    , _crpUserIP      :: !(Maybe Text)
    , _crpUserId      :: !(Maybe [Text])
    , _crpKey         :: !(Maybe Key)
    , _crpCircleId    :: !Text
    , _crpOAuthToken  :: !(Maybe OAuthToken)
    , _crpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'crpUserIP'
--
-- * 'crpUserId'
--
-- * 'crpKey'
--
-- * 'crpCircleId'
--
-- * 'crpOAuthToken'
--
-- * 'crpFields'
circlesRemovePeople'
    :: Text -- ^ 'circleId'
    -> CirclesRemovePeople'
circlesRemovePeople' pCrpCircleId_ =
    CirclesRemovePeople'
    { _crpEmail = Nothing
    , _crpQuotaUser = Nothing
    , _crpPrettyPrint = True
    , _crpUserIP = Nothing
    , _crpUserId = Nothing
    , _crpKey = Nothing
    , _crpCircleId = pCrpCircleId_
    , _crpOAuthToken = Nothing
    , _crpFields = Nothing
    }

-- | Email of the people to add to the circle. Optional, can be repeated.
crpEmail :: Lens' CirclesRemovePeople' [Text]
crpEmail
  = lens _crpEmail (\ s a -> s{_crpEmail = a}) .
      _Default
      . _Coerce

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
crpUserIP :: Lens' CirclesRemovePeople' (Maybe Text)
crpUserIP
  = lens _crpUserIP (\ s a -> s{_crpUserIP = a})

-- | IDs of the people to remove from the circle. Optional, can be repeated.
crpUserId :: Lens' CirclesRemovePeople' [Text]
crpUserId
  = lens _crpUserId (\ s a -> s{_crpUserId = a}) .
      _Default
      . _Coerce

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
crpKey :: Lens' CirclesRemovePeople' (Maybe Key)
crpKey = lens _crpKey (\ s a -> s{_crpKey = a})

-- | The ID of the circle to remove the person from.
crpCircleId :: Lens' CirclesRemovePeople' Text
crpCircleId
  = lens _crpCircleId (\ s a -> s{_crpCircleId = a})

-- | OAuth 2.0 token for the current user.
crpOAuthToken :: Lens' CirclesRemovePeople' (Maybe OAuthToken)
crpOAuthToken
  = lens _crpOAuthToken
      (\ s a -> s{_crpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
crpFields :: Lens' CirclesRemovePeople' (Maybe Text)
crpFields
  = lens _crpFields (\ s a -> s{_crpFields = a})

instance GoogleAuth CirclesRemovePeople' where
        authKey = crpKey . _Just
        authToken = crpOAuthToken . _Just

instance GoogleRequest CirclesRemovePeople' where
        type Rs CirclesRemovePeople' = ()
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u CirclesRemovePeople'{..}
          = go _crpCircleId (_crpEmail ^. _Default)
              (_crpUserId ^. _Default)
              _crpQuotaUser
              (Just _crpPrettyPrint)
              _crpUserIP
              _crpFields
              _crpKey
              _crpOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CirclesRemovePeopleResource)
                      r
                      u
