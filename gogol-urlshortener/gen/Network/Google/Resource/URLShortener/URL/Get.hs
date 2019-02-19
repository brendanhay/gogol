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
-- Module      : Network.Google.Resource.URLShortener.URL.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Expands a short URL or gets creation time and analytics.
--
-- /See:/ <https://developers.google.com/url-shortener/v1/getting_started URL Shortener API Reference> for @urlshortener.url.get@.
module Network.Google.Resource.URLShortener.URL.Get
    (
    -- * REST Resource
      URLGetResource

    -- * Creating a Request
    , urlGet
    , URLGet

    -- * Request Lenses
    , ugProjection
    , ugShortURL
    ) where

import           Network.Google.Prelude
import           Network.Google.URLShortener.Types

-- | A resource alias for @urlshortener.url.get@ method which the
-- 'URLGet' request conforms to.
type URLGetResource =
     "urlshortener" :>
       "v1" :>
         "url" :>
           QueryParam "shortUrl" Text :>
             QueryParam "projection" URLGetProjection :>
               QueryParam "alt" AltJSON :> Get '[JSON] URL

-- | Expands a short URL or gets creation time and analytics.
--
-- /See:/ 'urlGet' smart constructor.
data URLGet =
  URLGet'
    { _ugProjection :: !(Maybe URLGetProjection)
    , _ugShortURL   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'URLGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugProjection'
--
-- * 'ugShortURL'
urlGet
    :: Text -- ^ 'ugShortURL'
    -> URLGet
urlGet pUgShortURL_ =
  URLGet' {_ugProjection = Nothing, _ugShortURL = pUgShortURL_}

-- | Additional information to return.
ugProjection :: Lens' URLGet (Maybe URLGetProjection)
ugProjection
  = lens _ugProjection (\ s a -> s{_ugProjection = a})

-- | The short URL, including the protocol.
ugShortURL :: Lens' URLGet Text
ugShortURL
  = lens _ugShortURL (\ s a -> s{_ugShortURL = a})

instance GoogleRequest URLGet where
        type Rs URLGet = URL
        type Scopes URLGet =
             '["https://www.googleapis.com/auth/urlshortener"]
        requestClient URLGet'{..}
          = go (Just _ugShortURL) _ugProjection (Just AltJSON)
              uRLShortenerService
          where go
                  = buildClient (Proxy :: Proxy URLGetResource) mempty
