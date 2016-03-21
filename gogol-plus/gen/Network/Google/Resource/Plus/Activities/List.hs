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
-- Module      : Network.Google.Resource.Plus.Activities.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all of the activities in the specified collection for a particular
-- user.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference> for @plus.activities.list@.
module Network.Google.Resource.Plus.Activities.List
    (
    -- * REST Resource
      ActivitiesListResource

    -- * Creating a Request
    , activitiesList
    , ActivitiesList

    -- * Request Lenses
    , alCollection
    , alUserId
    , alPageToken
    , alMaxResults
    ) where

import           Network.Google.Plus.Types
import           Network.Google.Prelude

-- | A resource alias for @plus.activities.list@ method which the
-- 'ActivitiesList' request conforms to.
type ActivitiesListResource =
     "plus" :>
       "v1" :>
         "people" :>
           Capture "userId" Text :>
             "activities" :>
               Capture "collection" ActivitiesListCollection :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" (Textual Word32) :>
                     QueryParam "alt" AltJSON :> Get '[JSON] ActivityFeed

-- | List all of the activities in the specified collection for a particular
-- user.
--
-- /See:/ 'activitiesList' smart constructor.
data ActivitiesList = ActivitiesList'
    { _alCollection :: !ActivitiesListCollection
    , _alUserId     :: !Text
    , _alPageToken  :: !(Maybe Text)
    , _alMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivitiesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alCollection'
--
-- * 'alUserId'
--
-- * 'alPageToken'
--
-- * 'alMaxResults'
activitiesList
    :: ActivitiesListCollection -- ^ 'alCollection'
    -> Text -- ^ 'alUserId'
    -> ActivitiesList
activitiesList pAlCollection_ pAlUserId_ =
    ActivitiesList'
    { _alCollection = pAlCollection_
    , _alUserId = pAlUserId_
    , _alPageToken = Nothing
    , _alMaxResults = 20
    }

-- | The collection of activities to list.
alCollection :: Lens' ActivitiesList ActivitiesListCollection
alCollection
  = lens _alCollection (\ s a -> s{_alCollection = a})

-- | The ID of the user to get activities for. The special value \"me\" can
-- be used to indicate the authenticated user.
alUserId :: Lens' ActivitiesList Text
alUserId = lens _alUserId (\ s a -> s{_alUserId = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
alPageToken :: Lens' ActivitiesList (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | The maximum number of activities to include in the response, which is
-- used for paging. For any response, the actual number returned might be
-- less than the specified maxResults.
alMaxResults :: Lens' ActivitiesList Word32
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})
      . _Coerce

instance GoogleRequest ActivitiesList where
        type Rs ActivitiesList = ActivityFeed
        type Scopes ActivitiesList =
             '["https://www.googleapis.com/auth/plus.login",
               "https://www.googleapis.com/auth/plus.me"]
        requestClient ActivitiesList'{..}
          = go _alUserId _alCollection _alPageToken
              (Just _alMaxResults)
              (Just AltJSON)
              plusService
          where go
                  = buildClient (Proxy :: Proxy ActivitiesListResource)
                      mempty
