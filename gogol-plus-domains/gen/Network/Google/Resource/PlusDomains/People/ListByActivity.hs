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
-- Module      : Network.Google.Resource.PlusDomains.People.ListByActivity
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all of the people in the specified collection for a particular
-- activity.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsPeopleListByActivity@.
module Network.Google.Resource.PlusDomains.People.ListByActivity
    (
    -- * REST Resource
      PeopleListByActivityResource

    -- * Creating a Request
    , peopleListByActivity'
    , PeopleListByActivity'

    -- * Request Lenses
    , plbaQuotaUser
    , plbaPrettyPrint
    , plbaUserIP
    , plbaActivityId
    , plbaCollection
    , plbaKey
    , plbaPageToken
    , plbaOAuthToken
    , plbaMaxResults
    , plbaFields
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsPeopleListByActivity@ which the
-- 'PeopleListByActivity'' request conforms to.
type PeopleListByActivityResource =
     "activities" :>
       Capture "activityId" Text :>
         "people" :>
           Capture "collection" PeopleListByActivityCollection
             :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] PeopleFeed

-- | List all of the people in the specified collection for a particular
-- activity.
--
-- /See:/ 'peopleListByActivity'' smart constructor.
data PeopleListByActivity' = PeopleListByActivity'
    { _plbaQuotaUser   :: !(Maybe Text)
    , _plbaPrettyPrint :: !Bool
    , _plbaUserIP      :: !(Maybe Text)
    , _plbaActivityId  :: !Text
    , _plbaCollection  :: !PeopleListByActivityCollection
    , _plbaKey         :: !(Maybe AuthKey)
    , _plbaPageToken   :: !(Maybe Text)
    , _plbaOAuthToken  :: !(Maybe OAuthToken)
    , _plbaMaxResults  :: !Word32
    , _plbaFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PeopleListByActivity'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plbaQuotaUser'
--
-- * 'plbaPrettyPrint'
--
-- * 'plbaUserIP'
--
-- * 'plbaActivityId'
--
-- * 'plbaCollection'
--
-- * 'plbaKey'
--
-- * 'plbaPageToken'
--
-- * 'plbaOAuthToken'
--
-- * 'plbaMaxResults'
--
-- * 'plbaFields'
peopleListByActivity'
    :: Text -- ^ 'activityId'
    -> PeopleListByActivityCollection -- ^ 'collection'
    -> PeopleListByActivity'
peopleListByActivity' pPlbaActivityId_ pPlbaCollection_ =
    PeopleListByActivity'
    { _plbaQuotaUser = Nothing
    , _plbaPrettyPrint = True
    , _plbaUserIP = Nothing
    , _plbaActivityId = pPlbaActivityId_
    , _plbaCollection = pPlbaCollection_
    , _plbaKey = Nothing
    , _plbaPageToken = Nothing
    , _plbaOAuthToken = Nothing
    , _plbaMaxResults = 20
    , _plbaFields = Nothing
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
plbaUserIP :: Lens' PeopleListByActivity' (Maybe Text)
plbaUserIP
  = lens _plbaUserIP (\ s a -> s{_plbaUserIP = a})

-- | The ID of the activity to get the list of people for.
plbaActivityId :: Lens' PeopleListByActivity' Text
plbaActivityId
  = lens _plbaActivityId
      (\ s a -> s{_plbaActivityId = a})

-- | The collection of people to list.
plbaCollection :: Lens' PeopleListByActivity' PeopleListByActivityCollection
plbaCollection
  = lens _plbaCollection
      (\ s a -> s{_plbaCollection = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plbaKey :: Lens' PeopleListByActivity' (Maybe AuthKey)
plbaKey = lens _plbaKey (\ s a -> s{_plbaKey = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
plbaPageToken :: Lens' PeopleListByActivity' (Maybe Text)
plbaPageToken
  = lens _plbaPageToken
      (\ s a -> s{_plbaPageToken = a})

-- | OAuth 2.0 token for the current user.
plbaOAuthToken :: Lens' PeopleListByActivity' (Maybe OAuthToken)
plbaOAuthToken
  = lens _plbaOAuthToken
      (\ s a -> s{_plbaOAuthToken = a})

-- | The maximum number of people to include in the response, which is used
-- for paging. For any response, the actual number returned might be less
-- than the specified maxResults.
plbaMaxResults :: Lens' PeopleListByActivity' Word32
plbaMaxResults
  = lens _plbaMaxResults
      (\ s a -> s{_plbaMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
plbaFields :: Lens' PeopleListByActivity' (Maybe Text)
plbaFields
  = lens _plbaFields (\ s a -> s{_plbaFields = a})

instance GoogleAuth PeopleListByActivity' where
        authKey = plbaKey . _Just
        authToken = plbaOAuthToken . _Just

instance GoogleRequest PeopleListByActivity' where
        type Rs PeopleListByActivity' = PeopleFeed
        request = requestWith plusDomainsRequest
        requestWith rq PeopleListByActivity'{..}
          = go _plbaActivityId _plbaCollection _plbaPageToken
              (Just _plbaMaxResults)
              _plbaQuotaUser
              (Just _plbaPrettyPrint)
              _plbaUserIP
              _plbaFields
              _plbaKey
              _plbaOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy PeopleListByActivityResource)
                      rq
