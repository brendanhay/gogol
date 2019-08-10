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
-- Module      : Network.Google.Resource.Plus.People.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more
-- details.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference> for @plus.people.search@.
module Network.Google.Resource.Plus.People.Search
    (
    -- * REST Resource
      PeopleSearchResource

    -- * Creating a Request
    , peopleSearch
    , PeopleSearch

    -- * Request Lenses
    , psQuery
    , psLanguage
    , psPageToken
    , psMaxResults
    ) where

import           Network.Google.Plus.Types
import           Network.Google.Prelude

-- | A resource alias for @plus.people.search@ method which the
-- 'PeopleSearch' request conforms to.
type PeopleSearchResource =
     "plus" :>
       "v1" :>
         "people" :>
           QueryParam "query" Text :>
             QueryParam "language" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" (Textual Word32) :>
                   QueryParam "alt" AltJSON :> Get '[JSON] PeopleFeed

-- | Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more
-- details.
--
-- /See:/ 'peopleSearch' smart constructor.
data PeopleSearch =
  PeopleSearch'
    { _psQuery      :: !Text
    , _psLanguage   :: !Text
    , _psPageToken  :: !(Maybe Text)
    , _psMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PeopleSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psQuery'
--
-- * 'psLanguage'
--
-- * 'psPageToken'
--
-- * 'psMaxResults'
peopleSearch
    :: Text -- ^ 'psQuery'
    -> PeopleSearch
peopleSearch pPsQuery_ =
  PeopleSearch'
    { _psQuery = pPsQuery_
    , _psLanguage = "en-US"
    , _psPageToken = Nothing
    , _psMaxResults = 25
    }


-- | Specify a query string for full text search of public text in all
-- profiles.
psQuery :: Lens' PeopleSearch Text
psQuery = lens _psQuery (\ s a -> s{_psQuery = a})

-- | Specify the preferred language to search with. See search language codes
-- for available values.
psLanguage :: Lens' PeopleSearch Text
psLanguage
  = lens _psLanguage (\ s a -> s{_psLanguage = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response. This token can be of any
-- length.
psPageToken :: Lens' PeopleSearch (Maybe Text)
psPageToken
  = lens _psPageToken (\ s a -> s{_psPageToken = a})

-- | The maximum number of people to include in the response, which is used
-- for paging. For any response, the actual number returned might be less
-- than the specified maxResults.
psMaxResults :: Lens' PeopleSearch Word32
psMaxResults
  = lens _psMaxResults (\ s a -> s{_psMaxResults = a})
      . _Coerce

instance GoogleRequest PeopleSearch where
        type Rs PeopleSearch = PeopleFeed
        type Scopes PeopleSearch =
             '["https://www.googleapis.com/auth/plus.login",
               "https://www.googleapis.com/auth/plus.me"]
        requestClient PeopleSearch'{..}
          = go (Just _psQuery) (Just _psLanguage) _psPageToken
              (Just _psMaxResults)
              (Just AltJSON)
              plusService
          where go
                  = buildClient (Proxy :: Proxy PeopleSearchResource)
                      mempty
