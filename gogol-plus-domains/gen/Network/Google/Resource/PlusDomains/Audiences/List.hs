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
-- Copyright   : (c) 2015 Brendan Hay
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
    , audiencesList'
    , AudiencesList'

    -- * Request Lenses
    , alUserId
    , alPageToken
    , alMaxResults
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @plusDomains.audiences.list@ method which the
-- 'AudiencesList'' request conforms to.
type AudiencesListResource =
     "people" :>
       Capture "userId" Text :>
         "audiences" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               QueryParam "alt" AltJSON :> Get '[JSON] AudiencesFeed

-- | List all of the audiences to which a user can share.
--
-- /See:/ 'audiencesList'' smart constructor.
data AudiencesList' = AudiencesList'
    { _alUserId     :: !Text
    , _alPageToken  :: !(Maybe Text)
    , _alMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AudiencesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alUserId'
--
-- * 'alPageToken'
--
-- * 'alMaxResults'
audiencesList'
    :: Text -- ^ 'alUserId'
    -> AudiencesList'
audiencesList' pAlUserId_ =
    AudiencesList'
    { _alUserId = pAlUserId_
    , _alPageToken = Nothing
    , _alMaxResults = 20
    }

-- | The ID of the user to get audiences for. The special value \"me\" can be
-- used to indicate the authenticated user.
alUserId :: Lens' AudiencesList' Text
alUserId = lens _alUserId (\ s a -> s{_alUserId = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
alPageToken :: Lens' AudiencesList' (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | The maximum number of circles to include in the response, which is used
-- for paging. For any response, the actual number returned might be less
-- than the specified maxResults.
alMaxResults :: Lens' AudiencesList' Word32
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})

instance GoogleRequest AudiencesList' where
        type Rs AudiencesList' = AudiencesFeed
        requestClient AudiencesList'{..}
          = go _alUserId _alPageToken (Just _alMaxResults)
              (Just AltJSON)
              plusDomainsService
          where go
                  = buildClient (Proxy :: Proxy AudiencesListResource)
                      mempty
