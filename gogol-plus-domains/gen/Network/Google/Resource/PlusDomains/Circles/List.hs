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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more
-- details.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.circles.list@.
module Network.Google.Resource.PlusDomains.Circles.List
    (
    -- * REST Resource
      CirclesListResource

    -- * Creating a Request
    , circlesList
    , CirclesList

    -- * Request Lenses
    , cUserId
    , cPageToken
    , cMaxResults
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @plusDomains.circles.list@ method which the
-- 'CirclesList' request conforms to.
type CirclesListResource =
     "plusDomains" :>
       "v1" :>
         "people" :>
           Capture "userId" Text :>
             "circles" :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" (Textual Word32) :>
                   QueryParam "alt" AltJSON :> Get '[JSON] CircleFeed

-- | Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more
-- details.
--
-- /See:/ 'circlesList' smart constructor.
data CirclesList =
  CirclesList'
    { _cUserId     :: !Text
    , _cPageToken  :: !(Maybe Text)
    , _cMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CirclesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cUserId'
--
-- * 'cPageToken'
--
-- * 'cMaxResults'
circlesList
    :: Text -- ^ 'cUserId'
    -> CirclesList
circlesList pCUserId_ =
  CirclesList' {_cUserId = pCUserId_, _cPageToken = Nothing, _cMaxResults = 20}


-- | The ID of the user to get circles for. The special value \"me\" can be
-- used to indicate the authenticated user.
cUserId :: Lens' CirclesList Text
cUserId = lens _cUserId (\ s a -> s{_cUserId = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
cPageToken :: Lens' CirclesList (Maybe Text)
cPageToken
  = lens _cPageToken (\ s a -> s{_cPageToken = a})

-- | The maximum number of circles to include in the response, which is used
-- for paging. For any response, the actual number returned might be less
-- than the specified maxResults.
cMaxResults :: Lens' CirclesList Word32
cMaxResults
  = lens _cMaxResults (\ s a -> s{_cMaxResults = a}) .
      _Coerce

instance GoogleRequest CirclesList where
        type Rs CirclesList = CircleFeed
        type Scopes CirclesList =
             '["https://www.googleapis.com/auth/plus.circles.read",
               "https://www.googleapis.com/auth/plus.login",
               "https://www.googleapis.com/auth/plus.me"]
        requestClient CirclesList'{..}
          = go _cUserId _cPageToken (Just _cMaxResults)
              (Just AltJSON)
              plusDomainsService
          where go
                  = buildClient (Proxy :: Proxy CirclesListResource)
                      mempty
