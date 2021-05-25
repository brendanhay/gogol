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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a stream of personalized book clusters
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.personalizedstream.get@.
module Network.Google.Resource.Books.Personalizedstream.Get
    (
    -- * REST Resource
      PersonalizedstreamGetResource

    -- * Creating a Request
    , personalizedstreamGet
    , PersonalizedstreamGet

    -- * Request Lenses
    , pgXgafv
    , pgUploadProtocol
    , pgLocale
    , pgAccessToken
    , pgMaxAllowedMaturityRating
    , pgUploadType
    , pgSource
    , pgCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.personalizedstream.get@ method which the
-- 'PersonalizedstreamGet' request conforms to.
type PersonalizedstreamGetResource =
     "books" :>
       "v1" :>
         "personalizedstream" :>
           "get" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "locale" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "maxAllowedMaturityRating"
                       PersonalizedstreamGetMaxAllowedMaturityRating
                       :>
                       QueryParam "uploadType" Text :>
                         QueryParam "source" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] Discoveryclusters

-- | Returns a stream of personalized book clusters
--
-- /See:/ 'personalizedstreamGet' smart constructor.
data PersonalizedstreamGet =
  PersonalizedstreamGet'
    { _pgXgafv :: !(Maybe Xgafv)
    , _pgUploadProtocol :: !(Maybe Text)
    , _pgLocale :: !(Maybe Text)
    , _pgAccessToken :: !(Maybe Text)
    , _pgMaxAllowedMaturityRating :: !(Maybe PersonalizedstreamGetMaxAllowedMaturityRating)
    , _pgUploadType :: !(Maybe Text)
    , _pgSource :: !(Maybe Text)
    , _pgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PersonalizedstreamGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgXgafv'
--
-- * 'pgUploadProtocol'
--
-- * 'pgLocale'
--
-- * 'pgAccessToken'
--
-- * 'pgMaxAllowedMaturityRating'
--
-- * 'pgUploadType'
--
-- * 'pgSource'
--
-- * 'pgCallback'
personalizedstreamGet
    :: PersonalizedstreamGet
personalizedstreamGet =
  PersonalizedstreamGet'
    { _pgXgafv = Nothing
    , _pgUploadProtocol = Nothing
    , _pgLocale = Nothing
    , _pgAccessToken = Nothing
    , _pgMaxAllowedMaturityRating = Nothing
    , _pgUploadType = Nothing
    , _pgSource = Nothing
    , _pgCallback = Nothing
    }


-- | V1 error format.
pgXgafv :: Lens' PersonalizedstreamGet (Maybe Xgafv)
pgXgafv = lens _pgXgafv (\ s a -> s{_pgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgUploadProtocol :: Lens' PersonalizedstreamGet (Maybe Text)
pgUploadProtocol
  = lens _pgUploadProtocol
      (\ s a -> s{_pgUploadProtocol = a})

-- | ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'. Used for
-- generating recommendations.
pgLocale :: Lens' PersonalizedstreamGet (Maybe Text)
pgLocale = lens _pgLocale (\ s a -> s{_pgLocale = a})

-- | OAuth access token.
pgAccessToken :: Lens' PersonalizedstreamGet (Maybe Text)
pgAccessToken
  = lens _pgAccessToken
      (\ s a -> s{_pgAccessToken = a})

-- | The maximum allowed maturity rating of returned recommendations. Books
-- with a higher maturity rating are filtered out.
pgMaxAllowedMaturityRating :: Lens' PersonalizedstreamGet (Maybe PersonalizedstreamGetMaxAllowedMaturityRating)
pgMaxAllowedMaturityRating
  = lens _pgMaxAllowedMaturityRating
      (\ s a -> s{_pgMaxAllowedMaturityRating = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgUploadType :: Lens' PersonalizedstreamGet (Maybe Text)
pgUploadType
  = lens _pgUploadType (\ s a -> s{_pgUploadType = a})

-- | String to identify the originator of this request.
pgSource :: Lens' PersonalizedstreamGet (Maybe Text)
pgSource = lens _pgSource (\ s a -> s{_pgSource = a})

-- | JSONP
pgCallback :: Lens' PersonalizedstreamGet (Maybe Text)
pgCallback
  = lens _pgCallback (\ s a -> s{_pgCallback = a})

instance GoogleRequest PersonalizedstreamGet where
        type Rs PersonalizedstreamGet = Discoveryclusters
        type Scopes PersonalizedstreamGet =
             '["https://www.googleapis.com/auth/books"]
        requestClient PersonalizedstreamGet'{..}
          = go _pgXgafv _pgUploadProtocol _pgLocale
              _pgAccessToken
              _pgMaxAllowedMaturityRating
              _pgUploadType
              _pgSource
              _pgCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy PersonalizedstreamGetResource)
                      mempty
