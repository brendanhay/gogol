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
-- Module      : Network.Google.Resource.Plus.People.ListByActivity
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all of the people in the specified collection for a particular
-- activity.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference> for @plus.people.listByActivity@.
module Network.Google.Resource.Plus.People.ListByActivity
    (
    -- * REST Resource
      PeopleListByActivityResource

    -- * Creating a Request
    , peopleListByActivity
    , PeopleListByActivity

    -- * Request Lenses
    , plbaActivityId
    , plbaCollection
    , plbaPageToken
    , plbaMaxResults
    ) where

import           Network.Google.Plus.Types
import           Network.Google.Prelude

-- | A resource alias for @plus.people.listByActivity@ method which the
-- 'PeopleListByActivity' request conforms to.
type PeopleListByActivityResource =
     "plus" :>
       "v1" :>
         "activities" :>
           Capture "activityId" Text :>
             "people" :>
               Capture "collection" PeopleListByActivityCollection
                 :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" (Textual Word32) :>
                     QueryParam "alt" AltJSON :> Get '[JSON] PeopleFeed

-- | List all of the people in the specified collection for a particular
-- activity.
--
-- /See:/ 'peopleListByActivity' smart constructor.
data PeopleListByActivity = PeopleListByActivity'
    { _plbaActivityId :: !Text
    , _plbaCollection :: !PeopleListByActivityCollection
    , _plbaPageToken  :: !(Maybe Text)
    , _plbaMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PeopleListByActivity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plbaActivityId'
--
-- * 'plbaCollection'
--
-- * 'plbaPageToken'
--
-- * 'plbaMaxResults'
peopleListByActivity
    :: Text -- ^ 'plbaActivityId'
    -> PeopleListByActivityCollection -- ^ 'plbaCollection'
    -> PeopleListByActivity
peopleListByActivity pPlbaActivityId_ pPlbaCollection_ =
    PeopleListByActivity'
    { _plbaActivityId = pPlbaActivityId_
    , _plbaCollection = pPlbaCollection_
    , _plbaPageToken = Nothing
    , _plbaMaxResults = 20
    }

-- | The ID of the activity to get the list of people for.
plbaActivityId :: Lens' PeopleListByActivity Text
plbaActivityId
  = lens _plbaActivityId
      (\ s a -> s{_plbaActivityId = a})

-- | The collection of people to list.
plbaCollection :: Lens' PeopleListByActivity PeopleListByActivityCollection
plbaCollection
  = lens _plbaCollection
      (\ s a -> s{_plbaCollection = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
plbaPageToken :: Lens' PeopleListByActivity (Maybe Text)
plbaPageToken
  = lens _plbaPageToken
      (\ s a -> s{_plbaPageToken = a})

-- | The maximum number of people to include in the response, which is used
-- for paging. For any response, the actual number returned might be less
-- than the specified maxResults.
plbaMaxResults :: Lens' PeopleListByActivity Word32
plbaMaxResults
  = lens _plbaMaxResults
      (\ s a -> s{_plbaMaxResults = a})
      . _Coerce

instance GoogleRequest PeopleListByActivity where
        type Rs PeopleListByActivity = PeopleFeed
        type Scopes PeopleListByActivity =
             '["https://www.googleapis.com/auth/plus.login",
               "https://www.googleapis.com/auth/plus.me"]
        requestClient PeopleListByActivity'{..}
          = go _plbaActivityId _plbaCollection _plbaPageToken
              (Just _plbaMaxResults)
              (Just AltJSON)
              plusService
          where go
                  = buildClient
                      (Proxy :: Proxy PeopleListByActivityResource)
                      mempty
