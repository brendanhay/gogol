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
-- Module      : Network.Google.Resource.PlusDomains.Audiences.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all of the audiences to which a user can share.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.audiences.list@.
module Network.Google.Resource.PlusDomains.Audiences.List
    (
    -- * REST Resource
      AudiencesListResource

    -- * Creating a Request
    , audiencesList
    , AudiencesList

    -- * Request Lenses
    , aUserId
    , aPageToken
    , aMaxResults
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @plusDomains.audiences.list@ method which the
-- 'AudiencesList' request conforms to.
type AudiencesListResource =
     "plusDomains" :>
       "v1" :>
         "people" :>
           Capture "userId" Text :>
             "audiences" :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" (Textual Word32) :>
                   QueryParam "alt" AltJSON :> Get '[JSON] AudiencesFeed

-- | List all of the audiences to which a user can share.
--
-- /See:/ 'audiencesList' smart constructor.
data AudiencesList =
  AudiencesList'
    { _aUserId     :: !Text
    , _aPageToken  :: !(Maybe Text)
    , _aMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AudiencesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aUserId'
--
-- * 'aPageToken'
--
-- * 'aMaxResults'
audiencesList
    :: Text -- ^ 'aUserId'
    -> AudiencesList
audiencesList pAUserId_ =
  AudiencesList'
    {_aUserId = pAUserId_, _aPageToken = Nothing, _aMaxResults = 20}

-- | The ID of the user to get audiences for. The special value \"me\" can be
-- used to indicate the authenticated user.
aUserId :: Lens' AudiencesList Text
aUserId = lens _aUserId (\ s a -> s{_aUserId = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
aPageToken :: Lens' AudiencesList (Maybe Text)
aPageToken
  = lens _aPageToken (\ s a -> s{_aPageToken = a})

-- | The maximum number of circles to include in the response, which is used
-- for paging. For any response, the actual number returned might be less
-- than the specified maxResults.
aMaxResults :: Lens' AudiencesList Word32
aMaxResults
  = lens _aMaxResults (\ s a -> s{_aMaxResults = a}) .
      _Coerce

instance GoogleRequest AudiencesList where
        type Rs AudiencesList = AudiencesFeed
        type Scopes AudiencesList =
             '["https://www.googleapis.com/auth/plus.circles.read",
               "https://www.googleapis.com/auth/plus.login",
               "https://www.googleapis.com/auth/plus.me"]
        requestClient AudiencesList'{..}
          = go _aUserId _aPageToken (Just _aMaxResults)
              (Just AltJSON)
              plusDomainsService
          where go
                  = buildClient (Proxy :: Proxy AudiencesListResource)
                      mempty
