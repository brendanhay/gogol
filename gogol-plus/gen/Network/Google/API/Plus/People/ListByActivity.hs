{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Plus.People.ListByActivity
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all of the people in the specified collection for a particular
-- activity.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference> for @plus.people.listByActivity@.
module Network.Google.API.Plus.People.ListByActivity
    (
    -- * REST Resource
      PeopleListByActivityAPI

    -- * Creating a Request
    , peopleListByActivity'
    , PeopleListByActivity'

    -- * Request Lenses
    , plbaQuotaUser
    , plbaPrettyPrint
    , plbaUserIp
    , plbaActivityId
    , plbaCollection
    , plbaKey
    , plbaPageToken
    , plbaOauthToken
    , plbaMaxResults
    , plbaFields
    , plbaAlt
    ) where

import           Network.Google.Plus.Types
import           Network.Google.Prelude

-- | A resource alias for plus.people.listByActivity which the
-- 'PeopleListByActivity'' request conforms to.
type PeopleListByActivityAPI =
     "activities" :>
       Capture "activityId" Text :>
         "people" :>
           Capture "collection" PeopleListByActivity'Collection
             :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "maxResults" Nat :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] PeopleFeed

-- | List all of the people in the specified collection for a particular
-- activity.
--
-- /See:/ 'peopleListByActivity'' smart constructor.
data PeopleListByActivity' = PeopleListByActivity'
    { _plbaQuotaUser   :: !(Maybe Text)
    , _plbaPrettyPrint :: !Bool
    , _plbaUserIp      :: !(Maybe Text)
    , _plbaActivityId  :: !Text
    , _plbaCollection  :: !PeopleListByActivity'Collection
    , _plbaKey         :: !(Maybe Text)
    , _plbaPageToken   :: !(Maybe Text)
    , _plbaOauthToken  :: !(Maybe Text)
    , _plbaMaxResults  :: !Nat
    , _plbaFields      :: !(Maybe Text)
    , _plbaAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PeopleListByActivity'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plbaQuotaUser'
--
-- * 'plbaPrettyPrint'
--
-- * 'plbaUserIp'
--
-- * 'plbaActivityId'
--
-- * 'plbaCollection'
--
-- * 'plbaKey'
--
-- * 'plbaPageToken'
--
-- * 'plbaOauthToken'
--
-- * 'plbaMaxResults'
--
-- * 'plbaFields'
--
-- * 'plbaAlt'
peopleListByActivity'
    :: Text -- ^ 'activityId'
    -> PeopleListByActivity'Collection -- ^ 'collection'
    -> PeopleListByActivity'
peopleListByActivity' pPlbaActivityId_ pPlbaCollection_ =
    PeopleListByActivity'
    { _plbaQuotaUser = Nothing
    , _plbaPrettyPrint = True
    , _plbaUserIp = Nothing
    , _plbaActivityId = pPlbaActivityId_
    , _plbaCollection = pPlbaCollection_
    , _plbaKey = Nothing
    , _plbaPageToken = Nothing
    , _plbaOauthToken = Nothing
    , _plbaMaxResults = 20
    , _plbaFields = Nothing
    , _plbaAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
plbaQuotaUser :: Lens' PeopleListByActivity' (Maybe Text)
plbaQuotaUser
  = lens _plbaQuotaUser
      (\ s a -> s{_plbaQuotaUser = a})

-- | Returns response with indentations and line breaks.
plbaPrettyPrint :: Lens' PeopleListByActivity' Bool
plbaPrettyPrint
  = lens _plbaPrettyPrint
      (\ s a -> s{_plbaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
plbaUserIp :: Lens' PeopleListByActivity' (Maybe Text)
plbaUserIp
  = lens _plbaUserIp (\ s a -> s{_plbaUserIp = a})

-- | The ID of the activity to get the list of people for.
plbaActivityId :: Lens' PeopleListByActivity' Text
plbaActivityId
  = lens _plbaActivityId
      (\ s a -> s{_plbaActivityId = a})

-- | The collection of people to list.
plbaCollection :: Lens' PeopleListByActivity' PeopleListByActivity'Collection
plbaCollection
  = lens _plbaCollection
      (\ s a -> s{_plbaCollection = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plbaKey :: Lens' PeopleListByActivity' (Maybe Text)
plbaKey = lens _plbaKey (\ s a -> s{_plbaKey = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
plbaPageToken :: Lens' PeopleListByActivity' (Maybe Text)
plbaPageToken
  = lens _plbaPageToken
      (\ s a -> s{_plbaPageToken = a})

-- | OAuth 2.0 token for the current user.
plbaOauthToken :: Lens' PeopleListByActivity' (Maybe Text)
plbaOauthToken
  = lens _plbaOauthToken
      (\ s a -> s{_plbaOauthToken = a})

-- | The maximum number of people to include in the response, which is used
-- for paging. For any response, the actual number returned might be less
-- than the specified maxResults.
plbaMaxResults :: Lens' PeopleListByActivity' Natural
plbaMaxResults
  = lens _plbaMaxResults
      (\ s a -> s{_plbaMaxResults = a})
      . _Nat

-- | Selector specifying which fields to include in a partial response.
plbaFields :: Lens' PeopleListByActivity' (Maybe Text)
plbaFields
  = lens _plbaFields (\ s a -> s{_plbaFields = a})

-- | Data format for the response.
plbaAlt :: Lens' PeopleListByActivity' Alt
plbaAlt = lens _plbaAlt (\ s a -> s{_plbaAlt = a})

instance GoogleRequest PeopleListByActivity' where
        type Rs PeopleListByActivity' = PeopleFeed
        request = requestWithRoute defReq plusURL
        requestWithRoute r u PeopleListByActivity'{..}
          = go _plbaQuotaUser (Just _plbaPrettyPrint)
              _plbaUserIp
              _plbaActivityId
              _plbaCollection
              _plbaKey
              _plbaPageToken
              _plbaOauthToken
              (Just _plbaMaxResults)
              _plbaFields
              (Just _plbaAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PeopleListByActivityAPI)
                      r
                      u
