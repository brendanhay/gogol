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
-- Module      : Network.Google.Resource.PlusDomains.Activities.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all of the activities in the specified collection for a particular
-- user.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsActivitiesList@.
module Network.Google.Resource.PlusDomains.Activities.List
    (
    -- * REST Resource
      ActivitiesListResource

    -- * Creating a Request
    , activitiesList'
    , ActivitiesList'

    -- * Request Lenses
    , aQuotaUser
    , aPrettyPrint
    , aUserIP
    , aCollection
    , aUserId
    , aKey
    , aPageToken
    , aOAuthToken
    , aMaxResults
    , aFields
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsActivitiesList@ method which the
-- 'ActivitiesList'' request conforms to.
type ActivitiesListResource =
     "people" :>
       Capture "userId" Text :>
         "activities" :>
           Capture "collection" ActivitiesListCollection :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ActivityFeed

-- | List all of the activities in the specified collection for a particular
-- user.
--
-- /See:/ 'activitiesList'' smart constructor.
data ActivitiesList' = ActivitiesList'
    { _aQuotaUser   :: !(Maybe Text)
    , _aPrettyPrint :: !Bool
    , _aUserIP      :: !(Maybe Text)
    , _aCollection  :: !ActivitiesListCollection
    , _aUserId      :: !Text
    , _aKey         :: !(Maybe AuthKey)
    , _aPageToken   :: !(Maybe Text)
    , _aOAuthToken  :: !(Maybe OAuthToken)
    , _aMaxResults  :: !Word32
    , _aFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivitiesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aQuotaUser'
--
-- * 'aPrettyPrint'
--
-- * 'aUserIP'
--
-- * 'aCollection'
--
-- * 'aUserId'
--
-- * 'aKey'
--
-- * 'aPageToken'
--
-- * 'aOAuthToken'
--
-- * 'aMaxResults'
--
-- * 'aFields'
activitiesList'
    :: ActivitiesListCollection -- ^ 'collection'
    -> Text -- ^ 'userId'
    -> ActivitiesList'
activitiesList' pACollection_ pAUserId_ =
    ActivitiesList'
    { _aQuotaUser = Nothing
    , _aPrettyPrint = True
    , _aUserIP = Nothing
    , _aCollection = pACollection_
    , _aUserId = pAUserId_
    , _aKey = Nothing
    , _aPageToken = Nothing
    , _aOAuthToken = Nothing
    , _aMaxResults = 20
    , _aFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aQuotaUser :: Lens' ActivitiesList' (Maybe Text)
aQuotaUser
  = lens _aQuotaUser (\ s a -> s{_aQuotaUser = a})

-- | Returns response with indentations and line breaks.
aPrettyPrint :: Lens' ActivitiesList' Bool
aPrettyPrint
  = lens _aPrettyPrint (\ s a -> s{_aPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aUserIP :: Lens' ActivitiesList' (Maybe Text)
aUserIP = lens _aUserIP (\ s a -> s{_aUserIP = a})

-- | The collection of activities to list.
aCollection :: Lens' ActivitiesList' ActivitiesListCollection
aCollection
  = lens _aCollection (\ s a -> s{_aCollection = a})

-- | The ID of the user to get activities for. The special value \"me\" can
-- be used to indicate the authenticated user.
aUserId :: Lens' ActivitiesList' Text
aUserId = lens _aUserId (\ s a -> s{_aUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aKey :: Lens' ActivitiesList' (Maybe AuthKey)
aKey = lens _aKey (\ s a -> s{_aKey = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
aPageToken :: Lens' ActivitiesList' (Maybe Text)
aPageToken
  = lens _aPageToken (\ s a -> s{_aPageToken = a})

-- | OAuth 2.0 token for the current user.
aOAuthToken :: Lens' ActivitiesList' (Maybe OAuthToken)
aOAuthToken
  = lens _aOAuthToken (\ s a -> s{_aOAuthToken = a})

-- | The maximum number of activities to include in the response, which is
-- used for paging. For any response, the actual number returned might be
-- less than the specified maxResults.
aMaxResults :: Lens' ActivitiesList' Word32
aMaxResults
  = lens _aMaxResults (\ s a -> s{_aMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aFields :: Lens' ActivitiesList' (Maybe Text)
aFields = lens _aFields (\ s a -> s{_aFields = a})

instance GoogleAuth ActivitiesList' where
        _AuthKey = aKey . _Just
        _AuthToken = aOAuthToken . _Just

instance GoogleRequest ActivitiesList' where
        type Rs ActivitiesList' = ActivityFeed
        request = requestWith plusDomainsRequest
        requestWith rq ActivitiesList'{..}
          = go _aUserId _aCollection _aPageToken
              (Just _aMaxResults)
              _aQuotaUser
              (Just _aPrettyPrint)
              _aUserIP
              _aFields
              _aKey
              _aOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy ActivitiesListResource)
                      rq
