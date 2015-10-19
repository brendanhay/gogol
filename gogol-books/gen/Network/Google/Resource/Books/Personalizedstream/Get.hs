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
-- Module      : Network.Google.Resource.Books.Personalizedstream.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a stream of personalized book clusters
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksPersonalizedstreamGet@.
module Network.Google.Resource.Books.Personalizedstream.Get
    (
    -- * REST Resource
      PersonalizedstreamGetResource

    -- * Creating a Request
    , personalizedstreamGet'
    , PersonalizedstreamGet'

    -- * Request Lenses
    , pgLocale
    , pgMaxAllowedMaturityRating
    , pgSource
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksPersonalizedstreamGet@ method which the
-- 'PersonalizedstreamGet'' request conforms to.
type PersonalizedstreamGetResource =
     "personalizedstream" :>
       "get" :>
         QueryParam "locale" Text :>
           QueryParam "maxAllowedMaturityRating"
             PersonalizedstreamGetMaxAllowedMaturityRating
             :>
             QueryParam "source" Text :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] Discoveryclusters

-- | Returns a stream of personalized book clusters
--
-- /See:/ 'personalizedstreamGet'' smart constructor.
data PersonalizedstreamGet' = PersonalizedstreamGet'
    { _pgLocale                   :: !(Maybe Text)
    , _pgMaxAllowedMaturityRating :: !(Maybe PersonalizedstreamGetMaxAllowedMaturityRating)
    , _pgSource                   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PersonalizedstreamGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgLocale'
--
-- * 'pgMaxAllowedMaturityRating'
--
-- * 'pgSource'
personalizedstreamGet'
    :: PersonalizedstreamGet'
personalizedstreamGet' =
    PersonalizedstreamGet'
    { _pgLocale = Nothing
    , _pgMaxAllowedMaturityRating = Nothing
    , _pgSource = Nothing
    }

-- | ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'. Used for
-- generating recommendations.
pgLocale :: Lens' PersonalizedstreamGet' (Maybe Text)
pgLocale = lens _pgLocale (\ s a -> s{_pgLocale = a})

-- | The maximum allowed maturity rating of returned recommendations. Books
-- with a higher maturity rating are filtered out.
pgMaxAllowedMaturityRating :: Lens' PersonalizedstreamGet' (Maybe PersonalizedstreamGetMaxAllowedMaturityRating)
pgMaxAllowedMaturityRating
  = lens _pgMaxAllowedMaturityRating
      (\ s a -> s{_pgMaxAllowedMaturityRating = a})

-- | String to identify the originator of this request.
pgSource :: Lens' PersonalizedstreamGet' (Maybe Text)
pgSource = lens _pgSource (\ s a -> s{_pgSource = a})

instance GoogleRequest PersonalizedstreamGet' where
        type Rs PersonalizedstreamGet' = Discoveryclusters
        requestClient PersonalizedstreamGet'{..}
          = go _pgLocale _pgMaxAllowedMaturityRating _pgSource
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy PersonalizedstreamGetResource)
                      mempty
