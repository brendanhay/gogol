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
-- Module      : Network.Google.Resource.Plus.Activities.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more
-- details.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference> for @plus.activities.search@.
module Network.Google.Resource.Plus.Activities.Search
    (
    -- * REST Resource
      ActivitiesSearchResource

    -- * Creating a Request
    , activitiesSearch
    , ActivitiesSearch

    -- * Request Lenses
    , asOrderBy
    , asQuery
    , asLanguage
    , asPageToken
    , asMaxResults
    ) where

import Network.Google.Plus.Types
import Network.Google.Prelude

-- | A resource alias for @plus.activities.search@ method which the
-- 'ActivitiesSearch' request conforms to.
type ActivitiesSearchResource =
     "plus" :>
       "v1" :>
         "activities" :>
           QueryParam "query" Text :>
             QueryParam "orderBy" ActivitiesSearchOrderBy :>
               QueryParam "language" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" (Textual Word32) :>
                     QueryParam "alt" AltJSON :> Get '[JSON] ActivityFeed

-- | Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more
-- details.
--
-- /See:/ 'activitiesSearch' smart constructor.
data ActivitiesSearch =
  ActivitiesSearch'
    { _asOrderBy :: !ActivitiesSearchOrderBy
    , _asQuery :: !Text
    , _asLanguage :: !Text
    , _asPageToken :: !(Maybe Text)
    , _asMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivitiesSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asOrderBy'
--
-- * 'asQuery'
--
-- * 'asLanguage'
--
-- * 'asPageToken'
--
-- * 'asMaxResults'
activitiesSearch
    :: Text -- ^ 'asQuery'
    -> ActivitiesSearch
activitiesSearch pAsQuery_ =
  ActivitiesSearch'
    { _asOrderBy = ASOBRecent
    , _asQuery = pAsQuery_
    , _asLanguage = "en-US"
    , _asPageToken = Nothing
    , _asMaxResults = 10
    }


-- | Specifies how to order search results.
asOrderBy :: Lens' ActivitiesSearch ActivitiesSearchOrderBy
asOrderBy
  = lens _asOrderBy (\ s a -> s{_asOrderBy = a})

-- | Full-text search query string.
asQuery :: Lens' ActivitiesSearch Text
asQuery = lens _asQuery (\ s a -> s{_asQuery = a})

-- | Specify the preferred language to search with. See search language codes
-- for available values.
asLanguage :: Lens' ActivitiesSearch Text
asLanguage
  = lens _asLanguage (\ s a -> s{_asLanguage = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response. This token can be of any
-- length.
asPageToken :: Lens' ActivitiesSearch (Maybe Text)
asPageToken
  = lens _asPageToken (\ s a -> s{_asPageToken = a})

-- | The maximum number of activities to include in the response, which is
-- used for paging. For any response, the actual number returned might be
-- less than the specified maxResults.
asMaxResults :: Lens' ActivitiesSearch Word32
asMaxResults
  = lens _asMaxResults (\ s a -> s{_asMaxResults = a})
      . _Coerce

instance GoogleRequest ActivitiesSearch where
        type Rs ActivitiesSearch = ActivityFeed
        type Scopes ActivitiesSearch =
             '["https://www.googleapis.com/auth/plus.login",
               "https://www.googleapis.com/auth/plus.me"]
        requestClient ActivitiesSearch'{..}
          = go (Just _asQuery) (Just _asOrderBy)
              (Just _asLanguage)
              _asPageToken
              (Just _asMaxResults)
              (Just AltJSON)
              plusService
          where go
                  = buildClient
                      (Proxy :: Proxy ActivitiesSearchResource)
                      mempty
