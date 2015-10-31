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
-- Module      : Network.Google.Resource.PlusDomains.People.ListByCircle
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all of the people who are members of a circle.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.people.listByCircle@.
module Network.Google.Resource.PlusDomains.People.ListByCircle
    (
    -- * REST Resource
      PeopleListByCircleResource

    -- * Creating a Request
    , peopleListByCircle
    , PeopleListByCircle

    -- * Request Lenses
    , plbcCircleId
    , plbcPageToken
    , plbcMaxResults
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @plusDomains.people.listByCircle@ method which the
-- 'PeopleListByCircle' request conforms to.
type PeopleListByCircleResource =
     "plusDomains" :>
       "v1" :>
         "circles" :>
           Capture "circleId" Text :>
             "people" :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" (Textual Word32) :>
                   QueryParam "alt" AltJSON :> Get '[JSON] PeopleFeed

-- | List all of the people who are members of a circle.
--
-- /See:/ 'peopleListByCircle' smart constructor.
data PeopleListByCircle = PeopleListByCircle
    { _plbcCircleId   :: !Text
    , _plbcPageToken  :: !(Maybe Text)
    , _plbcMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PeopleListByCircle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plbcCircleId'
--
-- * 'plbcPageToken'
--
-- * 'plbcMaxResults'
peopleListByCircle
    :: Text -- ^ 'plbcCircleId'
    -> PeopleListByCircle
peopleListByCircle pPlbcCircleId_ =
    PeopleListByCircle
    { _plbcCircleId = pPlbcCircleId_
    , _plbcPageToken = Nothing
    , _plbcMaxResults = 20
    }

-- | The ID of the circle to get the members of.
plbcCircleId :: Lens' PeopleListByCircle Text
plbcCircleId
  = lens _plbcCircleId (\ s a -> s{_plbcCircleId = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
plbcPageToken :: Lens' PeopleListByCircle (Maybe Text)
plbcPageToken
  = lens _plbcPageToken
      (\ s a -> s{_plbcPageToken = a})

-- | The maximum number of people to include in the response, which is used
-- for paging. For any response, the actual number returned might be less
-- than the specified maxResults.
plbcMaxResults :: Lens' PeopleListByCircle Word32
plbcMaxResults
  = lens _plbcMaxResults
      (\ s a -> s{_plbcMaxResults = a})
      . _Coerce

instance GoogleRequest PeopleListByCircle where
        type Rs PeopleListByCircle = PeopleFeed
        type Scopes PeopleListByCircle =
             '["https://www.googleapis.com/auth/plus.circles.read",
               "https://www.googleapis.com/auth/plus.login"]
        requestClient PeopleListByCircle{..}
          = go _plbcCircleId _plbcPageToken
              (Just _plbcMaxResults)
              (Just AltJSON)
              plusDomainsService
          where go
                  = buildClient
                      (Proxy :: Proxy PeopleListByCircleResource)
                      mempty
