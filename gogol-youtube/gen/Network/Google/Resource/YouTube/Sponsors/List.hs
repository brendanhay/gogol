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
-- Module      : Network.Google.Resource.YouTube.Sponsors.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists sponsors for a channel.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.sponsors.list@.
module Network.Google.Resource.YouTube.Sponsors.List
    (
    -- * REST Resource
      SponsorsListResource

    -- * Creating a Request
    , sponsorsList
    , SponsorsList

    -- * Request Lenses
    , sPart
    , sFilter
    , sPageToken
    , sMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.sponsors.list@ method which the
-- 'SponsorsList' request conforms to.
type SponsorsListResource =
     "youtube" :>
       "v3" :>
         "sponsors" :>
           QueryParam "part" Text :>
             QueryParam "filter" SponsorsListFilter :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" (Textual Word32) :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] SponsorListResponse

-- | Lists sponsors for a channel.
--
-- /See:/ 'sponsorsList' smart constructor.
data SponsorsList =
  SponsorsList'
    { _sPart       :: !Text
    , _sFilter     :: !SponsorsListFilter
    , _sPageToken  :: !(Maybe Text)
    , _sMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SponsorsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sPart'
--
-- * 'sFilter'
--
-- * 'sPageToken'
--
-- * 'sMaxResults'
sponsorsList
    :: Text -- ^ 'sPart'
    -> SponsorsList
sponsorsList pSPart_ =
  SponsorsList'
    { _sPart = pSPart_
    , _sFilter = SLFNewest
    , _sPageToken = Nothing
    , _sMaxResults = 5
    }


-- | The part parameter specifies the sponsor resource parts that the API
-- response will include. Supported values are id and snippet.
sPart :: Lens' SponsorsList Text
sPart = lens _sPart (\ s a -> s{_sPart = a})

-- | The filter parameter specifies which channel sponsors to return.
sFilter :: Lens' SponsorsList SponsorsListFilter
sFilter = lens _sFilter (\ s a -> s{_sFilter = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
sPageToken :: Lens' SponsorsList (Maybe Text)
sPageToken
  = lens _sPageToken (\ s a -> s{_sPageToken = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set.
sMaxResults :: Lens' SponsorsList Word32
sMaxResults
  = lens _sMaxResults (\ s a -> s{_sMaxResults = a}) .
      _Coerce

instance GoogleRequest SponsorsList where
        type Rs SponsorsList = SponsorListResponse
        type Scopes SponsorsList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.readonly"]
        requestClient SponsorsList'{..}
          = go (Just _sPart) (Just _sFilter) _sPageToken
              (Just _sMaxResults)
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient (Proxy :: Proxy SponsorsListResource)
                      mempty
