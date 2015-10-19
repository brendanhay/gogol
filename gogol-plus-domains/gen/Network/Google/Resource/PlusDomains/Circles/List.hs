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
-- Module      : Network.Google.Resource.PlusDomains.Circles.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all of the circles for a user.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsCirclesList@.
module Network.Google.Resource.PlusDomains.Circles.List
    (
    -- * REST Resource
      CirclesListResource

    -- * Creating a Request
    , circlesList'
    , CirclesList'

    -- * Request Lenses
    , clUserId
    , clPageToken
    , clMaxResults
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsCirclesList@ method which the
-- 'CirclesList'' request conforms to.
type CirclesListResource =
     "people" :>
       Capture "userId" Text :>
         "circles" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               QueryParam "alt" AltJSON :> Get '[JSON] CircleFeed

-- | List all of the circles for a user.
--
-- /See:/ 'circlesList'' smart constructor.
data CirclesList' = CirclesList'
    { _clUserId     :: !Text
    , _clPageToken  :: !(Maybe Text)
    , _clMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CirclesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clUserId'
--
-- * 'clPageToken'
--
-- * 'clMaxResults'
circlesList'
    :: Text -- ^ 'userId'
    -> CirclesList'
circlesList' pClUserId_ =
    CirclesList'
    { _clUserId = pClUserId_
    , _clPageToken = Nothing
    , _clMaxResults = 20
    }

-- | The ID of the user to get circles for. The special value \"me\" can be
-- used to indicate the authenticated user.
clUserId :: Lens' CirclesList' Text
clUserId = lens _clUserId (\ s a -> s{_clUserId = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
clPageToken :: Lens' CirclesList' (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | The maximum number of circles to include in the response, which is used
-- for paging. For any response, the actual number returned might be less
-- than the specified maxResults.
clMaxResults :: Lens' CirclesList' Word32
clMaxResults
  = lens _clMaxResults (\ s a -> s{_clMaxResults = a})

instance GoogleRequest CirclesList' where
        type Rs CirclesList' = CircleFeed
        requestClient CirclesList'{..}
          = go _clUserId _clPageToken (Just _clMaxResults)
              (Just AltJSON)
              plusDomainsService
          where go
                  = buildClient (Proxy :: Proxy CirclesListResource)
                      mempty
