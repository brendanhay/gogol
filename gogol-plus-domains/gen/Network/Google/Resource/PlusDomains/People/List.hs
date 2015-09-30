{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.PlusDomains.People.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all of the people in the specified collection.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsPeopleList@.
module PlusDomains.People.List
    (
    -- * REST Resource
      PeopleListAPI

    -- * Creating a Request
    , peopleList
    , PeopleList

    -- * Request Lenses
    , plQuotaUser
    , plPrettyPrint
    , plOrderBy
    , plUserIp
    , plCollection
    , plUserId
    , plKey
    , plPageToken
    , plOauthToken
    , plMaxResults
    , plFields
    , plAlt
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsPeopleList@ which the
-- 'PeopleList' request conforms to.
type PeopleListAPI =
     "people" :>
       Capture "userId" Text :>
         "people" :>
           Capture "collection" Text :>
             QueryParam "orderBy" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   Get '[JSON] PeopleFeed

-- | List all of the people in the specified collection.
--
-- /See:/ 'peopleList' smart constructor.
data PeopleList = PeopleList
    { _plQuotaUser   :: !(Maybe Text)
    , _plPrettyPrint :: !Bool
    , _plOrderBy     :: !(Maybe Text)
    , _plUserIp      :: !(Maybe Text)
    , _plCollection  :: !Text
    , _plUserId      :: !Text
    , _plKey         :: !(Maybe Text)
    , _plPageToken   :: !(Maybe Text)
    , _plOauthToken  :: !(Maybe Text)
    , _plMaxResults  :: !Word32
    , _plFields      :: !(Maybe Text)
    , _plAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PeopleList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plQuotaUser'
--
-- * 'plPrettyPrint'
--
-- * 'plOrderBy'
--
-- * 'plUserIp'
--
-- * 'plCollection'
--
-- * 'plUserId'
--
-- * 'plKey'
--
-- * 'plPageToken'
--
-- * 'plOauthToken'
--
-- * 'plMaxResults'
--
-- * 'plFields'
--
-- * 'plAlt'
peopleList
    :: Text -- ^ 'collection'
    -> Text -- ^ 'userId'
    -> PeopleList
peopleList pPlCollection_ pPlUserId_ =
    PeopleList
    { _plQuotaUser = Nothing
    , _plPrettyPrint = True
    , _plOrderBy = Nothing
    , _plUserIp = Nothing
    , _plCollection = pPlCollection_
    , _plUserId = pPlUserId_
    , _plKey = Nothing
    , _plPageToken = Nothing
    , _plOauthToken = Nothing
    , _plMaxResults = 100
    , _plFields = Nothing
    , _plAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
plQuotaUser :: Lens' PeopleList' (Maybe Text)
plQuotaUser
  = lens _plQuotaUser (\ s a -> s{_plQuotaUser = a})

-- | Returns response with indentations and line breaks.
plPrettyPrint :: Lens' PeopleList' Bool
plPrettyPrint
  = lens _plPrettyPrint
      (\ s a -> s{_plPrettyPrint = a})

-- | The order to return people in.
plOrderBy :: Lens' PeopleList' (Maybe Text)
plOrderBy
  = lens _plOrderBy (\ s a -> s{_plOrderBy = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
plUserIp :: Lens' PeopleList' (Maybe Text)
plUserIp = lens _plUserIp (\ s a -> s{_plUserIp = a})

-- | The collection of people to list.
plCollection :: Lens' PeopleList' Text
plCollection
  = lens _plCollection (\ s a -> s{_plCollection = a})

-- | Get the collection of people for the person identified. Use \"me\" to
-- indicate the authenticated user.
plUserId :: Lens' PeopleList' Text
plUserId = lens _plUserId (\ s a -> s{_plUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plKey :: Lens' PeopleList' (Maybe Text)
plKey = lens _plKey (\ s a -> s{_plKey = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
plPageToken :: Lens' PeopleList' (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | OAuth 2.0 token for the current user.
plOauthToken :: Lens' PeopleList' (Maybe Text)
plOauthToken
  = lens _plOauthToken (\ s a -> s{_plOauthToken = a})

-- | The maximum number of people to include in the response, which is used
-- for paging. For any response, the actual number returned might be less
-- than the specified maxResults.
plMaxResults :: Lens' PeopleList' Word32
plMaxResults
  = lens _plMaxResults (\ s a -> s{_plMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
plFields :: Lens' PeopleList' (Maybe Text)
plFields = lens _plFields (\ s a -> s{_plFields = a})

-- | Data format for the response.
plAlt :: Lens' PeopleList' Text
plAlt = lens _plAlt (\ s a -> s{_plAlt = a})

instance GoogleRequest PeopleList' where
        type Rs PeopleList' = PeopleFeed
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u PeopleList{..}
          = go _plQuotaUser _plPrettyPrint _plOrderBy _plUserIp
              _plCollection
              _plUserId
              _plKey
              _plPageToken
              _plOauthToken
              (Just _plMaxResults)
              _plFields
              _plAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PeopleListAPI) r u
