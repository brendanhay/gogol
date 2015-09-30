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
-- Module      : Network.Google.Resource.PlusDomains.People.ListByCircle
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all of the people who are members of a circle.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsPeopleListByCircle@.
module Network.Google.Resource.PlusDomains.People.ListByCircle
    (
    -- * REST Resource
      PeopleListByCircleResource

    -- * Creating a Request
    , peopleListByCircle'
    , PeopleListByCircle'

    -- * Request Lenses
    , plbcQuotaUser
    , plbcPrettyPrint
    , plbcUserIp
    , plbcKey
    , plbcCircleId
    , plbcPageToken
    , plbcOauthToken
    , plbcMaxResults
    , plbcFields
    , plbcAlt
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsPeopleListByCircle@ which the
-- 'PeopleListByCircle'' request conforms to.
type PeopleListByCircleResource =
     "circles" :>
       Capture "circleId" Text :>
         "people" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] PeopleFeed

-- | List all of the people who are members of a circle.
--
-- /See:/ 'peopleListByCircle'' smart constructor.
data PeopleListByCircle' = PeopleListByCircle'
    { _plbcQuotaUser   :: !(Maybe Text)
    , _plbcPrettyPrint :: !Bool
    , _plbcUserIp      :: !(Maybe Text)
    , _plbcKey         :: !(Maybe Text)
    , _plbcCircleId    :: !Text
    , _plbcPageToken   :: !(Maybe Text)
    , _plbcOauthToken  :: !(Maybe Text)
    , _plbcMaxResults  :: !Word32
    , _plbcFields      :: !(Maybe Text)
    , _plbcAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PeopleListByCircle'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plbcQuotaUser'
--
-- * 'plbcPrettyPrint'
--
-- * 'plbcUserIp'
--
-- * 'plbcKey'
--
-- * 'plbcCircleId'
--
-- * 'plbcPageToken'
--
-- * 'plbcOauthToken'
--
-- * 'plbcMaxResults'
--
-- * 'plbcFields'
--
-- * 'plbcAlt'
peopleListByCircle'
    :: Text -- ^ 'circleId'
    -> PeopleListByCircle'
peopleListByCircle' pPlbcCircleId_ =
    PeopleListByCircle'
    { _plbcQuotaUser = Nothing
    , _plbcPrettyPrint = True
    , _plbcUserIp = Nothing
    , _plbcKey = Nothing
    , _plbcCircleId = pPlbcCircleId_
    , _plbcPageToken = Nothing
    , _plbcOauthToken = Nothing
    , _plbcMaxResults = 20
    , _plbcFields = Nothing
    , _plbcAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
plbcQuotaUser :: Lens' PeopleListByCircle' (Maybe Text)
plbcQuotaUser
  = lens _plbcQuotaUser
      (\ s a -> s{_plbcQuotaUser = a})

-- | Returns response with indentations and line breaks.
plbcPrettyPrint :: Lens' PeopleListByCircle' Bool
plbcPrettyPrint
  = lens _plbcPrettyPrint
      (\ s a -> s{_plbcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
plbcUserIp :: Lens' PeopleListByCircle' (Maybe Text)
plbcUserIp
  = lens _plbcUserIp (\ s a -> s{_plbcUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plbcKey :: Lens' PeopleListByCircle' (Maybe Text)
plbcKey = lens _plbcKey (\ s a -> s{_plbcKey = a})

-- | The ID of the circle to get the members of.
plbcCircleId :: Lens' PeopleListByCircle' Text
plbcCircleId
  = lens _plbcCircleId (\ s a -> s{_plbcCircleId = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
plbcPageToken :: Lens' PeopleListByCircle' (Maybe Text)
plbcPageToken
  = lens _plbcPageToken
      (\ s a -> s{_plbcPageToken = a})

-- | OAuth 2.0 token for the current user.
plbcOauthToken :: Lens' PeopleListByCircle' (Maybe Text)
plbcOauthToken
  = lens _plbcOauthToken
      (\ s a -> s{_plbcOauthToken = a})

-- | The maximum number of people to include in the response, which is used
-- for paging. For any response, the actual number returned might be less
-- than the specified maxResults.
plbcMaxResults :: Lens' PeopleListByCircle' Word32
plbcMaxResults
  = lens _plbcMaxResults
      (\ s a -> s{_plbcMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
plbcFields :: Lens' PeopleListByCircle' (Maybe Text)
plbcFields
  = lens _plbcFields (\ s a -> s{_plbcFields = a})

-- | Data format for the response.
plbcAlt :: Lens' PeopleListByCircle' Alt
plbcAlt = lens _plbcAlt (\ s a -> s{_plbcAlt = a})

instance GoogleRequest PeopleListByCircle' where
        type Rs PeopleListByCircle' = PeopleFeed
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u PeopleListByCircle'{..}
          = go _plbcQuotaUser (Just _plbcPrettyPrint)
              _plbcUserIp
              _plbcKey
              _plbcCircleId
              _plbcPageToken
              _plbcOauthToken
              (Just _plbcMaxResults)
              _plbcFields
              (Just _plbcAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PeopleListByCircleResource)
                      r
                      u
