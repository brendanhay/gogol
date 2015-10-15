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
    , aCollection
    , aUserId
    , aPageToken
    , aMaxResults
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
                 QueryParam "alt" AltJSON :> Get '[JSON] ActivityFeed

-- | List all of the activities in the specified collection for a particular
-- user.
--
-- /See:/ 'activitiesList'' smart constructor.
data ActivitiesList' = ActivitiesList'
    { _aCollection :: !ActivitiesListCollection
    , _aUserId     :: !Text
    , _aPageToken  :: !(Maybe Text)
    , _aMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivitiesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aCollection'
--
-- * 'aUserId'
--
-- * 'aPageToken'
--
-- * 'aMaxResults'
activitiesList'
    :: ActivitiesListCollection -- ^ 'collection'
    -> Text -- ^ 'userId'
    -> ActivitiesList'
activitiesList' pACollection_ pAUserId_ =
    ActivitiesList'
    { _aCollection = pACollection_
    , _aUserId = pAUserId_
    , _aPageToken = Nothing
    , _aMaxResults = 20
    }

-- | The collection of activities to list.
aCollection :: Lens' ActivitiesList' ActivitiesListCollection
aCollection
  = lens _aCollection (\ s a -> s{_aCollection = a})

-- | The ID of the user to get activities for. The special value \"me\" can
-- be used to indicate the authenticated user.
aUserId :: Lens' ActivitiesList' Text
aUserId = lens _aUserId (\ s a -> s{_aUserId = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
aPageToken :: Lens' ActivitiesList' (Maybe Text)
aPageToken
  = lens _aPageToken (\ s a -> s{_aPageToken = a})

-- | The maximum number of activities to include in the response, which is
-- used for paging. For any response, the actual number returned might be
-- less than the specified maxResults.
aMaxResults :: Lens' ActivitiesList' Word32
aMaxResults
  = lens _aMaxResults (\ s a -> s{_aMaxResults = a})

instance GoogleRequest ActivitiesList' where
        type Rs ActivitiesList' = ActivityFeed
        requestClient ActivitiesList'{..}
          = go _aUserId _aCollection _aPageToken
              (Just _aMaxResults)
              (Just AltJSON)
              plusDomains
          where go
                  = buildClient (Proxy :: Proxy ActivitiesListResource)
                      mempty
