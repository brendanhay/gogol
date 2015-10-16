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
module Network.Google.Resource.PlusDomains.People.List
    (
    -- * REST Resource
      PeopleListResource

    -- * Creating a Request
    , peopleList'
    , PeopleList'

    -- * Request Lenses
    , plOrderBy
    , plCollection
    , plUserId
    , plPageToken
    , plMaxResults
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsPeopleList@ method which the
-- 'PeopleList'' request conforms to.
type PeopleListResource =
     "people" :>
       Capture "userId" Text :>
         "people" :>
           Capture "collection" PeopleListCollection :>
             QueryParam "orderBy" PeopleListOrderBy :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "alt" AltJSON :> Get '[JSON] PeopleFeed

-- | List all of the people in the specified collection.
--
-- /See:/ 'peopleList'' smart constructor.
data PeopleList' = PeopleList'
    { _plOrderBy    :: !(Maybe PeopleListOrderBy)
    , _plCollection :: !PeopleListCollection
    , _plUserId     :: !Text
    , _plPageToken  :: !(Maybe Text)
    , _plMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PeopleList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plOrderBy'
--
-- * 'plCollection'
--
-- * 'plUserId'
--
-- * 'plPageToken'
--
-- * 'plMaxResults'
peopleList'
    :: PeopleListCollection -- ^ 'collection'
    -> Text -- ^ 'userId'
    -> PeopleList'
peopleList' pPlCollection_ pPlUserId_ =
    PeopleList'
    { _plOrderBy = Nothing
    , _plCollection = pPlCollection_
    , _plUserId = pPlUserId_
    , _plPageToken = Nothing
    , _plMaxResults = 100
    }

-- | The order to return people in.
plOrderBy :: Lens' PeopleList' (Maybe PeopleListOrderBy)
plOrderBy
  = lens _plOrderBy (\ s a -> s{_plOrderBy = a})

-- | The collection of people to list.
plCollection :: Lens' PeopleList' PeopleListCollection
plCollection
  = lens _plCollection (\ s a -> s{_plCollection = a})

-- | Get the collection of people for the person identified. Use \"me\" to
-- indicate the authenticated user.
plUserId :: Lens' PeopleList' Text
plUserId = lens _plUserId (\ s a -> s{_plUserId = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
plPageToken :: Lens' PeopleList' (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | The maximum number of people to include in the response, which is used
-- for paging. For any response, the actual number returned might be less
-- than the specified maxResults.
plMaxResults :: Lens' PeopleList' Word32
plMaxResults
  = lens _plMaxResults (\ s a -> s{_plMaxResults = a})

instance GoogleRequest PeopleList' where
        type Rs PeopleList' = PeopleFeed
        requestClient PeopleList'{..}
          = go _plUserId _plCollection _plOrderBy _plPageToken
              (Just _plMaxResults)
              (Just AltJSON)
              plusDomainsService
          where go
                  = buildClient (Proxy :: Proxy PeopleListResource)
                      mempty
